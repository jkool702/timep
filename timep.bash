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
    # -F |--flame | --flamegraph  : automatically generate a flamegraph using Flamegraph.pl and save them in the "profiles" dir
    #                                   Will attempt to download Flamegraph.pl from "https://github.com/brendangregg/FlameGraph" if not available locally.
    #
    #             --              : stop arg parsing (allows profiling something with the same name as a flag)
    #
    # -o <type> | --output=<type> : tell timep which type of profile(s) to print to stdout.
    #                                   pass a comma-seperated list to output more than one profile type.
    #                                   set <type> as empty ('') to not print any profiles.
    #                      <type> : p --> out.profile (DEFAULT)    pf --> out.profile.full    f --> out.flamegraph    ff -> out.flamegraph.full
    #                               NOTE: all 4 profiles will always be available on disk after profiling is finished in timep's tmpdir
    #
    #  --setup[="<flag>[,<flag>]"]    : alias for `_timep_setup [<flags>]`. this will set up the timep.so loadable and the timep_flamegraph.pl script. valid <flag>s (passed in quoted comma-seperated list) are '--download[=[local,]<branch>]', '--output[=<path>]', and '--force' .
    # --extract[="<flag>[,<flag>]"]   : same as `--setup`, except that it will additionally copy the timep.so loadable and the timep_flamegraph.pl script to $PWD. NOTE: default install path is under /dev/shm/.timep/lib/$USER-$EUID/ . See the _timep_setup header (bottom of this script) for more info.
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
    #    1. timep attempts to find the raw source code for functions being profiled, but in some instances (example: functions defined via `. <(...)` or functions defined in terminal when history is off) this isnt possible...In these cases,  `declare -f <func>` will be treated as the source, and the line numbers may not correspond exactly to the line numbers in the original code. Commamds are, however, still ordered correctly.
    #    2. To define a custom TMPDIR (other than /dev/shm/.timep.XXXXXX), pass `timep_TMPDIR` as an environment variable. e.g., timep_TMPDIR=/path/to/tmpdir timep [...]
    #
    # KNOWN LIMITATIONS / BUGS: timep handles *almost* every aspect of the bash execution model, but there are a few edge cases where, due to the limitations or trap-based profiling, the output is slightly off.
    #    1. For return traps, when the trap is triggered (by a function returning) timep records the event with the command listed is a repeat of the last command run by the returning function. This issue *only* happens for return traps...all other traps are profiled correctly.
    #    2. In some deeply nested chains of combined subshells + background forks with multiple subshells + forks before the 1st command in the sequence, some commands may have an incorrect subshell PID and will be grouped seperately.
    #
    ################################################################################################################################################################
(

    # check that basic requirements to run timep are met
    # to disable this check, call timep via 'timep_DISABLE_CHECKS=1 timep <...>'
    [[ ${timep_DISABLE_CHECKS} ]] || { [[ -f /proc/self/stat ]] && (( BASH_VERSINFO[0]>= 5 )); } || { printf '\n\nERROR: timep requires a mounted procfs and bash 5+. ABORTING!\n\n' >&2; return 1; }

    shopt -s extglob

    local IFS IFS0 nn jj kk kk0 kk1 kkd a a0 b u logPathCur nCPU nWorker nWorkerMax REPLY timep_coprocSrc timep_DEBUG_FLAG timep_DEBUG_IDS_FLAG timep_DEBUG_TRAP_STR_0 timep_DEBUG_TRAP_STR_1 timep_deleteFlag timep_EXIT_TRAP_STR timep_fd_done timep_fd_lock timep_fd_logID timep_flameGraphFlag timep_flameGraphPath timep_LOG_NUM timep_noOutFlag timep_outType timep_PPID timep_PTY_FD_TEST timep_PTY_FLAG timep_PTY_PATH timep_RETURN_TRAP_STR timep_runCmd timep_runCmd1 timep_runCmdPath timep_runFuncSrc timep_wtimeALL timep_wTimeCur timep_runType timep_timeFlag timep_TITLE timep_TTY_NR timep_TTY_NR_TEST timep_CLOCK_GETTIME_FLAG timep_TITLE timep_funcName timep_wtimeALL timep_ctimeALL spacerN spacerN0 headerTXT a00 a000 spacerCur p1w p1c logPathCur A_end jj0 tA a0 l t l0 jj1 n wTime cTime wTimeP cTimeP count Lstart Lstart0 spacerCur Lend logCurTmp clktck svgCombineInd titlePad subtitlePad A_mapN
    local -gx timep_TMPDIR timep_FD0 timep_FD1 timep_FD2 fd_sleep timep_CPU_TIME_MULT timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX timep_WTIME_CORRECTION timep_CTIME_CORRECTION timep_WTIME_DONE
    local -a pAll_PID timep_outTypeA kkNeed kkNeed0 T L logCurTmpA A0A A1A timep_setupFuncFlags
    local -agx timep_LOG_NAME timep_LOG_NESTING timep_LOG_NESTING_IND
    local -A A_map

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
            --setup|--extract)  _timep_setup; [[ "${1}" == '--extract-scripts' ]] && { \cp "/dev/shm/.timep/lib/${USER}-${EUID}"/{timep.so,timep_flamegraph.pl} "${PWD}"; printf '\nThe extracted "timep.so" and "timep_flamegraph.pl" files have been extracted to "/dev/shm/.timep/lib/%s-%s"\n' "${USER}" "${EUID}"; }; return 0  ;;
            --setup=*|--extract=*)  mapfile -t -d ',' timep_setupFuncFlags <<<"${1#*=}"; _timep_setup "${timep_setupFuncFlags[@]}"; [[ "${1}" == '--extract-scripts' ]] &&  { \cp "/dev/shm/.timep/lib/${USER}-${EUID}"/{timep.so,timep_flamegraph.pl} "${PWD}";  printf '\nThe extracted "timep.so" and "timep_flamegraph.pl" files have been extracted to "/dev/shm/.timep/lib/%s-%s"\n' "${USER}" "${EUID}"; }; return 0  ;;
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

    type -p getconf &>/dev/null && clktck=$(getconf CLK_TCK)
    if (( clktck >= 10 )) && ((clktck <= 10000 )); then

        (( timep_CPU_TIME_MULT = 1000000 / clktck ))
    else
        read -r _ a </proc/uptime
        read -r _ _ _ _ b _ </proc/stat
        a0="${a##*.}"
        (( timep_CPU_TIME_MULT = ( 1000000  / ( 10 ** ${#a0} ) ) * ${a//[^0-9]/} / b ))
    # clamp to CLK_TCK between 10-10000
    (( timep_CPU_TIME_MULT < 100 )) && timep_CPU_TIME_MULT=100
    (( timep_CPU_TIME_MULT > 100000 )) && timep_CPU_TIME_MULT=100000
        until (( timep_CPU_TIME_MULT % 10 == 0 )); do

            ((timep_CPU_TIME_MULT++))
        done
    fi

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
        timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]=0
        fi
        if [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]%% *}" == '"'"'wait'"'"' ]]; then
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
            if [[ -x "${timep_EXEC_ARG}" ]] && { [[ "${timep_EXEC_ARG}" == "${BASH}" ]] || [[ "${timep_EXEC_ARG##*/}" == "bash" ]]; }; then
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
        local trapStr trapStr0 trapStrQ trapType

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
            trapStr0="${trapStr}"$'"'"'\n'"'"'
            { [[ "${trapStr}" == '"'"'-'"'"' ]] || [[ -z "${trapStr}" ]]; } && trapStr0='"''"'
        fi

        for trapType in "${@}"; do
            case "${trapType}" in
                EXIT)

                    if [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap "${timep_EXIT_TRAP_STR}" EXIT
                    else
                        trapStrQ="'"'"'TRAP ("${trapType}"): "${trapStr//"'"'"'"/}"'"'"'"
            trapStrQ="${trapStrQ//$'"'"'\n'"'"'/\\\$'"'"'\\n'"'"'}"
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ//\;/\\\;}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false
'"'"'"${timep_EXIT_TRAP_STR}" EXIT
                    fi
                ;;
                RETURN)

                    if [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap "${timep_RETURN_TRAP_STR}" RETURN
                    else
                        trapStrQ="'"'"'TRAP ("${trapType}"): "${trapStr//"'"'"'"/}"'"'"'"
            trapStrQ="${trapStrQ//$'"'"'\n'"'"'/\\\$'"'"'\\n'"'"'}"
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ//\;/\\\;}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false
'"'"'"${timep_RETURN_TRAP_STR}" RETURN
                    fi
                ;;
                DEBUG)

                   builtin trap "${timep_DEBUG_TRAP_STR_0}${trapStr0}${timep_DEBUG_TRAP_STR_1}" DEBUG
                ;;
                *)

                    if [[ -z "${trapStr}" ]]; then
                        builtin trap '"''"' "${trapType}"
                    elif [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap - "${trapType}"
                    else
                        trapStrQ="'"'"'TRAP ("${trapType}"): "${trapStr//"'"'"'"/}"'"'"'"
            trapStrQ="${trapStrQ//$'"'"'\n'"'"'/\\\$'"'"'\\n'"'"'}"
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ//\;/\\\;}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false
:'"'"' "${trapType}"
                    fi
                ;;
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

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0 timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_START_CTIME_SELF timep_END_CTIME_SELF timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0
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
    [[ $BASH ]] || export BASH="$(type -p bash)"

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
    printf -v d '%5.3d' "${tSum}"
    printf '%s' "${d:0:3}.${d:3}"
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

    local logCur log_tmp kk kk1 lineno1 nn inPipeFlag nPipe startWTime endWTime startCTime endCTime wTime cTime wTime0 cTime0  func pid nexec lineno cmd t0 t1 log_tmp linenoUniq log_dupe_flag spacerN  logMergeAll fg0 ns nf nPipeNextIgnoreFlag IFS IFS0 nPipe0 cmd0 d6 wTimeTotal cTimeTotal wTimeP0 cTimeP0 wTimeP cTimeP nlogA logDepth keyCur
    local -a logA nPipeA wTimePA cTimePA funcA pidA nexecA linenoA cmdA mergeA isPipeA logMergeA linenoUniqA sA fA eA fgA normalCmdFlagA startWTimeA endWTimeA startCTimeA endCTimeA wTimeA cTimeA linenoUniqMapA
    local -A linenoUniqLineA linenoUniqCountA linenoUniqWTimeA linenoUniqWTimePA linenoUniqCTimeA linenoUniqCTimePA linenoUniqCmdA linenoUniqMapAA

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && {
        trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2' ERR #; _timep_DEBUG_PRINTVARS >&2' ERR
        set -xv
    }

    logCur="${timep_LOG_NAME[${1}]}"

    [[ -e "${logCur}" ]] || return 1

    inPipeFlag=false
    nPipeNextIgnoreFlag=false

    wTimeTotal=0
    cTimeTotal=0

    # get current log nesting depth
    logDepth="${logCur##*\/.log\/log.}"
    logDepth="${logDepth//[^.]/}"
    logDepth="${#logDepth}"

    # load current log (sorted by NEXEC) into array
    mapfile -t logA < <(sed -zE 's/\n(TRAP [^\n]+)\n/'$'\034\035''\1\n/g' <"${logCur}" | sort -V -k11,11 | sed -E 's/'$'\034\035''(TRAP .*)$/\n\1/')
    #unset A

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

    nlogA="${#logA[@]}"

   # loop through lines in reverse order
    for (( kk=${#logA[@]}-1; kk>=0; kk-- )); do

        # deal with commands run by traps / signal handlers
        if [[ "${logA[$kk]}" == 'TRAP ('*'):'* ]]; then
            (( kk1 = kk + 1 ))
            while (( linenoA[$kk1] < 0 )) && (( kk1 < ${nlogA} )); do
                cmdA[$kk1]="${logA[$kk]@Q}"
                ((kk1++))
            done
            nPipeA[$kk]=-1
            unset "logA[$kk]"
            continue
        fi

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

        # unquote the cmd string
        cmd="${cmd%*([[:space:]])"'"*}${cmd##*"'"}'"

        cmd="${cmd//"'\\''"/"'"'"'"'"'"'"'"}"
        read -r -d '' cmd < <(eval "printf '%s\0' ${cmd}")
        cmd="${cmd//$'\n'/\$"'"\\n"'"}"
        cmd="${cmd//$'\t'/\$"'"\\t"'"}"
        #cmd="${cmd//\(\&\)/\\\(\\\&\\\)}"
        cmd="${cmd//\(\^\)/\\\(\\\^\\\)}"
        cmdA[$kk]="${cmd}"

        # deal with issue where for (( ...; ...; ... )) loops inherit previous nPipe
        if ${nPipeNextIgnoreFlag}; then
            nPipe=1
            nPipeA[$kk]=1
            nPipeNextIgnoreFlag=false
        elif (( nPipeA[$kk] > 1 )) && (( kk > 0 )) && [[ "'${cmdA[$kk]//"'"/"'"'"'"'"'"'"'"}'" == '(('*[\<\>\=]*'))' ]]; then
            (( kk1 = kk - 1 ))
            IFS=$'\t' read -r nPipe0 _ _ _ _ _ _ _ _ _ cmd0 <<<"${logA[$kk1]}"
            (( nPipe0 > 1 )) && {
                cmd0="${cmd0#@([[:print:]])}"
                cmd0="${cmd0%@([[:print:]])*([[:space:]])}"
                [[ "${cmd0}" == '(('*\=*'))' ]] && {
                    nPipe=1
                    nPipeA[$kk]=1
                    nPipeNextIgnoreFlag=true
                }
            }
        fi

        # check if cmd is a subshell/bg fork/function that needs to be merged up
        if [[ "${cmdA[$kk]//"'"/}" == '<< ('*'): '*' >>' ]]; then
            normalCmdFlagA[$kk]=false

            # record which log to merge up and where
            mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecA[$kk]#* }"

            # read in the endtime + runtime from the log
            [[ "${cmdA[$kk]//"'"/}" == '<< (BACKGROUND FORK): '*' >>' ]] || {
                if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"; then
                    IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"
                    [[ ${wTime//[^0-9]/} ]] && wTimeA[$kk]="${wTime}"
                    [[ ${cTime//[^0-9]/} ]] && cTimeA[$kk]="${cTime}"
                fi
            }
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

        # merge pipelines commands upward into previous line cmdA
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
            ${inPipeFlag} || (( wTimeTotal = wTimeTotal + wTimeA[$kk] ))
        else
             wTimeA[$kk]=1
        fi
        if (( 10#0${cTimeA[$kk]//[^0-9]/} >= 1 )); then
            ${inPipeFlag} || (( cTimeTotal = cTimeTotal + cTimeA[$kk] ))
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
        }
    done

    (( wTimeTotal = wTimeTotal >= 1 ? wTimeTotal : 1 ))
    (( cTimeTotal = cTimeTotal >= 1 ? cTimeTotal : 1 ))

    # write runtime and final endtime to .{end,run}time file
    printf '%s\t%s\n' "${endWTimeA[-1]}" "${endCTimeA[-1]}" >"${logCur%\/.log\/*}/.log/.endtimes/${logCur##*\/.log\/}"
    printf '%s\t%s\n' "${wTimeTotal}" "${cTimeTotal}" >"${logCur%\/.log\/*}/.log/.runtimes/${logCur##*\/.log\/}"

    # add nesting depth to LINENO's and compute runtime as % of total at this depth and get list of unique lineno's + write out flamegraph stack
    kk1=-1
    for kk in "${!logA[@]}"; do
        [[ -z ${isPipeA[$kk]} ]] || (( nPipeA[$kk] == 1 )) || (( kk1 < 0 )) || ! ${normalCmdFlagA[$kk]} || {
            (( ${#linenoUniqMapA[@]} == 0 )) || linenoUniqLineA[${linenoUniqMapA[$kk1]}]+=" $kk"
            continue
        }
        #  write out flamegraph stack trace line for standard commands
        ${normalCmdFlagA[$kk]} && printf '%s%s\t%s\t%s\n' "${fg0}" "${cmdA[$kk]//\;/\,}" "${wTimeA[$kk]}" "${cTimeA[$kk]}" >>"${logCur%\/*}/out.flamegraph.full.${logDepth}.${1}"

        # add nesting depth to lineno
        if (( kk > 0 )) && [[ "${linenoA[$kk]:-0}" == "${linenoA[$kk1]%%.*}" ]]; then
            ((lineno1 = lineno1 + 1))
        else
            lineno1=0
        fi
        linenoA[$kk]="${linenoA[$kk]}.${logDepth}.${lineno1}"

        # figure out "percent for current nesting depth" for wall/cpu times
        (( wTimeP0 =  wTimeA[$kk] > 0 ? 10000 * wTimeA[$kk] / wTimeTotal : 0 ))
        printf -v wTimeP '%5.3d' "${wTimeP0}"
        wTimePA[$kk]="${wTimeP:0:3}.${wTimeP:3}"

        (( cTimeP0 =  cTimeA[$kk] > 0 ? 10000 * cTimeA[$kk] / cTimeTotal : 0 ))
        printf -v cTimeP '%5.3d' "${cTimeP0}"
        cTimePA[$kk]="${cTimeP:0:3}.${cTimeP:3}"

        # combine times for lines with same lineno + same command


        cmd="${cmdA[$kk]}"
        
        # generate mapping for all unique "lineno.depth + command [+ func + pid]" groups into the lineno.depth.cmd from the first instanced in that group
        keyCur="${linenoA[$kk]%.*}.${cmdA[$kk]@Q}.${funcA[$kk]@Q}.${pidA[$kk]@Q}"

        # dont allow merging of << ... >> indicators. subtrees are merged later
        [[ "${cmdA[$kk]//"'"/}" == '<< ('*'): '*' >>' ]] && until [[ -z ${linenoUniqMapAA["${keyCur}"]} ]]; do keyCur+='_'; done
 
        if [[ ${linenoUniqMapAA["${keyCur}"]} ]]; then
            linenoUniqMapA[$kk]="${linenoUniqMapAA["${keyCur}"]}"
        else
            linenoUniqA[$kk]="${keyCur}"
            linenoUniqMapA[$kk]="${keyCur}"
            linenoUniqMapAA["${keyCur}"]="${keyCur}"
        fi

        # aggregate the various profile times/metadata from each command in the group at the index(kk) of 1st line in the group
        if [[ ${linenoUniqLineA[${linenoUniqMapA[$kk]}]} ]]; then
            linenoUniqLineA[${linenoUniqMapA[$kk]}]+=" $kk"
            (( linenoUniqCountA[${linenoUniqMapA[$kk]}] = linenoUniqCountA[${linenoUniqMapA[$kk]}] + 1 ))
            linenoUniqWTimeA[${linenoUniqMapA[$kk]}]+=" ${wTimeA[$kk]:-1}"
            linenoUniqCTimeA[${linenoUniqMapA[$kk]}]+=" ${cTimeA[$kk]:-1}"
        else
            linenoUniqLineA[${linenoUniqMapA[$kk]}]="$kk"
            linenoUniqCmdA[${linenoUniqMapA[$kk]}]="${cmdA[$kk]}"
            linenoUniqCountA[${linenoUniqMapA[$kk]}]=1
            linenoUniqWTimeA[${linenoUniqMapA[$kk]}]="${wTimeA[$kk]:-1}"
            linenoUniqCTimeA[${linenoUniqMapA[$kk]}]="${cTimeA[$kk]:-1}"
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

    (( spacerN = 1 + 4 * ( 10#0${timep_LOG_NESTING_MAX:-0} - 10#0${logDepth:-0} ) )) || spacerN=1

    # write out new merged-upward log
    inPipeFlag=false
    for kk in "${!logA[@]}"; do
        if ${inPipeFlag}; then
            # we are in a pipeline but not in the 1st element. dont add line to log
            { [[ -z ${isPipeA[$kk]} ]] || (( isPipeA[$kk] == 1 )); } && inPipeFlag=false
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
        (( logDepth == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n│'

        # add merged up log to current << ... >> log line, including for "in the middle of a pipeline" commands
        [[ ${mergeA[$kk]} ]] && [[ -e "${mergeA[$kk]}.out" ]] && {
            mapfile -t logMergeA < <(grep -vE '^[[:space:]]*$' <"${mergeA[$kk]}.out")
            if (( ${#logMergeA[@]} == 0 )); then
                continue
            elif (( ${#logMergeA[@]} == 1 )); then
                printf '\n└─ %s' "${logMergeA[0]}"
            elif (( ${#logMergeA[@]} == 2 )); then
                printf '\n├─ %s' "${logMergeA[0]}"
                printf '\n└─ %s' "${logMergeA[-1]}"
            elif (( ${#logMergeA[@]} > 2 )); then
                printf '\n├─ %s' "${logMergeA[0]}"
                printf '\n│  %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                printf '\n└─ %s' "${logMergeA[-1]}"
            fi
        }
        (( logDepth == 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n│'

    done >"${logCur}.out"

    # write out new combined (uniq lineno) merged-upward log
    inPipeFlag=false
    for kk in "${!linenoUniqA[@]}"; do
        [[ -z ${isPipeA[$kk]} ]] || (( nPipeA[$kk] == 1 )) || continue

        # add line to log
        (( kk == 0  )) || printf '\n\n'

        (( linenoUniqCountA[${linenoUniqA[$kk]}] = linenoUniqCountA[${linenoUniqA[$kk]}] ))

        cmd="${cmdA[$kk]/#<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
        cmd="${cmd/#<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"
        cmd="${cmd/#<< \(FUNCTION\): /<< (FUNCTION): "${funcA[$kk]#* }".}"

        # write line
        logMergeAll=("$(printf '\n%s %s %s %s %s\t%s:%'"${spacerN}"'.s\t%s' "${linenoUniqWTimeA[${linenoUniqA[$kk]}]}" "${linenoUniqWTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCTimeA[${linenoUniqA[$kk]}]}" "${linenoUniqCTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCountA[${linenoUniqA[$kk]}]}" "${linenoA[$kk]}" '' "${cmd}")")

        # check if this is the start of a pipeline
        [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true

        # (( logDepth == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n│'

        # add merged up log to log, including for "in the middle of a pipeline" commands
        [[ ${linenoUniqLineA[${linenoUniqA[$kk]}]} ]] && for kk1 in ${linenoUniqLineA[${linenoUniqA[$kk]}]}; do
            [[ ${mergeA[$kk1]} ]] && [[ -e "${mergeA[$kk1]}.out.combined" ]] && logMergeAll+=("$(mapfile -t logMergeA < <(grep -E '^[0-9]' <"${mergeA[$kk1]}.out.combined" |  grep -vE '^([0-9]+[[:space:]]+){5}[├│└└] *\.')
                if (( ${#logMergeA[@]} == 1 )); then
                    printf '\n%s\t└─ %s' "${logMergeA[0]%%$'\t'*}" "${logMergeA[0]#*$'\t'}"
                elif (( ${#logMergeA[@]} > 1 )); then
                    printf '\n%s\t├─ %s' "${logMergeA[0]%%$'\t'*}" "${logMergeA[0]#*$'\t'}"
                    for (( jj =1; jj<${#logMergeA[@]}-1; jj++ )); do
                        printf '\n%s\t│  %s' "${logMergeA[$jj]%%$'\t'*}" "${logMergeA[$jj]#*$'\t'}"
                    done
                    (( ${#logMergeA[@]} > 1 )) && printf '\n%s\t└─ %s' "${logMergeA[-1]%%$'\t'*}" "${logMergeA[-1]#*$'\t'}"
                fi)")
        done

        printf '%s' "${logMergeAll[@]}"

        (( logDepth <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n│'

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

    local wallTimeN cpuTimeN wallTimeCDF_csum cpuTimeCDF_csum kk kk0 a b c n cpuTimeFlag fdRead ratioFactor wallTimeSum cpuTimeSum
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
    if [[ "${cpuTimeA[*]}" ]]; then
        cpuTimeFlag=true
        (( ${#wallTimeA[@]} == ${#cpuTimeA[@]} )) && {
            IFS='+'
            (( wallTimeSum = ${wallTimeA[*]} ))
            (( cpuTimeSum = ${cpuTimeA[*]} ))
            ratioFactor=20
        }
    else
        cpuTimeFlag=false
    fi
    eval "${IFS0:-unset IFS}"
    unset IFS0

    # dont have commands where cpuTimeis <5% of wall time contribute to the CDF
    ${cpuTimeFlag} && [[ ${ratioFactor} ]] && {
        for kk in "${!wallTimeA[@]}"; do
            (( ratioFactor * wallTimeSum * cpuTimeA[$kk] < cpuTimeSum * wallTimeA[$kk] )) && {
                wallTimeA[$kk]="${wallTimeA[$kk]}.1"
                #cpuTimeA[$kk]="${cpuTimeA[$kk]}.1"
            }
        done
    }

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
        if [[ "${c}" == *'.1' ]]; then
            c="${c%.*}"
            (( wallTimeN = wallTimeN - a ))
            (( wallTimeCDF_map[$n] = wallTimeCDF_map[$n] ))
        else
            (( wallTimeCDF_map[$n] = ${wallTimeCDF_map[$n]:-0} + a * c ))
        fi
        wallTimeCDF_map0[${c%.*}]="$n"
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

    # if we also have cpu times, repeat the above steps to get a weighted CDF mapping for those too
    ${cpuTimeFlag} && {
        mapfile -t cpuTimeSortA < <( printf '%s\n' "${cpuTimeA[@]}" | sort -n | grep -nE '' | sed -E s/'\:'/' '/)

        (( cpuTimeN = ${#cpuTimeSortA[@]} ))

        cpuTimeCDF_map0=()
        cpuTimeCDF_map=()

         while read -r a b c; do
            { [[ $a ]] && [[ $b ]] && [[ $c ]]; } || continue
            (( n = ( ( b - 1 ) << 1 ) + a ))
            #if [[ "${c}" == *'.1' ]]; then
            #    c="${c%.*}"
            #    (( cpuTimeN = cpuTimeN - a ))
            #    (( cpuTimeCDF_map[$n] = cpuTimeCDF_map[$n] ))
            #else
                (( cpuTimeCDF_map[$n] = ${cpuTimeCDF_map[$n]:-0} + a * c ))
            #fi
            cpuTimeCDF_map0[${c%.*}]="$n"
        done < <(printf '%s\n' "${cpuTimeSortA[@]}" | uniq -c -f1)

        # cummulative sum weighted CDF to get final "equal screen space" mapping
        kk0=-1
        for n in "${!cpuTimeCDF_map[@]}"; do
            (( kk0 >= 0 )) && (( cpuTimeCDF_map[$n] = cpuTimeCDF_map[$n] + cpuTimeCDF_map[$kk0] ))
            kk0=${n}
        done
        cpuTimeCDF_csum="${cpuTimeCDF_map[$n]}"

        # renormalize final mapping to range between 0 and (2 * numSamples)
        for n in "${!cpuTimeCDF_map[@]}"; do
            (( cpuTimeCDF_map[$n] = ( ( cpuTimeN * cpuTimeCDF_map[$n] ) << 1 ) / cpuTimeCDF_csum ))
        done
    }

    # re-create log with time(s) mapped to weighted CDF index
    if ${cpuTimeFlag}; then
        for kk in "${!stackA[@]}"; do
            printf '%s\t%s:%s\t%s:%s\n' "${stackA[$kk]}" "${wallTimeA[$kk]%.*}" "${wallTimeCDF_map[${wallTimeCDF_map0[${wallTimeA[$kk]%.*}]}]}" "${cpuTimeA[$kk]%.*}" "${cpuTimeCDF_map[${cpuTimeCDF_map0[${cpuTimeA[$kk]%.*}]}]}"
        done
    else
        for kk in "${!stackA[@]}"; do
            printf '%s\t%s:%s\n' "${stackA[$kk]}" "${wallTimeA[$kk]%.*}" "${wallTimeCDF_map[${wallTimeCDF_map0[${wallTimeA[$kk]%.*}]}]}"
        done
    fi
}

_timep_COMBINE_FLAMEGRAPH() {
## Vertically stack flamegraph SVG images
# 
# USAGE: --type=<type> svg0 svg1
#
# <type> can be one of the following: f, F  w, c, fF, wc
# Note that inputs must be in the order shown below.
#
#   For the below 4 types, input 1 is a single normal flamegraph and input 2 is a single inverted flamegraph.
#     f: folded.   inputs are folded wall-clock and folded cpu.        output is dual-folded.
#     F: full.     inputs are full wall-clock and full cpu.            output is dual-full.
#     w: wall.     inputs are folded wall-clock and full wall-clock.   output is dual-wall.
#     c: CPU.      inputs are folded CPU and full CPU.                 output is dual-cpu.
#
#   For the below 2 types, each input is a double flamegraph producedusing one of the above 4 modes
#     fF: folded+full. inputs are dual-folded and dual-full
#     wc: wall+cpu.    inputs are dual-wall and dual-cpu


    #trap 'echo "ERROR AT $LINENO: $BASH_COMMAND" >&2' ERR

    local svg0 svg1 f1 e0 y y1 y2 yMax yMin yMax0 yMin0 yMax1 yMin1 yNew Y kk kk0 kk1 imgHeight subtitleY titleY a runType fTitleStr0 fTitleStr fTitleKK quadStackFlag titlePad subtitlePad
    local -a F f2 fTitleA

    quadStackFlag=false
    ((svgCombineInd++))

    if [[ "$1" == '--type='* ]] && (( $# == 3 )); then
        runType="${1##*=}"
        runType="${runType//\'\"/}"
        case "${runType}" in
            f)  fTitleA=('' '{FOLDED}: WALL-CLOCK' '' '{FOLDED}: CPU-TIME')  ;;
            F)  fTitleA=('' '{FULL}: WALL-CLOCK' '' '{FULL}: CPU-TIME')  ;;
            w)  fTitleA=('' '{WALL-CLOCK}: FOLDED' '' '{WALL-CLOCK}: FULL')  ;;
            c)  fTitleA=('' '{CPU-TIME}: FOLDED' '' '{CPU-TIME}: FULL')  ;;
            fF) fTitleA=('' '{FOLDED}: WALL-CLOCK' '' '{FOLDED}: CPU-TIME' '' '{FULL}: WALL-CLOCK' '' '{FULL}: CPU-TIME'); quadStackFlag=true  ;;
            wc) fTitleA=('' '{WALL-CLOCK}: FOLDED' '' '{WALL-CLOCK}: FULL' '' '{CPU-TIME}: FOLDED' '' '{CPU-TIME}: FULL'); quadStackFlag=true  ;;
        esac
        shift 1
    elif (( $# == 2 )); then
        runType=f
        fTitleA=('' '{FOLDED}: WALL-CLOCK' '' '{FOLDED}: CPU-TIME') 
    else
         printf '\nERROR: INCORRECT NUMBER OF INPUTS. \nABORTING!!!\n\n' >&2
         return 2
    fi

    { [[ ${1} ]] && [[ ${2} ]] && [[ -e "${1}" ]] && [[ -e "${2}" ]]; } || {
         printf '\nERROR: at least one SVG was not found or could not be accesses. \nEnsure the paths are correct and that you have requisite file permissions to read the SVG file.\nABORTING!!!\n\n' >&2
         return 1
    }

    svg0="${1}"
    svg1="${2}"

    f1="$(grep -vE '^<text id="subtitle".*_THIS_IS_A_TEMP_SUBTITLE_' <"${svg0}")"
    f1="${f1%\<\/g\>$'\n'\<\/svg\>}"

    mapfile -t y1 < <(grep -F '<title>all' -r "${svg0}" | sed -E 's/^.* y="([0-9.]+)".*$/\1/')
    if [[ ${#y1[@]} == 1 ]]; then
        mapfile -t y2 < <(grep -F '<title>all' -r "${svg1}" | sed -E 's/^.* y="([0-9.]+)".*$/\1/')
        (( yShift = y1 - y2 ))
    else
        read -r e0 e1 < <(echo $(grep -oE ' y="[0-9.]+"' <"${svg0}" | grep -oe '[0-9.]*' | sed -E 's/\.[0-9]+//' | sort -nu | tail -n 2))
        (( yShift = ( 2 * e1 ) - e0 + 32 ))
    fi

    mapfile -t -d '' f2 < <(sed -zE s/'^.*\n<g id="frames">\n//; s/<\/g>\n<\/svg>\n?$//; s/(<\/g>)\n/\1\x00/g; s/ y="([0-9.]+)"/ y="'$'\034''\1'$'\034''"/g' <"${svg1}")

    yMax=0
    yMin=$((1<<31))
    for kk in "${!f2[@]}"; do
        F=()
        for (( kk0=0; kk0<5; kk0++)); do
            read -r -d $'\034' y 
            if [[ "${kk0}" = '1' ]] || [[ ${kk0} == '3' ]]; then
                (( yNew = ${y%.*} + yShift ))
                F[$kk0]="${yNew}"
                [[ "${y##*.}" == "${y}" ]] || F[$kk0]="${F[$kk0]}.${y##*.}"
                (( yNew > yMax )) && yMax="${yNew}"
                (( yNew < yMin )) && yMin="${yNew}"
            else
                F[$kk0]="$y"
            fi
        done <<<"${f2[$kk]}"
        printf -v Y '%s' "${F[@]}"
        f1+="${Y}"$'\n'
        (( kk1 = kk + 1 ))
        printf '\rPROGRESS: FINISHED %s OF %s FRAMES (%s of 6) %16.d' "${kk1}" "${#f2[@]}" "${svgCombineInd}" '' >&2
    done

    IFS=' ' read -r yMin0 yMax0 < <(grep -oE '^.* y="[0-9\.]+"' <"${svg0}" | grep -vE '^<((rect)|(text id))' | grep -oE ' y="[0-9\.]+"' | sed -E 's/^ y="//; s/(\.5)?"$//' | sort -n | sed -zE 's/^([0-9]+)\n.*\n([0-9]+)\n?$/\1 \2/')
    IFS=' ' read -r yMin1 yMax1 < <(grep -oE '^.* y="[0-9\.]+"' <"${svg1}" | grep -vE '^<((rect)|(text id))' | grep -oE ' y="[0-9\.]+"' | sed -E 's/^ y="//; s/(\.5)?"$//' | sort -n | sed -zE 's/^([0-9]+)\n.*\n([0-9]+)\n?$/\1 \2/')
    mapfile -t titleY < <(grep -E '^<text id="title"' <"${svg0}" | sed -E s/'^.*y="([0-9.]+)" .*$'/'\1'/)
    mapfile -t subtitleY < <(grep -E '^<text id="subtitle"' <"${svg0}" | sed -E s/'^.*y="([0-9.]+)" .*$'/'\1'/)

    grep -qE '^<text id="subtitle".*_THIS_IS_A_TEMP_SUBTITLE_' <"${svg0}" && echo "$(grep -vE '^<text id="subtitle".*_THIS_IS_A_TEMP_SUBTITLE_' <"${svg0}")" >"${svg0}"
    grep -qE '^<text id="subtitle".*_THIS_IS_A_TEMP_SUBTITLE_' <"${svg1}" && echo "$(grep -vE '^<text id="subtitle".*_THIS_IS_A_TEMP_SUBTITLE_' <"${svg1}")" >"${svg1}"
  
    if (( ${#titleY[@]} == 0 )) || [[ -z "${titleY[0]}" ]]; then
        titleY[0]=24
    fi

    if (( ${#subtitleY[@]} == 0 )) || [[ -z "${subtitleY[0]}" ]]; then
        (( subtitleY[0] = titleY[0] + 24 ))
    fi

    (( titlePad = subtitleY[0] - titleY[0] ))
    (( subtitlePad = yMin0 - subtitleY[0] ))

    (( imgHeight = yMax + subtitlePad + 2 * titlePad ))

    (( fTitleA[0] = yMin0 - subtitlePad ))

    if ${quadStackFlag}; then
        (( fTitleA[2] = yMax0 + subtitlePad + titlePad ))
        (( fTitleA[4] = yMin1 - subtitlePad + yShift ))
        (( fTitleA[6] = yMax1 + subtitlePad + titlePad + yShift ))
    else
        (( fTitleA[2] = imgHeight - titlePad ))    
        fTitleA=("${fTitleA[0]}" "${fTitleA[1]}" "${fTitleA[2]}" "${fTitleA[3]}")
    fi

    fTitleStr0="$(grep -E '^<text id="title" ' <"${svg0}" | head -n 1 | sed -E 's/^(<text id=")(title" .* y=")[0-9\.]+(" >).*$/\1sub\2%s\3\%s\<\/text\>\\n/')"
    printf -v fTitleStr "${fTitleStr0}" "${fTitleA[@]}"
    fTitleStr="${fTitleStr%$'\n'}"

    fTitleKK="$(grep -n '' <<<"${f1}" | grep -E '^[0-9:]+<text id="title" ' | grep -oE '^[0-9]+')"

    f1="$(grep -vE '^<text id="subtitle"' <<<"${f1}")"

    f1="$( { head -n "${fTitleKK}" <<<"${f1}"; printf '\n%s\n' "${fTitleStr}"; tail -n +$((fTitleKK+1)) <<<"${f1}"; } | grep -E '.+' )"

    f1="$(sed -E 's/(^<svg.* height=")([0-9\.]+)(".*)$/\1'"${imgHeight}"'\3/; s/(^<rect.* height=")([0-9\.]+)(".*)$/\1'"${imgHeight}"'\3/; s/^(<svg.*viewBox="[0-9]+ [0-9]+ [0-9]+) [0-9]+/\1 '"${imgHeight}"'/' <<<"${f1}")"

    f1+='</g>'$'\n''</svg>'
    f1="$(sed -E 's/[[:space:]]+$//' <<< "${f1}" | grep -vE '^<text id="subtitle"[^>]*>[0-9 ]*</text>$')"
    printf '%s\n' "${f1}"

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
        _timep_PROCESS_LOG "${logID}" 2>&${timep_FD2}
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
                        printf '\rPROGRESS: FINISHED PROCESSING TIMEP LOG #%s of %s' "${jj}" "${timep_LOG_NUM}" >&2
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
    printf '\nGETTING TOTAL TIMES\n' >&2
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
    printf '\nREORDERING FLAMEGRAPH INPUTS\n' >&2
    #echo "$(grep -n '' <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^([0-9]+)\:/\1 /' | sort -nr -k1,1 | sed -E 's/^[0-9]+ //')" >"${timep_TMPDIR}/.log/out.flamegraph.full"
    #mapfile -t flameGraphLogA < <(sort -V "${timep_TMPDIR}"/.log/out.flamegraph.full.*)
    #cat "${flameGraphLogA[@]}" >"${timep_TMPDIR}/.log/out.flamegraph.full"
    cat "${timep_TMPDIR}"/.log/out.flamegraph.full.* >"${timep_TMPDIR}/.log/out.flamegraph.full"
    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # fold flamegraph stack traces
    printf '\nFOLDING FLAMEGRAPH INPUTS\n' >&2
    sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/\1/' <"${timep_TMPDIR}/.log/out.flamegraph.full" | grep -n '' | sort -u -t: -k2 | sort -n -t: -k1,1 | sed -E s/'^[0-9]*://' | while read -r u; do (( tw = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\2/' | sed -zE 's/\n//g') )); (( tc = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\3/' | sed -zE 's/\n//g') )); printf '%s\t%s\t%s\n' "${u}" "${tw}" "${tc}"; done >"${timep_TMPDIR}/.log/out.flamegraph"

    # copy final outputs to profiles dir

    timep_LOG_NESTING[0]="${timep_LOG_NESTING[0]%$'\n'}"

    # for flamegraph.pl inputs - convert times to screen-size-normalized CDF index (to maximize colorspace usage)
    printf '\nGENERATING COLOR MAPPING FOR FLAMEGRAPH INPUTS\n' >&2
    for fgCur in "${timep_TMPDIR}/.log/out.flamegraph.full" "${timep_TMPDIR}/.log/out.flamegraph"; do
        _timep_PROCESS_FLAMEGRAPH "${fgCur}" >"${timep_TMPDIR}/profiles/${fgCur##*\/}"
    done

    # copy out.profiles, removing unneeded extra bit on last line of profile (but before the "TOTAL RUNTIME" line
    sed -zE 's/\n\│  ([^\n]+)\n│(\n\n+TOTAL RUN TIME)/\n\└─ \1\2/' <"${timep_LOG_NESTING[0]}.out" >"${timep_TMPDIR}/profiles/out.profile.full"
    if [[ "${timep_runType}" == 'f' ]]; then
        echo "$(sed -E 's/^(│  [0-9])/│\n\1'/ <"${timep_LOG_NESTING[0]}.out.combined" | sed -zE 's/\n\│  ([^\n]+)\n\│(\n\n+TOTAL RUN TIME)/\n\└─ \1\2/')" >"${timep_LOG_NESTING[0]}.out.combined"
    fi

    # get total runtime
    read -r timep_wtimeALL timep_ctimeALL <"${timep_TMPDIR}/.log/.runtimes/${timep_LOG_NESTING[0]##*/}"
    ((timep_wtimeALL = 10#0${timep_wtimeALL//[^0-9]/}))
    ((timep_ctimeALL = 10#0${timep_ctimeALL//[^0-9]/}))

    #declare -p >/mnt/ramdisk/vars

    # combine lines/times/percentages for main (combined) profile
    printf '\nMERGING REPEATED COMMANDS IN COMBINED PROFILE\n' >&2
    mapfile -t -d '' A < <(sed -zE 's/\n\n+TOTAL RUN TIME.*$//; s/\n│\n?$/\n/; s/\n(│?)[ \t]*\n/\1\x00/g' <"${timep_LOG_NESTING[0]}.out.combined")
    A_end="$(sed -zE 's/^.*(\n│?[ \t]*\n+TOTAL RUN TIME)/\1/' <"${timep_LOG_NESTING[0]}.out.combined")"
    unset "AA"

    # for functions the top level is always just the function. So, allow combining at the 1st lvl
    [[ ${#A[@]} == 1 ]] && mapfile -t -d '' A < <(printf '%s\0' "${A[@]}" | sed -zE 's/\n([-0-9]+ [0-9]+ [0-9]+ [0-9]+ [0-9]+\t│  [0-9])/\n\x00\1/g')

    # allow top-level subshell/bg fork/function subtrees to be merged by grouping them together
    A=("${A[@]//\$"'"\\n"'"/$'\034'}")
    mapfile -t A0A < <(printf '%s\n\n' "${A[@]//$'\n'/\$"'"\\n"'"}" | sed -zE 's/\n\n([^\t]+\t-)/$'"'"'\\n'"'"'$'"'"'\\n'"'"'\1/g; s/\n\n/\n/g')
    A1A=("${A0A[@]%%:*}")
    A1A=("${A1A[@]#*$'\t'}")
    declare -A A_map
    for kk in "${!A0A[@]}"; do 
        A_map["${A1A[$kk]}"]+="${A0A[$kk]%$'\n'}"$'\n'; 
    done
    mapfile -t A_mapN < <(printf '%s\n' "${A1A[@]}" | sort -V -u)
   
    mapfile -t -d '' A < <(for kk in "${!A_mapN[@]}"; do A_tmp="${A_map["${A_mapN[$kk]}"]}"; printf '%s\n\n\n' "${A_tmp//\$"'"\\n"'"/$'\n'}"; done | sed -zE 's/\n\n\n+/\x00/g; s/\n\n/\n/g; s/\x00/\n\x00/g')
    A=("${A[@]//$'\034'/\$"'"\\n"'"}")

    spacerN=0
    while read -r nn; do

        if [[ "${nn}" == *│*\:* ]]; then
            nnn="│${nn#*│}"
            nnn="${nnn%%\:*}:"
        else
            nnn=''
        fi
        (( spacerN = ${#nnn} > spacerN ? ${#nnn} : spacerN ))
    done <"${timep_LOG_NESTING[0]}.out.combined"
    (( spacerN < 20 )) && spacerN=20

   {
        for kk in "${!A[@]}"; do
            # each element of A is one top-level sub-tree
            # L will contain unique lines (minus times) from ${A[$kk]}
            # each T[$jj] will contain all times/percentages/counts from all the different lines represented by the unique line in L[$jj] iun a newline-seperated list
            # AA is an associative array that determines/maps the unique lines to the index $jj

            printf '\rPROGRESS: FINISHED MERGING %s OF %s TOP-LEVEL COMMAND TREES' "$kk" "${#A[@]}" >&2

            T=();
            L=();
            local -A AA;
            mapfile -t A0 <<<"${A[$kk]}"
            for jj in "${!A0[@]}"; do
                t="${A0[$jj]%%$'\t'*}"
                l="${A0[$jj]#*$'\t'}"
                l0="${l/'├─ '/'│  '}"
                l0="${l/'└─ '/'│  '}"
                if [[ -z ${AA[${l@Q}]} ]]; then
                    if [[ ${AA[${l0@Q}]} ]]; then
                        AA[${l@Q}]=${AA[${l0@Q}]}
                        L[${AA[${l0@Q}]}]="${l}";
                    else
                        AA[${l@Q}]=$jj;
                        L[$jj]="${l}";
                    fi
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
                        (( tA[$jj1] = 10#0${tA[$jj1]} + 10#0${tA0[$jj1]} ));
                    done;
                    ((jj0++));
                done  <<<"${T[$jj]}"
                (( jj0 > 0 )) && {
                    (( tA[1] = 10#0${tA[1]} / ( jj0 - 1 ) ));
                    (( tA[3] = 10#0${tA[3]} / ( jj0 - 1 ) ));
                }

                # convert integer times (microseconds) and percents (# per 10000) into decimal values (seconds, %)
                printf -v wTime0 '%0.7d' "${tA[0]}"
                (( d6 = ${#wTime0} - 6 ))
                printf -v wTime '%s.%s' "${wTime0:0:${d6}}" "${wTime0:${d6}}"

                printf -v cTime0 '%0.7d' "${tA[2]}"
                (( d6 = ${#cTime0} - 6 ))
                printf -v cTime '%s.%s' "${cTime0:0:${d6}}" "${cTime0:${d6}}"

                printf -v wTimeP '%5.3d' "${tA[1]}"
                wTimeP="${wTimeP:0:3}.${wTimeP:3}"

                printf -v cTimeP '%5.3d' "${tA[3]}"
                cTimeP="${cTimeP:0:3}.${cTimeP:3}"

                count="${tA[4]}"
                Lstart="${L[$jj]%%\:*}"
                Lstart0="${Lstart%%[0-9]*}"
                (( spacerCur = spacerN - ${#Lstart} ))
                #[[ ${timep_runType} == 'f' ]] && [[ ${Lstart0} ]] && (( ${#Lstart0} < 5  )) && printf '|\n'

                Lend="${L[$jj]#*\:}"
                Lend="${Lend##*([[:space:]])}"

                # write out final profile line
                [[ ${Lstart} ]] && printf '%s:%'"${spacerCur}"'.s\t(%ss|%s%%)\t(%ss|%s%%)\t(%sx)\t%s\n' "${Lstart}" '' "${wTime}" "${wTimeP}" "${cTime}" "${cTimeP}" "${count}" "${Lend}"

            done
                if [[ "${timep_runType}" == 'f' ]] && (( kk < ${#A[@]} - 1 )); then
                    printf '│\n'
                else
                    printf '\n'
                fi
        done

        printf '\rPROGRESS: FINISHED MERGING %s OF %s TOP-LEVEL COMMAND TREES' "${#A[@]}" "${#A[@]}" >&2
        echo "${A_end}"
    } >"${timep_TMPDIR}/profiles/out.profile"

    # add another percentage showing "percent of total runtime" to final outputs
    printf '...DONE\n\nADDING PERCENT OF TOTAL TIME TO PROFILES\n' >&2

    for logPathCur in "${timep_TMPDIR}/profiles/out.profile" "${timep_TMPDIR}/profiles/out.profile.full"; do

        # split lines into start, time, percent, endr
        (( spacerN0 = spacerN > 20 ? spacerN - 20 : 0 ))
        logCurTmp="$( {
            printf -v headerTXT 'LINE.DEPTH.CMD_NUMBER%'"${spacerN0}"'.s\tCOMBINED_WALL-CLOCK_TIME_____   \tCOMBINED_CPU_TIME____________   \tCOMMAND_____________________________' ''
            printf '%s\n<line>.<depth>.<cmd>:%'"${spacerN0}"'.s\t( time | cur depth %% | total %% )   \t( time | cur depth %% | total %% )   \t(count) <command>\n%s\n\n' "${headerTXT//_/ }" '' "${headerTXT//[^$'\t']/_}"

            sed -E 's/^([^\(]+)\(([0-9\.]+)s\|([0-9\. ]+)\%\)([[:space:]]+)\(([0-9\.]+)s\|([0-9\. ]+)\%\)(.+)$/\1'$'\034''\2'$'\034''\3'$'\034''\4'$'\034''\5'$'\034''\6'$'\034''\7/' <"${logPathCur}" | while read -r lineOrig; do

                IFS=$'\034' read -r a0 tw pw s tc pc a1 <<<"${lineOrig}"

                { [[ $tw ]] && [[ $pw ]] && [[ $tc ]] && [[ $pc ]] && [[ $a1 ]]; } || {
                    # this is a blank/seperator line. re-print it unmodified
                    printf '%s\n' "${lineOrig}"
                    continue
                }

                # get percent of total runtime
                (( p1w = (10000 * 10#0${tw//[^0-9]/}) / timep_wtimeALL ))
                printf -v p1w '%5.3d' "${p1w//[^0-9]/}"
                p1w="${p1w:0:3}.${p1w:3}"

                # get percent of total cpu time
                (( p1c = (10000 * 10#0${tc//[^0-9]/}) / timep_ctimeALL ))
                printf -v p1c '%5.3d' "${p1c//[^0-9]/}"
                p1c="${p1c:0:3}.${p1c:3}"

                a00="${a0%%[0-9\.]*}";

                if [[ "${timep_runType}" == 'f' ]]; then
                    a000="${a00#*[├│└] }"
                else
                    a000="${a00}"
                fi

                a1="${a1#*\(}"

                # if percents are equal (i.e., it is a top-level log line) reprint unmodified. Otherwise add in new "percent of total" field.
                if [[ "${tw}" == '0.000001' ]] && [[ "${tc}" == '0.000001' ]] && [[ "${a0}" == *' .0:'* ]]  && { [[ "${a1}" == $'\t(1x)' ]] || [[ "${a1}" == $'\t\t{{  |  |  }}\twall:(->) cpu:(->)' ]]; }; then
                            continue
                elif [[ "${pw}" == "${p1w}" ]] && [[ "${pc}" == "${p1c}" ]] && { { [[ "${timep_runType}" == 'f' ]] && (( "${#a00}" <= 5 )); } || (( "${#a00}" <= 1 )); }; then
                    printf '%s( %ss |%s%% )          %s( %ss |%s%% )             \t(%sx)\t%s%s\n' "${a0}" "${tw}"  "${pw}" "${s}" "${tc}" "${pc}" "${a1%%x\)$'\t'*}" "${a000}" "${a1#*x\)$'\t'}"
                else
                    printf '%s( %ss |%s%% |%s%% )   %s( %ss |%s%% |%s%% )    \t(%sx)\t%s%s\n' "${a0}" "${tw}" "${pw}" "${p1w}" "${s}" "${tc}" "${pc}" "${p1c}" "${a1%%x\)$'\t'*}" "${a000}" "${a1#*x\)$'\t'}"
                fi
            done
        } | grep -n '' | sed -E s/':'/' '/ | sort -k2)"
        logCurTmp="$({ grep -vE '^[0-9]+[[:space:]]*│?$'<<<"${logCurTmp}" | sort -u -k2; grep -E '^[0-9]+[[:space:]]*│?$'<<<"${logCurTmp}"; } | sort -n -k1,1 | sed -E 's/^[0-9]+ //; s/^(│?)[[:space:]]+$/\1/' | sed -zE 's/\n\n+/\n\n/g')"

        # remove some (all?) of the spurious '(&)' marks caused by process substitutions and remove double logged command in full profiles
        if [[ "${logPathCur}" == "${timep_TMPDIR}/profiles/out.profile.full" ]]; then
            logCurTmp="$(sed -E 's/( cpu\:\([0-9]*\-\>[0-9]*\)).*$/\1/' <<<"${logCurTmp}")"
        else
            while read -r nn; do
                logCurTmp="$(sed -E 's/^('"${nn}"'.*) \(\&\)$/\1/' <<<"${logCurTmp}")"
            done < <(grep -E '\\\(\\\^\\\)$' <<<"${logCurTmp}" | sed -E 's/\:.*$//; s/^.* //; s/\..*$//' | sort -u)
            # primary sort by lineno remove spaces between top-level commands of thge same line
            mapfile -t -d '' logCurTmpA < <(sed -zE 's/\n\n([0-9])/\x00\1/g;s/\n\nTOTAL/\x00TOTAL/' <<<"${logCurTmp}" | sort -z -n)
            logCurTmp="$(printf '%s\n' "${logCurTmpA[0]}" "${logCurTmpA[2]}"
                kk0=2
                for (( kk=3; kk<${#A[@]}; kk++)); do
                    { [[ ${logCurTmpA[$kk]%%.*} ]] && [[ ${logCurTmpA[$kk0]%%.*} ]] && [[ "${logCurTmpA[$kk]%%.*}" == "${logCurTmpA[$kk0]%%.*}" ]]; } || printf '\n'
                    printf '%s\n' "${logCurTmpA[$kk]}"
                    kk0="$kk"
                done
            printf '\n%s\n' "${logCurTmpA[1]}")"
        fi

        logCurTmp="$(sed -E 's/ \\\(\\\^\\\)$//; s/(\t\([0-9]+x\))[ \t]+/\1\t/' <<<"${logCurTmp}" | sed -zE 's/\n\n\n+/\n\n\n/')"

        [[ ${timep_runType} == 'f' ]] && logCurTmp="$(printf -v spacerS 'LINE.DEPTH.CMD_NUMBER%'"${spacerN0}"'.s\tCOMBINED_WALL-CLOCK_TIME_____   \tCOMBINED_CPU_TIME____________   \t       \t' '' 
            spacerS="${spacerS//[^$'\t']/ }"
            head -n 5 <<<"${logCurTmp}"
            tail -n +6 <<<"${logCurTmp}" | sed -E ' s/(\t\([0-9]+x\)\t)/\1│  /; s/^│[ \t]*$/│'"$(printf "${spacerS}")"'│/' | sed -zE 's/│  ([^│]+)$/└─ \1/')"

        echo "${logCurTmp}" >"${logPathCur}"
    done

    # if '--flame' flag given create flamegraphs
    ${timep_flameGraphFlag} && {
        printf '\nGENERATING FLAMEGRAPHS\n' >&2

        # FUTURE TO-DO: investigate the possiblity of making each frame's height non-uniform and instead based on another (3rd) orthogonal data source

        { [[ ${timep_flameGraphPath} ]] && [[ -e ${timep_flameGraphPath} ]]; } || if type -p "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl" &>/dev/null; then
            timep_flameGraphPath="/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
        else
            _timep_SETUP
        fi

        [[ ${timep_flameGraphPath} ]] && [[ -e ${timep_flameGraphPath} ]] && {
            chmod +x "${timep_flameGraphPath}"

            case "${timep_runType}" in
                f) timep_TITLE="${timep_funcName}" ;;
                s) timep_TITLE="${timep_runCmdPath}" ;;
                c) timep_TITLE='Various Commands' ;;
            esac

            mkdir -p "${timep_TMPDIR}/profiles/flamegraphs"

            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --subtitle '_THIS_IS_A_TEMP_SUBTITLE_' --countname "us" --fontsize 10  --color timep <"${timep_TMPDIR}/profiles/out.flamegraph" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"            
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --subtitle '_THIS_IS_A_TEMP_SUBTITLE_' --countname "us" --fontsize 10  --color timepr <"${timep_TMPDIR}/profiles/out.flamegraph" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.svg"
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --countname "us" --fontsize 10  --color timepr --inverted <"${timep_TMPDIR}/profiles/out.flamegraph" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.R.svg"

            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --subtitle '_THIS_IS_A_TEMP_SUBTITLE_' --countname "us" --fontsize 10 --color timep <"${timep_TMPDIR}/profiles/out.flamegraph.full" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.svg"
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --countname "us" --fontsize 10 --color timep --inverted <"${timep_TMPDIR}/profiles/out.flamegraph.full" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.R.svg"
            "${timep_flameGraphPath}" --title "FlameGraph: ${timep_TITLE}" --width 4096 --height 24 --flamechart --bgcolors=grey --countname "us" --fontsize 10 --color timepr --inverted <"${timep_TMPDIR}/profiles/out.flamegraph.full" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg"

            printf '\nCOMBINING FLAMEGRAPHS INTO VERTICALLY STACKED SVG IMAGES\n' >&2

            svgCombineInd=0

            _timep_COMBINE_FLAMEGRAPH --type="f" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg"
            _timep_COMBINE_FLAMEGRAPH --type="F" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg"

            _timep_COMBINE_FLAMEGRAPH --type="w" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg"
            _timep_COMBINE_FLAMEGRAPH --type="c" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg"

            _timep_COMBINE_FLAMEGRAPH --type="fF" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.svg"
            _timep_COMBINE_FLAMEGRAPH --type="wc"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.R.svg"

            printf '...DONE!\n' >&2
        }
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    [[ "${timep_outType}" == *' ff '* ]] && {
        printf '\n\nFLAMEGRAPH FULL STACK TRACE:\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.flamegraph.full"
    }

    [[ "${timep_outType}" == *' f '* ]] && {
        printf '\n\nFLAMEGRAPH FOLDED STACK TRACE:\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.flamegraph"
    }

    [[ "${timep_outType}" == *' pf '* ]] && {
        printf '\n\nOUTPUT PROFILE (FULL):\n\n' >&2
        cat "${timep_TMPDIR}/profiles/out.profile.full"
    }

    [[ "${timep_outType}" == *' p '* ]] && {
        printf '\n\nOUTPUT PROFILE (COMBINED):\n\n' >&2
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
    printf '\n\nTHE PROFILE HAS FINISHED PROCESSING!\nAll profiles can be found at "%s"' "${timep_TMPDIR}/profiles" >&2
    type -p ln &>/dev/null && ln -sf "${timep_TMPDIR}/profiles" ./timep.profiles && printf ' or accessed via the symlink "./timep.profiles"' >&2
    ${timep_flameGraphFlag} && [[ "${timep_flameGraphPath}" ]] && printf '\nAll flamegraphs can be found in the "flamegraphs" sub-directory ("%s")' "${timep_TMPDIR}/profiles/flamegraphs"  >&2
    printf '\n\n'  >&2

    ) {timep_FD0}<&0 {timep_FD1}>&1 {timep_FD2}>&2 {fd_sleep}<><(:)
}

_timep_SETUP() {
    local -A b64
    local -a filePathA 
    local ARCH t tt k kk timep_git_branch outDir filePath fileCur downloadFlag localFlag gotFlamegraphFlag gotLoadableFlag b b0 doneFlag

    shopt -s extglob

    [[ "${FUNCNAME[1]}" == 'timep' ]] || local timep_flameGraphPath

_timep_base64_to_file() {
    local b b0 k kk fd0 fd1 out0 out outN nnSum noVerifyFlag doneFlag IFS LOCALE LC_ALL
    local compressV compressI outA

    LOCALE=C
    LC_ALL=C

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

    read -r -d $'\034' -u "${fd0}" out0
    read -r -d '' -u "${fd0}" out

    if [[ -z ${out} ]]; then
        out="${out0}"
        noVerifyFlag=true
    else
        {
            read -r outN nnSum
            mapfile -t compressV 
        } <<<"${out0}"

        (( ${#compressV[@]} > 0 )) && {
            compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')

            for (( kk=${#compressV[@]}-1; kk>=0; kk-- )); do
                out="${out//"${compressI[$kk]}"/"${compressV[$kk]}"}"
            done
        }
        noVerifyFlag=false
        #declare -p out outN nnSum0 compressV >&2
    fi

    printf "$(while read -r -N 4 b; do
        b="${b%$'\n'}"    
        (( b = 64#${b} ))
        printf -v b '%0.6X' "${b}"
        printf '\\x%s' "${b:0:2}" "${b:2:2}" "${b:4}";
        ${noVerifyFlag} || {
        (( outN = outN - 6 ))
        (( nnSum = nnSum - 16#${b} ))
        if (( outN < 6 )); then
           (( outN == 0 )) && break
            read -r -N ${outN} b
            case "${outN}" in 
                5) printf '\\x%s' "${b:0:2}" "${b:2:2}" "${b:4}" ;;
                3|4) printf '\\x%s' "${b:0:2}" "${b:2}" ;;
                1|2) printf '\\x%s' "${b}" ;;
            esac
            outN=0
            (( nnSum = nnSum - 16#${b} ))
            break
        fi
        }
    done <<<"${out}"
    ${noVerifyFlag} || [[ "${nnSum}" == '0' ]] || { printf '\n\nWARNING: EXTRACTED LOADABLE "%s" : CHECKSUM DOES NOT MATCH EXPECTED VALUE!!!\n         DO NOT CONTINUE UNLESS THIS WAS EXPECTED!!!\n\n' "${1:-\(STDOUT\)}" >&2; sleep 5; }
    )" >&"${fd1}"


# { read -r -p 'DO YOU WANT TO CONTINUE? TO CONTINUE, TYPE "YES": ' -t 10 -N 3 <$"{timep_PTY_PATH}" && [[ "$REPLY" == 'YES' ]]; } || exit 1;
    
    exec {fd0}>&-
    exec {fd1}>&-

    #echo "DEBUG: ${outN} ${#outA[@]} | ${nnSum0} ${nnSum}" >&2

    (( $# > 0 )) && chmod +x "${1}"
}

    downloadFlag=false
    localFlag=false 
    forceFlag=false
    outDir="/dev/shm/.timep/lib/${USER}-${EUID}"

    while true; do 
        case "${1}" in 
            -?(-)d?(ownload)*) case "${1}" in
                -?(-)d?(ownload)) downloadFlag=true; localFlag=true; timep_git_branch='main'  ;;
                -?(-)d?(ownload)?(=)local)  downloadFlag=true; localFlag=true  ;;
                -?(-)d?(ownload)?(=)*local*) downloadFlag=true; localFlag=true;  timep_git_branch="${1#-?(-)d?(ownload)?(=)}"; timep_git_branch="${timep_git_branch//?(\,)local?(\,)/}"; timep_git_branch="${timep_git_branch//[\"\']/}"  ;;
                -?(-)d?(ownload)?(=)*) downloadFlag=true;  localFlag=false; timep_git_branch="${1#-?(-)d?(ownload)?(=)}"  ;;
            esac  ;;
            -?(-)o?(utput)?(=)*)  outDir="${1#-?(-)o?(utput)?(=)}"  ;;
            -?(-)f?(orce)) forceFlag=true  ;;
            *)  break  ;;
        esac
        shift 1 
    done

    gotFlamegraphFlag=false
    gotLoadableFlag=false

    mkdir --mode=777 -p "/dev/shm/.timep"
    mkdir --mode=777 -p "/dev/shm/.timep/lib"
    mkdir --mode 700 -p "${outDir}"

    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH//\:${outDir}?(\/):/:}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH#${outDir}?(\/)?(:)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH%?(\:)${outDir}?(\/)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}${BASH_LOADABLES_PATH:+:}${outDir}"
    export BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}"

    PATH="${PATH//\:${outDir}?(\/):/:}"
    PATH="${PATH#${outDir}?(\/)?(:)}"
    PATH="${PATH%?(\:)${outDir}?(\/)}"
    PATH="${PATH}${PATH:+:}${outDir}"
    export PATH="${PATH}"

    ARCH="$(uname -m)"

    if ${localFlag}; then
        for fileCur in 'timep.so' 'timep_flamegraph.pl'; do
            filePath=''
            filePathA=()
            if ${localFlag} && PATH="${PATH}:${outDir}:${PWD}$([[ -d "${PWD}/timep" ]] && printf ':%s/timep' "${PWD}")" type -p -a "${fileCur}" &>/dev/null; then
                mapfile -t filePathA < <(PATH="${PATH}:${outDir}:${PWD}$([[ -d "${PWD}/timep" ]] && printf ':%s/timep' "${PWD}")" type -p -a "${fileCur}")
                mapfile -t filePathA < <(printf '%s\n' "${filePathA[@]}" | grep -F "${outDir}"; printf '%s\n' "${filePathA[@]}" | grep -vF  "${outDir}")
                if (( ${#filePathA[@]} > 1 )) && type -p date &>/dev/null; then
                    t=$(date -r "${filePathA[0]}" '+%s')
                    k=0
                    for (( kk=1; kk<${#filePathA[@]}; kk++ )); do
                        tt=$(date -r "${filePathA[$kk]}" '+%s')
                        (( tt > t )) && k=$kk
                    done
                    filePath="${filePathA[$k]}"
                elif (( ${#filePathA[@]} > 0 )); then
                    filePath="${filePathA[0]}"
                fi
                [[ "${filePath}" ]] && {
                    chmod +x "${filePath}"
                    [[ "${filePath}" == "${outDir}/${fileCur}" ]] || {
                        \cp -f "${filePath}" "${outDir}/${fileCur}"
                        chmod +x "${outDir}/${fileCur}"
                    }
                    if [[ "${filePath}" == *'timep_flamegraph' ]]; then
                        gotFlamegraphFlag=true
                    elif [[ "${filePath}" == *'timep.so' ]]; then
                        enable -f "${outDir}/timep.so" getCPUtime && [[ $(getCPUtime) ]] && gotLoadableFlag=true
                    fi
                }
            fi
        done
    fi

    if ${downloadFlag} && ! { ${gotFlamegraphFlag} && ${gotLoadableFlag}; }; then

        : "${timep_git_branch:=main}"

        ${gotFlamegraphFlag} || {
            type -p wget &>/dev/null && wget https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/LIB/timep_flamegraph.pl -O "${outDir}/timep_flamegraph.pl" &>/dev/null
            type -p "${outDir}/timep_flamegraph.pl" &>/dev/null || {
                type -p curl &>/dev/null && curl https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/LIB/timep_flamegraph.pl >"${outDir}/timep_flamegraph.pl" 2>/dev/null
            }

            if type -p "${outDir}/timep_flamegraph.pl" &>/dev/null; then
                timep_flameGraphPath="${outDir}/timep_flamegraph.pl"
                gotFlamegraphFlag=true
                chmod +x "${outDir}/timep_flamegraph.pl"
            fi
        }
        
        ${gotLoadableFlag} || {
            type -p wget &>/dev/null && wget https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/LIB/BIN/${ARCH}/timep.so -O "${outDir}/timep.so" &>/dev/null
            type -p "${outDir}/timep.so" &>/dev/null || {
                type -p curl &>/dev/null && curl https://raw.githubusercontent.com/jkool702/timep/${timep_git_branch:-main}/LIB/BIN/${ARCH}/timep.so >"${outDir}/timep.so" 2>/dev/null
            }

            if type -p "${outDir}/timep.so" &>/dev/null; then
                chmod +x "${outDir}/timep.so"
                enable -f "${outDir}/timep.so" getCPUtime && [[ $(getCPUtime) ]] && gotLoadableFlag=true
            fi
        }
    fi

    if ${forceFlag} || ! { ${gotFlamegraphFlag} && ${gotLoadableFlag}; }; then

        # note: this base64 binary blob is generatred by using _timep_base64_to_file  on the arch-specific coimpiled shared .so file for the builtin.
        # passing this blob to the stdin of _timep_base64_to_file <path> will restore the original .so file (needed for the loadable builtin to get cpu time with getCPUtime) at <path>.
        # the .so file, source code and compile instructions are all available in the "timep" repo on github (https://github.com/jkool702/timep) at LOADABLES/SRC/timep.c.
        # The compiled .so file that this binary blob re-creates is avaiilable in the repo at LIB/LOADABLES/BIN/$ARCH/timep.so. timep_flamegraph is available at LIB/timep_flamegraph.so.

        declare -A b64


b64[aarch64]=$'141957 4671058\n00000000000000000000000000\n0sSlQtn1voDlFr7hFrBZQqmRBs\n0NcGZlJ2GvtzgWDPkQ6F_nLnGc\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n069RqmNQqmVvpn9OrT8\n000000000000000000\n00000000000000000\n0000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n04Poj4\n000000\n00000\n0000\n000\n0g\n00\034.1_hkN60w41[|M2T|4{4[0U1[/|U|s/|t01M0/.k~]3w4g;e0h[1;1.1w?e3Z:UfQ1,3w_g4,103:60c[4;8.6.@fQ;3U_g4,fzZ/,M04;30/:w]1>g?38/;cw1:O04:A]2g]1]1gVnhA1.2/:81]w4:4g]h}4]57Bt6g6~~>1}kKlQp/?3w_g;e3Z/,UfQ1;w0w;202]g]4.5>c?17jBk0Qr7Y_j6AuwLnCzsqXTSeAtqFsrQ,w?1c.1.1w.101|11?4M:2GwUPNEjhFtg~[3|A0K0w$301o0s|2-1>w#8s.g#4o.y#5k.i#9k.i#ck.g#7U.i~4.w#9U.g#6c.i#bU.i#aM.g#2M.w#9s.i#6Q.i#f4.g#cI.i|I0N0Q:A]dY.h01o0M|2;M}1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO(0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn|u6pOpmk`01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1Iqm9zbDdLbzo0hQN9gAdvcyUNdM]1|4|w02|80/02|40/02|80/01|8|w01|40/;g010fQ.g]9uhBwo?801M4;3w_g4;c4:M0E;3E_g4;c4:r0E;3M_g4;c4:YfQ1,1M|8;c4:k0Y;1U|8;c4:E0U;2?8;c4:k0Y;28|8;c4:O0U;2g|8;c4:40Y;2o|8;c4:k0Y;2w|8;c4:m0Y;2E|8;c4:G0Y;2M|8;c4:k0Y;3?8;c4:s0U;38|8;c4:g0Q;3o|8;c4:s|2,3w|8;c4]1:30_M4;44?3{38_M4;44?5{3g_M4;44?a{3o_M4;44?f{3w_M4;44?k)8;84?4=8|8;84?5=g|8;84?6=o|8;84?7=w|8;84?8=E|8;84?9=M|8;84?a=U|8;84?b{1?8;84?c{18|8;84?d{1g|8;84?e{1o|8;84?g{1w|8;84?h{1E|8;84?i=_8Mfl_nK_GvQ30957|2k_nL1GbYz0Zn|R_m+Y7K_Gv?f0h_AvV4e8_Ai027Zov80fl7O03RhYw0Zkg/2g4g90@h02094w0x_m4040A146gfAg8w2h808vRx01090h2A3V4480Ai027Zog/2g4gV0@h1y094w0x_m4040A14igfAgww2h808vRx01090h5A3V4a80Ai027Zog/2g4hF0@h32094w0x_m4040A14ugfAgUw2h808vRx01090h8A3V4081Ai027Zog/2g4ip0@h0y0p4w0x_m4040A14GgfAggw6h808vRx01090hbA3V4681Ai027Zog/2g4j90@h220p4w0x_m4040A14SgfAgEw6h808vRK?f|W4vVg?JdT__Nv|R_m7O03RhYw0Zkv80fl|40A03|V41/2g8s03AjY|eL?1kUg|Y27wh_Bx|2QY0c1Gw027Zr|R_m|40A03|V41/2g8s03Ai4|cIy_7_jggO1yO7Ygpf1|2QUw|Y4bIh_By|2QY0c2Gw027Zr|R_m_nK@GvQ3097P2M3V4M40A632gPB0/0TU?Y03Ah_C?2QU?Y030dV6u__@nSv__BO|w59wMwcVYMJ0@vRXMGz|R_m7O03RhYw0Zkv80flTf__5NYw0Zkv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnZuWCF_gc0Avdj0qAv301Nb0U0lflr0GDToMeF7Mg0sgQ605gQ143V5g20QE82g3Bv|1NB1avCxYc075x1g1kdgx0@vu30F7x0NuGE090ehY|75|81iJhavCDD__Vvw1|QUoc3Ag|w5bxbM3Vzf__BY0d03nw4QWF0Ay8QLofjWDy0q3OUiZ0@g/0FLm0war|204Jo20UK1__@nYMc0aI0403ie__@n|10Kjc0w59L__@nUgc0Gw?9?3Chl___B_lrgGDToQeFU0cjaLdjgqDZuZuEM0dvRxg0wd8l083iZUc2Ak|w5bx0NuGk___BS3X_PnS2QGFUfCuQC1GLf83i8ziE7jjYKc1Efa06ejOUoc3Ak1Yg9I0_4uj0LO2OM|w1bm2wernf__B_c302G0@_YRU1deGg58ydbz2Q@FUg6wYw/0pJz|6roM02ySc05EJk1g2Q@8c1AvAz0fAp|2geocVAu836qE1283iU0coGzn__Vvx0NyGU0ckGw80w591__@nRg80Jec35GHy0NCGU0cnGw48wd8H__@nUgcnGK035qE2081id___B_AzgfDw!03nZo?2gcM20kw|e94g__@nK___5_AzgfDw!03nZrx0MeG.A02wep4M__@nU0cjaLlrgGDToQeFYRd1GvRXRWz|R_mbv__BM0/bAP081i3L__B@430aE?2g080UAvr@_VvRmQaFZSd3Gp___Nsv80fl7O03RvRXLqDZ0M2hUrc0Avdj0qAk__@n/|A1g/fDP0M2G8s0VAu035aEa__@no040du0LgbDx0NeGmL__B_g302Hw0NeGX_X_B@0352HPkQ6F_nL3Gc03nZrx0NiG.A?eF7n_L@nU0cjGzg0w5bA_L@nU0ckaLdjgqDZuYeEM0dvRK?f|Y4vV_nK_Gi40w5bZ0M2h_LX_BM|w5bZuY6EM0dvRzYz0ZnZuX@F_gc0AvRXMqy_8MflM0dvRCtBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM|pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP,1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g>9mNIp0E?1Dpnh3k5lQqmRB:t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD,1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng|kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK,19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK:pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng016McXh>s?3w@v__n.13W__ZM.jfH__Ug?2w@L__G.c3W___>8fT__SM1|2A_v__D04:g}5Wkw04u1U16MMv01>o.vfD__P}4.2M?2o@v__f}w.g.c3V__Z8>44e89Q4Dwd2AM9eTJTj3w>k.p.f3V__Y4{2E.v.fzV__Zo0w?44eY0atbFUJgVcIB2J2ByClaA6o9VsErdrlgtzngZXtQZge044eY0ajb9gHBiGmapsEC2utbFUJoFACltB2RJl1Sdt2TJTjR0U/gXM0FcIB2KtbFUJhpkGByCna9wDCip1SkbmRk7oRQbuTtfk3w113L02AOOkaVkGByCna9wDDiWubkoaRJl1Sdt2TJTjR0U/gJ9RJl1Sds0b.2w1|2I@___x>113z2t1FU5gVc4B0dh2JXtQZge044biJXtQZge.7.5w1._f__9>133x2t0FU1htXt3w~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+302w;6Ma:YfQ1;1]fQ]3]2U2]Q]W0Q:p]e3Z/,6M]8]1E]WfQ1;s}w]ZvX_rM.3M/:k]4/:6]1w2:2w]i/:I]6}3]ez_/;w:1g/;1g]1M]n]6w7:1M:1M1g:w]@04:9]1w]_L__rM.1g1g;f___SY,g:3M__ZL>285:@v__rM>g~~~~[0@fQ1~~~{U0w;3w2:e08:U0w;3w2:e08:U0w;3w2:e08:U0w;3w2:e08:U0w;3w2:50f:E0U;1g3M;cwe:40Y;1g3M;5wf:G0Y;1g3M)s0U;103g:4]s|2:4*hQd3ey0EhQVlai0Nd2UObz4wcz0Od30Vcj8wa59Bp218ongwgT9LsTcwcjgKcyUNbj8F|w.g,4|4t19<0U0A;3Q2g:w.g,4|4t19<0K0w;382]w.g,4|4t19<0W0Q;3Q3g:w.g,4|4t19<?E;342w:w.g,4|4t19<0W0Q;3E3g:w.g,4|4t19<0W0Q;3E3g:w.g,4|4t19<0O0w;3k2]w.g,4|4t19<0Z0Q]3w~#M010cw1#M020f01#M0301w2#M040104#M050285#M060505#M070705#M0806w7#M090bw8#M0a0e08#M0b0e09#M0c0ewd#M0d?e#M0e02/#M0f06wg#M/0e3Z/%M0h0ezZ/%M0i0f3Z/%M0j0fzZ/%M0k0bz_/%M0l0ez_/%M0m07?w%M0n0f?w%M0o~?M0p0fw|w-1.103N_M^8;b0e09*b>w0b0e09:5}8;90bw8*8;c0ewd*o.103N_M^8;90cw8*8;c0fgd*v.103N_M^8;b?a*G>w0b?a*I>w0b030a*_;i0f3Z/+12>w0b06Ma)1o>g0n0f?w;g]_;h0ezZ/+1A>g0h0ezZ/+2b>w0b0c0a*_;g0e3Z/+2n>g/0e3Z/-_;f07Mg*_;n0f?w^0103N_M^_;d?e*8;b0e0a)2S>w0b0e0a:m08;36>w0b040d:x}_;m07?w+3k>g0m07?w,k}_;f0e/*v.103N_M^_;f0dMh)3z>g0f0dMh$103N_M&3N>w0c0ewd)3T>g0i0f3Z/-4/?g3N__zZ/-d/>e02/*w/?g0m0f?w-I/?g3N_Xz_/+12/?w090bw8*8;a0e08)18/|8#1A/|4#1O/|8w$2c/|4w$2B/|4w0b0cgd:9]2V/|4w$3d/|4#3j/|4w$3D/|8#3S/|4~40w|4w#p0w|4w#H0w|4~Z0w|8#2X/|4w$1n0w|4w$1P0w|4#1_0w|4g0m0c?w,c[oT9QqiVL02hU06dxr6NvtSlxqRZCrw1zsDhKbCY0oT9QsThRpCoKoM1Apn9BpSBPt6lOnThJnSdIrSVBsM0Ap01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz|nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK06tBt4dglnhFrmlvp6Zz05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB(0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs`01PrD1OqmVQpA17j4B2gRYObz4T07xCsClB07dQsClOsCZOg4tcik93nP8Kcjs0nRZDrmZKnTdQon9QnRY0oCBKp5ZSon9Fom9Ipg1DpnhOtndxpSl0hQN9gAdvcyUNdM1Pt79zrn10hQN9gAdvcyUNdM1JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It|KqmVFt|Kt6lUt|KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~~)6M.s.2]cw1:O04:A&1&2U?3S__ZL0w:3M/;f01:a}3}w&U.2M.8]608:o0w;fw1:1>c.8]1w]g>c.2]104:4/:i/*g*4w?3___ZL0w]y1g;285:aw]3}8}w:1l._L__rM8]k0k;1g1g;2}1>4.8&p>g.2]705:s0k;3U/:c]2}o]6U.4.gw:1E1M;6w7:k04:3.5g.w]6]1U>g.o]K0w;2U2:1M&4&sM.4.6]e08:U0w}g)4&7U.1.1w:3w2g;e09:2/)2&24>g.o]W0Q;3E3g;1w&4&yw.4.O[e}U:w0w)2}1]98.1>w]w4:2/:h^g*2w>g.8]q1:1E4:7w1*8&Gw.U.3]e3Z/,UfQ:8&2}8]bo.f>M:3E_g4,ezZ:2^w]2]32>g.c]YfQ1,3M_g:w&8&PM.o.3]fzZ/,@fQ;30/:g]2}g]dw.1>M:2U_M4,bz_:c^w]2]3t>g.c]WfY1,3E_M;8w&8}w]Vw.4.3]7?w,s|1,2^4&eM.8>M:3M|8,f?g,2^4*3N>g?3&3M|4,3g&1}4]@w.s{fw|w,9041;w/)1^4.2#4w2/,40w:r.h>w]6}9>M$1o2w4,942*1&4g.c#WgM1;g/*g&'
b64[i686]=$'22973 4969695\n069RqmNQqmVvpn9OrT8\n000000000000000000\n0hQN9gAdvcyUNbzc\n000000000000000\n00000000000000\n0hQN9gAdvcyUM\n0000000000000\n0913FM2hMWw\n0000000000\n17gig1cS4N\n000000000\n00000000\nu6pOpmk\n000000\n04Poj4\n0ZWMAG\n00000\n0AweA\n0923G\nhQ4A\n0000\n000\n04\n00\n0g\n0w\n01\034<1_hkN6?41^M030>)d<2ME-d.w.E0a.u|Q.g`.M7,c1M.1g}g,1}1}g<4,x/.8g8,4}1<4,3Q7w.Z2U.fgK.2c?.A>,o}4<w}v<bM,2Y.e<3w<1w<g<4<t>.7g1.1Q?.9<2g<4<1}g,3U5g.@1k.fwl,E<a}g<4<k@lQpfwl.3U5g.@1k.2w<E<1}g,1gVnhA81o.20m,w5w.d<3g<4<1<57Bt6g`)o<g<kKlQpfgu.3Qbw.Z2U,M1,c?.1}4<4<5}c,17jBk0eaeAuILYFTReH4_H6yTL39MMbFVjw@M8WfY,21MRcK.2bw_j___@5M7g2_Z23N0xrMM*_Xc4<_Wc8)f@z3<6w}Wu3_____EN<1E2<eDg_____Wck<q1<3FMf____@z6<6wo<Wr3_____ENM,1E8<eCw_____Wcw<q2w,3FAf____@z9<6wM<Wo3_____EOw,1Ee<eBM_____WcI<q4<3Fof____@zc<6x8<Wl3_____EPg,1Ek<eB0_____WcU<q5w,3Fcf____@zf<6xw<Wi3___@b72j3pF1CA6qgpF1CA6qgWeg,21MzYJ.2dyEM,2dwEM<VO7gtyUbI____xs1Q4Rm9VofI557_Q8f44cD3bERQ9w33zrgC}eyA<wsb_b,loDBkUSaz<8S2z<8fI12D8ysf1W1_1@M81Sd7Ut1ibALz___@5QDgaw@M8k57_QEf448Jt_cD3bESQ9w<2gYMYu@Rm9VlfEk____U73FOM.8fI182Xz}1Ra8K3Yf___Un0t1a3X0OdwMz___ZgWaz@__@3N13Ecf___Yq3z}6bnvP9MURQ9w3P3NXXWlv___@b52j3pF2gllvEj0c.877jiM.5pjwuPY<w_w33U_y?.w_w1vySbqwgNOst491g}w7Q,Z4WofU0TkuyQ88w3w03Qn8ykMA5eIfbERQ9w37h2gk}37Jw@M8yvKdh2hMykgA851G0KzN_v__wYggxs0fxgU1.2Ug48f0ftI96ybt2hIys6UQQRy48DjZ@X1_x@9Qc7U1yDMzrgAG<9A1Mh7jykMA28Bs90O3X0y9@RpG_@wz_L__ykgA48f448n03Umc?.yUMAH<bx?wY[<8DbMvIv0s6Ug48f|7jZWMAI}78yUMAJ<17qysL1@NY1O17q0QgA21dk90O5Xg@46>.8fI38DXkESnQen__R1iylgAd6F0zngAh5rEuLT__Uf476E0lBnEnLT__UJQ92i3N125ZDgGw@Mc_TgA6fZQ91z_t2gMqA2br2gQlux8_v__wYgsqw1llKwI_v__wYggyMgAwsjY<mRVvnsedtw23X0ydJ2iM<lCE0W4rZ__@3N125M0@5SM,bx?wY[<8D1yUgAH<8DjCg71K4123M0hQ_uI9b<2932i9n2g4ys6bx2iQ}MMAytcjn2g4Cg714te9j2g8ylMA3eCU_L__bESQ9w<23X0OdxM3A__@9@R3Eb_P__Uf44cs49>,2b12i1NfM,1rnBZtMUSQ9w<23X0i9@R9gzovlVv__kewd_f__wYggyMgAwsjY<mRVvnsedt2o0W6fY__@3X0P_cewF_f__mBBgzoswVf__keza@___wYggWVAKzngC0ewX_f__w@Mc_P3E0vP__RVtk8S7Jen__R3EELL__Uf44eBK____bESQ9w<1CA5tmk@x8_f__wsesag.w@MozkgA553_t2gIW07Y__@be8D6m8S3S@n__RFgl@xe@___wYggxs1R9UJ490O9YKwc_v__ysu3X0NmW77X__@3N229@5JunYcKzrgC}8fI28S3VKn__Ru_?,53E6_L__Uf44eLczro}k@za@___wscuag.w@Mgqw7_I_P____EFfL__Uf46370mYebf2j305e3X0zED_L__U73YOw.8f425L3`````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````#w,14<1<1g,244020h)aG3zf6xd6BR`,bU$18<g#w<x#4<6Y$18,1l#i<Ng$4<4o$28,2z#i}g$8<7o$1<1J#i<Aw$4w,aM$1}I#w<oM$4w,f4$1<3b<Q0o.2c<i.g0TM,6wM,o<4g0n.1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB~0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn.+0sSlQtn1voDlFr7hFrBZQqmRBs|Dpnh3k5lQqmRBnTdQsDlzt|xp6hvoDlFr7hFrw1Iqm9zbDdLbzo!0hQN9gAdvcyUNdM17j4B2gRYObz}20>.g02.c.g>.8.g|.8.w|0>.w|0>.g<4.M3Z<4)1P7SA9,4.s1,g<BV6m1w,M0j?0><11FqgQ,807w4=03Qbw.2<fwK,8<_2U,w,10c,2<4gM,8<i3<w,1cc,2<50M,8<l3<w,1oc,2<5MM,8<o3<w,1Ec,2<6MM,8<t3<w,1Uc,2<e0L,6/.V2Y,o7.3EbM.1wA.eML,63w.Y2Y,oi<c,1M4,gM,70M.23<s4,cc,1Mk.10M,71w.53<s7,oc,1Mw.1MM,72w.83<sb,Ac,1MM.2wM,73g.b3<sf,Mc,1N,6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM.pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng.kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw<19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U0imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw.pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc09mNIp.Br6NA2w1Dpnh3k5lQqmRB07hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M<g<o<1g,4telg|.7|}4<2.7|}4<16McXc}k,2wW___j<83J__ZM<cf3__Y|.2MYf__908.dfM__Zc/.5*1uB8.nM80hIc10i8?.8<1M,1cW___U=e24oe34Ef2Tg4u._6zIGcygyj>0>}8Xv__Fw8,113wy50A4e38s3j0Ugxwh13xi31koeA082i0Wo0AIeD:02i0Wg/913Fw2gMWs0A8eE09c3F020BseD0933G02hMWA0A4eG0963GM2hgWM0AweB0923Fw2ggWs0A4eE09c3F02hMWs0AgeE0943Gg2h0WE0A8eH0953H02i0Wk0A8eC0913FM2ggWw]0992wUkgsce44763wN1NMU8gske14gbgMWo0AweD:02i0Wg/9C3FM2igWw]09g2wUkgsce44763wN1NMU8gske14wbgMWk0AceC&]0992wUkgsce44763wN1NMU8gske14kbi0Ws0A8eE0963FM2ggWo0A4eD0973G02i0Wg0AYeD:02hwWs0A4eC&]080o<9|.1EXL__uw<113wy70A4e38o3ggUgwMhe3yx53yN43z1a3yN73yx13yN13z183y1k3yN13z183x13MMUcgsoe24773wh93y2318o3xM933yx73yN63z183y,2g,3Q?.xeX__Oc}ggU8wM9e3xx23xN63y183wx3MMU4,g<708.7_K__Y4``````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````#0A0c0>03.3Ybw,g,fQ<c<C>,Q,3U1w.6g,fgK,r<1<1E,3Ubw.7}g,3R_LZL|<k,1k4g.1w,2gg,a<a>,I<g}M,fgL,2<q<1g<h<5M,8Mj,h<V18.18,2E<4M<w,3@__ZLF18.f___SY1<Yf__rTMi.3W__ZL4````$L^do1.3C?.Zw4,o2,m/.9w8.3o2.16/.lw8.6o2.1S/.xw8.9o2`3e5g.d1g.cUl.1s5,F1g.cUl.3E5,d1k.cUl-PNk.506,1<g3,8wl-hQd3ey0EhQVlai0NdiUNbz4wcz0Odj0Rcz4wa59Bp218ongwcjkKciUNbj8F<2}w=g.;0jdxcg2w/.E08,w<8=40>t19{0C>.bc1,8<2=1.(0fw6,71M.2}w=g.;0jdxcg2M/.Cgc,w<8=40>t19{0ZMo.fs6,8<2=1.(0fs6.3T1w.2}w=g.;0jdxcg2P?.K>,w<8=40>t19{|Ms,M7`=?$103N_MQ,2M/-8|.f<Y08-2.g08w,403)w>03w,20c<g<406|4<@2U-1|80qM,903)w>07s,3Qbw-4>g#0>0f7_Bw,a03.2C/,w>0ao,1g1w.uw<8|02Q<g3,2w<1|s0MM$103N_YQ,206)4>`40f7_SM,a02,4}w>0f4,3U1w-8|g3T<Cgc-2.g03g4.fMK)g0j|E1<bM-405.z?.81o*0Y0dw4.80M)g0n>81.3QbM-405w1o?.YMo-2.g0rw4.9w1)w0207g1^18,25?^w<Eg4^4<2Y2^18,2L?^i<O>.d06,z<4w>0dM1^1<3y?^y<_g4^4w,102^2}v/^g<bg8^4w,402^18,1r/^g<rg8^8<8s2^18,2r/^g<FM8.6wM,o<4g0n.1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz.nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05Zvu3wSbCtBt5ZMoRZQq7lKqOVyu|vpCBKqg1vnTwUdyVDpnhvs6dvt6xRrCIKp7w0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nRZUe3oKpSlQnT1znThEtmVHbChF05ZFrCBQ07dQsCdJs417j4B2gRYObz.nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB~0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07dBt7lMnS9RqmNQqmVvt6BJpn.+0nRZzu65vpCBKomNFuCl!0sThOpn9OrT9%05ZvpSRLrBZPt65Ot5Zv069FrChvtC5Oqm5yr6k0sSVMsCBKt6p%05Zvpn9OrCZvr6ZzonhFrSV%06RxqSlvoDlFr7hFrBZxsCtS05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0pSlQsDlPomtBg4tcik93nP8Kc|xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt,bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCBKqng0bDhBu7g0bCpFrCA0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br2VAumU0bD9Br2VMr7g0bD9Lp65Qog0KrCZQpiVDrDkKs79Ls6lOt7A0bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt.KpSVRbC9RqmNAbC5Qt79FoDlQpnc```,6M<s<2<t>.7g1,A#4)2U<1<1w,9w1.2o?.8#1)23}g<o,3.g.M>.e#1}4<d}4<6<E08.a02.1n1$g)3E<1<1w,fw6.3U1w.5#1)1}ZL__rM8}4<1,2g<7*g<4<iw<I<2<91,2gg,M?.2}4<4<4<58<3}w,5gh.1k4g.a>$g-1q<____rM8,1Y4w.v18.2o<7*8<2<pM,fX__SY2<F18.agi.1}2}4<4)7o<9}w,egi.3A4w.G}s)1}w,1_<2g,48,2c4M.z1c.6w<7<5w<g<8<y}4<O<Z1c.fgj,2/^4}g,9}7}w,fwl.3U5g.a#1)2z}g<8<w5w.81o.3g#g)Ig<4<2<l1o.5gm,M/^4)bI<e}M,fgK.3Q7w.1#1}g,37<3M<c,3Ubw.@1U,g#g<4<QM<4<3<_2U.fMu,4#4)e}6}M}L<7M.U}w)1}w,3F}g<c,3wbM.U1Y.1g#g<4<Xw<4<3<Z2Y.fgv.1#><1<fs<1}M,40M.108,g#8)3Z<2}c,20c,w2<g#4*w4,4<M)8/,K#1}g<I1,7)8gM.2M8,U#1*1}w$A24.c02,s<6w<g<g<2g<c$50A.2V/^1)14<3#99M.8g4$g*'
b64[ppc64le]=$'142357 5647785\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n089dFw88vao3ynQg\n0hQN9gAdvcyUNdM\n000000000000000\n00000000000000\n00000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0Mc3\n0000\n000\n00\034?1_hkN60w41[|M0l|4{4]20Y1<2?g|U|s0g|s01I|g?k~]w5g<20l[1<1?1w?zZ;2fQ1<8_g4,fw3]g[4<8?6?8fQ;w_g4,23Z0g,U04<3w0g;w:1>g/380g<cw1;O04;A:2g:1:1gVnhA1?f0j;Y1c<3M4M<2M:b]4:57Bt6g6~~>1]kKlQp0g?8_g;zZ0g,2fQ1,3U0w<fw2:g:4?5>c/17jBk0I98FkY2PpQpFyKiwqwciuOvt75E,w/1c?1?1w?101|11/4M;2GwUPNEjhFtg~[3|A0M0w!301k0w|2(1>w`9U?g`4o?yo!5k?io!6Q?io!bU?g`9k?io`4?w`7o?g`6c?io!cg?io!aM?g`2M?w`6Y?io!8g?io!f4?g`dQ?io0E0Y1;18:cI?h01k0Q|2<M]1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1JomJBnS9RqmNQqmVvon9Dtw1UpD9Bpg1Pt79zrn|pSlQgR1lt6BJplZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01xp6hvoDlFr7hFrw1Iqm9zbDdLbzo+:1|4|w02|8|g02|4|g02|8|g01|8|w01|4|g<g010fQ?g:9uhBwo/801M4;8_g4,1o[M;g_g4,1o:A0I;o_g4,1o:6fQ1,2/8,1o:81c<28|8,1o:s18<2g|8,1o:81c<2o|8,1o:C18<2w|8,1o:U18<2E|8,1o:81c<2M|8,1o:a1c<2U|8,1o:u1c<3/8,1o:81c<3g|8,1o:g18<3o|8,1o:g0Y<3E|8,1o:w|2,3M|8,1o:Q1c;8_M4,2o?a=g_M4,2o?3=o_M4,2o?f=w_M4,2o?5=E_M4,2o?k=g|8,1k?4=o|8,1k?5=w|8,1k?6=E|8,1k?7=M|8,1k?8=U|8,1k?9{1/8,1k?a{18|8,1k?b{1g|8,1k?c{1o|8,1k?d{1w|8,1k?e{1E|8,1k?g{1M|8,1k?h{1U|8,1k?i`1w0gvx0wobFFwe9vi04w4U$w1cf21SgzyC0wxY4|1@97_8vw/1w2802W/E2Yc0fV1Lv__iNw0guxM024U4|1Wao327Mw081e>1w0gvwwwobFFwe9vi04w4U%6011@7y1wKCC0UBZ80i0jw%o047U4862Wqo3ynQw181e%1w0gvxowobFFwe9vi04w4U%6011@321wKCC0UBZ80i0jw%o047Ui862Wqo3ynQw181e%1w0gvwowobFFwe9vi04w4U%6011@6y1wKCC0UBZ80i0jw%o047Uo862Wqo3ynQw181e%1w0gvxMwobFFwe9vi04w4U%6011@3y1wKCC0UBZ80i0jw%o047Uk862Wqo3ynQw181e%1w0gvwEwobFFwe9vi04w4U$w1cf41Qgzw/1w?o022ozw0wy8V01wFv2|wAQ/1w4822Wg|b2Mw-|7UUvYx@1w0gvwx181e6011W2|8jwg|7EFwc8v2|w4U|49w0w1cfe1Pgzw/1w?o022ozw0wE8Uk223v7gux7NQ3EhYBg64v2|wAQ/1w6822Wg|b2Mw-|7UUvYx@1w0gvwx181e6011W2|8jwg|7EFwc8v2|w4U/1w|12o080j3NMsQ8U?o0228EA/AI8022jao227M/1w880yWg|aiMg|7UUvYx@1g0wA7__S8Y67Vze1n@_QIo047EZvX_iO|8jw1020V?o1/uw0wyapFwc8v2|w4U/1w?o/gC0204MY07d2e23__QI/1w0w1cff1OgzyC0wxY0M03bf3_MvIg|7UgvUx@6g2wk4108cLC05x@W01wvKE0q7XK07x@SM1Dk080ajH/Zyg|yiY809V/2weM|o3Kg0E91Y021eM80o3xUUUh_IvP_iNw0guw/cIm062gfw0guBjUO0ZN2|fv|UuyBCMxxP_sFogU02nAf0e0_AAwGvk12_SfievZ_tLVavm|wjz__S0Ut3UFvl18iDQkkLZ_LvT_iNw0guw/cIu1J@v6g1wA1w0c7Es03xW0Y083RE|7Fu011Wg|fiN0gyBxQz79vd8VanQkgIpY54H6v1hiNDMk@IpYF062gow18vL@_O8_A051@P01gjIMAPAXg020e7zb9nZUQQd_svT_iNw0guw|a0Uudd4vTzHETZZ_fZb6011W/eOMM0891ucIBvQ|w3xU@@p_uee3vPTZ_QIo047E|2we7zzx7ZUSSd_ivP_iNw0guy80i7HA051WVw1ouKw0o7HJ0v3vWw1EuKU0u7HM04xe1/uzM_Y7HFwc8v2|w4U|a0X|1we_|wjI2060Uuee4vRTX_QIo047E/3bb3@wA5w084U|1we701wvyx_fZb6011W?OMA0o90o03xWT|Uuwf020Zq|1Wnw0guD__S0Ug48Fon01wuzi@uB_QzAFvhh2_TYkiLZ_55b_vRTY_QIo047E/3b7wrvDOA_E912vP_iNw0guw206fE7vP_iNw0guxU6ShY_LZyf12joPw9@_Zb6011W9w1ouKw0o7HG06xWXw1UuI10c0XM04xebg7MTYg|7EYf_1WWo327Mw081e|12ofX_ozM10c0XQ99zecnW_QIo047EQf__iM/6/49w_LZyf7wPN7MUAScUhvL_iNw0guyo0m7HE061WWw1EuKU0u7HM04xebg7MTYg|7EYf_1WWo327Mw081e|12o1|peI|3K9/9b6zZwA/60XJfX_iM/6/49wcvL_iNw0guw206fEhvL_iNw0guxU6ShY_LZyff2ioPwE__Zb]601M/w1cfc1LgzyC0wxYYf_1@_z_UvIg|7UwvYx@6|wjz1@LZb6011WfX_wzN0AUgU|33WTwrvTMw1sBXM0YFbe|w40w1oBUM0YFbdg0w42pZw1YCiqwvoM381/40V1Cyw4go8011nrg3M1wOw4s|C44c1g0gr08046s027P__OwVu40Fvvg3anQkiyFZHAxAvaV8fDRgi6dY/3b4|wA1y067EufLAvOTY_QJU6TVYufLzvWDV_QIo047Ew|xebg7MTYg|7EYf_1W_z_UuKC0MxY8020jw|gC3@_S8Yuff4vR2joPw10c0XcvD_iNw0guxU@@d_pvD_iNw0guy|24UJ0v3vN/uzM_Y7H@f_xWWo327Mw081euff3vNTV_QIo047Esf__iN|g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE14E_Vx08010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4gz_C40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320gWfWog4|x3x|7UUGvz_iNw0guzY_LZb]6|w/w1cf11KgzyC0wxY?o2y0oKw1080U4|1@e7_8vwN@fZb6011W2|8jw|60U4|1Wao327Mw081e]6>KeU1,2C0wxY1g2vgGo2q7SC0MxYYfYbW51wyTQkmC1ZRfYce/y@C2Y01UFwe9vgw0q@Aw181ePf__iYz__QL4__ZbMf__iXP__QKU__ZbJf__iX3__QKI__ZbGf__iWj__QKw__ZbDf__iVz__QI204MYl6R2eao227Mg|7UAvYx@7|8jwg|7EFwc8v2|w4VDpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c|6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM,pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA>2lIr6ga?pSlQgR1lt6BJpg<7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M,lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ|59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU]4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw,imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ|hI3eOw?4?8fz__Rw/1g@___S>3Z__Yc0g|kfT__Q>g]5Wkw04u4416MM101g?o?2fT__SM>gwB10486gnM?M?Mfv__P03?hMX|N51vFU2gVI5gpM4gpQ3gpY1t9A7gFE6mJB1SA7rgtN2Tk7vggU0gMp1TA4eM0er1pM4Dgeu0FY14k5@rtJ1T47tgtZ22wU0h0p1TA8bi9I5D0it0VY1hwHrgtN1Tk7vggU0h0p1TA8b?c?b?1M@L__I04/173E014k5@Dwav0mEa3w151A7vTA8biwEe04k6gt_uggI|1M/3A?XfL__Qw>i0Uw4k5@gMU0gMp1~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!3;90b;6fQ1<1:fQ:3:3w2:Q:H14;p]zZ0g,6M:8:1E:4fQ1<s]w:ZvX_rM?3M0g;k:40g;6:1w2;2w:i0g;I:6]3[|w<w;1g0g<1g:1M:n:6w7[0s>1k4g;c|7(7:705;2:3U0g;A:6:3@__ZL>505;____rM>1:f3__SY>8wk<3V__ZL>1~~~~{vM8~~~~~~~~~~~~~~~~~~~{w4M<70i;81c<2o4w<e0i;81c;E4M<7wj;81c*40i;g0Y;1:8/w,Q1c*4t3gPEwa4teliAwcjgKcyUN838MczgMej4O82xipmgwi65Q84dOrTdP834Qbz8KciQOag08?4,1|}0c0a;M0E;8?4,1|}0e08;30A;8?4,1|}0aMh;M14;8?4,1|}0c0a;30M;8?4,1|}03wh;e14;8?4,1|}03wh;e14;8?4,1|}|M9;70A;8?4,1|}0c0h;Q14~`c|g380g!c|w3M0g!c|M0o0w!c01|g1`c01g0y1g!c01w1g1g!c01M1M1g!c0201E1M!c02g302`c02w0w2g!c02M2I4g!c0303g4g!c03g3M4M!c03w0s5`c03M08_g4#c04|g_g4#c04g0o_g4#c04w0w_g4#c04M|_M4#c05>8#c05g2/8#c05w/g8#c05M~|c06|80g8*g?g0YvY%3>9w2w302w*3w?9w2w0w2M*8g?9w2w2g2M*dM?405w/g8<4:gM?404|g_g4(qw?9w2w|3&tw?403M08_g4#g0YvY%Bg?9w2w0g3;303;Fg?9w2w103M<b01;IM?405g2/8,5[g?g0YvY%Mw?403w0s5g!g0YvY%Q<2w3w2g*_g,2w202w*9g4>2g302&hw4/9w2M2I4g*j04>2w0w2w*s04>2w104g*wM4>2w2w2g*CM4>2w202g*M04>2w0w2g*X04>2w102w*6M8/404g0o_g4(a08>2w302g*i08>2w2w2w*rM8>2w102g*zg8/404w0w_g4(Bw8>2w1w2w*Lg8>3g3M4M*Q08/405g/g8(T08/404M|vM8(Uw8>2w1w2g&wc/9w2g3w2&20c>2w|2w*bgc|2~Z08|1~igc|29w!oMc|19w!v0c|19w2w3M4;4w:A0c|19w!Bg4|1~F0c|19w!dM4|2~ew8|1~K0c|19w!Pgc|19w!nw4|1~TMc|2~Awc|19w!@gc|19w!wg8|1~5gg|1405g3g|8,3[6dOt7dQtmpCbCc0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1vnQpigkR5nQleh5Zv03..5xbD1It5ZzomNIbBZvoTxxnSpFrC5IqnFBg417j4B2gRYObz4T03..5xbD1It5ZzomNIbCtBt79RsS5Dpk1+..0NpiVMr7hvoS5Ir2VvnStJrSVvsThxsDhvnM1vpCBKqg..0NoiVMr7hvoS5Ir2VJomJBnS9RqmNQqmVvon9Dtw1vnStIqmVHnR1cl79BsSZItCk0c3.0Mcm4Ks6NQnSdxr6MKu6pOpmk0c3.0Mcm4Ks6NQnSdxr6MKsThOoSRMg417j4B2gRYObz4T03..5xbD1It5ZzomNIbCdIrSdHnStBt7hFrml)0c3.0Mcm4Ks6NQnSdxr6MKnRZBsD9KrRZIrSdxt6BLrA1+1vnShPrRZEomVAr6k0c3.0Mcm4Ks6NQnSdxr6MKoCBKp5ZSon9Fom9Ipg..0NoiVMr7hvoS5Ir2VPrD1OqmVQpA1+..0NoiVMr7hvoS5Ir2Vxp6hvoDlFr7hFrw1vh5BegkR9gM..0NoiVMr7hvoS5Ir2VPt79BsD9LsA1+1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0bBhfgOU0c3.0Mcm4Ks6NQnSdxr6MKoDlFr7hFrBZBsD9Lsw1vqmVFt0..0NoiVMr7hvoS5Ir2VMsCBKt6p)0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07dBt7lMnS9RqmNQqmVvt6BJpn|sSVMsCBKt6p+1Pt79BsD9LsA17j4B2gRYObz4T06tBt79RsS5Dpk17j4B2gRYObz4T07dQsCdJs417j4B2gRYObz4T05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz4T06tBt4dglnhFrmlvsThOtmdQ/KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp|KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bChxt640bC9PsM0KoSZJrmlKt|KpSVRbC9RqmNAbC5Qt79FoDlQpnc~~~[6M?s?2:cw1;O04;A^1^2U/3S__ZL0w;3M0g<f01;a]3]w^U?2M?8:608;o0w<fw1;1>c?8:1w:g>c?2:104;40g;i0g&g&4w/3___ZL0w:y1g<285;aw:3]8]w;1l?_L__rM8:k0k<1g1g<2]1>4?8^p>g?2:705;s0k<3U0g;c:2]o:6U?4?gw;1E1M<6w7;k04;3?5>w:6:1U>g?o:M0w<302;5M^w^vw?4?6:209;80A<2c2&8^8g?1?1w;2I4g<aMh;9%g&2a>g/38:Q14<3g4g<202&8]4:Aw?4?2:f0j;Y1c;I^1^a>1>w:s5;1Mk;104&g&2G?3w?c:2fQ1<8_g;w^8]w:Jw?Y?3:13Z0g,4fQ;8^2]8:c8?1>M:o_g4,1zZ;2%w&3f?1w?c:8fQ1<w_g<e01;1]8:1]S>4?3]3_0g<fY;M$4;8:7c?8>M[08,33_;w%w:2:3t>g?c:w|2,2/4,8%g^UM?w?3[10w;41<8%g&ew?1?c$10g,d%4]g;3N?1M{2042<Q0g4,201&4%g?8`m081,201M<1E?@?2]o]A?3`dw90g,9Mg&4^h>M!3_3g4<s1&1^'
b64[x86_64]=$'24373 5190969\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n06tBt4dglnhFrmlvsThOtmdQ\n000000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n0000000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n02x4\n000\n00\n0g\n0w\n0M\034<1_hkN6/41+M0@.4-4{62s+g.U.I?.y01Y01w<g>1{4{g[1E/]6w2}2{4<1<aw2}G08]2E/]5g[l{8{4<4~]u|]1U3{g[g<k>1U3}7ws}u1M]2k1}9g4[1[1<1w>10h}434}gcg}w2}Y0U[4[4<6<81c}wgM]213}204}9?[g[w<o<o4g]1wN}634]3.g]c01}2[1gVnhA1<3Ma}f0E}Y2w]2g[9{4[5fBt6g4<G08]2E/]aw2}c{M{w[kulQp0o~~g}1iVnhA1<10h}434}gcg}w2}Y0U}1{g<w<1g>4telg01.701;4{w01M?<1{g<k;M>4telg2mUV8wnrxwUfDkmS9sJ4J_I1zOJM;1<4g<4<q}8044010h<E3hFtqK3zf4~}2M>2`6w>2`dw>2`k<1`nw>1`r<1`vw>1`x<1`A<18!Cg>18!FM>18!Ig>28!M<18!Og>18!Q<18!RM>18!W<1406g2?M]3{@w>1804w3M8}1M{6NFoCcKsSYKdw1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1yqmVAnTpxsCBxoCNB069RqmNQqmVvpn9OrT80rm5HplZytmBIt6BKnS5OpTo0u6pOpmk0omhAnS9RqmNQqmU0sSVMsCBKt6o0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0nRZzu65vpCBKomNFuCk0sThOpn9OrT80s79FrDhC07dQsCdJs01vnSlOsCVLnSNLoS5QqmZK#07dBt7lMnS9RqmNQqmVvt6BJpn.hQN9gAdvcyUObzk0hQN9gAdvcyUNdM;1.4.g01.4.g01.4.w03.8.w02.8.w02.4.g01.8.g>1{thFF2g>w0e?.4<9uhBwo>c06w4+434}8[10N}S38}8[10u}U38}8[50u}84c}8[8sa}a4c}8[50c}c4c}8[8sa}e4c}8[70b}g4c}8[d0a}i4c}8[8sa}k4c}8[dwb}m4c}8[1wb}o4c}8[8sa}w4c}8[7Ma}y4c}8[8/}C4c}8[213}E4c}8[bwb}Y38}6;g-@38}6;w)3c}6;M-43c}6<3)23c}6<4g-O4c}7<1)Q4c}7<1g-S4c}7<1w-U4c}7<1M-W4c}7<2)Y4c}7<2g-@4c}7<2w)4g}7<2M-24g}7<3g-44g}7<3w-64g}7<3M-84g}7<4)5{1uB8.nwg0hIc1Myg?.j<1M>2U5>7M8>123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6ggUUwMt73J020P412wUUh0UMggUEgwUwgwUogwUggwU8ggI<E<r<8wm.1E;44e48o2ggUowMd43z1Z2wUogMUgggU8igI.1w>2o<P1o.1M;h0UglMU8+hI3eQz___Y3<91g.6j___Z45w.Jf___Xgm.3w____t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD06tBt4dglnhFrmk.6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM0Br6NA2w0Br6NA.1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c.65Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU{4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU]1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt04BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw:pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM{05ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt.3P3NXWi8fI24y3N0z3<YMYu@Ay3X0x8yMlp5w.i8n0t0b_Q4y3N0z3).fcf7LF1k_YR_2o.fYB_yo.cPcPcPcPcPcPcPcPcPcgrI;_OnI9w.PcPcP46X?>fYBV2o.cPcPcN1KM8>3_9tMC.3cPcPcgrI3<_Onk9w.PcPcP46X1<fYBP2o.cPcPcN1KMk>3_9sgC.3cPcPcgrI6<_OmY9w.PcPcP46X1M>fYBJ2o.cPcPcN1KMw>3_9qMC.3cPcPcgrI9<_OmA9w.PcPcP46X2w>fYBD2o.cPcPcN1KMI>3_9pgC.3cPcPc_OlW5g.PcM{4ydfo4C.18zglW9w.i3DUt1l8yMk@5g.i8n0t0D_U0Yvw;333N@:4ydfl4C.18zjla9w.i2D@i8DMic7KfQz1@0d80sp8QvVQ54yb1gkl.18xs1Q2f_wpwYvh>MMYvw;3P3NXWw3Qd9w>7kHlky3fuEk<i8DBt0N8zjTu4w.W5D____Epf___Yo5Vik>5tMMYv0ccf7U:YMYu@KBT____PcPcPcPcP45nglp1lk5klld8wuMo?.w_Y33U@6?.w_Y1vyB8ySU8cs20vg.i0Z4W4kNV8f_0Tkoj8JC4460f2g0j0Z4UeI93NZ.37Jhj7Aj8RI942_/>4O9XKxN_L__xs0fxuA>18yQMAi4OdJ2i;ibzfZRfzFpL484xFn2h?48f04zTWkz1@jZ8MvE7i2Dai07jj8DSL______Ee_X__Q69NEn03UkM?.i6C499<1?wY0i6Cc98<1?wY0i0ec98w>180s580UMAC<4w1Sky5Xg@4Sg>4Od1lPH__@@g<4y9VP70j8D2Wc3Z__YNQAy9VAy9X@xz_v__jonAt2BczgkNW___j8DLi8Dpcs1cysa@g<eyi_v__ct9cyuVcyuvEdvT__Qy1N1w1.14yv1rnk5sglR1nA5vMQOdJ2i;cvZcyvrEvLT__Un03Umm<i6C499<1?wY0i6Cs98<1?wY0i0es98w>180sd80VMAC<eD@_L__pwYvh>i8QZGuH__P70WdbY__Z1Lw4>3HxmoK3N@4:18ysV8zjRWWL__cs3Eb_T__@BB____pyUf7Ug:ewX_v__yPzE1fT__QydftnH__Z8ysoNMey3_f__WW@gW1LZ__@beezA_f__i8QZ5uH__Qy9Nz70W6fY___HzV1lkQy3X1x8zngA3exw_f__i8QRVuD__Qyba4y9MQy9X@zb_f__xs1R9UJY90N8ytXEG_T__UD5i8DvW47Y__Z8wYgoyuxrnscf7Ug:4y9XAydforF__YNMbQ1<WfHX___HPMYvx]i8fI24ybfgQi.2@?>ewb_f__cs18wYg8MM;gcg}4{g[7[706}2[3U?}A[6{n[6w8[w[w?]1g[1M[3[b13}1w[E|}I[6{5[f04}2w[B?]1A[U38}r{w[6w}3ocw]1M[2[3M__ZL;1o6}_L__rM;Y1w]f___SY:g[c[8ws}3g}1U7}fn@_SY]c~~~~&g7w]50u~~$272w]50c}xME]1M2M]d0a}xME]3o2M]1wb}xME~{1Y2w]8/[g[wgM]bwb*ocg`.2M7}b0s}I1M]2M7}b0s}I1M]2M7}b0s}I1M]2M7}b0s}I1M}8<4:1.=0a0t}E1Q}8<4:1.=08ws}DxM}8<4:1.=07ws}w1M}8<4:1.=0a0t}mhU}8<4:1.=05Au}mhU}8<4:1.=05Au}mhU}8<4:1.=09Us}ENM}8<4:1.=080s}xhM]1JrSNA838Kd30Kci0EoSZJs65Qqm9Ipi1TqnhE84teli1Ip2A.4t3gPEwa4teliAwcjgKcOUN838MczkMdj8P82xipmgwi65Q834QbzcKciQNag.bCVLt6kKpSVRbD1OrT1BsDhV02VKrThBbCtKtiVytmBIp2RFp.KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VBq5ZCsC5Jpg0KpmxvpD9xrmlvq6hO02VOrShxt64KsThOciUN02VOrShxt64KsThOciUU02VCqmVF02VFrCBQ02VMr7g0bD1It2VDrTg0bDhBu7g0bChxt64KsClIbD9L02VAumVxrmBz02VCqmVFnS5OsC5V02VFrCBQnS5OsC5V02VDrTg0bD9Br79LnT1xp6hFrCs0bChxt640bCtLt2VMr7g0bDhJnSdIrSVBnThxoCNB02VysTc0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP02VzrSRJpmVQ02VPq7dQsDhxow0KsThOt65y02VPumRQom8.69FrChvtC5Oqm5yr6kAs6NQ069RqmNQqmVvpn9OrT8As6NQ06RxqSlvoDlFr7hFrBZxsCtS971It01UpD9BpihMr7g0omhAnS9RqmNQqmUAs6NQ07dKs79FrDhC971It01zr6ZzqRZDpnhQqmRB971It01DpnhOtndxpSkAs6NQ07dQsClOsCZO971It01MsCBKt6oAs6NQ07dQsCdJs2hMr7g0nRZBsD9KrRZIrSdxt6BLryhMr7g0nRZzu65vpCBKomNFuCkAs6NQpSZQ05ZvpSRLrBZPt65Ot5Zv96tLt01vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6kApSZQ05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6kApSZQ#96tLt01vnSdUolZCqmVxr6BWpihDrTg0nRZDrmZKnTdQon9QnRY0nSBKqng0nSpFrCA0nRZkjkdvj4Bjl5Zv06hBsClDqndQpn9vt6RvoSNLrClP079BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz.nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvp7dLnSxxrChIpg1vnRhdgRZ5jAhvnM1vnSlEp79vsThxsDg0nRZFrCBQnS5OsC5VnTdQon9Q05ZvqmVFt5ZxsD9xulZBrCg0nRZCqmVFnS5OsC5VnTdQon9Q05ZvpCBKqlZxsD9xulZBrCg0nRZMsClFrCBQnS5OsC5VnTdQon9Q05Zvs79BqmVFt5ZxsD9xulZBrCg0nQhpjA5dikc0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZgkAZ3hkhlkAlvj4BeiQ57hlZkgk9chlY0nRZysTdvsThxsDg0nSlKp01vpnhBu7g0nSlAonhx05ZvpnxBoTlQom9IplZPt65Ot01vnT9Br65vqn1It5ZPt65Ot01vnT9Br65vqn1It5ZBrCg0nRZ7jBlvhkxvhB91jklvi4hi06lKp01Bt6lUt01Bp65Qog1vl4NjnQRfh5lchlZ2gld5nM1vnTdQon9QnQl8h580nRZPt6ZMnQl8h580nRZPt65Ot5Zgi4hi05ZvsThLs5Zgi4hi03NxsDhFpCBzqm5Ifw1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM0Kj4cP02VcgP.bAN3d.Kj4cO02VcgP40bAN3dg0Kj4cS069FrChvtC5Oqm5yr6k0oDlFr7hFrBZBsD9Lsw1JomJBnS9RqmNQqmVvon9Dtw1UpD9Bpg1PpnhRs5ZytmBIt6BKnThFrmlM#065Ap5ZytmBIt6BK07dKs79FrDhC06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvoTxxnSpFrC5IqnFB07dQsClOsCZO071OqmVQpw1Pt79zrn.nRZBsD9KrRZIrSdxt6BLrw~-M010aw2!M020dw2!M03>3!M0402w3!M050f04!M0601o6!M0703M6!M080706!M0906w8!M0a08w9!M0b03Ma!M0c060a!M0d0b0a!M0e07ws!M0f08ws!M?0b0s!M0h090t!M0i0a0t!M0j010N!M0k01wN!M0l0dwO!M0m0e0O!M0n0ewO!M0o01wP!M0p0213!M0q0b13!M0r,!M0s,!M0t~M0u~M0v~M/~M0x%01;w?0d0s*j;w?0e0s*B;w?0f0s*X;w?>t(15;w?010t(1l;w?020t(1y;w?030t(1Q;w?040t(22;w?050t(2f;w?060t(2q;w?070t(2B;w?080t(2W;w0h090t(3g;g0n0f0O(3z;g0n0fwO*3?>g0n>P*x?>g0n.wP*T?>g0n010P(1p?>w8f08ws(1v?>w8e07ws(1B?>g0r,(1O?>w0i0a0t(27?>w0i0d0t(2q?>w0i010u(2M?>g0s,[g}2Y?>g0l0dwO(3z?>w0i050u(3L?>g0m0e0O(14/>g8j010N(1h/>g8r,(1t/;1%1G/;m0e0O(1Z/;m0ewO(2e/;l0dwO(2x/;l0e0O(2O/;x%38/;x%3s/;k01wN(3B/;q0b13(3X/;g0b0s*l|;s,*x|;s02B4*C|;i.Mx*J|;r,*Q|;1%17|<3N_M&1p|<3N_M&1F|;b03Ma(1Y|;s02B4(2.M;i.Mx(26|;r,(2c|.1w01%2u|;x%2H|;x%2T|;x%34|;x%3g|.103N_M&3t|>w0i060u}7M8]3J|>w0i08/}q[3X|>g0p0213}k{a1:c0aEa*f1:d0b0a*k1:c0aga*p1:d02wc*u1:c08wa*z1:c07Ma*E1:c060a(1a?.8`e/.8`G/.8`J1>4`X1>4!191>4!1r1>4!1x1>4w0i0f/}7[1R1>4g0p0813}c[271>4!2j1>4w$2s1>4w$2G1>4w$2Q1>8w$331>4w$3c1>4w$3j1>4w$3q1>4w~~~$g<s<2[aw2}G08}M&2&1g<7;w}3o/]dw2}9^g&D<ZL__rM8{0c{M]2g[1{8&cg<I<2[2w3}a0c]38?}k<1<2{o[3A<3;w}3M1}f04}9g4*4*11<____rM8[5wo}m1w]2o[1{2{8[jw>fX__SY2[3M6}f0o}M{k<1<1&5Q<4;w}1M1w]706}@04}4{w[6[1D<1;8[q/]1E2}201}1<1E<8[1w[sg<4<2[8w9}y0A]2Q&2&7I<1;w[Y2w]3Ma}9^g*29;g>38[o0E]1w2w]4Y&1{4[C;4<O[b0a}I0E]38?(2{1[as<1<1w}1U7}7wc}3g&g*2J;g<o[y1M]283}1I&4&IM<4<6[b0s}I|]3w&4&bw<1<1w}2g7g]90d}2&1&31;g<o[E1Q]2w3g]6M3*g&NM<4<3[10N}414}8&2&dg<6;M[ocg]1wh}M04}5{w[4[3t<3M<c[S38]3o4w}w&8&Wg<U<3[e0O}U18}8&2&fk<1;M}3Ecw]ewi}c^w*3W<2;c[63c}o4M]ewc*1&2g4>4<3[213}81c]2g&8^Y1>1;M}2MgM]b0j}u^w&o?>g<c[a4g}E5~08&a04>w<3[2x4}a1g}1^g*2Q1>7!2wk}804*g*13?>g>3&185g]5g&1{4[j04>c!D1k]1C?*g*5o1>3`8n}WMg*4*1u?>w$3M6M]2wb}8<6k<8[1w['
  b64[flamegraph]=$'122987 48229783\n0w86wwsSBLt7BOsyVMpm5IpmdQkThxa6lRrCNI82NRrCNI82Nxs7dOnSlxs65OsSRMa79xrm4FsPIF8\n0wonowsCNBfi1A86dLrnlKpiVQpmt5t6lIpmRQrDB2p4Aya79Crm5PpiAyoOVFq6hIpn8Xry\n0wpCAE82VBt65Ot69Ft7lPpnsKp6BEt24w83RKtmlAqmpBryBAuO\n0w9ClAqmpBry1AryhPnSRxr71Ppiow82pK97dvrm5Is7dBfy\n0JciwL82ww834waOgErSdKtlZQontIr2Yw921xrlZUontIr2\n0wpCAE82VBt65Ot69Ft7lPpi4w83RKtmlAqmpBryBAuO\n0wpn9Rt6VO8y1DsyxysygAb2NDoygyagEX82\n0w821CqiwwpmhFpClK86hP96Rxr71PpiAOuO\n0F82FP97hxsDlQomZF86UwaPkO83kwaz4Ebi\n0w82cwpy1IoiRIq7hLsCtR86xLt6cwr6ZOrT\n0w821Zr6lFsO1C92xxrClJfi\n0w821Z86kwsSMwpgFX82\n0w87Qwpi1Pr21B2DIw82\n0wvi1B87dI86kauO\n0wr65QpmlQ2Dcw82\n0w87gAs7Awpi\n0F2DIw82\n0w2DQw82\n0w821Z82\n0FZ82\n0Ew82\n0avi\n0wvi\n0a82\n0w2y\n0w82\n0w8\03400000x8TkLsDdybSVFs2ZOpi1ItOQz2ycabi0JbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJ2yQw8SBQpmRvs6NCrm5Dpm5Oq71Mby1Iwe8wB6ZJqmhFpChBt20wrTlPs71OrO1QqnhBrm8JsS5Apm4wp6VQ86txoyRPomhBoO1IrT9LrCAapO0zok9BsO1ArCZC865IpmROpT1xbCxIs68w87BOgCVBomgwrD97pSkwpU3y89hLrmBAqmpApmowsCZR86lPtO1Qqi1Et29Jqn1B2y8w8T9fpSBKqmNxpy1xr6lJsCtMoiVEr732822Fc38Nco3ycFcOc20RsA9Kpm5A86VOhStBbCsz2AMwoSBKpmlP83F4gQN4ci0MbywwpncwpmlyrSMFtMEK2ycw8SZdqmhFpC5zqnhKrO1Pum9187hKrSxVrA8wsC5KrO1BrSowsCxQ86lQ8CRFs6kw8D9MqCZzpi1QoOwwaj0Odj8aey0zp45Bp21A83dBry1TrSdLr21Os6ZFt6VLeDdQ86RFb6lQ86RFs6lx86hKt21Jqn1BbD8z2y0wt21JqjFB821T86NxbmNIoSdL86JFt6lJbi0@bmcwr6ZOrO0Ks6ZFt6VLr64O86hKqi1MrDhRqi0wsSVB86hxtDlI86lLpy1OpmhQr7dx2yUw8O0wqnhBrjFM821xtSNIoORLr6Jzt21Jqi1BbiQwfCZzrSMwsCVx86hMoOZRontIr7gwrmAwpm5OqngJrPUJoO1IrT9LsO1Qon9Rt65LqiVK8MEw87gwrmBMpjFOoO1Rs7gwrmAwpiQJ83VLoSZI879Koi1AontIr6cLtn1Q86RF86lxsCBQ86YJbi0@rSdLr21OondRt65OqnhKrMEK82cw86BQpmRrs5ROc5IWnncws7lLs7hO87drnRRPnOZCmO1tonhPpSowsCZM879BpyRxsClJoO1IrT9LrCAwpSpLsO1ytmxPr6lPr6oLrDlQoSZFsSUaby0z821Ft6lJmT1tsz1reBQO86hKqi1MrDhRqi0wsT1z87lFt6lJa21LrCgwr6lxt2BP82VCimQwsSBFsStKsy1Spn9BsThQ821Lt29Jqi9Boy1EpnpxrSAKsyca821La7hMrSBxryBI83Fxs7dPpi1Qqn9BtO1Ioi1IqnhBrm4wp6VLbO1Os6cwtmBQpmRx821Pt29JqjFBh4dvhCVF8Chx86hKt21xq21QqnhBrnswr6Awr6ly2y|O//0wsS5FsSVDp6lz86NLsCZy87dxp6lL821Kq7tOpi1Bh4dvhCVFbShecCMwrCBxpmNO87BxpCNI87dKqngwpmxz86NLsCZP865zpmMabwEz82dEl7dFsO1OoT1F87hBsC5JrCAwsSBIpmdPrChBti1ArD9BgO14h21cbz4Kc5AwtmZJ87Bxp21Pqn9QoCBQtgFB82dQqm4wrSNDrCBPpmhQ86lE8y1Ft6lJ8D1M86ZOpmFQoOwwikQJl6BIpmdPrChBb2BM86ZOqnpBp21Aq7hQongwqmwasO0zrSVFt6lzoi1ArDgwpmxL86BOqmtxry1Ih4dch6MwoSBKpmlPoi1BsCAwoSVRr6lA86hKtmxzrC5BpOVA8MEJ82QJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQabgEz82dIpCRxpSlxsCxMs2Uwr2//0wr6pJoi1Bt7dzoi1HsCtMomlEbD8z2ycal21Fq21PonhBqO1Pt7dzoi1HondMrmlI87dKoi1Apn9ArD9B87cwom5zr6ND865Oq70wb6NxrSNFtStKq21QrSowrDlQoSZFsSUz2C4wp6Vz86hLs6lQondEt20wrSlysi1FtmJzumNF86lAt6VCqmlFbCgw87hjoS4wqS5Ps6RBr21PomcwrClypO1Kpn9Bt65ApnkwqndDrycat21LrTdIsO1zti1EsS54879koS4Ipn0wsCkIpBcwsTBBt5hJs64wb6Vx86hKinhPtn9BrnhKbDcz2ycali11kQl783ELbCNCrm5Dpm5Oq71Mby1IrRJQs6ZFsSUwnmVFtn0Kt7xQ87gwfD9Ds64Kq7pP2Csa8O0z82/0wpO1Bsy1Mtmpzry11rCBRs2VQu7gwt21YbOVIpCRxpSlxsCxMs2Uwr6Zrt71LqndK85QwfD9Ds64Kq7pP2Csa8O0zq5hKpmYwpn0wrCxQ86lBsDlPt6NKqi1DsOVDtCAw86UwomlT869OoDtLpncIsCowsCZF87hKsClzomBQqnpVt20WrSRPtiRBtCZOpicapy1xsClJ87dLpy1OrCBLpy0Ir6dzqi1HrThW86ZLb6Rx86hKoO1Ot2RI84pLt7cwomlzsyVE8MEz2AYwt71LqndKoi1BsCMwsSBBt21ArCBQ86lEti1xsSlDri1Ppm5PpmsE82QJpmxMr2UF8MEz2BgwpmxF871Kt7lF821Pt7dzoi1HsCpJondBoi1ArDcwrm5Is21BrSdKtndQpy1OrS5Jt7hApm4w87dFsStKpmNI86VFsSkwbAkwoS4aq20zsCpJoi1BrCBQ86lEsO1xt6Jzqi0wsSlPqmRLoSZI86VBsS5Mon9Bt2NAtO1Qqi1E865MsSdx86lKoi1ArSdKti1Qt65Q86lEpi1ArycarO0wpCxQ86lFr6lK82Vk86lEpndz86Vxoy0wpmlDpmVxsClQ86hLpy1OqkNRry1Upn1CsDcwsCdMqi1QtmZMt7hRti1FsStK8MFP865QqSdLoSNIs65BsT0JsCkKpCNM82NLpy1Ol4hxsClzti1FsStKsO1xt6JzrSdIr71xpndMbyNIoi1ArCowsCZL86xQsClQ86ZLsSMz2DkwqndDrDgwpmxL86xQsClP865QqSdLoSNIs65BsT0wrT9OpSRxbDcw87x5rm5Is21BrCBRs3FQ8MEz2y0wtTdMomlMeT9QsT9xnThBqSVOr6lOeTdBnThKqnhFoPJRs6Bvr6gXpmlAompItlZQp6BBr6UXt65SqlZBondBpCxvr64wt0EN2ycw8SV1rO1Qs6ZFomUwr7xBsDgwomZztmNKrmYw86pLoSVRsThz86Vxoy0wpn9MtCZAqmhBt20wrSlDpmVxsClQoi1A86pFpmpBsDhKomAar20zr6pJoi1BsCtMoi1EpCZQ86lEoO1RrThKb7dz86NLsCZApn8wp6lC879Lri1OrONBoi1ArC8wtmMwpmZC879Br7dP82Vk86BE2Dcw8S5z86VBoDkwpndRpy1Iq7tKpnkwqndDrCowomNBrmswon9Es21PrSowsCZKbmVBsD9DsSlFsSVLt21PpmBQpSUaby0zplcwpmxQ86lBq6hxsClz86RLpmRQrCAw86VEt21BqmhCpCZCp6NApn0K86NOs6tLon8wrmZC879KqnhPtn9QoSZFsSUabwEz82dEl21BrCBRs21QtmpzrCBQrCYwsS5z86VMrSBQrCZIonBIq21Soi1BrC5LrC5QqnhKrO1Pt65Q86lEpi1ArCYw86pxpmxz8MFC86VRt6dLqi1KomVBri0IrSpIr7tLrCAwpO1xsD1zpmhBrCkwt7BysO1JrO1BrThIrO1Pj2xKqnxRs21OpitC87drnRRHeyAz2y/|5YwqRIwnmZC879BqSVOr6kz2y/|5YwqlIwnmZC879KqmBIpmUap20z82/0wmRZtqCowsCZG87hF8MEw82/1v87tr85RLpy1OontBqMFO82dLkSlJrO0wpCxQ86lQsSdxoSJIrS5IsT0wpn9MpSZxsDdJsO1MtmZMt79x86hArCAwpSxQsSkwpmVxrSVxt6BQrCYIsSkwb6sz2DcwonhHoSZzr6NMomlPs2ROpiVCr70J86IJsClBry1IbiRFqyVQl21Bq21VsC4wpndRp6lJ879Br6kwumZC879LoSZIsT9y80FV82dLsSlJs21IonhBpngIsSkwb6tC865IpmROpT1xbCxIs2QwoORIrT9LqzRSoiVx8MEz2BgwpmxL87hRtn0wt6NCrm4wpn9Ds64wq6xPtSYwsSlOomNFt6lSs21BsClPoSUwpmpLpy1KtnhzrSBPrCAw86VQsSdx86JxsT1JpmMKsOcal21Bq6Ywp79OpmVF86tKrTgwpmxU864JqnwwsS5E87dLrCQwomlFrCtK83JFsSdK86lEt21Bomhxt6Aw87dxsT1JpmMIsTgwrmAapi0zsCZBp21OpCZB86lSt6UwsTdFry1QrSIwrSVKtO0Kl21Bq6Ywp79Opnkwpncwp6ZPt78wsTlCoSVFt6VLry1JondB8MFx871IomxBoCBQomdIr2VV8MEz2BswqmxBr6Awt6VKpmlA86hLt70wrT9BoTdPsO1xt6JzsO1JomNMsSkwb6xQsSBz86Vxoi1Pr21LsD1zrTdB87dQsSdx86JOt6dxsSkaby0zrQowsDxBrm5Is2NBt21xsCBzpSVP865QqScwsSZC879BrmZJun9x86NIoSZQomZFb6VL821Opn9LsT9RpmdR865PpmswbBAwtmYz2CcwrC5R86lPbi1QbnhFpmNQ821Lpncwt6xQ86lFt6NQ86lLt78wpClBr7hzt21Bq6cwrCZBt7hK82NKoi1AbiRLoSVRrDhJogFB82dLt6cwomxDry1BsO9JomNMsSkw8CZQ8y1VoClQ8DdB86dQ2yUa8O0zq5hOpi1BsC4wpi1xpmowtSBApCpOpmVB87hxs6lIt7hPpi0IpndBr7hzoC5Br7kwqndDryQwoORIrT9L82V2821VpmhxpCNRb7gz2Dgwpmxz86NLsCYwsT9x86lBsSlIt6dApm4w87hxsChKrmYE87xBpmdQs6owsCZA86pFpmpBsDhKomBPr2UF821RhCdKqnhKrMFP82dxoSNIp6ky828JtO1Iqi1Ipm9M86BOt6VApmswon8IunswqmxEoScwrC5y821BsTlApmowsCZP865QqSdP871BsC5Qon9L87dBa2ND8MFy87hBpntKpnkwpncwsCVx86hBqSVOr6lP865QqScFsMEK2ycw8QB8l5dijMFp2ycw8SxksSBT87dxqi1PrCBMpn8wp7Byjy1Bpm5IomJQry1EokVDp79FsOtB86dUr6lBr7hKpy1KtnhzrSBvrC5zr6NDnS5Oq71ObwFy82dOs6tLon8IrnswqmxEoTowsSBxtmBIpnEwp7lCoSVFt6VLpi1QrDBOoi1ArD8wt6lOti1KsDhzoi1BtClKpndQ82V1821PpkVIpicatO1LsClQ83Fk8ClErO1QtnlM87hFp71PomNBui1AsSBF87dKqn1Bsy1Aum9i86dL9SwwsS53r6NQkSdxgmJxrDBIpnEwsCxToSAaq20zonswsSVFt21Oti1KrCBMsT9Fp6ly821Vq7gwpmZTqT9L821KpDpOt6dx86lVoAEwrC5286lLq79RrO9Q82Vj86lB2zEw8ThEs7gWsOYLr69DrOVPsCZzomlIoOVJrT8LomlKr6lBbSNKpn9QbTBFtDlPr65WqmVFnStxoSNIt7dzondHtBZxqmhvsDhzolZBrC4ap0Ez82dLgTBMqn9EpO1Qc38SckUwt6lIpDxF82NKiiVz8MF3871LsDBDqnhEcy0Nc20NrQFBunhK82NKiiVz821Igi1Iqn9EpTdQsy1Ppn9BpnoKp2cagO1MrT9VpSBQq38wcj0wcn92rClxp21KsAtDpiVD821Igi1Iqn9EpTdQsy1Ppn9BpnoKp2ca8MF384h484N5i4h1kAlj845kl58z2ycal21Bq6cwrCZBt7hK87dCrTgwqmwwsSBCpmNx86lOsO1ytmlGt6dQ821Lq7gwpmlQrn8wsSpLt21Bq2cagO1JrSZJ86VBh6lSrSNJs6VB87hKoi1AqkhQsSBOtm9Ft6VLj21zqmVBpncE86xQ86lc8CdFrClBsOAy2yUw8SZp87lxri1VrSUwt7dR86lEt7dFpy1Iqi1Bu6lBoThMqi0wrCZzs6RFr6VxpmdT87hF86xEt21BqkNBoTdKbCkz2ycami1RrScwrC5L87hyqm4wry1xrSdVs6Yw86pEt21BqmNBoTdK86lQomgwoSYLsShzr6gKcnxQ87hOrOcaq21Qt3FMbOZMrSVBrTdOtmlzrOVDsCMLoSBKpmlPbTd4gQN4ciQMbwEK82dBkO1Bq7gwpmBcpmdPry1BrSowsCxQ86lMsSdBpCBzqmMwrC5RpStx86lLpSlSrD9Kqi1Dpn1JsDdFqndKrMFP82dKoi1AqmNFrm5QqnhKrO1PrDlBp21Oq7gwpmBcpmdPryVB8MEz2BswpmwwrCBAt7dFsDlyqnhDrAcwtCZOpmhBgO1ArONBqi1zrDlIpmhQ86BE87d4gQN4i211hkl4859KqmkwoS4aq20zqmpBr64wp6VF86dKtmNBp7gwpmxc86dFrClBsSowr6Awpnhxp21zrOZPp6dIp2UNu7gKt2caii0wpD1xr71zqm9xpmMwb6hx86hEt21BrSpIr7tLrCAwpSlyrSMwtSxQsSB384h484N5i4h1kAkwb6BTq7hQ86lE8MFC86lFp6MwsSVBr6dPrShBoy0wun9yoS5BqTdQ8y1tmO0ypn9Is6dxp6lT87hF86xLun9RrO1KtSAwpmhQrCpFqnBDrycaqi1CrD9LomRFt6VL83FLk7hOrSBPrAcws6ZOumtFt6xr87BVunAwnmVrrm4wpmpLoO1MrT9VpSBQq6YwrDtOpgFt2ycw8Qh3j4h88455hkgwkAV52Aga8O0zfPZabmNRcyQOc20R821KgmxQrCYwum52rT9Bry0wp45Bp21AtndMs79L87hLpy1OqnhBrm8JsS5Apmcwr6ZOrSVFbCsz2z4wbj5zjORQc38Qci0wgi1Op6lF86VxjmBEtmkwu44wp6hApnEwrSYKricacy0JcmZebnoMczcN821j865ErDtj86lQr79Kqi1Dgi1Ap6hBoO1KrSBPt7dKpi1Qon1Br7hQ86lFpClIrO1Qs6ZFbCUz2z4wbjtxjiROc38Pci0wl21Jqk8wrDlBoO/|44wp6hApmYwt71LqndKoi1ArCQwsCYwpnlQomVIoDdB2yUw8PkNh2Rzpj8Jcj0wci0wokhBtB0woS5Bq6Zz82|7ljs71OrO1QrSowsD9Crm5Ppnswt6Awq6xTt6BPpm5Mpmcaby0zc35jbn1BcyQNc20N821OgCVBomgwrD97pSkwpO0wsAdxpmlQ86hEt7dF2yVR2ClPsO1Ot6dFeTga2DdR86lBhSZQt70WeCZcpSUaeTkapndL86lM86VTsjEEt7cwp7kWpDgFe0EX8MFQ86VRoC5Br0FPumQA86VBrSdFp6tK2zJVrigwrSpQrDBQpn0Z828wplpAsCVx8C4aeTBJ921JqmtxtSlAqmxQfi0N830OeP////dxri1UqntQp2NEs21UqmNB2DdVrigwsCpJomxBqmlEpO1Q83QSci0X82///0zomQwu6lEpSBQq6Aw87dVp65KqmQaoTBJ921LpDhKqndBuzQwci0Xcy/////dxoClPt21Upi1QqndBuCQa87BC96VLtThAqmxQfi0M83kKePAw82//|O1x86tStO1AqmxQsy1IpnhxtCAwpmZQpy1KrTdQuCAapnBJ921FrntKp6BEt3Qwc20Nby0X82////dFri1KtmpzrCBQrCZT86hFq7gwb6BMpnxPr6Yw879Bs6dOrClxt6lDrO0wpCBQpmRJ2y1VryhJonhBs7Awpi0Zhy9KtnhzrSAWrzIy82/cwtO1xq21QsC4wpmxQ86lxrClJ87dKqngwpmxA87hxfS5J2y1VoOhRrThKomVBrjQw8y1xsT1JpmMysO0X82/cwtO1xq21QsC4wpmxQ86lLoSVRsThF821Kq7gwpm5AongafTBJ921LoSZIsT8Z828wrSwyt20X82////dLoSZI879Et6RB2ClVrigwpS9LoSZIsT8Z828weO8w82////0zom9HoT9DtmZArCcwr6ZOrTgwpmxBrmQa87BK96RxomlQt6pOr6AXpi////|O1C86NF86lLq6hIrCAwpTlCoSVFt6VLoi1Qt6BOtm9Bt0FPumQA86BQpmRxrjJU82//////|SYEpnpOsChF86lEt2BBsO1JtmYw86pEt21BrSdKtndQrgEwumoAoS5Lt21O83QXci/////0z86owoS5Lt21OrThP865zpmNz87lLt6UwsTByrgEwumwAsS4wq20ZeP//////0z86cwr6ZOrS8w87BRpCdKqnhKrSUwrm4apnBJ921xsChKfi0M820X82//////dLoSZI879xsChKrmZVr6Qa87BM96Nxt6lBt3Qwc20weO////|O1F821CpntR86lPoO1KrSBPt7dKpi1Qon1Br7hQsSkE86lAompIti1QpCYFpCQa87BM9mNxt6lBt6Rvs64weO////|O1M86Nxt6lBt6Qws65E87dx2CxVrigwon1vr6BCpmMZ828won1Br7hQbClxri9M83Iw820zon1Br7hQ86lxri1MqmpBr6Uwrm4apnBJ921QsSdxsCJSpn9BpncZ83|3Iw82///dBsClSsT8wpnhPoS4wqT9LpmgIsDcwqntzt6BEpSVJ879BpmtB86hKrgEwumAAtCVOpmlQ86gwfjIM82////0z86AwqmdIoO1BsCtMogFEumQA86NCrm5zpm5Et78Z83|3Iw82///|T9Mp6Zzti1B865IpCRx86lEoT9x87hPa79L87hVoDgwrmAIpmgw86ZLry1QpmRDsy1Bt7dzondH2yBVrigwpmVxpSlQfi0M820X82/////0ztTdQqmxzp21CqmlCpn9QrC5F86NRq7dBrgEwumcAr6ZOrSBQpmQweO//////////|O1J871x87dOs6RFsC4wunoEaj5z86NLsCZz865ErCVIpngw86ZKqmlA87xBp6BCpmUwp6VFt21Bq7cwonhHoTgwon9BoMFPumQA86BQr7hQpnxB87gwfi8y83Iw82///|Slzt6VOpmhBq21xpmBApSVJ2y1Vt2hQqmlIpmhxpCNR87gwfkoyomNBrkswon9Es3Iy82/|O1L86lStT9FsDhQrCly821VbiRFt6NQ2ClVrigwqnhIt6BBtCVOpmlQ86gwfkAyqmdIoO1BsAtMoi9E83Iw82/cw820y820y86Qa87BP965BoT9zq6NLsCYZ828wpT8EozcOb30Ic3cOaj0X8y/0z86cwr6ZOrSowsCZP865BoT8wq6BEq6tFr6xDqnhDrCQa87BK97hLsSlBt7hUfi0y83Iy82///|O1B869Jp6lBp21ArSVBt21PrCBj84tmrgEwuncAoDlFt6NQt6lUpi1Q83Qy8y0X82//0z87cwoSlKrO1ApmNBty1IqnhIt21BrOxQs6ZFomUFr6Qa87BE96NB870wfjIM2wFRsO1ysTlDoi1B2DIw82/|6BA86kYf5dlhQ5vhkV5eQhl2A5jhkswez0AmO1MrSBQrCZtsSAwpCVIqi1B83VRrSpQr6AKpnpPn6sary//0wbiRFt6NQ86l5l5ho82/cwoO1xq6tK86lFt6NQ86lBt7hU8</0J87cJoDlFt6NQ86l5l5ho82|SlPrSdArCMwtClIpngwt6BBr2wws6ZFt6VLr64aai//0wbiRFtThA86xljy1d82/cwtO1AqmxQrO0wpCRFpS4wpmgEpClRonhIci0McyAM8</0J86wJqmlEpO1QlkUwji/|SlEpSBQq6Yw86pxpmxzpy1xsClJa21Bp65Cr7kwt3oN2yAw82//QJqmRTrChFq7he84Rl820z86YwqmQwt6RPr65Br21OtmpzrCBQrCYKsQAw86VFs6lUsSNL821OsTkwpiky829LpwFO82///////|O1M879BpmdQrCtx86lCrTgwrmAwpmgEpClRonhIc20NbD0wu6BIpiBP8</0J86oJrCZQt71V86lfhBhe82|SZCt6VQ871V86lAa6pBtm5Qr28wplpAsCVx8C4aai//0wbiRLpDhKqndBuAUwjlkw82cwpy1KrO1QqndBuywwpmhxpCNR87gOcgEF82//0JbmZzrDlKt6Rx86l5l5ho8O1z87lLt6VQ871V86lxr6ly86NAa6pBtm5Qr28wondMrmlI8Dcaai//0wbiRxrClJunhBs5gwm4kwl2cwry1Joi1BunhBs6MwoC5IpiwwpmhxpCNR87h68CVRt6dLqjFKai8w2y//QwoORIrT9L87d1k4lcl5gwhi0zpncwt6ZzrSMwsC5MpmNQt2VBoO1Lq6dFsSlx86lO83FLq21Qp2xCpnlxt6MIamQwrmkab2////////cwqi0IrTswqS5RpiNMoO1xq6VF82NxqC5S82NPqy0Ipn1Isy0Ipn8Ip6swpn9Kpi0Ir69BtgEI82///////|O1x87lNb65V86NBrSMItT0wsDlIs2NBrO1xsCtKb6lQ86RFb6lQ86RFs6kwb6BQpmROs2./0wbi1ybmdDr6ZOrO1PjQdfj21i82dBsO1Qom9HoT9DtmZArCcwr6ZOrOVPpO1xsCBArCkwt6xzqmZBoO1PsC4wpmlVr6NTrO.////////dAa6pBtm5Qr2MFoy1Rr2NBpO1BsCVB82NOpTBB83JIpDhxoO1IrT9L87dPti1B8O9OsCtDoC8a8y//0wbiRxq6xP82///cwoO1IrT9L87dOoi1BpmJBui1Aum9C86VRt6dLqi1KomVBrmwwsS4aq2//0wbiRxsChKrmYw82//cwoO1IrT9L87dOoi1Bon9ArCRLumND86VBsClQomhB8</0J87gJrmAwpi///|SZzrSNPsC4wpn9A87hBsClFrmlK86hOpCRLsO1JomNM86lLoSVRsTgE86BQpmRP86lMt6VM879BpyRKtnhzrSAFry./0wbi1zbi1M82////dPti1BrSdPrDdFpnhQrD0wr65QpmlQa21xs6lIt7gKpm5Jan?//QwsyRSpn9Bpncw82//0zpmtBrC5OpnhP865QqSdObnpBsClBsO1Ar6pJoi1BsCtMogFE82//0JbmVFpnpQsChB82/|O1F86Bzr6cwpn9Ds64aq2//0wbiRIpCRxoSlxq7hO82/cws21LsDlApmdx86owomNBrmcwomxQsywwrTdQsC8w87BFt6lJ82NLp6Uwt6ZJ879BpmtP865QqScFsO./0wbi1KbmtBt64wpi///dTsThFq6dA86pFpmpBsDhKomAwr7lEsSkE86NypnkJf78@p6kaai//0wbiRLrClQ87d5l5ho82/cwoi1Ap6Uwt6ZPpmcwrmZBrnhKqi0wrBpj84tCa79Lp21ypmtRqmtDrwEF82//0JbmlEs6Mw82//|O1Q86BE87dBrndPpS4api./0wpi0IpO./0w920wc2QJqnhIt3RBhy9xr6lJhO1xsCxM83FxrmNIoSYFa20ysDhzoiVBu7gwt20@sCtMoiVEtDcapRdlhQ5vhkV52Agavksat6lMjSBQrCYEsO./0w9O1LpDhKunhBs7cZ82sZ820@95NLpDhKunhBs0EI82//1T9ShFq7hFfi0D82|3UZn21F965JpmtFtThAb6ww2y//swpmxDqnhEqjQw9O0wfi0wfyhssCpJomxBqmlEpONQ8</0D86VBrSdFp6tKsPQw9PQw83UAn6VBrSdFp6tK2yMw82/|6oDrCZPt7FFfmkDpy0wfzRs86oArCZPt7FFb6kw2y//swrSpQrCBTt6gZq2tCfi0wfyhsrSpQrCBTt6gIq2./0w9O1FrntKp6BEt7cZ82sZ820@95NFrntKp6BEt0EI82//1Q9ThFpmNPfi0D82|3UZn21Q97hFpmNBt7hU2yMw82/|7cDoDlFt6NQfmkDsO0wfzRs87cAoDlFt6NQt6lUpiNQ8</0D865KpmRVt6lMsPQw9PQw83UAn65KpmRVt6lM2yMw82/|6cDtmZQrC5KpmRPfi0DfzRs86cAtmZQrC5KpmQab2//0wrytJom5Bt7gZsytP820@flMwryhJom5Bt7hCsCNFb6kw2y//swrThxt3RI9Tcw820wfi0wfyhsqnhBrm5Jb7ww2y//swompQoT9LpzQw9O0wfi0wfyhsompQoT9L2yMw82/|6cDr6ZOrPRP9Tcw820wfzRs86cAr6ZOrONP8</0D86tyrSdLr7dOsPQw9PQw83UAn6tyrSdLr7dO2yMw82/|6wDsS4Dq2//0wfzRs86wAsS4Iq2./0w9O1xsChKrmYw9O/0Z820@95NxsChK2yMw82/|6cD9T///0wfzRs870Ar65QpmlQ2yMw82/|78DtClOpmlP82sw820wfzRs87cAonhHoSlOpnpPsyNB8</0D86VFpnpQsChB82sw83Qw83UAn6VFpnpQsChB2yMw82/|6oDomNBrmxzsC4Dt20wfzRs86oAomNBrmxzsC4It2./0w9O1BrC5Dpngw9O/0Z820@95NBrC5Dpngab2//0wt2tJqitB82//0@flMwoOhIrT9LqnhBrgEI82//1K9ThLsSlPfi0D82|3UZn21K97hLsSlBt7hU2yMw82/|6wDr6kDs2//0wfzRs86wAr6kIs2AarO0wsDdRpS4EpjIF90FBq71I9y0w9DdRpS4EpjIF2wEw8SVFpnhKsCNx2DdVrigws7BAoi0N83RC96VLsThWqi1B82EXcO//0zon0wp6ZQb71F86dKtmNBp7gwt6BBr6Qa87BV965McCgZ82gwrSpQrCBPpnEG838waO0N83IM8O1M86hxoy1QrSZQb6RF86dKtmNBp6MwoC5IpgFPumQA871Vp64wcO0ZpyhKrTdQuCAwpi0GeP8w82/|S5M86hLt2NMqi1zrDlIpmhP869RqnhIt21BrOxQs6ZFomUFr6Qa87BU965M86gwfj0N83Iw82////|O1M86hxr21Cpi1JrC4wp6BOq6sat7BJ921OpCRxs6lAojQwci0weO//////////0zpnpQsCdFr65M86hxqmhDrCowsCZC865OpmQasTBJ921Bp7hMrmxUojQwc20aeTBJ9i1ShmVBsTgaeTBJ9i1xrClJt65Ot0EXqgEwpygEr6pJomdBomxQsyow82pQ97hFpmNBt7hUpi0wsi8y82AauO//0wt2hQqmlIpnhQu3Qw8y1IhCRx86lEgT9x8DgaeMFZqgEwpygEqnhIt7hBu6kwt75B8y0F8DIw8</1R86NKsSkwsOgErCBBtDhOp6kwagFX82////|7gAt6BBr6lQt7wZ82gwqnhIt6hBpClRonhI2zIw82//1Zr6lBsTIw8<////gwqnhIt7hBu6kwt20Zt2hQqmlIrCBBtDhOp6kaeO//0w2DQavmAa86oAa65KpmRQon9QqmpBr2}//0zq5gwpm5KpmRxbnhQqn9RoClQpy1Iqi1BrSpJsDhxqi0wsO1xtmpzrCBQrCZK86Rx86lLpCNItSZApm8w87Awom5Q869Et6VB8</0z864wsO1NpmlRoSUwpmpLt21yoncws6lOonhxp6lK86RxfmlxtDlI86lxs79FbDcw2y/|6Ywpn0wrDBJ921Qon9Qq6owb6UArm5xpnhQpD9Iqi1BsCZA86lF8y1xgOtK87hBsChx921xrClJt65Ot6BCpmMwey4ArBMX8y./0wtO1Fq6lIa20Af7hxsDhEpyA@uO?////0woO1Lq71J2zIw82////0wumQE86oArDlKoSRxb6kA87hxsDhQsOBOfi1P86NMt6AL87hsb2YA82Nvcy0aeO/////1Fp21Bii9SrCNxp6BC879LomQwt6VF921xrClJt65Ot6BCpmMw8CVRpmNPsSgwpClKqmhB921Qon9Qt7cXsy.////0A865KpmRQon9Q97JRpCdKomVBri1Z83QwuS5J870wuT1PqmMwt3QLb2YA82Nvcy1Z87cwr71QqiYwt5MIbOgwt65Ot7hP878Xvi./>1Z2wEapCAE86UAt6ZPpmlQt7wZ821@mOY@f2Zt82AauO//0wqmgwpkUyt6ZPpncwsDhKqi1DomcDry1QrSdQrCBx86Uwf79Lfy0a8wFZ8MF587dKsDkwpmBJtSVAqmxQqi0wsO1xonpFr21Ar6pxrSBQpSVMbmBLt6VK86RRpm8Isycas21FsDhKti1xsSlDsO1Ot6VF86tCqmUwt6ZJ2y1VrihKqmBTt6hvq3JCqgEwpygEqmRTrChFq7gZ821@nyZra2QMbzAHnikF93YFbTIw8</0A86BJtSVAqmxQpBYZ82gweP5Z2CkwsSMwpgFX82//1xtSVO8y1xlDlI86kA9SBJtSVAqmxQ82tPqmAwtCVIomhFpy1OrSQwrCBFtThAb6xB871UoSlBt21A865IpC5LbDhKn3Iy8</1R865PpmsFa0EX2DQz2C8woS5DqSZOrDkwp6ZzrSNPswEW82cwbmlVr6NTrSswon9Fp6VBeDhA86pBtm5Qr2wwrSwIt6EwtC4IomEwb7dM879BamMz2yQwpO1BsCVBpO1xsCBArCkWt6Qwrmkz2yQwoy1Rr21BsCtAomlFt6UweCZF82NxtSlHs7kwb6xzqm4ary0z82ROpTBxpO1xsCBArCkWt6owomMwt6ZzrSNPsywwpn8Ip6swpn9Kpi0Ir69Bti0IbyUFbCAa86oAa6tyrSdLr7dOpi0wsi8y82AauO///dEoSZLpndx86gwpClRonhI8</1F821C92xLoSZIsT9B821Nri9JpiAyuO?////0w921DoCZzrSNPszQw8y1OpSlB8CUaeO//|7RIpmBP86oAa6ZzrSNPszQw87VubSAEv6ZxtSlHs7lzv65ErCAAaiALuO?////0w921DoCZzrSNPszQw8y1IoClReO8w2y/|7Qwpi1Pr6pFa21z96NLsCYwsTUZbO0EnClOv6hOpSlBv6VIoClRonNRsnNxpnBIr7tLs7NOtmNMv6lOrSVxpmsAaiALuO?////0w921DoCZzrSNPszQw8y1OpTBBeO8w2y/+////0woyhzpSNLsCYwsO0Zui9IpmZI8DsaeO//0w2DQavnBJa21y96dDr6ZOrOMN921DoCZzrSMOszIFqgEwpygEpS9LoSZIsT9B821Nui9IpmZI8DswagFX82//1y96dDr6ZOrO0N83Qz8ClBpmlBpjIy82/|O1y86dxpSJLsCVR86hLoSZI879OpShxpmBQrDcwonhQsy./0w921DoCZzrSMOszQw8y1B8SlBoCkyc20X82//dxoCJzsCtRrShKoO1IrT9LpO1xsCBArCkwt7hPs6ZZ2CkwsSNCqiwwoyhzpSNLsCYwsT5B8y1IoClRai9X82./0w921DoCZzrSMNszQw8y1B8SlBpmkypi0XoyhzpSNLsCYwcy0Z8O8Mpj1BpCoX8DQapi1Pr6pFa21y96dDr6ZOrO1Psmky879Dpmkyry}/|68AoStIrT9L834wficypmkOpClBeO8A86tyrSdLr39Ofi0y86kzpz1Bpy8M2zIwvmNBqncwpygEpS9LoSZIsT9B821NpO9Bsy9V82AauO//0woyhzpSNLsCYwci0Z8O8UpzxCe6oX8ygwpS9LoSZIcD8Z828wpidBe6kU8zwaeO1Zr6lFsO1C92xDoCZzrSNPszQw87VubOUzbyUKbygKaiZX82./0w921DoCZzrSMNszQw921DoCZzrSMOszQw921DoCZzrSNPswEX87RIpmlPuO?/|6gwpmAy86Vlpn9LoSVDuCBApm8woStIrT9LrO1Qs6ZF86Uyn68AoStIrT9Ln7cy8DQa2wEw8Rpj84tRpCdKqnhKrMFP87Jxs6JzpS4wplpjeQsw2y/|7cwoDlK87tBuO?////0wri0wumcAomNPsPQwsO1Fq7hC2zIw82////0wumQA86lPpCMZ87IweTQw2y////0woy1Br7dPa21P96NBb6oA86NzsS4FsMEX82////|6lOtnhKsygwpndCr0EX82//,./0wsO1ytmwwomlBp21O2DIw82////0wumQE87cAr6kIpygwb7sA82BEfi1083Jv8<///|6Qw87BB96dKolZQt21O83QD9MEX82////|6pFa21Bp6BCpmUwp6kAoSVArSVFamtX82.///////gwrClvoThxsDgZ874wuT5B86dKp6ZKqjRD929KpmZzqmhDrDQy2zIw82////]////0wsOhIpiRCuPVSsTRDby0wfjMYlBcXhPMau3ZIrnowsClFsSVL8zQKci8MpihzrC5vt7gwsDhPrC5xp6ZIpmUyfmZKfO8afy4YjQhkgR1p84lSsO1Dll1cgAd98y0LblsLgPcLbRh484hmkO17bz4LckkL8AUy87hEs7gLeDsLtTtTbyUPsCYLpT97s65Fq7dzkOZ7lz4LciV4bQhksOZDtz4Np2VAt3Uyf0FSsO1DpnpPsCZFfmUN8z4K829FtThAfmwA8y9Tq21FpmxDfngA8y9ErO1IrC5LfmhF8CBKa7hSpiBQ829FtDtBrQ8Zu30yc20A821Tq2gw8CRUrCMZsSwyt7gWs2YLtTsKtPdTrOVDsz8Lc30Lc7pP8CtU86NJsSVUeCBIqSUyfnhEs7gLeDsLtTtTbyUPsCYLpPANejBUbSBIqSU@8zMabi4wbmN6rm4wpn9Ds64wq7hPoS4wqSBStndIonFFt65LqiVKkO1Bpmwwt7hPs2YWpOZQqnlEbC9LoOZJsC9Kpm5ApSVBsCtDhyZxr6lJsAtMoi1ErSowsC5IpnhQsTowsClFsSVL82NKoi1At6xMt2YWtOZTtS8Kpn9ArCVxsCtDpiVDrScLrmNCrm5Dpm5Oq70KsThEr6RC879Lpi1xu71JpmMKsOQwfyQY2yQx82RfjAlkeBcA86ZKpnhQsTxB87gJbgE@lBcahO//0w2DQw2y/|7cwoDlF86dKtmNBp7Iw8<///|6Qw87AAa6lPpCMwb6cArCZBt7hK82AwflZ02zIw82////0wsOhIpiRCuPVSsTRDby0wfmcArCZBt7hK2zIw82/|0FZ8</1P869RoO1IrT9Lr45Lr65zpnhX82.////1J821V92xBsSpI82NO920IpOgwb68A82AwflZ02zIw82////^//,./0wsO1ytmswrT9MtndvonhQsDIw8<///|6Qw87AAa6lPpCMwb64At7gFszQwg20XnMEa82////|7BJg21vpThxsDgZ86Qws65X82.//////|6kwqnxQsO1PoihQt2ROuPVv921Z83ZMsSBOt6UEpD5N92YZnOky8DcIbOgwt65Ot3UJ97JZnO0F83EFa2.////1Z874wa7tAqmcwomNPsPIF8<///|70wsTkwq6t0olZQt2NO921Qon9QfyRDuSlvt7xxsy1ZpCAA87hxsDg@bmtXplZQu65OeTQw2y////0wqi0wpygEt65Ot3UJq7JBsDRC82AauO///////|7BJg21vonhxsDgaeO///////|7lMq7d085Zxt65Ot20Is7dFsDhK86pNsnwLqmNHrCwWpn8Zpyky8DcIbOgwt65Ot3UJq7JBsDRCqi0wpC4At7gJsDI@sCxCpjJZ8<//////|O1A86pBtm5Qr7gwsC5BpPRQt5ZMrSkwsSMwpmBIqSUwsSBTr6NL86lM86VFtSxQrCBj84tmf21yrSlGt6cafy///////|7lMq7d085Zxt65Ot20Is7dFsDhK86pNsngLsC5BpPRQ9i8ysOML921Qon9QfyRQuT9xpmtZt7Mw87Nv8CZQ8D0aeO///////|7lMq7d085Zxt65Ot20IoihQt2ROuPVvonxBsDhZoi////////0wqi0wpC4At7gJsDI@nS5Upn9Qvm4aeO///////|7cAr6kJpDI@tDdZpOUw83RMsSBOt6UwpD5Nf2YwoncBn3ULry0IrSFKqisE9O0wb40EnS5Qon9Q82NDg65vt7gFszIF8<///+///////1P96NBbmpXfDpPvmsK820Zs7dFsDhK86pNsjML86tP9lM@bSUwb6ZGrCADa2sw82NDg65vt7gFswEX82////|0FZ8<////gwpndCr3UJsTJDty1ZfiVP879MrCBCt74wbT5Qf7hFpmMBfzNPbRNFt6NQfCkIbOgwt65Ot3UJt7JQqmlI2DQw82///////1Cqigwt65Ot3UJt7JQqmlIeTQz87cwrSxIti1Apm9C879Ft7dB86lIpmRQrDswt6BFq21K86tLoThKqm5BrwFO82//,./0wsO1ytmswrT9Mtmlvp6VX82.////1J821V92xBsSpI82Nx97hQan8Z840weRYw2y////0w921BsSpIfyRPuStS87QZbygwt65Ot3UJq7JBsDRCfO1N82ZNn3NxbRM@bSUW874wbT5sf6sLn3ULrwEX82//,./0wsO1ytmowr6BBr59AoSlxt6tKpmNX82.////1J821V92xBsSpI82NU92MN920Nui0Iu2gIcygwcDAwb6oAr6AIr2gwu6lOt2Bxfi1083Jv8<////gwcnwZ87cwsD1KqmpQ8y0M9j4K8Cowb7wAeP4w2y////0w920Ou3QwsO1Os6VFpDgy830BciUypy0Iu2gXcy.////1J821VtOgZ87cwsD1KqmpQ8y0M9j4K8Cowb7wA838wbnwAeP4w2y////0wri0wumwAfi1P879MrCBCt28wc2kNby9C82NV920O82RV93IN8<////gwu6lOt21x83RBp6BCpmUwp6kAt7xxszYw921Upn9Q864wey8y2zIw82////0wsOhIpiRCuPVSsTRDby0wfn5Nf2ZBsDhzu20yfnwA8z5V828Zuigycnswp6BEt28ZtOgw8ClEpSBQq28Zq2gw8CBCr6MyfmoAr6Ayr2gwu6lOt21xbRNsfyZK2zIw82/|0FZ8</1P869RsO1Ot6VFl6t6l7Iw8<///|6Qw87AAa6lPpCMwb6AAb6gA82NU920Iuigwt7cIsygwu6lOt2Bxfi1083Jv8<////gw87wwfn1Pqn9Qry1C9i8Kc6oOb28A83JU8<////gwp6AZ820wpmhFpClK86hF921A83ZNsmALfmgA8ChFbO8W828weO8w2y////0w921Upn9Q865Yv20Z8y8aeO/////1P96NBbmpXfDpPvmsK820Zsn4YbSlQt7wA86hFu20yfnwA828Zuigy8DAA87xBsDg@oncAsDhsf7gLu6k@t6VseOYw2y/|7Qw2wEw82/|7lP869SsO1D2DIw82////0wumQA86lPpCMZ87cwqmxQpwEX82////|6lOtnhKsy8wsOhIpiRCuPVSsTRDbPNSsPVDrBMX8y./>?/|34w2zIavncaoDlK86Rxq6lPoi1E2DIw82//0zpktBrC5Opnhx87owoSlLt21OomxEsSowsCZQ86lEry1Joi1Bt7dFsCtK82NBtStFt6xKqi1DomlIsy1VtCZOpi./|O1I87hxsClz865Eon9QoT9BbDdn821BontQrDgw86ZFs6Jzt21Bq7cwrm4wpmZzrSNPsCowsCZC86VRt6dLqgFK82//|S5KpmQwsSdxrT9PsSgwpCBBpClOt6VC865IpmRD865Oq70KsO./0wri0wumUArm4wpi0Zq7dCqjJQ8</1J821VtyhzpmZQ878wfjIM8</1J821VtOhFpmxD87gwfjIN8</1J821VrihUojQwci0aeO//0wumQA86ZJ86gwfj0N2zIw82//0zpCBJ86hLr7kwpm5KpmRM86lOpndQry0IsDhKti1zrTgN87hPoO1xq0FO82//1K96Rx86l@fncwbyYKa3YGo2ALbMEX82//1LpClOoS4wq7BJ920woTcEr71QqiYwb2YA865KpmQwagFX82////|7BJ920wqi0ZrOxAsygwamcB82gwrSQXp2.////0A86lSt6dOrOIw83QAa21F82YAa6ZJaSgwaO0Jaj4wai0GtOhFpmxDeTgw2y////0w921xri1UfiIN82Ew921BtStFt6waeO/////1T96BBq6swt3QGc20TbzIM8<///|6MwsS4wt6pF921Lri1A83UOcgEX82//,//0wpn9Rt6VOa20wci0JtyhzpmZQ878wbSQAu64aagFZsMFytncwrnlKnSRxq6lPoi1E2DIw87BJ921xrClJfi1P86BEt6oaeO0wpn9Rt6VOti1MrCdxa6IB8z8PaBsI8ygwomVBrjIFvgEa2DlP869xsChKrmZKnSRxq6lPoi1E2DIw82//0zpktBrC5Opnhx878wrC5Lp21JomxEsSowsCZQ86lEry1Joi1Bt7dFsCtK2yUw82//0zq5hPqmkwsSVOtndBt21xq21QtmpzrCBQrCYwsSBTq7hQ86lEsO1Joi1BomVBrmwwtC4wpmxQ86lxsSlJoO1IrT9L2yMw82//0zrS9Et7swt6BFq21K865IpCRxpSlxsCxMoi1ArC4wsCdPrO1PtmRQr71FpmNC865IpmROpT1xsSxT87hFrSxQti./|O1K86lBqmhDrDgw86ZBsO1Q865xs6lIt7gwpmVx86hEtSNF86lOs7dBsClFtCtKt21Bq6Ywqn9FpS5K86NIpCRxpSlxsCxM8</0z86Ywt71zqi0IrDlFr6lHtO1xq21QomxMs6VB87dFtSxQbi1EbndxbCww2y/|6Qw87BK96Rx86kwfmxPpCAXt2./0wri0wumwAsS4wq20Ztndvrm5KpmRxq6xP92xxrClJeOAw2y/|7cwon9ArygEomxEsPIF8</1O87hBsDkwrC5Op6UNa0EF2DQz2Aowl5lili15jRh4bjFfqi1SrDdBqnhxpSlQt21Bq70wsSZFsSNyt6AwumpLri1HomVF86txpmxzpy1xsClJsOtE86BBq6swt6ZKbmVKtmpFsCYwrmVx86hKqnhPomkwp65ypncwp6VLoi1LrCxQsCkwrzcEp78wan9Lq7hDrSVLr65A87hx865LsT9Rpmca2DBJ921RsRZJontIr0EXumQA87lPnSRMoPJRrgEwumQAu65TnSNxeSNJ2y1VrihUomdvtn0aeTBJ921vrC5Ps6RBr3JP2wFRsO1yrSdLr5ZOqnhBri1M2DIw87BJa21Q971Vb6kA865KpmQwb6cAtmZQrDtvr64Ir2gwrCBvp65Tr6Mwb6cAtmZQrCdvtn0wb6AAp6VznTlM82AwflZ02zIw87BJa21P97hxsDlQomZFb6UA86VFpnhPrDhFb7AA839F82NP920It2hMuj1BeOAw2CQw87AAa2NO920IpOgwam8aeO0aqi0wpCgEpClKqmhB921LoSVRnThMoOBRuO?/1F821Cp2xCpmVFp6kA87lPnSRxtSNI9y1A86pBrCBApigwtndvrn1z87kC9ygwtndvrn1z87kwfyAMuO?//0w921LoSVRnThMoO1R83QAa7lPnSRxtSNIay0A86ZzrDlvt71z87kwbTcArnlznTlMeOA92y0wrihUomdvtn0Z82wwsOhJtntvr64wr20GrihUomdvtn0L82gwtndvrn1zankaeO//1Zr6lFsO1Cp2xCpmVFp6kA865JnTxMoO1R9yoA865JnTxMoO1R83UFc7Iw2gEw86cAtmZQrCdvtn0Z82gwrSdKtlZQs6cwti0GrihUontvr64wr20LrihUomdvtn0aeO///1J97xxoRZRs3Qw921xrlZUontIr0EX82/0w2DQw80FZ80Ew86Aw86oAa7BQpn1B821Nt29Jqn1Bai9X82.//|6Aw86pAa6pBrCBApigwrCBvp65Tr6MC820CqihArDtvr64wr3Q@c20C820CpmhFpClK86hK97dvrm5Is7dB9y0w9CUAsRZJomNMsSk@830wai1X82./////0w921KqmlQsSVQqi1V83RF96hKtRZIoi1I82YOa2Ew921vrC5Ps6RBr2BP83Iw82/?//-/////0w921KqmlQsSVQqi1Vfi0E820Q82YFcOEwa20wci$0FayEO820FayEO82AF2zIw82///,///|6pFa21Bp6BCpmUwp6cAtmZQrCdvtn0C820CoOhRrThKoRZRs3Uwc20wagFX2gAw82/cw86Aw86pAa6pBrCBApigwrCBvp71z87kC9ygwrCBvp71z87kZfz0w9y#0M82AwuO092y09820z82gwondRt65OqnhKrPQw921KqlZAs6cwti0LcywG82gwnSVxsT1JpmMFsO0X82/0w2gEw2i|O1Z86kwsSMwpgFX82////////|7cAt65OtnhxrSAwrzQwci0J82ww834wbP4EaO0E86cAtmZQrCdvtn0L82gwrSdKtlZQontIr2AFay0wayAO2zIw2i09820z8;///|7RIpmlPuO?//////gwondRt65OqnhKrPQwci?//:.///gwunhBs20M83RQ8CRF8CkaeO/0wvmNBqncwpCgEpClKqmhB921LoSVRnThMoO1R9yoA86ZzrDlvt71z87kwfy0M9yoA87BQpn1B821Nt29Jqn1B8D8wagFX82//|6Aw86pAa6pBrCBApigwrCBvp71z87kC9ygwrCBvp71z87kZfz0w9y#0M82AwuO?/////|6AAt6VKpmBPungZ82gwrCBvp71z87kwbP8Eay0A85ZKondMrmlIancweO//.///1Zr6lBsTIw8</////1F97hKrClFsTBQ820wfjgEbO0P820F82ENa2Qwa20wci0LciwH82wwoOhRrThKoRZRs2Yw921xrlZUs6cFtiEw82EFcyEw82EFczIF8<//]//0wqi0wpCgEpClKqmhB921LoSVRnThxtSNI9y0w9CcAtmZQrCdvtn0@83/AauMA9820z86pFa21Bp6BCpmUwp6AAp6VTnSNx86MC9ygwrCBvp65Tr6M@820Z830C9CgwpClKqmhB921vrC5Ps6RBr21P9yoA85ZKondMrmlI87cwfy0M82AauMA9820z82//0wsOhQon9Rt65Lqi1K83RF96hKtRZIoi1I82YOa2Ew921vrC5Ps6RBr2BP83Iw82/092y09821Z8SkwsSMwpgFX82////////0A865PtnhxsCBQrCYZ834wbi0E820N82YOa2Iwa21z97lLt6VznTlMbO0A86ZzrDlvt65Tr6MFaiEw82EFcwEX2gAw82cw2DQw82//=//////gwondRt65OqnhKrPQwci?///,///0A87BQpn0wc20Zt29Jqi9B2zIw87Qwpi1Pr21B2DIw82//0wqi0wpCgEpClKqmhB921KqlZAontIr2ow82pF96hKtRZIoi1IfjUM82ow82pBp6BCpmUwp6UAsRZJomNMsSkC820CryhPnSRxr71PpjUwc20F87Iw8</////1F97hKrClFsTBQfi0A86VFnShxtSNIbO0E820O82FK97dvrm5Is7dBeOAw82/.//-/////0w921KqmlQsSVQqi1Vfi0E820Q82YFcOEwa20wci$0FayEO820FayEO82AF2zIw82//>?///1P97hxsDlQomZF86UwfjIN82?///1Q971Vc6kZ828wqnhBrjIy80Ew8;?gwrCBBt7dKt6AwujQwci1F821CqihQrCVBqndVt3Uwci0aeO0wqihQrCVBqndVt2|3Qwc6pF921KqmlQsSVQqi1V83MXc20a921xsTlQon9Ft6VLfi0N86Aw86pP97hxsDlQomZF86UwfzIN80EA865PtnhxsCBQrCYZ830wqi0wpDcAt65OtnhxrSAwry0YeP0a2y0wsOhQon9Rt65Lqi1Kfi0E820Q82YFcOEwa20wci0JciwL82ww834waOgEondRt65OqnhKrOEw82EFcy0FayEO82AF2zIw2CAw86oAa6ZzrSNPszQw87VubSBQpmQLs2}0wpCAE86UArm4wpnUZri1veBJsn6oAniAWuO./|7gAs7AMpjQw8y1RpCdKqnhKrPIy80Ew87Qwpi1Pr6pFa21K96Rx86l@fmQwnPFrn5NP95QFeDIw8<0w921Vt6lM830wfncyoDlEsSNB8CMaeO/0wvmNBpndX82./gwunhBs20M83RQ8CRF8CkaeO/,0w2DQw2CAw86oAa7BQpn0wc75B8y1Ft6lJai9X82.0A839Ffi0A86VFpnhPrDhF87AGaz8w2zIw820wsygZ82wwcywRdiEwa21F97hKrClFsTBQaO1P879Na7hF97hKrClFsTBQaiAL838w82AwaDcAt65OtnhxrSAwry0Hcj8wcy0GciwJ82gwondRt65OqnhKrOAF2zIw820wpOgZ82wwcywRdiEwa20wci0Ja2wwci0J838waCAAt6VKpmBPungwaiEGcy0FaiEwa20wci0JqigFcy0F82FP97hxsDlQomZF86UwaP4O838waz4Ebi0A865PtnhxsCBQrCYFagEX82|68Afi0E838EdjkG82ww834wbmAAt6VKpmBPungwai0GciwJ82gwcCAwai0GciwJ82wwqihQrCVBqndVt2Ew920OqiAF82AwaDcAt65OtnhxrSAwry0Hcj8wcy0GciwJ82gwondRt65OqnhKrOAF2zIw820wsOgZ82gwondRt65OqnhKrOEwa20wci0Hdj8wdi0L92wwsy0HpOgH82gwam8wai0LeP8w2y0w920wsO0Z835Cqigw87cwfzIN8<gw878wfmVFa7hO93IF8<gw86swfmVFa7hD92Ew920wsO0Hcj8wcy0GciwJ82gwancXai.0A821y83RKqixQoygXai,1B87dI86kauO//0wsOhQon9Rt65Lqi1K83QNa2YwcO0wai0H92xxsTlQon9Ft6VLbO0Q83IF8</1F821C92xVt6lM831Npi8wtmpzrCBQrCYF8DIw8<////0w920wsy0Za2wRci0R82JKqixQdjkG82gwrCBBt7dKt6AFui*0A865PtnhxsCBQrCYFagEX82/////0wpOgZ82wwdiwwdi0HrCAEt3kOay0A86VFpnhPrDhFanAwai0GsOhQon9Rt65Lqi1K82IRcy0R82ENa2Qw921xsTlQon9Ft6VLaiAaeO098209820woygZ82wwcywMc2Iwqi1QrzkE83kwaCAAt6VKpmBPungFaiEw921xsTlQon9Ft6VLaO0O83kRay0E820N82RP97hxsDlQomZFamUXai./>1B87dIpCAE87gAs7AMpmkw875P8C9Rq7dIpi9I82AauO/////|78Afi0E838Ec30H86Awt6URa20R82FF97hKrClFsTBQaiAG82gwondRt65OqnhKrOIwcy0RdiEwa20wci0JsOhQon9Rt65LqiBKeOAw2y/////0A821D83QEa3kRaO1F87hKcywwdi0GqihQrCVBqndVt2AFay0A865PtnhxsCBQrCYH838wdjkG82ww834wbncAt65OtnhxrSAFrzIF8<////0w920woy0Za2wRci0R82JKqixQdjkG82gwrCBBt7dKt6AFui*0A865PtnhxsCBQrCYFagEX82//,0w2DQw2D8wt6lOti1Ksy9ypOgEb79D92gIam8X8DQa2wFRsO1yrSdLr21O2DIw82/|7BJa21Q971Vb6kA865Eq7cwb6UArm4IpigwrCAFp3Qwg20XnO./0wri0wuigEcnowb7oAb38A83dSeOAa2y//0wpCAE86wAsS4Fq7Iw8<////gwcnoZ86Uwrm5Epndxa6xK96RxamkaeO/////1S920O83RS920P83RxrClJomxEsTcEomdxr21Opn9BtDdO86lK96RxamkaeO//|7RIpmBP86oAa65Op6UwagFX82////|7oA834wfm5Op6UNa3IF8<////gwcDoZ878wrC4Ep2AN2zIw82////0wtygwcO0Zon9Arz4EeOAw2y/+////0wtygwci0Zon9ArCRLrBZJomxBsS4Eq6UArm4FpgEX82////|7oA838wfm5Op6VJrSVvrm5Epndxa6xK96RxamkaeO/////1S920P83RxsChKrmZKnSRxq6lPoixEryhJoiBB2zIw82/|0FZ8</1F821C92xLoSZIt79Jqi1B9ypA86pBrCBApigwrCAwp2oC921Kqi1AfjUM82ow82pK97dvrm5Is7dBfy0M82}///1S920N83Qwcy0GqihAryYw921vrC5Ps6RBr3JP8</1Z80Ew8</0z87gwpmxBrn{/|6pFa21Bp6BCpmUwp7gAs7AwpmVx86hQ971V86lNpi8wrSwyt2}////0wumQA821O83QMcy0R82JKqixQc3kG82gwcToXai.////1J821VpOgZ830waO1F87hKcywMcOEw920NtzIF8<///|6Qw87By93Qwc20H86Awt6URa20R82FS92AO2zIw82////^//,//0wpCAE86lAqmpBry1At2hMui1BrC4wp7gAs7Awpn5B8y1Bri9J82AauO/////1Vrigw878wfjIM8<///|6Qw87BD93Qwci0MeiIwqi1QrzkE830waDoAaj8aeO/////1Vrigw868wfi0M82JKqixQcj8wc20GtygFcgEX82////|6lOtnhKsy8wpT8EoD8A92MIpS8A8yAaeO//]/|6pFa21Bp6BCpmUwp7gAs7AwpmVx86hQ971V86lNpi8wrSAF8DIw8<///|6Qw87BO93Qwe20wc20HrCAEt30Say0A835SeOAw2y////0wri0wumsAfi0A83JO8<///|6Qw87By93Qwci0MeiIwqi1QrzkE83kwaDoAaj8aeO/////1BsDlQrD8y86tOa69O92gIb6ty928F2zIw82/|0FZ8</0z86Qwr7lFt7{/|6pFa21Bp6BCpmUwp7gAs7AwpmVx86hQ971V86lNpi8womFxtyAyuO?////|O1886Vxr6gwpmZyq7hx86VKt6ZQomZFsSUE85JvnmEwb5JvnmAwb2UKeOVT86BEq6dx86lO8<////cwoi1zoT9Rt64Fpi0IsS5T86NB86NPomAws6VQtngwomwwt65IqScwsSVx87BKomZKonhFt6VLb7dx80FP82/////0zpm9QsS4w87dLs7dPoCBBr20KqltEt7lL87hKomZKonhFt6VLb7dT821Bpmswt21xqmNQt6lIq21zonBH8<////cwoi1ArCQwt65EoSYw86VxqC5SrTNDsCdYrmYwb7hBbCcw2y////0wqi0wpygEomVBrjQw87UWrlNvqBJtn3EA82AwuO/0z86Ewt6Bx86VKt6ZQomZF2CUw82///////1Q971V86kwfmsypn9KpjIy8<///|7Qwpi1Pr6pFa21K96Rx86l@fmQwnPFrn5NF95QFeDIw8O1F86NKrCAwpmVxrSVxt6BQrCYw2y///////0A87BQpn0Z828wsm5xtjIy8<///|7Qwpi1Pr6pFa21K96Rx86l@fmQwnzE_j6EEtC5Yom5GonpYu6hGv6JBrDNQsCZYpSZzv6RLqndYrDkLaiAWuO0z84EwtC4aoi///////[0ZpO9BsCVBeO8w2y////>1B87dIpCAE86UArm4wpnUZbO0WeyYW82AwuO/0z84EwtC4Iongws7BzqmNxs21OpiRComQJs6txrCkwt6lJq7hArTcws6lOonhxsCYw2y///////0A87BQpn0Z828wsCtBpi9K2zIw82////|7RIpmBP86oAa65KpmQZ821@eyYLey0F87Iw82/|OJ32yIw82///////1Q971V86kwfnAyr6lLr29T2zIw82////|7RIpmBP86oAa65KpmQZ821@eCRsnSJrnlMW920F87Iw8SlHrD9Ipm4wrCVQrThxrSAary///////[0ZrO9xsCtK8CkaeO/////0wvmNBqncwpygEomVBrjQw87UWbOYW82AwuO//0zaQcaaO///////[0Zui9IpmZI8DsaeO/////0wvmNBpndX82////////0zundQsSRB8<//////0w921Vt6lMfi0y86lO8CgaeO/////,/////|S5Cr6NQbn9EtmZEpTgw86ZLoSZI879xs6lIt7hPpi./>?/|6Aw86pAa6pBrCBApigwunhBs64wp6UA87BQpn1B821Ns29Opi9I82AauO/////1CqiwwryhJoi1BvzQL83EWaiZX82////0zaQcaaO///////[0Zui9IpmZI8DsaeO/////0wvmNBqncwpygEomVBrjQw87UWrmlgr78weD9L921xrClJfi0wvzFJbBNIs2AWuO///0zpl1Isy.///////gwunhBs3Qw8y1OpSlB8CUaeO/////0wvmNBqncwpygEomVBrjQw87UWrlNvqRJtn3EA82AwuO0zpmJKsCNB8<//////0w921Vt6lMfi0y879LrC5BpPIy8<///|7Qwpi1Pr21B87Iw82//////|O1P87dVpngari///////[0Zsy9ApjIy8<///|7Qw8<///({/|;//1CqiwwpmhFpClK86hQ971V86lKoi1At2hMui1Bsmky87dGai9X82.////0z84wwrC5Ip21BrS9Et64wrCVQrThxrSBPrywwmRZtqy0ImRZtqi0IbyUXbDswqmxEoS4wpn8w2y////|O1x86dzsDlQoiBB82NPonswr6kwr7dxqi1MrDhRt21xq21QomNHoO1PrC4wumVxrSVxt6BQrCYIsS4w2Dcw82/////dBoDhPoi0wsSZMsTdyqmlI82VFlSxQtmYwt6VxrSVxt6BQrCYIsTsw86lBpO1Q865Fr7hQpmNE86dxumIab2/////|SVx86hxrmdQ86xKrS4w8y0ybTswt6Awq21xby9PqyMypi1zt0EK82////|6pFa21K96Rx86l@fmQwnPFrn5NG95QFeDIw82//dFqy1QrC5LrC5QqnhKrO.//////|6Aw86oAa65KpmQZ821@eCQWbO}/////////[0ZpO9BsCVBeO8w82//0zrTdOtmlz8<//////=//////////0wt2hMui1B83Rx8DlN8C4weO///dRoCNFqngary///////|;////)0wvzELbPEwai1X82//cHgMEH82///////0wt2hMui1B83RV8CNBrSMytMEX82////)0wvzFJbyZsaCEKeDcwai1X82dxiC5SoRdFsDhMa21xrmdQ86wL8y0yrCBM87hxamww2y///////0A87BQpn0Z828wsCtBpi9K2zIw82////|7RIpmBP86oAa65KpmQZ821@bSQLey0F87Iw82/|S5aonpzkSBOt70E865JoTgwq3Ey829Kqm8wqnlQr6VF2yAw82///////1Q971V86kwfm4ytn4yogEX82////)0wvyZJ85UL920F87Iw82/dFjndPrCAwpTBPoCRIrO.///////gwunhBs3Qw8y1OpSlB8CUaeO/////0wvmNBqncwpygEomVBrjQw87UWrlNvqRJtn2AWuO/0zpmJKsCNB8<//////0w921Vt6lMfi0y879LrC5BpPIy8<///|7Qwpi1Pr21B87Iw82//////|O1P87dVpngari///////[0Zsy9ApjIy8<///|7Qw8<///({/|;//1CqiwwpmhFpClK86hQ971V86lKoi1At2hMui1Bsmky865TpmJMtiAyuO?////0w921Vt6lMfi0y875xonkX8y.////0z86owr64Jr6xQrT9Dti1ErThz86NLsCZM86Nxt6lBt0FP82//,//0wpCAE86lAqmpBry1At2hMui1BrC4wp7gAs7Awpn5B8y1EoSBx8CUwagFX82////|6pFa21K96Rx86l@fmQwnPFrn5NTeBQwai1X82//dxtSlH2D8w82///////1Q971V86kwfm4ytn4yoi.////1Z86kwsSMwpi1X82///////cwrO1CpAcJll?///////0A87BQpn0Z828wr69BtjIy8<///|7Qw8<///({/|0FZ8</0z86cwr6ZOrT{/|6pFa21Bp6BCpmUwp7gAs7AwpmVx86hQ971V86lNpi8wpn8yp2}////0wumQA821O83QMcy0M82JKqixQdjkG82gwcnoXai.////1J821Vu2gZ83kw830waSVFa7gMe2Ew920NtzIF8<///|78wt6lOti1Ksy9ypOgEb79U92gIanwX8y./>?/|6Aw86pAa6pBrCBApigwunhBs64wp6UA87BQpn1B821NpO9BsCVBai9X82.////1J821VpOgZ838wc30H86Awt6URa20R82FS92AN2zIw82////0wumQA821U83QMdiIwqi1QrzoE830waDoAaj4aeO/////1BsDlQrD8y86tOa69U92gIb6tU928F2zIw82/|;//1CqiwwpmhFpClK86hQ971V86lKoi1At2hMui1Bsmky86NypnkF8DIw8<///|6Qw87By93Qwcy0Rc2Iwqi1QrzkE830waDoAaj4aeO/////1Vrigw87wwfj0UaO1F87hKdywwc20GtygFcgEX82////|6lOtnhKsy8wpT8EoDwA92MIu68A8yAaeO//]/|6pFa21Bp6BCpmUwp7gAs7AwpmVx86hQ971V86lNpi8wpnBIr7tLai9X82.////1J821Vu2gZ834wdjsH86Awt6URa20R82FS92AN2zIw82////0wumQA821y83QMdiIwqi1Qrz8E830waDoAaj4aeO/////1BsDlQrD8y86tOa69U92gIb7xy928F2zIw82/|;//1CqiwwpmhFpClK86hQ971V86lKoi1At2hMui1Bsmky87lMs79Br2AyuO?////0wri0wunwAfi0N830VaO1F87hKdywwdi0GtygFcgEX82////|7BJ920wpO0Zc3wH86Awt6USa20M82FS92AN2zIw82////0wpn9Rt6VO8y1Dsyxyu2gAb2NDu2gyagEX82//,//0wpCAE86lAqmpBry1At2hMui1BrC4wp7gAs7Awpn5B8y1Nom5Rai9X82.////1J821VsygZ83kw830waSVFa7gMdyEw920NtzIF8<///|6Qw87BD93Qwci0RdyIwqi1QrzkE83kwaDoAaj4aeO/////1Vrigw868wfjoN83kwaSVFa7gRdiEw920NtzIF8<///|78wt6lOti1Ksy9ypOgEb79D92gIam8X8y./>?/|6Aw86pAa6pBrCBApigwunhBs64wp6UA87BQpn1B821NrO9xsCtK8CkwagFX82////|7BJ920wsy0Zej4wc20HrCAEt3kSay0A835SeOAw2y////0wri0wumsAfi0V820M82JKqixQdjoG82gwcnoXai.////1O87hBsDkwrD8yoCsAa2NOpOgMb28F2zIw82/|0FZ8</1O87hBsDkwrD8yoCsMa30Ic2MyagEX2DRP2C9RoO1IrT9LsRZxoSlIuO?/|6Qw87AAa65StmMIpigwomQFu3Qwg20XnO./0wri0wuigEb78A82ND920FozQwa20RcyMRcy0Rdi0Idj8FdgEX82//1S96NxpnkZ82QwtyhIomlRqi0wpCUApSlQojJB8</1F821C92xxtDlI86kwfyAMuO?////0w920wpO0ZoygZ86Awt6UOa30Nay0E86QAu64J82gwonpRr2BBbO0A865JanwaeO//|7RIpmBP86oAa65StmMwpi0Yaj1X82.////0A821O83RD93Qwqi1Qrz8Ec34G82wwrihUoiIw921xtDlIamkL82gwomQFu0EX82//,//0wpn9Rt6VO8y1DsyxysygAb2NDoygyagEX2DRP2C9RoO1IrT9LrlZMonIw8</1J821V92xLoSZIsT8wb6oArDkFoPQwg20XnO./0wqi0wpCkEqnxQsO1Ps2hIonhBpnhJnT1x97JRpCdKanRX82.////1O87hBsDkwrD0Ar65QpmlQrlZMoihXtmpzrzJZ8<-////|70Ar65QpmlQrlZMoihXtmpzry1Z83RLoSZIa79z96NLsCYIsOgwomxEsO0IpyhKtiBz2zIw82////0wpn9Rt6VO921xs6lIt7hvpm5JuT1C96VRvmcaeO//0w2DQavncaoDlT86BOpnhMnSNxt6lBt7Iw8</1L86lMa6V9hAlc82M@8D0Ar65CnSNF8CkXai./0wpy1OrS5Bq6dJ821VqOhVpiwwrTdQsCIwumkwsT0Br65QpmlQrlZMoi}////0wsD1Kqi1Qikp5j2gwpmIKuiQy8zUAbC5MpmNQt5ZBomRXs6IAumkKvlMy8CUaeO//]/|6NzsSYEpkB6hkMXanQa2wFRsO1ypn9Aon1vr65QpmlQuO?/|6Aw86oJa21Bs2hIompvr6AFpnIw8</1L86lMa6V9hAlc82NM96NxpBZIqiBBrO0wsCBA86lz8CVxt2tL86lM86VFpClI921xs5ZIqmpBr20W8igX8y./0wtO1Fq6lIa21J821Vr2hKqi1B83R6f4N9fAkwagFX82////|6xzrmYEs6MArCAFpgEX82////|6QE87BH97BB82NVrigwonpRr2BBfi1P86NMt6Aya3UJb29I96VFamkaeO/////1M96Nxt6lBt6Rvs64AuSlHvnAAfm5StmMXpi./>?/|6cwrSNBsQoEj4AFhi./>1Z2wEaumQB86ZepmgweO//0zokxEsSYw86pBrmtOp6lC865OpmRA87hx2C5VrikwrlgXs0Ea82dIpDtLaixJ879BpmswsTtQ86ZQsSdxsSIwb7hPsCZKqi1Dq7gwpmlJpT9Apmowon9Bri1PrC4wp65StmMwpm5AonhF821KjylArOVBsMFytmowrSMwtMFX82//1Vriwwr2hPoiNQ921Et7dF82NS920Ip2gwb6AAb7sA86hF82AwflZ02zIw2y/|6Qw87BI96VBolYZ840wr2hPoi1Q82QXci./0wri0wumMArClynPQwg21Q96BE87cwbjIN2wEw82/|7BJ920wqi0ZeP?/|6Qw87BI96VBsRZJojJB8</1C879La20weSAAf20wfmMArClxnO0XqigHaO}////0womNQsSAw86pF93Uw921Br5ZKeS8w2y////0wr21Poi1QpCAA865It7c@bihrnmBK821Bt2hFq2RPmPVF93Jt8<:./0w921Br5ZKondBrjQw920XqgEa82//1Lpy1O92wwqi0Zr2hKpm5v83JF93Uw83RI96VBsRZJojJB920JqiAJuO?////0wri0wumIAfi0y86MAsS4Jt5I@qigXnmAAeO8w2y////|O1x87kwqmVRsi1Bh4BF821PrSdPrD9QoTlBt21AsCpJrO8wtmpzrCgXs6lEt6kXqnhBrjIy8<////cwpy1KtiRzpmhQs21EsSADry1QrDlNqmlR82NQqmQwum5y821Bpn9Bs7hxp6lI87hxsCkaby/////1e96hLuSkA8zJHtyhZ8zUJsTJFt6lJ87QwfmlApmNBt2gwrlhXs6IAbnRXfDhPrmBZpgEX82////|6pFa21Bp6BCpmUwp5gAs6QAuTRHfyRAuSNBongFvnIw8<//////0w921LjClA8DJH92gX8DoJvnI@pmhQr7Rxfi1A86NBt6kwplgAs6QAuTRHfyRAuSNBongXvi.///:.////1F821Cp2xCpmVFp6kA86RkuT1H92RZuPVQoSRFvmkwagFX82///////0wjyhArTJB928XqToAvi8@bmdXqnhBri1Z83RBp6lIpngA86RkuT1H92RZuPVQoSRFvmkaeO/////,/////1CqiwwpmhFpClK86hk971J97JZqPUJqnJArC5Tr6MFvnIw8<//////0w921LjClA8DJH92gX8DoJvnI@rCBTp6NxvmMZ86gwr6lQpi1Bl2hMrihXvmI@bmBXp6VxtSNIeTQw2y////>?////0wqi0wpCgEpClKqmhB921Jl7JMqOgJvnI@rCBzp7lManRX82.///////gwrQVBp29XqOgAeO9SbnRXfCVFoShRs21Z83RBp6lIpngA86RkuT1H92RZuPVKqmdAtn0Xvi.///:.////1A86NBt6kwplgAs6QAuTRH2zIw82/|0FZ8</1C879La21F93Qw921Br5ZKondBri0XqigY820Zr2hKpm9v83JF92IH82AauO/////1Vrigw86Iwfigyq7hPqjUJ95JtqigX8CAaeO/////1k971J97JZqPUJsTJFt6lJ87QwfnoA2zIw2y/1F821Cp2xCpmVFp6kA82BAuO?/0982/|6pFa21z96NLsCYwsTUZbO1QnCRFs6kFbTIw8<0w2i0w2i/0z82QwoORIrT9Lt3RJqn1BsBIwnmBTr6NE86FFoS4wqSlAt6MwomVx86hPti1Bt6Bx821P865Kcy1ArCBBp6lMp6VKpi1QqnhBriYwsO1JomNM86lLoSVR2Dg92i/|5gAs6QAuTRHfyRzuSBQpmQwvi0Zp2gaeO//0982+/092i/|5gAs6QAuTRHfyRAuSNBongwvjQH920wqjQZ921Br5ZK868wfSgAey0M80EX82/|0Aw82>?:.|6Aw86pAa6pBrCBApigwtSAwagFX82/|0Aw820w921Jl7JMqOgJvnI@rCBTp6NxvmMZ82gwtSAaeO/|;/0wpCAE86lAqmpBry1AqigFp7Iw8</0A86RkuT1H92RZuPVKqmdAtn>0ZqigXp2.|7Qw80Ea820w2DQw86lOtnhKsygwq7hPqgEX2DQz2D0wsC5BsSAws6VQtmQa87B4g7hxeS5J2y1VkQ1OrSlQh6hQojJxrgEwumMAsS4wt20ZnlIaeTBJ921Ft6lJfi0M80EXumQA86lAt6Mwoi0ZrDlBp3JCrgEwumAAp6VxtSNIfi1R86hKpCkaeTBJ921KqmdAtn0Z87kwp6VCpgEXumQA86tFrSVBsy1A83QXc6Qa87BI96VFeSlJ2y1VrihUom5Tr6MZ830w2zJVrigwomRAu6NBongZ834w2zJVrigwtndTrmNx86MwfjIMrgEwuncArnlMoO1R83QXc6Qa87BK965Ps6RBr21P83QXc0EapCAE86cAr6ZOrO1PvzQL87hurmBMpiALuO?0w921xrmhUr6lxt3Qwc20aeMFZ8MFO87pBsClBsSAw86pBrChBp6lC2D9LomlEoOwwfzMwagFX82//1EoSRLeT?//gwqmNBrzQw920XnO.0986pFa21P965QqSdBsClSsT8FpnIw8<////cwt21Bq6lOri1Vom8w86lKomkwt7xxsDcwrm5Is7dBoO1IrSRR86VLpy1OqmhCpD9BrClFt6Nx2Dcw82/////dom21orThLp20Wpn9Lp7gwpmxBsR8wsQlx821PrCYKpkAw9TgwsSlOpn1QomhBoy1IpntL2yU92nBJa21P965QqScwb7cArm5Is7dBeOA92CQ987BP96Rxr71Ppi0O83RKtmlAeSow2y////0wa21P965QqScwb7cArm5Is7dB82AwfiYEa5UGbBMFaTdsa2JAfOwWeBM_aCgFfOA_sRM_ayYAeOA92CA986oAa7hPoS4wqTUZbO0EnyEKn2AHsRMEaSg_a3EWn3YGp2A_ajZPn3YGbOgwagFX2gAA2m5Ps6RBr39Pfi0A865Ps6RBr3JP8<///|0Aw92xQsSdxb6IA865Ps6RBr2BPfi0A87hPoS4wqTUZa21ubOUEaiFPn2wHp5MEaPE_fPFAn3YGfOBsaiFP93YFbMEX2gAavi////&?///////1R87dKqmxQpA0wokhxt20IrSFKqi8E8zIwb6lOpnpPsy1Bs7dFr2xQeO8I8ygwt7dzoiBH82Awby0ysOhJomNMsSkA865Ps6RBr39PeO8w2y////=///////|6VRq7dCqi1Qh41QoiNxqy1FrOxKeO8I8D8wtClOpmlPsO1Is7hF8ywyeO0IsOhxt6JzaiAK828w921xsT1JpmMysMEX82////|;//0wvmNBpndX82.////1R87dKqmxQpA0wokhxt20Ir2hKqjJB8<:/|0Ew2DRF2y1C92xIpCRxoSlxq7hO82AauO///dKimowomNBrmcwomxQsCQwp6YIpmEwsTkwt6lOpnpPsy1Bq7gwpm5AonhP821LqnhBrmQwtCZPpmowrT8wrmlIt6pQ821Lqn9EpOVQ8</1086Zjt79Apm54ongZ878wtClOpmlPg21xh65Q2zIwvmNBpndX82./0wg21LkThOp6lxh65Qfi1P879L87h4g7hxeS5Z2wEa82dOs6dLsSkwsSVx86hBrmtO86lOpCRxsSlC2D9LomlEoOwwkQ1OrSlQh6hQoiBxuO?/|6cwrSxMrgEX82//|T9MoSZPpjFPpy1IrSlAnShQsSdx86JLoSVR2Dgw82//0zpSkweDlCoSVxnSoXrDlvoPJytmpzrCdvcO0acmQ987AAa7hPoS4IqOgwondMrmlIancaeSQ987BF96hKontIr3Qwti1ArCpB2zJJ2i1VsOhJomNMsSkwcy0ZrDlBp3JC2gFVrigwrCBzp71R87kwfmVRpmgXpwAa92xQsSdxb6IA865Ps6RBr2BPfi0E85ULbywFaDdsa2JAn2wHezY_eChsfOE_alMFaDcAfOAL2zJF2i1C92xQsSdx86J@fiYwa5UGbBMFaTdsa2JAfOwWeBM_aCgFfOA_sRM_ayYA82AauMA9sOhJomNMsSkwcy0ZsOhJomNMsSkaeMA992xQsSdxb6IA865Ps6RBr2BPfi0A87hPoS4wqTUZa21ubOUEaiFPn2wHp5MEaPE_fPFAn3YGfOBsaiFP93YFbMAX2wA92mpFa21P96Rxr71Ppi0OvzQL82xup5MFaOwWp5MFaOYA82AauMA9a0BP96Rxr71PpiMO921KqmdAtn0wai0ZsOhJomNMsSkwcDUZa21ubRMEaSgWalMEaSgAaiAL2gFZ2gAa2DRF2i1C92xxsT1JpmMwsTUZbO0EnChsaiIEeChsaiIL920F2DI92igEondMrmlIb7cA86VFtShIoiBIfi0A865Ps6RBr21PvzQE85ULn2wHp3EFn2wHp2gFaiY92wFZtgBIrDdB87dAa6pBrCBApigwondMrmlI87dKoi1ApmhFpClK86hP965QqScwagFX2gAHaSAArCtOrShB2zIw82/////1BrDhU2zIw82/|0FZ8</0z87gwpmxBsCQwum5y821BrC5B87hUon9P86Rxr71Ppmcwr6ZJti1KrSowsCBApCpOpmVBqnhIoi1P82ZMoO1RqnhBrgEW82//1A96NBongZ87kwp6VCpgEX82/&?///1F821C92xLoSZIsT8Z821@nyZFt6lJbT0wagFX82//////|SlToi1BsCwwqCBzomBHpSVQ86lE8y1Bp7hI8C5x86hK8y1xrmhUr6lxt20yonpFsC9xpmMKsMEw82//////|S5Ps6RBr21PsSBO865Br6Mwunsyr64Jr6NzoSYwqSBQpmQK8Dcwrm5Is7dB839Pqn8womlIr21VoO9Rs7gwrmAypgEK2gAw820wp2hIpm5Qfi0A865Ps6RBr39P2zIw2i>1B87dI86kauMA982|0Aa80Aw82gwpmhQr21x83RP96Rxr71Ppi0O82RP96Rxr71PpgEX82/09821Z80Aa82|6QAu65Bp7hI864wfm9xa7dA96NBongwampFoi1PoygEpmhQr2Bxfy0A865Jp7xIpm5Q2zIw2i0w921RsSdJtn0H820ZsOhJomNMsSkXcy.1Z82../1J97xxontIr3Qw921xsT1JpmMwsSpF921xsT1JpmMwsO0@rihUom5Tr6MaeO/1P96RRontIr2Iw83RP96Rxr71PpgEX82|6UAondMrmlI87cZaP4w2zIw82|</0z86owsCZz865ErCBD865Oq70IsS4wrCVQrThx86lxtSlH879OpCRxsSlT87hF86xv8Dtr8BQwb6ZC879xr6lQ2D8w82//0zrSdLr6BOpSUwbCxksSBF821P865xq6Jz82NRoy1QomwwsO1xsD1zpmhBrCkwt28EmRZtqO0ysCpJrT0wsCkFpwEK82//1CqiwwoOhIrT9L87dNpi8wq6dFoi9K82AauO/////1Vrk0won1Qsy1P83RMsSBI87gX8yQJ8zIwb7cAonhHoMEX82////|7BJg21BrD1TsC5Pt3Qwa20Xai.////0A87hPoS4wqO0Zq7dCqi1Qs41OondQ2zIw82////0wsOhxt6Jzby0wfjIybiQyeMEX82////|6ZCpn9zoi1EumQA865Mt78E8710sC5Pt2}///////1M979x87h@fncweOZvbTtreRRDbMEX82///////0ws2hOoi1QfiUy85JvnnsX8y.//////|70wsTkwq6V0tSlxs7hOb7cA865Mt78aeO/////,/////1P965QqScK820ZrSFKqi8wbjIXbiMyg21xs7hOeTcw2y/|7Qw2wEw82//0zpmRDsy1BsCpJondBoi1ArD0ws6ZItnhx86le9mhLeCkw2y//gwomNQsPQwpy1Lr2xTr2hPoiNQmO0D82MDsO1Is7hF8y0yeO0IsOhxt6Jzni0wb7gArmAIpigwpmhQr2Nx921KqntAr64Ir2gwrCBzp7lMeOAa2y//0wpCAE86cAr6ZOrO1Psmky86BQpmQys2}////0wt2hJqi1BfiIA865Ps6RBr3JP8</1Z86kwsSNCqiwwpmhFpClK86hP96Rxr71PpiAOuO?////0w921Ft6lJaO0wfncArm5Is7dBeP8w2y/+////0wt2hJqi1BfiIA865Ps6RBr3JP8</1Z87QapwFLr2xTr2hPoiNQmO0InigwqnhBri0Ip2hIpm5Q82NF96hKontIr20IqihArD1zankaeSAa86oAa6ZzrSNQsCRFamlX82.0E86lAqmpBry1AqihArC5Tr6Mwan9LtO1Ooi1KgO9IrT9LrCAwpTBysO1JomNM86lLoSVR87gwbSBQpmRO875BqnlBsy1Ptn9KrCVF86tEt21BrCBRs21Qt7dzoi1HsDhzondBt21Oq7lLq6sD87hPoS5zqSNLomNPs2RBqnhBrm8KsS4Dq20Kt5dKom5Ap79C86VRt6dLqiRKomVBrm8JsS5Apmcwr6ZOrSVF86tIqi1Ipm9R86lPbChKn3Iy8<wwoOhIrT9L87d@8iYwt5VJqiZB82BKoi1Ap2xCpmVFp6kA86VFtShIoi1IrC4wp6lAqmpBry1Ap2hIpm5Q82BKoi1AontKsy8wrQdLr6BOpSVy821VondMrmlIoO1RrThKbO1Q86RF86lPqmUwt6ZP871RrT1QsChBtO1Bq21KsTlKqi1Dq7gwpmlAt6MwomlytThBpi1KtTgwrSVFtn0wt65Ps6RBr6cwtmZQry1P82ZFt6lJbDdKn6p9t21Bq38wp6VF871Kt7lF821PrC5F87hKs6lKpmlAt6VP86Rxr70wpmZzrDkwt20LqnhBrmQwomlRsSlOpmRQry0IsTkwpiQDoORIrT9Lt3RJqn1B82tKqnhPomkKp6Vs2y8avmAa86oAa6ZzrDlKt6Rx86lNpi8wondMrmlI8DcwagFX82//|Sp9921LoSVRrDhJoi1BsSBR86lPb6hF82tQ87dFr6lHumNQ865E87hBtT8D86lLry1QpmRPon9RrCAwpSVFsO1xt6JzsO1JomNMsSkw2y//cwa20KpiVDt21Jqi1BrSdIti1Apm9Q86lEti1FryBQ82NLsSgwrCZQ9TswsC4Kry./0wtO1Ooi1KkO9xt6JzoO1RrThKqi0wsSZI87sAa6BQpmQKakgwp6BP86RLt6lFq6tKpO0wrT9TrCY_pSVs829CqigwqnhBrjMwci0Mc0EX2DRT2D9x86V98CVDsCZApigwpSBLrClO86hFr6lK87dFtSxQqi1SrCNxp6BC879LomRst29Kqi0wpCAArCtOrShB2zJKtmlIsTcE87gArmAFpnIw8</1T879x86V58B9ikAYweCZesO1xt6JzoO1RrThK87dLpCVRn6gyrwEX82//1VrigwrmAZ85cwhRo@bmlKa7sXai./|O1B86BJ87hKomkwsD9OrSQwsSlxsSlDkO17ly0IrSowsCZQr6YwsTlxrThxrmBQpSVC865IpmROpT1x86xPtgFB82//1VrigwrmBDomxBqmlEpO1Q83RC96VLsThWqi1B82EXdi./0w921JqjUJpmxAon9B92xJqmtxtSlAqmxQ82NF965JpmtBq6tFt6wXai./0w921JqjUJt7dFsCtKl5gEhCVRpmgIpCAwt6UAa6RFpS5TpmhFq7gL838wb2AA86ZCt6VFsSlWay0O80EI82///0whi9ikB9f83FLjDowr65AqmAws6VQtn0wrT9FtClA86hLt6owomNBrn9Ds64Kq6NM8yUXai./0ws21FsDhK921JqjUJtDcXpO./0wpi1Fu21QeP9Z2CAa86oAa6BQpmRxri1UrC4wp7gArmBJpnxxf20A86BQpmQwagFX82//1xtSVO8y1MkSdBpCBBqi1AbiRLt65Q86NQ96RFrmlUomAw87dBr7dPt21xq21KoS5Rt6Nxt21QrSNx921Ft6lJ82NLsSAwrCtOrShBrBMa8y//0wpCAA86BQpmRxriZUt2hJqi1B83UKc38M83Iw8SVLumNT879x86VPqncwpSBFrCBComdQrywwbCkKpO0IrSUwt6ZOrDlFp6tKpi1zt0EF82//1KtmlA86pQ96RFrmlUogEX2DRQ96RFrmlUonMwfnMA86BQpmQaeSQAu65TnSNx86NYv20ZrihUom5Tr6MaeSQAu65znTlMv20Zv2gwomRAu6NBongaeTcArnlTnSNx86NYv20ZsOhJtm5Tr6MaeTcArnlznTlMv20Zv2gwtndzrnlM2zJK97dvrm5Is7dBv20Zv2gwsSVJomNMsSkaeSQa87BT96hFq7hBs7hOrmAwpi0Z92xJqmtxtSlAqmxQbi0O82Ew921Mu6hx82AwbTgArmBJpnxx2zIz2Bgwpn9Qom4w87cwomlMoT9Kpm5QpmtL821CqnhBrmAw86pEt21Bt7dFsCtKpi1Ary1PrCBx828w8ykabDBJ921FrntKp6BEt7hvrmAXpmAa86oAa6BJtSVAqmxQfi0wvykLbOgwagFX82//1J96VFqntQp5ZEqnhBrjQw921Ft6lJomQwu20GrihKqmBTt6hvq21C82YMcjIMvgFB87dI86kauO//0wrihKqmBTt6hvq6BQpmQZ82gwqmRTrChFq7hCnOYw921FtThAs6xOpmBQpmQaeMFZ8MFM87lOpmVy86ZIqScwsSxQt65x86lOt21LrSUwsC5Lsy1TrC4wp6lApnhJsCVF86lxri1UpmhQs0FEq7tIqi1BriwwuigEp6Awb6UAp6YFpjQwpi1zoi1EjylArOBBuO?/|6Qw87AAa7lCoSUwb6gAs6lEt20IpihFt6lJ82Awfn1PqmMwt3Iyb28A86hF2zIw82/|7BJ921QsSRF86kwfmUAp6YJpnI@t7dJqnRB2zIw82/|6BA86lJ8DdFqndDrDcwonhQsCowsCYA86hF829CqmUwt6ZA86pBrCBApigwt7dJqjJB2wEw82/|6pFa20Aa7hBrmAJpncAqnhBri0F83NJ96VFqntQp5ZEqnhBri}////0wpmhBr6lQ921LjClA97JAqjJZ8<///|6Uwu6kXt2./>?//gwpmhQs6REu64Z82gwpmhQs21EpCAA86lAt70wq20@p2hMpmxQomQXu7Qa2wEw8T9AtS5z86VxonoIsS4wp6VB869Jp6lF87hKsClzomBQpnpa87pxkS5OoT1F87hOs6tLon8arnBJ921Jqmtxq6lFpmxD87gwfiwEp2hMpmxQomQwu20Haj4G82gwsCpJomxBqmlEpOBQaO0A871Vp64wci0Huihxs39A2zJF965JpmtBq6tFt6wH820Zuihxs3dAqi0wpDcAoDlFt6NQt6lUpi1QpmUy83IyrgEwungAt6BBr6BPpnEZ82gwrSpQrCBPpnEH83kw2zJVrigwrmAZ85cwhRo@bmlKa7sXamQa87AAa6NyoS4IqOgwp7pOpTBB82NA979Dumkwai0Z2yww82/|6AAbmRzfCNLsCZIgmZIomdBt30E82MIc30wb2Aw2y//gwrmA@bmZzrSN1sCNIoSZQoixBdz4Ic34wc3owb3oNaj0ab2//0wqigJrmc@r6ZOrSN1rSNxoSlQcywMc20Ic38Ic38wc30Iai.0F80EXqigJrmw@omlBp2xOqihxrmlDqntQp2NE921Jqmtxq6lFpmxDangaeTBJ921Kqi1z83QYf4V9eQcY2ClAsSoafy//0wr3NKqm5BhT9xsCBArCkwt6hF8zRxoCJzsCtRrShK828Nui8Z8z1V83QOci8w8z5U8zQyc7wwfj8M8y0y2zUw82////0wsPNLt21Mt7dMrScJr6ZOrO8ZoyhzpSNLsCYycmYwpCpBsPRQdi8y9iYw2zUw82////0wsPNLt21Mt7dMrScJr6ZOrO8ZoyhzpSNLsCYycCYwpCpBsPRQei8Bdi0yfyYw2y/|3Mwr2ZKqm5BhT9xsCBArCk@t3Map2ZCpjVPf0FQsSNV86lVt6lM8zRBt7hUoOZPsPUy8</1Q87xB87gwuSZCt6VCbmRxr6AWumoArCZQt71VeSlC86VLbnhFsSlW93FCuSVLsThWqnRBu70weSBCr6MAeCNyoS4XqTQw8</0z86lPsC5EoO0IqidKpT9LoSlPoi1B87JMrSdxt6AWuiUMeP5z879RrTcWsCZMrCBBt3JOvi?//cwpndOomxzq3FSrT9B82NP8S5BoT8Kq6xPtSYwb6AzrCtOrSdBsS4WpmZEpnoIsycwpSBLrClOomdBsTcKrSwwtO1Xs6ZzonhFeDAXcnQw8</0z87lPt69QqmlIuO1Q87xBbnhKomxzsCZJeChFr6gXpmowrCYJt6ZzrSMWsDoApShBszJVvi?//cwqnhIt21B87JBt7hUoiRzrCZEeD9FrmhApmMweSZCt6VPbnFFeClX96BQr7hPpnFFvmlUs;//1R8TFKrSYwri1XtmdPsD9Ls3FFrThKsCkweMFZ82//1C8S5OpmQwsO0@eyFLq6lS878wuThPrT9BqS8WomNHoO0Xt7dLsClHtORAqmxQc3ERby0XtmdPsD9Ls3FFrThKsCkweMFZ82//1EbChF86kwuSBAs7dxr3FVrSVBry0X2DQw82/|70KsC5Kpi1Q87JMrSdxt6AWuiUMePlZ83MasOZVt6lI2zVPf79zs6Awt7BQpn0yfmlQt7xBbSRzsS5OoT1F8Dgafy4YgRJ1h45k2BIw82/|7kypndP879QoSAyt0EX82//1xty1Opmhxt6NFb7dP865BoT9yq6VQ82NKtmZWrmZQoyNKri1Qomxzp6lUt2NQsO1Dty0IpndOomxzrCAIpScwsDlBsDhKpldOomxzplhJsy0IpSBLrClOomdBsO0IpSBLrClOomdBsTh2eSUw2y/|6owrDlQoSZF86VKqnhFpixQty}////0wpmhxt6NF87cwfmZAtmdBrnhKpOVQpmN5rmlKpk9QinAEp6gyt6lFondIai9CbD9Ft7dEgSNFeSgw2y////0wsO1xpmdOoCxKt3Qwp21zrSRRrCkKt6lDhnhBr6lJt6VVgCh98yxBsT9xq6cF8wEX82////|6tFrSVBsC5zpndQgy1K83RLp7lzpmRQrCsKt6lIhmRBrCl2t4BVa6hF8CVDsCZzpndx8CkXai.////1R87FKrSZyrmVQfi1A86dLrnlKpiVQpmt5t6lIpmRQrDB2p4Aya6VRrTFJrOAy2zIw82////0womRzt6lEt6hQu3Qwp21zrSRRrCkKt6lDhnhBr6lJt6VVgCh98yxxrmdQpmwyp3IF8<///|7cwpToZ86gwoSZJtmVBbDhBpQlQpmNBrnhKgDdkumtxokVBri8EtDcypRIFnj0aeO/////1BsT9xq6dKqi1D83QXc2.////1z879Rpn9QrCljsC5EoSlkrn8Z86Uwr7kXr0Ea82/////YLti1BsQswl4lM879xrm5Qpn9B87dLt78wsSlLt6lOoi1C865IpmROpT1xsSxP865Qpngaby/////1xty1Oon1xsDdJfi1D87hBs5ZOomRxa7cXai.////1F821Cs2xOomRxbDcwu2oCs21OomRxbDcFui.//////|7EwrSYErmBCp6VDnSZOs7lAa6dLrnlKpiVQtn5OpldVr6lzpmZQa79r9PRU9O8H870wsC5JoiVP87wwaO8DmRQZuisyaO1M879xrm4KsO1V82Iy9OttaiAXai.////1F821Cs2xOomRxbDcFsTcwomlzsyxEon1xsDdJsOUXai./>0a2y//0wbOZB86lSt6VI87dFpnhBrDdO8</1T86VFrSgKtShxhmhBtDhKqkNQsSVBsCkya6NzoSAyqO0ItmpzrCBQrCZBa2}////0wonowsC5QpT9QpjQwpy1KqlZAsCtRrOxMbClxt6tOt6kXai.////1F821Ct2xOomlDanhX82.//////|6Aw86pQa79xpmsKt6ZKpmhxjClJfi0wfm4yai9X82./////////0wqi0wpCkEoOVOt4JIumkZ83QZpy1IomlP82BBsDlQrD8aeO//////////0wbClOs7pBrCl4t6pBtm5Qr2AE2zIw82///////,///////|6pFa21xt6tOt6lzbC5IsTdFj7hPoOVKrS5QrCAEsT0ysC5Kpi9QaiBR87FKrSYErn9QpnkXai.//////|7EwrSYErm5QpT9QpjIF8<//////0wqi0wpy4ErShRoSlJt6VNbClRun9BkSlIt6dOrOsEs2VOomVB9TgFanIw8</////////0L820LpntE87px86lxoCBPomdIr21VrShBrC4woO1Br79xrTFJrTcw86ZIoS5B879Et21BsDkar2//////////0wonowsC5Mon9PrjQwpO1Qpn1vsC5JoixPeOAw2y/////////|6Aw86pMa79xrm4KsOBUp21IpnhB86lxs65OsSRUbwEX82//////////1Cqiwwon1xsDdJuiUwamlApmNBt70wsC5JoiVPeTAw2y/////////~</////////1R87FKrSZyrmVQoOVxr7dPqkNQsS4Kp6gya6BEpmgF8wEX82//////////1BsDlQrD8aeO///////|0FZ8<//////0wbO0wbSlP87hxs65OpmRBt7dOpy1OrTEwrSYwrnhPt64api///////|65S879IpjQwt21OomlDbDhRsn9BkTBIpmdBrTgEsD8yoSkyt3IF8<//////0wqi0wpCkE86MC9CkwbCNQon9QoCBQtndB9y0w9CNBoiVQt6BOtm9Bt2VP87AC9CkwbCNQon9QoCBQtndBnOVOrStFu5YwagFX82//////////1xty1Oon1xsDdJfi1D87hBs5ZOomRxa7caai//////////0won1xsDdJu2UZ86kwbCNQon9QoCBQtndBnOVOrStFu5ZSbCNxpnkaeO//////////0won1xsDdJuiUZ86kwbCNQon9QoCBQtndBuiVSbCNxpnkaeO//////////0wqmxQsT9LbDBBsCNMoS5jpm5QpnhKa6NRb6NK86NRb6NM879xpndMnT9xrm4EsS5Mon9PriAF2zIw82///////,/////,/////1IpmlPqi0wpCkEt2VOomlDbDhAqjQw83RR8DFKrSYyri0Fr6dxpnFOrSYErjIF8<///|6kwsSMwpmpFa20Kpm5QpT9QpmAK86gZfi8wpndOomxzai9P865BoT9vq79MrmZQs2AE2zIw82////0wr6lBsSAw86pBa7gKsC5BpOVQp6AZ820Zqi9KpT9LoSlPoi9B82BLt6tDpmNFnSVDsCZzpndxa6kXai./>0wb65CsSMFpgEa82//0LbSQwtmZBsSYJpnowsCZC879KqmZC8</0L820Lq7dTrO./0wtO1KqmZAbDtAoklApnpQrCBct7dKpn9B8yxLrndRrSlBty9O82NRpCdKqnhKrSkE82AauO/////1xty1OonhDsDhBfi1C86VFnShOpTlLa70Kpm5QpT9QpjIF8<///|6Aw86pQa79xpmsFt6gwt6lFondIryVArRpBr65BtjQw8y1K96Rxt6lMui1B828waRZDrThQnTxBa7hxt6tOt6kXai./>0wb65CsSMFpgEa82//0LbScwpmNOoi./0wtO1KqmZAbDtAoklApnpQrCBct7dKpn9B8yxLrndRrSlQtiMypy1KtnhzrSAEryBBuO?////0wty1OongwsC5BpO1Q83RFpChKpRZLsD1RpixQbD9xpmsFt0EX82////|6pFa21xt6tOt6kwamlAonhIqiVPrSVBp65mtmMwpi0Z82sX9O./>0wb65CsSMFpgEa82//0LbScwsDgJr216rSowsClPsC5EoO./0wbO0wbThzr799bngw86ZLt6tDpmNz87dxbmlBsTdKt6BSqi1BpndOomxz8</1T86VFrSgKtShxhmhBtDhKqkNQsSVBsCkya6lHp7BTrO9KpyNKtnhzrSAwrCkE82AauO/////1CqiwwbClBqQdVp6YwpjQZ83QNci0Qv7ME82VBt6dIsClb87AC9CkwqOVVpmZ3pmgZ83QZdO0Fc2}///////0Kpn9MtClKpkhQpClRonhIaiwaeO///////|6lPsC5EoT1vrT9MrixQeOAw2y////>?////0wpi1Pr21BpCAE82VBt6dIsClb87AC9CkwqOVVpmZ3pmgZ83QZdO0FcTIw8<//////0wpi1MbClOpnpQrCl4ompItixQeOAw2y///////1Q86tLr6tvpmtFrSVBsC5zpncFa0EX82////|;//0Ivmowr65BsMEF8</0L820LtmpzrCBQrCYasO//0wtmpzrCBQrCZD87hBs5ZOomRxa7cwagFX82////|65S879xs65OsSQZ87IweTQw2y////0wty1Oon0wsC5Jom5PsD8Z87swrCBLp2VTrSNxoSBQrCZPbC5BoT8Kq7lPsS9Ot34EbyBMsSBIa7gC9OAD2zIw82////0wrSowsDoEsC5F83Qwc20weO1F83Nxs65OsSROoiVOpmNDrCxQ83IHaOBFuO?///////1S879xt21MrjQws21OomRxondOsCBrbBRMsSBIa7gZ8yAy2zIw82///////1Cqiwwt25Mrj1r85RYv24wrnhrs5QN82BLoThKrCBBtgEX82///////0won1xsDdJt5JMrj1rnlQw820ZpmhLoSlAkBl3imRLrT1BrDhKt2xMrj5ralQaeO/////,/////1BsDlQrD9M879xrm4XsO./>?/|6owrDlQoSZF86Vxs7dOnSlxs65OsSRMa79xrm4FsTIw8<///|7owsC5R86BOfi0y828_2zIw82////0wrSowsDoEsC5H87BBqi0wrC5Mon9Pri}///////1Oti1FfiJH87BBaO0D82sZaO1B86dKp6ZlpkBirQdMrmVLrCkEt65Mon9PrmJrumkFniIw9O0D9wEX82////|;////|6pFa21OtiVFr7dzqixBciQwajQZ8y0y9wEF82///////0wsDkwqi0ZsDkKqnlPsS9Ot6VFa6sIc7kwqn9IbCVBt6swq20Jaj4aeO/////1CqiwwsDkwqjQZ9O0DfMEF82///////0wsDkwqi0ZqntArDtLr2VzrThxrSAKrD9EpClPbCNMt6ADa2s_mOBtc0EX82////|6lOtnhKsDkwqn8aeO//]/|7lCoSVFt6VLpy1KqlZAq6dIqixArSVBp20IpndBr7hzsCYwagFX82////|65S879EoSNFsChKpjQwry1ArOVBtn5OpldVr6lzpmZQgn9Ir7cEr6lzpmZQan8aeO/////1Cqiwwq6dIqn9ArClIbCVBt6sFq78wt6lOti1Kq6dIqn9ArCkMmPJt8<:./0wpy1KtnhzrSAwrCBCp6VDnSZOs7lKa6hLamlX82.////1S879xs21OomVB87gwfmZKpmhMbD9xrCl5t6lIpmRQrwEX82////|6pFa21M8n9xrCkFt78wt6lOtjJK8<///|6Aw86pMa79xrCkKt6hFfi0wfmoyon9Bri9P82BBsDlQrD9K86hLeSkw2y////0wsy1Qpn9R86VFpChKpRZLsD1Rs2xOomVBangaeO//]/|7lCoSVFt6VLrO1FsBZDondBtCkE82NQon9Q82NxtyBIuO?////0wqi0wpCkEoiVQt6BOtm9Bt5JPnO9OrStF8BYH864wt7htsy4w83RKtmlAqmpBryBAsy1Qpn9ReSUw2y////0wqi0wpCkEoiVQt6BOtm9Bt5JPt65Ot21tfjRR86hKpClKqmhB82BBsDlQrD8aeO/////1Cqiwwonowr3QZti1ArCpBrCBApi0Fonowr20ZbClQon9QoCBQtndBolJQt5ROtyVIomlR2zIw82////0wbClBsQ5Qt7hFsDlypngya6Zvqn9vpO0y82JQon9Q82NxtyBI2zIw82/|;//1RpCdKqnhKrSYwqn9vpSZIp65Ba20It65Ot2}////0wpCAE82VBt65Ot69Ft7lPpi9rrRZFsBZDaO9Qon9Q85QZfnkwp6VCpmVFp6kwamlOtnhKswEX82/////VBt65Ot69Ft7lPpm5rt7htsDoKr65BtjQwpi1xbDhQqn9RoClQmTdv8D9LpSAynOIwoi1Qt5ROtyVIomlR2zIw82////0wbClBsCZJpnpQgn9QoCBQtixBnO9OrStF8BZxaThQan8aeO//]/|7lCoSVFt6VLpO1QnRZLpnhQu6kE82AauO/////1xty1OpnhQu3Qwpy1KqlZAq6dIqixAb6ky86BQr7gypiUFqmpPsAdQqmxAr6UKp6ZmpmNxpnkaeO/////1BsDlQrD8E86lQt7waai//]/|7lCoSVFt6VLpO1QnRZLtmpzrCkE82AauO/////1xty1OtmpzrzQwpO1QnRZLpnhQu6kEeOAw2y////0wbO0wbSpFt21Bq6lOsOtx87BKri1Kon1Fr7lQomZF86VBtTswrC4wt6ZQp20wrSZQt21Bq6owrDlQoSZF2CUw82////0wbOZK86Rx86lBoCZCpn9F82tQ87dBsT9xq6dApi0IrShF821QpmxBsC8wpClOrO1Bpn9Rt6VOrCAKpO.////1O87hBsDkwrCoErDkFoMEX82//,//0wtmpzrCBQrCZR86hMt65vpmlQt7xBa2}////0wonowsy1O83RFpChKoRZFq6hIpiwwb78yoSkyt3IF8<///|7owsC5Q83Qwpy1KqlZAq6dIqixAb6ky86lQt7wF8wEX82////|65S878wtO0Zon1PsApBrSNQon8EoiVQt6BOtm9Bt2VPqntQp2VEonpRr2BBbi0XcO.////1S879xt21Qu3Qwpy1KqlZAq6dIqixAb6ky86BQr7gypiUFpnhQu6Z3t6VKpiVQpn9Is6dxa6lsbOxsnBJta5MGalMAn2ML8y8Xai.////1Q864Kt7hFsDlypngKsOVUonpRr21B83Rxs7dOhClLr7hxsyxxbDhQqn9RoClQbDcKu65StmMFpiIwcO0aeO.////0L820LrldIomlI879Et6Vxt21Fq21PqndBuDswrCZQ9Sowt6Bx87BKq7hKqgFD82////|6pFa20wtO0Y838waCoArCZPt7FF86kwaCoArCZTt6hFq7gwagFX82///////0wbDhBt7hUrQdQrCVB87gwfi8y2zIw82///////1BsDlQrD8aeO/////,.////1Q87gKu6l3t6VLpnhQrzQwt21Qu0EX82////|65S879IsPQwt21DbDhBtldjoD9QrCBcpSVBt6sEq2MMt21Qu6MKrClQpOBE2zIw82////0wbOZz86lEqSdF821CrCZVr7swqmxBt71PoS4wpn9Lqi0wpClToO1Komowt6BQ86lEpi1QrD9F86lQsSBOpSVF87hK86ZFtThA86watO/////1CqiwwnyYG82hsbyZBt7hPt2xQu20Fv7NP821I83MFtO.//////|78wt6lOtjJK2wEw82////0wbOZQ86BE87dPqitK87hBs6pOoSkIt68wt7lD87pFsSlx86swrSYwp7hPsC5Ft6tKs21FrThK8<////Yw82ZKoi1AtC5FrTdAoO1IomBIpSVD87hBtldjoD9QrCBcpSVBt6swq6ZQ86ZCrSlQ2CUw82////0wonowsDhPsC4wt20ZokREt6oKrSNOrOwEbTtIsO0F82FUt2VQpmNDrCxQeOAw2y////0wpy1OrOwwonowsy1U83RQsT9xeThU83Uwc20weO1U83QJu2AOuO?///////1F821Ct2xDbDhBtldjoD9QrCBcpSVBt6sEq2MMu20H838w82AZf7sw82AauO//////////0wbDhBt7hUrQdQrCVB87gwfnxQbDhRsTdysDhKqixDb31U820F82IK8y8K2zIw82/////////|6lOtnhKswEX82///////]////]////0wbDhBt7hUrQdQrCVB87gwfi8y2zIw82/|0FZ8</0L820LrTFJrO./0wpy1KtnhzrSAwrCZWrmZOnTdBt6lBa2}////%?///////1L86BOnStLr6hxpiwwb7wyai8aeO///////|79LpSBInS5La6gIpi8wqntQp29EeOAw2y////>?////0wqi0wpCkEoOVFq6hIrQVBp21PfjRR86hKpClKqmhB82BBsDlQrD8aeO/////1Lpy1OtyxOomAwfi0M820I86cwfiVBq6dIqkVAp6ZPpi0X86Awf2VzpmNDrCxQ83IHqiAHuO?///////1W86ZLnSRBsClPa7hroRRFeOAw2y////>?/|7Qw8</1C86VRt6dLqi1KrTFJrSdvqmxAr6kE82MIu78wt65Lqi}////%?///////1F821CpixxbDhQqn9RoClQbDcwu3Qxti1ArCpBrCBApi}/////////|79LpSBPnTpxa6kIpi8w8DwXai./////////0wpi1xbDhQqn9RoClQbDcKu65StmMwpi0Zs2xOomlPr4pxrOxQbClQon9QoCBQtndBu2VSbCNxpnkwai0J87wwbnwAon0Fp2Ewsy1QomZFaO0A871Up64aeO//////////0wpCAE82VBonhepSRx86kZfi8wpnhQu2Ay8<///////////|6kwoiVQt6BOtm9Bt2VPbDxxtDlI86kwfmBCp6VznSBEp6NBa70KsC5KpkVQp6YIpi8wpn9QoTxr8BQKanhxsDhyqnhRsSlUbDoKr65BtiIwcO0aeO///////|;///////!?/////////|6Ywqn9vpS5PpnpBa20ItO9AqmxQai8aeO//////////0wbClQon9QoCBQtndBtOVAqmxQtyVIomlRfi1M879xpndIhC5La7gKpnhxsDhyqnhRsSlTbChFq7hSbCNxpnkwai0Gon9Ft3JL8<//////>?////>0a2y/////1CqiwwbClEoSNFjChArTdBfi0wfmVRpmhFpClKamhO87hBsDkXry.////1C879La21xty1O86AwfiMMoO0Z86kwoOVFq6hIrQVBp3JPqi0Y86cwr2VKpnhDeSxF82IH82AauO///////|6ZWrmZznSBEp6Nza6Brb5RU82Qw921Mu6hx82NxsCBQamYaeO/////,//]/|7lCoSVFt6VLuy1LrRZJon1BsDhKpiwwagFX82////|6pFa20KpnhxsDhyqnhRsSkwagFX82///////0wpCAE82VBt65Ot69Ft7lPpnwK8i0wfmVRpmhFpClKamhX82./////////0wrO1FsBZDondBtCkE82NU8yAy2zIw82//////////VBt65Ot69Ft7lPpnwKtyVIomlRfi0A871Up64aeO///////|;///////!?/////////|6Ywqn9vpS5PpnpBa20ItO9AqmxQai8aeO//////////0wbClQon9QoCBQtndBtOVAqmxQtyVIomlRfi1M879xpndKiixQtDcKpSBTt6gKq65ypndxlyVIonpRr2BBbi0E87wAon0wp20Gaj8aeO///////|;////|;////|6pFa20Kpmxzr6Bep6hLsSkZ820ZrDlBp6BCpmUFp78wt6lOtjJK8<///|6owsCYE865S878wqi0Zb31z83Qwpi1zbCBEp6NLjClAeTdF83MwoO1IbCVBt6sXq6AwaOIwagFX82///////0wrTFJrT1vsC5KpixQmSdtqjIF8<///|7Qw8<:./0wpy1KtnhzrSAwrCZWrmZKa6hLamlX82.////1S879xoi1Qt21O83RFpChKoRZFq6hIryxArONB8y1BsDhzai9xbDhQqn9RoClQeTcw2y////0wty1Oonswp6BEt3Qws21OomlPr4pxrOxQt65Ot7sKp6BEt7oKr65BtjIF8<///|7owsC5U86BJ86Uwfm5MsT96pmZIt65xa7hQbD8Ku65StmMFpgEX82////|65S879Ju7xxfi1M879xpndIhC5La7hJu6VFaO1T86hFq7gXai.////1S879xui1Fri1K83Rxs7dOhClLr7hxoixQt2VObDBxtDlIamkaeO/////1xty1Oon9Ft21L83RPa6tStOVAqmxQoyVPolpBr65SbCNxpnkJ838way0A871Up64wai0LqntQp3JE2wEw82////0wbOZo85xo83FLlSJOsC5RrShKpy1OrQEwtC5jon9zs6Awt6NComYwt7dFtndPpiwwqmowu6lJ2yAw82////0wonowsDlCpSgwpi0Zbz0Mc34M2zIw2y////0wti1WrCZLoCRKt6cKomNPsSBct7dObCRBtCYEpmwyp6AypjIF2wEw82////`.////1C879La21xty1O86AwfjIMqi0Y86kwbCNBr6tKq7gweOJFaiJX82.//////|7owsC5B83Qwpi1rr5RF2zIw82///////1xty1O864wfmBCp6VznSBEp6NBa20Isy9zpi9QbyBQon9QoCBQtndB2zIw82///////1xty1Ou6kZ870wsC5BsSN6omYEt2VxbDxxtDlIamkaeO///////|65S879TpjQws21OomlPr4pxrOxQbC5FtThAbCxxtDlIamkaeO///////|65S879MtnhPoS4XqO.///////Yw82ZPimAw87hKom4woSVPpmZQ2D8w82///////1CqiwwqihSrD9Bpngwp3QZc20wagFX82//////////1MtnhPoS4wqO0Zon1PsApBrSNQom4EuiVSbCNxpnkwai0@rnBKqgEX82///////|7RIpmlPuO?/////////|7kwsT1xt6Jzfi1M879xpndIhC5La7gKoiVVonpRr2BBf21V86BJeSUw2y//////:.//////|6Aw86pRa7dMonhHoO}//////////YLh21OqmdB87hKomlzt7dOrO./////////0wqi0wpCkE87wZf7wwqmQwryoCa21UpmkHaTtRpCtAamk@820ZrnxUoi}////////////0wbClIoTdxj7dPqiVQp64Ep70ysC5Kpi9QeOAw2y////////////0wuy1LrRZJon1BsDhKpiwXai.////////////1R86hMt65vpmlQt7xBa3IF8<////////:./////////0wbO0wbSZK87hKqmcwsDlBsDhKs21QogFE82//////////1IpmlP8<///////////|6kwoOVxr7dPqkNQsS4Kp6gya6BEpmgF8wEX82///////]///////0LbQcwqmxAr6lO86Vxrm9V2Ckw82///////1IpmlPuO?//////////Yw82ZLrCcwrmZLri1Kon1Et2./////////0wqi0wpCkE87wwf6RUrCBY821Yu6kH86owp7lBpPUw83RJu7xx82AauO/////////////0KpmNzsS5csTdFbDhAoixAq29Aqi9BeOAw2y/////////|7Qw8</////////1B87dI86kauO/////////////1LuCRLoRZFq6hIpiwwb6RUrCAwb65OqngFrMEX82////////////|71RomhBt7hvu6kEt2BB2zIw82/////////|;///////]////]////0wpndOomxzaiwaeO//]/|7lCoSVFt6VLti1WrCZLa6RLp7hKtlZAs7hxnSlBt7hU82AauO/////1KtmZWrmZQoyVKr6dPokNPsSAKt6hxa6hE8ChF8CkXai.////1S879xpi0wr20ZrShRoSlJt6VDbDhBr4lJpmVBgDh9uixApy9xsClJ8DcKamxzr6BOp6VB2zIw82////0wrSoEsC5S878wqi0ZeP1F83Mwpi0Kr6lIpSVEt20XaSAFaTIw8<//////0wpi1rr5RFoOVxr7dPqkNQsT8KrmlSrOxBs29OomVB8DgXai.//////|6kwmSNtqmcKomNPsSBct7dObCRBtCYEpmwyp6AypjIF8<//////0wuy1LrRZJpn9BsOxQr6lFmOBt2zIw82///////1Cqi4ErShQrDlvp71QolZBpnhQu20Fs7lxp6lQt5ZUpixQr6lFmOBt2zIw82////]////0wpndOomxzaiwaeO//]/|7lCoSVFt6VLoO1Br79xrTFJrOAEuO?////0wti1WrCZLa6QXagEa82/////YLsy1JpnpL86lLuCRLsO1xt6lQ8<///|7owsC5M879xrm4wsO0Zpmtvt65Mon9PriAE2zIw82////0wpCAE865Mon9PrnwK82BBp6lIpnhM879xrm4KsPJU8<///|6Aw86pMa79xrm4KsOBVp21IpnhB86lxs65OsSRVbwEX82////|6BEt7dOrOVVpn9Is6dxkSlxt6lQryxItiNIry1ItiNIs21OomlPs5ZOomRxa7dxs65OsSQFagEX82//,./0wbO0wbSlPsC5EoO./0wpy1KtnhzrSAwrCZQpStBr6BvrCtOrSdBsS4Epi}////0wpSBLrClOomdBsPQw8i1DqmZKpn9xoSlP2zIw82////0wpCAE86tFrSVBsC5zpncwagFX82///////0wpSBLrClOomdBsTh2bCVIoTdxj7dPqiVQp64Ep7cyrSwytPIF8<///+///////1DqmZKpn9xoSlPt48KrCNzsS5csTdFbDhBsCZJpnoya6xPtSYF8wEX82////|;////|6lOpndvt6lPsC5EoOAE2zIw82////0wpndOomxzaiwaeO//]/|7lCoSVFt6VLsy1PpnhBsRZxpmdOa6wwagFX82////|65S879IpjQwp21zrSRRrCkKt7lNsCljumNBoSlLt45Or6Mya6ozon9Bri1Ppn9QoOAy2zIw82////0wrSowsDoEsC5F83Qwc20weO1F83NIpmMKrClQpPJEqi0HaO}///////1OrStFr5ZxrOxAr6lFmONt8y1FpCNIai8w2y////>?////0wty1Oon0wsC5Joi1P83RBpRZQon1xsDdJaiwaeO/////1Bp6lIpnhM879xrm4KsPJP8<///~<:./0wpy1KtnhzrSAwrClPsC5EoT1vrT9MrixQ82AauO/////1CqiwwsO5xpmdOqmxDry}///////1xty1OpnhJszQws21LsD1Ja7h58DhKsClx87cwomlzsy1EpnhJsywwpn9BpT1U8y0H82.////////0y86NxrSNBtONApi0WpRUwu6kQt2Bv2y8w82/////////JFa6VDsCZzpndx86kwfOMyqi1KpT9LrCAwpS5zpncw8y0W8y8aai/////////0waRMyrBNOk7dB87dQgSNOqiRQ821LrThDpSlIoO1Poi1BpndPrDhFtCBQqi9V82My8zIF8<//////0wqi0wpDgEsCkwrjQxry1ItiBIsO1xpmdOa6xBt6ROeOAw2y////=///////|6lOpndvt6lPsC5EoOAE2zIw82///////1BsT9xq6dKqi1D83QXc2.//////|6cwsDlBsDhKpldOomxzplhJszQwry1ItjJI8<//////0wsO1xpmdOoCxKt6cKomNPsSBct7dObCRBtCYEpncyrSwytPIF8<//////0wsO1xpmdOoCxKt6oKsCBQsSx3r6AKp6ZKpmhxlDlI86kwflcyomlzsy9E8<//////0wri1Qomxzp6lUt2VQr6dPokNPsSAKt6hxa6hE8ChF8CkXai.//////|6Qwt65EoShBu7gKt6BCsT93t6BEp6NKbChLlClIomlRfi0y80Ey82////|;//,//0wtmpzrCBQrCZP865BoT8Eq6lQrn8wagFX82////|6pFa21Bt6RO82BRoT9OrCljt65BoT9kq79B86QwfmlQrn8aeO/////1CqiwwtmdOsCVBkThxpmdOl6xOpi1JfjQwfnlKr6MwamlOtnhKswEX8<///|7owsC5O821B83RBry1Tpl95pT1UoOxOtmlOt6VBkT9xq6dBl6RO82NDqmZKpn9xoSlPfO0D82tFey0D82AD2zIw82////`.////1S879xri1QomxzsSkZ86UwtSlf86FyoSkEt3IF8<///|7owsC5J87xxqntQp21E83QXc2.////1C879La21xty1O86AwfjIMqi0Y86kwbCNBr6tKq7gweOJFaiJX82.//////|7owsC5B83Qwpi1rr5RF2zIw82///////1xty1OtmpzrzQwpO1QnRZLtmpzrCkEeOAw2y///////1S879xsy1zpi1Q83RFpChKoRZFq6hIpiwwb78yoSkyt3IF8<//////0wqi0wpCoErDkwoPQZry1Iti1Iv7NO86dB87gZfmUwr7kFr2./////////0woO1KrSBQtmUXpgEa82///////0wbOZj87px86lxri1UqntQp2VEjO1Iry1VrTtHsy1PsS5T821BomxBtC4wsy1LrO1QsCpJogFB82///////0wonowsy1T83Rxs7dOhClLr7hxsyxzpiVQt65Ot69Ft7lPpnsKp6BEt7oKr65BtjIF8<//////0wqi0wpDsEfy1J87xxqntQp2BE8</////////1J87xxqntQp21E83QXtMEa82///////0wpCAE87lCoSVJbDhxq6dOa2BB82AauO//////////0wbOZE86tFr6xDqnhE8</////////1S879xu20Z870wsC5BsSN6omYEt6lOt6dxbDhQqn9RoClQbDcKu65StmMFpgEX82//////////1OrStFsRZSoixBpn9QoO0Ipy9Iqi9IeOAw2y/////////|78woSkKt7hxsDhyqnhRsSlCbCNFbCNxtDlI86kwfigypndOomxzrSdLr29O2zIw2y//////////Yw82ZBsClJoCROpmQwt65EoTdB8</////////1F821CrixQomxzsSlUmO1tfjRR86hKpClKqmhB82AauO/////////////1xrmdQpmxrsRRUfi1T80EX82//////////0wvmNBpndX82.////////////1F821CtOw@86Qwt65EoTdBu5IFnnIw8<//////////////0wbO0wbTpLsClOtThF86lFtSxQs21OomVB2Dgw82///////////////1xrmdQpmxrsRRUfi1T80EX82////////////|;//////////,//////////0wpndOomxzrCAwpO0ZeP4w2y//////:.///:.////1F821C8ixBsT9xq6dKqiBD8<//////0wsy1Qpn9ReSUw2y////0wty1Oon0wsC5Joi1P83RBpRZQon1xsDdJaiwaeO/////1xs65OsSRPbzQwoO1OtmlOt6VBkT9xq6dBl6RO2zIw82////0wqmxQsT9LbDBBsCNMoS5jpm5QpnhKa6NRb6NK86NRb6NM879xpndMnT9xrm4EsS5Mon9PriAF2zIw2y////0wsO1xpmdOoCxKt6cKomNPsSBct7dxbChA8yxEsTtLai8aeO/////1BsT9xq6dQoyVKqmpPsAdQqmxAr6UKp6ZmpmNxpnkZ828wpl9BsO1QpldOomxzeO8a2y/////0LbScwr65RoS5IpnhM879BpmdQrCQwt65EoShB82NUpmNzp7lKqi1DpnpQsCdFr65L86lSr79Moi.////1S879xoO1RrThKfi0M80EX82////|65S879xr7hP87wwfj4J2zIw82////0wonowsC5It7cwtO0ZeP?////0wty1OomIwumkwsO0ZsA5xsyxVeOAw2y////0wpy1OrOww86JKqmQwt65EoTdB82AauO///////|6pFa21xrmdQpmwKsS5EjTdKtT9gs6ZOpnBQqOwFai./////////0wqO1VpiVPtn1EsSIEeOAw2y////>?////0wbO0wbSZPt79Q86lEri1Qomxzp6lC865OpmQwsTByt21Bq79Fu21I86dLt65LqgFK82/////YLoi1zsSVBqmhDry0Iq7hKpnswp6BEt6gwsSlBoShKrCAapO/////1BqTdVsOVOrOxQtmpzrCBQrCZxa20Iam8auO///////|6lOtnhKsC4wbi1y80EX82/////BZ2zIw82////0wbOZj86lQ871Et6ZOpTkwq79Crm5PpncwtC5Kqi1DrCZVr7gwpmxy86tFpmtQsS8wt6ZLt2RJs7lC865OpmQasO/////0LbTgwomxHry1PrThQ86lEsO1OrO1QsCZBp2VOl21Fq21Ppn9Fr7dBrO0wrCxQ86lOt6lBs21LsClMt78aui/////0LbTswpmxBsCcwqmxAr6lO86VOoi1Br65xtTdVsO1xrmNIsClQ865E86VEt6BB879xs6lOt6UKsO.////1S879xpy1AtmlDfi0M830Kc30Xci/0L820LokFxtCdjqn9Qs6owrSNQomVF86tLs6VF2Dgw82////0wrSowsDoEsC5H86Aw86VBqTdV82AauO///////|65S878wu20Zon1PsApBrSNQomIEumlrsRRHeOAw2y///////1S879xtO0Z86Qwt65EoTdBqRJVplJPnmIXni.//////|6Aw86pUa3Uw83Rxr7hP87wwaS5It7cwtO0JtmpDp2BBuO?/////////|6cwtmZQryIw83QXtO./////////0wr21PonxQfi1U80EX82//////////1xr7hP87swfjJT8<//////>?////>?////0wbO0wbSBAs7dxr21VomRzt6lE86hBs6dOrCkat2/////1xrmdQpmxQp7hUoOVxr7dPqkNQsT8KrmlSrOxBq29Aqi9BeOAw2y////0wty1Oon0wt6cZ834wc30G86cwtmZQryYwri1UomBTt6gXq2.////1F821Cs2xQoO4w83QMciAMs21QoPQws21QoTgKhCZUqmhBciwaai/////1xrmdQpmxQp7hUpyVOqnhPq4dIqiVArSVBp65mtmMwpi0Zji9Qomxzp6kwey0y82Jzs21Q82IB8zIy8</1Z85QafBQY2DcLsCdMqjVQigF3jygarmA@bmVFr6dAtixBqihzrzIF90FJqjUJqmpIr6hBpl9QoSVxr6sEpiMMc20wb6AAomRBpSBTt6gIq2gwrmBDomxBqmlEpONQ9O1OtixIoydzomtHrT9KtiBAaisaeSAAbmRPfD9QrCBkpQpk8yxFt6NQ8Ckwb6VFa7hF965JpmtFtThA86wwbOAO82NC96VLsThWqi1B82EIcygwqnhIt7hBu6kFt0EXqigJrnc@sDhKqlhDhBgya7lPt69QqmlIb29F87hK92xJqmtxtSlAqmxQbO0O82MF921LpDhKqndBuyEwd20wb7cAoDlFt6NQt6lUpiBQqi0wpDcAoDlFt6NQt6lUpi1QpmUy83Iy90FJqjUJt7dFsCtKl5gEhCgyt6lFondIb28A871Up64wb6AAomRBpSlEpSBQq2Qwa21V965McCgL838wb2Ay828weOAA2CRFfyRQsSBOpSVkl2x6ti9WrCZL8CQwb7wAon0Ip2gwrSpQrCBPpnEG838w82Ni8DdBt6lq86ZL8CQwb6cDomNPsO8ZqmxBp2syeOAA2CRFfyRQsSBOpSVkl2x6sO9xpmdO8Cwwb6AAomRBpSBTt6gwq20Ju2hxs21A82QMciMM921LpDhKqndBuyEwcy0wb5cyomlzsy9EeOAA2CRFfyRQsSBOpSVkl2x6qi9KpT9LoSlPoi9B82NF965JpmtFtThA86wwbnwAon0wp20Jdz4wb6oArCZPt7FF86kwayMO8y1zqiAy2zJF92RJsPVOt6VFl6t6l28EomRzt6lE8Cgwb6AAomRBpSBTt6gwq20Ju2hxs21A82QMciMM921Jqmtxq6lFpmxD87gwbigEs7BAoi0O82YFcy0I828F8wEXqgEwpygEon1Br7hQamlX82./0wsy1xplZAon1Br7hQa6kXanQa2wEw8T9AtS5C865OpmQasSAAbmRDfCZOs7lPnS5Qt79Xa6hFfi0wfCoyon9Bri9PanQaeSxTr6AwpmQE87AAa6hF82NK96hLamkZ86kwoS4wq4UBp6YFpnIw8</1J821V92xRpCdK82NA971Bq7gwb6kAqnhBri0F83RMsSBI87gX8yMy921AqgEX82//1Vrigwt7dJqi1B83RK96hLbmlXfDhPrmBZpgEXrgAwumcAqnhBrjQw921LrClAfyRzuSBQpmQXvi./0wri0wumgAr6lxt3Qw921LrClAfyRAuSNBongXvi./0wri0wumAAp6VxtSNIfi0A86ZKpmg@bmBXp6VxtSNIeTQw2y/|6Qw87BF96hKs6cwti0ZryhArORBuPVKqmdAtn0XvgEa82//1B96BQpmQZ82gwqnhBrm5J87xCqigwtmpzrCkw874y8C4wp6UA86lAt70wq3QZc20aeO./0wri0wunwA834wfnwAon0wp20HsOhFt6lJay0A86BTt6hMq79BqnhBrgEX82//1VrigwcDwZ82gws7xAoiIw921QpmRF86kwaDsAp6BEt6lMt79JqjJB8</1J821V92wNui0IuigFcwEX82//1KtmlIsTcE86AAtCVOpmlQamhX82.////0A835Vfi0A86RFpS5EpmBBq6swt20Juihxs39Abi0E86gAs6lEt2Iwci0wai0GpyhxsClJpmxDqnhEaO0A879Crm5Mpmhx2zIw82////0wuigwcy0ZqihxrmlDpmxDqnhEbi0A871Vp64wcy0Jp2hMpmxQay0A879Crm5EpmBBq6sXt2./=/////1V920N83RV965McmgH82gwpmhQs21E82FC965OpmRBq6tFt6waeO/////1V920O83RV965McmgH82wwp2hMpmxQaO0N820F82FC965OpmRBq6tFt6wJ82gwsCpJon1Bp64aeO//0w2DQw2y//cwgi1Ap6cwrmZxri1Ppn0wsClMr79xpzlN2zEw82//0zt6xMt3FPbOZBs6NOrSgKoSlMr79LbCtOs2ZOpmpIsm4zdmZ8bntxoORKbkBRrT1Qt7lJbiRVtmVyrn9BbndFtSxQoORJrS5JbndAomlAfSgw2y/|6Qw87BP96Rxr71PpjQwsO1Os6VFpDgy82UBpz0I8ywwpihFt6lJbi0A87hPrmAFpiEw921xpDhzsCYaeO//0wriwwuncArm5Is7dBt5ZQu3Qw921xsT1JpmMFsO.////0Z821@bTdua2RrniJsfOJAa3YZfPYEa3UWfShscTIFviAHfOxs8iBAv2B7n6hscTIEvjQ_p5MFaigLb35DbMEX8</1J821VqihCrzJL8</1J821VsOhJomNMsSkwcy0ZrDlBp3JC8</1J821VqihxtSNIfi1R86hKpCkaeO//0wumQA86dFtn0Z87kwp6VCpgEX8</1F821C92xRpCdKpi0wsi8yoi1ArygwpmhQs21EfjQM82}////0wqihCry1L83Rx8CNIa21P96Rxr71Ppnhvt7wA86ZzrDlKt6Rxb6kN830MaikX8y./=/////1VrigwoT0wt20Zs7dFsDhK86oB8z8K8Cowb2wEc34wc20GsOhJomNMsSkwai0L92xFt6lJomQwu20GpyhzomZQan8Xai.////1J821VpihzsT1xp6lCnSVR86cwfmoArDkXoO.////0z86cwpmNKonkw871mkO17sC9xpmBHpSVz865Eon9QoT9BeDcw2y////0w921Ppm5zpn1vp7lCoSUZ821@bTcL9C4Cs6QLePJD8<////gwsSlxoSlMnShRpCdKfi0wvyZPbPNI9zJQpOYaeO/////1B96dPs65ApmpvrDkwoTUZsO0@bOoLt6sLePJD8<////gwsSlxoSlMnShRpCdKfi0wvyZPbO9N9CZReThDbMEX82////|6kAoTdMomhBpBZKti1zvzRP85YLmRNHmSBTnmFtn2YAeOYw82/|ThPqn8ws6Vx87BKomZKonhFt6VL2wEw82////0wpCAE86lAqmpBry1AqihArC5Tr6MwagFX82///////0wqihxtSNIfi1P879MrCBCt28wbylCc2My921KqntAr64Xr2.///:.////1F821Cp2xCpmVFp6kA86VFoShRs2}///////1F971z87kwfn1Pqn9Qry1C9i8Mby9C82NF96hKs6cXti.////1Z80Aa82//1CqiwwoOhIrT9L87d@fiYwt5VJqn1BaiZX82.///////gwondMrmlIcDcZ87cwsD1KqmpQ8y0K9moMb28A87hzrmAwpi0GpyhzomZQeT8w2y///////0A86VFrSoZ828wpihzsT1xp6lCnSVR86cAa65Ps6RBr5ZPu7gwt6cAtmZQrC5KpmQwb70At6cF9jIy2gFZ2mkwsSMwpgFX2gBR2mNKsSkwsSgEpClKqmhB921Bp7hIam5X80Aa2gAA2mVFrSoZ828wpihzsT1xp6lCnSVR86cAa65Ps6RBr5ZPu7gwt6cAtmZQrC5KpmQwb70At6cF9jIy2gE92i1Zr6lBsTIw2gE92mQ987BA93Qw921BrC5Dpng_82Qwp2hIpm5Qey0A86lAt6MXogAa2gBJ2i1Vp2hIpm5QoT0wt20Zs7dFsDhK86oB8z8K8Cowb2wEc34wc20Gp2gwai0L92xFt6lJomQwu20GpyhzomZQan8XagAa2gAA2mlAt6NMonhzfi0A821A83Uwc20_aO9A96NBonhzs29Qey0A86lAt6NMonhz2zI92gA9qihCry1L83QA8DdBomdBs5ZAtmpzrywwsOhJomNMsSlQnThU921LoSVRrDhJoiNB921zs2lQ83JA96NBonhzs2lQ8yAaeMA9vgA92DQ92gEavi./0wri0wumUArm5xpnhQ878wfi1XuOkA865KpmRQon9Q97JRpCdKv7RXv21Z87QXvicwsO1xq6NItSZz86ZIpmUw2y//gwomVBrnhxsDg@bnhXt6BBr21Z82/0wv7MwfmAApCUXrO./0w921JqjUJsCtRrRZMt7dOoixQryhJom5Bt7gFswEX8</1J821VoOhIrT9L2zIw82/|6pFa21z96NLsCYwsTUZbO1QnCRFbSkwagFX82////|6cAr6ZOrPQwoO1IrT9Lt5ZJqn1B92xLoSZIsT8wb6oArDkIoOgwondMrmlIb7cA87tFr64Ir2gwondMrmlIcDcwb6AAs6cFtgEX82//0wvmNBqncwpygEtmpzrCkw874J8y8J82AauO/////1z96NLsCYZ82gwp7pOpTBB2zIw82//1Zr6lFsO1C92xRpCdKpi0wsiQyai9X82.////0A86ZzrSMwsy0Zp2hOpTBB2zIw82//1Zr6lFsO1Cp2xCpmVFp6kA86lAt6MFonIw8<////gwrSdLr21O83RLoSZInT9zsSNxa6lA96NBongwb6QAu65Bp7hIam4aeO//|7RIpmBP86oAa65MpmNQt2BBuO?////0w921LoSZI878wfmZzrSNvsC5Ja71z96NLsCYIsOgwtmpzrzIF8<-////|6cAr6ZOrPQwoO1IrT9L92xLoSZIsT8wb6wAsS4Iq2gwtmpzry0IqihxtSNIeOAw2y/|7Qw8</0A86RFfyRFpCNIp6lBkDhzrC5IpOxBu2gIcigwcnAwb7wAb38A839V82Nz96NLsCYwb78DfnwO8y0yun8yfi8OaisaeO./0wri0wumcAomxPszQwqi1Qry0E92wOu2Qw920Nu20F82YAa6ZCt6VFsSlWay0A86ZCt6VFtThAamwXai./0wri0wungAu6kwt20Z8y8aeO//0wpCAE86cAomxPszUw83QFcTIw8O1O86ZL86RLpy1OrCYwpmxzsC5M87lI87dTt21LrShPt2.////0A87lCoSUZ821@bTdsnRJrtSJGqlNt95QLbO0X82/cwsO1Ot71Foi1VrC4wrCVQrThxrSAary/////1Q97xB87gwfnlPsS9Ot2gwtmpzry0Ib30A86xzsC4XsO.////1P869Rt7cEsDgAu6kIt2Qwb38O820F83QK8y8Kqi0wpCcAomxPszMwr21KpnhD86xC96VReScw2y////0w921Bt7hUfi0wvyZPbOpx9D1JbPIXpO.////0A86lQt7wZ821@bTcLf6MCeThDbMEX82////|7gAu6kwt7UZsO0@bOoLt6sLePJD8<:./0w921JqjUJt7dFsCtKl5gEhCVRpmgIpygwcnwH83cw82MwcO0H92wNuiIw920Oui0F82YIcygwpnhQu3IF2wEw82/|6AAbmRDfCZOs7lBnShK92xxrClJt65Ot3IFvgEA2CRFfyROpTlLnT1KpixAeOAa2D9MrCAwt6AAbmRPfCtS2zJF2y1C92xxs6lIt7gFpnIw8</1T86BOpnhMnSNxt6lBt2AE2zIavicaty1Jqi0WsTgUfncwsTgUfncwfnswe6ZKu6lxs6hKongaow'

        { ! ${forceFlag} && ${gotLoadableFlag}; } ||  { printf '%s\n' "${!b64[@]}" | grep -qF "${ARCH}" && _timep_base64_to_file "${outDir}/timep.so" <<<"${b64[${ARCH}]}"; }
        { ! ${forceFlag} && ${gotFlamegraphFlag}; } || _timep_base64_to_file "${outDir}/timep_flamegraph.pl" <<<"${b64[flamegraph]}"

        enable -f "${outDir}/timep.so" getCPUtime
    fi
}

_timep_SETUP --force

_timep_file_to_base64() {

    local nn k1 k2 out out0 outF outN v1 v2 nnSum hexProg quoteFlag noCompressFlag doneFlag IFS IFS0 LOCALE LC_ALL
    local -a charmap compressI compressV outA

    LOCALE=C
    LC_ALL=C

    quoteFlag=false
    noCompressFlag=false

    while true; do
        case "${1}" in
            -q|--quote)
                quoteFlag=true
                shift 1
            ;;
            -n|-nc|--no-compress)
                noCompressFlag=true
                shift 1
            ;;
            *) break ;;
        esac
    done    

    [[ -f "${1}" ]] || {

        printf '\nERROR: "%s" not found. ABORTING.\n' "${1}" >&2
        return 1
    }

    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))
    doneFlag=false
    nnSum=0
    outN=0
    outA=()

    if type -p od &>/dev/null; then
        hexProg='od'
    elif type -p hexdump &>/dev/null; then
        hexProg='hexdump'
    else
        return 1
    fi

    until $doneFlag; do
        read -r -N 6 nn || doneFlag=true
        nn="${nn%$'\n'}"
        [[ $nn ]] || break
        (( outN = outN + ${#nn} ))
        (( nnSum = nnSum + 16#${nn} ))
           
        if (( ${#nn} < 6 )) || [[ "${nn}" == *$'\n' ]]; then
            doneFlag=true
            outA+="${nn}"
            break
        else
            (( k1 = ( 16#${nn:0:3} >> 6 ) ))
            (( k2 = ( 16#${nn:0:3} % 64 ) ))
            (( k3 = ( 16#${nn:3} >> 6 ) ))
            (( k4 = ( 16#${nn:3} % 64 ) ))
           outA+=("${charmap[$k1]}" "${charmap[$k2]}" "${charmap[$k3]}" "${charmap[$k4]}")
       fi
    done < <("${hexProg}" -v -x <"${1}" | sed -zE 's/\n[0-9a-f]+//g; s/([0-9a-f]{2})([0-9a-f]{2})/\2\1/g; s/[ \n]//g')

    #(( outN = ( 2 * ( ( outN - 1 ) / 2 ) ) - 1 ))

    IFS=
    out="${outA[*]}"
    unset IFS

    if ${noCompressFlag}; then
        printf -v out0 '%s %s\n' "${outN}" "${nnSum}"
    else
        compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')
        mapfile -t compressV < <(sed -E 's/(00+)(([^0]+0?[^0]+)*)/\1\n\2/g; s/([^0]+)/\1\n/g' <<<"${out}" | grep -E '..' | sort | uniq -c | sed -E 's/^[ \t]+//' | grep -vE '^1 ' | sort -nr -k1,1 | while read -r v1 v2; do (( v0 = v1 * ${#v2} - v1 )); printf '%s %s %s %s\n' "$v0" "${#v2}" "$v1" "$v2"; done |grep -vE '^-' | sort -nr -k 1,1 | head -n 27 | sort -nr -k2,2 | sed -E 's/^([0-9]+ ){3}//')

        for kk in "${!compressV[@]}"; do
            out="${out//"${compressV[$kk]}"/"${compressI[$kk]}"}"
        done
        printf -v out0 '%s\n' "${outN} ${nnSum}" "${compressV[@]}"
    fi

    printf -v outF '%s'$'\034''%s' "${out0%$'\n'}" "${out}"

    if ${quoteFlag}; then
        printf '%s' "${outF@Q}"
    else
        printf '%s' "${outF}"
    fi
}
