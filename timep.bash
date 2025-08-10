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

    declare -p >/mnt/ramdisk/vars

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
    local b b0 k kk fd0 fd1 out0 out outN nnSum nnSum0 noVerifyFlag doneFlag IFS
    local compressV compressI outA

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
            read -r outN nnSum0
            mapfile -t compressV 
        } <<<"${out0}"

        (( ${#compressV[@]} > 0 )) && {
            compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')

            for (( kk=${#compressV[@]}-1; kk>=0; kk-- )); do
                out="${out//"${compressI[$kk]}"/"${compressV[$kk]}"}"
            done
        }
        nnSum=0
        noVerifyFlag=false
    fi

    doneFlag=false
    until ${doneFlag}; do
        read -r -N 4 b0 || doneFlag=true
        [[ $b0 ]] || break
        (( nnSum = nnSum + 64#${b0} ))
        printf -v b '%0.6X' "$(( 64#${b0} ))"
        outA+=("${b:0:2}" "${b:2:2}" "${b:4}")            
    done <<<"${out}"


    ${noVerifyFlag} || (( nnSum == nnSum0 )) || { printf '\n\nWARNING: EXTRACTED LOADABLE CHECKSUM DOES NOT MATCH EXPECTED VALUE!!!\n         DO NOT CONTINUE UNLESS THIS WAS EXPECTED!!!\n\n' >^&2; }
# { read -r -p 'DO YOU WANT TO CONTINUE? TO CONTINUE, TYPE "YES": ' -t 10 -N 3 <$"{timep_PTY_PATH}" && [[ "$REPLY" == 'YES' ]]; } || exit 1;
    IFS=
    printf "${outA[*]::${outN:-${#outA[@]}}}" >&${fd1}

    exec {fd0}>&-
    exec {fd1}>&-

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

        b64[flamegraph]='8O4LtndObS9FryZMpn9I82RT2yca8O0JbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQa8O1QqmRBs5ZCr65JpmtOon1EbD1I8ea0B21JrShFpCBBp21QrO1Ptn1MrT9Q87hFrmkJoC5PpmgwomVA87hxpORyondBp21zrSNLsCBKpMEz849xsSlA86ZK86pIomRBpT9xs6wKs6MwoDAwgD9BrChxry17sClDpO3yw9gwrmZAqmpFpmgwpCZO87lPpi1TqnhE829QqmRBs28a8O1fsCBDqmVxr21Cr65JpmtOon1EbD1I8caF838Mcj7yw9cOc38R849OpmVAomUwhT9BpSsK2ycwj6BzpmVPpjEwgQh4j20Nbz0wa7dBpi1ypmNLtOAK2yca8O1drShFpCBzonhFrSVP869V845Kt6xLrDAwgC5OrSVB86pLsy1Qq6kw8DhFrmlM8y1MsCZGpmdQ82xzai0Oc38RewEz845Ap6lA83cwrClT86dLr6ZO86ZMt6BLrDcW87hFrmkI87hFrmlM865Kp21QqmRBs78K2ycw821QqmRBey0w87txr6MJoSNLoSIwt6BJpi0JbjUwoSZIrT8K86ZMt6BLrC5I839Kp21FrD1Rt21FsO1BrCgwtC5ItmkwpCZO86hBr7hxsOUa8O0w87hFrmlMey0wtS5Ir2Rzr6ZzqO1QqmRB82QJfy1zrSNLsy1xrCgwoT1RbTtxr6Mwt6BJpi1OonhFrOQJfy1zrSNLsy1PonhRsC5QqmZKbwEz820wt6BJpn1Oey1zs7kwt6BJpi0JbjUwoSZIrT8womVA87txr6MLoT1R87hFrmkwsC5QqmYwbiQ@86dLr6ZO87dxt7lOonhFrSUK2ycw821QqmRBs5JOnlIMnjEwsTlMs6ZOt7cwnRJPniZvmSpt87hxpTcwpCZO871BsyRCsC5Jpi1zrSNLsCBKpO1Lpy1Ptm9Pq6lIr7cLpDlKoThFrSVPbwEz820wt6BJpn1rsBRrc5QW839Kp21FrD1Rt21FsO1zs7kwt6BJpi0ErCYwp6lIt65PaiUwimowrmBPsSBKpO1OpnpBsDhP87hL829QqmRB8y1ypmxxtCBLsyUa8O0wa6ZMt6BLrC5IajEws65PsO1BqnhBsy1TomNI87hFrmkwomVAbSZO86dMti1QqmRB865P829QqmRBeAd4hBZFrCgy865Kp21Qq65Q87hFrmkwtSBIr21ypi0a8O0w820w820w865PsSBDrClA86dLr6ZO869xsSlA86ZK87tEpn9B84d4hBZFrCgLcAUwr6BKpm5Or7AwpC5Ir7cwqmUwt6xB86dLr6ZO87dzomNBbwEz2ycwl6xFsO1PoT9Fs7gwsClJomBKsO1IqmdBrDdBp21RrChBsy13h4hc834Kc2UwmmZR86Rxui1AqndQsCBytnhB2ycwqngwomNLrCtPqmhB87hEpi0yt6BJpn0y871OrSFBoTgwa4R9l2RIqmdBrDdBp2AI871OrTpFp6lA87hEongwt6xFsMEz86VLt6Bzpi1xrCgwt6xB86ZOqmtFrC5I84d4h4Mwr6BzpmVPpi1xsCkwqmVzr7lApmgwtmVzq65KpSlAbwEz82QJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbiQJbgEz2ycwpCNxrmlDsC5Mq2VMr20w820w820w86pIomRB87dQomdH86tOon1Epn8K2yca8O1kq6BP87hxqSlP87dQomdH87dxrn1IpncwomVA879BrChBsDcwoi1zomNI86tOon1Eb21xr6NLtSBKpO1ErTgwpDlKoThFrSVP2ycwomVA86dLp6lMonhEsO1QrO1ypi1NtmBzqSNV86BApmVQqmpFpmgK821jt65zqO1PomRMr6lP86dxry1ypi1DpmVBsC5QpmgwtndFrCsa8O1QrSZIsO1PtmdE865P84hksC5zpiMws6lOpyMwkTBPt6lJl65Mb21xrCgwimVPt79RrmlKt7cK2yca8O1lkQ57hjEwbyZCr65JpmtOon1EbD1I85JLs7hFrSVPni1FrD1Rt2VQu7gwfy1DsC5Mq2VPtCsa8MEz820w820w821DsClM86pRrCd186BKs7lQbDhUt21Y82ULpCNxrmlDsC5Mq2VMr21rrT1QqmZKsRQwfy1DsC5Mq2VPtCsa8MEz85hEpmUwrT1Bry1Qq6kwsClPtmNQqmVD82VPtCswqmUwoi1Tpm8woD9LtTdBsyMwpCZO86BKt6lOomdQqnpFt7AW86RLtndBbmZSpn8a8O1CsC5JpncwpCZO86BKpCYI86dIqmdH87hL87FLrSQI865Kp21zt79Ibkowt6YwsSlxsCdEbwEz2ycwjT1QqmZKsO1xsCkwr6BPt6lA86BK87hEpi1RsS5Dpi1JpndPomtB82wJbmxBr70FbwEz2ycwl6xB86BKs7lQ86BP87dQomdH86pOomRBsO1xrCgwsS5Js6NB86dLtmVQsO1CrT9JonhQpmgwoncwsSBKpSNB86NFrClPby0whm5zq0Ez86pOomRB86BK87hEpi1Pt65zqO1FsO1PpmRFoSZIrSUwsSlMon9xt6lAb21TqnhE864wsT1xoSkwomVA86dLtmVQ865Q87hEpi1BrCga8O1Lpy1Qq6kwr6BKpiUw85hEpndB86dxry1ypi1DpmVBsC5QpmgwpCZO84NFrDlU871BsCowsSdOqn1Q86ZRt71Rt21RsSBKpMEz87dQomdHoSZIr65MsSkJs6lOpyVMr2MwpCZO84hksC5zpi1RsSBKpO1Pt65zqSdLr6Nxs7dBbD1Ib21xrCgwpCZO86ZQq6lO87hLrSNP2ycwtndFrCswt6xB86ZQq6lO87dQomdHoSZIr65MsSkws79LpT9xrncK8215u65Js6NB86BKs7lQewEz2ycw87dTon1Mpn8XsThxsDhvqSlOrClIeT9BsThvqmVFt3Jzs7lvqmhIpjJApmpxtmNQnSBAr6kXrC5QqnpBnTdxpClvq65It20N2yca8O11ry1Ls7hFrSVxr21Bu7hOoi1zrSNRrmUwrSowoSZRrDhP86dxry1ypi1MsCZSqmhBp21QrO1DpmVBsC5Qpi1x86hFpCpBsClKt6Bxr0Ez86pIomRB86tOon1E86ZC87hEpi1zrTlKt7cI86dLr6ZOpmgwsClA86pLsy1JrT9Bb21xrCgwoCNRpi1CrT8wr6lPsOUw85hEqnca8O1zomUwoCkwtndBpDlI87tEpmUwtndFrCswpCNxrmkwpT9xs6xP86pLsy1KrSUJsClDsClPsSBLry1QpndQqmVDbwEz85dBpi1Qq6kwq6lxp6lO86dLrmRBrDgwqmUwt6xB86hFpCpCrSNApmgKs6Mws79LpT9xri1CrT8wqmVPt79RoThFrSVPbwEz2ycwl6xB86BKs7lQ86pRrCdQqmZKsO1zomUwrT1QqmZKomNIui1EonpB865KrCZQonhFrSVP865Q87hEpi1BrCgwrSowpm5zq0Ez86pRrCdQqmZK86VxrmkI86pLr6NLtSBKpO1x871OpmdBp6lKt21yui1PrSRB87hLrSNP82xcqmVRu21Mpn9C9TcwnRJHniAW2ycw820w820wnRJHni1CrT8wqSlOrClI2ycw820w820wnRJFni1CrT8wqmVIqmVBp0Ez820w820w85ZrqBQwpCZO86FFt0Ez820w820w85ZrtRQwpCZO87txqSlO2ycwkSZJpi1Lpy1Qq6kwsThxoSJzrSNIon1Ppi1MsCZDsC5JsO1Ptn1MrT9Q865Ap6BKpO1Qq6lPpi1xrCVLt65QqmZKsOMwpmsI2ycwsThxoSJzrSNIon1PpiRMpn9CbD1I82QJqSlOrClI82QJqCBQby1kq6lV865Opi1RsSlA86RBsClIui1CrT8woSZIrT9P869V2ycwsSZJpi1MomNBt7hBsOMwpmsI86pIomRBpT9xs6wKs6MwbiRzrSNLszRGonpxbwEz2ycwl6xB86ZRt71Rt21Cr65Jpi1DsC5Mq21Pq6ZTsO1OpmNxt6BSpi1MsClPpmVzpi1Lpy1CtmVzt6BLrDcwqmUwsThxoSIwsS5Js6NBsOUa8O1kq6kwrT9Apn9FrCswrSUwt6xB87wJonxFsO1EoncwrCYwrmlxrCBKpPIwsSBKoSkwt6xB86hxt64wqncwsS5Js6NBsOMwt6BJpgEz86ZOp6lO86ZC86lSpmVQsO1FsO1KrTgwqSVLtSUK821kq6kwrT9Apn8wtndBp21PrT9QsO1CtmVzt6BLry1KomRBsMEz865Is6xxoClQqmdxr6NVbwEz2ycwlSxFr6kwqmVQpmVApmgwt6Yws79LoSlPsO1Pt65zqO1PomRMr6lPb21Qq6BP86dxry1xr7dL871OrSdBsTcwsThxoSIwt79xoSlPbwEz84pLsy1Bu65Js6NBb21QsC5zqmVD87dQomdHsO1CrT8wrmlJrT9V865Ir6ZzonhFrSUI86ZO879BsSZRsCdB87lPomtBby0wmmZR2ycwoS5K87lPpi0JbnhFt6NB87hL87dBt21Qq6kwt6BQr6kwt6YwsClCr6lzt21Qq6kwoSZKt6lKt2MwomVA82QJoSZRrDhKomRB2ycwt6YwoSxxrCtB829PomRMr6lP8y1QrO0yoDBQpncy86lQoOUa8MEz85hEpn9B865Opi1x86pBtO1AqmpCpn9BrDgws65IpnhQpncI87dBr6lzt65yr6kwtndFrCswbiRzrSNLsyUw849V86hBpC5Rr7gI2ycwt6xB86dLr6ZOsO1xsCkwsSlIpmdQpmgwongwsC5Kp6ZJ82xBu6dBs7gwpCZO86hFpCpBsClKt6Bxr7cFby0whDlKoThFrSVP2ycwoS5Ir6lA828J8y1TqmNI869B871OqmVQpmgwpT9xuiMwtSxFoSwwoS5K869B87lPpmgwpCZO87dQomdH87dBs65OonhLsDcwa6lDb0Ez869Bt7tBpmUwtndBsy1xrCgwqSlOrClI87dQomdHsOAK2yca8O18ildkjR9p2yca8O1kq6BP87txsO1FrDdMqn9Bp21yui1epmlIomJxrDhE84Vxp6tFsytP86lUoSlIr6lKt21CtmVzt6BLrBZzomNInStOon1EbD9y2ycws79LpT9xriMwtSxFoSwwtCBPtm5IqnFBp21CtmVzt6BLry1BrDhOui1xrCgwsClQtn9K87hOomdB86lSpmVQsOUw845P84VBpmMa8O1TsCZQpjEw8BhEpi1LtnhMtngwp6BPs6NxumlA86BP86BKsT1FsClA869V859LoSwDsO13omNIkThxoSJ1rC5IunFBsy1Tq6Bzq0Ez87txsO1Fry1Qtn9K86BKsT1FsClA869V87hEpi1TrT9H86ZK87pCt79xoSkwoDAwiC5K849Lpn9ErTlQ8yUw85dBpjEa8O1Et7hMsPELbS9IrStPbCZOomdIpiVzrSQLsClxr6VBpmMLpmVQsDALtCBPtm5IqnFFrCtvoS5Ir7dQomdHsRZSqm5vp7hOomdBnS5Kp0Ez2ycwgSZMun9FpSxQ838McjowjClQpCNFu2MwimVzbwEz84dLs7BOqmtEt20Oc34N84FLumlKt2MwimVzby0wgmNI879FpSxQsO1OpndBsDpBp2Ua8O13rT1VsCBDq7gwcz0Nci12sClKp65K84tOpmtDby0wgmNI879FpSxQsO1OpndBsDpBp2Ua8MEz84d4h4Mwi4l1h4li85dkgl9k2yca8O1kq6kwoSZKt6lKt7cwrSowt6xFsO1CqmNB865Opi1Ptm9GpmdQ87hL87hEpi1Qpn9JsO1Lpy1Qq6ka8O13rSRJrSUwh6lSpmNLs6RBrDgwomVA84hFsThOqm9Rt6BLry1cqmdBrDdB82xQq6kw8ANFoSlKsSkyaiUa8O1prTkwrm5V86VLt21RsSkwt6xFsO1CqmNB86lUoSlMt21Fry1zrSRMr6BxrCdB87tFt6wwt6xB84NFoSlKsSkK2yca8O1prTkwoS5K86Zyt65Fry1x86dLs7AwrSowt6xB86NFoSlKsSkwongwp6ZzsOZzp6hIciVQu7gwrT8a8O1Et7hMeyYLrT1BrDdLtn9zpiVLsCsLr6BzpmVPpncLgQh4j2QNbz0K2ycwkSlB87hEpi1cqmdBrDdB86pLsy1Qq6kwsT1BoSBCqmcwr65KpTlxpSkwpSZSpn9KqmVD871BsCRFsTdFrSVP2ycwomVA86NFrmBQonhFrSVP87lKp6lO87hEpi1cqmdBrDdBbwEz2ycwlSxBry1AqndQsCBytnhFrCswgSZSpn9Bp213rShBb21FrCdItmhB87hEqncwgQh4j218hk54hl8wqmUwpm5zq0Ez86pFr6kwomVA86BKoSNRp6kwt6xB84NFoSlKsSkwpCBIpi1xt21ArSdPbSdAp6MNbDhUt2Ua8O19py1xs71IqmdxoCNBb21xp6gwt6xB86pLr6NLtSBKpO1ypmNLtO1Qq6BP84d4h4Mwi4l1h4lib21TqnhE87hEpgEz86pFpmNAsO1BrCdIrTdBp21yui1ysC5zqSlQsO0ymRQy879Bs6NxoSlA87tFt6wwumZRsy1LtSUwqmhBrDhFpDBFrCsa8O1FrCpLsCRxt6BLrzEwk6ZOt6BLrDcwgSZMun9FpSxQ85JVunBVni1rrC5Jpi1Lpy1zrT1VsCBDq7gwrTtKpn9t2yca8O13h4hc84x5gkh5ky15jAga8MEz83Y_bkFRr2QOc38R820wgmVQq6ZKui12on9LrCkw845Ap6lA87dRs71LsDgwpCZO87hFrmkJoC5PpmgwoSZIrT9FrCsK2ycwcj4JjSdQbj8Mcjgw8211p79FpmUwjm5EqmlRu20wgmhApmgwuCZLriUa8O0OciRerToJcz0NcO0w85dEontK85dQpn9IqmVD8211p6hBp21zrSVPqndQpmVQ871xr6lQt6kwpCBIpi1Ls7hFrSUK2ycwcjsJjm5Obj8Mcjcw821kqmQwgDlKoSkw820w820wgmhApmgwrT1QqmZKsO1xrCgwrmZOpi1QtmVxoCNBsOUa8O0NdiR4pmcJcz0Nci0w84hxtCkwk65zq6lzrO0w821jtn1MrT9Q86pLsy1CsC5JpncwtSBQq21Tq6BQpndMomdBbwEz834MbldBs2QOc34N820wgD9BrChxry17sClDpO0w84dOpm5Qpmgwt6xFsOUa2DlPpi1Pt79FoTgX2wFRsSkwhSlQrT1QezFcrSVDeMEatndB86ZMpmUwsnsEeDdQp20WtnhCe2AX2wEz87hRrC5yr6lP2CRV82hBrCdLp6BKpPIarnAw96pLrDhQun1B83Qw8BpBsChxrC4yeMFJui0AqmRxpSlTqmhQq20Z834Oc30X820w820w820w82cwrm5U87tFp7hEb21MqnxBr7carnAw96pOomRBq6lFpSxQ83QwcjoX820w820w820w820z86Rxu21EpmBDq7gwqncwp7BKomRFoMFJui0ApCZKt7dFuCkwfi0NczIw820w820w820w820w82cwoC5Ppi1QpnxQ87dFuCkarnAw96pLrDhTqmhQq20Z830KdjAX820w820w820w820z865SpO1TqmhQq21OpmNxt6BSpi1QrO1CrSVQsSBWpgFJui0ArmBKtSBAt6wwfi0Mbz4X820w820w820w820w82cwrmBK86pRrCdQqmZK87tFp7hEb21MqnxBr7cwrT8ws6lOoSlKt65Dpi1Lpy1QqmRB2CRV82hKomRBt7BMpi0Z8296tmVzt6BLrzEyeO0w820w8O1Tq65Q865Opi1Qq6kwrC5JpncwqmUwt6xB86hxt64_2CRV82hzrTlKt6Vxrmkwfi0ysS5Js6NBsO8X820w820w8O1Tq65Q865Opi1Qq6kwoSZRrDhP86BK87hEpi1AonhxfMFJui0AoSZIrT9P83Qw8CxLt28X820w820w820w820w82cwoSZIrT8wt6xBrmkarnAw969DoSZIrT9P83Qw8y8X820w820w820w820w820z869xoSJDsCZRrCgwoSZIrT8wt6xBrmkarnAw96Vxrmlxt7hOpCBIpjIw820w820w820w820w820z86pFr6kwq6ZIp6BKpO1CtmVzt6BLry1xt7hOqm9Rt6lP2CRV82hQqmRBrm5UeO0w820w820w820w820w820w820w8O0ErTpBsD9Fp6kwt6xBai1PtmQwrSowt6xB86dLtmVQsMFJui0ApC5zt6ZO83QwcjIw820w820w820w820w820w82cwpC5zt6ZO87hL87dzomNB86dLtmVQsO1yugFJui0Aq65Pq20Z830X820w820w820w820w820w820w82cwoSZIrT8woDAwpDlKoThFrSUwrC5JpgFJui0AsC5Kp20Z830X820w820w820w820w820w820w82cwoSZIrT8wsC5Kp6ZJr7AarnAw971xr6lQt6kwfi0MeO0w820w820w820w820w820z86BC87tB87lPpi1zrSVPqndQpmVQ871xr6lQt6lP82xApmpxtmNQ86ZCpyAarnAw9n1xr6lQt6lvrm5MeO0w820w820w820w820w820z871xr6lQt6kwrm5M86xxsSwarnAw971xr5ZCqmNB83Qw8D1xr6lQt6kKrm5M8zIw820z871xr6lQt6kwrm5M86pFr6kwrC5JpgFJui0AsThxoSJOpnpBsDdB83Qwc3Iw820w820w820w82cwsClSpn9Ppi1Pt65zqO1LsChBsyMwsTtFt6dEqmVD86RBsCtB86lKp0FJui0AqmVSpn9Qpmgwfi0MeO0w820w820w820w820w82cwqmdFoSNB86tOon1E2CRV82hCr65JpmdEon9Q83Qwc3Iw820w820w820w820w8O1MsCZAtmdB864wpCNxrmkwoSxxsDgwa7dLsDgwoDAwt6BJpiMwp6YwrCZQ86RBsCtB87dQomdHsOAarnAw96VBpS5Qpi0Z830X820w820w820w820w820w820z87dTqnhzq21AqmpCpn9BrDhFomMwq7lBsMFJui0AoSZIrT9QqmRBeO0w820w820w820w820w820w820w820w820w820w820w820z86Rxs7cws79Frm5Oui0Etz4F86dLr6ZO86dEomVKpmMwt6YwqmVApnwwp6lCqmVBp21Fry1Qq6kwsThxoSIwt79xoSlP2CRV82hQqnhIpnhBu7gwfi0y8zIw820w820w820w820w8O1zpmVQpn9Bp21Epm5AqmVD2CRV82hQqnhIpmhBpC5Rr7gwfi0yhCNxrmkwhT9xs6wyeO0w820w820z86ZSpn9TsCBQt6lK869V82QJt6BQr6karnAw97hFt6NBqmVSpn9Qpmgwfi0yimdFoSNB84tOon1E8zIw820w82cw820y820w828arnAw97dBon9zq6dLr6ZO83Qw8D9DoywOcP0Ic2MOcP0F8zIw820w82cwoSZIrT8wpCZO87dBon9zq21EqmtEr6BDq7hFrCsarnAw96VLt6lPt6lUt20Z828yeO0w820w820w820w820z86lJoClAp6lA86VLt6lP86BK85dmhMFJui0AsTlyt6BQr6lQpnxQ83Qw8y8X820w820w820w82cwsSlzrSVA86NBtClI87hFt6NB82xLs7hFrSVxr2AarnAw96xBr70wfi0MeMEasTly87lPomtB87Ia820w820w821Aqmkwf3NlkQ57hlZ5jAgX2Bljgkt5ey0Ac21rrT1QqmZKsRQwqmVCqmNB83UwrTlQpCBIpiVPtCtsrwEw820w820w82QJt6BQr6kwl4lol20w820w8O1zq65KpSkwt6BQr6kwt6lUt0Ew820w820w82QJsTlyt6BQr6kwl4lol20w8O1PpmdLrCgwr6lSpmMwt6BQr6kwa6ZMt6BLrC5IagEw820w820w82QJtSBAt6wwjBld820w820w8O1TqmhQq21Lpy1Frm5Dpi0Ep6lConlIt20Ncz0MagEw820w820w82QJq6lFpSxQ84Vlji0w820w8O1EpmBDq7gwrSowpm5zq21CsC5Jpi0Ep6lConlIt20NdyAa820w820w820JbmRFrDtFp7hE84Vlji0w82cwrSRFt21Prm5Ir6lO86pRrCdQqmZKsOUwimUws6BUpmNP86ZO87lPpi0y9i8wpCZO2y0w820w820w820w820w820w820w820w820z871BsCdBrDhxpSkwrSowt6BJpi0Ep6lConlIt20Mbz4ws6BUpmNPagEw820w820w82QJpCZKt7hVs6kwhAZel20w8O1CrSVQ87hVs6kwa6hBpC5Rr7gw8BpBsChxrC4yagEw820w820w82QJpCZKt7dFuCkwjBld820w8O1CrSVQ87dFuCkwa6hBpC5Rr7gwcj8F2y0w820w820wbiRzrTlKt6Vxrmkwl4lol20z86dLtmVQ87hVs6kwr65ypmMwa6hBpC5Rr7gw8Ddxrn1IpncyagEw820w820w82QJrC5JpnhVs6kwl4lol20w8O1KomRB87hVs6kwr65ypmMwa6hBpC5Rr7gw8ApRrCdQqmZKey8F2y0w820w820wbiRzrSNLsDcwk45chlhkhi0z87dBt21zrSNLsy1MomNBt7hBby1zq6ZFoSlP865OpjEwq6ZQ82xApmpxtmNQaiMwrmlJb0Ew820w820w820w820w820w820w820w820w8O1FrOMwtS5HpnlMb21zq65FryMwqC5SoiMwqDcI871BsCMI879Bp2MwpT9BpmUI869ItmkI2y0w820w820w820w820w820w820w820w820z865Ntm4I87BBr6NLtOMws7lOs6NBb21LsC5KpSkI87hFrmkI87hFrmlMb21QqmRBs78a820w820w820Jbm9DoSZIrT9P84dfj4Zi82cwsSlQ869xoSJDsCZRrCgwoSZIrT9Pby1DsC5AqmlKt21zq6ZFoSlP865Opi1VpmNIrTsa820w820w820w820w820w820w820w820w82cwa6hBpC5Rr7gFb21yr7lBb21DsClBryMwpT9BujIwpCNxt21zrSNLsDcwtndB828zsD9DpS9y8wEw820w820w82QJq65Pq20w820w820w820w8O1zrSNLsDcwon9B86JBumlA869V86pRrCdQqmZK86Vxrmkwq65Pq0Ew820w820w82QJsC5Kp6ZJ820w820w820w8O1zrSNLsDcwon9B879xrChLrmNV86tBrClOonhBp0Ew820w820w82QJt6BJpi0w820w820w820w8O1zrSNLsDcwon9B86hBt6lOrmBKpmgwpD9Lri1PomRMr6kwoSZRrDhP82xQqmRB87dMpmVQ871BsyRCtmVzt6BLryAa820w820w820JbmdM820w820w820w820w82cwtndB86dLrDdFsThBrDgws65IpnhQpi0Es65IpnhQpiVJon0F2y0w820w820wbiROpnpBsDdB820w820w820z86tBrClOonhB87dQomdHbn9BtClOsSlA86pIomRB86tOon1E2y0w820w820wbiRFrDpBsDhBp20w820w820z86BzqmdIpi1DsC5Mq0Ew820w820w82QJpCNxrmlzq65Ot20w820w8O1MsCZAtmdB864wpCNxrmkwoSxxsDgwa7dLsDgwoDAwt6BJpiMwp6YwrCZQ86RBsCtB87dQomdHsOAa820w820w820JbmVBpS5Qpi0w820w820w82cwsTtFt6dE86hFpCpBsClKt6Bxr21EtmlP82xyr7lBf2Q@sClAagEw820w820w82QJrCZQpncwl4lol20w820w8O1xp6gwrCZQpncwoSZJrmlKt21Fry1jlAswa6pLsy1Apm9RpStFrCsF2y0w820w820wbiREpmNM820w820w820w820z87hEqncwrmlPsS5DpgEa820w820w821BpOMa820w820w820Ac20JbnhFt6NBfi96r65Jpi17sC5Mq3Ewrm5Ir6Zza2Ay87hOomdBbDhUt20@86tOon1EbDdSpMFlkQ57hlZ5jAgavgEahSlQjT1QqmZKsOwa820w820w820DpCZKt7hVs6kZsOsw83Q@85MApCZKt7hVs6kI2y0w820w820w9TtFp7hEfmAD820w820Zfy1s96BJomtBtSBAt6wI2y0w820w820w9SxBqmtEt3RF9O0w820Zfy1s96pOomRBq6lFpSxQb0Ew820w820w82tBrCdLp6BKpPRP9O0wfjUwn2hBrCdLp6BKpOMa820w820w820DpCZKt7dFuCkZpysw83Q@85MApCZKt7dFuCkI2y0w820w820w9SpLrDhTqmhQq3RC9O0Zfy1s96pLrDhTqmhQq2Ma820w820w820DrmBKtSBAt6wZsOsw83Q@85MArmBKtSBAt6wI2y0w820w820w9ThFt6NBfncD820w820Zfy1s97hFt6NBt6lUt2Ma820w820w820DsTlyt6BQr6kZsOsw83Q@85MAsTlyt6BQr6lQpnxQb0Ew820w820w82tKomRBt7BMpjRP9O0wfjUwn2hKomRBt7BMpiMa820w820w820DoSZRrDhKomRBfncD83Q@85MAoSZRrDhKomRBb0Ew820w820w82tKomRBonhQszRP9O0wfjUwn2hKomRBonhQsCpFr6kI2y0w820w820w9ThLt65IfncD820w820Zfy1s97hFrmlJonwI2y0w820w820w9SpxoThLszRC9O0w820Zfy1s96pxoThLsyMa820w820w820DoSZIrT9PfncD820w83Q@85MAoSZIrT9Pb0Ew820w820w82typSdLr6ZOsPRP9O0wfjUwn2hypSdLr6ZOsOMa820w820w820Dq65Pq2sw820w820w83Q@85MAq65Pq2Ma820w820w820DsC5Kp6ZJ9O0w820w83Q@85MAsC5Kp2Ma820w820w820DoT0D820w820w820w83Q@85MAs65IpnhQpiMa820w820w820DsClSpn9Ppisw820w83Q@85MAsThxoSJOpnpBsDdBb0Ew820w820w82tFrDpBsDhBp2sw820wfjUwn2hFrDpBsDhBp2Ma820w820w820DpCNxrmlzq65Ot2sw83Q@85MApCNxrmlzq65Ot2Ma820w820w820DrClDonhB9O0w820w83Q@85MArClDonhBb0Ew820w820w82tQqmRB9O0w820w820wfjUwn2hzrSNLsDhFrmkI2y0w820w820w9SVLt6lPfncD820w820Zfy1s96VLt6lPt6lUt2Ma820w820w820Dq6lIs2sw820w820w83Q@85MAq6lIs2Maai1Lsy1RsS5DpiwFeMEAq6lIs20C9y1RsS5DpiwFeMEa8O1FrDhBsCVxr7carnAw97BMomgN83Qw96pLrDhPqnFB82EwcPIw820w820z871xp21QrT0I86BKoSNRp6kwt6BQr6karnAw97BMomgO83Qw96pLrDhPqnFB82Ewcy0H834MeO0z871xp21yrThQrSQI86BKoSNRp6kwr65ypmNP2CRV82hVs65AcO0Z82hCrSVQsSBWpi0G838X820w820w8O1Momgwt6ZMb21FrCdItmhB87dRoDhFt6NB82xLs7hFrSVxr2AarnAw97xMomgwfi0Nc3Iw820w820w820w820w820w820z871xp21IpmpJ865Kp21OqmtEt0FJui0ApD9xrmlMomgwfi0NeO0w820w820w820w820w820w820w820w820w820w820z87pBsDhFoS5I871xp6hFrCswpCZO86pOomRBsMFJui0Ap6lMt6xJonwwfi0MeMFJui0BhnpBrDhPeMFJui0BrC5Jpm5Qt78X2wFFpy0E96pIomRBoSxxsDgw9yow97hFt6NBt6lUt21Bsi0y8yAwuMEw820w820w82hQqnhIpnhBu7gwfi0yhCNxrmkwgSxxsDgyeMFZ2wFFpy0E97hFt6NBt6lUt21Bsi0y8yAwuMEw820w820w87lKr6lPsO0E96BKtClOt6lAai1X2y0w820w820w820w820w820At6BQr6lQpnxQ83Qw97hFt6NBp6lConlIt3Ia820w820w821Z86lIsSkwuMEw820w820w820w820w820w97hFt6NBt6lUt20Z82hQqnhIpmBKtClOt6lAeMEw820w820w87QavgEaqmowa2hKomRBonhQsCpFr6kF87Ia820w820w820z85hEpi1KomRBbm5Qt79FoDlQpi1CqmNB86pLsCRxt21FsO1x86pRrCdQqmZK86VxrmkwpCZIr6ZTpmgwoDAwoi1Qom8wt6xBrwEw820w820w82cwoi1Ppn5RpmVzpi1Lpy1Qom8wsSlMon9xt6lA86VxrmkZtC5Itmkws65FsDcK2y0w820w820wrT1Bry1Jui0AonhQsCpEb20ArC5Jpm5Qt79CqmNB86ZO86hFpi0ygS5K9TgwsClxp20ArC5Jpm5Qt79CqmNBey0A8lNK8zIa820w820w821Tq6BIpi0Ef2hxt7hOpCw@ai1X2y0w820w820w820w820w821zq6ZJs3Ia820w820w820w820w820w86RV82wApDlKoSVxrmkI82hxt7hOsThOai0Z87dMr6BQ82Zst2YI82hvb20OeMEw820w820w820w820w820wp6BB8299rDpxr6BA86pLsCRxt21Fry0ArC5Jpm5Qt79CqmNB8y1RrCNBsTcwp6lCqmVBp20AonhQsDdQszIa820w820w820w820w820w82hKomRBonhQsDIApDlKoSVxrmlZ83QwuO1Jon0wuO1Ps6NFt20LfiYI82hvb20O87QwsT1IqngwbRNQbOMw965Qt79Pt78wvjIa820w820w821Z2DQa2CBC82wArCZQpndQpnxQ83R@82Zrf3VtbOAwuMEw820w820w86hFpi0yjCZQpncwsThOqmVD86dxrytQ86dLrDhxqmUwf21Lsy0@8wFZ2wEz84lKsTlOpi1JqmVTqmhQq21FsO1x87pxr6BA86pIrS5QqmVDbn1LqmVQ86VRrm9BsyMa8O1MsCBKt21RsS5Dpi1Pt79FrCswqmowrCZQ2CRV82hJqmVTqmhQq5ZCeMFFpy0E96RFrDtFp7hE83R@82Zua5IMbjAKniIF9jYAbOAwuMEw820w820w82hJqmVTqmhQq5ZC83Qw934X2DQwpmNPpi1X2y0w820w820wtS5Ory0ylC5Itmkw9OhJqmVTqmhQq2swqncwqmVSomNFp21CrT8wrmBKtSBAt6wI86lUs6lzt6lA864wpCNLongKn6UyeMEw820w820w87lPomtBa2AX2DQa2ycwoC5zqStOrTlKp21zrSNLsDcW2ycwbi1VpmNIrTswpT9xp6BBrDgW86hBpC5Rr7gwa6xLt2MwqC5SoiMwqDcI871BsCMF2ycwbi1DsClBry1DsC5AqmlKt3EwrmlJ2ycwbi1yr7lB86tOomhFpmVQey1FrOMwtS5HpnlMb21zq65FrwEz82QwpT9xui1DsC5AqmlKt3EwpCNxt21zrSNLsDcwa79Bp2MwpT9BpmUI869ItmkI82UKbyAaqmowa2hypSdLr6ZOsO1Bsi0y8yAwuMEw820w820w82cwoSxLrTdB864wp6lConlIt0Ew820w820w86BC82wAoSZIrT9P86lN829JpmQyai1X2y0w820w820w820w820w820AoCtzrSNLsDcwfi0ypT9BpmUyeMEw820w820w87QwpmNPqmowa2hzrSNLsDcwfnUwbRUEqmZYtS5HpnlMv6dEomBKaigLai1X2y0w820w820w820w820w820AoCtzrSNLsDcwfi0yoCNRpi8X2y0w820w820wvi1Br7dFpy0E96dLr6ZOsO0Zvy0LnyxOpmhYpT9BpmVYoCNRpnNxsnlxv7BBr6NLtTNMtn9Mr6lYrT9xrCtBaigLai1X2y0w820w820w820w820w820AoCtzrSNLsDcwfi0ypT9Bui8X2y0w820w820wvi1Br7dB87Ia820w820w820w820w820w82hypSdLr6ZOsO0Z829VpmNIrTsyeMEw820w820w87QavgFJui0E969DoSZIrT8Nb20AoCtzrSNLsz8FeMFFpy0E969DoSZIrT9P86lN829VpmNIrTsyai1X2y0w820w820w969DoSZIrT8N83Qw8ydBpmlBpmkyeO0w820w820z869xoSJDsCZRrCgwoSZIrT8wpT9xp6BBrDgwsThxsDga820w820w820AoCtzrSNLsz8wfi0y8SlBpmlyc28X820w820w82cwoC5zqStOrTlKp21zrSNLsy1DsC5AqmlKt21Pt6ZM2DQwpmNPqmowa2hypSdLr6ZOsO1Bsi0yoCNRpi8F87Ia820w820w820AoCtzrSNLsz4wfi0y8SlBpmlBpi8X82hypSdLr6ZOcy0Z828zpj1Bc6pC8zIavi1Br7dFpy0E969DoSZIrT9P86lN829DsClBry8F87Ia820w820w820AoCtzrSNLsz4wfi0y8SlBpz9Bpi8X82hypSdLr6ZOcy0Z828zpj1CpCkM8zIavi1Br7dFpy0E969DoSZIrT9P86lN829DsClV8yAwuMEw820w820w82hypSdLr6ZOci0Z828zpzxCe6oU8zIw969DoSZIrT8O83Qw8ydBe6kUpjwyeMFZ86lIsSBC82wAoCtzrSNLsDcwfnUwbRUzbyUKbyUK92YF87Ia820w820w820AoCtzrSNLsz4wfi0AoCtzrSNLsz8wfi0AoCtzrSNLsDcX2DQwpmNPpi1X2y0w820w820wp6BB829lrD9BoSZDrCBWpmgwoCtzrSNLsy1Ls7hFrSUwn28AoCtzrSNLsDds8y8avgEa8O1jlAswpDlKoThFrSVP2DIws65zqS5Dpi1jlAsX2y0w820w820wsTly86VBtO1X2y0w820w820w820w820w821Jui0AoSNxsTcwfi1Pq6BCt3Ia820w820w820w820w820w86RV82hPpmNC83QwuTQX2y0w820w820w820w820w821yr6lPsO0E97dBr6oI82hzr65PsOAX2y0w820w820w820w820w821OpnhRsCUw97dBr6oX2y0w820w820wvgEa820w820w821Ptm8wq6lxp6lO87Ia820w820w820w820w820w86RV82wAsSlIpyMw97sI82hEai0Z841veMEw820w820w820w820w820wrnAw96lKoRZxt7hO83Qw9OsX2y0w820w820w820w820w821Fpy0Ep6lCqmVBp20ApmVzrShFrCsF87Ia820w820w820w820w820w820w820w820w96lKoRZxt7hO83Qwsn5X86lKoSZAqmVDfi8ApmVzrShFrCsyvjIa820w820w820w820w820w87Qa820w820w820w820w820w82hPpmNCbjVXsTpDvi0Kfi0Yf5dmhPIaf3ZUrmMwtClOsSBLrzQyciUM8yhBrCdvonhQsy1Pt65Kp65IrSVBfi9KrO8_fwEY8khfgRhpk4kwsTpD851lgAN9gO0ybiYLlPd3bOZ4l4gwkRp7834KciYLhkUy829Et7hMeyYLtTtTbDsPbCZOpOZ7sC5Mq6BzsOZjlAsLciUNbQhkh2ZPtCsNciVAt6gyfwEYsTpD87pBsDdFrSUZ8z4Kci8wtSBAt6wZ8yhT8y1EpmBDq7gZ8yhE8y1LrCNLomgZ8CBKqngEpnpQai8wtCBBtQ9Lu3Qyc20M82hT82hE8y1UrmNKsPQyq7hQs3ELbTtTtOVTcOVLsCsLcz0Mc2ZPtCsy87xJr6VPeDxIqmVHfi9Et7hMeyYLtTtTbDsPbCZOpOYNejAVbTxIqmVH8zUaf24Jbi16r65Jpi1DsC5Mq21Pt65zqO1SqndRomNFuC5QqmZKby1jpmkwq7hQs7cWbOZDqnhEtm8KoSZJbS9OpmVAomVDsClDpOZ6r65JpktOon1E86pLsy1IonhBsTgwtClOsSBLryMwomVA86xQt70WbOZTtTsKoD9BrChxrCtOpmtDbCdLriZCr65JpmtOon1EsOVEt6RI86pLsy1Bu65Js6NBsOUwbiQ@2zMxbiQwjAZkhlcW82hKrThBsThBu7gwbiQ@2BdmhMEw820w820w87Qa2y0w820w820wsTly86BKoSNRp6kwuMEw820w820w820w820w820wrnAwa2hPpmNCb20AoSZKt6lKt2Awfi10nPIa820w820w820w820w820w82hPpmNCbjVXsTpDvi0Kfi0AoSZKt6lKt3Ia820w820w821Z2wEw820w820w87dRoy1zrSNLsA5Ir6ZzonhB87Ia820w820w820w820w820w86RV82wAsSlIpyMw978I82hDb20AoyAwfi10nPIa820w820w820w820w820w879Bt7lOry0ysCtya2hOb2hDb2hyai8X2y0w820w820wvgEa820w820w821Ptm8wpT9Ltn1vsThxsDgwuMEw820w820w820w820w820wrnAwa2hPpmNCb20AonhQsyAwfi10nPIa2y0w820w820w820w820w821Jui10pRZxt7hO83Qwrm5M87Ia820w820w820w820w820w820w820w820wpnxFsThP82hxt7hObjVX95ZZ83YwsT1OqmVQpyxNsiYAnPQy9ncybOMw965Qt78JfDIAnTQF83Ewa2Aa820w820w820w820w820w87QwsnsEqmgwoSNxsTcFeMEw820w820w820w820w820ws7lPq210pRZxt7hOb20AonhQsyQ@uStvpnxQsC5Z86BC82hxt7hObjVXpRZBu7hOonQX2y0w820w820w820w820w821Fpy0E965Qt78JfDJEsClCviAwuMEw820w820w820w820w820w820w820w821Jui10olZxt7hOeMEw820w820w820w820w820w820w820w821MtndE841xnS5Qt78I87dMsCBKt6owsn4Lu6NFrCIWq79BpzQy9ncybOMw965Qt78JfDJEsClCvi1Fpy0AonhQsyQ@uSxOpmpZeMEw820w820w820w820w820w820w820w820z86hBpC5Rr7gwt65OpSlQflZQrT0wpmNPpi1IqmVHsO1TqmNI86ZMpmUwtSBQq6BK85dmhO0YrS9GpmdQfwEw820w820w820w820w820w820w820w821MtndE841xnS5Qt78I87dMsCBKt6owsn4Lt65OpSlQfi8BsO8Lb20AonhQsyQ@uThxsCtBt7Qwv7Mw8BZQrT0yeMEw820w820w820w820w820w820w820w821MtndE841xnS5Qt78I82hxt7hObjVXolZBu7hOonQw820w820w820w820w820w820w820w820w821Fpy0AonhQsyQ@uS5vpnxQsC5ZeMEw820w820w820w820w820w820w820w820AsSlIpyQ@uTdSpTQwbzQwsT1OqmVQpy1NsiYYoi0BsPVsryYI86FLqmUE9O0Db20Eg65vonhQsyMwg6tvonhQsyAFeMEw820w820w820w820w820wvi1Br7dB87Ia820w820w820w820w820w820w820w820w97dBr6oJfDJPtCtZ82UZ87dMsCBKt6owsn4Lf6sw9nc@n6ULb21GrSBKa2sw9OMwg6tvonhQsyAX2y0w820w820w820w820w821Z2wEw820w820w820w820w820w97dBr6oJfDJPtCtZ82UZ87dMsCBKt6owsn4Lf7hFt6NBfylPf5MLt6BQr6k@bOMw965Qt78JfDJQqnhIpnQa820w820w820w820w820w820w820w820wqmow965Qt78JfDJQqnhIpnQX82cwsSxLtmNA869B86pFsDdQ86lIpmRBrDgwtSBQq6BK86swoSZKt65FrClO2y0w820w820wvgEa820w820w821Ptm8wpT9Ltn1vpmVA87Ia820w820w820w820w820w86RV82wAsSlIpyMw965Qt78F83Qwg5YX2y0w820w820w820w820w820AsSlIpyQ@uTdSpTQwbzQw965Qt78JfDJEsClCvi0_875NbPNsbS4@n6UL83Ewsn4Lf5MLpPVsryYX2y0w820w820wvgEa820w820w821Ptm8wpCBIr6lAkClzt65KpSNB87Ia820w820w820w820w820w86RV82wAsSlIpyMw97wNb20Auj4I82hUcyMw97AOb20ApCBIr2Mw96lUt79xai0Z841veMEw820w820w820w820w820w97wN83QwsT1OqmVQpy0y9j0Kcmoyb20Au34X2y0w820w820w820w820w820Au38wfi1Ps79FrDhC828Bc2UNpy8I82hUczIa820w820w820w820w820w86RV82hT83QwsT1OqmVQpy0y9j0Kcmoyb20Au38wbi0Au34X2y0w820w820w820w820w821Jui0Aq20Z87dMsCBKt6ow8ykMbz5C8yMw97AO82Qw97ANeMEw820w820w820w820w820w96lUt79x83Qwp6lCqmVBp20ApnxQsC4wfO0ApnxQsC4wey0y8zIa820w820w820w820w820w82hPpmNCbjVXsTpDvi0Kfi1NsiYYsClzt21Ufi8Au34y87AZ8yhVci8wtSBAt6wZ8yhT8y1EpmBDq7gZ8yhE8y1CqmNIfi8ApCBIr28w96lUt79x85MLfBNKbPIa820w820w821Z2wEw820w820w87dRoy1Pt79FrCtkl4owuMEw820w820w820w820w820wrnAwa2hPpmNCb20AqmgI82hUb20AuiMw97dQsyMw96lUt79xai0Z841veMEw820w820w820w820w820w97wwfi1Ps79FrDhC828Bc2UOpy8I82hUeMEw820w820w820w820w820w96BA83Qw86hBpCBKpmgw96BA83Ywsn4LqmgZ8yhFp28L83Ew8y8X2y0w820w820w820w820w820ApnxQsC4wv7MZ828yeMEw820w820w820w820w820w97dBr6oJfDJPtCtZ82UZ875NbPNQpnxQ82hFp21Ufi8Au28wujQy97Ay82hBu7hOojUAsThOf5MLt6lUt3VsryYX2y0w820w820wvgEa820w820w821Ptm8wsTpD87Ia820w820w820w820w820w86RV82hPpmNC83QwsSxFpDgX2y0w820w820w820w820w821OpnhRsCUw8yhPpmNCbjVXsTpDvjMLsTpDfBNK8zIa820w820w821Z2y0w820w820wcjIavgEasTly86VxrmlEondE87Ia820w820w820z84tBrClOonhB864wtClzt6ZO86xxsSwwpCZO87hEpi1KomRB87dQsCBKpOMwtSlFpSxQqmVD86lxsCNV86ZSpn8a820w820w820z86Nxt6lO86dEon9xoThBsDcK85tB87txrDgwt6Yws6BzqO1Qq6kwsS5Jpi1zrSNLsDcwpCZO86pRrCdQqmZK2y0w820w820w8O1KomRBsO1xoT9LsTcwp6BCpClOpmVQ86pIomRB86tOon1EsOUa820w820w821Jui0ArC5Jpi0Z87dEqmpQeMEw820w820w86RV82hSpmdQrT8wfi0MeMEw820w820w86RV82hTpmBDq7gwfi0NeMEw820w820w86RV82hJonwwfi0NeMEw820w820w86RV82hJrSgwfi0Nc3Ia820w820w820z86BC86RLp7lIpi1KomRB871OpndBrDgI87hOtmVz87hL835Pt21zq65O2y0w820w820w96VxrmkwfnUwsOYKa2UGfOBwbOYX2y0w820w820wpCZOpm5zq21Jui0AoO0EsT1IqngwbOYI82hKomRBai1X2y0w820w820w820w820w821Jui0Aqi0Z82xLsCgw96cF82kw96RLp3Ia820w820w820w820w820w82hSpmdQrT8waPQwa2hF82Ywa2hJrSgHaO0J834Fai0G82hTpmBDq7gX2y0w820w820w820w820w820Arm5U82IZ834way0AtSlFpSxQeMEw820w820w820w820w820w97tBqmtEt20Gfi0MbzsMeMEw820w820w820w820w820wr65Pt21Fpy0ArmZA83Uwcj8X2y0w820w820wvgEw820w820w879Bt7lOry0Eci0J82hSpmdQrT8wbO0Arm5UagFZ2wFPtm8wsTlJnSVxrmlEondE87Ia821Jui0ArC5Jpi0Z87dEqmpQeMEw879Bt7lOry1RrD1xoSIE8ykPcBsG8yMw96VxrmkFeMFZ2wFPtm8wsC5Kp6ZJnSVxrmlEondE87Ia820w820w820z84tBrClOonhB864wsC5Kp6ZJ86xxsSwwpCZO87hEpi1KomRB87dQsCBKpOUa820w820w820z85hEqncwpmVPtn9BsO1Qq65Q86pRrCdQqmZKsO1TqnhE87hEpi1PomRB86Vxrmkwq65Spi1Qq6kwsS5Jpi1zrSNLsyMa820w820w820z869Lt6wwtSBQq6BK864wpCNxrmlDsC5Mq21xrCgwomdOrTdP86RRr7hFs6NB86pIomRBpT9xs6xP87tFt6xLtnga820w820w820z86VBpmhFrCswt6YwsSlQ864ws65IpnhQpi1xrCgwtSxFr6kws79BsSlOtCBKpO1Qq6kwrT9FpSBKomMwpCNxrmlDsC5Mq0Ew820w820w82cwrT1QqmcI87lKr6BHpi1Tq65Q86xxs71BrDcwtSBQq20JbmxxsSwK2y0w820w820wrnAw96Vxrmkwfi1Pq6BCt3Ia820w820w821Jui0Aq65Pq20Z87dRrlZKomRBq65Pq2wArC5JpiAX2y0w820w820wsT9xrCgE96xxsSwFeMEw820w820w879Bt7lOry1OomVAa34F2DQa2ycwhBlkll9585hfbkhfey1FrDpBsThFpS5Qpi1Qq6kws6ZPsSByr6BQui1Lpy1JomJFrCswpm5zq21CsC5JpitP86xBqmtEt21KrSUJtmVFpCZOri1xrCgwqmVPt6lxp21yondBp21Lry1xrCZQq6lOry0EcT9Aai1LsDhErStLrC5I86hxt64wsSZRsCdB2wFJui0AsTlJnTtxr6MX2CRV82hPtmRvoT1ReMFJui0Arm5UnTtxr6MX2CRV82hJonxvoT1ReMFJui0ArBZPomRMr6lPeMEasTly86dLr6ZOnThFrmlM87Ia821Jui0E97hVs6kI82hKomRBb20AoSZRrDhvtS5Ir2Mw96BKp5ZTomNIb20AoSZRrDhvoT1Rb20AqmVAnSdMtiAwfi10nPIa821Jui0E97dxt7lOonhFrSUI82hFrDhBrDdFt7AI82hFcyMw97cI82hQun1Bc2AX2y0wrnAwa2hOb20ApOMw968FeMEa821Fpy0Ep6lCqmVBp20AoSZRrDhvoT1Rai1X2y0w820w86BC82xApmpFrClA82hPtmRvtS5Ir20C86hBpCBKpmgw97dRrlZzs7kw9yow97dRrlZzs7kwfy0Mai1X2y0w820w820w820AoSZRrDhvoT1R83Qwa2hPtmRvtS5Ir20G82hzrTlKt5Zzs7kwbO0AsTlJnSdMtiAX2wAw82hJonxvoT1R83Qwa2hPtmRvtS5Ir20G82hJonxvoT1R82Yw97dRrlZzs7kFeMEw820w821Z86lIsSBC82xApmpFrClA82hJonxvoT1R82oC82hJonxvoT1R83Uwc2AwuME9820AoSZRrDhvoT1R83Qw96dLtmVQnSdMti0G82hJonxvtS5Ir20L82hJonxvoT1ReMEw820w820w820w96Rxu5Zzs7kwfi0Arm5UnTtxr6MX2y0w820w87Qa821Z2wEw820wqmowa2hQun1B86lN829QqmRBs28F87Ia820w820w820w820wqmowa6hBpCBKpmgw96BKp5ZTomNI82oC82hFrChvtS5Ir20@fi0M82oC86hBpCBKpmgw96VvsS5Js6NBsO0C9y0ArBZPomRMr6lP83Uwc20F87Ia820w820w820w820w820w820w820AqmVQpmVPqnhV83Qw96BKp5ZTomNI82Ywa38way0ArBZPomRMr6lPajIw820w820w2y0w820w820w820w87QwpmNPpi1X2y0w820w820w820w820w820w820AqmVQpmVPqnhV820Z82wQ82YwcOAway0Eci0J82wN82Ywa34waO0E96dLtmVQnTtxr6MwbO0Arm5UnTtxr6MF82EG838F82EG838FajIa820w820w820w820wvgEw820w820w820w821Fpy0Ep6lCqmVBp20AoSZRrDhvoT1R82oC82hzrTlKt5Zzs7kwfy0Mai1X2wA9820w82cw820wqmowa6hBpCBKpmgw96BKp5Zzs7kw9yow96BKp5Zzs7kwfzQwc20C9y1ApmpFrClA82hKnTdxrn1Ipncw9yow96VvsS5Js6NBsO0@830wai1X2wA9820w82cw97dxt7lOonhFrSUwfi0AqmVAnSdMti0L82wO82Ew96VvsS5Js6NBsOAX820w820w80E92i0w820z87QwpmNPpi1X2y0w820w820w820w820w820w820w820w820w820AsS5Qtn9xt6BLry0wfi0N82Qwa34wbO0Eci0H82wAoSZRrDhvoT1R82Yw96dLtmVQnTtxr6MFai0Gay0OajIa2i09820w82dZ2y0w820w820w820w87QwpmNPpi1X2y0w820w820w820w820w820w820w97dxt7lOonhFrSUwfi0N2y0w820w820w820w87Qa820w820w820w820w97hVs6kM83Qw8DhFrmkyeMEw820wvi1Br7dFpy0Ep6lCqmVBp20AoSZRrDhvoT1R82oC82hzrTlKt5Zzs7kwfy0M82oC82hQun1B86lN829QqmRBs78yai1X2y0w820w820w820wqmowa6hBpCBKpmgw96BKp5Zzs7kw9yow96BKp5Zzs7kwfzQwc20C9y1ApmpFrClA82hKnTdxrn1Ipncw9yow96VvsS5Js6NBsO0@830wai1X2y0w820w820w820w820w820w820AqmVQpmVPqnhV83Qw96BKp5Zzs7kwbO0Ecy0G82hKnTdxrn1IpncFeO0w820w820a820w820w820w821Z86lIsSkwuMEw820w820w820w820w820w820w96BKt6lKsSBQui0wfi0Ed20L83cF82Ewa34wbi0Eci0L82wN82Iwa2hzrTlKt5Zzs7kwbO0Arm5UnSdMtiAwayEwcyAwayEwcyAFeMEw820w820w820w87Qa820w820w820w821Fpy0Ep6lCqmVBp20AoSZRrDhvtS5Ir20C9y0AoSZRrDhvoT1R83Uwc2AwuME92i0w82dFpy0Ep6lCqmVBp20AqmVAnTtxr6Mw9yow96BKp5ZTomNI83UZ830w9yowp6lCqmVBp20ArBZPomRMr6lP82oC82hKnTdxrn1Ipncwfy0M82AwuME92i0w82cw820w820w82hPonhRsC5QqmZK83Qw96BKp5ZTomNI82Ywa38way0ArBZPomRMr6lPajIw820w820w2wA9820w8TQwpmNPpi1X2y0w820w820w820w820w820w820w820w820w82hPonhRsC5QqmZK83Qwci0J82wN82Ywa38waO0E96dLtmVQnSdMti0L82hzrTlKt5ZTomNIaiAwayEwcyAX2wA9820w8TQa820w820w820w821Z86lIsSkwuMEw820w820w820w820w820w820w97dxt7lOonhFrSUwfi0N2y0w820w820w820wvgEw820w820w820w82hQun1Bc20Z829QqmRB8zIa820wvi1Br7dB87Ia820w820w820w821Fpy0Ep6lCqmVBp20AqmVAnTtxr6Mw9yow96BKp5ZTomNI83UZ830w9yowp6lCqmVBp20ArBZPomRMr6lP82oC82hKnTdxrn1Ipncwfy0M82AwuMEw820w820w820w820w820w820w96BKt6lKsSBQui0Z82hFrChvtS5Ir20L82wO82Ew96VvsS5Js6NBsOAX820w820w80Ew820w820w820w87QwpmNPpi1X2y0w820w820w820w820w820w820AqmVQpmVPqnhV820Z82wQ82YwcOAway0Eci0J82wN82Ywa34waO0E96dLtmVQnTtxr6MwbO0Arm5UnTtxr6MF82EG838F82EG838FajIa820w820w820w821Z2y0w820w820w820w97dxt7lOonhFrSUwfi0NeO0w2y0w820w820w820w97hVs6kM83Qw8DhFrmkyeMEw821Z2y0w2y0w96BKt6lKsSBQui0wfi0N86BC82hFrDhBrDdFt7Awfy0NeMEw82hFrDhBrDdFt7Aw83Qwc21Fpy0AqmVQpmVPqnhV83Mwc3Ia820AsS5Qtn9xt6BLry0Z834wqmow97dxt7lOonhFrSUwfy0NeMEw82hPonhRsC5QqmZK83Qwc21Fpy0AsS5Qtn9xt6BLry0Y830X2wEw82hPonhRsC5QqmZK820Z82wQ82YwcOAway0Eci0J82wN82Ywa34waO0E97dxt7lOonhFrSUwayEwcyAF82EG838FajIa2y0wqmowa2hzrSNLsDcwfnUwbRVQqmRBs2YF87Ia820w86BC82wArC5Jpi0Zvy1JeBZsmSpsnigWai1X80Ew820w820At7BMpj0wfi0ypDlKoThFrSUyeMEw820wvi1Br7dFpy0E96VxrmkwfnUwrjFvn5JPn5QAeyAwuMEw820w820At7BMpj0wfi0ysTlysSxBr6MyeMEw820wvi1Br7dB87Ia820w820w97hVs6kM83Qw8DhFrmkyeMEw820wvgEw87Qa2y0wqmowa2hQun1Bc21Bsi0yt6BJpi8F87Ia820w82hFcy0Z82hFrDhBrDdFt7AwayEwczIa820w82hO83Qwa2wOdjkway0E96BKt6lKsSBQui0H87dNsDgE96BKt6lKsSBQuiAF82YwcyAway0AsS5Qtn9xt6BLry0H838Ncy0G82wN82Qw97dxt7lOonhFrSUFajIa820w82hD83Qwa2wOdjkway0Eci0J82wEci0J838way0AqmVQpmVPqnhVai0Gay0OaiAway0Eci0J82hFcyAF82Ew97dxt7lOonhFrSUwaO0Ocj8way0Eci0J82hPonhRsC5QqmZKaiAX2y0w820Aoy0Z82wEczkR82Ewa34wbi0AqmVQpmVPqnhVai0G82wN82Qw96AOai0G82wN82Qwa2hFrDhBrDdFt7Away0Aqj8FaiAway0AsS5Qtn9xt6BLry0H838Ncy0G82wN82Qw97dxt7lOonhFrSUFajIa820w82hP83Qw97dxt7lOonhFrSUway0Eci0H838Rdi0L82wAsy0H82hD82Iw968Fai0L838X2y0w820AsO0Z834wqmow97cwfy0NeMEw820w978wfi1FrDgE978FeMEw820w96swfi1FrDgE96sway0AsO0H838Ncy0G82wN82Qw97cFajIa820w82hy83QwqmVQa2hyajIa821Z86lIsSkwuMEw820w820w82hPonhRsC5QqmZK83Qwa34wbO0Pai0H82wAsS5Qtn9xt6BLry0L83gFeMEw820w820w86BC82wAt7BMpj0wpn4w8CpRrCdQqmZK8yAwuMEw820w820w820w820w820w820Asy0Z82wEcjkR82IwqmVQa3kR82Ew96BKt6lKsSBQuiAF82Ew97dxt7lOonhFrSUwaO0Odjkway0Eci0J82hPonhRsC5QqmZKaiAX2y0w820w820w820w820w820w82hD83Qwa2wRdi0H86BKt2wOdi0G82hFrDhBrDdFt7AFai0G82hPonhRsC5QqmZK82IwczkR82Ewa34wbi0AsS5Qtn9xt6BLryAFeME9820w80Aw82hy83Qwa2wOc30waO1FrDgEdjkway0AqmVQpmVPqnhVaiAway0AsS5Qtn9xt6BLry0H838Rdi0G82wN82Qw97dxt7lOonhFrSUFajIa820w820w821Z86lIsSBC82wAt7BMpj0wpn4w8DdRoDdEpmNI8yAwuMEw820w820w820w820w820w820Asy0Z82wEcz0M82IwqmVQa3kR82Ew96BKt6lKsSBQuiAF82Ew97dxt7lOonhFrSUwaO0Odjkway0Eci0J82hPonhRsC5QqmZKaiAX2y0w820w820w820w820w820w82hD83Qwa2wRdi0H86BKt2wOdi0G82hFrDhBrDdFt7AFai0G82hPonhRsC5QqmZK82IwczkR82Ewa34wbi0AsS5Qtn9xt6BLryAFeMEw820w820w820w820w820w820Aoy0Z82wEcjkR82IwqmVQa3kR82Ew96BKt6lKsSBQuiAF82Ew97dxt7lOonhFrSUwaO0Odjkway0Eci0J82hPonhRsC5QqmZKaiAX2y0w820w820wvgEw87Qa2y0wsClQtn9K829OpS8E978I96sI968F8zIavgEasTly86dLr6ZO87Ia820w820w821Jui0E97hVs6kI82hEondEb20ArC5JpiMw96BKp2Awfi10nPIa820w820w821Jui0E97oNb20Atz8I82hScOAX2wEw820w820w86BC82wAq65Pq2AwuMEw820w820w820w820w820w97oN83QwrC5JpmxxsSwE96VxrmkFeMEw820w820w820w820w820w97oO83Qw97oP83QwrC5JpmxxsSwEsSdxr65O879BtClOsSkw96VxrmkFeMEw820w820w87QwpmNPqmowa2hOomVAai1X2y0w820w820w820w820w820Atz4wfi1OomVAa34FeMEw820w820w820w820w820w97oO83QwsC5Kp2wNajIa820w820w820w820w820w82hScO0Z879xrCgEciAX2y0w820w820wvi1Br7dB87Ia820w820w820w820w820w82hSci0Z879xrChLrlZKomRBq65Pq2wArC5JpiAX2y0w820w820w820w820w820Atz8wfi1OomVArSRvrC5JpmxxsSwE96VxrmkFeMEw820w820w820w820w820w97oP83QwsC5Kp6ZJnSVxrmlEondEa2hKomRBajIa820w820w821Z2wEw820w820w86BC82wAoSZIrT9QqmRB82oC86hBpCBKpmgw96BKp20C9y0AqmVA83UZ830w9yow96VvsS5Js6NBsO0@830F87Ia820w820w820w820w97oN83Qwcy0G82hFrCgwbO0ArBZPomRMr6lPeMEw820w820w87Qw2wEw820w820w82cwt6xBrmkws65IpnhQpnca820w820w821Fpy0Ep6lCqmVBp20At7BMpi1xrCgw97hVs6kwpn4w8CxLt28F87Ia820w820w820w820w820w86RV82hO83Qwcz0R82IwqmVQa3kM82Ew97oPajIa820w820w820w820w820w86RV82hD83Qwc20H86BKt2wOcP0way0Atz4FeMEw820w820w820w820w820wrnAw968wfi0M82IwqmVQa3kR82Ew97oOajIa820w820w820w820w820w879Bt7lOry0ysCtya2hOb2hDb2hyai8X2y0w820w820wvgEw820w820w86BC82xApmpFrClA82hQun1B865Kp20At7BMpi1Bsi0yrmlJ8yAwuMEw820w820w820w820w820wrnAw978wfi0MeMEw820w820w820w820w820wrnAw96swfi0Nej0waO1FrDgEdj0way0Atz8FeMEw820w820w820w820w820wrnAw968wfi0M82IwqmVQa38Nc20G82hSciAX2y0w820w820w820w820w821OpnhRsCUw8D9DoywAsyMApOMAoyAyeMEw820w820w87Qa820w820w821Fpy0Ep6lCqmVBp20At7BMpi1xrCgw97hVs6kwpn4w8CBL8yAwuMEw820w820w820w820w820wrnAw978wfi0Uc20H86BKt2wSc20G82hSciAX2y0w820w820w820w820w821Jui0ApO0Z82hOeMEw820w820w820w820w820wrnAw968wfi0Nej0waO1FrDgEdjkway0Atz8FeMEw820w820w820w820w820wsClQtn9K829OpS8E978I96sI968F8zIa820w820w821Z2wEw820w820w82cwrnlIt6Aws65IpnhQpnca820w820w821Fpy0Ep6lCqmVBp20At7BMpi1xrCgw97hVs6kwpn4w8CFxtC4yai1X2y0w820w820w820w820w820z84xxrChIpi1yrThE865KrCZQonhFrSVP82xvmSFtb21vmSBtb20KbyUX87tEqmdE865OpgEw820w820w820w820w820w8O1xoSdRsC5QpiAI865P87tBr6MwoncwqmVMtngwt6xxt21IomdHsO1xrDAwomVKrThxt6BLrDcI865P2y0w820w820w820w820w820z869BsTgwoncws6ZPsSByr6kK85tFt6xLtngwomVKrThxt6BLrDcI87tB86tBt21x86NFt7hIpi1EomdHugEw820w820w820w820w820w8O1xrCgwrm5QoSwwrSUwqC5SonNLsCtYoSZJb21Bt6cK2y0w820w820w820w820w821Fpy0E96VxrmkwfnUwrjFvn5JGn5QAeyAwuO0w820w82cwqCBQ865KrCZQonhFrSUa820w820w820w820w820w820w820w820w97hVs6kwfi0ypT9BpmUyeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwrjFvn5JFn5QAeyAwuO0z86BKr6BKpi1xrCVLt65QqmZK2y0w820w820w820w820w820w820w820w82hQun1B83Qw8C5Ntm4yeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwrjFuj3YEqC5SonNGonpxu7NGp6JYrClQv6ZOpTNzrSRYqmZYsTlKaiYWai1X82cwiC5SogEw820w820w820w820w820w820w820w820At7BMpi0Z829DsClBry8X2y0w820w820w820w820w821Z86lIsSBC82wArC5Jpi0Zvy0LezEWbOAwuO0w820w82cwiC5SoiMwt7BMqmdxr21Mpn9CbmRxs2RxpSlKt21JpnhErSgwsSlMon9xt6ZO2y0w820w820w820w820w820w820w820w82hQun1B83Qw8CtOpmlK8zIa820w820w820w820w820w87QwpmNPqmowa2hKomRB83R@82YWeyYF87Iw820w820w8O13aOIa820w820w820w820w820w820w820w820w97hVs6kwfi0yumlIr6ZT8zIa820w820w820w820w820w87QwpmNPqmowa2hKomRB83R@86QWnRNrqRNt93EF87Iw8O1Hpn9KpmMwomVKrThxt6BLrwEw820w820w820w820w820w820w820w820At7BMpi0Z829LsC5KpSkyeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwbPEWbOAwuO0w820w820z84cHaMEw820w820w820w820w820w820w820w820At7BMpi0Z829VpmNIrTsyeMEw820w820w820w820w820wvi1Br7dB87Iw820w820w820w820w820w820w820w820z87dVsThBrgEw820w820w820w820w820w820w820w820At7BMpi0Z829OpmgyeMEw820w820w820w820w820wvgEw820w820w820w820w820w8O1ComNIbnhEsCZRpSwwt6YwoSZIrT8ws65IpnhQpnca820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829Mpn9I8yAwuMEw820w820w820w820w820wqmowa2hKomRB83R@82YWeyYF87Iw820w820w820w820z84cHaMEw820w820w820w820w820w820w820w820At7BMpi0Z829VpmNIrTsyeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwrjFgpn9Iey1Lsy0ArC5Jpi0Zvy1JeBMKs6MWai1X820w820w820z851BsCMa820w820w820w820w820w820w820w820w97hVs6kwfi0ypT9BpmUyeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwrjFvn5JHn5QAeyAwuO0z86JBsCVBr0Ew820w820w820w820w820w820w820w820At7BMpi0Z829LsC5KpSkyeMEw820w820w820w820w820wvi1Br7dB87Iw820w820w820w820w820w820w820w820z87dVsThBrgEw820w820w820w820w820w820w820w820At7BMpi0Z829OpmgyeMEw820w820w820w820w820wvgEw820w820w820w820w820w8O1ComNIbnhEsCZRpSwwt6YwoSZIrT8ws65IpnhQpnca820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829GsO8F87Ia820w820w820w820w820w82cwi65Kp6NB869Lt6wwomVKrThxt6BLrDcwa5ZrqBQI85ZrqlQI82UKbzIwtSxFoSwwon9B2y0w820w820w820w820w820z865zoTlOonhBaiMwoncwtSlIr21xsO1FrD1Rt21Qq65Q86NxoSJP865Kui1xrCVLt65QqmZKsOMwonca820w820w820w820w820w82cwoClPt21xsO1MrTdPqm9IpiUwlSBQq6ZRt21xrCVLt65QqmZKsOMwtSkwpSlQ864wr6BQt6NB86xxoSJVb0Ew820w820w820w820w820w8O1xrCgwrm5QoSwwrSUwoi0ybO8wtSBQq21x828KqDcyb21Bt6cK2y0w820w820w820w820w821Fpy0E96VxrmkwfnUwrjFvn5JGn5QAeyAwuO0w820w82cwqCBQ865KrCZQonhFrSUa820w820w820w820w820w820w820w820wqmowa2hKomRB83R@86QWbPEF87Ia820w820w820w820w820w820w820w820w820w820w820At7BMpi0Z829DsClBry8X820w820w820z87dLtn9zpgEw820w820w820w820w820w820w820w821Z86lIsSkwuMEw820w820w820w820w820w820w820w820w820w820w82hQun1B83Qw8C5Ntm4yeO0w820w820w82cwoDlFr7hFrwEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w821Z86lIsSBC82wArC5Jpi0Zvy0LezELai1X820w820w82cwgOIH2y0w820w820w820w820w820w820w820w82hQun1B83Qw8DBBr6NLtO8X2y0w820w820w820w820w821Z86lIsSBC82wArC5Jpi0Zvy1JeyYKaBMKqDcWai1X82cwiC5SoldzsCBMt20Erm5QoSww8yYy86BK871xt6wF2y0w820w820w820w820w820w820w820w82hQun1B83Qw8CtOpmlK8zIa820w820w820w820w820w87QwpmNPqmowa2hKomRB83R@86QLeyYF87Iw820w820w8O1aonpxkSdOqn1Q82xJonhzq20yey8wqmUwoDlFr7hFryAa820w820w820w820w820w820w820w820w97hVs6kwfi0yon5Roi8X2y0w820w820w820w820w821Z86lIsSBC82wArC5Jpi0Zvy1JbRUw92YF87Iw820w82cwjmBPsSBKpO1PumRyrSMa820w820w820w820w820w820w820w820w97hVs6kwfi0ypT9BpmUyeMEw820w820w820w820w820wvi1Br7dFpy0E96VxrmkwfnUwrjFvn5JHn5QWai1X820z86JBsCVBr0Ew820w820w820w820w820w820w820w820At7BMpi0Z829LsC5KpSkyeMEw820w820w820w820w820wvi1Br7dB87Iw820w820w820w820w820w820w820w820z87dVsThBrgEw820w820w820w820w820w820w820w820At7BMpi0Z829OpmgyeMEw820w820w820w820w820wvgEw820w820w820w820w820w8O1ComNIbnhEsCZRpSwwt6YwoSZIrT8ws65IpnhQpnca820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829TomJBtn0yai1X2y0w820w820w820w820w820At7BMpi0Z829xsnlx8zIa820w820w820w820w820w82cwpC5Ir2RQq79LtmtE87hL86dLr6ZO871xr6lQt6lP2y0w820w820wvgEw820w820w86BC82xApmpFrClA82hQun1B865Kp20At7BMpi1Bsi0yoSxxqmUyai1X2y0w820w820w820w820w821Fpy0E96VxrmkwfnUwrjFvn5JTn5QWai1X820w820w82cwtS5Hpn8a820w820w820w820w820w820w820w820w97hVs6kwfi0yon5Roi8a820w820w820w820w820w87QwpmNPpi1X820w820w820w820w820w820w820w820w8O1LpCoJgR1l2y0w820w820w820w820w820w820w820w82hQun1B83Qw8C9ItmkyeMEw820w820w820w820w820wvgEw820w820w820w820w820w8O1ComNIbnhEsCZRpSwwt6YwoSZIrT8ws65IpnhQpnca820w820w821Z2wEw820w820w82cwoSZIrT8ws65IpnhQpnca820w820w821Fpy0Ep6lCqmVBp20At7BMpi1xrCgw97hVs6kwpn4w8D9Bp28F87Ia820w820w820w820w820w86RV82hO83Qwcz0M82IwqmVQa3kR82Ew97oNajIa820w820w820w820w820w86RV82hU83Qwdj0waO1FrDgEe30way0Atz4FeMEw820w820w820w820w820wsClQtn9K829OpS8E978I97wI97wF8zIa820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829DsClBry8F87Ia820w820w820w820w820w86RV82hD83Qwcz0M82IwqmVQa3kR82Ew97oNajIa820w820w820w820w820w86RV82hU83Qwdj0waO1FrDgEdz0way0Atz4FeMEw820w820w820w820w820wsClQtn9K829OpS8E97wI96sI97wF8zIa820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829yr7lB8yAwuMEw820w820w820w820w820wrnAw968wfi0Oc3kwaO1FrDgEdj0way0Atz4FeMEw820w820w820w820w820wrnAw97wwfi0Uc20H86BKt2wSc20G82hSciAX2y0w820w820w820w820w821OpnhRsCUw8D9DoywAu2MAu2MAoyAyeMEw820w820w87Qa820w820w821Fpy0Ep6lCqmVBp20At7BMpi1xrCgw97hVs6kwpn4w8DBBr6NLtO8F87Ia820w820w820w820w820w86RV82hU83QwcjsR82IwqmVQa3kR82Ew97oNajIa820w820w820w820w820w86RV82hy83Qwdj0waO1FrDgEcz0way0Atz4FeMEw820w820w820w820w820wsClQtn9K829OpS8E97wI97wI968F8zIa820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829Mtn9Mr6kyai1X2y0w820w820w820w820w821Jui0Au20Z834Vc20H86BKt2wSdi0G82hSciAX2y0w820w820w820w820w821Jui0ApO0Z83wM82IwqmVQa3oM82Ew97oNajIa820w820w820w820w820w879Bt7lOry0ysCtya2hUb2hDb2hUai8X2y0w820w820wvgEw820w820w86BC82xApmpFrClA82hQun1B865Kp20At7BMpi1Bsi0yon5Roi8F87Ia820w820w820w820w820w86RV82hO83Qwdj0waO1FrDgEdz0way0Atz4FeMEw820w820w820w820w820wrnAw96swfi0NdzkwaO1FrDgEdjkway0Atz4FeMEw820w820w820w820w820wrnAw968wfi0NdzkwaO1FrDgEdjkway0Atz4FeMEw820w820w820w820w820wsClQtn9K829OpS8E978I96sI968F8zIa820w820w821Z2y0w820w820wqmowa6hBpCBKpmgw97hVs6kwomVA82hQun1B86lN829LsC5KpSkyai1X2y0w820w820w820w820w821Jui0Asy0Z834Vc20H86BKt2wSdi0G82hSciAX2y0w820w820w820w820w821Jui0ApO0Z83AM82IwqmVQa3oR82Ew97oNajIa820w820w820w820w820w879Bt7lOry0ysCtya2hOb2hDb30F8zIa820w820w821Z2wEw820w820w879Bt7lOry0ysCtya30Ic2MMai8X2DQa2DdRoy1zrSNLsBZPoS5Ipi1X2y0w820w820wrnAwa2hSomNRpiMw96Rxu2Awfi10nPIa820w820w821Jui0E978I82hDb20AoyAwfi0EczkRb20OdjkI838RdiAX2y0w820w820w97pxr7lB83QwbihSomNRpi1Fpy0ArClDonhBeMEw820w820w86BC82wAtC5Itmkwfy0Mai1X2y0w820w820w820w820w820ApO0Z82hy83QwqmVQa38Nc20G82wArm5U82Qw97pxr7lBai0L82hJonwFeMEw820w820w87QwpmNPqmowa2hSomNRpi0Y830F87Ia820w820w820w820w820w82hO83Qw96swfi1FrDgEcz4M82Ewa2hJonwwaO0AtC5ItmkF82Yw96Rxu2AX2y0w820w820wvgEw820w820w879Bt7lOry0ysCtya2hOb2hDb2hyai8X2DQa2DdRoy1zrSNLsBZJon0wuMEw820w820w86RV82wAoSZIrT9Pb20ApDlKoOAwfi10nPIa820w820w821Fpy0EpnxFsThP82hMomNBt7hBnSRxs7IApDlKoTQF87Ia820w820w820w820w820w879Bt7lOry0As65IpnhQplZJon1X96pRrCdZeMEw820w820w87QwpmNPpi1X2y0w820w820w820w820w820As65IpnhQplZJon1X96pRrCdZ83QwoSZIrT8E96dLr6ZOsOMw96xxsSwI82hCtmVzajIa820w820w820w820w820w879Bt7lOry0As65IpnhQplZJon1X96pRrCdZeMEw820w820w87QavgEasTly87tOqnhBnT1xr6lQt6kwuMEw820w820w86ZMpmUEhABchiMw8zUAs65InSpFr6kyajIa820w820w821CrT9BomdE86RV82hHpnAwa7dLsDgwqSlVsO0Bs65IpnhQplZJon0F87Ia820w820w820w820w820w871OqmVQ84p9j4kw96JBuiUybjUybyhMomNBt7hBnSRxs7IAqSlVviUyn6UyeMEw820w820w87Qa820w820w821zr6ZPpix6ikN5ajIavgEasTly879Bomhvs65IpnhQpi1X2y0w820w820wqmowa2RB82hMomNvpCBIpiAwuMEw820w820w86ZMpmUEhABchiMw971xr5ZCqmNBai1Lsy1Aqmkw8CdxrytQ86ZMpmUwpCBIpi0As65InSpFr6kW82gx8zIa820w820w821Tq6BIpi0E86RV82hIqmVB83Qwf4p9j4k@ai1X2y0w820w820w820w820w821zq6ZJs2wAr6BKpiAX2y0w820w820w820w820w820ErnAw96JBuiMwrnAw97pxr7lBai0Z87dMr6BQa28Jfy8I96NFrCkFeMEw820w820w820w820w820w971xr6lQt6lvrm5MuOhHpnBZfihSomNRpjIa820w820w821Z2y0w820w820woSNLsSkEhABchiAa820w820w821Z2DQa2CRV82lerShBeO0w820w820z84xxsSwwrSowrmlOpSlA86pOomRB86hxt64arnAw9lhJs3Ia2ycwpCNLtOwF86RBsCtBsO1QtSYwsThxoSJPb21Pt6ZOqmVD87hEpi1Jpn9DpmgwpD9xrmlP865Kp21SomNRpi1Aonhx86BK82lerShBbwFPtm8wpCNLtO1X2y0w820w820wrnAwa2hIondQb20At6xFsOMw97oI82hAb20AqnsI82hFp2Awfi10nPIa2y0w820w820wrnAw96NBrBZx83Qwg2hIondQ82QwcjIa820w820w821Jui0Ar6lKnS8wfi1097hEqncwbi0NeMEa820w820w821Jui0Aqi0Z830X2y0w820w820wrnAw96NBrBZPomRBeMEw820w820w86pLsy0EeO0Aqi0Yfi0Ar6lKnS4X82hFaOIF87Ia820w820w820w820w820w86NxsTgwqmow96Awfy0Ar6lKnS8X2y0w820w820w820w820w821IondQ86BC82hIondQbjVr96Bt86VB82hQq6BPbjVr96BteMEw820w820w87Qa820w820w820Ar6lKnTdxrmkwfi0AqjIa2y0w820w820wpCZO82wAqi0Z82hIpmVvojIw96AwfzQw96NBrBZPomRBeO0AqiQJai1X2y0w820w820w820w820w821Jui0AqO0Z828Ar65Pt2Q@mOhFnjIAqi8X2y0w820w820w820w820w820z864wtmVFsnlB84B486BP86dLrDdQsDlzt6lA86pOrSQw8CpRrCcXp6lMt6wXpnhFrmkyeMEw820w820w820w820w820w8O1CtmVzbmhBs7hE86BPrytQ87lKqn5RpiMwqngwrm5V869B879Bs6lxt6lA86Nxt6lObwEw820w820w820w820w820w94VLp6lX8yhHeOhS8DQJfDJPt6BJpnQwfi1ApmNBt6kw95hJs7IAqTQJfDJPt6BJpnQX2y0w820w820w820w820w821Fpy0Ep6lCqmVBp20Al6RMuOhHviQ@uShBr7hxviAwuMEw820w820w820w820w820w820w820w820AjCZApnIy96IX97oyviQ@uShBr7hxvi0Z86hBr6lQpi0Al6RMuOhHviQ@uShBr7hxvjIa820w820w820w820w820w87Qa820w820w820w820w820w86BC82xApmpFrClA82hkrn1X96JZbjVXoThFrmlZai1X2y0w820w820w820w820w820w820w820w82herShBuO8AqPIAty9ZbjVXoThFrmlZ83Qwp6lIpnhB82hkrn1X96JZbjVXoThFrmlZeMEw820w820w820w820w820wvgEw820w820w820w820w820wqmowa6hBpCBKpmgw95hJs7IAqTQJfDJFrChTomNIviAwuMEw820w820w820w820w820w820w820w820AjCZApnIy96IX97oyviQ@uSBKp7txr6NZ83Qwp6lIpnhB82hkrn1X96JZbjVXqmVAtS5Ir7QX2y0w820w820w820w820w821Z2y0w820w820w820w820w821Fpy0Ep6lCqmVBp20Al6RMuOhHviQ@uSBKp6dMtnQF87Ia820w820w820w820w820w820w820w820w94VLp6lX8yhHeOhS8DQJfDJFrChzs7lZ83Qwp6lIpnhB82hkrn1X96JZbjVXqmVAoT1RvjIa820w820w820w820w820w87Qa820w820w820w820w820w86hBr6lQpi0Al6RMuOhHvjIa820w820w821Z2wEw820w820w86pLsy0E96Awfi0Ar6lKnTdxrmkX82hF83MZ82hIpmVvozIw96AHaOAwuMEw820w820w820w820w820wrnAw96Iwfi0y97hEqncJfBIAqlQX96AyeMEw820w820w820w820w820w95hJs7IAqTQJfDJPt6BJpnQwfi0AtzIa2y0w820w86BC82xApmpFrClA82hAai1X2y0w820w80Aw820w821Fpy0E96dLr6ZOsO0Zvy0LnDhFrmlMbOAwuMEw820w82092i0w820w82cwbiRzrSNLszRQqmRBs5JOni1TqmNI86xFqC5zqO1ApmNQoi1xrCgwtndB86BQ865P864wcCVA86BKp6lMpmVApmVQ87hFrmkwbO1PomRMr6kwoSZRrDga2gAw820w820Al6RMuOhHviQ@uSdQqmRBvi0Z82hAeMEw820w8209820w820wvi1Br7dB87Ia820w820w2gAw820w820Al6RMuOhHviQ@uShBr7hxvi0Hfi0Aqi0Zfi0Ar6lKnS8wfO0Ap20W830X2y0w820w80Aw820w821Z2y0w820w87Qa820w820wqmowa6hBpCBKpmgw96BTai1X2y0w820w80Aw820w820Al6RMuOhHviQ@uSBKp7txr6NZ83Qw96BTeMEw820w821Z2y0w820w86BC82xApmpFrClA82hFp2AwuMEw820w820w82hkrn1X96JZbjVXqmVAoT1Rvi0Z82hFp3Ia820w820wvgEw80Ew87Qa821OpnhRsCUw97hEqncX2DQa2ycws65OsSkwqmVMtngarnAwg4hxt64X2CRV841jrT9Qpmh4onhxeMFJui0Ar65Pt20Z85JteMFJui0At6BJpi0Z830X2CRV82hApmNQoi0Z87lKp6lCeMFJui0AqmVAtS5Ir20Z87lKp6lCeMFJui0AqmVAoT1R83QwtmVApmoX2CRV82hFpSVLsClA83Qwc3IarnAw96NFrCkX2CRV82hJonxTomNI83Qwc3IarnAw96Rxu6hBr7hx83QwcjIarnAw97dRrntxr6Mwfi0MeMFJui0AsTlJoT1R83Qwc3IarnAw96VPomRMr6lP83Qwc3Ia2CBC82wAoSZIrT9P83R@82Zut6BJpn0Lai1X2y0w820Arm5Up6lIt64wfi0MeMFZ2wEz879BtClOsSkwqmowrClBp6lA2CpLsClxoSwwa3M@ai1X2y0w820w820woSxLrn0X2y0w820w820w96NFrCkwfi0AnPIa820w80BFpy0E97dQomdHsClSpn9PpiAwuMEw820w820w820w820w820w8O1Qq6lOpi1JonAwoCkwomUwpnxQsC4wsS5Js6NBsO1zrSNRrmUwpCZO86hFpCpBsClKt6Bxr7ca820w820w820w820w820w82cwm5xo87hLp6YW879Bp6Ywt6xBsSkwkAlP865P86ZKpiUwingDsO1Opn1BonhBp21ypmNLtOUa2gBJui0E97dQomdHb20AsS5Js6NBsOAX2wA9rnAw97dxrn1IpncO83QwtmVApmoX2y0w820w820w820w820w820E97dQomdHb20AsS5Js6NBsOAwfi0EbRUEbyEFn7cHa5NAaOw_ezE_n6gGfOA_alNPazYAbOAX2wA9qmowa2hPt65zqO0Zvy0LnywKayBssOIEn6gHa3YWezZsp2E_ajYFn7cGfOgLai1X2wA92ihPomRMr6lPcy0Z82hPomRMr6lPeMEw820w820w820w820w820w2iwAsThxoSII82hPomRMr6lPai0Z82hPt65zqO0Zvy0EbRUEbyEFn7cHa5NAaOw_ezE_n6gGfOA_alNPazYAbOAX2wA9vgEw820w820w820w820w820wqmowa6hBpCBKpmgw97dxrn1IpncOai1X2y0w820w820w820w820w820w820w820w87lKsSxFpDgwg4hxt64I86FLqmUE8zIyb21OpnpBsDdB87dMr6BQa28X8yMw97dQomdHaiAwby0y82hPomRMr6lP82hPomRMr6lPcy8X2y0w820w820w820w820w821Z86lIsSkwuMEw820w820w820w820w820w820w820w821RrDdEqmpQ8414onhxb21GrSBKa28X8yMwsClSpn9Ppi1Ps6NFt2wyeO8I82hPt65zqOAF82Uw8y0AsS5Js6NBsO8X2y0w820w820w820w820w821Z2y0w820w820wvi1Br7dB87Ia820w820w820w820w820w87lKsSxFpDgwg4hxt64I82hIqmVBeMEw820w820w87Qw820w820w2DQa2CBC82wApCNxrmlzq65Ot2AwuMEw820w820w82cwimUwpCNxrmkwoSxxsDgwrmZApiMwqDlPt21OpnpBsDdB87hEpi1Aonhx87dL87hFrmkwrmZSpncwpD9Lri1IpmpQ87hL879FpSxQbwEw820w820w841jrT9Qpmh4onhx83QwsClSpn9Ppi10h65QojIavi1Br7dB87Ia820w820w8210kSZOt6lAh65Qoi0Z87dLsDgwg4hxt64X2DQa2ycws79LoSlPsO1xrCgwrmlOpSkwpD9xrmlP2CpLsClxoSwwa41jrT9Qpmh4onhxai1X2y0w820w820woSxLrn0X2y0w820w820w8O1MsCZzpndPey1CrSNApmhvsThxoSIwoSZRrDga820w820w820z86lDey1CtmVznS4XpDlKoRZyeSpRrCdvoO0PcgE9rnAwa2hPt65zqOMw97dxrn1IpncFeME9rnAw96BKp7txr6Mwfi1RrChBpzIa2mRV82hPomRMr6lPcy0Z87lKp6lCeME9rnAw96BKp6dRs7kwfi1RrChBpzIa2iwAsThxoSII82hPomRMr6lPai0Z82wLnywKayBssOIEn6gHa3YWezZsp2E_ajYFn7cGfOgLajIa2mBC82wAsThxoSIwfnUwbRUEbyEFn7cHa5NAaOw_ezE_n6gGfOA_alNPazYAbOAwuME92ihPomRMr6lPcy0Z82hPomRMr6lPeME92iwAsThxoSII82hPomRMr6lPai0Z82hPt65zqO0Zvy0EbRUEbyEFn7cHa5NAaOw_ezE_n6gGfOA_alNPazYAbOAX2gAa2gBFpy0E97dxrn1IpncO83R@82Zua5NAaOAWa5NAaOAAbOAwuME92gAE97dxrn1IpncOb20AqmVAoT1Rai0Z82hPomRMr6lPcy0Zvy0EbRUEn6gHajEEn6gHaigLagE92nQa2nQa2mBC82wAsS5Js6NBsO0Zvy0Lnyxsp2IFeyxsp2IF92YF87Ia2gAE97dxrn1IpncI82hFrChTomNIai0Z82hPomRMr6lP83R@82wLnyxsp2IFeyxsp2IF92YF2wBZ2wBRrCNBsTcwa6hBpCBKpmgw97dxrn1IpncwomVA86hBpCBKpmgw97dQomdHai1X2wA9aOIAqmtKrT9Bp3Ia820w820w820w820w820w820wrClUt3Ia820w820w821Z2wEw820w820w82cwt6xBsCkwrm5V869B865K86lUt79x87dxrn1IpncwoSZItmRK86pLsy1AqmpCpn9BrDhFomNP82YwoT1R87hFrmkW2y0w820w820w96hBr7hx83QwtmVApmoX2y0w820w820wqmowa6hBpCBKpmgw97dxrn1IpncOai1X2y0w820w820w820w86BC82wAoSZIrT9P83R@82Zut6BJpn0Lai1X2y0w820w820w820w820w820w820w8O1Tpi1xsCkwq6BGomdHqmVD87hEpi0yp6lIt64y865Kp20yrm5Up6lIt64y87pxsCBxoCNBsOUw2y0w820w820w820w820w820w820w8O1PomRMr6lP86BP879BomNIui0ytS5Ir2Rzr6ZzqO1QqmRB8yUwsS5Js6NBsP8wqncwsClxr6NV829zs7kwt6BJpi8K2wA9820w82hApmNQoi0Z82hPomRMr6lPczIa2i0w821Z86lIsSkwuME92i0w820a2gAw820w96hBr7hx83Qw97dxrn1IpncO82Qw97dxrn1IpncX2y0w8209820w87Qa2i0w820Arm5Up6lIt64wfi1xoDcE96hBr7hxai1Fpy1xoDcE96hBr7hxai0@82hJonxApmNQojIa2i0w820AsTlJoT1R82IZ82hPomRMr6lPczIa820w87Qa820w80Ew820w96Rxu7txr6Mwfi0AsS5Js6NBsO1Fpy0AsS5Js6NBsO0@82hJonxTomNIeMEw820w97dRrntxr6MwaPQw97dxrn1IpncX2y0w820ArDdxrn1IpncwaPQwcjIa820w80Ew820w820w82cwpCZO86dEomBK86tOon1EsOMwomVKrThxt6kwtS5Hpn8wpD9xrmlP87tFt6ww8BZrtRQyb21CrT8wr65Qpn8a820w820w820z86dLr6ZOqmVDby1kq6BP86BP864wq65zqOMwoDlQ86xxsO1x871OpmdBp6lKt20E8BZrqRQy86pOrSQws6lOpyAK2y0w820w820wqmowa2hzrSNLsDcwpn4w8CdEomBK8yAwuMEw820w820w820w820w820wrnAwg71xsDhP83QwsT1Iqngw8zIJbjIyb20AsThxoSIX2y0w820w820w820w820w821Jui10rClTs65Ot7cwfi0EajIa820w820w820w820w820w82hPt65zqO0Z87dEqmpQ841Mon9QsPIa820w820w820w820w820w82hPt65zqO0Kfi0yeOQJeO8X2y0w820w820w820w820w821CrT9BomdE86RV82hMon9Q82x0s65Ot7cF87Ia820w820w820w820w820w820w820w820w971xsDgwfnUwsOYXbRZrtRQXbSsX2y0w820w820w820w820w820w820w820w82hMon9Q82UZ829vmTtt8zIa820w820w820w820w820w820w820w820ws7lPq210rClTs65Ot7cI82hMon9QeMEw820w820w820w820w820wvgEw820w820w820w820w820w97dQomdH82UZ86FLqmUw8zIJbjIyb210s65Ot7cX2y0w820w820wvgEa820w820w820z86RBsCtB86pOomRBsO1xrCgws6ZMtmNxt6kw9kVLp6kW2y0w820w820w96NxsTgwfi1Cr6ZTa2hIondQb21r82sDb21Ps6NFt20yeO8I82hPt65zqO1tb20At6BJpiMw96hBr7hxb20AqmVAtS5Ir2Mw96BKp6dMtiAX2wEw820w820w86BC82wAoSZIrT9P86lN829QqmRBs28F87Ia820w820w820w820w820w82hQqmRB82IZ82hPomRMr6lPeMEw820w820w87QwpmNPqmowa6hBpCBKpmgw97dxrn1IpncOai1X2y0w820w820w820w820w820At6BJpi0Hfi0AsS5Js6NBsP8X2y0w820w820wvi1Br7dB87Ia820w820w820w820w820w82hQqmRB82IZ82hPomRMr6lPeMEw820w820w87QavgFCr6ZTa2hIondQb21rniMw97hFrmkI82hApmNQoiMw96BKp7txr6MI82hFrChzs7kFeMEaqmowa2hzrSNLsDhFrmkF87Ia820w82xApmpFrClA82hFrChTomNIai1Lsy1Ton9K8293rSNLsCBKpO1yui1PomRMr6kwoSZRrDgwbO1QqmRB879BsnlFsClP879RrCVFrCswt6xB86BKs7lQ87dQomdH87hOomdBsO1Qq79LtmtE82tPt65zqSdLr6Nxs7dBbnhFrmkKoC5Pq2sK85dQomVAon9A86pRrCdQqmZKbmVxrmkJoC5PpmgwoSZIrT9FrCswqmNI869B87lPpmgKn6UyeMEw820wa2hzrSNLsDcw8nUwbRVQqmRBbOAwomVA82xApmpFrClA82hFrChTomNI865Kp21ApmpFrClA82hApmNQoiAwomVA87txsCUw8AdLr6ZOqmVD869V87dxrn1Ipi1zrTlKt20L87hFrmkwqncwrCZQ87dRs71LsDhBp21Tq6lK87lPqmVD87hEpi1ApmNQoi1ypnhTpmlK87hTrO1FrD1Rt21PomRMr6kwoSZRrDhP82Ywt6BJpncKn6V9py1Qq6kwcCVA86BKs7lQ86BP865K86BKt6lMpmVApmVQ87dxrn1Ipi1zrTlKt20L87hFrmkwrmlxsTlOpmRBrDgI87lPpi0DbiRzrSNLszRQqmRBs2swqmVPt6lxp2Vsry8avgEaqmowa2hzrTlKt6Vxrmkwpn4w8Ddxrn1Ipncyai1X2y0w820w820w8O19py0AoSZRrDhKomRB86BP87lPpmgI86BQ9Tcwr6BHpmNV87hEongwtSkDsCkwrCZQ86RBondRsCBKpO1Fry1Pt65zqO1PomRMr6lP2y0w820w820w8O0EpiVDby1QqmRB86dLtmNA869B87hEpi1RrCBQaiMwsSYwp6ZK9TgwtS5OryUa820w820w821Ton9K829jt65zqO1zrTlKt21FsO1IrTswa2hQqmRBaiUwh6BA87dLrmlQq6BKpO1DrO1TsCZKpPZsry8wqmow97hFrmkwf20Nc30X2DQa2DtxsCUw8ABDrCZOpmgw96BDrCZOpmgwr6BKpncwtSBQq21FrDpxr6BA86pLsCRxt5NK8y1Fpy0AqmtKrT9Bp3IatmVIpndP82wAt6BJpiAwuMEw820w820w87txsCUw8AlikAZiey1erO1Pt65zqO1zrTlKt7cwpCZRrChsry8X2y0w820w820wrnAw96BJ83QwkRp7bjVKpnsEajIa820w820w820z86lJqngwomUwpn9OrT8wrmlPsS5Dpi1jlAsI86pLsy1QrSZIsO1xtnhLrm5QqmVD86pIomRBpT9xs6wwtndB2y0w820w820wrnAw96BJomtBq6lFpSxQ83Qw96pLrDhPqnFB82EwdjIa820w820w820AqmQJfCxBomhBsywAqmRxpSlTqmhQq2Mw96BJomtBq6lFpSxQajIa820w820w820AqmQJfDdQsCBKpRhkhyxRrChBpyMwqmVQa2hFrm5DpntFp7hE82YwcyAI82hCrSVQsSBWpi0G838I2y0w820w820w820w8295kB9fkzEwjCYwtC5IqmgwqmVMtngws79LtCBApmgwt6YwpCNxrmlDsC5Mq2VMr2UyajIa820w820w821MsCBKt20AqmQJfDdSpPIa820w820w821Bu6BQ838X2DQaqmowa2hQqmRBrm5U865Kp20At6BJpmRxu20Y82hQqmRBai1X2y0w820w820wtS5Ory0ykT1BoSBCqmlA82QJt6ZQomMw97hFrmlJonwwqncwr6lPsO1Qq65K865zt7lxr21QrThxr20At6BJpiMwsSYwqmtKrT9Bp5NK8wEw820w820w86BC82hQqmRBrm5UbOhQqmRB83Uwc2UMczIw8O1LrCNV87txsCUwqncwsSBDrCBCqmdxrDgwa6kKpOUI86VLt21OrTlKp6BKpO1Bt6cF2y0w820w820wtmVApmow97hFrmlJonwX2DQa97hFrmlJonwwv7MZ82hQqmRBeMEArm5UnTtxr6Mwv7MZ82hJonxTomNIeMEArm5UnSdMti1Yv3Qw96Rxu6hBr7hxeMEAsTlJnTtxr6Mwv7MZ82hPtmRTomNIeMEAsTlJnSdMti1Yv3Qw97dRrmdMtjIa96VvsS5Js6NBsO1Yv3Qw96VPomRMr6lPeMEarnAw97tFp7hEs6lOt6BJpi0Z82wAqmRxpSlTqmhQq20J838way0Au71xp2AwbO0At6BJpmRxu3Ia2ycwl79Bongwoncwoi1Mpn9zpmVQomtB86ZC87hFrmkwqmowt6xB87dQsCBKpO1BrChP86BK864w8ykybwFJui0ArmBKtSBAt6xvt6BJpjIaqmowa2hJqmVTqmhQq20Zvy0L9igLai1X2y0w820w820w96RFrDtFp7hEnThFrmkwfi0At6BJpmRxu20G82hJqmVTqmhQq5ZC82Ywcj0MeMFZ86lIsSkwuMEw820w820w82hJqmVTqmhQq5ZQqmRB83Qw96RFrDtFp7hEnSowbO0AtSBAt6xMpn9QqmRBeMFZ2wEz871OtmVB869IrSdHsO1Qq65Q865Opi1QrSYwrC5OsCZT865Kp21ApnhBsCRFrCkwrm5U86hBs7hE2DtEqmNB82xJui0E96BAb20ArCZApiAwfi1BomdE82lerShBai1X2y0w820w820wrnAwa2hCtmVzb20Ap6lMt6wI82hBt6BJpiAwfi1Ps6NFt20yeO8I82hFp3Ia820w820w821Jui0AsThFrmkwfi0ArCZApiQ@uTdQqmRBvjIa820w820w821Aqmkw8CRFsTdFrCswsThxsDgwpCZO82hFp28wqmowrCZQ86hBpCBKpmgw97dQqmRBeMEa820w820w821Fpy0Ea2hBt6BJpiQAsThFrmkF83Mw96RFrDtFp7hEnThFrmkF87Ia820w820w820w820w820w86hBr6lQpi0AjCZApnIAqmhZeMEw820w820w820w820w820wrClUt3Ia820w820w821Z2y0w820w820w96hBs7hErm5U83Qw96hBs7hE86BC82hApn1Qq20@82hApn1Qq6Rxu3IavgEa8O1AsC5T86dxrDpxsOMwomVA86lJoClA86BKt6lOomdQqnpB84FxtC5joT9Fs7gws79LpT9xrgFJui0AqmRxpSlEpmBDq7gwfi0Ea2hApn1Qq6Rxu20H834F82Ew96pOomRBq6lFpSxQai0H82hVs65Aci0H82hVs65AczIa96BJomtBq6lFpSxQ82IZ82hVs65AcO1Fpy0AsTlyt6BQr6lQpnxQ86VB828yeMFJui0At6BQr6lPqnFB83Qw96pLrDhPqnFB82IwdjIarnAw96BJ83QwkRp7bjVKpnsEajIarnAwa2hyr65zqOMw97pApT9BuiMw96hDsClVai0Z82wa820w820w820AqmQJfCdLr6ZOgmNIrSdxt6kEc2Mwc2Mwc2AI2y0w820w820w96BJbjVzrSNLsA5Ir6ZzonhBa34Sc2MwcjoMb20Ndz0Fb0Ew820w820w82hFriQ@oSZIrT91r6NLoS5QpiwOc30I838Mc2Mwcz0MaiMa820w82AX2yhFriQ@q6lxp6lOa2hFrm5DpntFp7hEb20AqmRxpSlEpmBDq7gFeMFJui0AqmVz83Qwf3N9jAcX2zNApmpPfwEw820w820w83NIqmVBon97sC5AqmlKt21Fp3QyoC5zqStOrTlKp28wuj4Z8z0y87AOfi8N8y1UcjQyc28wu38Z8z0y83Ua820w820w820w820w820w83NPt6ZM87dQrT0JoSZIrT8Z8yhypSdLr6ZOci8wrSpCsSlQfi8R9i8wbPUa820w820w820w820w820w83NPt6ZM87dQrT0JoSZIrT8Z8yhypSdLr6ZOcy8wrSpCsSlQfi8Vdiky82Y@2y0w820w820wf2ZIqmVBon97sC5AqmlKt3Uaf2ZApmpPfwEYsThVr6kwt7BMpjQyt6lUt2ZzsTcyfwEw820w820w87hBu7gwuO1CrSVQbmpxrmBIujEApCZKt7hVs6kX86pLrDgJsSBWpjEAuSpLrDhPqnFBvn1UeO1CqmNIeyhyr65zqPIwvgEw820w820w82dPpm5OoSwI82dFpSVLsClzondB87IwrT1xoSBQujEMbz4X86dRsDdLszFMrSBKt6lOeO1Z2y0w820w820w8TdBon9zq3FErTpBsyMw8TdBon9zq2VPq6ZTb20zqmtKrT9BoS5PpjFErTpBsyMw8SBDrCZOpmdxsSkKsSxLtO1X86ZMomdFt7AWcjIwvgEw820w820w82dPtm9QqnhIpi1X87hBu7gJomVzq6ZOeCRFp6hIpjIwpCZKt2RzrSNLszEAtChDsClVeO1Z2y0w820w820w8ThFt6NB87Iwt6lUt2RxrCdErT8WrmBAp6NBeO1CrSVQbndFuCkW97JQqnhIpndFuClZs7xZ2y0w820w820w8TlKuCZLri1X86dRsDdLszFMrSBKt6lOeO1Z2y0w820w820w8SpOomRBsO0@82EWq6ZSpn8wuO1Pt79LqSkWoCNxoSIX87dQsCZHpiRTqmhQq3EMbzkX86dRsDdLszFMrSBKt6lOeO1Z2y0w820w820wbCxFp6kwuO1AqndMr65VeCVLrCkX87Qa820w820w820Ks65OpmVQ87IwrT1xoSBQujEMbzkX87Qaf2ZPt7BIpjUaf7dzsCBMt21Qun1Bfi9QpnxQbSlzrm5PoT9Fs7gyfwEY8lJ3h45kglIa820w820w820ytndB87dQsCBzt28X2y0w820w820wtC5O86hBt65Fr7cI87dBon9zq69QryMwtmVWrSZJoDhKb21Jonhzq6lAt7xQb21PtCsI87dBon9zq6BKpOMwoTlOsClKt5dBon9zq5hBsCQI86BDrCZOpmdxsSkI86BDrCZOpmdxsSl2t6UX2y0w820w820wpDlKoThFrSUwqmVFt2xBtDgF87Ia820w820w820w820w820w86hBt65Fr7cwfi1ArSdRrmlKt2VDpnh5r6lJpmVQgDB9p2wyp6lQomBIsO8FbCpFsDdQgSxFr6gX2y0w820w820w820w820w821Ppm5OoSxyt6Uwfi1ArSdRrmlKt2VDpnh5r6lJpmVQgDB9p2wysSlxsCdE8yAX2y0w820w820w820w820w821FpSVLsClzondBgDhK83Qwp6ZztmRBrDgKpSlQhmNBrmlKt49VimgE8CBDrCZOpmdxsSkyajIa820w820w820w820w820w87lKuCZLrm9Qry0Z86hLoTlJpmVQbCtBt4lIpmRBrDh2ukBAa29RrDFLrSQyajIa820w820w820w820w820w86Rxt6dEpmhQu7gwfi1ArSdRrmlKt2VDpnh5r6lJpmVQgDB9p2wyrm5QoSxBp28FeMEw820w820w820w820w820wsTpD83Qwp6ZztmRBrDgKpSlQhmNBrmlKt7d2ulhxpQVxrmkE8DdSpO8FmP1teMEw820w820w820w820w820wsSlxsCdEqmVD83Qwc3Ia820w820w820w820w820w86dRsD9BrDhjpm5OoSxkpn9J83QwrDlIr3Ia2y0w820w820w820w820w820LbO1RsSkwhQlk871xsC5JpnhBsDcwt6YwsClPt6ZOpi1x86pIomRBpT9xs6xP87dQonhBbwEw820w820w820w820w820wtC5O871xsC5JsO0Z86tBt5ZMon9xrncEajIa820w820w820w820w820w86BC82xMon9xrncKu20C9y1Mon9xrncKuiAa820w820w820w820w820w820w820w820wuCZLrixCqmVAnStOrTlMa6hLoTlJpmVQbD5Rpn9VkSlIpmdQrT8E9RJUfi8D82Iws65OomRPbDwwaO0D8BRrujQy9O0H871xsC5JsOVV82Iw9O9t9OAFajIa820w820w820w820w820w86BC82xMon9xrncKsOAwsSlxsCdEa71xsC5JsOVPajIa820w820w821Z2wEw820w820w82YL86lSpmVQ86NFsThBrClOsMEw820w820w87tFrChLtOVxp6h5tClKt4NFsThBrClOa29zr6BzqO8I86pRrCdQqmZKa6kF87Ia820w820w820w820w820w87pxsy1Qon9Dpngwfi1CqmVAnStOrTlMa6kKt65OpSlQajIa820w820w820w820w820w86BC82xQon9DpngF87Ia820w820w820w820w820w820w820w820wqmowa7hxsCtBt2VKrShBjC5Jpi0Zfi0yoi8F87Ia820w820w820w820w820w820w820w820w820w820w821Fpy0EpiVzt79IiSlV83QZfi1ComNPpiAwsClQtn9KeMEw820w820w820w820w820w820w820w820w820w820w86kKs79BtClKt4hBpC5Rr7gEajIa820w820w820w820w820w820w820w820wvgEw820w820w820w820w820w820w820w821Fpy0Et65OpSlQbCdIondPj6BPt2VzrSVQomBKsOwys65OpmVQ8yAF87lKuCZLrixQsDlBajIa820w820w820w820w820w820w820w820wuCZLrixQon9DpngFeMEw820w820w820w820w820w820w820w821Fpy0E8mhLoTlJpmVQbD5Rpn9VkSlIpmdQrT8E9OVMon9BrDgDaiAwuMEw820w820w820w820w820w820w820w820w820w820w82YL87tB86xxtCkwoC5Pqmdxr6NV86hLrCkwoi1zr6lxsDFLrSQwsSYwoSNBon8wt6xB87lOr0Ew820w820w820w820w820w820w820w820w820w820w87pxsy1Mon9xrncwfi1Dpnhvs65OomRPa2AX2y0w820w820w820w820w820w820w820w820w820w820wqmowa71xsC5JsOVUai1ApmNBt6kws65OomRPbDwX2y0w820w820w820w820w820w820w820w820w820w820wqmowa71xsC5JsOVVai1ApmNBt6kws65OomRPbDAX2y0w820w820w820w820w820w820w820w820w820w820wq6BPt6ZOuiVOpn1IomdBkThxt6kErDlIr2MwrDlIr2Mws65OsSlvs65OomRPa71xsC5JsOAFeMEw820w820w820w820w820w820w820w820w820w820w87lKuCZLrm9QryVzr65PsQNFsTgKomhAa29EqmhB8yAX2y0w820w820w820w820w820w820w820w820w820w820wsClQtn9KeMEw820w820w820w820w820w820w820w821Z2wEw820w820w820w820w820w820w820w820LbO1Ppngws65OomRBt6lOsO1CrT8wuCZLri1Pt65QpgEw820w820w820w820w820w820w820w821Son8wpmMwfi1Qon9DpngKsnlBsDBjpmNBoThLsywysClzt28FeMEw820w820w820w820w820w820w820w821Fpy0EpmMw9yowpmMKonhQsCBytnhBsO0C9y1Br2Vxt7hOqm9Rt6lPbDAw9yowpmMKonhQsCBytnhBsOVvrT9FpRZUai1X2y0w820w820w820w820w820w820w820w820w820w820wtC5O871xsC5JsO0Z86tBt5ZMon9xrncEagEw820w820w820w820w820w820w820w820w820w820w871xsC5JsOVU83QwpmMKonhQsCBytnhBsOVvrT9FpRZUbDpxr7lBeMEw820w820w820w820w820w820w820w820w820w820w871xsC5JsOVV83QwpmMKonhQsCBytnhBsOVVbDpxr7lBeMEw820w820w820w820w820w820w820w820w820w820w86xFsThLsDAKsClMr65zpldQonhBa6VRr6MI86VRr6MI871xsDdBnT1xsC5JsOxMon9xrncFajIa820w820w820w820w820w820w820w820wvgEw820w820w820w820w820wvgEw820w820w820w820w820wpmNPpi1Fpy0EpiVQon9DpngKqmgwfjQw8DlKuCZLri8F86dIpm5OuCZLriwFeMEw820w820w820w820w820wpmNPpi1Fpy0EpiVQon9DpngKqmgwfjQw8DdBon9zq28F87dBon9zq5ZMsCZJs7gEajIa820w820w820w820w820w86lIsSkwqmowa6kKt65OpSlQbCBA83QZ829FpSVLsClzondB8yAwt6ZDpSNBnSBDrCZOpmdxsSkEajIa820w820w821Zb21ComNPpiAa2y0w820w820wbOYwrmZRsSkJrTpBsy1CrT8wqmVCrMEw820w820w82YL87dErTsa820w820w821TqmVArTsKomhAhnpBrDhcqndQpmVBsywyrmZRsSlLtClO8yMwpDlKoThFrSUEpiAwuMEw820w820w820w820w820wtC5O87hxsCtBt20Z86pFrChvpT9Ltn0EpiVQon9DpngFeMEw820w820w820w820w820wqmowa7hxsCtBt2Awp6lQomBIsOVKrShBlC5Itmkwfi0y96VxrmlQun1B828waO1DnThLnThBu7gEt65OpSlQajIa820w820w821Zb21ComNPpiAa2y0w820w820wbOYwoSNBon8a820w820w821TqmVArTsKomhAhnpBrDhcqndQpmVBsywyrmZRsSlLtngyb21CtmVzt6BLryxBai1X2y0w820w820w820w820w821Son8wt65OpSlQ83QwpCBKp5ZDsCZRs2xBbDhxsCtBt2AX2y0w820w820w820w820w821Fpy0Et65OpSlQai1ApnhxqmNPbCVLp6lmomNRpi0Z82sw9PIa820w820w821Zb21ComNPpiAa2y0w820w820wbOYwoThOr2R686pLsy1Ppm5OoSwa820w820w820LbO1zt79IbkAwt6Ywt6ZDpSNB86dxsSkJsSlKsSBQqnpB87dBon9zq0Ew820w820w87tFrChLtOVxp6h5tClKt4NFsThBrClOa29HpnBArTtK8yNCtmVzt6BLry0EpiAwuMEw820w820w820w820w820wqmowa6kKqSlVgSZApi0ZfjQwcj4Q87NY82xBbCdQsCNbpnAw9yowpiVHpnB3rShB83QZfi0Tc2AF87Ia820w820w820w820w820w820w820w820wpiVMsClSpmVQh6lConlIt2wFeMEw820w820w820w820w820w820w820w821Ppm5OoSxvs79Lrn1Qa2AX2y0w820w820w820w820w821Z2y0w820w820w820w820w821Br7dB86BC82xBbCdQsCNbpnAw9yowpiVHpnB3rShB83QZfi0TcOAwuMEw820w820w820w820w820w820w820w821BbD1OpnpBrDh4pmpxtmNQa2AX2y0w820w820w820w820w820w820w820w87hLpStIplZFpSVLsClzondBa2AX2y0w820w820w820w820w821Z2y0w820w820wviMwpC5IsSkF2wEw820w820w82YL86pRrCdQqmZKsMEw820w820w86pRrCdQqmZK86tBt5ZMon9xrncEai1X2y0w820w820w820w820w821Son8ws65OomRP83QwuTQX2y0w820w820w820w820w821Son8ws65OomRPon9O83QwtSBKp6ZTbCNLoS5QqmZKbDdBon9zq2VPtm9Pt78EciAKsT1IqngE9OoDajIa820w820w820w820w820w86pLsy0EtC5O86Awfi0MeO1F83Mws65OomRPon9ObCNBrCtQq3IwaOJFai1X2y0w820w820w820w820w820w820w820w87pxsy1Qrn0wfi1Mon9xrndxsD9rqlQKsT1IqngE8zQyajIa820w820w820w820w820w820w820w820wqmowa25Qrn1rc5Qwv7Mw8nhJs5INniAwoSZKt6BKtmkX2y0w820w820w820w820w820w820w820w871xsC5JsRJQrn1rc5Rt820Z86hBoSZAplliikdLrn1LrClKt2xQrn1rclQFeMEw820w820w820w820w820wvgEw820w820w820w820w820wsClQtn9K871xsC5JsPIa820w820w821Z2y0w820w820wpDlKoThFrSUws65OsSlvs65OomRPa71xsC5JsOAwuMEw820w820w820w820w820wtC5O87lOqi0Z828_8zIa820w820w820w820w820w86pLsy0EtC5O86JBui1Fry1Mon9xrncF87Ia820w820w820w820w820w820w820w820wtn9F82IZ86JBui0H82sZ9O0H86lKoSZAplliikdLrn1LrClKt2xMon9xrndrqSlVniAwaO0D9ysX2y0w820w820w820w820w821Z2y0w820w820w820w820w821Fpy0Etn9FbDdIqmdBa2QNai0Zfi0y9y8F2y0w820w820w820w820w820w820w820w87lOqi0Z87lOqiVPtm9Pt79FrCsEc2Mwtn9FbCNBrCtQq20J834FeMEw820w820w820w820w820wqmowa7lOqi0Zfi0DfOsF2y0w820w820w820w820w820w820w820w87lOqi0Z87tFrChLtOVIrSdxt6BLryVEsClCbDdMr6BQa2s_9OBrc5QX2y0w820w820w820w820w821OpnhRsCUwtn9FeMEw820w820w87Qa820w820w821CtmVzt6BLry1CqmVAnSdEqmNAa6VLp6kI87dBr6lzt6ZOai1X2y0w820w820w820w820w821Son8woSxFr6hOpmUwfi1KrShBbD5Rpn9VkSlIpmdQrT91r6MEsSlIpmdQrT8FeMEw820w820w820w820w820wqmowa6dEqmNAsClKbCNBrCtQq2AwsClQtn9K86dEqmNAsClKmP1teMEw820w820w87Qa820w820w821CtmVzt6BLry1CqmVAnStOrTlMa6VLp6kF87Ia820w820w820w820w820w87pxsy1Mon9BrDgwfi1KrShBbD1xsClKt4lIpmRBrDgX2y0w820w820w820w820w821Fpy0E8n1xsClKt2AwsClQtn9KeMEw820w820w820w820w820wqmowa71xsClKt2VFp20Zfi0ypD9xrmlP8yAwsClQtn9K86VLp6kX2y0w820w820w820w820w821OpnhRsCUwpCBKp5ZDsCZRs2xMon9BrDgFeMEw820w820w87Qa820w820w821CtmVzt6BLry1LsCBDnTdxtCkEpiMwonhQsyMwtC5Iai1X2y0w820w820w820w820w821Fpy0EpiVxt7hOqm9Rt6lPmO9vrT9FpRYy82IwonhQsBQw8jQwtmVApmpFrClAai1OpnhRsCUX2y0w820w820w820w820w821Fpy0EpiVxt7hOqm9Rt6lPmS5Qt79t83QZ87lKp6lCqmVBp2AwsClQtn9KeMEw820w820w820w820w820wqmowa7pxr20Zfi1RrChBpCBKpmgF87pxr20Z86kKonhQsCBytnhBsRJxt7hOniVSomNRpjIa820w820w820w820w820w86kKsSlQgnhQsCBytnhBa29vrT9FpRYy82IwonhQsyMwtC5IajIa820w820w821Z2y0w820w820wpDlKoThFrSUwrT9FpRZIrS5Aa6kI865Qt78F87Ia820w820w820w820w820w86BC82xBbC5Qt79FoDlQpndr8BZLsCBDnO8HonhQsBQwfjQwtmVApmpFrClAai1OpnhRsCUX2y0w820w820w820w820w821BbC5Qt79FoDlQpndronhQsBQKtC5Itmkwfi1BbC5Qt79FoDlQpndr8BZLsCBDnO8waO1xt7hOniVSomNRpjIa820w820w820w820w820w86kKsClJrTpBgnhQsCBytnhBa29vrT9FpRYyaS5Qt78FeMEw820w820w87Qa820w820w821CtmVzt6BLry1DnThLnThBu7gEpiAwuMEw820w820w820w820w820wtC5O87hBu7gwfi1CqmVAnSdEqmNAa6kI829QqnhIpi8FbCpFsDdQgSxFr6gKrCZAplpxr7lBeMEw820w820w820w820w820wsClQtn9K82xQpnxQagEw820w820w87Qa820w820w821CtmVzt6BLry1DnThLnSpRrCcEpiAwuMEw820w820w820w820w820wtC5O86pRrCcwfi1DnThLnThBu7gEpiAX2y0w820w820w820w820w820LbO1Fpy1Qq6lOpitP865Kui1JomVFs7lIonhFrSUwtSkwtS5Kt21QrO1ArO1QrO1Qq6kwpDlKoThFrSUa820w820w820w820w820w82YL86VxrmkwoClCrT9B86BQ9TcwsSlxsCdEpmgI86hL86BQ86xBsCkwoClCrT9B879Bt7lOrCBKpOUa820w820w820w820w820w879Bt7lOry0EpDlKoOAX2y0w820w820wvgEw820w820w86pRrCdQqmZK87lMp65QplZQpnxQa6kF87Ia820w820w820w820w820w87pxsy1O83QwpCBKp5Zzq6BIp2xBb20ysClzt28FeMEw820w820w820w820w820wtC5O87gwfi1CqmVAnSdEqmNAa6kI829QpnxQ8yAX2y0w820w820w820w820w821Son8wtO0Z871xsDdBhCNLongEsyVxt7hOqm9Rt6lPbDtFp7hEbDpxr7lBai0JcPIa820w820w820w820w820w87pxsy1Qu7gwfi1CqmVAnSdEqmNAa6kI829QqnhIpi8FbDhBu7h3rSVQpmVQbD9Bs6NxoSkEbRNsa5Jua5QGn5MFn2gLb28yajIa820w820w820w820w820w87gKonhQsCBytnhBsOVUbDpxr7lB83Qws65OsSl6r6Zxt2xObC5Qt79FoDlQpncKu2VSomNRpiAwaO0PeMEa820w820w820w820w820w82YL85dJomNIpn8wt6xxry1Qq6BP87dFuCkwtSZK9TgwpCBQ865KunhEqmVD2y0w820w820w820w820w821Fpy0EtO0Y838way0ApCZKt7dFuCkway0ApCZKt7tFp7hEai1X2y0w820w820w820w820w820w820w820w87gKt6lUt4dLrDhBrDgwfi0y8zIa820w820w820w820w820w820w820w820wsClQtn9KeMEw820w820w820w820w820wvgEa820w820w820w820w820w87gKt6lUt4dLrDhBrDgwfi1Qu7gX2y0w820w820w820w820w821Son8wsSMwfi1QbCtBt5dRoBdQsCBKpQNBrCtQq2wMb21Qu7gKr6lKpThEajIa820w820w820w820w820w82YL86dEpmdH86BC86ZKr7AwtSxFt6lPs65zpi1Lsy1Fpy1Tpi1zomUwpCBQ87hEpi1BrDhFsCkwsThOqmVD86BKt6YwtSBAt6wwtMEw820w820w820w820w820wqmowa2Zu82Fs92YKt6lPt2xQu7gF87NY87dI83MwtOAa820w820w820w820w820w820w820w820wsClQtn9KeMEa820w820w820w820w820w82YL87hEqncwqndK9Tgws6lOpClzt2MwoDlQ86tFtClP864wpSZLp21Pt65Ot6BKpO1MrSBKt0Ew820w820w820w820w820wbOYwomVA865SrSBAsO1zomNIqmVD86tBt5dRoBdQsCBKpQNBrCtQq21QrSYwrSpQpmUa820w820w820w820w820w87pxsy1Pt65Ot20Z84Rxt6wKpCNLrT8Ea7sLsSMF82Ewt7xQbCNBrCtQq2AX2y0w820w820w820w820w821CrT8wa7pxsy1U83QwsThxsDgX87wwfy0MeO1U83Qwu2QOai1X2y0w820w820w820w820w820w820w820w86BC82xQbCtBt5dRoBdQsCBKpQNBrCtQq2wMb21U82IwcyAwf3QwtOAwuMEw820w820w820w820w820w820w820w820w820w820w87gKt6lUt4dLrDhBrDgwfi1Qu7gKsTlysThOqmVDa30I87wF82Iw8yUK8zIa820w820w820w820w820w820w820w820w820w820w821OpnhRsCUX2y0w820w820w820w820w820w820w820w87Qa820w820w820w820w820w87Qa820w820w820w820w820w87gKt6lUt4dLrDhBrDgwfi0y8zIa820w820w821Z2wEw820w820w82YL87FLrSQa820w820w821CtmVzt6BLry1WrSZJnT9BsSlQa6kF87Ia820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncw8jQwtmVApmpFrClAai1X2y0w820w820w820w820w820w820w820w86ZOqmtvr6Zxp2xBb20yu28FeMEw820w820w820w820w820w820w820w821LsCBDnSNLomgEpiMw8DtFp7hE8yAX2y0w820w820w820w820w821Z2y0w820w820w820w820w821Fpy0EpiVzq6BIp4VLp6lP83QZ87lKp6lCqmVBp2AwsClQtn9KeMEw820w820w820w820w820wpCZO82xSon8wqi0Z830I86cwfi1BbCdEqmNAjCZApncX86Awf21zbCNBrCtQq3IwqiIHai1X2y0w820w820w820w820w820w820w820w87FLrSRvsClPpngEoRJFniAX2y0w820w820w820w820w821Z2y0w820w820wvgEw820w820w86pRrCdQqmZK87FLrSRvoSxFr6gEpiMwu2MwsC5QqmYF87Ia820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncw8jQwtmVApmpFrClAai1X2y0w820w820w820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncKu20xfi1RrChBpCBKpmgF87Ia820w820w820w820w820w820w820w820w820w820w821LsCBDnTdxtCkEpiMw8DwyajIa820w820w820w820w820w820w820w820w820w820w821BbC5Qt79FoDlQpncKu2VSomNRpi0Z82xMon9PpkpIrS5Qa6kKonhQsCBytnhBsOVUbDpxr7lBai0J87wwbi0Au71xp2Away1OonhFrO0H82hUs65AeMEw820w820w820w820w820w820w820w820w820w820w86BC82xBbDhxpQVxrmkwfjQw8DhBu7gyagEw820w820w820w820w820w820w820w820w820w820w820w820w820wpiVxt7hOqm9Rt6lPbDwKtC5Itmkwfi1CqmVAnSdEqmNAa6kKs65OpmVQjCZApiMw8D9BoThru5QyaiVxt7hOqm9Rt6lPbDwKtC5ItmkwaO0PeMEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncKtSBAt6ww8jQwtmVApmpFrClAai1X2y0w820w820w820w820w820w820w820w820w820w820wrT9FpRZPonpBa6kI829TqmhQq28FeMEw820w820w820w820w820w820w820w820w820w820w86kKonhQsCBytnhBsOVTqmhQq2VSomNRpi0Z871xsDdBhCNLongEpiVxt7hOqm9Rt6lPbDtFp7hEbDpxr7lBai0G879xt6BLeMEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w821Z2wEw820w820w820w820w820wqmowa6kKoSxFr6herShBsO0Zfi1RrChBpCBKpmgF879Bt7lOrzIa820w820w820w820w820w86pLsy0EtC5O86Awfi0Mb21z83QwpiVzq6BIp4VLp6lPeO1F83MwoOVIpmVDt6wX86AHaOAwuMEw820w820w820w820w820w820w820w821WrSZJnSdEqmNAa6drqlQI87wwbi0Au71xp2MwsC5QqmYFeMEw820w820w820w820w820wvgEw820w820w87Qa820w820w821CtmVzt6BLry1WrSZJnT1xsClKt2xBai1X2y0w820w820w820w820w821Fpy0EpiVxt7hOqm9Rt6lPai1X2y0w820w820w820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncKu20xfi1RrChBpCBKpmgF87Ia820w820w820w820w820w820w820w820w820w820w821LsCBDnTdxtCkEpiMw8DwyajIa820w820w820w820w820w820w820w820w820w820w821BbC5Qt79FoDlQpncKu2VSomNRpi0Z82hUs65AeMEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w820w820w820w86BC82xBbC5Qt79FoDlQpncKtSBAt6ww8jQwtmVApmpFrClAai1X2y0w820w820w820w820w820w820w820w820w820w820wrT9FpRZPonpBa6kI829TqmhQq28FeMEw820w820w820w820w820w820w820w820w820w820w86kKonhQsCBytnhBsOVTqmhQq2VSomNRpi0Z871xsDdBimVQa7dSpOVTqmhQq2VyondBlC5IbDpxr7lBai0J82wAu71xp20G838FeMEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w821Z2y0w820w820w820w820w821Fpy0EpiVzq6BIp4VLp6lP83QZ87lKp6lCqmVBp2AwsClQtn9KeMEw820w820w820w820w820wpCZO82xSon8wqi0Z830I86cwfi1BbCdEqmNAjCZApncX86Awf21zbCNBrCtQq3IwqiIHai1X2y0w820w820w820w820w820w820w820w87FLrSRvs65OpmVQa6drqlQFeMEw820w820w820w820w820wvgEw820w820w87Qa820w820w821CtmVzt6BLry1WrSZJa6VLp6kF87Ia820w820w820w820w820w87pxsy1xt7hO83QwpCBKp5Zzq6BIp2xKrShBb20ysClzt28FbC5Qt79FoDlQpncX2y0w820w820w820w820w821Son8wtSBAt6wwfi1Mon9PpkpIrS5Qa65Qt78KtSBAt6wKtC5ItmkFeMEw820w820w820w820w820wtC5O87xJqmUwfi1Mon9PpkpIrS5Qa65Qt78Ku2VSomNRpiAX2y0w820w820w820w820w821Son8wu6Rxu20Z871xsDdBhCNLongEu6RFry0H87tFp7hEajIa820w820w820w820w820w87pxsy1VrmBK83Qws65OsSl6r6Zxt2xxt7hObDAKtC5ItmkFeMEw820w820w820w820w820wtC5O879xt6BL83Qwa7dSpOVTqmhQq2VyondBlC5IbDpxr7lB82Qwcy0G82hUs65Aai0L87tFp7hEeMEa820w820w820w820w820w82YL85xom3EwlSZOqS5OrTlKp21CrT8wiC5SoldzsCBMt21Cr6Zxt21FsTdRpncwa6pFu21JpiAa820w820w820w820w820w87pxsy1CtmhDpi0Z830Kc30McjIa2y0w820w820w820w820w821RrDFLrSRyt6UKoSNxsTdcqndQbD9BrmZSpiwyq6BApi8FeMEa820w820w820w820w820w87pxsy1Br20Z86hLoTlJpmVQbCtBt4lIpmRBrDh2ukBAa29CsC5JpncyaiVzq6BIp79BrzIa820w820w820w820w820w86pLsy0EtC5O86Awfi0MeO1F83MwpmMKr6lKpThEeO1FaOIF87Ia820w820w820w820w820w820w820w820wtC5O86kwfi1Br5JFnjIa820w820w820w820w820w820w820w820wtC5O864wfi1CqmVAnSdEqmNAa6kI829OpmdQ8yAKonhQsCBytnhBsPIa820w820w820w820w820w820w820w820wtC5O86lU83Qws65OsSl6r6Zxt2xxbDwKtC5ItmkFeMEw820w820w820w820w820w820w820w821Son8wpnswfi1Mon9PpkpIrS5Qa64KtSBAt6wKtC5ItmkFeMEw820w820w820w820w820w820w820w821Son8wtn1Pt65zqPIa820w820w820w820w820w820w820w820wbOYwincwqngwomUwomVzpndQrT8a820w820w820w820w820w820w820w820wqmowa2hFrDpBsDhBp20Zfi0Mai1X2y0w820w820w820w820w820w820w820w820w820w820wtn1Pt65zqO0Z871xsDdBhCNLongEoiVVbDpxr7lBai0@87BJqmUX2y0w820w820w820w820w820w820w820w87QwpmNPpi1X2y0w820w820w820w820w820w820w820w820w820w820wtn1Pt65zqO0Z871xsDdBhCNLongEoiVVbDpxr7lBai0Y87BJqmUX2y0w820w820w820w820w820w820w820w87Qa820w820w820w820w820w820w820w820wqmowa7lMsThxoSIF87Ia820w820w820w820w820w820w820w820w820w820w820LbO14qn9BoTgwomVzpndQrT8a820w820w820w820w820w820w820w820w820w820w821Fpy0Epnwwf3Qwu6RFry0C9y0EpnwHpnsHpDlApSkF83UZ87xJonwF87Ia820w820w820w820w820w820w820w820w820w820w820w820w820w86kKoSNxsTdcqndQbC5Ap2wys65OpmVQ8yAX2y0w820w820w820w820w820w820w820w820w820w820w820w820w821WrSZJnT1xsClKt2xBajIa820w820w820w820w820w820w820w820w820w820w820w820w820w87lMp65QplZQpnxQa6kFeMEw820w820w820w820w820w820w820w820w820w820w87Qa820w820w820w820w820w820w820w820w820w820w820LbO1KrTgwqmUwoTlOsClKt21MonhE2y0w820w820w820w820w820w820w820w820w820w820wpmNPpgEw820w820w820w820w820w820w820w820w820w820w820w820w820wpiVzr65PsQNFsTgKomhAa29EqmhB8yAX2y0w820w820w820w820w820w820w820w87Qa820w820w820w820w820w820w820w820wbOYwgSxFr6hOpmUwrm5VoCka820w820w820w820w820w820w820w820wpmNPpi1X2y0w820w820w820w820w820w820w820w820w820w820wbOYwrCYwoSZJrmZK871xt6wa820w820w820w820w820w820w820w820w820w820w821Fpy0Epnwwf21UrmBK87NY86lU82IwpDlApSkwfzQwu6Rxu2AwuMEw820w820w820w820w820w820w820w820w820w820w820w820w820wpiVzr65PsQNFsTgKomhAa29EqmhB8yAX2y0w820w820w820w820w820w820w820w820w820w820wvgEw820w820w820w820w820w820w820w820w820w820w86lIsSkwuMEw820w820w820w820w820w820w820w820w820w820w820w820w820wuCZLrlZzq6BIp2xBb21UrmBKb21OonhFrOAX2y0w820w820w820w820w820w820w820w820w820w820w820w820w821Rs6hxt6lvt6lUt2xBajIa820w820w820w820w820w820w820w820w820w820w821Z2y0w820w820w820w820w820w820w820w87Qa820w820w820w820w820w87Qa820w820w820w820w820w87dBon9zq2wFeMEw820w820w87Qa820w820w821CtmVzt6BLry1RrDFLrSQEp6ZKt5ZRs6hxt6lvt6lUt2AwuMEw820w820w820w820w820wtmVWrSZJoDhKbCdIondPj6BPt2Vxp6gE8CxFp6kyajIa820w820w820w820w820w87pxsy1Br20Z86hLoTlJpmVQbCtBt4lIpmRBrDh2ukBAa29CsC5JpncyaiVzq6BIp79BrzIa820w820w820w820w820w86pLsyxSon8wqi0Z830X86Awf21Br2VIpmVDt6wX86AHaOAwuMEw820w820w820w820w820w820w820w821Br5JFniVzr65PsQNFsTgKsClJrTpBa29Mon9BrDgyajIa820w820w820w820w820w820w820w820wpmNrqlQKoSNxsTdcqndQbD9BrmZSpiwyq6BApi8FeMEw820w820w820w820w820w820w820w821WrSZJnT9BsSlQa6lImSBtajIa820w820w820w820w820w820w820w820wqmoE8mhLrDhvtn1AonhBnThBu7gF87lMp65QplZQpnxQa6lImSBtajIa820w820w820w820w820w87Qa820w820w820w820w820w87dBon9zq2wFeMEw820w820w87Qa820w820w821CtmVzt6BLry1zr6lxsDFLrSQEai1X2y0w820w820w820w820w821RrDFLrSQEajIa2y0w820w820w820w820w820LbO1OpmRLtCkwuCZLri1Pt65QpgEw820w820w820w820w820wtC5O871xsC5JsO0Z86tBt5ZMon9xrncEajIa820w820w820w820w820w86BC82xMon9xrncKu2Awp6lIpnhB871xsC5JsOVUeMEw820w820w820w820w820wqmowa71xsC5JsOVVai1ApmNBt6kws65OomRPbDAX2y0w820w820w820w820w821EqndQrT9VbD9Bs6NxoSljt65QpixKtmNIb21KtmNIb21Mon9PplZMon9xrncEs65OomRPaiAX2y0w820w820wvgEa820w820w820LbO1Ppm5OoSwa820w820w821CtmVzt6BLry1QrStDr6lvqmtKrT9BoS5PpiwF87Ia820w820w820w820w820w86BDrCZOpmdxsSkwfi0xqmtKrT9BoS5PpjIa820w820w820w820w820w86BC82xFpSVLsClzondBai1X2y0w820w820w820w820w820w820w820w86BDrCZOpmdxsSl2t6UKoSNxsTdcqndQbC5Ap2wysSxLtO8FeMEw820w820w820w820w820wvi1Br7dB87Ia820w820w820w820w820w820w820w820wqmtKrT9BoS5Ppk9QryVzr65PsQNFsTgKsClJrTpBa29Pq6ZT8yAX2y0w820w820w820w820w821Z2y0w820w820w820w820w821OpndBt5ZPpm5OoSwEajIa820w820w820w820w820w87dBon9zq2wFeMEw820w820w87Qa820w820w821CtmVzt6BLry1OpndBt5ZPpm5OoSwEai1X2y0w820w820w820w820w821Son8wpmMwfi1ArSdRrmlKt2VNtmlOuldBr6lzt6ZOgmNIa28zpD9xrmlP879BoTgyajIa820w820w820w820w820w86pLsy0EtC5O86Awfi0MeO1F83MwpmMKr6lKpThEeO1FaOIF87Ia820w820w820w820w820w820w820w820wrT9FpRZIrS5Aa6lImSBtb20ypCBIr28F2y0w820w820w820w820w821Z2y0w820w820w820w820w821Son8ws65OomRP83QwpSlQnT1xsC5JsOwFeMEw820w820w820w820w820wp6lIpnhB871xsC5JsOVPeMEw820w820w820w820w820wq6BPt6ZOuiVOpn1IomdBkThxt6kErDlIr2MwrDlIr2Mws65OsSlvs65OomRPa71xsC5JsOAFeMEw820w820w87Qa820w820w821CtmVzt6BLry1Ppm5OoSxvs79Lrn1Qa2AwuMEw820w820w820w820w820wqmowa25Ppm5OoSxFrCsF87Ia820w820w820w820w820w820w820w820wtC5O87hBsCQwfi1MsCZJs7gE8AlKt6lO864wsSlxsCdE87hBsCQwa79BpSlUs20y82Ia820w820w820w820w820w820w820w820w820w829xr6NLtSlAb21BpPEwnClUt3hvai8a820w820w820w820w820w820w820w820w820w82Iwa6BDrCZOpmdxsSkwfO0yb21FpSVLsCBKpO1zondB8y0W828yagEw820w820w820w820w820w820w820w820w820waO0yn5NKk79BsTcwgThOr2RF87hL87hLpStIpi1zondB87dBrDdFt6BSqnhV8yMw8y8FeMEw820w820w820w820w820w820w820w821Fpy0Et6lOri0xfi1KtmNIai1Ppm5OoSwEt6lOriAX2y0w820w820w820w820w821Z86lIsSkwuMEw820w820w820w820w820w820w820w821OpndBt5ZPpm5OoSwEajIa820w820w820w820w820w820w820w820wsSlxsCdEqmVD83Qwc3Ia820w820w820w820w820w820w820w820woTlOsClKt5dBon9zq5hBsCQwfi1KtmNIeMEw820w820w820w820w820w820w820w821Ppm5OoSxyt6UKoSNxsTdcqndQbD9BrmZSpiwysSxLtO8FeMEw820w820w820w820w820w820w820w821Ppm5OoSxyt6UKpCBOsTh3q6BIp2VKrShBlC5Itmkwfi0ykSlxsCdE8wEw820w820w820w820w820w820w820w821Jonhzq6lAt7xQbCdIondPj6BPt2Vxp6gE8CxFp6kyajIa820w820w820w820w820w820w820w820wrm5QoSxBp7hUt2VCqn9Pt4dEqmNAbCVLp6lmomNRpi0Z828y2y0w820w820w820w820w821Z2y0w820w820wvgEw820w820w86pRrCdQqmZK87dBon9zq2xQpn9Jai1X2y0w820w820w820w820w821Fpy0Et6lOriAwoTlOsClKt5dBon9zq5hBsCQwfi1Qpn9JeMEw820w820w820w820w820wqmowa6dRsD9BrDhjpm5OoSxkpn9J83QZfi1KtmNIai1OpnhRsCUX2wEw820w820w820w820w820wtC5O879B83QwrClT859BpQlUs2xztn9OpmVQkSlxsCdEl6lOriMwqmtKrT9BoS5Ppi0_82tF9O0W82sDajIa820w820w820w820w820w87pxsy1Br20Z86hLoTlJpmVQbCtBt4lIpmRBrDh2ukBAa29CsC5JpncyaiVzq6BIp79BrzIa820w820w820w820w820w87pxsy1Jonhzq6lP83QwrClT84ZyqClzt2wFeMEw820w820w820w820w820wtC5O86Rxu7tFp7hE83Qwc3Ia820w820w820w820w820w86pLsy0EtC5O86Awfi0MeO1F83MwpmMKr6lKpThEeO1FaOIF87Ia820w820w820w820w820w820w820w820wtC5O86kwfi1Br5JFnjIa820w820w820w820w820w820w820w820wtC5O86pRrCcwfi1DnThLnSpRrCcEpiAX2y0w820w820w820w820w820w820w820w87pxsy1OpmdQ83QwpCBKp5Zzq6BIp2xBb20ysClzt28FeMEw820w820w820w820w820w820w820w821Fpy0EpDlKoO0Zfi1KtmNI87NY879BoTgwfjQwrDlIr2Aa820w820w820w820w820w820w820w820w820w820w821zrSVQqmVRpjIa2y0w820w820w820w820w820w820w820w82YL85dxtCkwrm5U87tFp7hEby1frCNV87tLsCJP865P87tB86xxtCkwoi1OrSZQ86pOomRB2y0w820w820w820w820w820w820w820w87pxsy1T83Qws65OsSl6r6Zxt2xOpmdQbC5Qt79FoDlQpncKtSBAt6wKtC5ItmkFeMEw820w820w820w820w820w820w820w821Fpy0EtO0@86Rxu7tFp7hEagEw820w820w820w820w820w820w820w820w820w820w86Rxu7tFp7hE83QwtPIa2y0w820w820w820w820w820w820w820w86BC82xCtmVzbCRxt6dEa79BaiAwuMEw820w820w820w820w820w820w820w820w820w820w82YL86xFpSxIqmtEt0Ew820w820w820w820w820w820w820w820w820w820w87pxsy1U83Qws65OsSl6r6Zxt2xOpmdQbC5Qt79FoDlQpncKu2VSomNRpiAX2y0w820w820w820w820w820w820w820w820w820w820wrT9FpRZPonpBa79BoTgI829CqmNI8yAX2y0w820w820w820w820w820w820w820w820w820w820wsClzt2Vxt7hOqm9Rt6lPbCpFr6MKtC5Itmkwfi0y97dBon9zq6dLr6ZO8zIa2y0w820w820w820w820w820w820w820w820w820w820wbOYwsClJpmRypn8wrm5QoSxBsMEw820w820w820w820w820w820w820w820w820w820w86BC82xJonhzq6lPmTxt83QZ87lKp6lCqmVBp2AwuMEw820w820w820w820w820w820w820w820w820w820w820w820w820wrm5QoSxBsRJUni0Z87sX2y0w820w820w820w820w820w820w820w820w820w820wvi1Br7dB87Ia820w820w820w820w820w820w820w820w820w820w820w820w820w86BC82xT83Uwrm5QoSxBsRJUniAwuMEw820w820w820w820w820w820w820w820w820w820w820w820w820w820w820w820LbO1LtClOtT9Ft6kwtSBQq21Mon9BrDga820w820w820w820w820w820w820w820w820w820w820w820w820w820w820w820wrm5QoSxBsRJUni0Z87sX2y0w820w820w820w820w820w820w820w820w820w820w820w820w821Z2y0w820w820w820w820w820w820w820w820w820w820wvgEw820w820w820w820w820w820w820w820w820w820w87dBon9zq6BKpO0Z834X2y0w820w820w820w820w820w820w820w87Qa820w820w820w820w820w87Qa820w820w820w820w820w86BC82wxsSlxsCdEqmVDagEw820w820w820w820w820w820w820w821OpnhRsCUX2y0w820w820w820w820w821Son8ws65OomRP83QwpSlQnT1xsC5JsOwFeMEw820w820w820w820w820ws65OomRPbDcwfi1ztn9OpmVQkSlxsCdEl6lOrjIa820w820w820w820w820w86xFsThLsDAKsClMr65zpldQonhBa6VRr6MI86VRr6MI871xsDdBnT1xsC5JsOxMon9xrncFajIa2y0w820w820w820w820w821Ppm5OoSxyt6UKoSNxsTdcqndQbC5Ap2wysSxLtO8FeMEw820w820w820w820w820wsSlxsCdEoDhKbCpFsDdQgSxFr6gKrCZAplpxr7lB83Qw8B9BsSlQ85dBon9zq28X2wEw820w820w820w820w820wbOYwoS5IoTlIonhB871BsCdBrDgwrm5QoSxBp2Mwpnxzr7lAqmVD87pBsDhFoS5I86ZSpn9Ion0a820w820w820w820w820w87pxsy1zrTlKt20Z830X2y0w820w820w820w820w821Son8wr65Pt7wwfi0JcjIa820w820w820w820w820w87pxsy1IondQtO0Z830X2y0w820w820w820w820w821Son8wqSlVsO0Z845OsC5Va2AX2y0w820w820w820w820w821CrT8wa6IwqmUwrm5QoSxBsOAwuMEw820w820w820w820w820w820w820w821Fpy0Erm5QoSxBsOVEondftSVgsCZMpn9QuixHaiAa820w820w820w820w820w820w820w820w820w820w821HpnBPbD1RsSwEqOAX2y0w820w820w820w820w821Z2y0w820w820w820w820w820LbO1PrT9Q87hEpi1Jonhzq6lA86pOomRBsO1yui1Qq6lFsy1U86NLoS5QqmZK2y0w820w820w820w820w820LbO1xsSdBrChFrCsI87hEpmUwtSBAt6wwp6lPoSlKp6BKpMEw820w820w820w820w820wqSlVsOVPrT9Qa6pRrCdQqmZKa64I868FuMEw820w820w820w820w820w820w820w821OpnhRsCUwoi0J868X2y0w820w820w820w820w821ZajIa820w820w820w820w820w82YL85dQpn0wt6xOrTlDq21CsC5JpncwsS5SqmVD86ZKr7Awt6xB869FpStBsTgwoCZQt6ZJbnlM86pOomRBsMEw820w820w820w820w820wbOYwt6xxrCJP87hL87hEpi1PrT9Q86ZOp6lOby1kq6BP879Br6BBsO1Lry1Qq6kwt79Bpi1MsCZMpn9QugEw820w820w820w820w820wbOYwtSxBsCkwoSxFr6hOpmUwon9B865ItS5VsO1Prm5Ir6lO87hEomUwt6xBqn8ws65OpmVQsOUa820w820w820w820w820w87pxsy1CtmhDpi0Z830Kc30McjIw820w82YL84FxtC5joT9Fs7gwpCNLonhFrCsws6ZFrDga820w820w820w820w820w86pLsy0EtC5O86IwqmUwqSlVsOAwuMEw820w820w820w820w820w820w820w821Son8wu20Z871xsDdBhCNLongEqSlVsRJHniAX2y0w820w820w820w820w820w820w820w87pxsy1T83Qwrm5QoSxBsRJHpnBPmSJtnjIa820w820w820w820w820w820w820w820wqmowa7wwfzQwr65Pt7wwaO1IondQtO0J86pRp6tBai1X2y0w820w820w820w820w820w820w820w820w820w820woSZRrDgwaPQwtPIa820w820w820w820w820w820w820w820w820w820w821IondQu20Z87wX2y0w820w820w820w820w820w820w820w820w820w820wr65Pt7swfi1TeMEw820w820w820w820w820w820w820w821Z2y0w820w820w820w820w821Z2y0w820w820w820w820w820LbO1AqndMr65V86Rxt6dEpmgws6lOoSlKt0Ew820w820w820w820w820wrm5QoSxBp7hUt2Vzr65PsQNFsTgKsClJrTpBa29EqmhB8yAX2y0w820w820w820w820w821Son8ws6dQ83Qwcj0M82EwoSZRrDgwbO1JonxTqmhQq3Ia820w820w820w820w820w86BC82xMoTgw8jQwcj0Mai1MoTgwfi1MoTgKt6Z6qnxBp2wNagEw820w820w820w820w820wrm5QoSxBp7hUt2VCqn9Pt4dEqmNAbCVLp6lmomNRpi0Z829donhzq6lAey0y82Iws6dQ82Iw8ykyeMEw820w820w87QanlQ@2zMLsSdOqn1QfwF9jAca96BJbjVFrCdItmhBa2hFrCcFeMEAqmQJfCpFr6NBp59BoThxrCtIpiwMb20Mb20AqmRxpSlTqmhQq2Mw96BJomtBq6lFpSxQb20Dtn9Ia2dyomdHpT9LtmVAaisFeMEAqmQJfDdQsCBKpRhkhywyt6BQr6kyb21FrDgE96BJomtBtSBAt6wwbO0OaiMw96pLrDhPqnFB82EwcyMw97hFt6NBt6lUt2AX2yhFriQ@sThOqmVDl5h6a29Ptm9QqnhIpi8I86BKt2wAqmRxpSlTqmhQq20L838Fb20ApCZKt7dFuCkway0Qb20AsTlyt6BQr6lQpnxQai1Fpy0AsTlyt6BQr6lQpnxQ86VB828yeMEAqmQJfDdQsCBKpRhkhywyp6lQomBIsO8I82hUs65Ab20AqmRxpSlEpmBDq7gwbi0E97BMomgO82YwcyAI828w8yAX2yhFriQ@sThOqmVDl5h6a29RrDFLrSQyb20Au71xp2Mw96pLrDhPqnFB82EwcyMw8B9BsSlQ85FLrSQyb20DoSNxsTcZ8CxFp6ky9OAX2yhFriQ@sThOqmVDl5h6a29Ppm5OoSwyb20AqmRxpSlTqmhQq20J82hUs65A82Qwcj0Mb20ApCZKt7dFuCkway0Ob20ykSlxsCdE8yAX2yhFriQ@sThOqmVDl5h6a29FpSVLsClzondB8yMw96BJomtBtSBAt6wwbi0Au71xp20J834Sb20ApCZKt7dFuCkway0Ob20yqmcyajIa96BJbjVPt79FrCtkl4oE8CRxt6dEpmgyb20AqmRxpSlTqmhQq20J82hUs65A82Qwcj0Mb20AqmRxpSlEpmBDq7gwbi0E97BMomgO82YwcyAI828w8yAX2wFFpy0E971xr6lQt6kF87Ia820w820w821Opm5AnT1xr6lQt6kEajIavgEa8O1AsC5T86pOomRBsMEAqmQJfCtOrTlMnTdQon9Qa7JFp20Zfy0ypD9xrmlP8DQFeMFTq6BIpi0ErnAwa2hFp2Mw96VLp6kF83Qwpm5zq20BjCZApiAwuMEw820w820w86RV82wApDlKoOMw96hBs7hEb20ApnhFrmkF83QwsT1Iqngw8zIyb20AqmgX2y0w820w820wrnAw97dQqmRB83Qw96VLp6kJfDJPt6BJpnQX2wBJui0AoThFrmkwfi0ArCZApiQ@uSdQqmRBvjIa820w820w821Jui0Ap6lIt64wfi0ArCZApiQ@uShBr7hxvjIa820w820w821Jui0AqmVAtS5Ir20Z82hKrShBbjVXqmVAtS5Ir7QX2y0w820w820wrnAw96BKp6dMti0Z82hKrShBbjVXqmVAoT1RvjIa2y0w820w820w96lQqmRB83Qw97hFrmlJonwwqmow96pRrCcwpn4w8y8womVA82hApn1Qq20Zfi0MeMEa820w820w821Jui0Au34wfi0Au71xp20H82hPt6BJpi0G82hTqmhQq71BsDhFrmkX2y0w820w820wrnAw97wO83Qw97xMomgwaO0ApnhFrmkway0AtSBAt6xMpn9QqmRBeMEw820w820w86RV82wAuj4I82hVcyAX2y0w820w820wtmVIpndP82wAqmVSpn9QpmgF87Ia820w820w820w820w820w82hVci0Z82hFrm5DpmxBqmtEt20J82hVs65Acy0J82wAp6lMt6wwaO0Nai0G82hCsC5JpmxBqmtEt20H82hCsC5Jpn1xp3Ia820w820w820w820w820w82hVcy0Z82hFrm5DpmxBqmtEt20J82hVs65Acy0J82hApn1Qq20G82hCsC5JpmxBqmtEt3Ia820w820w821Z86lIsSkwuMEw820w820w820w820w820w97AN83Qw97BMomgN82Iw96hBs7hE82Ew96pOomRBq6lFpSxQeMEw820w820w820w820w820w97AO83Qw97BMomgN82Iwa2hApn1Qq20H834F82Ew96pOomRBq6lFpSxQ82Qw96pOomRBs65AeMEw820w820w87Qa2y0w820w820w8O11p6gwoSZJrm5P871Bsy1Mpn9IpC5NdjEa820w820w820z86xQt71PeyYLs6lOr6hLoOVMpn9IbCZOpOZMpn9IpC5Ndid8rTsJoS5KbkAJrTlQs7lQbmRVbmVRrm9BsDcJtSBQq2RzrSRJoncJomhApmg_2y0w820w820wrnAw97dxrn1Ipncwfi1Ps79FrDhC828Bbz1C8yMwa2hBt6BJpi0J82hPt6BJpiAway0ApC5zt6ZOeMEw820w820w82xJui0AsS5Js6NBsRZQu7gwfi0AsS5Js6NBsOAa820w820w820w820w820w83R@87cLa5VrbiJtfRNAaPYEfPQEfPUEfPFsp7IPviAHaiw_8lNAaiBYn4tsp7IPviw_flNAaiAL934IbSsX2wEw820w820w86RV82hFrCpLeMEw820w820w86RV82hPomRMr6lPcy0Z87lKp6lCeMEw820w820w86RV82hFtS5Ir20Z87lKp6lCeMEw820w820w86RV82hFoT1R83QwtmVApmoX2wEw820w820w86BC82wApDlKoO1Bsi0y8y1xrCgw96hBs7hE83QZ830F87Ia820w820w820w820w820w82hFrCpL83Qw8C5Ir20E97dxrn1Ipndvt7xQ82hzrTlKt6VxrmkI834Mc2kF8zIa820w820w821Z86lIsSkwuMEw820w820w820w820w820wrnAw971zt20Z87dMsCBKt6ow8ykKcCoyb20Ea34Mc20G82hPomRMr6lPai0L82wAt6BJpmRxu20G82hComdQrT8FajIa820w820w820w820w820w86RV82hBsSdxs6lAnSpRrCcwfi0ApDlKoPIa820w820w820w820w820w82cwoSNBomUwtn0wkRp7869Opm5HqmVD86dEon9xoThBsDcW2y0w820w820w820w820w820Apndzon1Bp5ZCtmVz83R@87cL9yYComRMeOZDeMEw820w820w820w820w820w96lPoS5MpmhvpDlKoO0Zvy1PbPML9CNQeOZDeMEw820w820w820w820w820w96lPoS5MpmhvpDlKoO0Zvy1PbPUL9CtQeOZDeMEw820w820w820w820w820w96lPoS5MpmhvpDlKoO0Zvy1PbO8L9D5RrTgXbSsX2y0w820w820w820w820w820Apndzon1Bp5ZCtmVz83R@87cLnRNrmSJTqmFtn5QAbOYX820w820w8O1Pt79Fs21xrDAwomVKrThxt6BLrwEa820w820w820w820w820w86BC82xApmpFrClA82hFrChTomNIai1X2y0w820w820w820w820w820w820w820w82hFtS5Ir20Z87dMsCBKt6ow8ykKc6oyb20AqmVAtS5Ir3Ia820w820w820w820w820w87Qa820w820w820w820w820w86BC82xApmpFrClA82hFrChzs7kF87Ia820w820w820w820w820w820w820w820w96Bzs7kwfi1Ps79FrDhC828Bbz1C8yMw96BKp6dMtjIa820w820w820w820w820w87Qa2i0w820w820wqmowa2hzrSNLsDcwfnUwbRVQqmRBs2YF87Ia820w820w820w820w820w820w820w820w97dxrn1IpncO83QwsT1OqmVQpy0y9iUMpy8I82hzt6BJpi0G82hComdQrT8X2y0w820w820w820w820w820w820w820w82hFrCpL83Qw8yhBsSdxs6lAnSpRrCcwa2hPomRMr6lPnThUt20AoSZRrDhKomRBb20As6dQ9iAyeME92nQwpmNPpi1X2wA92nlKr6lPsO0Ep6lCqmVBp20Ap6lIt64F87Ia2gA92ihFrCpL83Qw8yhBsSdxs6lAnSpRrCcwa2hPomRMr6lPnThUt20AoSZRrDhKomRBb20As6dQ9iAyeME92gBZ86lIsSkwuME92gA9rnAw96gwfi0ArClDonhB83YwbihApmNQoi0W82hApmNQojIa2gA92mRV82hApmNQon1zt20Z87dMsCBKt6ow8ykKcCoyb20Ea34Mc20G82hAai0L82wAt6BJpmRxu20G82hComdQrT8FajIa2gA92ihApmNQon1zt20Z82hA83Uwc20_828H96hBr7hxs6dQ8y0W82hApmNQon1zt3Ia2gA92ihFrCpL83Qw8yhBsSdxs6lAnSpRrCcwa2hPomRMr6lPnThUt20AoSZRrDhKomRBb20As6dQ9jIw96hBr7hxs6dQ9iAyeME92gBZ2wA9vgE9vgEa820w820w821Jui0ArC5Jpm5Qt78wfi1X82lX82hKomRBonhQsDIApDlKoTRYv7JZ87QwvjIw8O1Pq65Ir6ZT86dIrSVB2y0w820w820w96Vxrmlxt7hObjVXt6BQr6lZ820w820w87NYfi0AqmVCrPIa820w820w820AqmQJfCtOrTlMnTdQon9Qa2hKomRBonhQsyAX2wEw820w820w86RV82hzrSNLszIa820w820w821Fpy0E96dLr6ZOsO0Zvy0LnDhFrmkLai1X2y0w820w820w820w820w820AoSZIrT8wfi1zrSNLsBZQqmRBs2wAoSZIrT9Pb20ApDlKoOMw97dxrn1IpncI82hFtS5Ir2Mw97dxrn1IpncOb20AqmdMtiAX2y0w820w820wvi1Br7dFpy0E96pRrCcwpn4w8yQJ8yAwuMEw820w820w820w820w820w96dLr6ZO83Qw97pApT9BujIa820w820w821Z86lIsSBC82wApDlKoO1Bsi0ybi8F87Ia820w820w820w820w820w82hzrSNLsy0Z82hApT9BujIa820w820w821Z86lIsSBC82xApmpFrClA82hApmNQoiAwuMEw820w820w820w820w820w96dLr6ZO83QwoSZIrT9vsSdxr6kE96hBr7hxb20Arm5Up6lIt64FeMEw820w820w87QwpmNPqmowa2hMomNBt7hBai1X2y0w820w820w820w820w820AoSZIrT8wfi1zrSNLsBZJon0E96dLr6ZOsOMw96pRrCcFeMEw820w820w87QwpmNPpi1X2y0w820w820w820w820w820AoSZIrT8wfi1zrSNLsywAoSZIrT9Pb20Aq65Pq2Mw96pRrCcI82hFtS5Ir2AX2y0w820w820wvgEw820w820w82hFriQ@pCBIr6lAkClzt65KpSNBa2hUciMw97ANb20Au38I82hVcyMw96dLr6ZOb20DsDwZ8z8y879Vfi8O8ysFeMEa820w820w821Jui0AoSxxsDcwfi1FrDgE82wAu38wbi0Au34F82Ywa2hCrSVQsSBWpi0G82hCrSVQtSBAt6wFajIa820w820w821Jui0At6lUt20Z828yeMEw820w820w86BC82wAoSxxsDcwfzQwcOAwuO0z879LrSQwpCZO86ZKpi1zq65O871Itncwt7tL86hLt7ca820w820w820w820w820w82hCtmVz83R@87cLnRNrmSJTqmFtn5QAbOYX820w820w8O1Pt79Fs21xrDAwomVKrThxt6BLrwEw820w820w820w820w820w97hBu7gwfi1Ptm9Pt78w96pRrCcI830I82hzq65OsPIa820w820w820w820w820w87dRoDdQsywAt6lUt2Mwbj8I838F83Qw8yUK8y1Fpy0AoSxxsDcwf21IpmVDt6ww96pRrCcX2y0w820w820w820w820w820At6lUt20Zvy1PbOoL9C5Js3ILpPIa820w820w820w820w820w82hQpnxQ83R@87cLf2YCr7gXbSsX2y0w820w820w820w820w820At6lUt20Zvy1PbPUL9CtQeOZDeMEw820w820w87Qa820w820w820AqmQJfDdQsCBKpRhkhyxRrChBpyMw97wN82IwcOMwcO0H82wAuj4waO0Auj8F82YwcyMw97hBu7gFeMEa820w820w820AqmQJfCtOrTlMnSlKp2wArC5Jpm5Qt78FeMFZ2yhFriQ@pT9Ltn1vpmVAa2AX2wFMsCBKt20AqmQJfDdSpPIa2CBC82wAs65IpnhQpiAwuMEw820w820w87tOqnhBnT1xr6lQt6kEajIavgEa8O1SqmQW87hPfjwwsThPfjwwsTsZe21KrSlUs65Kp7hxowEf00'
        b64[x86_64]=$'00000000000000000000000000000\n0000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n00000000000\n0000000000\n0jdxcg2w7g\n000000000\n00000000\n0000000\n000000\n00000\n0000\nhQ4A\n000\n04\n00\n\034vQlchw810g{0c0fw01+1[1wD=4|e|b/|8w0v|o>4>g]1[4[q08;1E0w:w]1,g?2E0w;aw2:G08;1k]5g]2[1>1~;7wc:u0M]4]4>5>u0M;1U7:7ws:B0g;2k1[g]g>o>g4g;10N:434:80w;f0e]1]1>1w?20j:84c:wgM:w1:2g4]4]8>6>614:ocg;1wN:M/;3|g:w]kelQp0g>Y2w;3Ma:f0E:A]2g]1]1jVnhA1>aw2:G08;2E0w;3[c[8]57Bt6g6~~4]kKlQp0g>g4g;10N:434:80w;f0e]g]4>8,k?17jBk|g01M0g>1[8|s/,g]4>5,c?17jBk0BKei85SUoe3VR5JynbhbvX0oYHs<g?14>1>6w;2011|g4g?a0QqnmHwUPN~]I>w#1E>w#3o>w#5,g#5U>g#6M>g#7U>g#8g>g#9,i#9A>i#as>i#b4>y#c,i#cA>i#d,i#ds>i#ew>h01A0w4c:M]fE>i0180Y2]s[1Iqm9zbDdLbzo0nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO06RxqSlvoDlFr7hFrBZxsCtS07xCsClB065Ap5ZytmBIt6BK07dKs79FrDhC06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvoTxxnSpFrC5IqnFB07dQsClOsCZO071OqmVQpw1Pt79zrn|nRZBsD9KrRZIrSdxt6BLrw1Dpnh3k5lQqmRBnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM/tcik93nP8KcyUR/tcik93nP8Kcjs<g010/|g010/|g01|8|M02|8|w02|8|w010/|g020/>g]7kqqgA?803w4|1>2nApo6?301E1=10N:2[gcg;dwO:2[g7w;e0O:2]1g7w;213:2]272w;2x3:2]1g3:313:2]272w;3x3:2]1M2M;413:2]3g2w;4x3:2]272w;513:2]3o2M;5x3:2[o2M;613:2]272w;813:2]1Y2w;8x3:2]208:9x3:2[wgM;a13:2]2U2M;f0O:1w>4+fwO:1w>8)P:1w>c+10P:1w>M-wP:1w?14+cx3:1M>g+d13:1M>k+dx3:1M>o+e13:1M>s+ex3:1M>w+f13:1M>A+fx3:1M>E-14:1M>I-x4:1M>Q+114:1M>U+1x4:1M>Y+214:1M?1-1g[nFi|5U4/r30s8A/0/M>s>K1g|1Y2>gwUgzM923xye0Q8e88Q4gwUEz0l13z261A4ee8c7hMXg0wcN0gEee4gec44ea48e848e648e448e244b>a>6M?285w|q,113x260A4e68c3h0UMvgEe64ce444e24Ab?o>C>cMm?s,4ge45se2=4r0PJ8____0M?2gk|1A____h1o|bj___@Q5w|Uf___ThFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M1Dpnh3k5lQqmRB|1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc09mNIp0E09mNIp?pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP|1xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK:kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc{1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng|YMYu@Ay3X0x8wYg8MM?fcf7LF8w@M8i8I5mho0/y5M7g2_Z18wYg8MM)3P3NXWglf_dvMC|3_9vUC|3cPcPcPcPcPcPcPcPcP46X,fYBX2o|cPcPcN1KM4?3_9ugC|3cPcPcgrI2>_Ons9w|PcPcP46X0M?fYBR2o|cPcPcN1KMg?3_9sMC|3cPcPcgrI5>_On49w|PcPcP46X1w?fYBL2o|cPcPcN1KMs?3_9rgC|3cPcPcgrI8>_OmI9w|PcPcP46X2g?fYBF2o|cPcPcN1KME?3_9pMC|3cPcPcgrIb>_Omk9w|PcPcPfYBuxk|cPc[18zjS19w|i8Q5uyo0/wV@7gli8I5fxk0/y5M7g9_@0f7U<MMYvw,18zjRh9w|i8QRiyo0/wF_Ay9Y4z1XzZ8Mvw3i076id7@t1h8yMk55g|i8n0t0z_U6of7Qg|ccf7U<YMYu@E0Z3io?1RaRl8wPTG5>4y9Vngci8QZTx8|exp____W6j____61ukB?1nscf7M333N@<fcf7LHFt____YPcPcPcPcN1lQ5mgll1l5lji87I6/|8f_0M@fxw4|8f_0nUFi8JK2370w7Q0/wfhex5cui3_MdR64Obpx11w3MA/Mfhe3H2gYvg|NXkkNV4Odr2h0LM8?1cyuXEsvX__Un03UnF>i8Jc94xczrgAw>4yUP_tjUWmrN218qlMAg4123M18Z@B8MvA_ic7W1QwFOAw1QQO9ZH______W3L@__Z1ysq5M0@5c/0/xFx2ig>g48f/xFz2i,g48f/w3z2i8>i071i0ec99w?180tB8xuQfxdA?1czglsW___LA>18yusNM4O9MKz0_v__ct98yup8yu_Eo_T__QS5V7gFj8Q5cuL__QO9XQy9Sj70j8D2LA>3EALT__P7ij8DKj8DDW3nZ__Z8wsgo0g|h8DMmRR1n45tglV1nYdczrgAw>37_j8DSW7XZ__@5M0@5Bw?4xFx2ig>g48f/xFD2i,g48f/w3D2i8>i073i0es99w?3F_LX__Sof7Qg0/ydfqDG__YNMezi_f__grU1>WUlCbwYvx;i8Dei8QZuKH__P70W2_Z___Fpv___SoK3N@4<3Ee_T__UIUW0jZ__Z8zjTlW___i8D6cs3Ew_P__@KLAewr_v__yPzEVfP__QydfhnG__Z8ysoNMexz_f__WU@glld8w@Moi8RQ90PEofP__QyddunF__Z8yOx8ysd8yu_EO_P__Un0tiubv2gci8DuWaLZ__@9Nky9T@x1_f__i8f468DEmRT33N@4<18yuV8zjS6Wv__cs2Z0g?ezW@___WYYf7Ug<4y3X0x8yPQd4w|Lw4?3E2_P__P70i8f42cc,434:1[4]1M:1M1w:w]@/:9]1w]5M:1E2]8]8/:k[s[M:2MgM:o]a0c:b]1w]1g:3M1]E]9g4:p]e0O:6M]8]1E]S38:s[w]Yf__rM,m1w;fX__SY,f0o;3___ZL<4]3]287]Q]u1M;3R_LZL;3~~~~&41U;1g7w~~$xME;1g3:8sa:s0I;3g2w;8sa:S0I:o2M;8sa~{v0E;208]4]84c;2U2M(634~I1M;2M7:b0s:I1M;2M7:b0s:I1M;2M7:b0s:I1M;2M7:b0s:2>1;g|.};a0t:2>1;g|.0jdxcg287:9Us:2>1;g|.0jdxcg1U7:80s:2>1;g|.};5Au:2>1;g|.0jdxcg1p7w;5Au:2>1;g|.0jdxcg1p7w;5Au:2>1;g|.0jdxcg2u7:acs:2>1;g|.0jdxcg207:8ks:rmZIp20ObzgMbz4wa6dLrn1xt6Byr6kwtSBQq217jBkwr6gF|17gQcW82x7jBkF834QbzcKci0Oc38Rc3kOcO0EkClA84xxt20Nd2UPbz4JciA|2VKrThBbCtKtiVMsCZMpn9Qug0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It|KpmxvpD9xrmk0bClEnSpOomRBnSxAsw0KsCZAonhxbDdQsz4Kcg0KsCZAonhxbDdQsz4Ke|KpCBKqg0KqmVFt|Ks6NQ02VMr7gKpSZQ02VQpnxQ02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpCBKqlZxsD9xug0KqmVFt5ZxsD9xug0KpSZQ02VOpmNOrRZMomhAqmVD02VAonhx02VDrTgKs6NQ02VQrlZzr6ZKplZQom9Ipg0KoDdP02VDrDkKoDlFr6gKonhQsCBytnhBsM0KoSZJrmlKt|KsSxPt79Qom80bDdQsDhxow0KsTBJt65y|1yqmVAnTpxsCBxoCNB971It01ytmBIt6BKnSlOsCZO971It01JomJBnS9RqmNQqmVvon9DtyhMr7g0u6pOpmkAs6NQ065Ap5ZytmBIt6BK971It01PrD1OqmVQpyhMr7g0oSNLoSJvpSlQt6BJpihMr7g0pSlQsDlPomtB971It01Pt79BsD9LsyhMr7g0s79FrDhC971It01Pt79zrn0As6NQ05Zvpn9OrCZvr6ZzonhFrSUAs6NQ05ZvoTxxnSpFrC5IqnFB971It6tLt01vnStJrSVvsThxsDhvnOhDrTg0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB96tLt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB96tLt01Dpnh3k5lQqmRBnTdQsDlzt2hDrTg0nRZzu65vpCBKomNFuCkApSZQ05ZvpSRLrBZPt65Ot5Zv05ZFrCBQ05ZCqmVF05Zvl4R3nQN9kRhvnM1Apn9BpSBPt6lOnThJnSdIrSVBsM1OpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnShPrRZEomVAr6k0nRZkjkdvhkV4nRY0nRZBq6hOnTdQon9Q05ZvqmVFt5ZxsD9xulZPt65Ot01vnSBKqnhvon9OonBvpmVA05ZvpCBKqlZxsD9xulZPt65Ot01vnSpFrCBvon9OonBvpmVA05Zvs79BqmVFt5ZxsD9xulZPt65Ot01vnT1OpmBKqnhvon9OonBvpmVA05Z4mkV1jkB305Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vk59fgQl4ll95nQN9jAJ1hQlvl452j4lv05ZvoDdPnTdQon9Q05ZBrCg0nSlQpnxQ05ZBp65Qog1vnSlUpmdRt65yr6lvsThxsDg0nRZOpmNxnSBMr7hvsThxsDg0nRZOpmNxnSBMr7hvpmVA05ZvhQVlnQl8nQpigkR5nQx4kw1BrCg0pnhBu7g0pmhxt640nRhckRZdjQhlj4lvgA5jhlY0nRZPt65Ot5Z5i4hi05ZvsThLs5Z5i4hi05ZvsThxsDhvk4x4kw1vnTdQrT1vk4x4kw0Yon9QqmpFoSBxr3U0pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0pSlQgR1lt6BJplZArSc0bAN3cM0Kj4cM02VcgPg0bAN3cw0Kj4cN02VcgPk0bAN3dw1yqmVAnTpxsCBxoCNB069RqmNQqmVvpn9OrT80rm5HplZytmBIt6BKnS5OpTo0u6pOpmk0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1PrD1OqmVQpw1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1vnSdUolZCqmVxr6BWpg1Pt79BsD9Lsw1MsCBKt6o0sThOoSRM05Zvpn9OrCZvr6ZzonhFrSU~+c|g2E0w$c|w3o0w$c|M?M$c01|E0M$c01g3M1#c01w0m1w$c01M0Y1w$c0201M1w$c02g1E2#c02w282g$c02M0Y2w$c0301w2w$c03g2M2w$c03w1U7#c03M287#c/02M7#c/g2g7g$c/w2w7g$c/M0gcg$c05|ocg$c05g3ocw$c05w3wcw$c05M3Ecw$c06|ocM$c06g0wgM$c06w2MgM$c06M0Eh#c07|Eh#c07g`c07w`c07M`c08~c08g%0g>8/03g7*4M>8/03w7*9g>8/03M7*eM>8/?7g(hg>8/|g7g(lg>8/|w7g(ow>8/|M7g(t,8/0107g(ww>8/01g7g(zM>8/01w7g(Cw>8/01M7g(Fg>8/0207g(Kw>8/g2g7g(Q,405M3Mcw(UM>405M3Ucw*M4?405M|cM(8g4?405M08cM(dM4?405M0gcM(mg4?823M287*nM4?823w1U7*pg4?406M0Eh*sw4?8/w2w7g(xM4?8/w3g7g(Cw4?8/w0g7w(I/?407|Eh]4]L/?405g3ocw(UM4?8/w1g7w(XM4?405w3wcw(h08?424M0gcg(kg8?426M0Eh*ng8<g%qw8,5w3wcw(vg8,5w3Ecw(zw8,5g3ocw(Eg8,5g3wcw(Iw8,8g%O08,8g%T08,5|ocg(Vg8,6w2MgM(@M8,402M7*5gc,7|Eh*8gc,7|Fh*9wc,4w0c8g(bgc,6M0Eh*d0c<g%hMc,YvY^mgc,YvY^qgc,2M0Y2w(v0c,7|Fh*w0c,4w0c8g(xwc,6M0Eh*z0c?o|g%Dwc,8g%GMc,8g%JMc,8g%N0c,8g%Q0c?g0YvY^Tgc?8/w1w7w;1Y2:Xgc?8/w208:6w]@Mc?406g0wgM;5[2wg,302G2w(3Mg,3g2M2w(50g,302A2w(6gg,3g0E3*7wg,30282w(8Mg,301Y2w(a0g,301w2w(iw4|2!3w8|2!aw8|2!bgg|1!eMg|1!igg|1!mMg|1!ogg|18/w3M8:1M]tgg|1406g20gM;3[xMg|1!AMg|18#D0g|18#Gwg|18#J0g|28#MMg|18#P0g|18#QMg|18#Swg|18~~~$4>7,w:2E0w;aw2:c^w&k>1M>8]S08;3o0w;2g&4&9M?fr__SY2{3[c:A[g]2&34>b,w]E0M;2w3:O/:5,g>w]6[V,M>8]Y0g;3M1:2k1*1&gg?f___SY2]1o6:5wo:C[g[w]2]4U?3@__ZL0w]Y1w;3M6:c[5,g>g*1t>1,8]s0o;1M1w;fw1:1[8]1w]pM>g>2]6w8:q0w:w0g:g>q>2[o]74>1,w:282g;8w9:J^w*1X,g>8]f0E:Y2w;2g&4&yg>4>O]60a:o0E;1f^g]1]9w>1>cw:2M2w;b0a:O/*w[g:2D,g>o]u1M;1U3]Q&4&Hg>4>6]8ws:y0M:r&1&bc>1>1w:2M7:b0c:U&1&2U,g>o]A1Q;2g3g:w&g&Mg>4>6]a0t:E0Q;1I0M(4&cs>1,M]gcg;10h:2^w*3k>1w>c]634:o4g;c01:1g]8]1[Tg>Y>3]dwO:S18:8&2&eA>e,M:3wcw;e0i:2^w*3R,g>c]W38;3E4w;3^8&@w>w>3]1wP:61c;3E3&g&A1?1,M]wgM;20j:A&2^f0g?g>c]I4c;2M4M;7w&8&6/?4>3]2x4:a1g~2&2w1?8,M]Eh:2wk]g&4&J0g|1M#E5:201*4&gM4?4>M&i1k;1k^g]1]4M1?3#9Ml:pw4*4*1m0g?M#25M;eI4*1&nw4?8#Y1I:E2M;2>1B>2[o[80@o'
        b64[aarch64]=$'0cjaLlrgGDToQeFYRd1GvRXRWz\n07dBt7lMnS9RqmNQqmVvt6BJpn\n00000000000000000000000000\n0000000000000000000000000\n0rm5HplZytmBIt6BKnS5OpTo\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n069FrChvtC5Oqm5yr6k\n0000000000000000000\n000000000000000000\n00000000000000000\n0omhAnS9RqmNQqmU\n000000000000000\n00000000000000\n00000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n00\n\034vQlchw810g}0c0JM01[1}0e0g}4|e|704|7g0s|4?5!:U14,3w4g}g,g?o/3w_g,e3Z0g>UfQ1,g0M,1w3}1,2?1w/fzZ<@fQ1>3U_g4>c01<M04<8:g?4?O04,380g,cw1<9:A:g;kelQp0g?w4<20g<81<14;4g;1;1hVnhA1w!!.g;5bBt6g4?UfQ,3w_g4>e3Z0g>808<w0w<4;1?1g?3?hQVl0d6N_fQNF7EbRVET6KZZzF7mGn6Z>8?j.g?o.g0g|gg|1c;GEecYq4Qqnk!}0M090bw8#M0m07/w+g?8#27?4#16?8w%1l?4w%2l?4w%35?4#1@?4w#1?8#2u?4#1z?4w%2@?4w%2I?4!I?8#2n?4w%1J?4w%3N?4#3b?4w0b0cgd<9;3v?4g0m0c/w>c}nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO07dKs79FrDhC($0sThOoSRM07xCsClB`|pSlQgR1lt6BJplZPt79RoTg=0r6ByoOVPrOUS04tcik93nP8Kcjs:g01|8|w02|4|w01|4|w02|4|g02|8|g01|4,4|g3Z?4;2nApo6/2|s1<UfQ1,31<c0a<WfQ1,31<6Ma<YfQ1,31<f3Z0g>s|2,31<50f<u|2,31<a0e<w|2,31<50f<y|2,31<cwe<A|2,31<10f<C|2,31<50f<E|2,31<5wf<G|2,31<awf<I|2,31<50f<M|2,31<70e<O|2,31<40d<S|2,31<7/w>U|2,31:g<MfY1,11?M[OfY1,11/1g[QfY1,11/2w[SfY1,11/3M[UfY1,11/5-2,21/1{2|2,21/1g[4|2,21/1w[6|2,21/1M[8|2,21/2{a|2,21/2g[c|2,21/2w[e|2,21/2M[g|2,21/3{i|2,21/3g[k|2,21/3w[m|2,21/4{o|2,21/4g[q|2,21/4w[fOc3RvRXLWDZ0M2hhM|BfRXMqy_8MflM0dvRw{f1XLWDM|3M4vV7@h3yfV4w0x_m7O03RhYw0Zkv80fl4040A142gfAg0w2h808vRx01090h1A3V4280Ai027Zog0g2g4gF0@h12094w0x_m4040A14egfAgow2h808vRx01090h4A3V4880Ai027Zog0g2g4hp0@h2y094w0x_m4040A14qgfAgMw2h808vRx01090h7A3V4e80Ai027Zog0g2g4i90@h020p4w0x_m4040A14CgfAg8w6h808vRx01090haA3V4481Ai027Zog0g2g4iV0@h1y0p4w0x_m4040A14OgfAgww6h808vRx01090hdA3V4a81Ai027Zrw|3M0ex7@k/bjt__YnM0dvRxYw0Zkv80fl7O03Rg0109|M0eh0g40A27|V4_|3HM/le4|f0xU4vVog|Jf030qE|x_mM0dvRw0109|M0eh0g40A27|V4x|3b8LN_QQ4cwoIx_46jMg|Je8|f12X4vVow|Jf030GE|x_mM0dvRLRXLGDZ0M2hYMI0@hc1091wMAcVg040d@/f|V4vVw/Je/f|M3uhDL__BZD__Vsw081ioc83evcbgfDZuYaEM0dvRxYw0Zkv80fl7O03RtP__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0Zkv80fl_nKFGvQ3097PkM6F7MM0siMe05jRmMaFZSc3GhY4074d1w1kd0h0@hk0wda20A0VnM|spgiDVEv301Nogk0l3k8gfDTwMahUgcnGG02g3Av|1Ng020kHkiDVFV__@nU0g0de630V4|81iUiY0@oP__Vv03g0RU1deGg98ydbS3Q@FUw6wYK4LgfA040arRw82CM|w1bm0webwv__B_c302H01|QzL__BM|gbAP081ir___B@430aE/2g/VAlv__VvRmQaFZSd3Gu034OHPkQ6F_nLnGc03nZok083i5g20QLu30F5|81iUgcnGBf__Vtw@_YRZwJaGu3VDJ9wqHPO0Qy8QG1QQ_bz0q3Ow1zAYK630V50v42r0fN7AMbYwII|80iRwE3CRP__VvP0M0GwfL_du0jjGA1i8ziUMJfGu41Ef80406roM01CSc|EJz01qbl0k0Jfy30p7V8M3V6g|A3C3ep7y0NCG0gy0QK036aER__@nUgcoGK035aE2081igv__BZk20bjz0NqGUwcpGK035WE1283ia___B@435WHw0NmG0w20kzv__VvV8Q3VU~|R_m?A3c0w58|3yh4f__BXL__NvV8Q3VU~|R_mUgc3Gw/9|E3Chcf__B@034OHRmQaFZSd3GvdjgqDZuZuEM0dvRyT__Vs|42VcM20kwX__Vvx0M2G?A020e97S_L@nZlJ2GvtzgWCv__Yn7O03RhYw0ZnZuXSF_gc0Au6P097PkM6F5f__BM4|90k043VYMc0Gy70ep7w0NiG2L__BS0103nwbQ2VUgcjGBH__VvQ0M0GU0cjGK_@_Vvw0NgGYRd1GvRXMWz|R_mUgckGw/9/3GhR_X_B@034WEQ081iVfX_B@0352HPkQ6F_nL3Gc03nZrw|3M0f17@vRXLWAx081i_gc0AvX@_Vs|81i_nL1Gc03nZo_8Mfl_nK_GvQ3097ZuY6ELOc3Rs03nZpDpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c|6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM>pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA.2lIr6ga?pSlQgR1lt6BJpg,7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M>lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ|59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU:4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw>imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw,6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ|hI3eQg?7?UfD__RM?g@L__s?4PW__@4?EfH__Ww/30@L__M?23Z__ZI0g|FfT__VM1<4:1uB8017wu0hIc7M0g?6?7PV__YM;1.I?CfD__PM;8?4?30@v__i.113y2t19U3gFc2jJXtQMU.5?6g/3M@v__1{G?7M/3U@v__m08/113L02DiWubkejb9gHgFoFBiF1C2una6PmRk7oRQfuTtfk3w113L02AOOkaVkGByCna9wDDiWubmap9BnpgJrlgtzngJXtQZge044eY0ajb9gHDiWubkmlaFoFBOyo9VACgtB2RJl1Sdt2TJTjR0U0ggXM0FcIB2KlaFoFBOyo9VQKDyR62JrlgtzngJXtQZge044bitrlgtzn02M?E0g|HfL__Ug.ggUMDgqu1kej19g3kgHuTtfk3w112QHuTtfk3w/1M/1o0g/fP__Og.gMUgDgau0knuTgU!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!+M0E,1I2w,f3Z0g,g<3Z:M;K0w<d;ewd<6g<3w_g4>1I;2:q;ezZ0g>7:8;fn@_SY.Y04<5;104<1w;o0w<E;4w4<b;1w:M<3E_M4,8;k04<k:s;5M<1E1M<s;s0k<8;fw1<2g;o;fX__SY.k0k,3___ZL>4;Yf__rM.y1g,fD__SY.4!!!!}0fzZ0g!!!}|e08<U0w,3w2<e08<U0w,3w2<e08<U0w,3w2<e08<U0w,3w2<e08<U0w,1g3M,a0e<k0Y,383w,10f<k0Y,1o3M,awf<k0Y-70e<g0Q<1;7/w,1)4t3gPEwa4teliAwcjgKcyUN838MczgMej4O82xipmgwi65Q84dOrTdP834Qbz8KciQOag08?4>1|]0e09<Z0A<8?4>1|]0bw8<O0w<8?4>1|]0ewd<Z0Q<8?4>1|]/a<N0E<8?4>1|]0ewd<W0Q<8?4>1|]0ewd<W0Q<8?4>1|]0cw8<R0w<8?4>1|]0fgd:U!#c|g380g%c|w3M0g%c|M0o0w%c01|g1#c01g0y1g%c01w1g1g%c01M1M1g%c0201E1M%c02g2U2#c02w3w2#c02M3w2g%c0303E3g%c03g|3w%c03w0w4#c03M1E4#c0403w_g4^c04g3E_g4^c04w3M_g4^c04M3U_g4^c0502U_M4^c05g3E_M4^c05w1M|8^c05M3M|8^c06!/c06g3U|8-g?g0YvY&2,2M3w2g-2M?802M3w2g,1g;2,2g2U2)2,303E3g-6.g0YvY&2,2g382)2,303Q3g-7M?g0YvY&2,2M|2w-aw?802M|2w-b.802M0M2w-fM>4w3M_g4+gw?802M1I2w-m.405M3M|8,4;fM>4g3E_g4+p.404g3E_g4+yM?802M302w-fM>403w_g4+BM?40403w_g4+fM>3M1Y4)fM>5M3M|8^g0YvY&fM>3g|3w-2,2M3w2w-Jw?802M3w2w,5w2<Nw?802M103g,8g;fM>5w1M|8+R.405w1M|8>5:fM>3M3w4)7M?g0YvY&fM>3M3s4g-UM?403M3s4g%g0YvY&Yg?80303E3g-ZM?404w3M_g4+104/40Yv_U_g4+3g4.3w0w4)804/405w3M|8+b04/40Yv@U_M4+gw4/802g2U2)2,2w3w2)i04|2!p04|1!sw4|28#z04|18#Fg4|1802M343g,2g;Kg4|18#Pg4|1!QM4|18#VM4|2!Zw4|1!108|18#6g8|18#aM8|1!fg8|2!KM4|18#lM8|18#sM8|1!vM8|1405w3/8>3}6dOt6AKrM0Au01zomNInTtBomJvpCU0oT9QryVL06dOt7dQtmpCbCc0p6lOpmtFsThBsBZQrlZzr6ZKpnc096g0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T`|sSVMsCBKt6p0hQN9gAdvcyUNdM1UpD9Bpg1Pt79BsD9LsA17j4B2gRYObz4T05ZvpSRLrBZPt65Ot5Zv(0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs$0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs=0pSlQgR1lt6BJplZPt79RoTg|2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq|Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt|KpSZQbD1It|Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!!+1I?7.w<380g,cw1<9&g*K?ZL__rM8;Y04,3M0g,2w:M;8*e.I?2;1w2<608,3U0g<g?3?2:o;4.3.w;g1<104<4w4)4)18?____rM8;8wk<y1g,2E:M;2:8;lg/fX__SY2;505<k0k<w:g?1?2*6g?4.w<1M1g,705<@04<3:w;6;1K?1?48;q0s,1E1M,501;M/1k?8;1w;u.4?6;bw8<K0w<s*1*7c?1?1w<3w2<e08:4-1*1@.g?o;U0A,3w2g<w4)w*x.4?6;ewd<W0Q<o*1*8E?1?cw:3w;e<808)w:g<2i.g?8;81;w4<4g*4*E.4?2;6wg<q1<1U0g-2*aE?e.M<3w_g4>e3Z<2&w;2;2S?3M?c;WfQ1>3E_g<w*8:w;Mw?4?3;f3Z0g>YfQ<8*2*cY?6.M<3U_g4>fzZ<M04<4:w;4;3o.g?c;KfY1>2U_M,3&8:w;Tg?4?3;ez_0g>WfY,28*2:8;eo?1.M<1M|8>7/g>w*1*3I?2.c;Y|2>3M|4,w*1*Yg?4?M*Y|1,Q&g;1;fE?7[3U|8>2g10g>804)g*1.w%180w4>108<6M/4g?8;1w;2g?c#m0E1>2h0w)g)14?3#eAc0g>404)4*h05'
        b64[i686]=$'00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0hQN9gAdvcyUM\n0000000000000\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n0fuI9aw\n0000000\n000000\n04Poj4\n00000\n0983F\n0AweA\n0000\n000\n0g\n00\n04\n01\n0w\n\034vQlchw41>&c.M/)3g<Ia-3g08.a02w07w0t.4~c1M.30s,k]4<g]g<4<1,8g8.242,1[g,1<Z1U.fgK.3Qbw.z?.9/,6]1<8]7M,2Y<L.3w<U]o<4<1<7g1.1Q>.t?.2g<A<1]g<4<@1k.fwl.3U5g.a<2w<4<1<5fBt6jU5g.@1k.fwl,E<a]g<4<kelQp20m,w5w.81o.3g<Q<1]g,1hVnhA~{6<4<5bBt6jQ7w.Z2U.fgK,c>.3?,g<1<1<1g<3<hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_<wsdjbw.yUfQ____xs1Q0L_gwYg8mYc*f@P1<f@z2)3_EMM,1E]eDw_____Wcg<q|,3FQf____@z5<6wg<Ws3_____ENw,1E6<eCM_____Wcs<q2<3FEf____@z8<6wE<Wp3_____EOg,1Ec<eC0_____WcE<q3w,3Fsf____@zb<6x]Wm3_____EP<1Ei<eBg_____WcQ<q5<3Fgf____@ze<6xo<Wj3_____EPM,1Eo<eAw____yNMAMSqgpF1CA6qgpF1CAezA<ws8_bg.zoGc<zoac<esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w<3EF<872_OM.5m9VledyEM,2dwEM,23X>FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o]Afcf7LJlyuljW5f___@1MWsI.23X0i0KUM]tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM<1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3.21NQQI.1mkU7I_<8fU0M@fUw4.8fU0nUJySE4csD7h2gk]81Z,fheC3@0dR7EJ2280U.Z5O8Bc91jH3OWdt2o0NQgA5[NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke>.K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw,2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z?.8Kc9aM,2Ug48f=,29OY7X7M71K4123M0hQ_uI9b]1O8Kc9bg<hSEDbMvIv0swhSwd49|jl2gcxuQfx1w1.23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_<5JunRT3zno|@M8zrgAI<5pG0ex6_v__wYggxs0fxtI,2Ug48f=,29MoK49aM,29QVA1Mrx>wY?tfTH2iM<ygMAylMA18D1yUgAJ]cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o]w@Mczos0Vf__yvJgW2_Y__@3N13712g1<yMgAwsjY<mRVvnsedJ2o]w@M4yvJik8S7Run__R3E3vP__Uf448I49874_<5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o]pF1nlBfEifP__U73D2A.8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w<23X0ydw@rB__ZnLM4,1gW1LX__@3N13HP8SS]5fEOLL__U737yA.8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE.23N0xrMM~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!8<h]g<k<x1.w4g-2GwUPNEjhFtg~2@#i<4#8<8g$1<1L#i<lg$4w,ck$1<16#y<EM$4w<4$2<1S#g<rg$4w,98$18,2I#g<b#8<6c$18,3N#g<OM,d06,z<4w?0dY,1Ec,6<1405M.nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn.pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS?tcik93nP8KciUP?tcik93nP8Kcjs%]w/.4.w03.4/.2.40>02.80>/.80>/.4<1.c0_g,1*sNZF2g.1.7>.4<9uhBwo,c?M4.1]gqmAd,2/U1-Z2U,w,3Ubw.2<fMK,8<g3<w,14c,2<4wM,8<j3<w,1gc,2<5gM,8<m3<w,1sc,2<60M,8<q3<w,1Ic,2<7gM,8<u3<w,3wbM.1w8.egL,61M.W2Y,o9.3IbM.1wU.f0L,64w,3<s1,4c,1Mc,wM,71,33<s5,gc,1Mo.1gM,71M.63<s8,sc,1ME.20M,72M.93<sc,Ec,1MQ.2MM,73M.c3<sg.1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c.6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ.59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU]imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK?BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU.6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs<4<6]k,17jBk0>/M><1]w/M><1]hI3eP]5<EeL__QM,20Xv__s<33M___0>.If3__Og2.3jYf__j08.1g*nFi.5Y2?r3>4y?.2]s<jeL__@[3wx63wNa3MJQ17w0fNEXaz8A8AM1.1]2eT__Wo2<ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw;082ggWo0AceD0923G02j0Wg|9n3FM2gMWw0AseF0913Gw2hwWI0AkeI:g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE:02igEe54733x11NwUcgsse24753wh42QceC:M2gwWw;082pwWs0AAeE:02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE:02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw;09f3FM2gwWw0AoeD0913Fw2ggWs0AseE:0206<2g>.qeX__TE]ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw,A<Z?.8jK__Yz]44e28c2jwUogwUshwUwi0U8gYce1,4<1M2.1_XL__1~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~&903.1.M._2U,4,3Z<3<9w1,d<@0o.1A,3Qbw.6M<g<q<@2U.1M<4<ZvX_rM>,5<l14,o<A4,2w,2w1,b<4]c,3QbM,w,6w<k<4g,1s,2c4M.4g,egi,i<G<1c<8<_L__rWgi.3___ZL>,f3__SZY4w.@L__rN~~~~[bM&3m>.Vw4.fo1,6|.5w8.2o2,S|.hw8.5o2.1C|.tw8.8o2.2m|`Pxk.3gk.3e5g.n1g.agk.3e5g.W1g.3gl.3e5g{cYl.1g1w,g,40M.285g{4t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag<w<8[4.4t19}0E08.a02,8<2[1.(09w1.2P>.2]w[g.hQ4A0jdxcg3U1w.1Ms,w<8[4.4t19}0I08.9A3,8<2[1.(0fs6.3T1w.2]w[g.hQ4A0jdxcg3T1w.ZMo,w<8[4.4t19}0IM4.bw1,8<2[1.(.s7,c1M~<4#g0YvYd<I08-20>03M,f02)w?028,1.M-8/.U<w3<4<1/w0h<fwK)g0i06I,2g0M-8//T<Z2U-1/4!/03N_Vo,2w0M.Fw8,8/02C<k0o.7E<20>0J<40M,E]g0n0cc#g0Yv_d<w1w-1/`103N_ZI,2w|.1]8/03N<@0o-2.k0ZM,9A3)w?.Q1.3Ybw-4?M0q>,2Y-1/g08M4.20m*0f03o1.20c)405M12>.Z2Y-1/o0m?.fc6)w?06U1.2o>-8.w1Q>^i<xg4^8<a41^1]L|^i<HM4^4w,cw1.3g1w.8M,18/03s>^g<Uw4^8w,fQ1^18<g|^w<7M8^4<2Q2^18,1.w^i<mM8^4<6Q2^2<27|^i<CM8^4<as2.1Ec,6<1405M.oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt/Pt79zrn1%05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc/vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc/vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc/JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz.omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg.2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq.Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!/I<7]w,7g1.1Q>.9#1*K]g<o,2o>.C?.2!g)wM<4<6<M?.c/.3w#g<1<3g<1<1w,a02.2w|.lMg^4*W]g<o,3U1w.@0o.1g#g)g<fr__SY2]1]g,A<1M)4<1<4E<b]w,2gg,A4,c?,w<1<1<1<1i]M<8,1k4g.l14.2w1$4)mw,f___SY2<v18.7Mi,C<1M)2]w,6s,3@__ZL|,agi.2A4w0>]w<1<1)1S<2g<8,3A4w.V18.aw<7*g<8<vM<A,12<z1c.8Mj.1E<1M,1o<4<2<8w<1<cw,fgj.3Q4M,w8^1]4,2g<1M<8,3U5g.@1k.2w#g)EM<4<2<81o.20m,Q#4)b4<1]w,5gm.1k5w.c08^1)2X<3w<c,3Qbw.Z1U,g#g<4<NM<Y<3<@2U.fwu,4#4<1<dc<1]M,fMK.3Y7w.1#1)3w<1w<c]bM,1Y.e]8*g<8<Wg<4<3<U2Y.e0v,k#4<1<eU<1]M,fgL.3Q7M0>#1]g,3T]g<c,10c,g2,4#2*_g<w<3<w3,8|,4#1*81,1<c)208,bw#g<4<b>.1M-24c,I2,e!g*g<8$90x.3.w.7<1E<4<4]A<3$1g9,Kg8$g)h]M$2is.241$4*w3d'
        b64[ppc64le]=$'0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n000000000000000\n0hQN9gAdvcyUNdM\n00000000000000\n000000000000\n00000000000\n0000000000\n000000000\n1Wao327Mw\n00000000\n0000000\n000000\n00000\n0Mc3\n0000\n000\n0g\n00\n\034vQlchw81/=c05g01+1{wf/;w?4|e|704|7|r|4.5~{81k:w5g{g;g.o.8_g:zZ/<2fQ1<3U0M}4{1;2.1w?23Z:8fQ1;w_g4<e01:U04:8[g.4.O04;38/;cw1:9[A[g}kelQp/?3M4M;f0j:Y1c:I}2M}1}1hVnhA1w~~;g}5bBt6g4.2fQ:8_g4;zZ/<@08;3U0w:4}1.1g.3.hQVl0b2ialf0ISt6qoHAE6E34DIDThNq<8.j,g.o,g/0/g|1c}GEecYq4Qqnk~=0M090c08~M0l08?w*g.8~2u.4~16.8C`1l.4C`1J.4C`2@.4~2l.4C~1.8~1S.4~1z.4C`34.4C`2I.4~0I.8~1L.4C`24.4C`3N.4~3t.4C0a0f/:i}3b.4g0l0d?w<c{nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80rm5HplZytmBIt6BKnS5OpTo0u6pOpmk0sThOoSRM06tBt4dglnhFrmlvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn|omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8Kcjs[g01|8|w02|4|w01|4|w02|40/02|80/01|4;40/3Z.4}2nApo6?2|s1:2fQ1;m{c:4fQ1;m}90b:6fQ1;m}1zZ/<w|2;m}20j:y|2;m}70i:A|2;m}20j:C|2;m}9wi:E|2;m}e0i:G|2;m}20j:I|2;m}2wj:K|2;m}7wj:M|2;m}20j:Q|2;m}40i:S|2;m}40f:W|2;m}8?w<Y|2;m}d0j:2fY1;C.2w+4fY1;C,M+6fY1;C.3M+8fY1;C.1g+afY1;C.5)4|2;l.1)6|2;l.1g+8|2;l.1w+a|2;l.1M+c|2;l.2)e|2;l.2g+g|2;l.2w+i|2;l.2M+k|2;l.3)m|2;l.3g+o|2;l.3w+q|2;l.4)s|2;l.4g+u|2;l.4w~o047Ug862Wqo3ynQw181e#80j3MwtA8UFw88v1?vyh_O7U.o0y|Kw|a0L303@grT__QIo047Es|xe1?uyC0MxY8020jw,o047U8862Wqo3ynQw181e$1w/vxUwobFFwe9vi04w4U$6011@121wKCC0UBZ80i0jw$o047Um862Wqo3ynQw181e$1w/vwMwobFFwe9vi04w4U$6011@4y1wKCC0UBZ80i0jw$o047U6862Wqo3ynQw181e$1w/vxEwobFFwe9vi04w4U$6011@621wKCC0UBZ80i0jw$o047Us862Wqo3ynQw181e$1w/vwUwobFFwe9vi04w4U$6011@521wKCC0UBZ80i0jw$o047Ua862Wqo3ynQw181e#80j3N0t48U.o.6|wC8U088yeg0oanMw089d.o120wKA|2MI8022jqo227OC0UBZ4|1@e7_8vwo047U8gi0jxw/uww024U4|]081e|12o080j3PwsQ8U.o.6|wC8U08a2e50wwTNQ7EhYt0W4v9k1x7Mw089d.o1y0wKA|2MI8022jqo227OC0UBZ4|1@e7_8vwo047U8gi0jxw/uww024U4|]081e.o?gC0204MYs7d2e.6|wya9?9b2|wAOC0wxY.o2208KA|2AI4|1@e7_8vwk0891__Zyf1x@oPwl_LZb6011Wfn@_QIw024U/0weg?6/|7E088yCqo327Mw081e.o.6?49w0w1cf01Pgzww__Zb.o080j3PMsA8UFw88v0c|OPM_Y7X4|1@47@8vxA0E51/23bVw1ovKw0o7XG06x@Xw1UvJI0pR0202AWM|foA|8AL202ug?E3I|60XA0a2gv|wjI2060Uuee4vX7Y_QIo047E?3b5w1wA3U047Fk@cwfsgw03TM0e7EFpI8os_Tam4e|BV3M3wfV98aDR/LZzQzD_vTr@iDRw084U__Zwe7g@anRgi4FZ55b_vXTZ_QIo047E?3b7wrvDNA0o90o031W7|Uuwf020Zq|1Wnw/uA|3QIg48Fot8NOnPieiBZ54b6v1haNDMkkIpY5fH6vag1wA680i7X_LYyfV01gvIM0k4Xc9cVeQ|w3xUOOl_udd3vT7Z_QIo047E|2we7zjh7ZUWWd_vvP_iNw/uw|3IIc022gnzb9nZ|80UufLCvTzzwTYZ_vZb6011W?E3xUUUh_udJzvQDY_QIo047Ey04xWV01guKo0m7HE061WXg7MT@E0q7HK07xWY018jwg|7EYf_1WWo327Mw081e|2weM|o3LM084X0w1we7zzx7Zt@_Zb6011W.OOM_E91o021e?o3xM0o7UEvP_iNw/uw?cI9062g6|UuJM0e7E3M0wfmw|uBU047F__Zwe412am5M0o7EQLDFvZ8VanQkgLZ_54H_vNhi_TZt_fZb6011W.ONU6TVYFfW2ggDY_QIo047E0w1zW1TY_QIo047Eu1JAvfX_ozMgAScU2vL_iNw/uyo0m7HE061WWw1EuKU0u7H/30eY018jyQ1Yd_4|1Wf3_MuKC0MxY8020jw0/C3@_S8Y/30eZ2ioPz5@LZb6011Wd3__QI?1w|12ofX_ozNUcYhYe9dze4nX_QIo047EC05xWW01wuKE0q7HK07xWY018jyQ1Yd_4|1Wf3_MuKC0MxY8020jw0/C/06jH?Xyg|2iNE_o9?1weXj@_QI?1w|12o37X_QIo047E0w1zW4nX_QIo047Eu1JAvfX_ozPMACcUaf__iM}1w0s?80j3P0rQ8UFw88vf3_MvLU_@7X4|1@87_8vxw084UMvH_iNw/uz@_U8Yg9e4e?M@JU6TZY80n9uY0faiPw081080m9uc0faiPk0810Cvo0v9ACE7Sc0O/|10egpEE14620/lSQ0Y0ocE17|9x130k046M2011D|xY__YEenx0anTQ0OBZ54EGvqV8p7OKi3VZk4xzv.ON|890ow1xW7zXV7YJ_fZbu1J@v7zXUT@F@vZb6011W8|8jyQ1Yd_4|1Wf3_MuLU_@7HFwc8v2|w4U|49w_LZyf7zPN7ZgAScU/30eP7V_QIo047EufLzvSnV_QIo047Ew|xebg7MTYg|7EYf_1W_z_UuKC0MxY8020jDzPMTYt@vZb6011W73__QIg040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0haf@og20/3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE148_Vx0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw4ez@C41|8gUg01@eaDU_QIo047E_fX_iM}1w08?80j3MgrA8UFw88v.60Ew6bE/20e1?vzx_O7Ucvz_iNw/uww024U|1we1?uyC0MxY8020jw}1w.bzK/<Fw88v0k0DQaC0CxZFwc8vf3_2@xgo8JZ55Fwvtj_33w|8LFwL|uao3ynQ806LF80i0jIP__QL8__ZbNf__iY3__QKY__ZbKf__iXj__QKM__ZbHf__iWz__QKA__ZbEf__iVP__QKo__Zb0w1cf5hJgzyC0wxY4|1@97_8vxM024U4|]081epSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP|1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp<Br6NA2w?6tBt4dglnhFrmk;1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs<5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt|1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U<4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU;1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt|4r0PIE.1.23U__Zo.kfL__Zw,_v__304|53Z__Z,4[1uB8017x10hIc/0k.6,zZ__ZI,489gg121A5Y.c.c3T__YM0M?4seM0chgnWu0Aer1k6s146t0Q6v0nip1Qaq1BHpgtF1SQ7sgJR1TQ4e04c6gtV13I03CMms19Q3Dwav0h51vCTrgtN1Tk7vgwEe04g6gtV22Qyr1pM4Dgev0koaSQ7sgtR1TQ4e04g6gtV22M?3.2M.sfH__X01.hMW|h51vFU2DM5G2wU0hgp1TZV22QEa3w151A7vTA4b?s.V.ePX__Z8,4we8151vAce04c6gg~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~&M;2g2M;1zZ/;g:3Z[M}U0w:d}aMh:6g}8_g4<1I}2[q}13Z/<7[8}fn@_SY,Y04:5}104:1w}o0w:E}4w4:b}1w[M=8;8}k04:k[s}5M:1E1M{7<l14:3|1M)01M:1M1g:w}@04:9}1w}_L__rM.1g1g;f___SY<g:3M__ZL,285:@v__rM,g~~~~*7Y2~~~~~~~~~~~~~~~~~~~~:81c;1M4w;20j:C18;3w4w;20j:a1c;1U4M;20j&104w;40f}g:2?8<d0j&17gQcW82x7jBkF834Qbz8Kci0Oc38Qc3ANcy0EkClA84xxt213sCZPsO0Nd2UObz4JcyA02.1;g|hQ4A0jdxcg302w;c0a:2.1;g|hQ4A0jdxcg3w2}M9:2.1;g|hQ4A0jdxcg2I4g;c0h:2.1;g|hQ4A0jdxcg302w:Mc:2.1;g|hQ4A0jdxcg0U4g;3wh:2.1;g|hQ4A0jdxcg0U4g;3wh:2.1;g|hQ4A0jdxcg0c2g;1M9:2.1;g|hQ4A0jdxcg304g;d0h~~03|40O04`3|80Y04`3|c0608`30/04/`3|k08wk`3|o0k0k`3|s0s0k`3|w0q0s`3|A0M0w`3|E080A`3|I0H14`3|M0Q14`3|Q0Y1c`3|U071g`3|Y02fQ1!301|4fQ1!301406fQ1!301808fQ1!301c|fY1!301g.2!301k0w|2!301o?42!301s~?301w02042&4.40f7_#M.2o0E0M0E^U.2o0E080I&24.2o0E0A0I&3s.101o?42;1}4c.101|4fQ1*6E.2o0E?M&7o.1|Y02fQ1!40f7_$9k.2o0E040M:M0M;ak.2o0E/0Y;2M/;bc.101k0w|2<1g[4.40f7_$c8.1|U071k`40f7_$d:E0U0A&fQ;E0w0E&2k1<A0M0w&4o1?2o0I0H14&4M1<E080E&701<E/14&8c1<E0E0A&9I1<E0w0A&c01<E080A&eM1<E/0E&1I2?101406fQ1*2w2<E0M0A&4w2<E0E0E&6Y2<E/0A&8Q2?101808fQ1*9o2<E0o0E&bQ2<Q0Y1c&d02?101k?42*dM2?101c|7Y2*e82<E0o0A^83?2o0A0U0w^w3<E?E&2Q3?w~fg2?g~4A3?yo`6c3?io`7M3?io0E0Y1:18}903?io`9k1?g~ag3?io`3s1?w~3E2?g~bw3?io`cQ3?io`5U1?g~dY3?w~983?io`fA3?io`842?g~1k4?h01k0Q|2;M[1zsDhPt7lCpyVz06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0pSlQgR1lt6BJplZArSc0nRZ6kA5dhlZ5jAhvnM>>0NoiVMr7hvoS5Ir2VvnSdUolZCqmVxr6BWpk1->>0NoiVMr7hvoS5Ir2VDpnhOtndxpSl(0c3>0McmkKs6NQnSdxr6MKnRZDrmZKnTdQon9QnRY0nSpFrCA0c3>0Mcm4Ks6NQnSdxr6MKrm5HplZytmBIt6BKnS5OpTo0nRZDr6BKqRZgj5hOpndLr7pB03>>5xbD1It5ZzomNIbDxCsClB03>>5xbD1It5ZzomNIbDdQsCdJs41->>0NoiVMr7hvoS5Ir2Vzr6ZzqRZDpnhQqmRBg417j4B2gRYObz4T03>>5xbD1It5ZzomNIbBZvpn9OrCZvr6ZzonhFrSV(0nRZAsSZvq65Kp6NB03>>5xbD1It5ZzomNIbC9FrChvtC5Oqm5yr6k0c3>0Mcm4Ks6NQnSdxr6MKsSVMsCBKt6p(0c3>0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3>0Mcm4Ks6NQnSdxr6MKsThOpn9OrT9(0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv02VkjQcK03>>5xbD1It5ZzomNIbC9RqmNQqmVvpn9OrT80nSBKqng0c3>0Mcm4Ks6NQnSdxr6MKs79FrDhCg417j4B2gRYObz4T05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz4T06dIrSdHnStBt7hFrml-1PpnhRs5ZytmBIt6BKnThFrmlM07dKs79FrDhCg4tcik93nP8Kcjs0sThOpn9OrT9-1DpnhOtndxpSl-1Pt79zrn1-1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV-1Dpnh3k5lQqmRBnTdQsDlzt?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It|KqmVFt|Kt6lUt|KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~~+1I.7,w:38/;cw1:9$g%K.ZL__rM8}Y04;3M/;2w[M}8%e,I.2}1w2:608;3U/:g.3.2[o}4,3,w}g1:104:4w4^4^18.____rM8}8wk:y1g;2E[M}2[8}lg?fX__SY2}505:k0k:w[g.1.2%6g.4,w:1M1g;705:@04:3[w}6}1K.1.48}q0s;1E1M;501}M?1g.8}1w}u,4.6}c08:M0w;1s%8%7U.1.1w}w2g;209:z0w&2%24,g.o}H14;2I4g;2g%4%yw.4.O}d0h:Q14:w0w&2[1}98.1,w:3M4M;f0j:b$g^2w,g.8}71g:s5}g1^4%Gw.U.3[zZ/<2fQ:8%2[8}bo.f,M}g_g4<13Z:2$w}2}32,g.c}6fQ1;o_g:w%8%PM.o.3}23Z/<8fQ;3w/:g}2[g}dw.1,M[_M4;3_:c#1:2}1P.2,c=2;M_M;8$8[w}Tg.4.3}8?w<w|1<2$4%ec.8,M{g8:1/<2$4^3E,g?3!g4<3g%1[4}Yg.s)w10w<d041;w/&1$4.2~5w2/<w0s:q.fw.w}6[9,M`3o2g4<2s4^1%4g.c~_MQ1;7/^g^140o8'

        { ! ${forceFlag} && ${gotLoadableFlag}; } ||  { printf '%s\n' "${!b64[@]}" | grep -qF "${ARCH}" && _timep_base64_to_file "${outDir}/timep.so" <<<"${b64[${ARCH}]}"; }
        { ! ${forceFlag} && ${gotFlamegraphFlag}; } || _timep_base64_to_file "${outDir}/timep_flamegraph.pl" <<<"${b64[flamegraph]}"

        enable -f "${outDir}/timep.so" getCPUtime
    fi
}

_timep_SETUP --force

_timep_file_to_base64() {

    local nn k1 k2 out out0 outF outN v1 v2 quoteFlag noCompressFlag doneFlag IFS IFS0 nnLast nnSum LOCALE LC_ALL
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

    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))

    [[ -f "${1}" ]] || {

        printf '\nERROR: "%s" not found. ABORTING.\n' "${1}" >&2
        return 1
    }

    doneFlag=false
    nnSum=0
    outN=0

    until $doneFlag; do
        read -r -N 3 nn 
        (( outN = outN + ${#nn} ))
           
        (( ${#nn} == 3 )) || {
            doneFlag=true
            
            until (( ${#nn} == 3 )); do 
                nn="${nn}"'0'
            done
        
        }
  
        (( nnSum = nnSum + 64#${nn} ))
        (( k1 = ( 16#${nn} >> 6 ) ));
        (( k2 = ( 16#${nn} % 64 ) ));
  
       outA+=("${charmap[$k1]}" "${charmap[$k2]}")

    done < <(hexdump -v -x <"${1}" | sed -E 's/^[0-9a-f]+[[:space:]]+//; s/([0-9a-f]{2})([0-9a-f]{2})/\2\1/g; s/[[:space:]]//g' | sed -zE 's/\n//g')

    IFS0="${IFS}"
    IFS=
    out="${outA[*]}"

    ${noCompressFlag} || {
        compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')
        mapfile -t compressV < <(sed -E 's/(00+)(([^0]+0?[^0]+)*)/\1\n\2/g; s/([^0]+)/\1\n/g' <<<"${out}" | grep -E '..' | sort | uniq -c | sed -E 's/^[ \t]+//' | grep -vE '^1 ' | sort -nr -k1,1 | while read -r v1 v2; do (( v0 = v1 * ${#v2} - v1 )); printf '%s %s %s %s\n' "$v0" "${#v2}" "$v1" "$v2"; done |grep -vE '^-' | sort -nr -k 1,1 | head -n 27 | sort -nr -k2,2 | sed -E 's/^([0-9]+ ){3}//')

        for kk in "${!compressV[@]}"; do
            out="${out//"${compressV[$kk]}"/"${compressI[$kk]}"}"
        done
    }
    printf -v out0 '%s\n' "${outN} ${nnSum}" "${compressV[@]}"
    printf -v outF '%s'$'\034''%s' "${out0}" "${out}"

    if ${quoteFlag}; then
        printf '%s' "${outF@Q}"
    else
        printf '%s' "${outF}"
    fi
}
