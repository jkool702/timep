#!/usr/bin/env bash

shopt -s extglob

timep() {
    ## TIME Profile - timep efficiently produces an accurate per-command execution time profile for shell scripts and functions using DEBUG, EXIT and RETURN traps.
    # timep logs command times+metadata hierarchically based on both function and subshell nesting depth, recreating the complete call-stack tree in its logs.
    #
    # USAGE:            timep [-s|-f|-c] [-k] [--flame] [-o <type>] [--] _______            --OR--
    #           [...] | timep [-s|-f|-c] [-k] [--flame] [-o <type>] [--] _______ | [...]https://raw.githubusercontent.com/jkool702/timep/timep_testing5/TESTS/FORKRUN/flamegraph.svg
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

    local IFS IFS0 nn jj kk kk0 kk1 kkd a a0 b u logPathCur nCPU nWorker nWorkerMax REPLY timep_coprocSrc timep_DEBUG_FLAG timep_DEBUG_IDS_FLAG timep_DEBUG_TRAP_STR_0 timep_DEBUG_TRAP_STR_1 timep_deleteFlag timep_EXIT_TRAP_STR timep_fd_done timep_fd_lock timep_fd_logID timep_flameGraphFlag timep_flameGraphPath timep_LOG_NUM timep_noOutFlag timep_outType timep_PPID timep_PTY_FD_TEST timep_PTY_FLAG timep_PTY_PATH timep_RETURN_TRAP_STR timep_runCmd timep_runCmd1 timep_runCmdPath timep_runFuncSrc timep_wtimeALL timep_wTimeCur timep_runType timep_timeFlag timep_TITLE timep_TTY_NR timep_TTY_NR_TEST timep_CLOCK_GETTIME_FLAG
    local -gx timep_TMPDIR timep_FD0 timep_FD1 timep_FD2 fd_sleep timep_CPU_TIME_MULT timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX timep_WTIME_CORRECTION timep_CTIME_CORRECTION timep_WTIME_DONE
    local -a pAll_PID timep_outTypeA kkNeed kkNeed0
    local -agx timep_LOG_NAME timep_LOG_NESTING timep_LOG_NESTING_IND

    getCPUtime &>/dev/null || _timep_SETUP

    unset a
    getCPUtime a &>/dev/null || timep_CLOCK_GETTIME_FLAG=false
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
            -o|--output) shift 1; IFS0="${IFS@Q}"; IFS0="${IFS0/["'"\$]/IFS\=&}"; IFS=',' read -r -a timep_outTypeA <<<"${1}"; eval "${IFS0:-unset IFS}"; unset IFS0; (( ${#timep_outTypeA[@]} == 0 )) && timep_noOutFlag=true ;;
            -o=*|--output=*) IFS0="${IFS@Q}"; IFS0="${IFS0/["'"\$]/IFS\=&}"; IFS=',' read -r -a timep_outTypeA <<<"${1#*=}"; eval "${IFS0:-unset IFS}"; unset IFS0; (( ${#timep_outTypeA[@]} == 0 )) && timep_noOutFlag=true  ;;
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
        timep_END_CTIME_STR='getCPUtime timep_END_CTIME timep_END_CTIME_SELF'$'\n'
        timep_START_CTIME_STR='getCPUtime timep_START_CTIME timep_START_CTIME_SELF'$'\n'
    else
        timep_END_CTIME_STR+='read -r _ _ _ _ _ _ _ _ _ _ _ _ _ timep_END_UTIME timep_END_STIME timep_END_CUTIME timep_END_CSTIME _ </proc/${timep_BASHPID_PREV:-$BASHPID}/stat
        (( timep_END_CTIME = '"${timep_CPU_TIME_MULT}"' * ( timep_END_UTIME + timep_END_STIME + timep_END_CUTIME + timep_END_CSTIME ) ))
        (( timep_END_CTIME_SELF = '"${timep_CPU_TIME_MULT}"' * ( timep_END_UTIME + timep_END_STIME ) ))
        (( timep_END_CTIME <= ${timep_STARTTIME[${timep_FNEST_CUR}]#*$'"'"'\t'"'"'} )) && timep_END_CTIME=${timep_STARTTIME[${timep_FNEST_CUR}]#*$'"'"'\t'"'"'}'$'\n'
        timep_START_CTIME_STR+='read -r _ _ _ _ _ _ _ _ _ _ _ _ _ timep_START_UTIME timep_START_STIME timep_START_CUTIME timep_START_CSTIME _ </proc/${timep_BASHPID_PREV:-$BASHPID}/stat
        (( timep_START_CTIME = '"${timep_CPU_TIME_MULT}"' * ( timep_START_UTIME + timep_START_STIME + timep_START_CUTIME + timep_START_CSTIME ) ))
        (( timep_START_CTIME_SELF = '"${timep_CPU_TIME_MULT}"' * ( timep_START_UTIME + timep_START_STIME ) ))
        (( timep_START_CTIME <= ${timep_ENDTIME#*$'"'"'\t'"'"'} )) && timep_START_CTIME=${timep_ENDTIME#*$'"'"'\t'"'"'}'$'\n'
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
        if (( timep_START_CTIME_SELF_A[${timep_FNEST_CUR}] > timep_END_CTIME_SELF )); then
            timep_STARTTIME[${timep_FNEST_CUR}]="${timep_STARTTIME[${timep_FNEST_CUR}]%$'"'"'\t'"'"'*}"$'"'"'\t'"'"'"0"
        fi
        if [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]}" == '"'"'wait'"'"' ]] || [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]}" == '"'"'wait '"'"'* ]]; then
            (( timep_END_CTIME = ${timep_STARTTIME[${timep_FNEST_CUR}]#*$'"'"'\t'"'"'} + timep_END_CTIME_SELF - timep_START_CTIME_SELF_A[${timep_FNEST_CUR}] ))
        fi
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
        timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]="${timep_START_CTIME_SELF}"

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

    ${timep_CLOCK_GETTIME_FLAG} && { export -f _timep_SETUP; export -f _timep_file_to_base64; }
    chmod +x "${timep_TMPDIR}/functions.bash"
    timep_runFuncSrc+='(

        builtin trap - DEBUG EXIT RETURN

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_BASH_PATH timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0 timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_START_CTIME_SELF timep_END_CTIME_SELF timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0
        declare -a timep_BASH_COMMAND_PREV timep_FNEST timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_LINENO_OFFSET timep_LINENO_OFFSET_0 timep_LINENO_OFFSET_PREV timep_BASHPID_ADD timep_START_TIME timep_START_UTIME timep_START_STIME timep_START_CTIME_SELF_A

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
        getCPUtime tc0
        for (( kk=0; kk<$NN; kk++)); do
            :
        done
        tw1=$EPOCHREALTIME;
        getCPUtime tc1
        (( twSum = 10#0${tw1//[^0-9]/} - 10#0${tw0//[^0-9]/} ))
        (( tcSum = 10#0${tc1//[^0-9]/} - 10#0${tc0//[^0-9]/} ))
        printf '%s\n' "${twSum}" "${tcSum}")

        mapfile -t tSum1 < <(twSum=0; tcSum=0; kk=0
        trap 'nPipe=${#PIPESTATUS[@]};
        tw1=$EPOCHREALTIME;
        getCPUtime tc1
        (( kk == 0 )) || {
            (( twSum = ${twSum:-0} + 10#0${tw1//[^0-9]/} - 10#0${tw0//[^0-9]/} ));
            (( tcSum = ${tcSum:-0} + 10#0${tc1//[^0-9]/} - 10#0${tc0//[^0-9]/} ));
        }
        tw0=$EPOCHREALTIME
        getCPUtime tc0' DEBUG;
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
        (( tSum = 10#0${t1//[^0-9]/} - 10#0${t0//[^0-9]/} ))
        echo "$tSum")"

        tSum1="$(tSum=0; kk=0
        trap 'nPipe=${#PIPESTATUS[@]};
        t1=$EPOCHREALTIME;
        (( kk == 0 )) || (( tSum = ${tSum:-0} + 10#0${t1//[^0-9]/} - 10#0${t0//[^0-9]/} ));
        t0=$EPOCHREALTIME' DEBUG;
        for (( kk=0; kk<$N; kk++)); do
            :
        done
        echo "$tSum")"

        (( timep_WTIME_CORRECTION = ( tSum1 - tSum0 + N ) / NN ))
        timep_CTIME_CORRECTION=0

    fi

    (( timep_WTIME_CORRECTION = 10#0${timep_WTIME_CORRECTION} ))
    (( timep_CTIME_CORRECTION = 10#0${timep_CTIME_CORRECTION} ))

}
_timep_GET_RUNTIME_CORRECTION

_timep_EPOCHREALTIME_DIFF() {
    local tDiff d d6 a1 a2

    if (( ${#} >= 2 )) && [[ ${1//[^0-9]/} ]] && [[ ${2//[^0-9]/} ]]; then
        (( tDiff = 10#0${2//[^0-9]/} - 10#0${1//[^0-9]/} - timep_WTIME_CORRECTION ))
    elif (( ${#} == 1 )) && [[ "${1}" == *[0-9]*\ *[0-9]* ]]; then
        a1="${1% *}"
        a2="${1#* }"
        (( tDiff = 10#0${a2//[^0-9]/} - 10#0${a1//[^0-9]/} - timep_WTIME_CORRECTION ))
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
    printf '%s.%s' "${d:0:$d2}" "${d:$d2}"
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

    (( nWorkerDiff = nWorker - nWorker0 ))
    nWorker="${nWorker0}"
    nActive="${nActive0}"
    pAll_PID=("${pAll_PID0[@]}")
}

_timep_DEBUG_PRINTVARS() {

declare -p | grep -E '^declare -. ((logCur)|(log_tmp)|(kk)|(kk1)|(nn)|(r)|(wTimeTotal)|(cTimeTotal)|(inPipeFlag)|(lineno1)|(nPipe)|(startWTime)|(endWTime)|(startCTime)|(endCTime)|(wTime)|(cTime)|(wTimeP)|(wTime0)|(cTime0)|(cTimeP)|(func)|(pid)|(nexec)|(lineno)|(cmd)|(t0)|(t1)|(log_tmp)|(linenoUniq)|(merge_init_flag)|(log_dupe_flag)|(spacerN)|(lineU)|(logMergeAll)|(fg0)|(ns)|(nf)|()|(nPipeNextIgnoreFlag)|(IFS0)|(count0)|(nPipe0)|(cmd0)|(d6)|(logA)|(nPipeA)|(startWTimeA)|(endWTimeA)|(wTimeA)|(wTimePA)|(startCTimeA)|(endCTimeA)|(cTimeA)|(cTimePA)|(funcA)|(pidA)|(nexecA)|(linenoA)|(cmdA)|(mergeA)|(isPipeA)|(logMergeA)|(linenoUniqA)|(lineUA)|(timeUA)|(sA)|(fA)|(eA)|(fgA)|(normalCmdFlagA)|(linenoUniqLineA)|(linenoUniqCountA)|(linenoUniqWTimeA)|(linenoUniqWTimePA)|(linenoUniqCTimeA)|(linenoUniqCTimePA)|(IFS0)|(nn)|(jj)|(kk)|(kk0)|(kk1)|(kkd)|(a)|(a0)|(b)|(u)|(logPathCur)|(nCPU)|(nWorker)|(nWorkerMax)|(REPLY)|(timep_coprocSrc)|(timep_DEBUG_FLAG)|(timep_DEBUG_IDS_FLAG)|(timep_deleteFlag)|(timep_fd_done)|(timep_fd_lock)|(timep_fd_logID)|(timep_flameGraphFlag)|(timep_flameGraphPath)|(timep_LOG_NUM)|(timep_noOutFlag)|(timep_outType)|(timep_PPID)|(timep_PTY_FD_TEST)|(timep_PTY_FLAG)|(timep_PTY_PATH)|(timep_wtimeALL)|(timep_wTimeCur)|(timep_WTIME_DONE)|(timep_timeFlag)|(timep_TITLE)|(timep_CLOCK_GETTIME_FLAG)|(timep_WTIME_CORRECTION)|(timep_CTIME_CORRECTION)|(timep_TMPDIR)|(timep_FD0)|(timep_FD1)|(timep_FD2)|(timep_CPU_TIME_MULT)|(pAll_PID)|(timep_outTypeA)|(kkNeed)|(kkNeed0)|(timep_LOG_NAME)|(timep_LOG_NESTING)|(timep_LOG_NESTING_IND)|(LOG_NESTING_CUR)|(timep_LOG_NESTING_MAX)|(BASH_COMMAND)|(FUNCNAME)|(nRetry)|(nWorker)|(timep_)|(Time)|(.+A))=' | sed -E s/'^declare \-. '//

}

shopt -s extglob

_timep_PROCESS_LOG() {

    local logCur log_tmp kk kk1 lineno1 nn r inPipeFlag nPipe startWTime endWTime startCTime endCTime wTime cTime wTime0 cTime0  func pid nexec lineno cmd t0 t1 log_tmp linenoUniq log_dupe_flag spacerN lineU logMergeAll fg0 ns nf nPipeNextIgnoreFlag IFS IFS0 count0 count1 nPipe0 cmd0 d6 wTimeTotal cTimeTotal wTimeP0 cTimeP0 wTimeP cTimeP
    local -a logA nPipeA wTimePA cTimePA funcA pidA nexecA linenoA cmdA mergeA isPipeA logMergeA linenoUniqA lineUA timeUA sA fA eA fgA normalCmdFlagA wTimeCurA wTimeCurPA cTimeCurA cTimeCurPA startWTimeA endWTimeA startCTimeA endCTimeA wTimeA cTimeA
    local -A linenoUniqLineA linenoUniqCountA linenoUniqWTimeA linenoUniqWTimePA linenoUniqCTimeA linenoUniqCTimePA

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && {
        trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2' ERR #; _timep_DEBUG_PRINTVARS >&2' ERR
        set -xv
    }

    logCur="${1}"

    [[ -e "${logCur}" ]] || return 1

    inPipeFlag=false
    nPipeNextIgnoreFlag=false

    wTimeTotal=0
    cTimeTotal=0

    # load current log (sorted by NEXEC) into array
    mapfile -t logA < <(sort -V -k11,11 <"${logCur}")

    log_dupe_flag=false
    kk1=0
    (( ${#logA[@]} > 0 )) && for (( kk=1; kk<${#logA[@]}; kk++ )); do
        [[ "${logA[$kk1]}" == "${logA[$kk]}" ]] && {
            unset "logA[$kk1]"
            log_dupe_flag=true
        }
        kk1=${kk}
    done
    ${log_dupe_flag} && mapfile -t -d '' logA < <(printf '%s\0' "${logA[@]}" | sed -E s/'\0+'/'\0'/g)

    [[ -f "${logCur}.out" ]] && \rm -f "${logCur}.out"
    [[ -f "${logCur}.out.combined" ]] && \rm -f "${logCur}.out.combined"

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
        read -r -d '' cmd < <(eval "printf '%s\0' ${cmd}")
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
        if [[ "${cmdA[$kk]//"'"/}" == '<< ('*'): '*' >>' ]]; then
            normalCmdFlagA[$kk]=false

            # record which log to merge up and where
            mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecA[$kk]#* }"

            # read in the endtime + runtime from the log
            #[[ "${cmdA[$kk]//"'"/}" == '<< (BACKGROUND FORK): '*' >>' ]] || {
                if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"; then
                    IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"
                    [[ ${wTime//[^0-9]/} ]] && wTimeA[$kk]="${wTime}"
                    [[ ${cTime//[^0-9]/} ]] && cTimeA[$kk]="${cTime}"
                fi
            #}
        else
            normalCmdFlagA[$kk]=true
        fi

        # see if we need to merge up the endtime/runtime from the child log
        [[ "${endWTimeA[$kk]}" == '-' ]] && {
            if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]#* }"; then
                IFS=$'\t' read -r endWTime endCTime <"${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]#* }"
                [[ ${endWTime} ]] && ! [[ "${endWTime}" == '-' ]] && endWTimeA[$kk]="${endWTime}"
            fi
            (( startCTimeA[$kk] > 0 )) && [[ ${cTimeA[$kk]} ]] && (( cTimeA[$kk] > 0 )) && (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${cTimeA[$kk]//[^0-9]/} ))
        }

        # single-command command/process substitutions dont get a endtime logged (uses endWTime='+' as indicator), since they wont trigger a EXIT trap
        # figure out the most reasonable endtime for these lines by looking at starttimes for the parent, then grandparent, etc.
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
            (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/}  ))
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
        [[ -z ${wTimeA[$kk]//[^0-9]/} ]] && [[ ${endWTimeA[$kk]//[^0-9]/} ]] && [[ ${startWTimeA[$kk]//[^0-9]/} ]] && (( wTimeA[$kk] = 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} - timep_WTIME_CORRECTION ))

        [[ -z ${cTimeA[$kk]//[^0-9]/} ]] && [[ ${endCTimeA[$kk]//[^0-9]/} ]] && {
            if [[ ${startCTimeA[$kk]//[^0-9]/} ]] && (( 10#0${endCTimeA[$kk]//[^0-9]/} > 10#0${startCTimeA[$kk]//[^0-9]/} + ( timep_CTIME_CORRECTION << 1 ) )); then
                # normal case - use end - start - correction
                (( cTimeA[$kk] = 10#0${endCTimeA[$kk]//[^0-9]/} - 10#0${startCTimeA[$kk]//[^0-9]/} - timep_CTIME_CORRECTION ))
            elif [[ ${startCTimeA[$kk]//[^0-9]/} ]] && (( 10#0${endCTimeA[$kk]//[^0-9]/} >= 10#0${startCTimeA[$kk]//[^0-9]/} )); then
                # case where end - start is less than double the correction. Compromise and use (end - start)/2
                 (( cTimeA[$kk] = 1 + ( 10#0${endCTimeA[$kk]//[^0-9]/} - 10#0${startCTimeA[$kk]//[^0-9]/} ) >> 1 ))
           elif ${timep_CLOCK_GETTIME_FLAG}; then
               # if we are using getCPUtime and our end time is before the start time, then chances are getCPUtime is reading from a new clock even though there isnt a full subshell. This happens on things like arithmitic evaluations  `(( ... ))`
               # assume the start clock is 0 here, which makes the time equal to end - 0 - correction --> end - correction
                (( cTimeA[$kk] = 10#0${endCTimeA[$kk]//[^0-9]/} - timep_CTIME_CORRECTION ))
            fi
        }

        if (( 10#0${wTimeA[$kk]//[^0-9]/} >= 1 )); then
            (( wTimeTotal = wTimeTotal + wTimeA[$kk] ))
        else
             wTimeA[$kk]=1
        fi
        if (( 10#0${cTimeA[$kk]//[^0-9]/} >= 1 )); then
             (( cTimeTotal = cTimeTotal + cTimeA[$kk] ))
        else
            cTimeA[$kk]=1
        fi

        ${normalCmdFlagA[$kk]} && {
            [[ -z ${fg0} ]] && {
                # get base stack (showing all the parents) for this log
                fg0="$(IFS0="${IFS@Q}"
IFS0="${IFS0/["'"\$]/IFS\=&}"
IFS='.'
# get base stack for flamegraph
read -r -a fA <<<"${funcA[$kk]#* }"
read -r -a sA <<<"${pidA[$kk]#* }"
read -r -a eA <<<"${nexecA[$kk]#* }"
eval "${IFS0:-unset IFS}"
unset IFS0
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


    (( wTimeTotal = wTimeTotal >= 1 ? wTimeTotal : 1 ))
    (( cTimeTotal = cTimeTotal >= 1 ? cTimeTotal : 1 ))

    # write runtime and final endtime to .{end,run}time file
    printf '%s\t%s\n' "${endWTimeA[-1]}" "${endCTimeA[-1]}" >"${logCur%\/.log\/*}/.log/.endtimes/${logCur##*\/.log\/}"
    printf '%s\t%s\n' "${wTimeTotal}" "${cTimeTotal}" >"${logCur%\/.log\/*}/.log/.runtimes/${logCur##*\/.log\/}"

    # make LINENO's unique and compute runtime as % of total at this depth and get list of unique lineno's
    kk1=0
    lineno1=0
    for (( kk=0; kk<${#logA[@]}; kk++ )); do
        (( nPipeA[$kk] == 1 )) || continue
        if (( kk > 0 )) && (( linenoA[$kk] == ${linenoA[$kk1]%.*} )); then
            ((lineno1 = lineno1 + 1))
        else
            lineno1=0
        fi
        linenoA[$kk]="${linenoA[$kk]}.${lineno1}"

        (( wTimeP0 =  wTimeA[$kk] > 0 ? 10000 * wTimeA[$kk] / wTimeTotal : 0 ))
        printf -v wTimeP '%0.4d' "${wTimeP0}"
        case "${wTimeP}" in
            10000) wTimePA[$kk]=100.00 ;;
            0|'') wTimePA[$kk]=00.00 ;;
            *) wTimePA[$kk]="${wTimeP:0:2}.${wTimeP:2}" ;;
        esac

        (( cTimeP0 =  cTimeA[$kk] > 0 ? 10000 * cTimeA[$kk] / cTimeTotal : 0 ))
        printf -v cTimeP '%0.4d' "${cTimeP0}"
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
            (( linenoUniqCountA[${linenoA[$kk]}] = linenoUniqCountA[${linenoA[$kk]}] + 1 ))
            linenoUniqWTimeA[${linenoA[$kk]}]+=" ${wTimeA[$kk]}"
            linenoUniqCTimeA[${linenoA[$kk]}]+=" ${cTimeA[$kk]:-1}"
        else
            linenoUniqLineA[${linenoA[$kk]}]="$kk"
            linenoUniqCountA[${linenoA[$kk]}]=1
            linenoUniqWTimeA[${linenoA[$kk]}]="${wTimeA[$kk]}"
            linenoUniqCTimeA[${linenoA[$kk]}]="${cTimeA[$kk]:-1}"
        fi
        kk1=${kk}
    done

    # get runtime sums for the combined uniq lineno's
    for kk in "${!linenoUniqWTimeA[@]}"; do

        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]//[^0-9 ]/}"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]//[^0-9 ]/}"

        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]##*( )}"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]##*( )}"
        linenoUniqWTimeA[$kk]="${linenoUniqWTimeA[$kk]%%*( )}"
        linenoUniqCTimeA[$kk]="${linenoUniqCTimeA[$kk]%%*( )}"

        [[ ${linenoUniqWTimeA[$kk]} ]] && (( linenoUniqWTimeA[$kk] = ${linenoUniqWTimeA[$kk]// /\+} )) #|| linenoUniqWTimeA[$kk]=0
        [[ ${linenoUniqCTimeA[$kk]} ]] && (( linenoUniqCTimeA[$kk] = ${linenoUniqCTimeA[$kk]// /\+} )) #|| linenoUniqCTimeA[$kk]=0

        (( linenoUniqWTimePA[$kk] = 10#0${linenoUniqWTimeA[$kk]//[^0-9]/} > 0 ? 10000 * 10#0${linenoUniqWTimeA[$kk]//[^0-9]/} / wTimeTotal : 0 ))
        (( linenoUniqCTimePA[$kk] = 10#0${linenoUniqCTimeA[$kk]//[^0-9]/} > 0 ? 10000 * 10#0${linenoUniqCTimeA[$kk]//[^0-9]/} / cTimeTotal : 0 ))

    done

    read -r timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX <"${timep_TMPDIR}/.log/.log_nesting_cur_max"
    (( spacerN = 4 * ( 10#0${timep_LOG_NESTING_MAX:-0} - 10#0${timep_LOG_NESTING_CUR:-0} ) )) || spacerN=0

    # write out new merged-upward log
    inPipeFlag=false
    for kk in "${!logA[@]}"; do
        if ${inPipeFlag}; then
            # we are in a pipeline but not in the 1st element. dont add line to log
            (( isPipeA[$kk] == 1 )) && inPipeFlag=false
        else
            # add line to log
            (( kk == 0  )) || printf '\n\n'

            # convert microseconds to seconds
            printf -v wTime0 '%0.7d' "${wTimeA[$kk]}"
            (( d6 = ${#wTime0} - 6 ))
            printf -v wTime '%s.%s' "${wTime0:0:${d6}}" "${wTime0:${d6}}"
            printf -v cTime0 '%0.7d'  "${cTimeA[$kk]}"
            (( d6 = ${#cTime0} - 6 ))
            printf -v cTime '%s.%s' "${cTime0:0:${d6}}" "${cTime0:${d6}}"

            # write line
            printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%)\t(%ss|%s%%)\t%s\t{{ %s | %s | %s }}\twall:(%s->%s) cpu:(%s->%s)' "${linenoA[$kk]}" '' "${wTime}" "${wTimePA[$kk]}" "${cTime}" "${cTimePA[$kk]}" "${cmdA[$kk]}" "${funcA[$kk]}" "${pidA[$kk]}" "${nexecA[$kk]}" "${startWTimeA[$kk]}" "${endWTimeA[$kk]}" "${startCTimeA[$kk]}" "${endCTimeA[$kk]}"

            # check if this is the start of a pipeline
            [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
        fi
        (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

        # add merged up log to log, including for "in the middle of a pipeline" commands
        [[ ${mergeA[$kk]} ]] && [[ -e "${mergeA[$kk]}.out" ]] && {
            mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk]}.out")
            if (( ${#logMergeA[@]} == 0 )); then
                continue
            elif (( ${#logMergeA[@]} <= 2 )); then
                printf '\n|-- %s' "${logMergeA[@]}"
            elif (( ${#logMergeA[@]} > 2 )); then
                printf '\n|-- %s' "${logMergeA[0]}"
                printf '\n|   %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                printf '\n|-- %s' "${logMergeA[-1]}"
            fi
        }
        (( timep_LOG_NESTING_CUR == 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'

    done >"${logCur}.out"

    # write out new combined (uniq lineno) merged-upward log
    inPipeFlag=false
    for kk in "${!linenoUniqA[@]}"; do
        if ${inPipeFlag}; then
            # we are in a pipeline but not in the 1st element. dont add line to log
            { [[ -z ${isPipeA[$kk]} ]] || (( isPipeA[$kk] == 1 )); } && inPipeFlag=false
        else
            # add line to log
            (( kk == 0  )) || printf '\n\n'

            # write line
            logMergeAll=("$(printf '%s %s %s %s %s\t%s:%'"${spacerN}"'.s\t%s' "${linenoUniqWTimeA[${linenoUniqA[$kk]}]}" "${linenoUniqWTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCTimeA[${linenoUniqA[$kk]}]}" "${linenoUniqCTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCountA[${linenoUniqA[$kk]}]}" "${linenoUniqA[$kk]}" '' "${cmdA[$kk]/%: *([0-9\-]) >>/ >>}")")

            # check if this is the start of a pipeline
            [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
        fi
        # (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

        # add merged up log to log, including for "in the middle of a pipeline" commands
        for kk1 in ${linenoUniqLineA[${linenoUniqA[$kk]}]}; do
            [[ ${mergeA[$kk1]} ]] && [[ -e "${mergeA[$kk1]}.out.combined" ]] && logMergeAll+=("$(mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk1]}.out.combined")
                if (( ${#logMergeA[@]} == 0 )); then
                    continue
                else
                    printf '\n%s\t|-- %s' "${logMergeA[0]%%$'\t'*}" "${logMergeA[0]#*$'\t'}"
                    for (( jj =1; jj<${#logMergeA[@]}-1; jj++ )); do
                        printf '\n%s\t|   %s' "${logMergeA[$jj]%%$'\t'*}" "${logMergeA[$jj]#*$'\t'}"
                    done
                    (( ${#logMergeA[@]} > 1 )) && printf '\n%s\t|-- %s' "${logMergeA[-1]%%$'\t'*}" "${logMergeA[-1]#*$'\t'}"
                fi)")
        done

        printf '%s' "${logMergeAll[@]}"

        (( timep_LOG_NESTING_CUR <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'

    done >"${logCur}.out.combined"

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && _timep_DEBUG_PRINTVARS
    return 0
}

_timep_PROCESS_FLAMEGRAPH() {
## Emperically creates a non-linear colorspace mapping (using a screen-space-weighted  CDF) that
#      ensure that the colorspace is perceptually uniform and has equal spatial distribution.
#
# USAGE:   _timep_PROCESS_FLAMEGRAPH out.folded >out.folded.mod
#          _timep_PROCESS_FLAMEGRAPH <out.folded | timep_flamegraph.pl ( --time | --color=time[p[r]] )
#
# OUTPUT:  for each line in out.folded:
#    a;b;c;d; time [time2] --> a;b;c;d; time:ind [time2:ind2]
#
#    both "ind" and (if time2 is present) "ind2" are linear maps to the colorspce
#    that range between 0 and 2 * N (N = total number of samples / lines in out.folded)
#
#    this output style is designed to work with `flamegraph.pl --color=time[p[r]]`

    shopt -s extglob

    local wallTimeN cpuTimeN wallTimeCDF_csum cpuTimeCDF_csum kk kk0 a b c n cpuTimeFlag fdRead
    local -a stackA wallTimeA cpuTimeA wallTimeSortA cpuTimeSortA wallTimeCDF_map0 cpuTimeCDF_map0 wallTimeCDF_map cpuTimeCDF_map

    if [[ -e "$1" ]]; then
        exec {fdRead}<"${1}"
    elif ! [[ -t 0 ]]; then
        exec {fdRead}<&0
    else
        printf '\nERROR: nothing was passed on stdin and no file found at "%s"...ABORTING\n\n' "${1:-\<no input\>}"
        return 1
    fi

    # load stack traces into array with field seperators added
    mapfile -t stackA < <(sed -E 's/(.*)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)$/\1'$'\034''\2'$'\035''\3/; s/(.*)['$'\034''[:space:]]+([0-9]+)'$'\035''?$/\1'$'\034''\2'$'\035''/' <&${fdRead})
    exec {fdRead}>&-

    # seperate logs into stack / wall time / cpu time
    wallTimeA=("${stackA[@]##*$'\034'}")
    stackA=("${stackA[@]%$'\034'*}")
    cpuTimeA=("${wallTimeA[@]##*$'\035'}")
    wallTimeA=("${wallTimeA[@]%$'\035'*}")

    # check if we have cpu times too
    IFS0="${IFS@Q}"
    IFS0="${IFS0/["'"\$]/IFS\=&}"
    IFS=
    [[ "${cpuTimeA[*]}" ]] && cpuTimeFlag=true || cpuTimeFlag=false
    eval "${IFS0:-unset IFS}"
    unset IFS0

    # sort times then prepend line numbers to start
    mapfile -t wallTimeSortA < <(printf '%s\n' "${wallTimeA[@]}" | sort -n | grep -nE '' | sed -E s/'\:'/' '/)

    # get total count
    (( wallTimeN = ${#wallTimeSortA[@]} ))

    # get unique times and counts and populate inverse mapping arrays
    wallTimeCDF_map0=()
    wallTimeCDF_map=()

    # get map from time -> CDF index and then weight each CDF index by the total time shown at that index
    while read -r a b c; do
        { [[ $a ]] && [[ $b ]] && [[ $c ]]; } || continue
        (( n = ( ( b - 1 ) << 1 ) + a ))
        (( wallTimeCDF_map[$n] = ${wallTimeCDF_map[$n]:-0} + a * c ))
        wallTimeCDF_map0[$c]="$n"
    done < <(printf '%s\n' "${wallTimeSortA[@]}" | uniq -c -f1)

    # cummulative sum weighted CDF to get final "equal screen space" mapping
    kk0=-1
    for n in "${!wallTimeCDF_map[@]}"; do
        (( kk0 >= 0 )) && (( wallTimeCDF_map[$n] = wallTimeCDF_map[$n] + wallTimeCDF_map[$kk0] ))
        kk0=${n}
    done
    wallTimeCDF_csum="${wallTimeCDF_map[$n]}"

    # renormalize final mapping to range between 0 and (2 * numSamples)
    for n in "${!wallTimeCDF_map[@]}"; do
        (( wallTimeCDF_map[$n] = ( ( wallTimeN * wallTimeCDF_map[$n] ) << 1 ) / wallTimeCDF_csum ))
    done

    # if we alsio have cpu times, repeat the above steps to get a weighted CDF mapping for those too
    ${cpuTimeFlag} && {
        mapfile -t cpuTimeSortA < <( printf '%s\n' "${cpuTimeA[@]}" | sort -n | grep -nE '' | sed -E s/'\:'/' '/)

        (( cpuTimeN = ${#cpuTimeSortA[@]} ))

        cpuTimeCDF_map0=()
        cpuTimeCDF_map=()

         while read -r a b c; do
            { [[ $a ]] && [[ $b ]] && [[ $c ]]; } || continue
            (( n = ( ( b - 1 ) << 1 ) + a ))
            (( cpuTimeCDF_map[$n] = ${cpuTimeCDF_map[$n]:-0} + a * c ))
            cpuTimeCDF_map0[$c]="$n"
        done < <(printf '%s\n' "${cpuTimeSortA[@]}" | uniq -c -f1)

        kk0=-1
        for n in "${!cpuTimeCDF_map[@]}"; do
            (( kk0 >= 0 )) && (( cpuTimeCDF_map[$n] = cpuTimeCDF_map[$n] + cpuTimeCDF_map[$kk0] ))
            kk0=${n}
        done
        cpuTimeCDF_csum="${cpuTimeCDF_map[$n]}"

        for n in "${!cpuTimeCDF_map[@]}"; do
            (( cpuTimeCDF_map[$n] = ( ( cpuTimeN * cpuTimeCDF_map[$n] ) << 1 ) / cpuTimeCDF_csum ))
        done
    }

    # re-create log with time(s) mapped to weighted CDF index
    if ${cpuTimeFlag}; then
        for kk in "${!stackA[@]}"; do
            printf '%s\t%s:%s\t%s:%s\n' "${stackA[$kk]}" "${wallTimeA[$kk]}" "${wallTimeCDF_map[${wallTimeCDF_map0[${wallTimeA[$kk]}]}]}" "${cpuTimeA[$kk]}" "${cpuTimeCDF_map[${cpuTimeCDF_map0[${cpuTimeA[$kk]}]}]}"
        done
    else
        for kk in "${!stackA[@]}"; do
            printf '%s\t%s:%s\n' "${stackA[$kk]}" "${wallTimeA[$kk]}" "${wallTimeCDF_map[${wallTimeCDF_map0[${wallTimeA[$kk]}]}]}"
        done
    fi
}

# # # # # # # # # # # # # # # # POST PROCESSING BEGINS HERE # # # # # # # # # # # # # # # #

# # # # STEP 1: PROCESS LOGS, STARTING AT THE DEEPEST NESTING LVL AND MOVING UPWARDS
#       Logs for each nesting level are processed in parallel, but all logs from
#       a given nesting lvl must finish before moving on to the next nesting lvl

    # get log names
    mapfile -t timep_LOG_NAME < <(find "${timep_TMPDIR}"/.log -name 'log.*' | grep -vE '\.init_[csr]$' | sort -V)

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

    # use up to num_cpu / 2 + 1 workers
    nCPU="$( { type -p nproc &>/dev/null && nproc; } || grep -cE '^processor.*: ' /proc/cpuinfo; )"
    printf '\nDETECTED %s CPUs\n' "${nCPU}" >&2
    [[ $nCPU ]] || (( nCPU > 0 )) || nCPU=1
    (( nWorkerMax = ( 1 + nCPU ) >> 1 ))
    nWorkerMax0=${nWorkerMax}

    # open anonymous pipes for IPC
    exec {timep_fd_logID}<><(:)
    exec {timep_fd_done}<><(:)
    exec {timep_fd_lock}<><(:)

    # initialize read lock
    printf '\n' >&${timep_fd_lock}

    # create dir for worker status/state info
    mkdir -p "${timep_TMPDIR}/.worker"

    # NOTE: $timep_TMPDIR/.worker/<workerPID> contasins info on current workers state
    # if the file exists and is empty --> worker is running but not post-processing a log
    # if the file exists and is non empty then it contains the logID that the worker is currently post-processing
    # running `_timep_NUM_RUNNING` will clean up this dir and remove stale entries (e.g., from workers who were killed midway through post-processing a log)

    # define the code that the worker coprocs will run. basically, each worker will:
    #      reads log indicies from the timep_fd_logID pipe in an infinite loop,
    #      process the log corresponding to that ID using _timep_PROCESS_LOG
    #      writes the log ID on success (-logID on failure) to timep_fd_done when finished
    #      break out of loop and exit is logID is empty
    #      create "${timep_TMPDIR}/.worker/${BASHPID}" when spawned
    #      write the logID to "${timep_TMPDIR}/.worker/${BASHPID}" when processing a log starts, and clear it when done
    #      if logID begins with a : strip off the : and enable debug output

    timep_coprocSrc='declare logID

shopt -s extglob
: >"${timep_TMPDIR}/.worker/${BASHPID}"
while true; do
    read -r -u "${timep_fd_lock}" _
    read -r -u "${timep_fd_logID}" logID
    printf '"'"'\n'"'"' >&${timep_fd_lock}
    [[ ${logID} ]] || break
    if [[ "${logID}" == \:* ]]; then
        logID="${logID#\:}"
        debugFlag=true
    else
        debugFlag=false
    fi
    printf '"'"'%s\n'"'"' "${logID}" >"${timep_TMPDIR}/.worker/${BASHPID}"
    if "${debugFlag}"; then
        timep_POSTPROC_DEBUG_FLAG=true _timep_PROCESS_LOG "${timep_LOG_NAME[$logID]}" 2>&${timep_FD2}
    else
        _timep_PROCESS_LOG "${timep_LOG_NAME[$logID]}" 2>&${timep_FD2}
    fi
    if (( $? == 0 )); then
        printf '"'"'%s\n'"'"' "${logID}" >&${timep_fd_done}
    else
        printf '"'"'-%s\n'"'"' "${logID}" >&${timep_fd_done}
    fi
    : >"${timep_TMPDIR}/.worker/${BASHPID}"
done
\rm -f "${timep_TMPDIR}/.worker/${BASHPID}"'

    # loop through logs from deepest nested upwards and run each through post processing function
    printf '\n\n' >&2

    # export helper functions
    export -f _timep_EPOCHREALTIME_DIFF
    export -f _timep_EPOCHREALTIME_SUM
    export -f _timep_PERCENT_AVG
    export -f _timep_FILE_EXISTS
    export -f _timep_NUM_RUNNING
    export -f _timep_PROCESS_LOG
    export -f _timep_DEBUG_PRINTVARS

    # initialize variables
    timep_LOG_NUM="${#timep_LOG_NAME[@]}"
    (( kk = timep_LOG_NUM - 1 ))
    jj=0
    nWorker=1
    kkNeed=( $(eval "printf '%s ' {0..${kk}}") )
    nRetryMax0=20
    nFailedMax0=30
    nActive=0

    # set traps to kill workers on SIGINT / EXIT
    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"' EXIT
    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"; trap - SIGINT; kill -INT ${BASHPID}' INT

    # spawn coproc worker p0
    eval '{ coproc p0 {
    '"${timep_coprocSrc}"'
  } 2>&${timep_FD2}
} 2>/dev/null'
    pAll_PID=("${p0_PID}")
    export timep_LOG_NESTING_MAX="${timep_LOG_NESTING_MAX}"

    # BEGIN LOOP OVER NESTING LVL (DEEPEST TO SHALLOWEST)

    for (( timep_LOG_NESTING_CUR=${#timep_LOG_NESTING_IND[@]}-1; timep_LOG_NESTING_CUR>=0; timep_LOG_NESTING_CUR-- )); do
        export timep_LOG_NESTING_CUR="${timep_LOG_NESTING_CUR}"

        # get lowest log index for this nesting lvl
        kkMin="${timep_LOG_NESTING_IND[${timep_LOG_NESTING_CUR}]}"
        printf '%s %s\n' "${timep_LOG_NESTING_CUR}" "${timep_LOG_NESTING_MAX}" >"${timep_TMPDIR}/.log/.log_nesting_cur_max"

        (( kkDiff = kk - kkMin + 1 ))

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

            # re-initialize variables that keep track of failures
            nFailed=0
            nRetry=0
            nRetryMax=${nRetryMax0}
            nFailedMax=${nFailedMax0}
            nWorkerMax=${nWorkerMax0}
            kkd=''

            while (( kk >= kkMin )); do
                if read -r -t 0.1 -u "${timep_fd_done}" doneInd ; then
                # we read something!
                    if [[ "${doneInd}" == \-* ]]; then
                        # we read a negative index --> a log failed but didnt kill the coproc and the coproc already re-submitted the job to the workqueue
                        # perhaps in the future there will be a "nFailedMax" to break out of failing to process some log in an infinite loop.
                        ((nFailed++))
                        doneInd="${doneInd#\-}"
                        if (( nFailed > nFailedMax )); then
                            printf '\nERROR: post-processing failed too many times on logs from current nesting lvl.\nABORTING TO PREVENT GETTING STUCK IN AN INFINITE RETRY LOOP.\n' >&2
                            _timep_DEBUG_PRINTVARS
                            return 2
                        else
                            printf '\nWARNING: log # %s (%s) failed to process correctly. timep will attempt to process this log again. (used %s / %s retries)\n' "${doneInd}" "${timep_LOG_NAME[$doneInd]}" "${nFailed}" "${nFailedMax}" >&2
                            (( nFailed == nFailedMax )) && kkd=':'
                            printf '%s%s\n' "${kkd}" "${doneInd}" >&${timep_fd_logID}
                        fi
                    elif  [[ ${kkNeed[$doneInd]} ]]; then
                        # we read an index --> that log has finished processing. increment counters and status
                        ((kk--))
                        ((jj++))
                        unset "kkNeed[$doneInd]"
                        printf '\rFINISHED PROCESSING TIMEP LOG #%s of %s' "${jj}" "${timep_LOG_NUM}" >&2
                        (( nWorkerMax < nWorkerMax0 )) && ((nWorkerMax++))
                    fi
                elif (( nRetry <= nRetryMax )); then
                    # we didnt read anything from the doneInd pipe, but we arent at the retry limit yet
                    # figure out if we had a worker die and we need to re-send some log indicies

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
                        (( nRetry >= nRetryMax )) && kkd=':'
                        # re-send unfinished indicies
                        {
                            for kk1 in "${kkNeed0[@]}"; do
                                [[ -f "${timep_LOG_NAME[$kk1]}.out" ]] || [[ -f "${timep_LOG_NAME[$kk1]}.out.combined" ]] && \rm -f "${timep_LOG_NAME[$kk1]}.out"*
                                printf '%s%s\n' "${kkd}" "${kk1}" >&${timep_fd_logID}
                            done
                        } &
                        # if we hit this code branch it means a worker died midway through processing --> it may have been killed by the OOM killer --> we may have too many worker coprocs --> lets lower the max limit a bit.
                        (( nWorkerMax = 1 + ( ( 3 * nWorkerMax ) >> 2 ) ))

                        printf '\nWARNING: %s log(s) failed to process correctly and killed the worker that was running them. timep will attempt to process these logs again. (used %s / %s respawn retries)\n' "${#kkNeed0}" "${nRetry}" "${nRetryMax}" >&2
            }

                    # if needed, re-spawn dead workers, upo to the max number of the number of remaining logs at current nesting lvl
                    until (( nWorker >= nWorkerMax)) || (( nWorker >= ${#kkNeed0[@]} )); do
                        eval '{ coproc p'"${nWorker}"' {
    '"${timep_coprocSrc}"'
  } 2>&${timep_FD2}
} 2>/dev/null
pAll_PID+=("${p'"${nWorker}"'_PID}")'
                        ((nWorker++))

                    done

                else
                    # limit if number of failed log processings hit. if this round fails abort.
                    # re-send indicies with : to enable debug output
                    kkNeed0=("${kkNeed[@]:${kkMin}}")
                    _timep_NUM_RUNNING "${pAll_PID[@]}"

                    { (( nWorker == 0 )) || { (( nWorker > 0 )) && (( nActive == 0 )); }; } && {
                        # abort to avoid deadlock. print list of which logs are currently failing to process
                        printf '\n\nERROR: could not process the following logs:\n' >&2
                        for kkErr in "${kkNeed[@]:$kkMin}"; do
                            printf '%s: %s\n' "$kkErr" "${timep_LOG_NAME[$kkErr]}" >&2
                        done
                        printf '\nABORTING!' >&2
                        _timep_DEBUG_PRINTVARS
                        return 3
                    }
                fi
            done

        read -r -u "${fd_sleep}" -t 0.1 _ || :
    done

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # kill remaining workers
    while (( nWorker > 0 )); do
        printf '\n' >&${timep_fd_logID}
        ((nWorker--))
    done

    wait "${pAll_PID[@]}" &>/dev/null

    # unset traps
    trap - EXIT INT

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # close anonymous IPC pipes
    exec {timep_fd_logID}>&-
    exec {timep_fd_done}>&-
    exec {timep_fd_lock}>&-

    read -r -u "${fd_sleep}" -t 0.01 _ || :
    #trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2; _timep_DEBUG_PRINTVARS >&2' ERR


    printf '\n\nFINALIZING OUTPUTS\n' >&2
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}.out"
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}.out.combined"

    for nn in "${timep_TMPDIR}"/.log/.runtimes/log.*; do
        read -r timep_wTimeCur timep_cTimeCur <"${nn}"

        printf -v timep_wTimeCur '%0.7d' "${timep_wTimeCur}"
        (( d6 = ${#timep_wTimeCur} - 6 ))
        printf -v timep_wTimeCur '%s.%s' "${timep_wTimeCur:0:${d6}}" "${timep_wTimeCur:${d6}}"

        printf -v timep_cTimeCur '%0.7d' "${timep_cTimeCur}"
        (( d6 = ${#timep_cTimeCur} - 6 ))
        printf -v timep_cTimeCur '%s.%s' "${timep_cTimeCur:0:${d6}}" "${timep_cTimeCur:${d6}}"

        printf '\n\nTOTAL RUN TIME: %ss\nTOTAL CPU TIME: %ss\n' "${timep_wTimeCur}" "${timep_cTimeCur}" >>"${nn//\/.log\/.runtimes\//\/.log\/}.out"
        printf '\n\nTOTAL RUN TIME: %ss\nTOTAL CPU TIME: %ss\n' "${timep_wTimeCur}" "${timep_cTimeCur}" >>"${nn//\/.log\/.runtimes\//\/.log\/}.out.combined"
    done

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # reverse flamegraph input so it starts at the parent and ends at the depest child
    echo "$(grep -n '' <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^([0-9]+)\:/\1 /' | sort -nr -k1,1 | sed -E 's/^[0-9]+ //')" >"${timep_TMPDIR}/.log/out.flamegraph.full"

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # fold flamegrapoh stack traces
    sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/\1/' <"${timep_TMPDIR}/.log/out.flamegraph.full" | sort -u | while read -r u; do (( tw = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\2/' | sed -zE 's/\n//g') )); (( tc = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\3/' | sed -zE 's/\n//g') )); printf '%s\t%s\t%s\n' "${u}" "${tw}" "${tc}"; done >"${timep_TMPDIR}/.log/out.flamegraph"

    # copy final outputs to profiles dir

    timep_LOG_NESTING[0]="${timep_LOG_NESTING[0]%$'\n'}"

    # for flamegraph.pl inputs - convert times to screen-size-normalized CDF index (to maximize colorspace usage)
    for fgCur in "${timep_TMPDIR}/.log/out.flamegraph.full" "${timep_TMPDIR}/.log/out.flamegraph"; do
        _timep_PROCESS_FLAMEGRAPH "${fgCur}" >"${timep_TMPDIR}/profiles/${fgCur##*\/}"
    done

    # copy out.profiles, removing unneeded extra bit on last line of profile (but before the "TOTAL RUNTIME" line
    sed -zE 's/\n\|   ([^\n]+)\n\|(\n\n+TOTAL RUN TIME)/\n\|-- \1\2/' <"${timep_LOG_NESTING[0]}.out" >"${timep_TMPDIR}/profiles/out.profile.full"
    if [[ "${timep_runType}" == 'f' ]]; then
        echo "$(sed -E 's/^(\|   [0-9])/|\n\1'/ <"${timep_LOG_NESTING[0]}.out.combined" | sed -zE 's/\n\|   ([^\n]+)\n\|(\n\n+TOTAL RUN TIME)/\n\|-- \1\2/')" >"${timep_LOG_NESTING[0]}.out.combined"
    fi

    # get total runtime
    read -r timep_wtimeALL timep_ctimeALL <"${timep_TMPDIR}/.log/.runtimes/${timep_LOG_NESTING[0]##*/}"
    ((timep_wtimeALL = 10#0${timep_wtimeALL//[^0-9]/}))
    ((timep_ctimeALL = 10#0${timep_ctimeALL//[^0-9]/}))

    # combine lines/times/percentages for main (combined) profile
    mapfile -t -d '' A < <(sed -zE 's/\n\n+TOTAL RUN TIME.*$//; s/\n\n/\x00/g' <"${timep_LOG_NESTING[0]}.out.combined")
    A_end="$(sed -zE 's/^.*(\n\n+TOTAL RUN TIME)/\1/' <"${timep_LOG_NESTING[0]}.out.combined")"
    unset "AA"
    {
        for kk in "${!A[@]}"; do
            # each element of A is one top-level sub-tree
            # L will contain unique lines (minus times) from ${A[$kk]}
            # each T[$jj] will contain all times/percentages/counts from all the different lines represented by the unique line in L[$jj] iun a newline-seperated list
            # AA is an associative array that determines/maps the unique lines to the index $jj
            T=();
            L=();
            I=();
            declare -A AA;
            mapfile -t A0 <<<"${A[$kk]}"
            for jj in "${!A0[@]}"; do
                t="${A0[$jj]%%$'\t'*}"
                l="${A0[$jj]#*$'\t'}"
                if [[ -z ${AA[${l@Q}]} ]]; then
                    AA[${l@Q}]=$jj;
                    L[$jj]="${l}";
                fi
                T[${AA[${l@Q}]}]+="${t}"$'\n';
            done
            unset "AA"

            # loop over each T and sum times/counts and average percentages
            for jj in "${!T[@]}"; do
                jj0=0;
                tA=(0 0 0 0 0);
                while read -r -a tA0; do
                    for jj1 in {0..4}; do
                        (( tA[$jj1] = tA[$jj1] + tA0[$jj1] ));
                    done;
                    ((jj0++));
                done  <<<"${T[$jj]}"
                (( tA[1] = tA[1] / jj0 ));
                (( tA[3] = tA[3] / jj0 ));

                # convert integer times (microseconds) and percents (# per 10000) into decimal values (seconds, %)
                printf -v wTime0 '%0.7d' "${tA[0]}"
                (( d6 = ${#wTime0} - 6 ))
                printf -v wTime '%s.%s' "${wTime0:0:${d6}}" "${wTime0:${d6}}"

                printf -v cTime0 '%0.7d' "${tA[2]}"
                (( d6 = ${#cTime0} - 6 ))
                printf -v cTime '%s.%s' "${cTime0:0:${d6}}" "${cTime0:${d6}}"

                printf -v wTimeP '%0.4d' "${tA[1]}"
                case "${wTimeP}" in
                    10000) wTimeP=100.00 ;;
                    0|'') wTimeP=00.00 ;;
                    *) wTimeP="${wTimeP:0:2}.${wTimeP:2}" ;;
                esac

                printf -v cTimeP '%0.4d' "${tA[3]}"
                case "${cTimeP}" in
                    10000) cTimeP=100.00 ;;
                    0|'') cTimeP=00.00 ;;
                    *) cTimeP="${cTimeP:0:2}.${cTimeP:2}" ;;
                esac

                count="${tA[4]}"

                # write out final profile line
                printf '%s:\t(%ss|%s%%)\t(%ss|%s%%)\t(%sx)\t%s\n' "${L[$jj]%%\:*}" "${wTime}" "${wTimeP}" "${cTime}" "${cTimeP}" "${count}" "${L[$jj]#*\:}";

            done
            printf '\n'
        done

        echo "${A_end}"
    } >"${timep_TMPDIR}/profiles/out.profile"

    # remove some (all?) of the spurious '(&)' marks caused by process substitutions
    grep -E '\(\^\)$' "${timep_TMPDIR}/profiles/out.profile" | sed -E 's/\:.*$//;s/^.* //' | {
        P="$(<"${timep_TMPDIR}/profiles/out.profile")";
        PF="$(<"${timep_TMPDIR}/profiles/out.profile.full")";

        while read -r nn; do
            P="$(sed -E 's/^('"${nn//./\\.}"'.*) \(\&\)$/\1/' <<<"$P")";
            PF="$(sed -E 's/^('"${nn//./\\.}"'.*) \(\&\)\t/\1\t/' <<<"$PF")";
        done;

        sed -E 's/ \(\^\)$//'  <<<"$P" >"${timep_TMPDIR}/profiles/out.profile";
        sed -E 's/ \(\^\)\t/\t/'  <<<"$PF" >"${timep_TMPDIR}/profiles/out.profile.full";
    }

    # add another percentage showing "percent of total runtime" to final outputs
    for logPathCur in "${timep_TMPDIR}/profiles/out.profile" "${timep_TMPDIR}/profiles/out.profile.full"; do

        # split lines into start, time, percent, end
        echo "$(sed -E 's/^([^\(]+)\(([0-9\.]+)s\|([0-9\.]+)\%\)([[:space:]]+)\(([0-9\.]+)s\|([0-9\.]+)\%\)(.+)$/\1'$'\034''\2'$'\034''\3'$'\034''\4'$'\034''\5'$'\034''\6'$'\034''\7/' <"${logPathCur}" | while read -r lineOrig; do
        IFS=$'\034' read -r a0 tw pw s tc pc a1 <<<"${lineOrig}"

                { [[ $tw ]] && [[ $pw ]] && [[ $tc ]] && [[ $pc ]] && [[ $a1 ]]; } || {
                    # this is a blank/seperator line. re-print it unmodified
                    printf '%s\n' "${lineOrig}"
                    continue
                }

                # get percent of total runtime
                ((p1w = (10000 * 10#0${tw//[^0-9]/}) / timep_wtimeALL))
                printf -v p1w '%0.4d' "${p1w//[^0-9]/}"
                if ((10#0${p1w} == 10000)); then
                    p1w="100.00"
                else
                    p1w="${p1w:0:2}.${p1w:2}"
                fi

                # get percent of total cpu time
                ((p1c = (10000 * 10#0${tc//[^0-9]/}) / timep_ctimeALL))
                printf -v p1c '%0.4d' "${p1c//[^0-9]/}"
                if ((10#0${p1c} == 10000)); then
                    p1c="100.00"
                else
                    p1c="${p1c:0:2}.${p1c:2}"
                fi

                a00="${a0%%[0-9\.]*}";

                # if percents are equal (i.e., it is a top-level log line) reprint unmodified. Otherwise add in new "percent of total" field.
                if [[ "${pw}" == "${p1w}" ]] && [[ "${pc}" == "${p1c}" ]] && { { [[ "${timep_runType}" == 'f' ]] && (( "${#a00}" <= 5 )); } || (( "${#a00}" <= 1 )); }; then
                    printf '%s(%ss|%s%%)%s(%ss|%s%%)%s\n' "${a0}" "${tw}" "${pw}" "${s}" "${tc}" "${pc}" "${a1}"
                else
                    printf '%s(%ss|%s%%|%s%%)%s(%ss|%s%%|%s%%)%s\n' "${a0}" "${tw}" "${pw}" "${p1w}" "${s}" "${tc}" "${pc}" "${p1c}" "${a1}"
                fi
            done)" >"${logPathCur}"
    done

    # if '--flame' flag given create flamegraphs
    ${timep_flameGraphFlag} && {
        printf '\nGENERATING FLAMEGRAPHS\n' >&2

        if type -p "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" &>/dev/null; then
            timep_flameGraphPath="/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
        else
            _timep_SETUP
        fi

        [[ ${timep_flameGraphPath} ]] && {
            chmod +x "${timep_flameGraphPath}"

            case "${timep_runType}" in
                f) timep_TITLE="${timep_funcName}" ;;
                s) timep_TITLE="${timep_runCmdPath}" ;;
                c) timep_TITLE='Various Commands' ;;
            esac

            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE} (FULL)" --width 4096 --height 24 --flamechart --countname "us" --fontsize 10 --color timep <"${timep_TMPDIR}/profiles/out.flamegraph.full" >"${timep_TMPDIR}/profiles/flamegraph.full.svg"
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --countname "us" --fontsize 10  --color timep <"${timep_TMPDIR}/profiles/out.flamegraph" >"${timep_TMPDIR}/profiles/flamegraph.svg"
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


_timep_SETUP() {
    local -A b64
    local -a timep_flameGraphPathA
    local ARCH t tt k kk

    [[ "${FUNCNAME[1]}" == 'timep' ]] || local timep_flameGraphPath

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

    mkdir --mode=777 -p "/dev/shm/.timep"
    mkdir --mode=777 -p "/dev/shm/.timep/lib"
    mkdir --mode 755 -p "/dev/shm/.timep/lib/${USER}-${EUID}"

    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH//\:\/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/):/:}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH#/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/)?(:)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH%?(\:)/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}${BASH_LOADABLES_PATH:+:}/dev/shm/.timep/lib/${USER}-${EUID}"
    export BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}"

    PATH="${PATH//\:\/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/):/:}"
    PATH="${PATH#/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/)?(:)}"
    PATH="${PATH%?(\:)/dev\/shm\/.timep\/lib\/${USER}-${EUID}?(\/)}"
    PATH="${PATH}${PATH:+:}/dev/shm/.timep/lib/${USER}-${EUID}"
    export PATH="${PATH}"

    if PATH="${PATH}:${PWD}" type -p -a timep_flamegraph.pl &>/dev/null; then
        mapfile -t timep_flameGraphPathA < <(PATH="${PATH}:${PWD}" type -p -a timep_flamegraph.pl)
        mapfile -t timep_flameGraphPathA < <(printf '%s\n' "${timep_flameGraphPathA}" | grep -F '/dev/shm/.timep/lib/'"${USER}-${EUID}"; printf '%s\n' "${timep_flameGraphPathA}" | grep -vF '/dev/shm/.timep/lib/'"${USER}-${EUID}")
        if (( ${#timep_flameGraphPathA[@]} > 1 )) && type -p date &>/dev/null; then
            t=$(date -r "${timep_flameGraphPathA[0]}" '+%s')
            k=0
            for (( kk=1; kk<${#timep_flameGraphPathA[@]}; kk++ )); do
                tt=$(date -r "${timep_flameGraphPathA[$kk]}" '+%s')
                (( tt > t )) && k=$kk
            done
            timep_flameGraphPath="${timep_flameGraphPathA[$k]}"
        elif (( ${#timep_flameGraphPathA[@]} > 0 )); then
            timep_flameGraphPath="${timep_flameGraphPathA[0]}"
        fi
        [[ "${timep_flameGraphPath}" ]] && chmod +x "${timep_flameGraphPath}"
        [[ "${timep_flameGraphPath}" == "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" ]] || {
            \cp -f "${timep_flameGraphPath}" "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
            chmod +x "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
        }
    else
        timep_git_branch='timep_testing'
        type -p wget &>/dev/null && wget https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/timep_flamegraph.pl -O "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" &>/dev/null
        type -p timep_flamegraph.pl &>/dev/null || {
            type -p curl &>/dev/null && curl https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/timep_flamegraph.pl >"/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" 2>/dev/null
        }
        timep_flameGraphPath="/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
        chmod +x "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
    fi

    if type -p "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" &>/dev/null; then
        timep_flameGraphPath="/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
    elif type -p timep_flamegraph.pl &>/dev/null; then
        timep_flameGraphPath="$(type -p timep_flamegraph.pl)"
    fi

    # note: this base64 binary blob is generatred by using _timep_base64_to_file  on the arch-specific coimpiled shared .so file for the builtin.
    # passing this blob to the stdin of _timep_base64_to_file <path> will restore the original .so file (needed for the loadable builtin to get cpu time with getCPUtime) at <path>.
    # the .so file, source code and compile instructions are all available in the "timep" repo on github (https://github.com/jkool702/timep) at LOADABLES/SRC/timep.c.
    # The compiled .so file that this binary blob re-creates is avaiilable in the repo at LOADABLES/BIN/$ARCH/timep.so

    b64[x86_64]="vQlchw810g000000000000c0fw0100000000000000100000000001wD0000000000000400e00b04008w0v00o000040000g0000000001000000000040000000000q0800000001E0w00000000w000000000100000g0002E0w0000000aw200000000G0800000001k0000000005g000000000200000000001000010000000000000000000000000000000000007wc00000000u0M00000000040000000004000050000u0M00000001U7000000007ws00000000B0g00000002k10000000000g000000000g0000o0000g4g000000010N000000004340000000080w0000000f0e0000000001000000000100001w00020j0000000084c00000000wgM00000000w1000000002g40000000004000000000800006000061400000000ocg00000001wN00000000M040000000300g00000000w000000000kelQp0g0000Y2w00000003Ma00000000f0E00000000A0000000002g00000000010000000001jVnhA10000aw200000000G0800000002E0w000000030000000000c0000000000800000000057Bt6g600000000000000000000000000000000000000000000000000000000004000000000kKlQp0g0000g4g000000010N000000004340000000080w0000000f0e000000000g00000000040000800000k00017jBk00g01M0g000010000000000800s0400000g00000000040000500000c00017jBk0BKei85SUoe3VR5JynbhbvX0oYHs000000g000140000100006w0000000201100g4g000a0QqnmHwUPN00000000000000000000000000000000000000I0000w00000000000000000000000001E0000w00000000000000000000000003o0000w0000000000000000000000000500000g00000000000000000000000005U0000g00000000000000000000000006M0000g00000000000000000000000007U0000g00000000000000000000000008g0000g0000000000000000000000000900000i00000000000000000000000009A0000i0000000000000000000000000as0000i0000000000000000000000000b40000y0000000000000000000000000c00000i0000000000000000000000000cA0000i0000000000000000000000000d00000i0000000000000000000000000ds0000i0000000000000000000000000ew0000h01A0w4c00000000M000000000fE0000i0180Y2000000000s00000000001Iqm9zbDdLbzo0nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO06RxqSlvoDlFr7hFrBZxsCtS07xCsClB065Ap5ZytmBIt6BK07dKs79FrDhC06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvoTxxnSpFrC5IqnFB07dQsClOsCZO071OqmVQpw1Pt79zrn00nRZBsD9KrRZIrSdxt6BLrw1Dpnh3k5lQqmRBnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM04tcik93nP8KcyUR04tcik93nP8Kcjs000000g0100400g0100400g0100800M0200800w0200800w0100400g020040000g0000000007kqqgA000803w400100002nApo6000301E1000000000000010N0000000020000000000gcg0000000dwO0000000020000000000g7w0000000e0O0000000020000000001g7w0000000213000000002000000000272w00000002x30000000020000000001g300000000313000000002000000000272w00000003x30000000020000000001M2M00000004130000000020000000003g2w00000004x3000000002000000000272w00000005130000000020000000003o2M00000005x30000000020000000000o2M0000000613000000002000000000272w00000008130000000020000000001Y2w00000008x3000000002000000000208000000009x30000000020000000000wgM0000000a130000000020000000002U2M0000000f0O000000001w0000400000000000000fwO000000001w000080000000000000000P000000001w0000c0000000000000010P000000001w0000M000000000000000wP000000001w0001400000000000000cx3000000001M0000g00000000000000d13000000001M0000k00000000000000dx3000000001M0000o00000000000000e13000000001M0000s00000000000000ex3000000001M0000w00000000000000f13000000001M0000A00000000000000fx3000000001M0000E00000000000000014000000001M0000I000000000000000x4000000001M0000Q00000000000000114000000001M0000U000000000000001x4000000001M0000Y00000000000000214000000001M00010000000000000001g0000000000nFi005U404r30s8A04004M0000s0000K1g001Y20000gwUgzM923xye0Q8e88Q4gwUEz0l13z261A4ee8c7hMXg0wcN0gEee4gec44ea48e848e648e448e244b0000a00006M000285w00q00000113x260A4e68c3h0UMvgEe64ce444e24Ab000o0000C0000cMm000s000004ge45se200000000000004r0PJ8____0M0002gk001A____h1o00bj___@Q5w00Uf___ThFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M1Dpnh3k5lQqmRB001DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc09mNIp0E09mNIp000pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP001xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK000000000019py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK00000000kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U0000006tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc000000000001lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng00YMYu@Ay3X0x8wYg8MM000fcf7LF8w@M8i8I5mho004y5M7g2_Z18wYg8MM00000000000000003P3NXWglf_dvMC003_9vUC003cPcPcPcPcPcPcPcPcP46X00000fYBX2o00cPcPcN1KM40003_9ugC003cPcPcgrI20000_Ons9w00PcPcP46X0M000fYBR2o00cPcPcN1KMg0003_9sMC003cPcPcgrI50000_On49w00PcPcP46X1w000fYBL2o00cPcPcN1KMs0003_9rgC003cPcPcgrI80000_OmI9w00PcPcP46X2g000fYBF2o00cPcPcN1KME0003_9pMC003cPcPcgrIb0000_Omk9w00PcPcPfYBuxk00cPc000000000018zjS19w00i8Q5uyo004wV@7gli8I5fxk004y5M7g9_@0f7U000000MMYvw0000018zjRh9w00i8QRiyo004wF_Ay9Y4z1XzZ8Mvw3i076id7@t1h8yMk55g00i8n0t0z_U6of7Qg00ccf7U000000YMYu@E0Z3io0001RaRl8wPTG500004y9Vngci8QZTx800exp____W6j____61ukB0001nscf7M333N@000000fcf7LHFt____YPcPcPcPcN1lQ5mgll1l5lji87I604008f_0M@fxw4008f_0nUFi8JK2370w7Q004wfhex5cui3_MdR64Obpx11w3MA04Mfhe3H2gYvg00NXkkNV4Odr2h0LM80001cyuXEsvX__Un03UnF0000i8Jc94xczrgAw00004yUP_tjUWmrN218qlMAg4123M18Z@B8MvA_ic7W1QwFOAw1QQO9ZH______W3L@__Z1ysq5M0@5c04004xFx2ig0000g48f04xFz2i00000g48f04w3z2i80000i071i0ec99w000180tB8xuQfxdA0001czglsW___LA000018yusNM4O9MKz0_v__ct98yup8yu_Eo_T__QS5V7gFj8Q5cuL__QO9XQy9Sj70j8D2LA00003EALT__P7ij8DKj8DDW3nZ__Z8wsgo0g00h8DMmRR1n45tglV1nYdczrgAw000037_j8DSW7XZ__@5M0@5Bw0004xFx2ig0000g48f04xFD2i00000g48f04w3D2i80000i073i0es99w0003F_LX__Sof7Qg004ydfqDG__YNMezi_f__grU10000WUlCbwYvx0000000i8Dei8QZuKH__P70W2_Z___Fpv___SoK3N@40000003Ee_T__UIUW0jZ__Z8zjTlW___i8D6cs3Ew_P__@KLAewr_v__yPzEVfP__QydfhnG__Z8ysoNMexz_f__WU@glld8w@Moi8RQ90PEofP__QyddunF__Z8yOx8ysd8yu_EO_P__Un0tiubv2gci8DuWaLZ__@9Nky9T@x1_f__i8f468DEmRT33N@400000018yuV8zjS6Wv__cs2Z0g000ezW@___WYYf7Ug0000004y3X0x8yPQd4w00Lw40003E2_P__P70i8f42cc00000434000000001000000000040000000001M000000001M1w00000000w000000000@040000000090000000001w0000000005M000000001E2000000000800000000080400000000k0000000000s0000000000M000000002MgM00000000o000000000a0c00000000b0000000001w0000000001g000000003M1000000000E0000000009g400000000p000000000e0O000000006M00000000080000000001E000000000S3800000000s0000000000w000000000Yf__rM00000m1w0000000fX__SY00000f0o00000003___ZL00000040000000003000000000287000000000Q000000000u1M00000003R_LZL00000003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041U00000001g7w0000000000000000000000000000000000000000000000000000000000000000000000000000000000xME00000001g3000000008sa00000000s0I00000003g2w00000008sa00000000S0I00000000o2M00000008sa0000000000000000000000000000000000000000v0E0000000208000000000400000000084c00000002U2M00000000000000000063400000000000000000000000000000I1M00000002M700000000b0s00000000I1M00000002M700000000b0s00000000I1M00000002M700000000b0s00000000I1M00000002M700000000b0s000000002000010000000g00hQ4A0jdxcg2w7g0000000a0t000000002000010000000g00hQ4A0jdxcg287000000009Us000000002000010000000g00hQ4A0jdxcg1U70000000080s000000002000010000000g00hQ4A0jdxcg2w7g00000005Au000000002000010000000g00hQ4A0jdxcg1p7w00000005Au000000002000010000000g00hQ4A0jdxcg1p7w00000005Au000000002000010000000g00hQ4A0jdxcg2u700000000acs000000002000010000000g00hQ4A0jdxcg207000000008ks00000000rmZIp20ObzgMbz4wa6dLrn1xt6Byr6kwtSBQq217jBkwr6gF0017gQcW82x7jBkF834QbzcKci0Oc38Rc3kOcO0EkClA84xxt20Nd2UPbz4JciA002VKrThBbCtKtiVMsCZMpn9Qug0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It00KpmxvpD9xrmk0bClEnSpOomRBnSxAsw0KsCZAonhxbDdQsz4Kcg0KsCZAonhxbDdQsz4Ke00KpCBKqg0KqmVFt00Ks6NQ02VMr7gKpSZQ02VQpnxQ02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpCBKqlZxsD9xug0KqmVFt5ZxsD9xug0KpSZQ02VOpmNOrRZMomhAqmVD02VAonhx02VDrTgKs6NQ02VQrlZzr6ZKplZQom9Ipg0KoDdP02VDrDkKoDlFr6gKonhQsCBytnhBsM0KoSZJrmlKt00KsSxPt79Qom80bDdQsDhxow0KsTBJt65y001yqmVAnTpxsCBxoCNB971It01ytmBIt6BKnSlOsCZO971It01JomJBnS9RqmNQqmVvon9DtyhMr7g0u6pOpmkAs6NQ065Ap5ZytmBIt6BK971It01PrD1OqmVQpyhMr7g0oSNLoSJvpSlQt6BJpihMr7g0pSlQsDlPomtB971It01Pt79BsD9LsyhMr7g0s79FrDhC971It01Pt79zrn0As6NQ05Zvpn9OrCZvr6ZzonhFrSUAs6NQ05ZvoTxxnSpFrC5IqnFB971It6tLt01vnStJrSVvsThxsDhvnOhDrTg0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB96tLt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB96tLt01Dpnh3k5lQqmRBnTdQsDlzt2hDrTg0nRZzu65vpCBKomNFuCkApSZQ05ZvpSRLrBZPt65Ot5Zv05ZFrCBQ05ZCqmVF05Zvl4R3nQN9kRhvnM1Apn9BpSBPt6lOnThJnSdIrSVBsM1OpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnShPrRZEomVAr6k0nRZkjkdvhkV4nRY0nRZBq6hOnTdQon9Q05ZvqmVFt5ZxsD9xulZPt65Ot01vnSBKqnhvon9OonBvpmVA05ZvpCBKqlZxsD9xulZPt65Ot01vnSpFrCBvon9OonBvpmVA05Zvs79BqmVFt5ZxsD9xulZPt65Ot01vnT1OpmBKqnhvon9OonBvpmVA05Z4mkV1jkB305Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vk59fgQl4ll95nQN9jAJ1hQlvl452j4lv05ZvoDdPnTdQon9Q05ZBrCg0nSlQpnxQ05ZBp65Qog1vnSlUpmdRt65yr6lvsThxsDg0nRZOpmNxnSBMr7hvsThxsDg0nRZOpmNxnSBMr7hvpmVA05ZvhQVlnQl8nQpigkR5nQx4kw1BrCg0pnhBu7g0pmhxt640nRhckRZdjQhlj4lvgA5jhlY0nRZPt65Ot5Z5i4hi05ZvsThLs5Z5i4hi05ZvsThxsDhvk4x4kw1vnTdQrT1vk4x4kw0Yon9QqmpFoSBxr3U0pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0pSlQgR1lt6BJplZArSc0bAN3cM0Kj4cM02VcgPg0bAN3cw0Kj4cN02VcgPk0bAN3dw1yqmVAnTpxsCBxoCNB069RqmNQqmVvpn9OrT80rm5HplZytmBIt6BKnS5OpTo0u6pOpmk0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1PrD1OqmVQpw1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1vnSdUolZCqmVxr6BWpg1Pt79BsD9Lsw1MsCBKt6o0sThOoSRM05Zvpn9OrCZvr6ZzonhFrSU0000000000000000000000000000000000000000000c00g2E0w000000000000000000000000c00w3o0w000000000000000000000000c00M000M000000000000000000000000c0100E0M000000000000000000000000c01g3M10000000000000000000000000c01w0m1w000000000000000000000000c01M0Y1w000000000000000000000000c0201M1w000000000000000000000000c02g1E20000000000000000000000000c02w282g000000000000000000000000c02M0Y2w000000000000000000000000c0301w2w000000000000000000000000c03g2M2w000000000000000000000000c03w1U70000000000000000000000000c03M2870000000000000000000000000c0402M70000000000000000000000000c04g2g7g000000000000000000000000c04w2w7g000000000000000000000000c04M0gcg000000000000000000000000c0500ocg000000000000000000000000c05g3ocw000000000000000000000000c05w3wcw000000000000000000000000c05M3Ecw000000000000000000000000c0600ocM000000000000000000000000c06g0wgM000000000000000000000000c06w2MgM000000000000000000000000c06M0Eh0000000000000000000000000c0700Eh0000000000000000000000000c07g0000000000000000000000000000c07w0000000000000000000000000000c07M0000000000000000000000000000c0800000000000000000000000000000c08g00000000000000000000000g000080403g700000000000000000004M000080403w700000000000000000009g000080403M70000000000000000000eM00008040007g000000000000000000hg000080400g7g000000000000000000lg000080400w7g000000000000000000ow000080400M7g000000000000000000t000008040107g000000000000000000ww000080401g7g000000000000000000zM000080401w7g000000000000000000Cw000080401M7g000000000000000000Fg00008040207g000000000000000000Kw0000804g2g7g000000000000000000Q00000405M3Mcw000000000000000000UM0000405M3Ucw0000000000000000000M4000405M00cM0000000000000000008g4000405M08cM000000000000000000dM4000405M0gcM000000000000000000mg4000823M2870000000000000000000nM4000823w1U70000000000000000000pg4000406M0Eh0000000000000000000sw4000804w2w7g000000000000000000xM4000804w3g7g000000000000000000Cw4000804w0g7w000000000000000000I0400040700Eh0000000004000000000L04000405g3ocw000000000000000000UM4000804w1g7w000000000000000000XM4000405w3wcw000000000000000000h08000424M0gcg000000000000000000kg8000426M0Eh0000000000000000000ng8000000g0000000000000000000000qw8000005w3wcw000000000000000000vg8000005w3Ecw000000000000000000zw8000005g3ocw000000000000000000Eg8000005g3wcw000000000000000000Iw8000008g0000000000000000000000O08000008g0000000000000000000000T0800000500ocg000000000000000000Vg8000006w2MgM000000000000000000@M800000402M700000000000000000005gc00000700Eh00000000000000000008gc00000700Fh00000000000000000009wc000004w0c8g000000000000000000bgc000006M0Eh0000000000000000000d0c000000g0000000000000000000000hMc00000YvY000000000000000000000mgc00000YvY000000000000000000000qgc000002M0Y2w000000000000000000v0c00000700Fh0000000000000000000w0c000004w0c8g000000000000000000xwc000006M0Eh0000000000000000000z0c000o00g0000000000000000000000Dwc000008g0000000000000000000000GMc000008g0000000000000000000000JMc000008g0000000000000000000000N0c000008g0000000000000000000000Q0c000g0YvY000000000000000000000Tgc000804w1w7w00000001Y200000000Xgc000804w208000000006w000000000@Mc000406g0wgM0000000500000000002wg00000302G2w0000000000000000003Mg000003g2M2w00000000000000000050g00000302A2w0000000000000000006gg000003g0E300000000000000000007wg0000030282w0000000000000000008Mg00000301Y2w000000000000000000a0g00000301w2w000000000000000000iw4002000000000000000000000000003w800200000000000000000000000000aw800200000000000000000000000000bgg00100000000000000000000000000eMg00100000000000000000000000000igg00100000000000000000000000000mMg00100000000000000000000000000ogg001804w3M8000000001M000000000tgg001406g20gM000000030000000000xMg00100000000000000000000000000AMg00180000000000000000000000000D0g00180000000000000000000000000Gwg00180000000000000000000000000J0g00280000000000000000000000000MMg00180000000000000000000000000P0g00180000000000000000000000000QMg00180000000000000000000000000Swg001800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000700000w000000002E0w0000000aw200000000c000000000000000000000w00000000000000000000k00001M00008000000000S0800000003o0w00000002g000000000000000000004000000000000000000009M000fr__SY20000000000030000000000c00000000A0000000000g000000000200000000000000000000340000b00000w000000000E0M00000002w300000000O0400000000500000g0000w00000000060000000000V00000M00008000000000Y0g00000003M1000000002k10000000000000000000100000000000000000000gg000f___SY20000000001o6000000005wo00000000C0000000000g0000000000w00000000020000000004U0003@__ZL0w000000000Y1w00000003M600000000c0000000000500000g0000g00000000000000000001t00001000008000000000s0o00000001M1w0000000fw1000000001000000000080000000001w000000000pM0000g000020000000006w800000000q0w00000000w0g00000000g0000q000020000000000o000000000740000100000w00000000282g00000008w900000000J000000000000000000000w00000000000000000001X00000g00008000000000f0E00000000Y2w00000002g00000000000000000000400000000000000000000yg000040000O00000000060a00000000o0E00000001f000000000000000000000g00000000010000000009w000010000cw000000002M2w0000000b0a00000000O040000000000000000000w0000000000g000000002D00000g0000o000000000u1M00000001U3000000000Q00000000000000000000400000000000000000000Hg00004000060000000008ws00000000y0M00000000r00000000000000000000100000000000000000000bc0000100001w000000002M700000000b0c00000000U000000000000000000001000000000000000000002U00000g0000o000000000A1Q00000002g3g00000000w00000000000000000000g00000000000000000000Mg0000400006000000000a0t00000000E0Q00000001I0M000000000000000000400000000000000000000cs0000100000M000000000gcg000000010h000000002000000000000000000000w00000000000000000003k00001w0000c00000000063400000000o4g0000000c01000000001g000000000800000000010000000000Tg0000Y00003000000000dwO00000000S1800000000800000000000000000000200000000000000000000eA0000e00000M000000003wcw0000000e0i000000002000000000000000000000w00000000000000000003R00000g0000c000000000W3800000003E4w00000003000000000000000000000800000000000000000000@w0000w000030000000001wP0000000061c00000003E300000000000000000000g00000000000000000000A1000100000M000000000wgM000000020j00000000A000000000000000000002000000000000000000000f0g000g0000c000000000I4c00000002M4M00000007w000000000000000000008000000000000000000006040004000030000000002x400000000a1g000000000000000000000000000002000000000000000000002w1000800000M000000000Eh000000002wk000000000g00000000000000000000400000000000000000000J0g001M0000000000000000000000000E5000000002010000000000000000000400000000000000000000gM400040000M00000000000000000000i1k00000001k000000000000000000000g00000000010000000004M1000300000000000000000000000009Ml00000000pw40000000000000000000400000000000000000001m0g000M000000000000000000000000025M0000000eI40000000000000000000100000000000000000000nw400080000000000000000000000000Y1I00000000E2M0000000200001B000020000000000o000000000080@o"

    ARCH="$(uname -m)"

    printf '%s\n' "${!b64[@]}" | grep -qF "${ARCH}" && _timep_base64_to_file /dev/shm/.timep/lib/${USER}-${EUID}/timep.so <<<"${b64[${ARCH}]}"


    enable -f "/dev/shm/.timep/lib/${USER}-${EUID}/timep.so" getCPUtime
}

_timep_SETUP


_timep_file_to_base64() {

    local nn k1 k2;
    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))

    [[ -f "${1}" ]] || {

        printf '\nERROR: "%s" not found. ABORTING.\n' "${1}" >&2
        return 1

    }

    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))

    while read -r -N 3 nn; do
        (( k1 = ( 16#${nn} >> 6 ) ));
        (( k2 = ( 16#${nn} % 64 ) ));
        printf '%s%s' "${charmap[$k1]}" "${charmap[$k2]}";
    done < <(hexdump -v -x <"${1}" | sed -E 's/^[0-9a-f]+[[:space:]]+//; s/([0-9a-f]{2})([0-9a-f]{2})/\2\1/g; s/[[:space:]]//g' | sed -zE 's/\n//g');

}


