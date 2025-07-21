#!/usr/bin/env bash

shopt -s extglob

timep() {
    ## TIME Profile - timep efficiently produces an accurate per-command execution time profile for shell scripts and functions using DEBUG, EXIT and RETURN traps.
    # timep logs command times+metadata hierarchically based on both function and subshell nesting depth, recreating the complete call-stack tree in its logs.
    #
    # USAGE:            timep [-s|-f|-c] [-k] [--flame] [-o <type>] [--] _______            --OR--
    #           [...] | timep [-s|-f|-c] [-k] [--flame] [-o <type>] [--] _______ | [...]
    #
    # OUTPUT: timep generates 4-6 types of outputs that will be saved to disk in the "profiles" dir in timep's tmpdir directory (by default: /dev/shm/.timep/timep-XXXXXXXX -- printed to stderr at the end):
    #        2 are time profiles: "out.profile.full" and "out.profile"
    #             out.profile.full:    contains all individual commands and metadata info like the chain of FUNCNAME's and the chain of subshell PIDs
    #             out.profile:         commands repeated by loops have been collapsed into combined entries that show the number of times the command was repeated and the total run time from all of them
    #        2 are stack traces intended to be passed to "timep_flamegraph.pl": "out.flamegraph.full" and "out.flamegraph"
    #             out.flamegraph.full: contains stack traces from all commands
    #             out.flamegraph:      contains "folded" stack traces where the times from otherwise identical stack traces have been summed together in a single stack trace
    #              ("timep_flamegraph.pl" is a modified version of "flamegraph.pl" from Brendan Gregg's "FlameGraph" repo at "https://github.com/brendangregg/FlameGraph")
    #         if "--flame" is passed as a flag: 2 are the flamegraph SVGs from the above two "out.flamegraph" files: "flamegraph.svg" and "flamegraph.full.svg"
    #
    #        NOTE: timep will create a symbolic link to the "profiles" dir in your PWD called 'timep.profiles'
    #
    # FLAGS: Flags must be given before the command being profiled. All flags are optional.
    #        -s | --script         : force timep to treat the code being profiled as a bash script
    #        -f | --function      : force timep to treat the code being profiled as a bash function
    #        -c | --command       : force timep to treat the code being profiled as raw bash command[s]
    #    NOTE: If multiple [-s|-f|-c] flags are given, the last one is used.
    #
    #    DEFAULT: Attempt to detect type automatically. Detection roughly follows the following decision tree:
    #        1. if $1 matches a loaded function (tested via declare -F), then treat as a function (f)
    #        2. if $1 is not a function but exists as a file in the filestystem that ut executable and containsa ascii text, then treat as a script (s)
    #        3. if neither of the above are true, then treat as raw command[s] (c)
    #
    #        -k | --keep          : do not remove all the intermediate logs and scripts in timep's trmpdir (everything except the "profiles" dir) after timep is finished running. (DEFAULT is to delete everything except the final output profiles + flamegraph files)
    #
    #        -t | --time          : Run the code being profiled through `time` to get the standard wallclock / user / sys times for the code that was profiles (in addition to all the timep-generated profiles)
    #
    #   --flame | --flamegraph    : automatically generate a flamegraph using Flamegraph.pl and save them in the "profiles" dir
    #                                   Will attempt to download Flamegraph.pl from "https://github.com/brendangregg/FlameGraph" if not available locally.
    #
    #           --                : stop arg parsing (allows profiling something with the same name as a flag)
    #
    # -o <type> | --output=<type> : tell timep which type of profile(s) to print to stdout.
    #                                   pass a comma-seperated list to output more than one profile type.
    #                                   set <type> as empty ('') to not print any profiles.
    #                      <type> : p --> out.profile (DEFAULT)    pf --> out.profile.full    f --> out.flamegraph    ff -> out.flamegraph.full
    #                               NOTE: all 4 profiles will always be available on disk after profiling is finished in timep's tmpdir
    #
    # RUNTIME CONDITIONS/REQUIREMENTS:
    #    timep adds a several variables (all which start with "timep_") + function(s) to the runtime env of whatever is being profiled. The code being profiled must NOT modify these.
    #        FUNCTIONS:  _timep_*    trap
    #        VARIABLES:  timep_*
    #
    #    timep works by using DEBUG, EXIT and RETURN traps.
    #
    #    To allow profiling bash code which *also* sets these traps, timep defines a `trap` function to overload the builtin `trap` and will automatically change any `builtin trap ...` commands into `trap ...`
    #        This function will incorporate the traps required by timep into the traps set by the bash code.
    #        For timep to work correctly, any EXIT/RETURN/DEBUG traps set by the code being profiled must NOT be set using `builtin trap` - the overloaded `trap` function must be used
    #
    #    for timep to properly reconstruct the true call-stack tree, job control (set -m) MUST be enabled.
    #        timep will automaticaly enable job control and, should the code being profiled disable it, timep will automatically re-enable it.
    #        Codes that require job control to be disabled cannot be profiled with timep.
    #
    # DEPENDENCIES:
    #    1) bash 5.0+ (required to support the $EPOCHREALTIME variable)
    #    2) mounted proc filesystem at '/proc'
    #    3) REQUIRED binaries: cat chmod find grep mkdir mv rm sed sort tail
    #    4) OPTIONAL binaries (needed for enhanced/optional functionality): ln file [realpath|readlink] [wget|curl]
    #
    # NOTES:
    #    1. timep attempts to find the raw source code for functions being profiled, but in some instances (example: functions defined via `. <(...)` or functions defined in terminal when historyis off) this isnt possible.
    #         In these cases,  `declare -f <func>` will be treated as the source, and the line numbers may not correspond exactly to the line numbers in the original code. Commamds are, however, still ordered correctly.
    #    2. To define a custom TMPDIR (other than /dev/shm/.timep.XXXXXX), pass `timep_TMPDIR` as an environment variable. e.g., timep_TMPDIR=/path/to/tmpdir timep codeToProfile
    #
    # KNOWN LIMITATIONS / BUGS: timep handles *almost* every aspect of the bash execution model, but there are a few edge cases where, due to the limitations or trap-based profiling, the output is slightly off.
    #    1. in process sunstitutions containing only a single simple command (e.g., the `<(ls)` in `cat <(ls)`),
    #       the parent command (`cat <(ls)`) is erroniously marked a simple fork (`(&)` added after the command).
    #       this is strictly a visual error - it has no effect on how the output is structured or how times sum.
    #    2. In some deeply nested chains of combined subshells + background forks with multiple subshells + forks before
    #        the 1st command in the sequence, some commands may have an incorrect subshell PID and will be grouped seperately.
    #
    ################################################################################################################################################################
(

    # check that basic requirements to run timep are met
    # to disable this check, call timep via 'timep_DISABLE_CHECKS=1 timep <...>'
    [[ ${timep_DISABLE_CHECKS} ]] || { [[ -f /proc/self/stat ]] && (( BASH_VERSINFO[0]>= 5 )); } || { printf '\n\nERROR: timep requires a mounted procfs and bash 5+. ABORTING!\n\n' >&2; return 1; }

    shopt -s extglob

    local IFS IFS0 nn jj kk kk0 kk1 kkd a a0 b u logPathCur nCPU nWorker nWorkerMax REPLY timep_coprocSrc timep_DEBUG_FLAG timep_DEBUG_IDS_FLAG timep_DEBUG_TRAP_STR_0 timep_DEBUG_TRAP_STR_1 timep_deleteFlag timep_EXIT_TRAP_STR timep_fd_done timep_fd_lock timep_fd_logID timep_flameGraphFlag timep_flameGraphPath timep_LOG_NUM timep_noOutFlag timep_outType timep_PPID timep_PTY_FD_TEST timep_PTY_FLAG timep_PTY_PATH timep_RETURN_TRAP_STR timep_runCmd timep_runCmd1 timep_runCmdPath timep_runFuncSrc timep_runtimeALL timep_wTimeCur timep_runType timep_timeFlag timep_TITLE timep_TTY_NR timep_TTY_NR_TEST timep_CLOCK_GETTIME_FLAG
    local -gx timep_TMPDIR timep_FD0 timep_FD1 timep_FD2 fd_sleep timep_CPU_TIME_MULT timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX timep_WTIME_CORRECTION timep_CTIME_CORRECTION timep_WTIME_DONE
    local -a pAll_PID timep_outTypeA kkNeed kkNeed0
    local -agx timep_LOG_NAME timep_LOG_NESTING timep_LOG_NESTING_IND  

    
    clock_gettime &>/dev/null || _timep_SETUP

    unset a
    clock_gettime a &>/dev/null || timep_CLOCK_GETTIME_FLAG=false
    if [[ "${a}" = *[0-9]* ]] && (( a > 0 )); then
        timep_CLOCK_GETTIME_FLAG=true
    else
        timep_CLOCK_GETTIME_FLAG=false
    fi

    if [[ ${timep_DEBUG} ]] && { [[ "${timep_DEBUG}" == '1' ]] || [[ "${timep_DEBUG}" == 'true' ]]; }; then
        timep_DEBUG_FLAG=true
    else
        timep_DEBUG_FLAG=false
    fi
    case "${timep_DEBUG_IDS_FLAG,,}" in
        true|1|y|yes|on) timep_DEBUG_IDS_FLAG=true ;;
        *) timep_DEBUG_IDS_FLAG=false ;;
    esac

    # parse flags
    timep_flameGraphFlag=false
    timep_deleteFlag=true
    timep_noOutFlag=false
    timep_timeFlag=false
    while true; do
        case "${1}" in
            -s|--shell)  timep_runType=s  ;;
            -f|--function)  timep_runType=f  ;;
            -c|--command)  timep_runType=c  ;;
            -k|--keep)  timep_deleteFlag=false ;;
            -t|--time)  timep_timeFlag=true ;;
            -F|-[Ff]lame|--[Ff]lame|--[Ff]lame[Gg]raph) timep_flameGraphFlag=true  ;;
            -o|--output) shift 1; IFS0="${IFS}"; IFS=',' read -r -a timep_outTypeA <<<"${1}"; IFS="$IFS0"; [[ -z ${timep_outTypeA} ]] && timep_noOutFlag=true ;;
            -o=*|--output=*) IFS0="${IFS}"; IFS=',' read -r -a timep_outTypeA <<<"${1#*=}"; IFS="$IFS0"  ;;
            --)  shift 1 && break  ;;
             *)  break  ;;
        esac
        shift 1
    done

    (( ${#timep_outTypeA[@]} > 0 )) && for kk in "${!timep_outTypeA[@]}"; do
        [[ "${timep_outTypeA[$kk]}" == [pf] ]] || [[ "${timep_outTypeA[$kk]}" == [pf]f ]] || unset "timep_outTypeA[$kk]"
    done
    (( ${#timep_outTypeA[@]} > 0 )) || ${timep_noOutFlag} || {
        if ${timep_DEBUG_FLAG}; then
            timep_outTypeA=('p' 'pf' 'f' 'ff')
        else
            timep_outTypeA=('p')
        fi
    }
    printf -v timep_outType ' %s ' "${timep_outTypeA[@]}"

    # figure out where to setup a tmpdir to use (prefferably on a ramdisk/tmpfs)
    [[ "${timep_TMPDIR}" ]] && mkdir -p "${timep_TMPDIR}"

    # try /dev/shm
    [[ -z "$timep_TMPDIR" ]] && [[ -d /dev/shm ]] && {
        timep_TMPDIR=/dev/shm/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/dev/shm/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $TMPDIR, if set
    [[ -z "$timep_TMPDIR" ]] && [[ "${TMPDIR}" ]] && {
        timep_TMPDIR="${TMPDIR}"/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="${TMPDIR}"/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try /tmp
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR=/tmp/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/tmp/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $PWD
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR="$PWD/.timep/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="$PWD/.timep/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # ABORT if we couldnt get a writable TMPDIR
     [[ "$timep_TMPDIR" ]] || {
         printf '\nERROR: could not create a tmpdir under /dev/shm nor /tmp nor PWD (%s). \nPlease ensure you have requisite write permissions in one of these directories. ABORTING\n\n' "${PWD}"
         return 1
    }

    mkdir -p "${timep_TMPDIR}"/.log/.{end,run}times
    mkdir -p "${timep_TMPDIR}/profiles"

    # determine if command being profiled is a shell script or not
    if [[ "${timep_runType}" == [sfc] ]]; then
        [[ "${timep_runType}" == 's' ]] && {
            # see if input is a path to something in the filesystem
            if type realpath &>/dev/null; then
                timep_runCmdPath="$(realpath "${1}")"
            elif type readlink &>/dev/null && [[ $(readlink "${1}") ]]; then
                timep_runCmdPath="$(readlink "${1}")"
            else
                timep_runCmdPath="$1"
            fi
            timep_runCmdPath="$(type -p "${timep_runCmdPath}")"
        }
    else
        if declare -F "$1" &>/dev/null; then
            # command is a function, which takes precedence over a script
            timep_runType=f
        else
            if type realpath &>/dev/null; then
                timep_runCmdPath="$(realpath "${1}")"
            elif type readlink &>/dev/null && [[ $(readlink "${1}") ]]; then
                timep_runCmdPath="$(readlink "${1}")"
            else
                timep_runCmdPath="$1"
            fi
            timep_runCmdPath="$(type -p "${timep_runCmdPath}")"
            if [[ ${timep_runCmdPath} ]]; then
                if type file &>/dev/null && { [[ "$(file "${timep_runCmdPath}")" == *shell\ script*executable* ]] || { [[ "$(file "${timep_runCmdPath}")" == *text ]] && [[ -x "${timep_runCmdPath}" ]]; }; }; then
                    # file is text and either starts with a shebang or is executeable. Assume it is a script.
                    timep_runType=s
                elif [[ "${timep_runCmdPath}" == *.*sh ]] && read -r <"${timep_runCmdPath}" && [[ "${REPLY}" == '#!'* ]]; then
                # file name ends in .*sh (e.g., .sh or .bash) and file begins with a shebang. Assume shell script.
                    timep_runType=s
                else
                # for all other cases treat it as a raw command
                    timep_runType=c
                fi
            else
            # type -p didnt give a path and isnt a function. Treat it as a raw command.
                timep_runType=c
            fi
        fi
    fi

# helper function to get src code from functions
_timep_getFuncSrc() {
## Finds the original function source code for a currently loaded bash function
# USAGE:    _timep_getFuncSrc [-q] [-r] <funcname>
#
# will pull the original source out of a file or, if available, out of the bash history
# if unable to retrieve original function source code, will instead return its `declare -f`
# if passed the path to a script file instead of a function, it will print the contents of the script file (e.g., `cat $file`)
#
# NOTE: cannot get the original source for functions defined interactively by sourcing a process substitutiion (e.g. `. <( ... )`)
#
# FLAGS: all flags must come before <funcname> and mmust be given seperately (use '-q -r', not '-qr')
#   -q: dont print definition from primary input (inputs from dependencies may still be printed)
#   -r: recursively find source for dependent functions too (requires that your bash binary has the --rpm-requires flag))

    # make vars local
    local out FF kk nn quietFlag recursionFlag
    local -a F

    # parse any flags
    quietFlag=false
    recursionFlag=false
    while [[ "$1" == -[qr] ]] || [[ "$1" == --[qr]* ]]; do
        case "$1" in
            -q|--quiet) quietFlag=true ;;
            -r|--recursion) recursionFlag=true ;;
        *) break ;;
        esac
        shift 1
    done

    _timep_getFuncSrc0() {
        local m mm n p kk off funcDef0 validFuncDefFlag
        local -a A off_A

        # get where the function was sourced from using extdebug + declare -F
        # NOTE: this will tell us where the function definition started, but not where it ends.
        read -r _ n p < <(shopt -s extdebug; declare -F "${1}")
        ((n--))

        if [[ "${p}" == 'main' ]]; then
            # try to pull function definition out of the bash history
            # NOTE: the LINENO returned by extdebug + declare -F is unreliable when using the history
            #       instead grep the history for the function header and find all possible start lines
            [[ $(history) ]] || { declare -f "${1}"; return; }
            mapfile -t off_A < <( history | grep -n '' | grep -E '^[0-9]+:[[:space:]]*[0-9]*.*((function[[:space:]]+'"${1}"')|('"${1}"'[[:space:]]*\(\)))' | sed -E s/'\:.*$'//)
            off=$(history | grep -n '' | tail -n 1 | sed -E s/'\:.*$'// )
            for kk in "${!off_A[@]}"; do
                (( off_A[$kk] = 1 + off - off_A[$kk] ))
            done
            off=$(printf '%s\n' "${off_A[@]}" | sort -n | tail -n 1)
            for kk in "${!off_A[@]}"; do
                (( off_A[$kk] = off - off_A[$kk] ))
            done
            mapfile -t off_A < <(printf '%s\n' "${off_A[@]}" | sort -nr)
            mapfile -t A < <(history | tail -n "$off" | sed -E s/'^[[:space:]]*[0-9]*[[:space:]]*'//)

        elif [[ -f "${p}" ]]; then
            # pull function definition from file
            mapfile -t A <"${p}"
            until grep -qE '^[[:space:]]*((function[[:space:]]+'"${1}"')|('"${1}"'[[:space:]]*\(\)))' <<<"${A[@]:$n:1}"; do
                ((n--))
            done
            A=("${A[@]:$n}")
            off_A=(0)
       else
            # cant extract original source. use declare -f.
            declare -f "${1}"
            return
        fi

        # return declare -f if A is empty
        (( ${#A[@]} == 0 )) && { declare -f "${1}"; return; }

        # our text blob *should* now start at the start of a function definition, but goes all the way to the EOF.
        # try sourcing (with set -n) just the 1st line, then the first 2, then the first 3, etc. until the function sources correctly.
        # if pulling the function definition out of the history, repeat this for all possible start lines until one gives a function with the same declare -f
        #  NOTE: "extra" commands need tro be removed from the 1st + last line before sourcing without set -n to check the declare -f

        # get the declare -f for the loaded function
        funcDef0="$(declare -f "${1}")"
        validFuncDefFlag=false

        # loop over all possible start locations
        for mm in "${off_A[@]}"; do

            # remove any preceeding commands on first history line
            mapfile -t -d '' cmd_rm < <(. /proc/self/fd/0 <<<"trap 'set +n; printf '\"'\"'%s\0'\"'\"' \"\${BASH_COMMAND}\"; set -n' DEBUG; ${A[$mm]}" 2>/dev/null)
            for nn in "${cmd_rm[@]}"; do
                A[$mm]="${A[$mm]//"$nn"//}"
            done
            while [[ "${A[$mm]}" =~ ^[[:space:]]*\;+.*$ ]]; do
                A[$mm]="${A[$mm]#*\;}"
            done

            # find history line the function ends on by attempting to source (with set -n) progressively larger chunks of the history
            m=$(kk=1; IFS=$'\n'; set -n; until . /proc/self/fd/0 <<<"${A[*]:${mm}:${kk}}" &>/dev/null || (( ( mm + kk ) > ${#A[@]} )); do ((kk++)); done; echo "$kk")

            # remove any trailing commands on last history line
            (( mmm = mm + m - 1 ))
            mapfile -t -d '' cmd_rm < <(. /proc/self/fd/0 <<<"IFS=$'\n'; trap 'set +n; printf '\"'\"'%s\0'\"'\"' \"\${BASH_COMMAND}\"; set -n' DEBUG; ${A[*]:${mm}:${m}}" 2>/dev/null)
            for nn in "${cmd_rm[@]}"; do
                A[$mmm]="${A[$mmm]//"$nn"//}"
            done
            while [[ "${A[$mmm]}" =~ ^.*\;+[[:space:]]*$ ]]; do
                A[$mmm]="${A[$mmm]%\;*}"
            done

            # check if recovered + isolated function definition produces the same declare -f as the original (requires NOT using set -n)
            if ( IFS=$'\n'; . /proc/self/fd/0 <<<"unset ${1}; ${A[*]:${mm}:${m}}" &>/dev/null && [[ "$(declare -f "${1}")" == "${funcDef0}" ]] ); then
                validFuncDefFlag=true
                break
            elif (( ( mm + m ) > ${#A[@]} )); then
                break
            fi
        done

        if ${validFuncDefFlag}; then
            printf '%s\n' "${A[@]:${mm}:${m}}"
        else
            declare -f "${1}"
        fi
    }

    if declare -F "${1}" &>/dev/null || ! [[ -f "${1}" ]]; then
        # input is a defined function and/or doesnt existin filesystem. treat as a function.
        out="$(_timep_getFuncSrc0 "${1}")"
        [[ "$out" == 'eval '* ]] && out="$(eval "echo ${out#eval }")"
    else
    # input is not a function and exists in filesystenm. treat as script and cat it.
        out="$(<"${1}")"
    fi
    out="${out//builtin trap /trap }"
    ${quietFlag} || echo "$out"

    # feed the function definition through `bash --rpm-requires` to get dependencies, then test each with `type` to find function dependencies.
    # recursively call _timep_getFuncSrc for each not-yet-processed dependent function, keeping track of which function deps were already listed to avoid duplicates
    # NOTE: the "--rpm-requires" flag is non-standard, and may only be available on distros based on red hat / fedora
    ${recursionFlag} && : | bash --debug --rpm-requires -O extglob &>/dev/null && {
        # get function dependencies
        mapfile -t F < <(bash --debug --rpm-requires -O extglob <<<"$out" | sed -E s/'^executable\((.*)\)'/'\1'/ | sort -u | while read -r nn; do type "$nn" 2>/dev/null | grep -qF 'is a function' && echo "$nn"; done)
        for kk in "${!F[@]}"; do
            if [[ "${FF}" == *" ${F[$kk]} "* ]]; then
            # we already processed this function. remove it from "functions to process" list (F)
                unset "F[$kk]"
            else
            # we have not yet processed this function, keep it on the "functions to process" list (F) and add it to the "already processed functions" list (FF) so we dont process it again after this round
                FF+=" ${F[$kk]} "
            fi
        done
        for nn in "${F[@]}"; do
        # for each function on the "functions to process" list (F), recursively call _timep_getFuncSrc -r and pass the "already processed functions" list (FF) as an environment variable
            FF="${FF}" _timep_getFuncSrc -r "${nn}"
        done
    }
}

    # generate the code for a wrapper function (timep_runFunc) that wraps around whatever we are running / time profiling.
    # this will setup a DEBUG trap to measure runtime from every command, then will run the specified code.
    # the source code is generated and then sourced (instead of directly defined) so that things like the tmpdir/logfile path are hardcoded.
    # this allows timep to run without adding any new (and potentially conflicting) variables to the code being run / time profiled.

    export -p timep_EXIT_TRAP_STR &>/dev/null && export -n timep_EXIT_TRAP_STR
    timep_EXIT_TRAP_STR=':'

    export -p timep_RETURN_TRAP_STR &>/dev/null && export -n timep_RETURN_TRAP_STR

    timep_RETURN_TRAP_STR='timep_SKIP_DEBUG_FLAG=true
    unset "timep_FNEST[-1]" "timep_NEXEC_A[-1]" "timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]" "timep_NPIPE[${timep_FNEST_CUR}]" "timep_STARTTIME[${timep_FNEST_CUR}]" "timep_LINENO[${timep_FNEST_CUR}]" "timep_LINENO_OFFSET[${timep_FNEST_CUR}]"
    timep_FUNCNAME_STR="${timep_FUNCNAME_STR%.*}"
    timep_FNEST_CUR="${timep_FNEST[-1]}"
    timep_NEXEC_0="${timep_NEXEC_0%.*}"
    timep_SKIP_DEBUG_FLAG=false'

    read -r _ a </proc/uptime
    read -r _ _ _ _ b _ </proc/stat
    a0="${a##*.}"
    (( timep_CPU_TIME_MULT = ( 1000000  / ( 10 ** ${#a0} ) ) * ${a//[^0-9]/} / b ))

    if ${timep_CLOCK_GETTIME_FLAG}; then
        timep_END_CTIME_STR='clock_gettime timep_END_CTIME'$'\n'
        timep_START_CTIME_STR='clock_gettime timep_START_CTIME'$'\n'
    else
        timep_END_CTIME_STR+='read -r _ _ _ _ _ _ _ _ _ _ _ _ _ timep_END_UTIME timep_END_STIME _ </proc/${timep_BASHPID_PREV:-$BASHPID}/stat
        (( timep_END_CTIME = '"${timep_CPU_TIME_MULT}"' * ( timep_END_UTIME + timep_END_STIME ) ))
        (( timep_END_CTIME <= ${timep_STARTTIME[${timep_FNEST_CUR}]#*$'"'"'\t'"'"'} )) && timep_END_CTIME=${timep_STARTTIME[${timep_FNEST_CUR}]#*$'"'"'\t'"'"'}'$'\n'
        timep_START_CTIME_STR+='read -r _ _ _ _ _ _ _ _ _ _ _ _ _ timep_START_UTIME timep_START_STIME _ </proc/${timep_BASHPID_PREV:-$BASHPID}/stat
        (( timep_START_CTIME = '"${timep_CPU_TIME_MULT}"' * ( timep_START_UTIME + timep_START_STIME ) ))
        (( timep_START_CTIME <=  ${timep_ENDTIME#*$'"'"'\t'"'"'} )) && timep_START_CTIME=${timep_ENDTIME#*$'"'"'\t'"'"'}'$'\n'
    fi

    export -p timep_DEBUG_TRAP_STR_0 &>/dev/null && export -n timep_DEBUG_TRAP_STR_0
    export -p timep_DEBUG_TRAP_STR_1 &>/dev/null && export -n timep_DEBUG_TRAP_STR_1
    timep_DEBUG_TRAP_STR_0='timep_NPIPE0="${#PIPESTATUS[@]}"
    (( timep_END_TIME = 10#${EPOCHREALTIME//[^0-9]/} ))
    '"${timep_END_CTIME_STR}"
    
    timep_DEBUG_TRAP_STR_1='[[ "$-" == *m* ]] || {
        printf '"'"'\nWARNING: timep requires job control to be enabled.\n         Running "set +m" is not allowed!\n         Job control will automatically be re-enabled.\n\n'"'"' >&2
        set -m
    }
    [[ "${FUNCNAME[0]}" == "trap" ]] && ! ${timep_SKIP_DEBUG_FLAG} && {
        timep_SKIP_DEBUG_NEXT_FLAG=true
    }
    ${timep_SKIP_DEBUG_FLAG} || {
        timep_NPIPE[${timep_FNEST_CUR}]=${timep_NPIPE0}
        timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"
        timep_IS_BG_FLAG=false
        timep_IS_SUBSHELL_FLAG=false
        timep_IS_FUNC_FLAG=false
        if ${timep_SIMPLEFORK_NEXT_FLAG}; then
            timep_SIMPLEFORK_NEXT_FLAG=false
            timep_SIMPLEFORK_CUR_FLAG=true
        else
            timep_SIMPLEFORK_CUR_FLAG=false
        fi
        if ((timep_BASH_SUBSHELL_PREV == BASH_SUBSHELL)); then
            if ((timep_BG_PID_PREV == $!)); then
                ((timep_FNEST_CUR >= ${#FUNCNAME[@]})) || {
                    timep_IS_FUNC_FLAG=true
                    timep_NO_PRINT_FLAG=true
                    timep_FNEST+=("${#FUNCNAME[@]}")
                }
            else
                timep_IS_BG_FLAG=true
            fi
        else
            timep_IS_SUBSHELL_FLAG=true
            printf '"'"'%s\n'"'"' "${timep_ENDTIME}" >>"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
            ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++))
            builtin trap '"'${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}'"' EXIT
            IFS='"'"' '"'"' read -r _ _ _ _ timep_CHILD_PGID _ _ timep_CHILD_TPID _ </proc/${BASHPID}/stat
            ((timep_CHILD_PGID == timep_PARENT_TPID)) || ((timep_CHILD_PGID == timep_CHILD_TPID)) || { ((timep_CHILD_PGID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)); } || timep_IS_BG_FLAG=true
        fi
        if ${timep_IS_SUBSHELL_FLAG} && ${timep_IS_BG_FLAG}; then
            ((timep_CHILD_PGID == BASHPID)) && ((timep_CHILD_TPID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)) && timep_SIMPLEFORK_NEXT_FLAG=true
            timep_CMD_TYPE="BACKGROUND FORK"
        elif ${timep_IS_SUBSHELL_FLAG}; then
            timep_CMD_TYPE="SUBSHELL"
        elif [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]}" == " (F) "* ]]; then
            timep_CMD_TYPE="FUNCTION (P)"
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]# (F) }"
            timep_IS_BG_FLAG=false
        elif ${timep_IS_BG_FLAG}; then
            timep_CMD_TYPE="SIMPLE FORK"
        elif ${timep_IS_FUNC_FLAG_1}; then
            timep_CMD_TYPE="FUNCTION (C)"
            timep_IS_FUNC_FLAG_1=false
            [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO - 1 ))
        else
            timep_CMD_TYPE="NORMAL COMMAND"
        fi
        if ${timep_IS_FUNC_FLAG}; then
            timep_LINENO_0=1
        else
            (( timep_LINENO_0 = LINENO - timep_LINENO_OFFSET[${timep_FNEST_CUR}] - timep_LINENO_OFFSET_0[${timep_FNEST_CUR}] ))
        fi
        if [[ -z ${timep_PARENT_PGID0} ]] && [[ -z ${timep_PARENT_TPID0} ]] && (( timep_PARENT_PGID == timep_CHILD_PGID )) && (( timep_PARENT_PGID == timep_PARENT_TPID )) && ! (( timep_PARENT_PGID == timep_CHILD_TPID )); then
            timep_IS_BG_INDICATOR='"'"'(^)'"'"'
        elif (( timep_PARENT_PGID0 == timep_PARENT_TPID0 )) && (( timep_PARENT_PGID == timep_CHILD_PGID )) && (( timep_PARENT_PGID0 == timep_PARENT_PGID )) && (( timep_PARENT_TPID == timep_CHILD_TPID )) && ! (( timep_PARENT_PGID == timep_PARENT_TPID )); then
            timep_IS_BG_INDICATOR='"'"'(^)'"'"'
        else
            timep_IS_BG_INDICATOR='"''"'
        fi
        if ${timep_IS_SUBSHELL_FLAG}; then
            timep_NPIPE[${timep_FNEST_CUR}]=1
            timep_NPIDWRAP_PREV_0="${timep_NPIDWRAP}"
            ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++))
            ((timep_BASH_SUBSHELL_DIFF = BASH_SUBSHELL - timep_BASH_SUBSHELL_PREV))
            timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE}): ${timep_BASHPID_PREV} >>"
            ((timep_NEXEC_N++))
            if ${timep_IS_BG_FLAG} && ((timep_BASH_SUBSHELL_DIFF > 1)); then
                read -r -u "${timep_LOCK_FD}" _
                read -r timep_BG_PID_PREV_0 <"${timep_TMPDIR}/.log/.last_bg_pid"
                printf '"'"'%s\n'"'"' "$!" >"${timep_TMPDIR}/.log/.last_bg_pid"
                printf '"'"'\n'"'"' >&${timep_LOCK_FD}
                timep_BG_PID_PREV_0="-${timep_BG_PID_PREV_0}"
            else
                timep_BG_PID_PREV_0='"''"'
            fi
            printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_FNEST_CUR:-${#FUNCNAME[@]}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"
            printf '"'"'1\t%s\t+\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}.0\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_END_CTIME}" "${timep_FNEST_CUR:-${#FUNCNAME[@]}}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}.${BASHPID}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO_0}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${BASH_COMMAND@Q} ${timep_IS_BG_INDICATOR}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"
            timep_SUBSHELL_INIT_FLAG=true
            timep_CMD_TYPE_PREV_0="${timep_CMD_TYPE}"
            timep_BASHPID_PREV_0="${timep_BASHPID_PREV}"
            timep_BASHPID_PREV="${BASHPID}"
            timep_ENDTIME_PREV_0="${timep_ENDTIME}"
            timep_BASH_SUBSHELL_PREV_0="${timep_BASH_SUBSHELL_PREV}"
            timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"
            timep_PARENT_PGID0="$timep_PARENT_PGID"
            timep_PARENT_TPID0="$timep_PARENT_TPID"
            timep_PARENT_PGID="$timep_CHILD_PGID"
            timep_PARENT_TPID="$timep_CHILD_TPID"
        elif ${timep_SUBSHELL_INIT_FLAG}; then
            timep_SUBSHELL_INIT_FLAG=false
            timep_BASHPID_PREV="${timep_BASHPID_PREV_0}"
            timep_BASH_SUBSHELL_PREV="${timep_BASH_SUBSHELL_PREV_0}"
            ((timep_BASH_SUBSHELL_DIFF--))
            timep_BASHPID_ADD=()
            timep_BASHPID_ADD_CUR="${BASHPID}"
            timep_BASHPID_ADD[$timep_BASH_SUBSHELL_DIFF]="${timep_BASHPID_ADD_CUR}"
            while ((timep_BASH_SUBSHELL_DIFF > 0)); do
                ((timep_BASH_SUBSHELL_DIFF--))
                IFS='"'"' '"'"' read -r _ timep_PCOMM _ timep_BASHPID_ADD_CUR _ </proc/${timep_BASHPID_ADD_CUR}/stat
                if (( timep_BASHPID_ADD_CUR == timep_BASHPID_PREV )) || (( timep_BASHPID_ADD_CUR <= 1 )); then
                    ((timep_BASH_SUBSHELL_DIFF++))
                    break
                elif [[ "${timep_PCOMM}" == '"'"'(bash)'"'"' ]] && (( timep_BASHPID_ADD_CUR > timep_BASHPID_PREV )); then
                    timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}"
                else
                    timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}${timep_BG_PID_PREV_0}"
                fi
            done
            timep_KK="${timep_BASH_SUBSHELL_DIFF}"
            unset "timep_BASH_SUBSHELL_DIFF" "timep_BASH_SUBSHELL_DIFF_0"
            [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r" ]] && : >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"
            [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c" ]] && : >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"
            timep_NPIDWRAP="${timep_NPIDWRAP_PREV_0}"
            while ((timep_KK < ${#timep_BASHPID_ADD[@]})); do
                ((timep_BASHPID_ADD[${timep_KK}] < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++))
                timep_BASHPID_PREV="${timep_BASHPID_ADD[${timep_KK}]}"
                timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE_PREV_0}): ${timep_BASHPID_PREV} >>"
                [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s" ]] || printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME_PREV_0}" "${timep_FNEST_CUR:-${#FUNCNAME[@]}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${timep_BASHPID_PREV}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s"
                timep_BASHPID_STR+=".${timep_BASHPID_PREV}"
                timep_NEXEC_0+=".${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"
                timep_NEXEC_A+=(0)
                ((timep_BASH_SUBSHELL_PREV++))
                ((timep_KK++))
            done
            timep_BASHPID_PREV="${BASHPID}"
            timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"
            unset "timep_KK" "timep_BASHPID_ADD" "timep_BASH_COMMAND_PREV_0" "timep_NPIDWRAP_PREV_0" "timep_BASH_COMMAND_PREV_0" "timep_CMD_TYPE_PREV_0" "timep_BASHPID_PREV_0" "timep_ENDTIME_PREV_0" "timep_BASH_SUBSHELL_PREV_0"
            ((timep_NEXEC_N++))
        fi
        if ! ${timep_SUBSHELL_INIT_FLAG} && [[ ${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]} ]]; then
            ${timep_SIMPLEFORK_CUR_FLAG} && ((BASHPID < $!)) && {
                timep_IS_BG_FLAG=true
                timep_CMD_TYPE="SIMPLE FORK *"
            }
            ${timep_IS_BG_FLAG} && [[ -z ${timep_IS_BG_INDICATOR} ]] && timep_IS_BG_INDICATOR='"'"'(&)'"'"'
            [[ -s "${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}" ]] && {
                {
                    while read -r -u ${timep_FD_ENDTIME} timep_END_TIME0 timep_END_CTIME0; do
                        ((${timep_END_TIME0//[^0-9]/} < ${timep_END_TIME//[^0-9]/})) && {
                            timep_END_TIME="${timep_END_TIME0}"
                            timep_END_CTIME="${timep_END_CTIME0}"
                        }
                    done
                    timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"                
                } {timep_FD_ENDTIME}<"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
                exec {timep_FD_ENDTIME}>&-
            }
            ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s %s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR}]}" "${timep_STARTTIME[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${timep_LINENO_0}}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]@Q}" "${timep_IS_BG_INDICATOR}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
            ((timep_NEXEC_A[-1]++))
            ((timep_NEXEC_N++))
        fi
        ${timep_IS_FUNC_FLAG} && {
            timep_FUNCNAME_STR+=".${FUNCNAME[0]}"
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"
            timep_NEXEC_A+=(0)
            ((timep_NEXEC_N++))
            [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]=" (F) << (FUNCTION): ${BASH_COMMAND} >>"
            timep_NPIPE[${#FUNCNAME[@]}]="1"
            timep_FNEST_CUR="${#FUNCNAME[@]}"
            timep_NO_PRINT_FLAG=false
            timep_IS_FUNC_FLAG_1=true
        }
        if (( timep_LINENO_0 < 0 )) && [[ "${BASH_COMMAND}" == "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]% \(\?\)}" ]]; then
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${BASH_COMMAND} "'"'"'(?)'"'"'
        else
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${BASH_COMMAND}"
        fi
        timep_LINENO[${timep_FNEST_CUR}]="${timep_LINENO_0}"
        timep_BG_PID_PREV="$!"
        timep_BASHPID_PREV="$BASHPID"
        ${timep_SKIP_DEBUG_NEXT_FLAG} && {
            timep_SKIP_DEBUG_NEXT_FLAG=false
            timep_SKIP_DEBUG_FLAG=true
        }
        if [[ "$BASH_COMMAND" == exec* ]]; then
            timep_EXEC_ARG="${BASH_COMMAND#*[[:space:]]}"
            timep_EXEC_ARG="${timep_EXEC_ARG%%[[:space:]]*}"
            timep_EXEC_ARG="$(type -p "${timep_EXEC_ARG}")"
            if [[ -x "${timep_EXEC_ARG}" ]] && { [[ "${timep_EXEC_ARG}" == "${timep_BASH_PATH}" ]] || [[ "${timep_EXEC_ARG##*/}" == "bash" ]]; }; then
                timep_SKIP_DEBUG_FLAG=true
                ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${LINENO}" "<< EXEC BASH: ${BASH_COMMAND@Q} >>" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
                timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${BASH_COMMAND}"
                timep_FNEST+=("${#FUNCNAME[@]}")
                timep_FUNCNAME_STR+=".exec"
                timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"
                timep_NEXEC_A+=(0)
                ((timep_NEXEC_N++))
    exec() {
        export -f timep
        local -a cmd0=()
        shift 1
        while [[ "$1" == '"'"'-'"'"'* ]]; do
            case "$1" in
                -o | -O)
                    { [[ "$1" == "-o" ]] && [[ "$2" == "monitor" ]]; } || { [[ "$1" == "-O" ]] && [[ "$2" == "extglob" ]]; } || { [[ "$1" == "-O" ]] && [[ "$2" == "functrace" ]]; } || cmd0+=("$1" "$2")
                    shift 2
                    ;;
                -c | --)
                    shift 1
                    break
                    ;;
                *)
                    [[ "$1" == [+-]m ]] || [[ "$1" == [+-]i ]] || cmd0+=("$1")
                    shift 1
                    ;;
            esac
        done
        unset exec
        if [[ -t 0 ]]; then
            timep_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}"'"'"' _ "${@}"
        else
            timep_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}" <&0'"'"' _ "${@}"
        fi
    }
            fi
        fi
       '"${timep_START_CTIME_STR}"'
        
        (( timep_START_TIME = 10#${EPOCHREALTIME//[^0-9]/} ))

        timep_STARTTIME[${timep_FNEST_CUR}]="${timep_START_TIME}"$'"'"'\t'"'"'"${timep_START_CTIME}"
    }'

    # overload the trap builtin to allow the use of custom EXIT/RETURN/DEBUG traps

    export -p -f trap &>/dev/null && export -n -f trap

        { printf 'declare -gx timep_EXIT_TRAP_STR='"'"'%s'"'"'\n\ndeclare -gx timep_RETURN_TRAP_STR='"'"'%s'"'"'\n\ndeclare -gx timep_DEBUG_TRAP_STR_0='"'"'%s'"'"'\n\ndeclare -gx timep_DEBUG_TRAP_STR_1='"'"'%s'"'"'\n\n%s\n\n' "${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}"  "${timep_RETURN_TRAP_STR//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_0//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_1//"'"/"'"'"'"'"'"'"'"}" 'trap() {
        local trapStr trapStr0 trapType

        (( $# == 0 )) && return 1

        if [[ "${1}" == -[lp] ]]; then
            builtin trap "${@}"
            return
        else
            [[ "${1}" == '"'"'--'"'"' ]] && shift 1
            trapStr="${1}"
            shift 1
            while (( $# > 1)); do
                case "$1" in
                    EXIT|RETURN|DEBUG|ERR|SIGHUP|SIGINT|SIGQUIT|SIGILL|SIGTRAP|SIGABRT|SIGBUS|SIGFPE|SIGKILL|SIGUSR1|SIGSEGV|SIGUSR2|SIGPIPE|SIGALRM|SIGTERM|SIGSTKFLT|SIGCHLD|SIGCONT|SIGSTOP|SIGTSTP|SIGTTIN|SIGTTOU|SIGURG|SIGXCPU|SIGXFSZ|SIGVTALRM|SIGPROF|SIGWINCH|SIGIO|SIGPWR|SIGSYS|SIGRTMIN|SIGRTMAX|SIGRTMIN[+-]*|SIGRTMAX[+-]*)
                        break
                    ;;
                    *)
                        trapStr+="${trapStr:+ }${1}"
                        shift 1
                    ;;
                esac
            done
            [[ "${trapStr}" == '"'"'-'"'"' ]] || [[ -z "${trapStr}" ]] || trapStr0="${trapStr}"$'"'"'\n'"'"'
        fi

        for trapType in "${@}"; do
            case "${trapType}" in
                EXIT)    builtin trap "${trapStr0}${timep_EXIT_TRAP_STR}" EXIT ;;
                RETURN)  builtin trap "${trapStr0}${timep_RETURN_TRAP_STR}" RETURN ;;
                DEBUG)   builtin trap "${timep_DEBUG_TRAP_STR_0}${trapStr0}${timep_DEBUG_TRAP_STR_1}" DEBUG ;;
                *)       eval "builtin trap ${trapStr@Q} ${trapType}" ;;
            esac
        done
    }'; } >"${timep_TMPDIR}/functions.bash"

        # setup a string with the command to run
        case "${timep_runType}" in
            s)
                shift 1
                timep_runCmd="$(<"${timep_runCmdPath}")"
                timep_runCmd="${timep_runCmd//builtin trap /trap }"
                if [[ "${timep_runCmd}" == '#!'* ]]; then
                    timep_runCmd1="${timep_runCmd%%$'\n'*}"
                    timep_runCmd="${timep_runCmd#*$'\n'}"
                else
                    timep_runCmd1='#!'"${BASH}"
                fi
                # start of wrapper code
                timep_runFuncSrc="${timep_runCmd1}"$'\n'
            ;;
            c)
                printf -v timep_runCmd '%s\n' "${@}"
                timep_runCmd1='#!'"${BASH}"

                # start of wrapper code
                timep_runFuncSrc="${timep_runCmd1}"$'\n'
            ;;
            f)
                timep_funcName="${1}"
                export -f "${timep_funcName}"
                shift 1
                _timep_getFuncSrc -r "${timep_funcName}" >>"${timep_TMPDIR}/functions.bash"
                timep_runCmd1='#!'"${BASH}"

                printf -v timep_runCmd '%s "${@}"\n' "${timep_funcName}"
                [[ -t 0 ]] || timep_runCmd+=" <&0"

                # start of wrapper code
                timep_runFuncSrc="${timep_runCmd1}"$'\n''timep_runFunc() '
            ;;
        esac

    ${timep_CLOCK_GETTIME_FLAG} && export -f _timep_SETUP
    chmod +x "${timep_TMPDIR}/functions.bash"
    timep_runFuncSrc+='(

        builtin trap - DEBUG EXIT RETURN

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_BASH_PATH timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0 timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0
        declare -a timep_BASH_COMMAND_PREV timep_FNEST timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_LINENO_OFFSET timep_LINENO_OFFSET_0 timep_LINENO_OFFSET_PREV timep_BASHPID_ADD timep_START_TIME timep_START_UTIME timep_START_STIME

        set -mT

        : & 2>/dev/null

        declare -gx timep_TMPDIR="'"${timep_TMPDIR}"'"
        . "${timep_TMPDIR}/functions.bash"
        export -f trap
        '"$(${timep_CLOCK_GETTIME_FLAG} && printf '\n_timep_SETUP\n')"'

        echo "$!" >"${timep_TMPDIR}/.log/.last_bg_pid"
        exec {timep_LOCK_FD}<><(:)
        printf '"'"'\n'"'"' >&${timep_LOCK_FD}

        read -r _ _ _ _ timep_PARENT_PGID _ _ timep_PARENT_TPID _ </proc/${BASHPID}/stat
        timep_CHILD_PGID="$timep_PARENT_PGID"
        timep_CHILD_TPID="$timep_PARENT_TPID"

        timep_BASHPID_PREV="$BASHPID"
        timep_BG_PID_PREV="$!"
        timep_BG_PID_PREV_0='"''"'
        timep_BASH_SUBSHELL_PREV="$BASH_SUBSHELL"
        timep_NEXEC_A=(0)
        timep_NEXEC_N=0
        timep_NPIDWRAP='"'"'0'"'"'
        timep_NEXEC_0="{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"
        timep_BASHPID_STR="${BASHPID}"
        timep_FUNCNAME_STR="main"
        timep_BASH_PATH="$(type -p $BASH)"

        timep_SIMPLEFORK_NEXT_FLAG=false
        timep_SIMPLEFORK_CUR_FLAG=false
        timep_SKIP_DEBUG_FLAG=false
        timep_SKIP_DEBUG_NEXT_FLAG=false
        timep_NO_PRINT_FLAG=false
        timep_IS_FUNC_FLAG_1=false
        timep_SUBSHELL_INIT_FLAG=false

        timep_FNEST=("${#FUNCNAME[@]}")
        timep_FNEST_CUR="${#FUNCNAME[@]}"

        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]='"''"'
        timep_NPIPE[${timep_FNEST_CUR}]='"'"'0'"'"'
        timep_STARTTIME[${timep_FNEST_CUR}]="${EPOCHREALTIME}"
        timep_LINENO[${timep_FNEST_CUR}]="${LINENO}"

        builtin trap "${timep_RETURN_TRAP_STR}" RETURN
        builtin trap "${timep_EXIT_TRAP_STR}" EXIT

        (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 5 ))
        timep_LINENO_OFFSET_0[${timep_FNEST_CUR}]="${timep_LINENO_OFFSET[${timep_FNEST_CUR}]}"

        builtin trap "${timep_DEBUG_TRAP_STR_0}${timep_DEBUG_TRAP_STR_1}" DEBUG

        '"$(${timep_timeFlag} && echo 'time {')"'
            {
                '"${timep_runCmd}"'
            } 0<&${timep_FD0} 1>&${timep_FD1} 2>&${timep_FD2}
        '"$(${timep_timeFlag} && echo '} 1>&${timep_FD2}')"'

        builtin trap - DEBUG EXIT RETURN;
        exec {timep_LOCK_FD}>&-
    )'

    [[ "${timep_runType}" == 'f' ]] && {
        timep_runFuncSrc+=$'\n\n''timep_runFunc "${@}"'
        [[ -t 0 ]] && timep_runFuncSrc+=' <&0'
        timep_runFuncSrc+=$'\n\n'
    }

    # save script/function (with added debug trap) in new script file and make it executable
    echo "${timep_runFuncSrc}" >"${timep_TMPDIR}/main.bash"
    chmod +x "${timep_TMPDIR}/main.bash"

    [[ "${timep_runType}" == 'f' ]] || _timep_getFuncSrc -q -r "${timep_TMPDIR}/main.bash" >>"${timep_TMPDIR}/functions.bash"

    echo "timep_TMPDIR = ${timep_TMPDIR}" >&2

    export -p -f timep &>/dev/null && export -n -f timep
    export -f timep

    # attempt to figure out the controling terminal from this shell or one of its parents/grandparents/...
    timep_PTY_FLAG=false
    IFS=' ' read -r _ _ _ _ _ _ timep_TTY_NR _ <"/proc/${BASHPID}/stat"
    timep_PPID=${BASHPID}
    until ${timep_PTY_FLAG}; do
        for kk in 2 0 1; do
            if (( kk == 0 )); then
                exec {timep_PTY_FD_TEST}<"/proc/${timep_PPID}/fd/${kk}"
            else
                exec {timep_PTY_FD_TEST}>"/proc/${timep_PPID}/fd/${kk}"
            fi && {
                [[ -t "${timep_PTY_FD_TEST}" ]] && {
                    read -r _ _ _ _ _ _ timep_TTY_NR_TEST _ <"/proc/${timep_PPID}/stat"
                    (( timep_TTY_NR_TEST == timep_TTY_NR )) && {
                        timep_PTY_FLAG=true
                        timep_PTY_PATH="/proc/${timep_PPID}/fd/${kk}"
                    }
              }
              exec {timep_PTY_FD_TEST}>&-
            }
            ${timep_PTY_FLAG} && break 2
        done
        timep_PPID0=${timep_PPID}
        [[ -e "/proc/${timep_PPID0}/stat" ]] || break
        IFS=' ' read -r _ _ _ timep_PPID _ <"/proc/${timep_PPID0}/stat" || break
        (( timep_PPID > 1 )) || break
    done

    # if we couldnt find one in a parent try to use /dev/tty or /dev/pts/_ directly
    ${timep_PTY_FLAG} || {
        if [[ -e /dev/tty ]] && ( ( [[ -t "${timep_PTY_FD}" ]] ) {timep_PTY_FD}<>/dev/tty; ); then
            timep_PTY_FLAG=true
            timep_PTY_PATH='/dev/tty'
        elif [[ -d /dev/pts ]]; then
            for nn in /dev/pts/*; do
                [[ -O "$nn" ]] && ( ( [[ -t "${timep_PTY_FD}" ]] ) {timep_PTY_FD}<>"${nn}"; ) && {
                    timep_PTY_FLAG=true
                    timep_PTY_PATH="${nn}"
                    break
                }
            done
        fi
    }

    export timep_FD0="${timep_FD0}"
    export timep_FD1="${timep_FD1}"
    export timep_FD2="${timep_FD2}"

    if ${timep_PTY_FLAG}; then
        if type realpath &>/dev/null; then
            timep_PTY_PATH="$(realpath "${timep_PTY_PATH}")"
        elif type readlink &>/dev/null && [[ $(readlink "${timep_PTY_PATH}") ]]; then
            timep_PTY_PATH="$(readlink "${timep_PTY_PATH}")"
        fi
        if [[ -t 0 ]]; then
            {
                "${BASH}" -m -O extglob -o functrace "${timep_TMPDIR}/main.bash" "${@}"
            } 1>"${timep_PTY_PATH}" 2>"${timep_PTY_PATH}"
        else
            {
                "${BASH}" -m -O extglob -o functrace "${timep_TMPDIR}/main.bash" "${@}"
            } 0<"${timep_PTY_PATH}" 1>"${timep_PTY_PATH}" 2>"${timep_PTY_PATH}"
        fi
    else
        printf '\n\nWARNING: job control could not be enabled due to lack of controlling TTY/PTY. subshells and background forks may not be properly distinguished!\n\n' >&${timep_FD2}
        if [[ -t 0 ]]; then
           "${timep_TMPDIR}/main.bash" "${@}"
        else
           "${timep_TMPDIR}/main.bash" "${@}" <&0
        fi
    fi
    (( timep_WTIME_DONE = 10#${EPOCHREALTIME//[^0-9]/} ))

    printf '\n\nThe %s being time profiled has finished running!\ntimep will now process the logged timing data.\ntimep will save the time profiles it generates in "%s"\n\n' "$({ [[ "${timep_runType}" == 's' ]] && echo 'script'; } || { [[ "${timep_runType}" == 'f' ]] &&  echo 'function'; } || echo 'commands')" "${timep_TMPDIR}/profiles" >&2
    unset IFS

    # DEBUG OUTPUT - print log contents
    ${timep_DEBUG_FLAG} && {
        mapfile -t timep_LOG_A < <(printf '%s\n' "${timep_TMPDIR}/.log/log"* | sort -V)
        for nn in "${timep_LOG_A[@]}"; do
            printf '\n\n------------------------------------------------------------------\n%s\n\n' "$nn"; sort -n -k2 <"$nn";
        done >&2
    }

    # fold in any remaining subshell init logs
    for nn in "${timep_TMPDIR}"/.log/log.*.init_c; do
        [[ -s "$nn" ]] && ! [[ -s "${nn%.init_c}" ]] && ! [[ -s "${nn%.init_c}".init_s ]] && mv "$nn" "${nn%.init_c}"
    done
    for nn in "${timep_TMPDIR}"/.log/log.*.init_r; do
        [[ -s "$nn" ]] && ! [[ -s "${nn%.init_r}.init_s" ]] && {
            read -r <"$nn"
            echo "${REPLY}" >>"${nn%.*.init_r}"
        }
        \rm -f "${nn}"
    done
    for nn in "${timep_TMPDIR}"/.log/log.*.init_s; do
        [[ -s "$nn" ]] && {
            read -r <"$nn"
            echo "${REPLY}" >>"${nn%.*.init_s}"
        }
        \rm -f "${nn}"
    done

    # shellcheck disable=SC1001
    find  "${timep_TMPDIR}/.log" -maxdepth 1 -name 'log.*' -empty -exec rm \-f {} +

    ##### POST-PROCESSING #####

    # define post-processing function that will:
    # --> re-sort logs based on cmd start time
    # --> combine pipeline commands into single command
    # --> add in end times for subshells (last subshell cmd endtime) / bg forks (next cmd start time)
    # --> compute runtimes for each command (except subshells / bg forks / functions)
    # --> merge up logs + runtimes for any subshells / bg forks / functions
    # --> combine duplicate/repeated commands from loops (in second "combined" log)

    # define helper functions for getting runtime from timestamp differences and for summing runtimes

#    export LOCALE=C
#    export LC_ALL=C


_timep_GET_RUNTIME_CORRECTION() {
## corrects for the overhead of adding nPipe=${#PIPESTATUS[@]} before every command

    local tSum0 tSum1 N NN kk a b

    if [[ "$1" == *[0-9]* ]]; then
        N="$1"
    else
        N=10000
    fi

    (( NN = ( N<<1 ) + 1 ))

    if ${timep_CLOCK_GETTIME_FLAG}; then

        mapfile -t tSum0 < <(tw0=$EPOCHREALTIME;
        clock_gettime tc0
        for (( kk=0; kk<$NN; kk++)); do
            :
        done
        tw1=$EPOCHREALTIME;
        clock_gettime tc1
        (( twSum = 10#${tw1//[^0-9]/} - 10#${tw0//[^0-9]/} ))
        (( tcSum = 10#${tc1//[^0-9]/} - 10#${tc0//[^0-9]/} ))
        printf '%s\n' "${twSum}" "${tcSum}")

        mapfile -t tSum1 < <(tSum=0; kk=0
        trap 'nPipe=${#PIPESTATUS[@]};
        tw1=$EPOCHREALTIME;
        clock_gettime tc1
        (( kk == 0 )) || {
            (( twSum = ${twSum:-0} + 10#${tw1//[^0-9]/} - 10#${tw0//[^0-9]/} ));
            (( tcSum = ${tcSum:-0} + 10#${tc1//[^0-9]/} - 10#${tc0//[^0-9]/} ));
        }
        tw0=$EPOCHREALTIME
        clock_gettime tc0' DEBUG;
        for (( kk=0; kk<$N; kk++)); do
            :
        done
        printf '%s\n' "${twSum}" "${tcSum}")

        (( timep_WTIME_CORRECTION = ( ${tSum1[0]} - ${tSum0[0]} + N ) / NN ))
        (( timep_CTIME_CORRECTION = ( ${tSum1[1]} - ${tSum0[1]} + N ) / NN ))

    else

        tSum0="$(t0=$EPOCHREALTIME;
        for (( kk=0; kk<$NN; kk++)); do
            :
        done
        t1=$EPOCHREALTIME;
        (( tSum = 10#${t1//[^0-9]/} - 10#${t0//[^0-9]/} ))
        echo "$tSum")"

        tSum1="$(tSum=0; kk=0
        trap 'nPipe=${#PIPESTATUS[@]};
        t1=$EPOCHREALTIME;
        (( kk == 0 )) || (( tSum = ${tSum:-0} + 10#${t1//[^0-9]/} - 10#${t0//[^0-9]/} ));
        t0=$EPOCHREALTIME' DEBUG;
        for (( kk=0; kk<$N; kk++)); do
            :
        done
        echo "$tSum")"

        (( timep_WTIME_CORRECTION = ( tSum1 - tSum0 + N ) / NN ))
        timep_CTIME_CORRECTION=0

    fi

    (( timep_WTIME_CORRECTION = 10#${timep_WTIME_CORRECTION} ))
    (( timep_CTIME_CORRECTION = 10#${timep_CTIME_CORRECTION} ))

}
_timep_GET_RUNTIME_CORRECTION

_timep_EPOCHREALTIME_DIFF() {
    local tDiff d d6 a1 a2

    if (( ${#} >= 2 )) && [[ ${1//[^0-9]/} ]] && [[ ${2//[^0-9]/} ]]; then
        (( tDiff = 10#${2//[^0-9]/} - 10#${1//[^0-9]/} - timep_WTIME_CORRECTION ))
    elif (( ${#} == 1 )) && [[ "${1}" == *[0-9]*\ *[0-9]* ]]; then
        a1="${1% *}"
        a2="${1#* }"
        (( tDiff = 10#${a2//[^0-9]/} - 10#${a1//[^0-9]/} - timep_WTIME_CORRECTION ))
        (( tDiff <= 0 )) && tDiff=1
    else
        printf '%s' '0.000001'
        return 1
    fi

    printf -v d '%0.7d' "${tDiff}"
    (( d6 = ${#d} - 6 ))
    printf '%s.%s' "${d:0:$d6}" "${d:$d6}"
}

_timep_EPOCHREALTIME_SUM() {
    local tSum tSum0 d d6

    (( ${#} == 0 )) && return
    (( ${#} == 1 )) && ! [[ "${1}" == *[0-9]*\ *[0-9]* ]] && {
        # short circuit if only 1 time
        echo "${1}"
        return
    }

    printf -v tSum '+10#%s' "${@//[^0-9]/}"
    tSum="${tSum// /+10#}"
    tSum0="${tSum}"
    tSum="${tSum//+10#+/+}"
    tSum="${tSum%+10#}"
    until [[ "${tSum}" == "${tSum0}" ]]; do
        tSum0="${tSum}"
        tSum="${tSum//+10#+/+}"
        tSum="${tSum%+10#}"
    done
    (( tSum = 0${tSum//s/} ))
    printf -v d '%0.7d' "${tSum}"
    (( d6 = ${#d} - 6 ))
    printf '%s.%s' "${d:0:$d6}" "${d:$d6}"
}

_timep_PERCENT_AVG() {
    local tSum tSum0 d d2

    (( ${#} == 0 )) && return 1
    (( ${#} == 1 )) && ! [[ "${1}" == *[0-9]*\ *[0-9]* ]] && {
        # short circuit if only 1 time
        echo "${1}"
        return 0
    }

    printf -v tSum '+10#%s' "${@//[^0-9]/}"
    tSum="${tSum// /+10#}"
    tSum0="${tSum}"
    tSum="${tSum//+10#+/+}"
    tSum="${tSum%+10#}"
    until [[ "${tSum}" == "${tSum0}" ]]; do
        tSum0="${tSum}"
        tSum="${tSum//+10#+/+}"
        tSum="${tSum%+10#}"
    done
    (( tSum = 0${tSum//\%/} ))
    (( tSum = tSum / ${#} ))
    printf -v d '%0.4d' "${tSum}"
    (( d2 = ${#d} - 2 ))
    printf '%s.%s%%' "${d:0:$d2}" "${d:$d2}"
}

_timep_FILE_EXISTS() {
    local w

    [[ -s "${1}" ]] && return 0

    for w in {01..09}; do
        read -r -u ${fd_sleep} -t "0.${w}" _
        [[ -s "${1}" ]] && return 0
    done

    return 1
}

_timep_NUM_RUNNING() {
    local -i nWorker0 nActive0
    local nn
    local -a pAll_PID0 

    nWorker0=0
    nActive0=0

    for nn in "${@}"; do
        if [[ -d "/proc/${nn}" ]]; then
            ((nWorker0++))
            pAll_PID0+=("$nn")
            [[ -s "${timep_TMPDIR}/.worker/${nn}" ]] && ((nActive0++))
        elif [[ -f "${timep_TMPDIR}/.worker/${nn}" ]]; then
            \rm -f "${timep_TMPDIR}/.worker/${nn}"
        fi
    done

    (( nWorkerDiff = nWorker - n ))
    nWorker="$n"
    nActive="${nActive0}"
    pAll_PID=("${pAll_PID0[@]}")
}

_timep_DEBUG_PRINTVARS() {

declare -p | grep -E '^declare -. ((logCur)|(log_tmp)|(kk)|(kk1)|(nn)|(r)|(wTimeTotal)|(wTimeTotal0)|(uTimeTotal)|(sTimeTotal)|(cTimeTotal)|(inPipeFlag)|(lineno1)|(nPipe)|(startWTime)|(endWTime)|(startCTime)|(endCTime)|(wTime)|(cTime)|(wTimeP)|(wTime0)|(cTime0)|(cTimeP)|(func)|(pid)|(nexec)|(lineno)|(cmd)|(t0)|(t1)|(log_tmp)|(linenoUniq)|(merge_init_flag)|(log_dupe_flag)|(spacerN)|(lineU)|(logMergeAll)|(fg0)|(ns)|(nf)|()|(nPipeNextIgnoreFlag)|(IFS0)|(count0)|(nPipe0)|(cmd0)|(d6)|(logA)|(nPipeA)|(startWTimeA)|(endWTimeA)|(wTimeA)|(wTimePA)|(startCTimeA)|(endCTimeA)|(cTimeA)|(cTimePA)|(funcA)|(pidA)|(nexecA)|(linenoA)|(cmdA)|(mergeA)|(isPipeA)|(logMergeA)|(linenoUniqA)|(lineUA)|(timeUA)|(sA)|(fA)|(eA)|(fgA)|(normalCmdFlagA)|(linenoUniqLineA)|(linenoUniqCountA)|(linenoUniqWTimeA)|(linenoUniqWTimePA)|(linenoUniqCTimeA)|(linenoUniqCTimePA)|(IFS0)|(nn)|(jj)|(kk)|(kk0)|(kk1)|(kkd)|(a)|(a0)|(b)|(u)|(logPathCur)|(nCPU)|(nWorker)|(nWorkerMax)|(REPLY)|(timep_coprocSrc)|(timep_DEBUG_FLAG)|(timep_DEBUG_IDS_FLAG)|(timep_deleteFlag)|(timep_fd_done)|(timep_fd_lock)|(timep_fd_logID)|(timep_flameGraphFlag)|(timep_flameGraphPath)|(timep_LOG_NUM)|(timep_noOutFlag)|(timep_outType)|(timep_PPID)|(timep_PTY_FD_TEST)|(timep_PTY_FLAG)|(timep_PTY_PATH)|(timep_runtimeALL)|(timep_wTimeCur)|(timep_WTIME_DONE)|(timep_timeFlag)|(timep_TITLE)|(timep_CLOCK_GETTIME_FLAG)|(timep_WTIME_CORRECTION)|(timep_CTIME_CORRECTION)|(timep_TMPDIR)|(timep_FD0)|(timep_FD1)|(timep_FD2)|(timep_CPU_TIME_MULT)|(pAll_PID)|(timep_outTypeA)|(kkNeed)|(kkNeed0)|(timep_LOG_NAME)|(timep_LOG_NESTING)|(timep_LOG_NESTING_IND)|(LOG_NESTING_CUR)|(timep_LOG_NESTING_MAX)|(BASH_COMMAND)|(FUNCNAME)|(nRetry)|(nWorker)|(timep_))=' | sed -E s/'^declare \-. '//

}

shopt -s extglob
_timep_PROCESS_LOG() {
    local logCur log_tmp kk kk1 nn r wTimeTotal wTimeTotal0 uTimeTotal sTimeTotal cTimeTotal inPipeFlag lineno1 nPipe startWTime endWTime startCTime endCTime wTime cTime wTimeP wTime0 cTime0 cTimeP func pid nexec lineno cmd t0 t1 log_tmp linenoUniq merge_init_flag log_dupe_flag spacerN lineU logMergeAll fg0 ns nf  nPipeNextIgnoreFlag IFS0 count0 nPipe0 cmd0 d6 
    local -a logA nPipeA startWTimeA endWTimeA wTimeA wTimePA startCTimeA endCTimeA cTimeA cTimePA funcA pidA nexecA linenoA cmdA mergeA isPipeA logMergeA linenoUniqA lineUA timeUA sA fA eA fgA normalCmdFlagA
    local -A linenoUniqLineA linenoUniqCountA linenoUniqWTimeA linenoUniqWTimePA linenoUniqCTimeA linenoUniqCTimePA

#    trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2; _timep_DEBUG_PRINTVARS >&2' ERR

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && set -xv

    logCur="${1}"

    [[ -e "${logCur}" ]] || return 1

    inPipeFlag=false
    nPipeNextIgnoreFlag=false

    wTimeTotal=0
    cTimeTotal=0

    # load current log (sorted by NEXEC) into array
    mapfile -t logA < <(sort -V -k11,11 <"${logCur}")

    log_dupe_flag=false
    for (( kk=1; kk<${#logA[@]}; kk++ )); do
        (( kk1 = kk - 1 ))
        [[ "${logA[$kk1]}" == "${logA[$kk]}" ]] && {
            unset "logA[$kk1]"
            log_dupe_flag=true
        }
    done
    ${log_dupe_flag} && mapfile -t -d '' logA < <(printf '%s\0' "${logA[@]}" | sed -E s/'\0+'/'\0'/g)

    # rename log to ___.orig
    \mv -f "${logCur}" "${logCur}.orig"

    # loop through lines in reverse order
    for (( kk=${#logA[@]}-1; kk>=0; kk-- )); do

        # read log fields into variables
        IFS=$'\t' read -r nPipe startWTime startCTime endWTime endCTime func pid nexec lineno _ cmd <<<"${logA[$kk]}"
        nPipeA[$kk]="${nPipe}"
        startWTimeA[$kk]="${startWTime}"
        endWTimeA[$kk]="${endWTime}"
        startCTimeA[$kk]="${startCTime}"
        endCTimeA[$kk]="${endCTime}"
        funcA[$kk]="${func}"
        pidA[$kk]="${pid}"
        nexecA[$kk]="${nexec}"
        linenoA[$kk]="${lineno}"
        cmd="${cmd//\(\&\)/\\\(\\\&\\\)}"
        cmd="${cmd//\(\^\)/\\\(\\\^\\\)}"
        read -r -d '' cmd < <(echo "${cmd}")
        cmd="${cmd//$'\n'/\$"'"\\n"'"}"
        cmd="${cmd//$'\t'/\$"'"\\t"'"}"
        cmdA[$kk]="${cmd}"

        # deal with issue where for (( ...; ...; ... )) loops inherit previous nPipe
        if ${nPipeNextIgnoreFlag}; then
            nPipe=1
            nPipeA[$kk]=1
            nPipeNextIgnoreFlag=false
        elif (( nPipeA[$kk] > 1 )) && (( kk > 0 )) && [[ "${cmd}" == '(('*@([<>=])*'))' ]]; then
            (( kk1 = kk - 1 ))
            IFS=$'\t' read -r nPipe0 _ _ _ _ _ _ _ _ _ cmd0 <<<"${logA[$kk1]}"
            (( nPipe0 > 1 )) && [[ "${cmd0}" == @([[:print:]])'(('*=*'))'@([[:print:]])*([[:space:]]) ]] && {
                nPipe=1
                nPipeA[$kk]=1
                nPipeNextIgnoreFlag=true
            }
        fi

        # check if cmd is a subshell/bg fork/function that needs to be merged up
        if [[ "${cmdA[$kk]}" == '<< ('*'): '*' >>' ]]; then
            normalCmdFlagA[$kk]=false

            # record which log to merge up and where
            mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecA[$kk]#* }"

            # read in the endtime + runtime from the log
            [[ "${cmdA[$kk]}" == '<< (BACKGROUND FORK): '*' >>' ]] || {
                if _timep_FILE_EXISTS "${logCur//\/.log\/log/\/.log\/.runtimes\/log}"; then                
                    IFS=$'\t' read -r wTime cTime <"${logCur//\/.log\/log/\/.log\/.runtimes\/log}"
                    [[ ${wTime} ]] && wTimeA[$kk]="${wTime}"
                    [[ ${cTime} ]] && cTimeA[$kk]="${cTime}"
                elif _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"; then
                    IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"
                    [[ ${wTime} ]] && wTimeA[$kk]="${wTime}"
                    [[ ${cTime} ]] && cTimeA[$kk]="${cTime}"
                 fi                
            }
            
            [[ "${endWTimeA[$kk]}" == '-' ]] && {
                if _timep_FILE_EXISTS "${logCur//\/.log\/log/\/.log\/.endtimes\/log}"; then
                    IFS=$'\t' read -r endWTime endCTime <"${logCur//\/.log\/log/\/.log\/.endtimes\/log}"
                    [[ ${endWTime} ]] && ! [[ "${endWTime}" == '-' ]] && endWTimeA[$kk]="${endWTime}"
                    [[ ${endCTime} ]] && ! [[ "${endCTime}" == '-' ]] && endCTimeA[$kk]="${endCTime}"
                elif _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]#* }"; then
                    IFS=$'\t' read -r endWTime endCTime <"${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]#* }"
                    [[ ${endWTime} ]] && ! [[ "${endWTime}" == '-' ]] && endWTimeA[$kk]="${endWTime}"
                    [[ ${endCTime} ]] && ! [[ "${endCTime}" == '-' ]] && endCTimeA[$kk]="${endCTime}"
                 fi
            }
        else
            normalCmdFlagA[$kk]=true
        fi

        # single-command command/process substitutions dont get a endtime logged (uses endWTime='+' as indicator), since they wont trigger a EXIT trap
        # figure out the most reasonable endtimeby looking at starttimes for the parent, then grandparent, etc.
        # to get the closest timestamp that is greater than the starttime for this command and use that as the endtime
        [[ "${endWTimeA[$kk]}" == '+' ]] && {
            endWTime=0
            log_tmp="${logCur%.*}"
            until [[ "${log_tmp}" == *'/log' ]]; do
                [[ -s "${log_tmp}" ]] && {
                    while read -r _ endWTime _ ; do
                        (( endWTime > startWTimeA[$kk] )) && break 2
                    done <"${log_tmp}"
                }
                log_tmp="${log_tmp%.*}"
            done

            # if we still dont have a valid end time, use the global timep endtime
            (( endWTime > startWTimeA[$kk] )) || endWTime="${timep_WTIME_DONE}"

            endWTimeA[$kk]="${endWTime}"
        }

        # merge pipelines
        if ${inPipeFlag}; then
            # we are in a pipeline, but not at the last element
            # override nPipeA and endWTimeA based on the values from the next command and append next command to current cmdA (with `|` in between)
            # note that this makes the $kk corresponding to the 1st pipeline element the one we will log
            (( kk1 = kk + 1 ))
            (( nPipeA[$kk] = nPipeA[$kk1] - 1 ))
            (( isPipeA[$kk] = isPipeA[$kk1] + 1 ))
            [[ ${endWTimeA[$kk1]} ]] && endWTimeA[$kk]="${endWTimeA[$kk1]}"
            [[ ${endCTimeA[$kk1]} ]] && endCTimeA[$kk]="${endCTimeA[$kk1]}"
            cmdA[$kk]+=" | ${cmdA[$kk1]// \(\&\)/}"
            (( nPipeA[$kk] == 1 )) && inPipeFlag=false
        elif (( nPipeA[$kk] > 1 )); then
            # this is the last element of a pipeline. set flag to indicate this
            inPipeFlag=true
            isPipeA[$kk]=1
        fi
        ${inPipeFlag} && normalCmdFlagA[$kk]=false

        # compute runtime from start/end timestamps (unless we are either in the middle of a pipeline OR it is a subshell / bg fork)
        [[ -z ${wTimeA[$kk]//[^0-9]/} ]] && [[ ${endWTimeA[$kk]//[^0-9]/} ]] && [[ ${startWTimeA[$kk]//[^0-9]/} ]] && (( wTimeA[$kk] = 10#${endWTimeA[$kk]//[^0-9]/} - 10#${startWTimeA[$kk]//[^0-9]/} - timep_WTIME_CORRECTION ))

        [[ -z ${cTimeA[$kk]//[^0-9]/} ]] && [[ ${endCTimeA[$kk]//[^0-9]/} ]] && {
            if [[ ${startCTimeA[$kk]//[^0-9]/} ]] && (( 10#${endCTimeA[$kk]//[^0-9]/} >= 10#${startCTimeA[$kk]//[^0-9]/} - timep_CTIME_CORRECTION )); then
                (( cTimeA[$kk] = 10#${endCTimeA[$kk]//[^0-9]/} - 10#${startCTimeA[$kk]//[^0-9]/} - timep_CTIME_CORRECTION ))
            else
                (( cTimeA[$kk] = 10#${endCTimeA[$kk]//[^0-9]/} - timep_CTIME_CORRECTION ))
            fi
        }

        [[ ${wTimeA[$kk]} ]] || (( wTimeA[$kk] >= 1 )) || { 
            wTimeA[$kk]=1
        }
        [[ ${cTimeA[$kk]} ]] || (( cTimeA[$kk] >= 1 )) || { 
            cTimeA[$kk]=1
        }

        (( wTimeTotal = wTimeTotal + wTimeA[$kk] ))
        (( cTimeTotal = cTimeTotal + cTimeA[$kk] ))

       ${normalCmdFlagA[$kk]} && {
            [[ -z ${fg0} ]] && {
                # get base stack (showing all the parents) for this log
                fg0="$(IFS0="${IFS}"
IFS='.'
# get base stack for flamegraph
read -r -a fA <<<"${funcA[$kk]#* }"
read -r -a sA <<<"${pidA[$kk]#* }"
read -r -a eA <<<"${nexecA[$kk]#* }"
IFS="${IFS0}"
unset "eA[-1]" "IFS0"
ns=0
nf=1
for nn in "${eA[@]}"; do
    if [[ "${nn}" == *'{'*'}' ]]; then
        [[ ${sA[$ns]} ]] && fgA+=("SUBSHELL (${sA[$ns]})_[s]")
        ((ns++))
    else
        [[ ${fA[$nf]} ]] && fgA+=("FUNCTION (${fA[$nf]})_[f]")
        ((nf++))
    fi
done
printf '%s;' "${fgA[@]}")"
            }
            printf '%s%s\t%s\t%s\n' "${fg0}" "${cmdA[$kk]//\;/\,}" "${wTimeA[$kk]}" "${cTimeA[$kk]}" >>"${logCur%\/*}/out.flamegraph.full"
        }
    done

    (( wTimeTotal >= 1 )) || wTimeTotal=1
    (( cTimeTotal >= 1 )) || cTimeTotal=1

    # write runtime and final endtime to .{end,run}time file
    printf '%s\t%s\n' "${endWTimeA[-1]}" "${endCTimeA[-1]}" >"${logCur%\/*}/.endtimes/${logCur##*\/}"
    printf '%s\t%s\n' "${wTimeTotal}" "${cTimeTotal}" >"${logCur%\/*}/.runtimes/${logCur##*\/}"



    # make LINENO's unique and compute runtime as % of total at this depth and get list of unique lineno's
    for (( kk=0; kk<${#logA[@]}; kk++ )); do
        (( kk1 = kk - 1 ))
        if (( kk > 0 )) && (( linenoA[$kk] == ${linenoA[$kk1]%.*} )); then
            (( lineno1++ ))
        else
            lineno1=0
        fi
        linenoA[$kk]="${linenoA[$kk]}.${lineno1}"
        (( wTimeP = ( 10000 * wTimeA[$kk] ) / wTimeTotal ))
        (( cTimeP = ( 10000 * cTimeA[$kk] ) / cTimeTotal ))

        printf -v wTimeP '%0.4d' "${wTimeP}"
        case "${wTimeP}" in
            10000) wTimePA[$kk]=100.00 ;;
            0|'') wTimePA[$kk]=00.00 ;;
            *) wTimePA[$kk]="${wTimeP:0:2}.${wTimeP:2}" ;;
        esac
        printf -v cTimeP '%0.4d' "${cTimeP}"
        case "${cTimeP}" in
            10000) cTimePA[$kk]=100.00 ;;
            0|'') cTimePA[$kk]=00.00 ;;
            *) cTimePA[$kk]="${cTimeP:0:2}.${cTimeP:2}" ;;
        esac        

        [[ "${linenoUniq}" == *" ${linenoA[$kk]} "* ]] || {
            linenoUniqA[$kk]="${linenoA[$kk]}"
            linenoUniq+=" ${linenoA[$kk]} "
        }
        if [[ ${linenoUniqLineA[${linenoA[$kk]}]} ]]; then
            linenoUniqLineA[${linenoA[$kk]}]+=" $kk"
            (( linenoUniqCountA[${linenoA[$kk]}]++ ))
            linenoUniqWTimeA[${linenoA[$kk]}]+=" ${wTimeA[$kk]}"
            linenoUniqCTimeA[${linenoA[$kk]}]+=" ${cTimeA[$kk]:-1}"
        else
            linenoUniqLineA[${linenoA[$kk]}]="$kk"
            linenoUniqCountA[${linenoA[$kk]}]="1"
            linenoUniqWTimeA[${linenoA[$kk]}]="${wTimeA[$kk]}"
            linenoUniqCTimeA[${linenoA[$kk]}]="${cTimeA[$kk]:-1}"
        fi
    done

    # get runtime sums for the combined uniq lineno's
    for kk in "${!linenoUniqWTimeA[@]}"; do
     
        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]//[^0-9 ]/}"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]//[^0-9 ]/}"

        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]# }"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]# }"
        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]% }"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]% }"

        [[ ${linenoUniqWTimeA[$kk]} ]] && (( linenoUniqWTimeA[$kk] = ${linenoUniqWTimeA[$kk]// /\+} )) || linenoUniqWTimeA[$kk]=0
        [[ ${linenoUniqCTimeA[$kk]} ]] && (( linenoUniqCTimeA[$kk] = ${linenoUniqCTimeA[$kk]// /\+} )) || linenoUniqCTimeA[$kk]=0

        (( wTimeP = ( 10000 * linenoUniqWTimeA[$kk] ) / wTimeTotal ))
        printf -v wTimeP '%0.4d' "$wTimeP"
        case "${wTimeP}" in
            10000) linenoUniqWTimePA[$kk]=100.00 ;;
            0|'') linenoUniqWTimePA[$kk]=00.00 ;;
            *) linenoUniqWTimePA[$kk]="${wTimeP:0:2}.${wTimeP:2}" ;;
        esac

        (( cTimeP = ( 10000 * linenoUniqCTimeA[$kk] ) / cTimeTotal ))
        printf -v cTimeP '%0.4d' "$cTimeP"
        case "${cTimeP}" in
            10000) linenoUniqCTimePA[$kk]=100.00 ;;
            0|'') linenoUniqCTimePA[$kk]=00.00 ;;
            *) linenoUniqCTimePA[$kk]="${cTimeP:0:2}.${cTimeP:2}" ;;
        esac                    
    done

    (( spacerN = 4 * ( timep_LOG_NESTING_MAX - timep_LOG_NESTING_CUR ) ))

    # write out new merged-upward log
    kk=0
    inPipeFlag=false
    while (( kk < ${#logA[@]} )); do
        if ${inPipeFlag}; then
            # we are in a pipeline but not in the 1st element. dont add line to log
            (( isPipeA[$kk] == 1 )) && inPipeFlag=false
        else
            # add line to log
            (( kk == 0  )) || printf '\n\n'
            printf -v wTime0 '%0.7d' "${wTimeA[$kk]}"
            (( d6 = ${#wTime0} - 6 ))
            printf -v wTime '%s.%ss' "${wTime0:0:${d6}}" "${wTime0:${d6}}"

            printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%)\t%s\t{{ %s | %s | %s }}\t(%s->%s)' "${linenoA[$kk]}" '' "${wTime}" "${wTimePA[$kk]}" "${cmdA[$kk]}" "${funcA[$kk]}" "${pidA[$kk]}" "${nexecA[$kk]}" "${startWTimeA[$kk]}" "${endWTimeA[$kk]}"

            # check if this is the start of a pipeline
            [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
        fi
        (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

        # add merged up log to log, including for "in the middle of a pipeline" commands
        [[ ${mergeA[$kk]} ]] && [[ -e "${mergeA[$kk]}" ]] && {
            mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk]}")
            printf '\n|-- %s' "${logMergeA[0]}"
            if (( ${#logMergeA[@]} == 2 )); then
                printf '\n|-- %s' "${logMergeA[1]}"
            elif (( ${#logMergeA[@]} > 2 )); then
                printf '\n|   %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                printf '\n|-- %s' "${logMergeA[-1]}"
            fi
        }
        (( timep_LOG_NESTING_CUR == 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'

        (( kk++ ))
    done >"${logCur}"

    # write out new combined (uniq lineno) merged-upward log
    inPipeFlag=false
    for kk in "${!linenoUniqA[@]}"; do
        if ${inPipeFlag}; then
            # we are in a pipeline but not in the 1st element. dont add line to log
            { [[ -z ${isPipeA[$kk]} ]] || (( isPipeA[$kk] == 1 )); } && inPipeFlag=false
        else
            # add line to log
            (( kk == 0  )) || printf '\n\n'

            printf -v wTime0 '%0.7d' "${linenoUniqWTimeA[${linenoUniqA[$kk]}]}"
            (( d6 = ${#wTime0} - 6 ))
            printf -v wTime '%s.%ss' "${wTime0:0:${d6}}" "${wTime0:${d6}}"

            printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%)\t(%sx) %s' "${linenoUniqA[$kk]}" '' "${wTime}" "${linenoUniqWTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCountA[${linenoUniqA[$kk]}]}" "${cmdA[$kk]/%: *([0-9\-]) >>/ >>}"

            # check if this is the start of a pipeline
            [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
        fi
        # (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

        # add merged up log to log, including for "in the middle of a pipeline" commands
         logMergeAll="$(for kk1 in ${linenoUniqLineA[${linenoUniqA[$kk]}]}; do
            [[ ${mergeA[$kk1]} ]] && [[ -e "${mergeA[$kk1]}.combined" ]] && {
                mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk1]}.combined")
                printf '\n|-- %s' "${logMergeA[0]}"
                if (( ${#logMergeA[@]} == 2 )); then
                    printf '\n|-- %s' "${logMergeA[1]}"
                elif (( ${#logMergeA[@]} > 2 )); then
                    printf '\n|   %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                    printf '\n|-- %s' "${logMergeA[-1]}"
                fi
            }
        done)"
        mapfile -t lineUA < <(r=''; sed -E 's/^([^\:]+\:[[:space:]]+)[0-9\|\(\)\.s%]+[[:space:]]*'/'\1\t'/ <<<"${logMergeAll}"| while read -r nn; do [[ ${nn##+(\|   |\|-- |\|)} ]] || continue; [[ "$r" == *$'\n'"$nn"$'\n'* ]] || { r+=$'\n'"$nn"$'\n'; printf '%s\n' "$nn"; }; done)
        (( ${#lineUA[@]} > 0 )) && for lineU in "${lineUA[@]}"; do
            mapfile -t timeUA < <(grep -F "${lineU%%$'\t'*}" <<<"${logMergeAll}" | grep -F "${lineU#*$'\t'}" |  sed -E 's/^([^\:]+\:[[:space:]]+)\(([0-9\.s]+)\|([0-9\.%]+)\)[[:space:]]*(.*)$'/'\2 \3'/)
            count0="${lineU#*$'\t'}"
            count0="${count0%% *}"
            (( count0 = 10#0${count0//[^0-9]/} * ${#timeUA[@]} ))
            printf '\n%s\t(%ss|%s)\t(%sx) %s' "${lineU%%$'\t'*}" "$(_timep_EPOCHREALTIME_SUM "${timeUA[@]%s *}")" "$(_timep_PERCENT_AVG "${timeUA[@]#* }")" "${count0}" "${lineU#*$'\t'* }"
        done

        (( timep_LOG_NESTING_CUR <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'
    done >"${logCur}.combined"
    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && declare -p >&${timep_FD2}
    return 0
}
    #trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2; _timep_DEBUG_PRINTVARS >&2' ERR

    # get log names
    mapfile -t timep_LOG_NAME < <(find "${timep_TMPDIR}"/.log -name 'log*' | grep -vE '\.init_[csr]$' | sort -V)

    # get nesting lvl for each log
    timep_LOG_NESTING=()
    kk=0
    while read -r nn; do
        timep_LOG_NESTING[${#nn}]+="${timep_LOG_NAME[$kk]}"$'\n'
        ((kk++))
    done < <(printf '%s\n' "${timep_LOG_NAME[@]}" | sed -E 's/^.*\/log\.([^\/]*)$/\1/; s/[^\.]//g')
    (( timep_LOG_NESTING_MAX = ${#timep_LOG_NESTING[@]} - 1 ))

    # sort logs in nesting order
    mapfile -t timep_LOG_NAME < <(for kk in "${!timep_LOG_NESTING[@]}"; do sort -V <<<"${timep_LOG_NESTING[$kk]%$'\n'}"; done)

    # get indicies for each nesting lvl
    mapfile -t timep_LOG_NESTING_IND < <(jj0=0; for kk in "${!timep_LOG_NESTING[@]}"; do mapfile -t A <<<"${timep_LOG_NESTING[$kk]%$'\n'}"; printf '%s\n' "${jj0}"; (( jj0 += ${#A[@]} )); done)

    nCPU="$( { type -p nproc &>/dev/null && nproc; } || grep -cE '^processor.*: ' /proc/cpuinfo; )"
    printf '\nDETECTED %s CPUs\n' "${nCPU}" >&2
    [[ $nCPU ]] || (( nCPU > 0 )) || nCPU=1
    (( nWorkerMax = ( 1 + nCPU ) / 2 ))

    exec {timep_fd_logID}<><(:)
    exec {timep_fd_done}<><(:)
    exec {timep_fd_lock}<><(:)

    printf '\n' >&${timep_fd_lock}

    mkdir -p "${timep_TMPDIR}/.worker"

    # NOTE: $timep_TMPDIR/.worker/<workerPID> contasins info on current workers state
    # if the file exists and is empty --> worker is running but not post-processing a log
    # if the file exists and is non empty then it contains the logID that the worker is currently post-processing
    # running `_timep_NUM_RUNNING` will clean up this dir and remove stale entries (e.g., from workers who were killed midway through post-processing a log)
    timep_coprocSrc='declare logID 
shopt -s extglob
: >"${timep_TMPDIR}/.worker/${BASHPID}"
while true; do
    read -r -u "${timep_fd_lock}" _
    read -r -u "${timep_fd_logID}" logID
    printf '"'"'\n'"'"' >&${timep_fd_lock}
    [[ ${logID} ]] || break
    printf '"'"'%s\n'"'"' "${logID}" >"${timep_TMPDIR}/.worker/${BASHPID}"
    if _timep_PROCESS_LOG "${timep_LOG_NAME[$logID]}" 2>&${timep_FD2}; then
        printf '"'"'%s\n'"'"' "${logID}" >&${timep_fd_logID}
        printf '"'"'\n'"'"' "${logID}" >&${timep_fd_done}
    else
        printf '"'"'%s\n'"'"' >&${timep_fd_done}
    fi
    : >"${timep_TMPDIR}/.worker/${BASHPID}"
done
\rm -f "${timep_TMPDIR}/.worker/${BASHPID}"'

    # loop through logs from deepest nested upwards and run each through post processing function
    printf '\n\n' >&2

    export -f _timep_EPOCHREALTIME_DIFF
    export -f _timep_EPOCHREALTIME_SUM
    export -f _timep_PERCENT_AVG
    export -f _timep_FILE_EXISTS
    export -f _timep_NUM_RUNNING
    export -f _timep_PROCESS_LOG
    export -f _timep_DEBUG_PRINTVARS

    timep_LOG_NUM="${#timep_LOG_NAME[@]}"
    (( kk = timep_LOG_NUM - 1 ))
    jj=0
    nWorker=1
    kkNeed=( $(eval "printf '%s ' {0..${kk}}") )
    nRetryMax0=20
    nActive=0

    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"' EXIT
    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"; trap - SIGINT; kill -INT ${BASHPID}' INT
    eval '{ coproc p0 {
    '"${timep_coprocSrc}"'
  } 2>&${timep_FD2}
} 2>/dev/null'
    pAll_PID=("${p0_PID}")
    export timep_LOG_NESTING_MAX="${timep_LOG_NESTING_MAX}"

    for (( timep_LOG_NESTING_CUR=${#timep_LOG_NESTING_IND[@]}-1; timep_LOG_NESTING_CUR>=0; timep_LOG_NESTING_CUR-- )); do
        export timep_LOG_NESTING_CUR="${timep_LOG_NESTING_CUR}"
        
        kkMin="${timep_LOG_NESTING_IND[${timep_LOG_NESTING_CUR}]}"

        (( kkDiff = kk - kkMin + 1 ))

        if (( kkDiff > 1 )); then
            # write ID's of logs to process (for current nesting lvl) to work queue pipe 
            # writer is a background process to prevent deadlock
            {
                for kk1 in "${kkNeed[@]:${kkMin}}"; do
                    printf '%s\n' "${kk1}" >&${timep_fd_logID}
                done
            } &

            # spawn workers until we hit either the max worker count or the number of logs to process at current nesting lvl
            while (( kkDiff > nWorker )) && (( nWorker < nWorkerMax )); do
                eval '{ coproc p'"${nWorker}"' {
    '"${timep_coprocSrc}"'
  } 2>&${timep_FD2}
} 2>/dev/null
pAll_PID+=("${p'"${nWorker}"'_PID}")'
                ((nWorker++))
            done

            # shut down workers if we have more than we need for current nesting lvl
            while (( nWorker > kkDiff )); do
                printf '\n' >&${timep_fd_logID}
                ((nWorker--))
            done

            printf '\n\nPROCESSING NESTING LVL %s (%s LOGS) -- USING %s WORKERS (MAX: %s)\n' "${timep_LOG_NESTING_CUR}" "${kkDiff}" "${nWorker}" "${nWorkerMax}" >&2

            read -r -u "${fd_sleep}" -t 0.01 _ || :

            nFailed=0
            nRetry=0
            nRetryMax=${nRetryMax0}

            while (( kk >= kkMin )); do
                if read -r -t 0.1 -u "${timep_fd_done}" doneInd ; then
                    if [[ -z ${doneInd} ]]; then
                        # we read a blank index --> a log failed but didnt kill the coproc and the coproc already re-submitted the job to the workqueue
                        # perhaps in the future there will be a "nFailedMax" to break out of failing to process some log in an infinite loop.
                        ((nFailed++))
                    elif  [[ ${kkNeed[$doneInd]} ]]; then
                        # we read an index --> that log has finished processing
                        ((kk--))
                        ((jj++))
                        unset "kkNeed[$doneInd]"
                        printf '\rFINISHED PROCESSING TIMEP LOG #%s of %s' "${jj}" "${timep_LOG_NUM}" >&2
                    fi
                elif (( nRetry <= nRetryMax )); then
                    # get not-yet-completed log indicies from current nesting lvl
                    kkNeed0=("${kkNeed[@]:${kkMin}}")

                    # update info on how many workers are still running and how many log files are actively being processed by those workers
                    _timep_NUM_RUNNING "${pAll_PID[@]}" 

                    # to re-send log indicies that have not yet finbished processing, 2 conditions must be met:
                    #    1. there are 0 logs actively being processed, and
                    #    2. there is at least 1 worker coproc that is still running 
                    # combined, this means there is a worker that is being blocked trying to read from the logID pipe --> there are currently no logID's in the logID pipe 
                    (( nWorker > 0 )) && (( nActive == 0 )) && {
                        (( nRetry = nRetry + ${#kkNeed0[@]} ))
                        (( nRetry >= nRetryMax )) && kkd=':' || kkd=''
                        # re-send unfinished indicies
                        {
                            for kk1 in "${kkNeed0[@]}"; do
                                [[ -f "${timep_LOG_NAME[$kk1]}.orig" ]] && \mv -f "${timep_LOG_NAME[$kk1]}.orig" "${timep_LOG_NAME[$kk1]}"
                                printf '%s%s\n' "${kkd}" "${kk1}" >&${timep_fd_logID}
                            done
                        } &
                        # if a worker died midway through processing then it may have been killed by the OOM killer --> we may have too many worker coprocs --> lets lower the max limit a bit.
                        (( nWorkerMax = 1 + ( ( 3 * nWorkerMax ) >> 2 ) ))

                        printf '\nWARNING: %s log(s) failed to process correctly. timep will attempt to process these logs again. (used %s / %s re-tries)\n' "${#kkNeed0}" "${nRetry}" "${nRetryMax}" >&2
                    }
                    # re-spawn dead workers, upo to the max number orf the number of remaining logs at current nesting lvl
                    until (( nWorker >= nWorkerMax)) || (( nWorker >= ${#kkNeed0[@]} )); do
                        eval '{ coproc p'"${nWorker}"' {
    '"${timep_coprocSrc}"'
  } 2>&${timep_FD2}
} 2>/dev/null
pAll_PID+=("${p'"${nWorker}"'_PID}")'
                        ((nWorker++))
                            
                    done

                else
                    kkNeed0=("${kkNeed[@]:${kkMin}}")
                    _timep_NUM_RUNNING "${pAll_PID[@]}" 
                    (( nFailed = nFailed + nWorkerDiff ))
                    (( ${#kkNeed0[@]} > nFailed )) || (( ${#kkNeed0} == 0 )) || {
                        printf '\n\nERROR: could not process the following logs:\n' >&2
                        for kkErr in "${kkNeed[@]:$kkMin}"; do
                            printf '%s: %s\n' "$kkErr" "${timep_LOG_NAME[$kkErr]}" >&2
                        done
                        printf '\nABORTING!' >&2
                        _timep_DEBUG_PRINTVARS
                        return 1
                    }
                fi
            done

        else
            # only 1 log at this level - dont use workers
            printf '\n\nPROCESSING NESTING LVL %s (1 LOG)\n' "${timep_LOG_NESTING_CUR}" >&2
            (
                while true; do
                    _timep_PROCESS_LOG "${timep_LOG_NAME[$kk]}" && break
                done
            )
            ((kk--))
            ((jj++))
            unset "kkNeed[$kk]"
            printf '\rFINISHED PROCESSING TIMEP LOG #%s of %s' "${jj}" "${timep_LOG_NUM}" >&2
        fi

        read -r -u "${fd_sleep}" -t 0.1 _ || :
    done

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    while (( nWorker > 0 )); do
        printf '\n' >&${timep_fd_logID}
        ((nWorker--))
    done

    wait "${pAll_PID[@]}" &>/dev/null

    trap - EXIT INT

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    exec {timep_fd_logID}>&-
    exec {timep_fd_done}>&-
    exec {timep_fd_lock}>&-

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    printf '\n\nFINALIZING TIME PROFILE\n' >&2
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}"
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}.combined"

    for nn in "${timep_TMPDIR}"/.log/.runtimes/log.*; do
        read -r timep_wTimeCur <"${nn}"
        printf '\n\nTOTAL RUN TIME: %ss\n' "${timep_wTimeCur}" >>"${nn//\/.log\/.runtimes\//\/.log\/}"
        printf '\n\nTOTAL RUN TIME: %ss\n' "${timep_wTimeCur}" >>"${nn//\/.log\/.runtimes\//\/.log\/}.combined"
    done

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # reverse flamegraph input so it starts at the parent and ends at the depest child
    echo "$(grep -n '' <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E s/'^([0-9]+)\:'/'\1 '/ | sort -nr -k1,1 | sed -E s/'^[0-9]+ '//)" >"${timep_TMPDIR}/.log/out.flamegraph.full"

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # fold flamegrapoh stack traces
    sed -E s/'^(.+)\t([0-9]+)$'/'\1'/ <"${timep_TMPDIR}/.log/out.flamegraph.full" | sort -u | while read -r u; do printf '%s\t%s\n' "${u#*$'\t'}" "$((0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E s/'^(.+)\t([0-9]+\t[0-9]+)$'/'+\2'/ | sed -E s/'\n'//g) ))"; done >"${timep_TMPDIR}/.log/out.flamegraph"

    # copy final outputs to profiles dir
    timep_LOG_NESTING[0]="${timep_LOG_NESTING[0]%$'\n'}"
    sed -E s/'\t([0-9]+\t[0-9]+)$'/'\t \1'/ <"${timep_TMPDIR}/.log/out.flamegraph.full" >"${timep_TMPDIR}/profiles/out.flamegraph.full"
    sed -E s/'\t([0-9]+\t[0-9]+)$'/'\t \1'/ <"${timep_TMPDIR}/.log/out.flamegraph" >"${timep_TMPDIR}/profiles/out.flamegraph"
    sed -zE 's/\n\|   ([^\n]+)\n\|(\n\n+TOTAL RUN TIME)/\n|-- \1\2/' <"${timep_LOG_NESTING[0]%$'\n'}" >"${timep_TMPDIR}/profiles/out.profile.full"
    if [[ "${timep_runType}" == 'f' ]]; then
        sed -E 's/^(\|   [0-9])/|\n\1'/ <"${timep_LOG_NESTING[0]}.combined" | sed -zE 's/\n\|   ([^\n]+)\n\|(\n\n+TOTAL RUN TIME)/\n|-- \1\2/' >"${timep_TMPDIR}/profiles/out.profile"
    else
        cat "${timep_LOG_NESTING[0]}.combined" >"${timep_TMPDIR}/profiles/out.profile"
    fi

    # remove (some) of the spurious '(&)' marks caused by process substitutions
    grep -E '\(\^\)$' "${timep_TMPDIR}/profiles/out.profile" | sed -E 's/\:.*$//;s/^.* //' | { A="$(<"${timep_TMPDIR}/profiles/out.profile")"; B="$(<"${timep_TMPDIR}/profiles/out.profile.full")"; while read -r nn; do A="$(sed -E 's/^('"${nn//./\\.}"'.*) \(\&\)$/\1/' <<<"$A")"; B="$(sed -E 's/^('"${nn//./\\.}"'.*) \(\&\)\t/\1\t/' <<<"$B")"; done; sed -E s/' \(\^\)$'//  <<<"$A" >"${timep_TMPDIR}/profiles/out.profile"; sed -E s/' \(\^\)\t'/'\t'/  <<<"$B" >"${timep_TMPDIR}/profiles/out.profile.full"; }

    # get total runtime
    read -r timep_runtimeALL <"${timep_TMPDIR}/.log/.runtimes/${timep_LOG_NESTING[0]##*/}"
    ((timep_runtimeALL = 10#0${timep_runtimeALL//[^0-9]/}))

    # add another percentage showing "percent of total runtime" to final outputs
    for logPathCur in "${timep_TMPDIR}/profiles/out.profile" "${timep_TMPDIR}/profiles/out.profile.full"; do

        # split lines into start, time, percent, end
        echo "$(sed -E s/'^([^\(]+\()([0-9\.]+)s\|([0-9\.]+)(.+)$'/'\1'$'\034''\2'$'\034''\3'$'\034''\4'/ <"${logPathCur}" | while IFS=$'\034' read -r a0 t p a1; do
            { [[ $t ]] && [[ $p ]] && [[ $a1 ]]; } || {
                # this is a blank/seperator line. re-print it unmodified
                printf '%s\n' "${a0}${t}${p}${a1}"
                continue
            }

            # get percent of total runtime
            ((p1 = (10000 * 10#${t//[^0-9]/}) / timep_runtimeALL))
            printf -v p1 '%0.4d' "${p1//[^0-9]/}"
            if ((10#${p1} == 10000)); then
                p1="100.00"
            else
                p1="${p1:0:2}.${p1:2}"
            fi

            # if percents are equal (i.e., it is a top-level log line) reprint unmodified. Otherwise add in new "percent of total" field.
            if [[ "${p}" == "${p1}" ]] && ( a00="${a0%%[0-9]*}"; [[ "${timep_runType}" == 'f' ]] && (( "${#a00}" <= 5 )) || (( "${#a00}" <= 1 )); ); then
                printf '%s\n' "${a0}${t}s|${p}${a1}"
            else
                printf '%s\n' "${a0}${t}s|${p1}%|${p}${a1}"
            fi
        done)" >"${logPathCur}"
    done

    # if '--flame' flag given create flamegraphs
    ${timep_flameGraphFlag} && {
        printf '\nGENERATING FLAMEGRAPHS\n' >&2
        export PATH="${PATH}${PATH:+:}${timep_TMPDIR%/*}"
        if type -p timep_flamegraph.pl &>/dev/null; then
            timep_flameGraphPath="$(type -p timep_flamegraph.pl)"
        elif [[ -f "${PWD}/timep_flamegraph.pl" ]]; then
            cat "${PWD}/timep_flamegraph.pl" >"${timep_TMPDIR%/*}/timep_flamegraph.pl"
            timep_flameGraphPath="$(type -p timep_flamegraph.pl)"
        else
            type -p wget &>/dev/null && wget https://raw.githubusercontent.com/jkool702/timep/main/timep_flamegraph.pl -O "${timep_TMPDIR%/*}/timep_flamegraph.pl" 2>/dev/null
            type -p timep_flamegraph.pl &>/dev/null || {
                type -p curl &>/dev/null && curl https://raw.githubusercontent.com/jkool702/timep/main/timep_flamegraph.pl >"${timep_TMPDIR%/*}/timep_flamegraph.pl" 2>/dev/null
            }
            type -p timep_flamegraph.pl &>/dev/null && timep_flameGraphPath="$(type -p timep_flamegraph.pl)"
        fi

        [[ ${timep_flameGraphPath} ]] && {
            chmod +x "${timep_flameGraphPath}"

            case "${timep_runType}" in
                f) timep_TITLE="${timep_funcName}" ;;
                s) timep_TITLE="${timep_runCmdPath}" ;;
                c) timep_TITLE='Various Commands' ;;
            esac

            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE} (FULL)" --minwidth 0.01 --width 4096 --height 24 --flamechart --countname "us" --fontsize 10 --color timep <"${timep_TMPDIR}/profiles/out.flamegraph.full" >"${timep_TMPDIR}/profiles/flamegraph.full.svg"
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --minwidth 0.01 --width 4096 --height 24 --flamechart --countname "us" --fontsize 10  --color timep <"${timep_TMPDIR}/profiles/out.flamegraph" >"${timep_TMPDIR}/profiles/flamegraph.svg"
        }
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    [[ "${timep_outType}" == *' ff '* ]] && {
        printf '\n\nFLAMEGRAPH FULL STACK TRACE\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.flamegraph.full"
    }

    [[ "${timep_outType}" == *' f '* ]] && {
        printf '\n\nFLAMEGRAPH FOLDED STACK TRACE\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.flamegraph"
    }

    [[ "${timep_outType}" == *' pf '* ]] && {
        printf '\n\nOUTPUT LOG (FULL)\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.profile.full"
    }

    [[ "${timep_outType}" == *' p '* ]] && {
        printf '\n\nOUTPUT LOG (COMBINED)\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.profile"
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    ${timep_deleteFlag} && {
        \rm -rf "${timep_TMPDIR}/.log"
        for nn in "${timep_TMPDIR}"/*; do
            [[ -f "$nn" ]] && \rm -f "$nn"
        done
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    [[ -L ./timep.profiles ]] && \rm -f ./timep.profiles
    type -p ln &>/dev/null && ln -sf "${timep_TMPDIR}/profiles" ./timep.profiles

    ) {timep_FD0}<&0 {timep_FD1}>&1 {timep_FD2}>&2 {fd_sleep}<><(:)
}


_timep_file_to_base64() { 
    local ff nn k1 k2;
    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))

    [[ -f "${1}" ]] || { 
        printf '\nERROR: "%s" not found. ABORTING.\n' "${1}"; >&2
        return 1                                              
    }
    
    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))
    
    while read -r -N 3 nn; do
        (( k1 = ( 16#${nn} >> 6 ) ));
        (( k2 = ( 16#${nn} % 64 ) ));
        printf '%s%s' "${charmap[$k1]}" "${charmap[$k2]}";
    done < <(hexdump -v -x < "${1}" | sed -E 's/^[^ ]*//; s/ //g' | sed -zE s/'\n'//g);                                                                           
} 

_timep_base64_to_file() {
    local b fd0 fd1

    [[ -t 0 ]] && {
        printf '\nERROR: pass the base64-encoded sequence on stdin. ABORTING.\n'  >&2
        return 1
    }

    exec {fd0}<&0
    if (( $# > 0 )); then
        [[ -f "$1" ]] && { \rm -f "$1" || return 1; }
        exec {fd1}>"$1"
    else
        exec {fd1}>&1
    fi
    
    {
        printf "$(while read -r -u "${fd0}" -N 4 b; do 
        printf -v b '%0.6X' "$(( 64#${b} ))"
        printf '\\x%s' "${b:0:2}" "${b:2:2}" "${b:4}";
        done)" >&"${fd1}"
    } 
    
    exec {fd0}>&-
    exec {fd1}>&-

    (( $# > 0 )) && chmod +x "${1}"
}

_timep_SETUP() {
    local -A b64 
    local ARCH
    
    mkdir -p /dev/shm/.timep
    
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH#/dev\/shm\/.timep/?(\/)?(\:)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH%?(\:)/dev\/shm\/.timep?(\/)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH//\:\/dev\/shm\/.timep?(\/)\:/\:}${BASH_LOADABLES_PATH:+\:}/dev/shm/.timep"
    export BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}"
    
    b64[x86_64]="hnZ6j042004000000000000303U00g00000000000000g000000002fM000000000000001003w02M1002807M0600001000040000000000g00000000010000000000Cw000000002q000000000080000000000g000040002G000000000aE000000000Gw000000000h000000000140000000000w0000000000g0000g00000000000000000000000000000000000I0000000002M000000000g00000000000100001g002M000000000r0000000001I0000000000SM000000003r000000001000000000000400006000es000000002VM00000000bD000000000260000000016g000000004000000000000g0000o0012w00000000ga0000000010E0000000003w000000000e400000000g00000000000200001w003Dw00000000Ku000000002VU000000000t0000000001Q0000000000800000000Vl1At0040009r000000000BI000000002mM00000000070000000000s0000000000g00000003BkShQ00g000aE000000000Gw000000002G0000000000w00000000020000000000200000000elhp7g01w000000000000000000000000000000000000000000000000000000000100000000Vl9At004000es000000002VM00000000bD000000000260000000016g00000000004000000000100001000005001ehM1l00700g0400000g00000000040000500000c004V705l@pwbdoBzKiwDJRP1l0qmv47U@xM0000000g000100000100006w00000000g840w04000Kibd9oeHYoM00000000000000000000000000000000000000140000w0000000000000000000000000200000w00000000000000000000000003M0000w00000000000000000000000005o0000g00000000000000000000000006w0000g00000000000000000000000007o0000g00000000000000000000000007M0000g00000000000000000000000008E0000g00000000000000000000000009o0000i00000000000000000000000009Y0000i0000000000000000000000000aQ0000y0000000000000000000000000bM0000i0000000000000000000000000ck0000i0000000000000000000000000cM0000i0000000000000000000000000dc0000i0000000000000000000000000eg0000h01B0U0000000000M000000000fA0000i018uk0000000000s00000000r01yqiVzrTcSbDg0rmBMplY0pRZLrlZKt7dOolZQ05Z9nQRkp5ZOpmtBsSBBt5hOgQRLr6lKolhIow1BilZdl79vpSlPqmlQl793jmZIpmVxl6Ny06lxrmlHoBZFtnhIrCBxnStO07pRoCNFqnhvrD9BrT80sCpUpn80pmByp6VSnT9xomBIow1Bp65vp7lyr6BFt01KrDdOs6VFpDhz06ZIqSdDnThBqnhBrlY0oRZxu6pvrCBIonFF06lQsSlOsD9OrT00qn9Qrw1Ct7dzsD1JnM1BnT9OrSVInSdLt65Lqg1Kr6dzrRZHpmtQt6RFnSlQsTlOt6dP07hBs7lynSBRt6NKqnhvrmBMpks0ikN3gz9vcyURbAs0ikN3gz9vciU0dM0000400g0100400g0100400g0200c00w0200800w0200400g0100800g0001000000000qtgBF00000w4d00004000Aps6Bw0000c16g00000002VM0000000000w00000000Ks000000003180000000000w00000000sw0000000031g0000000000w00000000sM0000000042w0000000000w000000009Vg000000042E0000000000w000000009O0000000042M0000000000w000000009Vg000000042U0000000000w00000000a4000000004300000000000w00000000ak000000004380000000000w00000000aG0000000043w0000000000w000000009Kw000000043E0000000000w00000000sQ0000000043U0000000000w000000010E000000004400000000000w000000009F0000000031w0000000000o00001000000000000031E0000000000o00002000000000000031M0000000000o0000300000000000003200000000000o0000b000000000000031U0000000000o0000g000000000000044E0000000000s00004000000000000044M0000000000s00005000000000000044U0000000000s0000600000000000004500000000000s0000700000000000004580000000000s00008000000000000045g0000000000s00009000000000000045o0000000000s0000a000000000000045w0000000000s0000c000000000000045E0000000000s0000d000000000000045M0000000000s0000e000000000000045U0000000000s0000f000000000000000k00000000uw40kDw10h0c6Mw70p00000U000070004Xw0005Y0012010e0EQegEMoggcw3wi63A63a4g5s0Wo0wUagOww3wV1gxwg3wV2hww02M0o0000m0005fM0000s0014010e3Bs02000000000006M4X0_@8__Y00w004Sg00f@A__YkV000_@3__SBQpmQWs7kwqSVLrCVToO1JrS5Jp6UD87cB02tIoSdLnSJBpThQrmAwpjNrglo@kw1tr6dzrRZHpmtQt6RF06ljlkt1eAlz86ZIqSdDnThBqnhBrlIwlzNiglQ@001IoSdLnSJBpThQrmAwpm5Cr6BApi0WsOkB06NI2CgB06NI06g00000001BkDlQrD9E86tFbmxBsCZPtmNFt6VLgO1lk7gwrmAwpndRp6ly821Vq7gwpnlzsD9Kpi1QsD1zrTdBbDc00000pABx821KsC5RpSlJt6VF821Pon1PsShB82NPti1Bt6Bx821Pq7gwpm5KpmRL821C865xgCxPty1Oom5Fr68wpmZQoi1PsStF86VEt21Bpn9RsThI02U007hfpmxTsDdFb6lM86BOt6UwsSxQ86lBsDlPt6NQ821Lt7dLp7hR02U00000000006NzoSZvqSlDt7hJqjFBt21LrSQwrC4wun9xtmtBrnhK07c00000000fY_EuwQw8X8d82cg0MM003_fW7Ed82eObi44501l80c250Djg_Ud82cg0MM00000fY_EukQ4R_Ons000B_Onu003cPcPcPcPcPcPcPcPcPbJ1000002n_9sM00cPcPcOXgg01000B_On4003cPcPcKQ400w009vYBL000PcPcPbJ100c002n_9rg00cPcPcOXgg04000B_OmI003cPcPcKQ401g009vYBF000PcPcPbJ100o002n_9pM00cPcPcOXgg07000B_Omk003cPcPcKQ4020009vYBz000PcPcPbJ100A002n_9og00cPcPcOXgg0a000B_OlY003cPcPc9vYkuw00PcM00000000008R8qjQ09kw01oQBow00ekxQ@4wl1oIkfw00xkxQMfY93@207M00000fMU0v000008R8ejQ09kw0doQBcw00akx8_L29Mkw_XI580_w1i4z6_J4kt8J81gk054w0M8k8te3_3Sp47M003Ye07M00000fY_Eufo0AZg00tg1laUd8WzQ04M00ykxQVkwcfoQhPw00muz__@z__Sj__Mn69cQ005Q13Yc07M_3w1Y000003_fW7DvF___c_YPcPcPcP5l1l45jlod8ieOdi2hQW0P@rf__zkzfdv_IifYEyUB9icjLyuvE__W5_Tn0wRcAv08cv7_3yogf08g008R897i_4002002lWf_@xvYfMeS4003E0fX8__YUyV7E__V8_PSdXb3__UB8csrEMfUw__@9jezD_yz__NvH3Sp47M00ykx8XzSdX2X__Y0N_@z__rL_004008BcWev@0L__wQx8Ndy9nlJsglR13Yd47M00zkxhfv_Jcv_EMfTi___hWUJ996O0201Z3M1Jxf__ifZQzh0A0HY00ew0_wb__Y25xg__rv__yQwAt4Mor8Qw9bx8ZY_zkVKB8chFi2hcg10fgAM0XUDTi4zK_I4NfQz0@I581_8F8bU004w0Qg6di10l_@PE__SC___icoBcieXLynDE__TF__Zq__Yv3M10yQwAj4wofoTHU___K4zTP@djCWkwN6B897h040Z2i03FZY58f_D0cs581_EFi4zaRw69Wf_ZWv__6L__7MY0g8d82eObi1QZ01a@0001000HWf_ZcvZ8Mci3MMw00000bD00000000000g00000000010000000000U0000000002M0000000007000000001A000000000020000000006M0000000000A00000000060000000000n000000001_00000000000w00000000480000000001g0000000001M000000000300000000gh00000000001w00000000co0000000000I000000000600000000005000000001cw0000000002w000000004A0000000001A00000000Mk0000000000r0000000000w0000000006w00000003180000000001M000000000200000000f_Mr_Y000001uM00000003__C__000000og00000000__ZL_M0000000g000000000c000000006N00000000003g00000001I000000000_LlL_M000002Y00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001O0000000007c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009Vg00000000D8000000002uk00000000a4000000000Fg000000002Gw000000000000000000000000000002rE00000000sQ0000000000100000000ga0000000009F0000000000000000000bDw000000000000000000000000000006P000000000rc000000001IM000000006P000000000rc000000001IM000000006P000000000rc000000001IM000000006P000000000rc00000000008000040000g0004570ihxcM0N71000000000s400000000008000040000g0004570ihxcM0N6N000000000r9w0000000008000040000g0004570ihxcM0N6M000000000r200000000008000040000g0004570ihxcM0N71000000000sOg0000000008000040000g0004570ihxcM0N7cA00000000sOg0000000008000040000g0004570ihxcM0N7cA00000000sOg0000000008000040000g0004570ihxcM0N6Oo00000000raM0000000008000040000g0004570ihxcM0N6Mw00000000r3g00000006ZJp6MO83gKbz0wcmcErmZxs6BQr68wpmBTq7h785ler20Fp000gQsWgOwwjAsFlj4wbzgKcO0Nc38RczkMcP8E86li86hxi21Qd34Pbz4KciQ0aiU0rSVBt6sKtmVMbCZOpn1Qsw1VryVQrOVBrCsKtnlyr6AJp6hFbw1KpOVRomxEsOU0umhPrCRVbw1Vp7dKsDgK06VDbDlBtDdOrSA0rCsKtmVSbD9BqndKrT9vbw1BsC5Ip2VKuiU0pn9xr70Kt6MK06xBpBZxsClJbw1Epmpvon9BrmxvsCgK06ZOomhxt7cKsDgKcg0NsyVArThxbC5QsP5Oe2UK06BCqmUK06VFt6AK06NM07hMbDhIpOVQrOU0pnhQu2U0omhxt78Kr6lObw1Lp2VKumRxoSAK06BCqmVxnT9Oum4K06VFt6BxnT9Oum4K06ZD07hObCNBrT9MnShxqmhDryU0omhxt2U0rSsKt6NM07hQbBZJr6dKrRZBonhIow1BoyVPsOU0rCsKtnlyr6AKp7hxsDhyqnhRsSkK06ZzrmRKpg1QsOVPq79Qong0oDcKsDhxt01ysOVJum5Q069J06JxnSlRoCNFqnhvrD9xtCtM97hIow1FtnhIrCBBnT9OsCZM97hIu01OpClBs2hQr680rCBvp65Sqn9yomlIs2hQr640p6hynSBRt6NKqn0At6NP071Kqn9QryhCr700t6NzoSZvqSlDt7hJqihBr700t7hPpn9OsD9Ls2hQr700qn9QryhCr700t7hPoT9Mrn0At6Nv06lvsD9LrCNvoSZQomZF96VIs01QnRZUoRZxqmpxrCBIpnFM97hIrSs0t5ZvrmtKrTdvonhQsBZvpOhQrRY0l4BvjmlApn9FpThPsCldl6N3rCZkpm9xpmND97hLnM1kilZdpn9FpThPsCldl6N3rCZkpm9xpmND97hLoM1Lr6JzpRZQpmBQpmRPnT9QoTkAt6ZD07hvnTxznS5FpC5KqmNBuCsAt6Zv06tvrSRvrDhPsC5vt01vqlZFrw1QpBZKqg1FnRZdl5Z3ikNkkRZvp01OpmtBsSBBt5ZOrnhznSZIpmU0sSlOqmtQsT9Bt5ZvrmNzrCZPplY0p5ZvrSNDoCZIomhvrThPsC5vu7lz06RLr71QpmhBc2Vv06hvnSZIpS9Lr65AnSZQsT9xnTxRpBZKqlZFsC5xsBZVrClOt01VsCpJolZBtmhJrg1VnRZOpCRxnSlRp6RJnTBKqnhFolZOsDBxplZQrDBOnM1kilZdpmhBsCBDt7dOpkRkr4dKrRhBoC5Br5Y0l4BvjmlOqmtQsT9BjlhIgSVLl6lyomlInM1AnSZPq5ZKomNA06lvnQRknQdehlZ405ZvnSxBsChPnS5Qt79v06BvqmVvt79xon9vunhPsC40t5ZvrCBQqm5vsD9Vomlvp6Vv06pvrCBvqn9xon9vunhPsC40t5ZvqmpFrC5vsD9Vomlvp6Vv071vpn9KqnhFolZOsDBxsRZxt7hOnM1MnSlOrCBQqm5vsD9Vomlvp6Vv05B4gkV9jg13hRZfj452nQN6jRd6l4lknQ91hkM0nR1vjR95gRl4hl9cnQV9gkJ5hRhvgA55j01vnRZPoBZPt7dOog1QplZArBY0t6lUpg1QplZxp65QnM1BnSlUtmdxt6NynSlQsT9x07hvnSlOomNFnSNMnThQsT9x07hvnSlOomNFnSNMnThKpg1AnRZehRZli4l6nQ5ihkR8nR94pg1ArCk0pnhQu6k0omhxt5Y0j5hvkQZdlkh5j49vkQ5vhlY0sRZxt7hOhlZ4i01inRZQsT1LhlZ4i01inRZQsT9xnTh8k594nM1PnSZQnT18k594f01OomBQqmpFoSNx03VFt6lJnT1RoCNFqng0rCNzoSZvqSlDt7hJqlZBrSg0oQMKc4cK04dc039cbzd3bw13j00Nj2UQgOU0gQM0dm5JpmJynSBRt6NKqm5vpT80tDlyr6BFt5ZKsClLsw1OpDxBsw1Bqm9ArDpvsC5xqmNy06lBsTlQnT1RoCNFqnhvrCBQpmQ0s6NzoSZvqSlDt7hJqlZBt7dRsDhzog1Ap69vqnlQr6VFsM1MrCBOt6U0pCNzoSZvqSlDt7hJqg1BnRZUoRZxqmpxrCBIpnFP079QsClLsw1OsD1KqmpQsM1Ot6Rz071vnT9BrD9vrSZIomdFt6VL00000000000000000000000000000000000000000000000000c00gaE00000000000000000000000000c00wb800000000000000000000000000c00MbM00000000000000000000000000c010co00000000000000000000000000c01gj800000000000000000000000000c01wnI00000000000000000000000000c01Mog00000000000000000000000000c020p000000000000000000000000000c02gvM00000000000000000000000000c02wzU00000000000000000000000000c02MBI00000000000000000000000000c030C800000000000000000000000000c03gEg00000000000000000000000000c03xI000000000000000000000000000c03NIg00000000000000000000000000c041IM00000000000000000000000000c04hM000000000000000000000000000c04xMg00000000000000000000000000c04OVM00000000000000000000000000c052VU00000000000000000000000000c05j1800000000000000000000000000c05z1g00000000000000000000000000c05P1o00000000000000000000000000c0632800000000000000000000000000c06k2w00000000000000000000000000c06A4g00000000000000000000000000c06Q6000000000000000000000000000c0746000000000000000000000000000c07g0000000000000000000000000000c07w0000000000000000000000000000c07M0000000000000000000000000000c0800000000000000000000000000000c08g00000000000000000000000g00008041Jg000000000000000000005M00008041Jw00000000000000000000ag00008041JM00000000000000000000cM00008041K000000000000000000000hg00008041Kg00000000000000000000lg00008041Kw00000000000000000000ow00008041KM00000000000000000000t000008041L000000000000000000000wg00008041Lg00000000000000000000z000008041Lw00000000000000000000BM00008041LM00000000000000000000H00000804hM000000000000000000000Mw0000405P1w00000000000000000000Rg0000405P1E00000000000000000000Zg0000405P1M000000000000000000014M0000405P1U00000000000000000001b00000405P2000000000000000000001jw000w803NIg00000000000000000001l0000w803xI000000000000000000001mw0000406Q6000000000000000000001pM0000804xMg00000000000000000001v00000804xN000000000000000000001zM0000804xO000000000000000000001Fg000040746000000000004000000001Ig0000405j1800000000000000000001S00000804xP000000000000000000001V00000405z1g00000000000000000002eg000w404OVM00000000000000000002hw000w406Q6000000000000000000002kw0000000g0000000000000000000002nM0000005z1g00000000000000000002sw0000005z1o00000000000000000002wM0000005j1800000000000000000002Bw0000005j1g00000000000000000002FM0000008g0000000000000000000002Lg0000008g0000000000000000000002Qg00000052VU00000000000000000002Sw0000006A4g00000000000000000002Y000000041IM000000000000000000032w0000007460000000000000000000035w0000007461000000000000000000036M0000004xVI000000000000000000038w0000006Q6000000000000000000003ag0000000g0000000000000000000003f000003_Yg0000000000000000000003jw00003_Yg0000000000000000000003nw0000002MBI00000000000000000003sg000000746100000000000000000003tg0000004xVI00000000000000000003uM0000006Q6000000000000000000003wg0000o00g0000000000000000000003AM0000008g0000000000000000000003E00000008g0000000000000000000003H00000008g0000000000000000000003Kg0000008g0000000000000000000003Ng0000j_Yg0000000000000000000003Qw0000804xPg000000000nM000000003U00000406k2w0000000003w000000003Yw00000030CW00000000000000000003ZM00000030DC00000000000000000003_000000030C8000000000000000000040g0000003gHo000000000000000000041w00000030E5000000000000000000042M00000030D_00000000000000000001fM0002000000000000000000000000020M0002000000000000000000000000027M000200000000000000000000000004400001000000000000000000000000048w000100000000000000000000000004c0000100000000000000000000000004dw000100000000000000000000000004h00001804xVg0000000001M000000004m00001406k3w00000000030000000004rg000100000000000000000000000004ug000180000000000000000000000004ww000180000000000000000000000004A0000280000000000000000000000004DM000180000000000000000000000004G0000180000000000000000000000004HM000180000000000000000000000004Jw0001800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000700000w00000000aE000000000Gw0000000008000000000000000000000w00000000000000000000k00001M00008000000002O000000000b80000000002g000000000000000000004000000000000000000009M00__pL_M02000000000L0000000002Y0000000000A0000000000g000000000200000000000000000000340000b00000w00000000co000000000Nw000000001I0000000000500000g0000w00000000060000000000V00000M00008000000004O000000000j8000000000ig00000000000000000000100000000000000000000gg00__ZL_M02000000001uM000000005X0000000000A0000000000g0000000000w00000000020000000004U00f_@r_Y00w00000000og000000001x0000000000c0000000000500000g0000g00000000000000000001t00001000008000000006g000000000p0000000000r00000000001000000000080000000001w000000000pM0000g00002000000001_0000000007Y000000000480000000000g0000q000020000000000o000000000740000100000w00000000zU000000002fw000000000t000000000000000000000w00000000000000000001X00000g00008000000009r000000000BI0000000001M00000000000000000000400000000000000000000yg000040000O000000002ow000000009y00000000022000000000000000000000g00000000010000000009w000010000cw00000000Eg000000002x0000000000Y000000000000000000000w0000000000g000000002D00000g0000o00000000r0000000000I00000000000Q00000000000000000000400000000000000000000Hg0000400006000000006N000000000b40000000000r00000000000000000000100000000000000000000bc0000100001w00000001IM000000002P0000000000Q000000000000000000001000000000000000000002U00000g0000o00000000s0000000000M00000000000w00000000000000000000g00000000000000000000Mg00004000060000000071000000000c40000000009s00000000000000000000400000000000000000000cs0000100000M00000002VM000000003D00000000002000000000000000000000w00000000000000000003k00001w0000c00000000Ku000000000VU000000000t00000000001g000000000800000000010000000000Tg0000Y0000300000000c4w00000000gi0000000000800000000000000000000200000000000000000000eA0000e00000M000000031g000000004500000000002000000000000000000000w00000000000000000003R00000g0000c00000000Mm0000000011o0000000003000000000000000000000800000000000000000000@w0000w0000300000000c8w00000000gy000000000ZU000000000000000000000g0000000000000000000gA0000100000M000000042w000000004a0000000000s000000000000000000002000000000000000000004f00000g0000c00000001140000000014g000000000700000000000000000000080000000000000000000160000040000300000000go000000000hw0000000000000000000000000000000200000000000000000000iw0000800000M0000000460000000004o00000000000g00000000000000000000400000000000000000004J00001M00000000000000000000000160000000000i000000000000000000000400000000000000000001gM000040000M0000000000000000000iE0000000001k000000000000000000000g0000000001000000000kM000030000000000000000000000004Lg000000001pw00000000000000000000400000000000000000005m00000M000000000000000000000001hq000000001cs00000000000000000000100000000000000000001nw00008000000000000000000000000pa000000000H8000000000200001y000020000000000o00000000"
    ARCH="$(uname -m)"
    
    printf '%s\n' "${!b64[@]}" | grep -qF "${ARCH}" && _timep_base64_to_file /dev/shm/.timep/timep.so <<<"${b64[${ARCH}]}"
    enable -f timep clock_gettime
}
enable | grep -qF 'enable clock_gettime' || _timep_SETUP
