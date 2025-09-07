#!/usr/bin/env bash

if shopt extglob | grep -qE 'off$'; then
    timep_extglobState='-u'
else
    timep_extglobState='-s'
fi
shopt -s extglob

timep() {
    ## TIME Profile - timep efficiently produces an accurate per-command execution time profile for shell scripts and functions using DEBUG, EXIT and RETURN traps.
    # timep logs command times+metadata hierarchically based on both function and subshell nesting depth, recreating the complete call-stack tree in its logs.
    #
    # USAGE:            timep [-s|-f|-c] [-k] [-F|+F] [-o <type>] [--] _______            --OR--
    #           [...] | timep [-s|-f|-c] [-k] [-F|+F] [-o <type>] [--] _______ | [...]
    #
    # OUTPUT: timep generates 2 profiles of the code and, when enabled, several flamegraphs. These will be saved to disk in the "profiles" dir in timep's tmpdir directory (by default: /dev/shm/.timep/timep-XXXXXXXX -- printed to stderr at the end):
    #        2 time profiles: "out.profile.full" and "out.profile"
    #             out.profile.full:    contains all individual commands and metadata info like the chain of FUNCNAME's and the chain of subshell PIDs || [[ "${nn}" == *$'\n' ]]
    #             out.profile:         commands repeated by loops have been collapsed into combined entries that show the number of times the command was repeated and the total run time from all of them
    #   if flamegraph generation is enabled, you will also get
    #        2 flamegraph SVGs: "flamegraph.ALL.svg" and "flamegraph.ALL.R.svg"
    #             these are both "quad-stack" 4-in-1 flamegraphs. They contain the same information but are arranged/grouped differently.
    #             the flamegraphs that were used to build these quad-stacked ones are also available in the "flamegraphs" sub-directory in the "profiles" dir.
    #        2 stack traces intended to be passed to "timep_flamegraph.pl": "out.flamegraph.full" and "out.flamegraph"
    #             out.flamegraph.full: contains stack traces from all commands
    #             out.flamegraph:      contains "folded" stack traces where the times from otherwise identical stack traces have been summed together in a single stack trace
    #              ("timep_flamegraph.pl" is a modified version of "flamegraph.pl" from Brendan Gregg's "FlameGraph" repo at "https://github.com/brendangregg/FlameGraph")
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
    # -F | --flame | --flamegraph  : automatically generate a flamegraph using Flamegraph.pl and save them in the "profiles" dir
    # +F | ++flame | ++flamegraph  : do NOT automatically generate a flamegraph using Flamegraph.pl and save them in the "profiles" dir
    #

    #     NOTE: you can choose whether or not to generate flamegraphs by default by setting the timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT variable at the very top of thje script.

    #           If this is set to any non-empty value, flamegraphs will be generated automatically unless the +F | ++flame | ++flamegraph flag is passed (the [+=]F flag, if passed, will always override the timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT var)
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
    #    3) REQUIRED binaries: cat chmod find grep mkdir mv rm sed sort uniq
    #    4) OPTIONAL binaries (needed for extra/enhanced/optional functionality): ln file [realpath|readlink] [wget|curl]
    #    5) accurate cpu time measrements require the use of a loadable builtin. currently, this is supported on x86_64, aarch64, ppc64le and i686. timep will try to use /proc/stat when this loadable builtin is not available, but the quality of the timing result will be significantly worse.
    #
    # NOTES:
    #    1. timep attempts to find the raw source code for functions being profiled, but in some instances (example: functions defined via `. <(...)` or functions defined in terminal when history is off) this isnt possible...In these cases,  `declare -f <func>` will be treated as the source, and the line numbers may not correspond exactly to the line numbers in the original code. Commamds are, however, still ordered correctly.
    #    2. To define a custom TMPDIR (other than /dev/shm/.timep.XXXXXX), pass `TIMEP_TMPDIR` as an environment variable. e.g., TIMEP_TMPDIR=/path/to/tmpdir timep [...]
    #    3. timep uses a loadable builtin to get accurate cpu time measureements. This loadable builtin's .so file is included in this timep.bash file as a compressed base64-encoded string. When timep.bash is sourced, this .so file will automatically be extracted and the loadable builtin will be enabled automatically.
    #
    # KNOWN LIMITATIONS / BUGS: timep handles *almost* every aspect of the bash execution model, but there are a few edge cases where, due to the limitations or trap-based profiling, the output is slightly off.
    #    1. For function calls that immediately spawn subshells (e.g., ff() ( ... ) ), the lineno for the subshell is incorrect
    #    2. In some deeply nested chains of combined subshells + background forks with multiple subshells + forks before the 1st command in the sequence, some commands may have an incorrect nesting level. That said, commands should still be grouped together roughtly correctly, and will still have accurate timing info.
    #
    ################################################################################################################################################################
(

    local timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT=1

    # check that basic requirements to run timep are met
    # to disable this check, call timep via 'timep_DISABLE_CHECKS=1 timep <...>'
    [[ ${timep_DISABLE_CHECKS} ]] || { [[ -f /proc/self/stat ]] && (( BASH_VERSINFO[0]>= 5 )); } || { printf '\n\nERROR: timep requires a mounted procfs and bash 5+. ABORTING!\n\n' >&2; return 1; }

    local -a missingA=(sed grep sort uniq perl)
    for nn in "${missingA[@]}"; do
        type -p "$nn" &>/dev/null || { printf '\n\nERROR: timep requires %s. Please install it (or add it to your PATH if already installed) before running timep. ABORTING!\n\n' "$nn" >&2; return 1; }
    done

    unset missingA

    shopt -s extglob

    local IFS IFS0 nn jj kk kk0 kk1 kkd a a0 b u logPathCur nCPU nWorker nWorkerMax REPLY timep_coprocSrc timep_DEBUG_FLAG timep_DEBUG_IDS_FLAG timep_DEBUG_TRAP_STR_0 timep_DEBUG_TRAP_STR_1 timep_deleteFlag timep_EXIT_TRAP_STR timep_fd_done timep_fd_lock timep_fd_logID  timep_flameGraphPath timep_LOG_NUM timep_noOutFlag timep_outType timep_PPID timep_PTY_FD_TEST timep_PTY_FLAG timep_PTY_PATH timep_RETURN_TRAP_STR timep_runCmd timep_runCmd1 timep_runCmdPath timep_runFuncSrc timep_wtimeALL timep_wTimeCur timep_runType timep_timeFlag timep_TITLE timep_TTY_NR timep_TTY_NR_TEST timep_CLOCK_GETTIME_FLAG timep_TITLE timep_funcName timep_wtimeALL timep_ctimeALL spacerN spacerN0 headerTXT a00 p1w p1c logPathCur jj0 a0 t n wTime cTime wTimeP cTimeP logCurTmp clktck svgCombineInd titlePad subtitlePad logHeader logCurTmp lineOrig tw pw tc pc cnt nd cind cmd wTime0 cTime0 d6 depthCur timep_flameGraphFlag trapAddCur timep_SIGNAL_RELAY_TRAP_STR
    local -gx timep_TMPDIR timep_FD0 timep_FD1 timep_FD2 fd_sleep timep_CPU_TIME_MULT timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX timep_WTIME_CORRECTION timep_CTIME_CORRECTION timep_WTIME_DONE logOut logOutL logOutLL
    local -a pAll_PID timep_outTypeA kkNeed kkNeed0 timep_LOG_DELETE_CUR timep_setupFuncFlags
    local -agx timep_LOG_NAME timep_LOG_NESTING timep_LOG_NESTING_IND

    SECONDS=0

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

    if [[ ${timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT} ]]; then
        timep_flameGraphFlag=true
    else
        timep_flameGraphFlag=false
    fi

    # parse flags

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
            +F|+[Ff]lame|+[+-][Ff]lame|+[+-][Ff]lame[Gg]raph) timep_flameGraphFlag=false  ;;
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
    if [[ ${TIMEP_TMPDIR} ]]; then
        timep_TMPDIR="${TIMEP_TMPDIR}"
        export -n TIMEP_TMPDIR
        unset TIMEP_TMPDIR
        mkdir --mode=700 -p "${timep_TMPDIR}"
    else
         timep_TMPDIR=''
    fi

    # try /dev/shm
    [[ -z "$timep_TMPDIR" ]] && [[ -d /dev/shm ]] && {
        timep_TMPDIR=/dev/shm/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/dev/shm/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir --mode=700 -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $TMPDIR, if set
    [[ -z "$timep_TMPDIR" ]] && [[ "${TMPDIR}" ]] && {
        timep_TMPDIR="${TMPDIR}"/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="${TMPDIR}"/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir --mode=700 -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try /tmp
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR=/tmp/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/tmp/.timep/timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir --mode=700 -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $PWD
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR="$PWD/.timep/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="$PWD/.timep/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir --mode=700 -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
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

    timep_RETURN_TRAP_STR='timep_SKIP_DEBUG_FLAG=true;
timep_TRAP_OPTS=${-//[^eu]/}; ${timep_TRAP_OPTS:+set +}${timep_TRAP_OPTS}
[[ -z ${#FUNCNAME[@]} ]] || (( ${#FUNCNAME[@]} < 1 )) || { 
    unset "timep_FNEST[-1]" "timep_NEXEC_A[-1]" "timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-}]" "timep_NPIPE[${timep_FNEST_CUR:-}]" "timep_STARTTIME[${timep_FNEST_CUR:-}]" "timep_LINENO[${timep_FNEST_CUR:-}]" "timep_LINENO_OFFSET[${timep_FNEST_CUR:-}]"; 
    timep_FUNCNAME_STR="${timep_FUNCNAME_STR%.*}"; 
    timep_FNEST_CUR="${timep_FNEST[-1]:-}"; 
    timep_NEXEC_0="${timep_NEXEC_0%.*}"; 
}; 
${timep_TRAP_OPTS:+set -}${timep_TRAP_OPTS}
timep_SKIP_DEBUG_FLAG=false
'

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

    export -p timep_SIGNAL_RELAY_TRAP_STR &>/dev/null && export -n timep_SIGNAL_RELAY_TRAP_STR

    timep_SIGNAL_RELAY_TRAP_STR='builtin trap - DEBUG EXIT RETURN
if [[ -s "${timep_TMPDIR}/.log/.disableSignalRelay" ]]; then
    builtin trap - SIG%s
    kill -%s "$BASHPID"
else
    builtin trap '"''"' SIG%s
    timep_pidA=()
    jobs -p | { 
        mapfile -t timep_pidA
        (( ${#timep_PIDA[@]} > 0 )) && kill -SIG%s "${timep_pidA[@]}" 2>/dev/null
    }
    builtin trap - SIG%s
    kill -%s "${BASHPID}"
fi'

    export -p timep_DEBUG_TRAP_STR_0 &>/dev/null && export -n timep_DEBUG_TRAP_STR_0
    export -p timep_DEBUG_TRAP_STR_1 &>/dev/null && export -n timep_DEBUG_TRAP_STR_1
    timep_DEBUG_TRAP_STR_0='timep_NPIPE0="${#PIPESTATUS[@]}"
    (( timep_END_TIME = 10#${EPOCHREALTIME//[^0-9]/} ))
    '"${timep_END_CTIME_STR}"

    timep_DEBUG_TRAP_STR_1='timep_TRAP_OPTS=${-//[^eu]/}; ${timep_TRAP_OPTS:+set +}${timep_TRAP_OPTS}; 
[[ "$-" == *m* ]] || { 
    printf '"'"'\nWARNING: timep requires job control to be enabled.\n         Running "set +m" is not allowed!\n         Job control will automatically be re-enabled.\n\n'"'"' >&2; 
    set -m; 
}; 
if (( ${#BASH_COMMAND} > 16384 )); then 
    timep_BASH_COMMAND_CUR="${BASH_COMMAND::16384}"; 
else 
    timep_BASH_COMMAND_CUR="${BASH_COMMAND}"; 
fi; 
timep_FUNCNAME_N="${#FUNCNAME[@]}"; 
: "${timep_FUNCNAME_N:=0}"; 
[[ "${timep_BASH_COMMAND_CUR}" == '"'"'set -'"'"'*m* ]] && echo 1 > "${timep_TMPDIR}/.log/.disableSignalRelay"; 
[[ "${FUNCNAME[0]}" == "trap" ]] && ! ${timep_SKIP_DEBUG_FLAG} && { 
    timep_SKIP_DEBUG_NEXT_FLAG=true; 
}; 
${timep_SKIP_DEBUG_FLAG} || { 
    timep_NPIPE[${timep_FNEST_CUR:-0}]=${timep_NPIPE0}; 
    if (( 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} > 10#0${timep_END_CTIME_SELF} )); then 
        timep_STARTTIME[${timep_FNEST_CUR:-0}]="${timep_STARTTIME[${timep_FNEST_CUR:-0}]%$'"'"'\t'"'"'*}"$'"'"'\t'"'"'"0"; 
    timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]=0; 
    fi; 
    if [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]%% *}" == '"'"'wait'"'"' ]]; then 
        (( timep_END_CTIME = 10#0${timep_STARTTIME[${timep_FNEST_CUR:-0}]#*$'"'"'\t'"'"'} + 10#0${timep_END_CTIME_SELF} - 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} )); 
    fi; 
    timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"; 
    timep_IS_BG_FLAG=false; 
    timep_IS_SUBSHELL_FLAG=false; 
    timep_IS_FUNC_FLAG=false; 
    if ${timep_SIMPLEFORK_NEXT_FLAG}; then 
        timep_SIMPLEFORK_NEXT_FLAG=false; 
        timep_SIMPLEFORK_CUR_FLAG=true; 
    else 
        timep_SIMPLEFORK_CUR_FLAG=false; 
    fi; 
    if ((timep_BASH_SUBSHELL_PREV == BASH_SUBSHELL)); then 
        if ((timep_BG_PID_PREV == $!)); then 
            ((timep_FNEST_CUR >= ${timep_FUNCNAME_N})) || { 
                timep_IS_FUNC_FLAG=true; 
                timep_NO_PRINT_FLAG=true; 
                timep_FNEST+=("${timep_FUNCNAME_N}"); 
            }; 
        else 
            timep_IS_BG_FLAG=true; 
        fi; 
    else 
        timep_IS_SUBSHELL_FLAG=true; 
        printf '"'"'%s\n'"'"' "${timep_ENDTIME}" >>"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"; 
        ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++)); 
        builtin trap '"'${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}'"' EXIT; 
        '
    for nn in INT TERM QUIT HUP; do
        printf -v trapAddCur '%s' "${timep_SIGNAL_RELAY_TRAP_STR//\%s/${nn}}"
        timep_DEBUG_TRAP_STR_1+=$'\n'"builtin trap '${trapAddCur//"'"/"'"'"'"'"'"'"'"}' SIG${nn};"$'\n'
    done
    timep_DEBUG_TRAP_STR_1+=' 
        IFS='"'"' '"'"' read -r _ _ _ _ timep_CHILD_PGID _ _ timep_CHILD_TPID _ </proc/${BASHPID}/stat; 
        ((timep_CHILD_PGID == timep_PARENT_TPID)) || ((timep_CHILD_PGID == timep_CHILD_TPID)) || { ((timep_CHILD_PGID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)); } || timep_IS_BG_FLAG=true; 
    fi; 
    if ${timep_IS_SUBSHELL_FLAG} && ${timep_IS_BG_FLAG}; then 
        ((timep_CHILD_PGID == BASHPID)) && ((timep_CHILD_TPID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)) && timep_SIMPLEFORK_NEXT_FLAG=true; 
        timep_CMD_TYPE="BACKGROUND FORK"; 
    elif ${timep_IS_SUBSHELL_FLAG}; then 
        timep_CMD_TYPE="SUBSHELL"; 
    elif [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]}" == " (F) "* ]]; then 
        timep_CMD_TYPE="FUNCTION (P)"; 
        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]="${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]# (F) }"; 
        timep_IS_BG_FLAG=false; 
    elif ${timep_IS_BG_FLAG}; then 
        timep_CMD_TYPE="SIMPLE FORK"; 
    elif ${timep_IS_FUNC_FLAG_1}; then 
        timep_CMD_TYPE="FUNCTION (C)"; 
        timep_IS_FUNC_FLAG_1=false; 
        [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}] = LINENO - 1 )); 
    else 
        timep_CMD_TYPE="NORMAL COMMAND"; 
    fi; 
    ${timep_LINENO_INIT_FLAG} && { 
        timep_LINENO_INIT_FLAG=false; 
        [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}] = LINENO + 4 )); 
    }; 
    if ${timep_IS_FUNC_FLAG}; then 
        timep_LINENO_0=1; 
    else 
        (( timep_LINENO_0 = LINENO - ${timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}]:-0} )); 
    fi; 
    if [[ -z ${timep_PARENT_PGID0} ]] && [[ -z ${timep_PARENT_TPID0} ]] && (( timep_PARENT_PGID == timep_CHILD_PGID )) && (( timep_PARENT_PGID == timep_PARENT_TPID )) && ! (( timep_PARENT_PGID == timep_CHILD_TPID )); then 
        timep_IS_BG_INDICATOR='"'"'(^)'"'"'; 
    elif (( timep_PARENT_PGID0 == timep_PARENT_TPID0 )) && (( timep_PARENT_PGID == timep_CHILD_PGID )) && (( timep_PARENT_PGID0 == timep_PARENT_PGID )) && (( timep_PARENT_TPID == timep_CHILD_TPID )) && ! (( timep_PARENT_PGID == timep_PARENT_TPID )); then 
        timep_IS_BG_INDICATOR='"'"'(^)'"'"'; 
    else 
        timep_IS_BG_INDICATOR='"''"'; 
    fi; 
    if ${timep_IS_SUBSHELL_FLAG}; then 
        timep_NPIPE[${timep_FNEST_CUR:-0}]=1; 
        timep_NPIDWRAP_PREV_0="${timep_NPIDWRAP}"; 
        ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++)); 
        ((timep_BASH_SUBSHELL_DIFF = BASH_SUBSHELL - timep_BASH_SUBSHELL_PREV)); 
        timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE}): ${timep_BASHPID_PREV} >>"; 
        ((timep_NEXEC_N++)); 
        if ${timep_IS_BG_FLAG} && ((timep_BASH_SUBSHELL_DIFF > 1)); then 
            read -r -u "${timep_LOCK_FD}" _; 
            read -r timep_BG_PID_PREV_0 <"${timep_TMPDIR}/.log/.last_bg_pid"; 
            printf '"'"'%s\n'"'"' "$!" >"${timep_TMPDIR}/.log/.last_bg_pid"; 
            printf '"'"'\n'"'"' >&${timep_LOCK_FD}; 
            timep_BG_PID_PREV_0="-${timep_BG_PID_PREV_0}"; 
        else 
            timep_BG_PID_PREV_0='"''"'; 
        fi; 
        printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"; 
        printf '"'"'1\t%s\t+\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}.0\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_END_CTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}.${BASHPID}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO_0}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${BASH_COMMAND@Q} ${timep_IS_BG_INDICATOR}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"; 
        timep_SUBSHELL_INIT_FLAG=true; 
        timep_CMD_TYPE_PREV_0="${timep_CMD_TYPE}"; 
        timep_BASHPID_PREV_0="${timep_BASHPID_PREV}"; 
        timep_BASHPID_PREV="${BASHPID}"; 
        timep_ENDTIME_PREV_0="${timep_ENDTIME}"; 
        timep_BASH_SUBSHELL_PREV_0="${timep_BASH_SUBSHELL_PREV}"; 
        timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"; 
        timep_PARENT_PGID0="$timep_PARENT_PGID"; 
        timep_PARENT_TPID0="$timep_PARENT_TPID"; 
        timep_PARENT_PGID="$timep_CHILD_PGID"; 
        timep_PARENT_TPID="$timep_CHILD_TPID"; 
    elif ${timep_SUBSHELL_INIT_FLAG}; then 
        timep_SUBSHELL_INIT_FLAG=false; 
        timep_BASHPID_PREV="${timep_BASHPID_PREV_0}"; 
        timep_BASH_SUBSHELL_PREV="${timep_BASH_SUBSHELL_PREV_0}"; 
        ((timep_BASH_SUBSHELL_DIFF--)); 
        timep_BASHPID_ADD=(); 
        timep_BASHPID_ADD_CUR="${BASHPID}"; 
        timep_BASHPID_ADD[$timep_BASH_SUBSHELL_DIFF]="${timep_BASHPID_ADD_CUR}"; 
        while ((timep_BASH_SUBSHELL_DIFF > 0)); do 
            ((timep_BASH_SUBSHELL_DIFF--)); 
            IFS='"'"' '"'"' read -r _ timep_PCOMM _ timep_BASHPID_ADD_CUR _ </proc/${timep_BASHPID_ADD_CUR}/stat; 
            if (( timep_BASHPID_ADD_CUR == timep_BASHPID_PREV )) || (( timep_BASHPID_ADD_CUR <= 1 )); then 
                ((timep_BASH_SUBSHELL_DIFF++)); 
                break; 
            elif [[ "${timep_PCOMM}" == '"'"'(bash)'"'"' ]] && (( timep_BASHPID_ADD_CUR > timep_BASHPID_PREV )); then 
                timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}"; 
            else 
                timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}${timep_BG_PID_PREV_0}"; 
            fi; 
        done; 
        timep_KK="${timep_BASH_SUBSHELL_DIFF}"; 
        unset "timep_BASH_SUBSHELL_DIFF" "timep_BASH_SUBSHELL_DIFF_0"; 
        [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r" ]] && : >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"; 
        [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c" ]] && : >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"; 
        timep_NPIDWRAP="${timep_NPIDWRAP_PREV_0}"; 
        while ((timep_KK < ${#timep_BASHPID_ADD[@]})); do 
            ((timep_BASHPID_ADD[${timep_KK}] < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++)); 
            timep_BASHPID_PREV="${timep_BASHPID_ADD[${timep_KK}]}"; 
            timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE_PREV_0}): ${timep_BASHPID_PREV} >>"; 
            [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s" ]] || printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME_PREV_0}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${timep_BASHPID_PREV}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s"; 
            timep_BASHPID_STR+=".${timep_BASHPID_PREV}"; 
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"; 
            timep_NEXEC_A+=(0); 
            ((timep_BASH_SUBSHELL_PREV++)); 
            ((timep_KK++)); 
        done; 
        timep_BASHPID_PREV="${BASHPID}"; 
        timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"; 
        unset "timep_KK" "timep_BASHPID_ADD" "timep_BASH_COMMAND_PREV_0" "timep_NPIDWRAP_PREV_0" "timep_BASH_COMMAND_PREV_0" "timep_CMD_TYPE_PREV_0" "timep_BASHPID_PREV_0" "timep_ENDTIME_PREV_0" "timep_BASH_SUBSHELL_PREV_0"; 
        ((timep_NEXEC_N++)); 
    fi; 
    if ! ${timep_SUBSHELL_INIT_FLAG} && [[ ${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]} ]]; then 
        ${timep_SIMPLEFORK_CUR_FLAG} && ((BASHPID < $!)) && { 
            timep_IS_BG_FLAG=true; 
            timep_CMD_TYPE="SIMPLE FORK *"; 
        }; 
        ${timep_IS_BG_FLAG} && [[ -z ${timep_IS_BG_INDICATOR} ]] && timep_IS_BG_INDICATOR='"'"'(&)'"'"'; 
        [[ -s "${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}" ]] && { 
            { 
                while read -r -u ${timep_FD_ENDTIME} timep_END_TIME0 timep_END_CTIME0; do 
                    ((${timep_END_TIME0//[^0-9]/} < ${timep_END_TIME//[^0-9]/})) && { 
                        timep_END_TIME="${timep_END_TIME0}"; 
                        timep_END_CTIME="${timep_END_CTIME0}"; 
                    }; 
                done; 
                timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"; 
 
            } {timep_FD_ENDTIME}<"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"; 
            exec {timep_FD_ENDTIME}>&-; 
        }; 
        ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s %s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR:-0}]}" "${timep_STARTTIME[${timep_FNEST_CUR:-0}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]@Q}" "${timep_IS_BG_INDICATOR}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"; 
        ((timep_NEXEC_A[-1]++)); 
        ((timep_NEXEC_N++)); 
    fi; 
    ${timep_IS_FUNC_FLAG} && { 
        timep_FUNCNAME_STR+=".${FUNCNAME[0]}"; 
        timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"; 
        timep_NEXEC_A+=(0); 
        ((timep_NEXEC_N++)); 
        [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]=" (F) << (FUNCTION): ${timep_BASH_COMMAND_CUR} >>"; 
        timep_NPIPE[${timep_FUNCNAME_N}]="1"; 
        timep_FNEST_CUR="${timep_FUNCNAME_N}"; 
        timep_NO_PRINT_FLAG=false; 
        timep_IS_FUNC_FLAG_1=true; 
    }; 
    if (( timep_LINENO_0 < 0 )) && [[ "${timep_BASH_COMMAND_CUR}" == "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]% \(\?\)}" ]]; then 
        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]="${timep_BASH_COMMAND_CUR} "'"'"'(?)'"'"'; 
    else 
        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]="${timep_BASH_COMMAND_CUR}"; 
    fi; 
    timep_LINENO[${timep_FNEST_CUR:-0}]="${timep_LINENO_0}"; 
    timep_BG_PID_PREV="$!"; 
    timep_BASHPID_PREV="$BASHPID"; 
    ${timep_SKIP_DEBUG_NEXT_FLAG} && { 
        timep_SKIP_DEBUG_NEXT_FLAG=false; 
        timep_SKIP_DEBUG_FLAG=true; 
    }; 
    if [[ "$BASH_COMMAND" == exec* ]]; then 
        timep_EXEC_ARG="${BASH_COMMAND#*[[:space:]]}"; 
        timep_EXEC_ARG="${timep_EXEC_ARG%%[[:space:]]*}"; 
        timep_EXEC_ARG="$(type -p "${timep_EXEC_ARG}")"; 
        if [[ -x "${timep_EXEC_ARG}" ]] && { [[ "${timep_EXEC_ARG}" == "${BASH}" ]] || [[ "${timep_EXEC_ARG##*/}" == "bash" ]]; }; then 
            timep_SKIP_DEBUG_FLAG=true; 
            ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR:-0}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${LINENO}" "<< EXEC BASH: ${BASH_COMMAND@Q} >>" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"; 
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR:-0}]="${timep_BASH_COMMAND_CUR}"; 
            timep_FNEST+=("${timep_FUNCNAME_N}"); 
            timep_FUNCNAME_STR+=".exec"; 
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"; 
            timep_NEXEC_A+=(0); 
            ((timep_NEXEC_N++)); 
exec() { 
    export -f timep; 
    local -a cmd0=(); 
    shift 1; 
    while [[ "$1" == '"'"'-'"'"'* ]]; do 
        case "$1" in 
            -o | -O) 
                { [[ "$1" == "-o" ]] && [[ "$2" == "monitor" ]]; } || { [[ "$1" == "-O" ]] && [[ "$2" == "extglob" ]]; } || { [[ "$1" == "-O" ]] && [[ "$2" == "functrace" ]]; } || cmd0+=("$1" "$2"); 
                shift 2; 
                ;; 
            -c | --) 
                shift 1; 
                break; 
                ;; 
            *) 
                [[ "$1" == [+-]m ]] || [[ "$1" == [+-]i ]] || cmd0+=("$1"); 
                shift 1; 
                ;; 
        esac; 
    done; 
    unset exec; 
    if [[ -t 0 ]]; then 
        TIMEP_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}"'"'"' _ "${@}"; 
    else 
        TIMEP_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}" <&0'"'"' _ "${@}"; 
    fi; 
}; 
        fi; 
    fi; 
   '"${timep_START_CTIME_STR}"'; 
 
    (( timep_START_TIME = 10#${EPOCHREALTIME//[^0-9]/} )); 
 
    timep_STARTTIME[${timep_FNEST_CUR:-0}]="${timep_START_TIME}"$'"'"'\t'"'"'"${timep_START_CTIME}"; 
    timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]="${timep_START_CTIME_SELF}"; 
 
    }; 
}; 
${timep_TRAP_OPTS:+set -}${timep_TRAP_OPTS}'

    # overload the trap builtin to allow the use of custom EXIT/RETURN/DEBUG traps

    export -p -f trap &>/dev/null && export -n -f trap

        { printf 'declare -gx timep_SIGNAL_RELAY_TRAP_STR='"'"'%s'"'"'\n\ndeclare -gx timep_EXIT_TRAP_STR='"'"'%s'"'"'\n\ndeclare -gx timep_RETURN_TRAP_STR='"'"'%s'"'"'\n\ndeclare -gx timep_DEBUG_TRAP_STR_0='"'"'%s'"'"'\n\ndeclare -gx timep_DEBUG_TRAP_STR_1='"'"'%s'"'"'\n\n%s\n\n' "${timep_SIGNAL_RELAY_TRAP_STR//"'"/"'"'"'"'"'"'"'"}" "${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}"  "${timep_RETURN_TRAP_STR//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_0//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_1//"'"/"'"'"'"'"'"'"'"}" 'trap() {
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
                case "${1}" in
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
                INT|SIGINT|TERM|SIGTERM|QUIT|SIGQUIT|HUP|SIGHUP)

                    if [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap "${timep_SIGNAL_RELAY_TRAP_STR//\%s/"${trapType#SIG}"}" "${trapType}"
                    else
                        trapStrQ="'"'"'TRAP ("${trapType}"): "${trapStr//"'"'"'"/}"'"'"'"
                        trapStrQ="${trapStrQ//$'"'"'\n'"'"'/\\\$'"'"'\\n'"'"'}"
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ//\;/\\\;}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false
'"'"'"${timep_SIGNAL_RELAY_TRAP_STR//\%s/"${trapType#SIG}"}" "${trapType}"
                    fi
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

    ${timep_CLOCK_GETTIME_FLAG} && { export -f _timep_SETUP; printf '\nexport -f _timep_SETUP\n\n' >> "${timep_TMPDIR}/functions.bash"; }
    chmod +x "${timep_TMPDIR}/functions.bash"
    timep_runFuncSrc+='(

        builtin trap - DEBUG EXIT RETURN

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0 timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_START_CTIME_SELF timep_END_CTIME_SELF timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0 timep_pidCur timep_BASH_COMMAND_CUR timep_FUNCNAME_N timep_LINENO_INIT_FLAG
        declare -a timep_BASH_COMMAND_PREV timep_FNEST timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_LINENO_OFFSET timep_LINENO_OFFSET_PREV timep_BASHPID_ADD timep_START_TIME timep_START_UTIME timep_START_STIME timep_START_CTIME_SELF_A timep_pidA

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
        timep_LINENO_INIT_FLAG=true

        timep_FNEST=("${#FUNCNAME[@]}")
        timep_FNEST_CUR="${#FUNCNAME[@]}"

        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]='"''"'
        timep_NPIPE[${timep_FNEST_CUR}]='"'"'0'"'"'
        timep_STARTTIME[${timep_FNEST_CUR}]="${EPOCHREALTIME}"
'
        for nn in INT TERM QUIT HUP; do
            printf -v trapAddCur '%s' "${timep_SIGNAL_RELAY_TRAP_STR//\%s/${nn}}"
            timep_runFuncSrc+=$'\n'"builtin trap '${trapAddCur//"'"/"'"'"'"'"'"'"'"}' SIG${nn}"$'\n'
        done

        timep_runFuncSrc+='
        builtin trap "${timep_RETURN_TRAP_STR}" RETURN
        builtin trap "${timep_EXIT_TRAP_STR}" EXIT

        (( timep_LINENO[${timep_FNEST_CUR}] = LINENO + 5 ))
        
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

    printf '\ntimep_TMPDIR = %s\n\n' "${timep_TMPDIR}" >&2

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

    printf '\n\nThe %s being time profiled has finished running!\ntimep will now process the logged timing data.\ntimep will save the time profiles it generates in "%s" (+%s)\n\n' "$({ [[ "${timep_runType}" == 's' ]] && echo 'script'; } || { [[ "${timep_runType}" == 'f' ]] &&  echo 'function'; } || echo 'commands')" "${timep_TMPDIR}/profiles" "${SECONDS}" >&2
    unset IFS

    # DEBUG OUTPUT - print log contents
    ${timep_DEBUG_FLAG} && {
        mapfile -t timep_LOG_A < <(printf '%s\n' "${timep_TMPDIR}"/.log/log* | sort -V)
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

# Check if the core 'timep_crc32' builtin was successfully loaded.
# If not, define a fallback.
enable | grep -q 'timep_crc32' || {

if  enable | grep -q 'timep_fnv1a'; then
    # if we somehow onky have the fnv1a builtin, use that one for crc32 too
    timep_crc32() { timep_fnv1a "$@"; }
else
    # FNV1a gets the same fallback. In the cat case, the key becomes unique enough.
    timep_fnv1a () { :; }

    # Check for an external 'crc32' utility as a "good" fallback.
    if type -p crc32 &>/dev/null; then

        timep_crc32() {
            local __var_out
            if [[ "$2" ]]; then
                declare -n __var_out="$2"
                if [[ -z "$1" ]] || [[ "$1" == '-' ]]; then
                    # Capture stdin
                    __var_out="$(crc32 <&0)"
                else
                    # Process file path
                    __var_out="$(crc32 "$1")"
                fi
                declare +n __var_out
            else
                if [[ -z "$1" ]] || [[ "$1" == '-' ]]; then
                    crc32 <&0
                else
                    crc32 "$1"
                fi
            fi
        }

    else
        # If 'crc32' is not found, create a "best-effort" identity
        # function that uses 'cat'. This prevents crashes but will
        # degrade merge accuracy, which is the expected trade-off.
        timep_crc32() {
            local __var_out
            if [[ "$2" ]]; then
                declare -n __var_out="$2"
                if [[ -z "$1" ]] || [[ "$1" == '-' ]]; then
                    # Capture stdin
                    __var_out="$(cat <&0)"
                else
                    # Process file path
                    __var_out="$(cat "$1")"
                fi
                declare +n __var_out
            else
                if [[ -z "$1" ]] || [[ "$1" == '-' ]]; then
                    cat <&0
                else
                    cat "$1"
                fi
            fi
        }
    fi
fi
}

_timep_GET_RUNTIME_CORRECTION() {
## corrects for the overhead of adding nPipe=${#PIPESTATUS[@]} before every command

    local N NN kk a b
    local -a tSum0 tSum1

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

_timep_MERGE_SUM() {

    local -a v1A v2A mult
    local jj v1 v2 var var1 ind1 ind2 divideFlag IFS

    var="${1}"
    ind1="${2:-${linenoUniqMapA[$kk]}}"
    ind2="${3:-$kk}"

    local -n v1="linenoUniq${var^}"
    local -n v2="${var}"

    mapfile -t v1A <<<"${v1[${ind1}]}"

    divideFlag=false
    case "${4}" in

        '+') mapfile -t mult <<<"${countA[$ind2]}" ;;
        '-') divideFlag=true;  mapfile -t mult <<<"${linenoUniqCountA[$ind1]}" ;;
        [0-9]*) for jj in "${!v1A[@]}"; do mult[$jj]="${4}"; done ;;
        *) for jj in "${!v1A[@]}"; do mult[$jj]=1; done ;;
    esac

    (( ${#mult[@]} == 1 )) && for jj in "${!v1A[@]}"; do
        mult[$jj]="${mult[0]}"
    done

    if ${divideFlag}; then
        for jj in "${!v1A[@]}"; do
            (( 10#0${mult[$jj]} == 0 )) && mult[$jj]=1
            (( v1A[$jj] = ( v1A[$jj] + ( mult[$jj] / 2 ) ) / mult[$jj] ))
            [[ ${5} ]] && ((  v1A[$jj] = 10#0${v1A[$jj]//[^0-9]/} > 0 ? 10000 * 10#0${v1A[$jj]//[^0-9]/} / ${5} : 0 ))
        done

    else
         mapfile -t v2A <<<"${v2[${ind2}]}"

        for jj in "${!v1A[@]}"; do
            (( v1A[$jj] = 10#0${v1A[$jj]} + ( 10#0${mult[$jj]} * 10#0${v2A[$jj]} ) ))
        done
    fi

    IFS=$'\n'
    v1[${ind1}]="${v1A[*]}"
    unset IFS

    local +n v1 v2
}

_timep_DEBUG_PRINTVARS() {

declare -p | grep -E '^declare -. ((logCur)|(log_tmp)|(kk)|(kk1)|(nn)|(r)|(wTimeTotal)|(cTimeTotal)|(inPipeFlag)|(lineno1)|(nPipe)|(startWTime)|(endWTime)|(startCTime)|(endCTime)|(wTime)|(cTime)|(wTimeP)|(wTime0)|(cTime0)|(cTimeP)|(func)|(pid)|(nexec)|(lineno)|(cmd)|(t0)|(t1)|(log_tmp)|(linenoUniq)|(merge_init_flag)|(log_dupe_flag)|(spacerN)|(lineU)|(logMergeAll)|(fg0)|(ns)|(nf)|()|(nPipeNextIgnoreFlag)|(IFS0)|(count0)|(nPipe0)|(cmd0)|(d6)|(logA)|(nPipeA)|(startWTimeA)|(endWTimeA)|(wTimeA)|(wTimeTA)|(startCTimeA)|(endCTimeA)|(cTimeA)|(cTimeTA)|(funcA)|(pidA)|(nexecA)|(linenoA)|(cmdA)|(mergeA)|(isPipeA)|(logMergeA)|(linenoUniqA)|(lineUA)|(timeUA)|(sA)|(fA)|(eA)|(fgA)|(normalCmdFlagA)|(linenoUniqLineA)|(linenoUniqCountA)|(linenoUniqWTimeA)|(linenoUniqWTimeTA)|(linenoUniqCTimeA)|(linenoUniqCTimeTA)|(IFS0)|(nn)|(jj)|(kk)|(kk0)|(kk1)|(kkd)|(a)|(a0)|(b)|(u)|(logPathCur)|(nCPU)|(nWorker)|(nWorkerMax)|(REPLY)|(timep_coprocSrc)|(timep_DEBUG_FLAG)|(timep_DEBUG_IDS_FLAG)|(timep_deleteFlag)|(timep_fd_done)|(timep_fd_lock)|(timep_fd_logID)|(timep_flameGraphFlag)|(timep_flameGraphPath)|(timep_LOG_NUM)|(timep_noOutFlag)|(timep_outType)|(timep_PPID)|(timep_PTY_FD_TEST)|(timep_PTY_FLAG)|(timep_PTY_PATH)|(timep_wtimeALL)|(timep_wTimeCur)|(timep_WTIME_DONE)|(timep_timeFlag)|(timep_TITLE)|(timep_CLOCK_GETTIME_FLAG)|(timep_WTIME_CORRECTION)|(timep_CTIME_CORRECTION)|(timep_TMPDIR)|(timep_FD0)|(timep_FD1)|(timep_FD2)|(timep_CPU_TIME_MULT)|(pAll_PID)|(timep_outTypeA)|(kkNeed)|(kkNeed0)|(timep_LOG_NAME)|(timep_LOG_NESTING)|(timep_LOG_NESTING_IND)|(LOG_NESTING_CUR)|(timep_LOG_NESTING_MAX)|(BASH_COMMAND)|(FUNCNAME)|(nRetry)|(nWorker)|(timep_)|(Time)|(.+A))=' | sed -E s/'^declare \-. '//

}

shopt -s extglob

_timep_PROCESS_LOG() {

    local logCur log_tmp kk kk1 kkLast lineno1 nn inPipeFlag nPipe startWTime endWTime startCTime endCTime wTime cTime wTime0 cTime0  func pid nexec lineno cmd t0 t1 log_tmp linenoUniq log_dupe_flag spacerN logMergeAll fg0 ns nf nPipeNextIgnoreFlag IFS IFS0 nPipe0 cmd0 cmd00 d6 wTimeTotal cTimeTotal wTimeP cTimeP nlogA logDepth keyCur mergeInd kkOut jj firstFlag skipNextSimpleTrapFlag
    local -a logA nPipeA wTimeTA cTimeTA funcA pidA nexecA linenoA cmdA mergeA mergeA0 isPipeA logMergeA linenoUniqA sA fA eA fgA normalCmdFlagA startWTimeA endWTimeA startCTimeA endCTimeA wTimeA cTimeA wTimePA cTimePA linenoUniqMapA linenoUniqLineA linenoUniqCountA linenoUniqWTimeA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA linenoUniqWTimeTA linenoUniqCTimeA linenoUniqCTimeTA linenoUniqCmdA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA isMergeIndicatorA mergeCurA mergeCurA0 cmdIndexA linenoUniqNestDiagramA linenoUniqCmdIndexA linenoUniqLinenoA inPipeFlagA
    local -A linenoUniqMapAA

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && {
        trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2' ERR
        set -xv
    }

    logCur="${timep_LOG_NAME[${1}]}"

    [[ -e "${logCur}" ]] || return 1

    inPipeFlag=false
    nPipeNextIgnoreFlag=false
    skipNextSimpleTrapFlag=false

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
            cmd0="${cmdA[$kk1]}"
            cmdA[$kk1]="${logA[$kk]@Q}"
            ((kk1++))
            while { (( linenoA[$kk1] < 0 )) || [[ "${cmdA[$kk1]}" == "${cmd0}" ]]; } && (( kk1 < ${nlogA} )); do
                unset "cmdA[$kk1]"
                unset "nPipeA[$kk1]"
                unset "startWTimeA[$kk1]"
                unset "endWTimeA[$kk1]"
                unset "startCTimeA[$kk1]"
                unset "endCTimeA[$kk1]"
                unset "funcA[$kk1]"
                unset "pidA[$kk1]"
                unset "nexecA[$kk1]"
                unset "linenoA[$kk1]"
                unset "logA[$kk1]"
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
        #cmd="${cmd%*([[:space:]])"'"*}${cmd##*"'"}'"
        [[ "${cmd}" == *"'"' ('[\?\^\&]')' ]] && cmd="${cmd%*([[:space:]])"'"*}${cmd##**([[:space:]])"'"}'"

        cmd="${cmd//"'\\''"/"'"'"'"'"'"'"'"}"
        read -r -d '' cmd < <(eval "printf '%s\0' ${cmd}")
        cmd="${cmd//$'\n'/\$"'"\\n"'"}"
        cmd="${cmd//$'\t'/\$"'"\\t"'"}"
        #cmd="${cmd//\(\&\)/\\\(\\\&\\\)}"
        #cmd="${cmd//\(\^\)/\\\(\\\^\\\)}"
#        if [[ "${cmd%%*([ \t])}" == *\(\^\) ]]; then
#            skipNextSimpleTrapFlag=true
#            cmd="${cmd%%*([ \t])\(\^\)*([ \t])}"
#        elif  ${skipNextSimpleTrapFlag} && [[ "${cmd%%*([ \t])}" == *'(&)' ]]; then
#            skipNextSimpleTrapFlag=false
#            cmd="${cmd%%*([ \t])\(\&\)*([ \t]}"

#        fi

        cmdA[$kk]="${cmd}"

        # deal with issue where for (( ...; ...; ... )) loops inherit previous nPipe
        if ${nPipeNextIgnoreFlag}; then
            nPipe=1
            nPipeA[$kk]=1
            nPipeNextIgnoreFlag=false
            inPipeFlag=false
            inPipeFlagA[$kk]=false
        elif (( nPipeA[$kk] > 1 )) && (( kk > 0 )) && [[ "${cmdA[$kk]//"'"/}" == '(('*[\<\>\=]*'))' ]]; then
            (( kk1 = kk - 1 ))
            IFS=$'\t' read -r nPipe0 _ _ _ _ _ _ _ _ _ cmd0 <<<"${logA[$kk1]}"
            (( nPipe0 > 1 )) && {
                cmd0="${cmd0#@([[:print:]])}"
                cmd0="${cmd0%@([[:print:]])*([[:space:]])}"
                [[ "${cmd0//"'"/}" == '(('*\=*'))' ]] && {
                    nPipe=1
                    nPipeA[$kk]=1
                    nPipeNextIgnoreFlag=true
                    inPipeFlag=false
                    inPipeFlagA[$kk]=false
                }
            }
        fi

        # check if cmd is a subshell/bg fork/function that needs to be merged up
        if [[ "${cmdA[$kk]//"'"/}" == '<< ('*'): '*' >>' ]]; then
            normalCmdFlagA[$kk]=false
            isMergeIndicatorA[$kk]=true

            # record which log to merge up and where
            mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecA[$kk]#* }"

            # read in the endtime + runtime from the log
           # [[ "${cmdA[$kk]//"'"/}" == '<< (BACKGROUND FORK): '*' >>' ]] || {
                if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"; then
                    IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]#* }"
                    [[ ${wTime//[^0-9]/} ]] && wTimeA[$kk]="${wTime}"
                    [[ ${cTime//[^0-9]/} ]] && cTimeA[$kk]="${cTime}"
                fi
          #  }

            cmdA[$kk]="${cmdA[$kk]/#<< \(FUNCTION\): /<< (FUNCTION): "${funcA[$kk]#* }".}"

        else
            normalCmdFlagA[$kk]=true
            isMergeIndicatorA[$kk]=false
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
            ${isMergeIndicatorA[$kk1]} && { isMergeIndicatorA[$kk]=true; mergeA[$kk]+=$'\n'"${mergeA[$kk1]}"; }
            cmdA[$kk]+=" | ${cmdA[$kk1]// \(\&\)/}"
            (( nPipeA[$kk] == 1 )) && inPipeFlag=false
        elif (( nPipeA[$kk] > 1 )); then
            # this is the last element of a pipeline. set flag to indicate this
            inPipeFlag=true
            isPipeA[$kk]=1
        fi
        if ${inPipeFlag}; then
            normalCmdFlagA[$kk]=false
            inPipeFlagA[$kk]=true
        else
            inPipeFlagA[$kk]=false
        fi

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

       ${timep_flameGraphFlag} && ${normalCmdFlagA[$kk]} && ! ${inPipeFlag} && {
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
    kk1=0
    for kk in "${!logA[@]}"; do

        ${inPipeFlagA[$kk]} && continue

        #  write out flamegraph stack trace line for standard commands
        cmd0="${cmdA[$kk]//\;/\,}"
        cmd0="${cmd0::256}" 
        ${normalCmdFlagA[$kk]} && printf '%s%s\t%s\t%s\n' "${fg0}" "${cmd0@Q}" "${wTimeA[$kk]}" "${cTimeA[$kk]}" >>"${logCur%\/*}/out.flamegraph.full.${logDepth}.${1}"

        # add nesting depth to lineno
        if (( kk > 0 )) && [[ "${linenoA[$kk]:-0}" == "${linenoA[$kk1]%%.*}" ]]; then
            (( lineno1 = lineno1 + 1 ))
        else
            lineno1=0
        fi

        linenoA[$kk]="${linenoA[$kk]}.${logDepth}"
        cmdIndexA[$kk]="${lineno1}: "

        nestDiagramA[$kk]='x'
        countA[$kk]=1

        # figure out "percent for current nesting depth" for wall/cpu times
        (( wTimePA[$kk] = wTimeA[$kk] > 0 ? 10000 * wTimeA[$kk] / wTimeTotal : 0 ))
        (( cTimePA[$kk] = cTimeA[$kk] > 0 ? 10000 * cTimeA[$kk] / cTimeTotal : 0 ))

        # record current nesting depth total time
        wTimeTA[$kk]="${wTimeTotal}"
        cTimeTA[$kk]="${cTimeTotal}"


        if ${isMergeIndicatorA[$kk]}; then
            # cmd0 forms the command part of the merge key
            # remove pid from subshell / bg fork merege indicator to alliow subshells to be merged
            cmd0="${cmdA[$kk]/#<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
            cmd0="${cmd0/#<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"
            cmd0="${cmd0/#<< \(FUNCTION\): * >>/<< (FUNCTION) >>}"
            cmd0="${cmd0@Q}"
        
            # merge up log into kk index vars
            mergeA[$kk]="${mergeA[$kk]//+($'\n')/$'\n'}"
            mergeA[$kk]="${mergeA[$kk]#$'\n'}"
            #mergeA[$kk]="${mergeA[$kk]%$'\n'}"
            mapfile -t mergeA0 <<<"${mergeA[$kk]}"
            mergeCurA=()
            for kk1 in "${!mergeA0[@]}"; do
                [[ "${mergeA0[$kk1]}" ]] && [[ -e "${mergeA0[$kk1]}.out.combined" ]] && {
                    mapfile -t mergeCurA0 <"${mergeA0[$kk1]}.out.combined"
                    mergeCurA+=("${mergeCurA0[@]}")
                }
            done

            # append data from each line in all merged up logs to variables at current index ($kk)
            for mergeInd in "${!mergeCurA[@]}"; do
                IFS=$'\t' read -r tw pw tc pc cnt nd lno cind cmd <<<"${mergeCurA[$mergeInd]}"
                { [[ $tw ]] && [[ $pw ]]; } || continue
                wTimeA[$kk]+=$'\n'"${tw:-1}"
                wTimeTA[$kk]+=$'\n'"${pw:-0}"
                cTimeA[$kk]+=$'\n'"${tc:-1}"
                cTimeTA[$kk]+=$'\n'"${pc:-0}"
                countA[$kk]+=$'\n'"${cnt:-1}"
                linenoA[$kk]+=$'\n'"${lno:-0.0}"
                cmdIndexA[$kk]+=$'\n'"${cind:-0}    "
                cmd="${cmd//$'\n'/}"
                cmd="${cmd##+([[:space:]])}"
                cmd="${cmd%%+([[:space:]])}"
                cmdA[$kk]+=$'\n'"${cmd}"

                # pre-pend a box drawing char to represent increase in nesting lvl
                if (( mergeInd == ${#mergeCurA[@]} - 1 )); then
                    nestDiagramA[$kk]+=$'\n''└─ '"${nd//x/}"
                elif (( mergeInd == 0 )); then
                    nestDiagramA[$kk]+=$'\n''├─ '"${nd//x/}"
                else
                    nestDiagramA[$kk]+=$'\n''│  '"${nd//x/}"
                fi

                # hotfix - check if cmd is empty and if cind has non-numeric chars
                # if so, then cind has the command and should be added to the merge key instead of cmd
                [[ -z ${cmd} ]] && [[ ${cind//[0-9]/} ]] && cmd="${cind}"

                # quote and add to merge key
                timep_crc32 '' 'cmd00' <<<"${cmd}"
                cmd0+=$'\n'"${cmd00@Q}"
           done
        else
            timep_crc32 '' 'cmd0' <<<"${cmdA[$kk]}"
            timep_fnv1a '' 'cmd00' <<<"${cmdA[$kk]}"
            cmd0+=".${cmd00}"
        fi

       #(( ${#cmd0} > 65536 )) && cmd0="$(sha512sum <<<"${cmd0}")"

        # generate mapping for all unique "lineno.depth + command + func" groups into the lineno.depth.cmd from the first instanced in that group
        keyCur="${linenoA[$kk]}.${cmd0@Q}.${funcA[$kk]@Q}"

        # get merging key
        if [[ ${linenoUniqMapAA["${keyCur}"]} ]]; then
            linenoUniqMapA[$kk]="${linenoUniqMapAA["${keyCur}"]}"
        else
            linenoUniqA[$kk]="${kk}"
            linenoUniqMapA[$kk]="${kk}"
            linenoUniqMapAA["${keyCur}"]="${kk}"
        fi

        # aggregate the various profile times/metadata from each command in the group at the index(kk) of 1st line in the group
        if [[ ${linenoUniqLineA[${linenoUniqMapA[$kk]}]} ]]; then
            linenoUniqLineA[${linenoUniqMapA[$kk]}]+=" $kk"
            _timep_MERGE_SUM 'wTimeA' "${linenoUniqMapA[$kk]}" "${kk}"
            _timep_MERGE_SUM 'cTimeA' "${linenoUniqMapA[$kk]}" "${kk}"
            _timep_MERGE_SUM 'wTimeTA' "${linenoUniqMapA[$kk]}" "${kk}"
            _timep_MERGE_SUM 'cTimeTA' "${linenoUniqMapA[$kk]}" "${kk}"
            _timep_MERGE_SUM 'countA' "${linenoUniqMapA[$kk]}" "${kk}"
        else
            linenoUniqLineA[${linenoUniqMapA[$kk]}]="$kk"
            linenoUniqCountA[${linenoUniqMapA[$kk]}]="${countA[$kk]:-1}"
            linenoUniqCmdA[${linenoUniqMapA[$kk]}]="${cmdA[$kk]}"
            linenoUniqWTimeA[${linenoUniqMapA[$kk]}]="${wTimeA[$kk]:-0}"
            linenoUniqCTimeA[${linenoUniqMapA[$kk]}]="${cTimeA[$kk]:-1}"
            linenoUniqWTimeTA[${linenoUniqMapA[$kk]}]="${wTimeTA[$kk]:-0}"
            linenoUniqCTimeTA[${linenoUniqMapA[$kk]}]="${cTimeTA[$kk]:-1}"
            linenoUniqNestDiagramA[${linenoUniqMapA[$kk]}]="${nestDiagramA[$kk]:-x}"
            linenoUniqCmdIndexA[${linenoUniqMapA[$kk]}]="${cmdIndexA[$kk]:-0}"
            linenoUniqLinenoA[${linenoUniqMapA[$kk]}]="${linenoA[$kk]:-0.0}"
      fi

        kk1=${kk}
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
            printf -v wTime0 '%0.7d' "${wTimeA[$kk]%%$'\n'*}"
            (( d6 = ${#wTime0} - 6 ))
            printf -v wTime '%s.%s' "${wTime0:0:${d6}}" "${wTime0:${d6}}"
            printf -v cTime0 '%0.7d'  "${cTimeA[$kk]%%$'\n'*}"
            (( d6 = ${#cTime0} - 6 ))
            printf -v cTime '%s.%s' "${cTime0:0:${d6}}" "${cTime0:${d6}}"

            # write line
            printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%|'$'\034''%s'$'\034'')\t(%ss|%s%%|'$'\034''%s'$'\034'')\t%s\t{{ %s | %s | %s }}\twall:(%s->%s) cpu:(%s->%s)' "${linenoA[$kk]%%$'\n'*}" '' "${wTime}" "${wTimePA[$kk]}" "${wTimeA[$kk]%%$'\n'*}" "${cTime}" "${cTimePA[$kk]}" "${cTimeA[$kk]%%$'\n'*}" "${cmdA[$kk]%%$'\n'*}" "${funcA[$kk]}" "${pidA[$kk]}" "${nexecA[$kk]}" "${startWTimeA[$kk]}" "${endWTimeA[$kk]}" "${startCTimeA[$kk]}" "${endCTimeA[$kk]}"

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
        (( logDepth <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n│'

    done >"${logCur}.out"

    # write out new combined (uniq lineno) merged-upward log
    inPipeFlag=false

    mapfile -t wTimeOutCurA < <(printf '%s\n\n' "${linenoUniqWTimeA[@]}")
    mapfile -t wTimeOutCurTA < <(printf '%s\n\n' "${linenoUniqWTimeTA[@]}")
    mapfile -t cTimeOutCurA < <(printf '%s\n\n' "${linenoUniqCTimeA[@]}")
    mapfile -t cTimeOutCurTA < <(printf '%s\n\n' "${linenoUniqCTimeTA[@]}")
    mapfile -t countOutCurA < <(printf '%s\n\n' "${linenoUniqCountA[@]}")
    mapfile -t nestDiagramOutCurA < <(printf '%s\n\n' "${linenoUniqNestDiagramA[@]}")
    mapfile -t linenoOutCurA < <(printf '%s\n\n' "${linenoUniqLinenoA[@]}")
    mapfile -t cmdIndexOutCurA < <(printf '%s\n\n' "${linenoUniqCmdIndexA[@]}")
    mapfile -t cmdOutCurA < <(printf '%s\n\n' "${linenoUniqCmdA[@]}")

    (( kkLast = ${#wTimeOutCurA[@]} - 2 ))
        [[ "${timep_runType}" == 'f' ]] && firstFlag=false
    for kk in "${!wTimeOutCurA[@]}"; do
        #[[ -z ${isPipeA[$kk]} ]] || (( nPipeA[$kk] == 1 )) || continue

        # add line to log
        #(( kk == 0  )) || printf '\n\n'

        #(( linenoUniqCountA[${linenoUniqA[$kk]}] = linenoUniqCountA[${linenoUniqA[$kk]}] ))

        [[ "${nestDiagramOutCurA}" == 'x' ]] && {
            if (( logDepth <= 1 )) && [[ "${timep_runType}" == 'f' ]] && [[ "${nestDiagramOutCurA[$kk]}" == 'x'* ]] ; then
                case "$kk" in
                    $kkLast) printf '└─ \n' ;;
                    0|1) : ;;
                    2) printf '├─ \n' ;;
                    *) printf '│  \n' ;;
                esac
            elif (( logDepth == 0 )); then
                printf '\n'
            fi
        }

        cmd="${cmdOutCurA[$kk]/#<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
        cmd="${cmd/#<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"

        # write line

        printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "${wTimeOutCurA[$kk]}" "${wTimeOutCurTA[$kk]}" "${cTimeOutCurA[$kk]}" "${cTimeOutCurTA[$kk]}" "${countOutCurA[$kk]}" "${nestDiagramOutCurA[$kk]//x/}" "${linenoOutCurA[$kk]}" "${cmdIndexOutCurA[$kk]}" "${cmd}"

        (( kk == kkLast )) && break

    done | grep -vE '^[[:space:]]+:[[:space:]]+$' >"${logCur}.out.combined"

    ${timep_deleteFlag} && [[ ${timep_WORKER_PID} ]] && (( timep_WORKER_PID > 0 )) && printf '%s\n' "${logCur}" "${mergeA[@]/%/.out}" "${mergeA[@]/%/.out.combined}" >"${timep_TMPDIR}/.worker/delete/${timep_WORKER_PID}"

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
    if ${timep_deleteFlag}; then
        mkdir -p "${timep_TMPDIR}/.worker/delete"
    else
        mkdir -p "${timep_TMPDIR}/.worker"
    fi

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
while true; do'$'\n'
${timep_deleteFlag} && timep_coprocSrc+='    : >"${timep_TMPDIR}/.worker/delete/${BASHPID}"'$'\n'
timep_coprocSrc+='    read -r -u "${timep_fd_lock}" _
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
        timep_POSTPROC_DEBUG_FLAG=true '
        ${timep_deleteFlag} && timep_coprocSrc+='timep_WORKER_PID="${BASHPID}" '
timep_coprocSrc+='_timep_PROCESS_LOG "${timep_LOG_NAME[$logID]}" 2>&${timep_FD2}
    else'$'\n'
${timep_deleteFlag} && timep_coprocSrc+='        timep_WORKER_PID="${BASHPID}" '
timep_coprocSrc+='_timep_PROCESS_LOG "${logID}" 2>&${timep_FD2}
    fi
    if (( $? == 0 )); then
        printf '"'"'%s\n'"'"' "${logID}" >&${timep_fd_done}'$'\n'
${timep_deleteFlag} && timep_coprocSrc+='        mapfile -t timep_LOG_DELETE_CUR <"${timep_TMPDIR}/.worker/delete/${BASHPID}"
        (( ${#timep_LOG_DELETE_CUR[@]} > 0 )) && \rm -f "${timep_LOG_DELETE_CUR[@]}"'$'\n'
timep_coprocSrc+='    else
        printf '"'"'-%s\n'"'"' "${logID}" >&${timep_fd_done}
    fi
    : >"${timep_TMPDIR}/.worker/${BASHPID}"
done
\rm -f "${timep_TMPDIR}/.worker/${BASHPID}"'

    # loop through logs from deepest nested upwards and run each through post processing function

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

        printf '\n\nPROCESSING NESTING LVL %s (%s LOGS) -- USING %s WORKERS (MAX: %s) (+%s)\n' "${timep_LOG_NESTING_CUR}" "${kkDiff}" "${nWorker}" "${nWorkerMax}" "${SECONDS}" >&2

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
    printf '\nGETTING TOTAL TIMES (+%s)\n' "${SECONDS}" >&2
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

    timep_LOG_NESTING[0]="${timep_LOG_NESTING[0]%$'\n'}"

     ${timep_flameGraphFlag} && {
        # reverse flamegraph input so it starts at the parent and ends at the depest child
        printf '\nREORDERING FLAMEGRAPH INPUTS (+%s)\n' "${SECONDS}"  >&2
        #echo "$(grep -n '' <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^([0-9]+)\:/\1 /' | sort -nr -k1,1 | sed -E 's/^[0-9]+ //')" >"${timep_TMPDIR}/.log/out.flamegraph.full"
        #mapfile -t flameGraphLogA < <(sort -V "${timep_TMPDIR}"/.log/out.flamegraph.full.*)
        #cat "${flameGraphLogA[@]}" >"${timep_TMPDIR}/.log/out.flamegraph.full"
        cat "${timep_TMPDIR}"/.log/out.flamegraph.full.* >"${timep_TMPDIR}/.log/out.flamegraph.full"

        read -r -u "${fd_sleep}" -t 0.01 _ || :

        # fold flamegraph stack traces
        printf '\nFOLDING FLAMEGRAPH INPUTS (+%s)\n' "${SECONDS}"  >&2
        sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/\1/' <"${timep_TMPDIR}/.log/out.flamegraph.full" | grep -n '' | sort -u -t: -k2 | sort -n -t: -k1,1 | sed -E s/'^[0-9]*://' | while read -r u; do (( tw = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\2/' | sed -zE 's/\n//g') )); (( tc = 0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph.full" | sed -E 's/^(.+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)[[:space:]]*$/+\3/' | sed -zE 's/\n//g') )); printf '%s\t%s\t%s\n' "${u}" "${tw}" "${tc}"; done >"${timep_TMPDIR}/.log/out.flamegraph"

        # copy final outputs to profiles dir

        # for flamegraph.pl inputs - convert times to screen-size-normalized CDF index (to maximize colorspace usage)
        printf '\nGENERATING COLOR MAPPING FOR FLAMEGRAPH INPUTS (+%s)\n' "${SECONDS}" >&2
        for fgCur in "${timep_TMPDIR}/.log/out.flamegraph.full" "${timep_TMPDIR}/.log/out.flamegraph"; do
            _timep_PROCESS_FLAMEGRAPH "${fgCur}" >"${timep_TMPDIR}/profiles/${fgCur##*\/}"
        done
    }

    # copy out.profiles, removing unneeded extra bit on last line of profile (but before the "TOTAL RUNTIME" line
    sed -zE 's/\n\│  ([^\n]+)\n│(\n\n+TOTAL RUN TIME)/\n\└─ \1\2/' <"${timep_LOG_NESTING[0]}.out" >"${timep_TMPDIR}/profiles/out.profile.full"
    sed -zE 's/\n\n\n+/\n\x00/g; s/\n\n/\n/g; s/(\n([0-9]+\t){5})\t/\1/g' <"${timep_LOG_NESTING[0]}.out.combined"  >"${timep_TMPDIR}/profiles/out.profile";

    # get total runtime
    read -r timep_wtimeALL timep_ctimeALL <"${timep_TMPDIR}/.log/.runtimes/${timep_LOG_NESTING[0]##*/}"
    ((timep_wtimeALL = 10#0${timep_wtimeALL//[^0-9]/}))
    ((timep_ctimeALL = 10#0${timep_ctimeALL//[^0-9]/}))

    (( spacerN < 22 )) && spacerN=22

    # add another percentage showing "percent of total runtime" to final outputs
    printf '\n\nGENERATING FINAL PROFILE OUTPUTS (+%s)\n' "${SECONDS}"  >&2

    (( spacerN0 = spacerN > 22 ? spacerN - 22 : 0 ))
    (( spacerNN = spacerN - 1 ))

    logPathCur="${timep_TMPDIR}/profiles/out.profile"

        # split lines into start, time, percent, endr
        logHeader="$(printf -v headerTXT 'LINE.DEPTH.CMD_NUMBER%'"${spacerN0}"'.s\tCOMBINED_WALL-CLOCK_TIME_____     COMBINED_CPU_TIME____________   \tCOMMAND_____________________________' ''
            printf '%s\n<line>.<depth>.<cmd>:%'"${spacerN0}"'.s\t( time | total %% | cur depth %% )  ( time | total %% | cur depth %% )   \t(count) <command>\n%s\n\n' "${headerTXT//_/ }" '' "${headerTXT//[^$'\t']/_}")"

        logFooter="$(grep --text -E '^TOTAL' <"${logPathCur}")"

        logCurTmp="$( {

             while read -r lineOrig; do

                IFS=$'\t' read -r tw Tw tc Tc cnt nd cind cmd <<<"${lineOrig}"

                { [[ $tw ]] && [[ $Tw ]] && [[ $tc ]] && [[ $Tc ]] && [[ $cnt ]]; } || {
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

                # get percent of current depth runtime
                (( pw = (10000 * 10#0${tw//[^0-9]/}) / 10#0${Tw//[^0-9]/} ))
                printf -v pw '%5.3d' "${pw//[^0-9]/}"
                pw="${pw:0:3}.${pw:3}"

                # get percent of current cpu runtime
                (( pc = (10000 * 10#0${tc//[^0-9]/}) / 10#0${Tc//[^0-9]/} ))
                printf -v pc '%5.3d' "${pc//[^0-9]/}"
                pc="${pc:0:3}.${pc:3}"

                # convert times to seconds
                printf -v wTime0 '%0.7d' "${tw}"
                (( d6 = ${#wTime0} - 6 ))
                printf -v tw '%s.%s' "${wTime0:0:${d6}}" "${wTime0:${d6}}"
                printf -v cTime0 '%0.7d'  "${tc}"
                (( d6 = ${#cTime0} - 6 ))
                printf -v tc '%s.%s' "${cTime0:0:${d6}}" "${cTime0:${d6}}"

                depthCur="${nd##*.}"

                a0="${nd}.${cind%%*([[:space:]])}"

                a00="${a0%%?( )?(-)?("'")[0-9\.]*}";

                [[ "${timep_runType}" == 'f' ]] && {
                    a00="${a00#*+([─├│└])+( )*( )}"
                    [[ "${a0}" == [├└]─* ]] && a00="${a00#[├└]─}"
                }

                (( spacerN0 = spacerN -${#a0} ))

                [[ "${timep_runType}" == 'f' ]] && {
                    [[ ${a00} ]] || printf '│\n'$'\034'
                }

                if  { { [[ "${timep_runType}" == 'f' ]] && (( depthCur <= 1 )); } || (( depthCur == 0 )); } && { [[ ${pw##*( )} == '0.00' ]] || [[ "${pw##*( )}" == "${p1w##*( )}" ]]; } &&  { [[ ${pc##*( )} == '0.00' ]] || [[ "${pc##*( )}" == "${p1c##*( )}" ]]; }; then
                    printf '%s%'"${spacerN0}"'.0s \t( %ss |%s%% )            ( %ss |%s%% )             \t(%sx)\t%s%s\n' "${a0}" '' "${tw}"  "${pw}" "${tc}" "${pc}" "${cnt}" "${a00}" "${cmd}"
                else
                    printf '%s%'"${spacerN0}"'.0s \t( %ss |%s%% |%s%% )   ( %ss |%s%% |%s%% )    \t(%sx)\t%s%s\n' "${a0}" '' "${tw}" "${p1w}" "${pw}" "${tc}" "${p1c}" "${pc}" "${cnt}" "${a00}" "${cmd}"
                fi

            done <"${logPathCur}"
        })"
        logFooter="TOTAL RUN${logCurTmp##*$'\n'TOTAL RUN}"
        # resort the final output by lineno. keep records together by using sort -z and adding NULs between records. for functions temporairly relocate the box drawing characters to the endof the line, then sort, then move them back.
        if [[ "${timep_runType}" == 'f' ]]; then
            mapfile -t -d '' logOut < <(sed -E s/'^([^0-9][^0-9]?[^0-9]?)(.*)?$/\2'$'\034''\1/; s/^[^0-9 ]{,3}$/\x00/' <<<"${logCurTmp%%$'\n'TOTAL RUN*}" | sort -z -V -k1,1 | sed -E 's/^[^0-9 ]{,3}$/│/; s/^(.*)'$'\034''(.*)$/\2\1/; s/^\└─/│ /; ' | sed -zE 's/\n. ([^\n]+)\n.$/\n└─\1/; s/^.\n//; s/\n.\n/\n/')
        else
            mapfile -t -d '' logOut < <(sed -zE 's/\n([0-9])/\x00\1/g' <<<"${logCurTmp%%$'\n'TOTAL RUN*}"  | sort -z -V -k1,1 | sed -zE 's/\n\n/\n\n\x00/g')
        fi
        logOutL=("${logOut[@]%%\.*}")
        logOutLL=("${logOutL[@]:1}")
        for (( kk=0; kk<${#logOut[@]}-2; kk++ )); do
            [[ "${logOutL[$kk]}" == "${logOutLL[$kk]}" ]] || logOut[$kk]+=$'\n'
        done
        logOut[-1]=$'\n\n'"${logOut[-1]}"

        logOutF0="$({
            echo "${logHeader}";
            if [[ "${timep_runType}" == 'f' ]]; then
                printf '%s' "${logOut[@]}" #| sed -zE 's/\n\n/\n\x00/g; s/^(.*)'$'\034''([^'$'\034'']+)$/\2\1\n/g'

            else
                printf '%s' "${logOut[@]#$'\n'}"
            fi
            printf '\n\n%s\n' "${logFooter}"
        }  | sed -zE 's/\n\n\n+/\n\n/g')"

        # removed the incorrect '(&) marks from commands that have 1+ commands indicated with '(^)' in the same grouping
        # these correspond to process substitutions that timep initially thinks are simple forks.

        # timep identifies these, but not until the commands that occur after the (&) is logged. So we need to remove those spurious marks here.

        # sometimes there are multiple (^) lines indicating a single (&) line. remove all but the first (^) symbols
        logOutF="$(sed -zE 's/(\(\^\)[ \t]*\n([^\n]*[^\(][^\^][^\)][ \t]*\n)*[^\n]*)\(\^\)[ \t]*./\1\n/g' <<<"${logOutF0}")"
        until [[ "${logOutF}" == "${logOutF0}" ]]; do
            logOutF0="${logOutF}"
            logOutF="$(sed -zE 's/(\(\^\)[ \t]*\n([^\n]*[^\(][^\^][^\)][ \t]*\n)*[^\n]*)\(\^\)[ \t]*./\1\n/g' <<<"${logOutF0}")"
        done

        # remove the (^) indicator and the corresponding (&)
        sed -zE 's/\(\&\)[ \t]*(\n([^\n]*[^\(][^\^][^\)\n][ \t]*\n)*[^\n]*)[ \t]*\(\^\)[ \t]*/\1/g' <<<"${logOutF}" >"${logPathCur}"

        logPathCur="${timep_TMPDIR}/profiles/out.profile.full"

        logCurTmp="$(while read -r lineOrig; do

        IFS=$'\034' read -r a0 tw a1 tc a2 <<<"${lineOrig}"

        { [[ ${tw} ]] && [[ ${tc} ]]; } || continue

        (( p1w = (10000 * 10#0${tw//[^0-9]/}) / timep_wtimeALL ))
        printf -v p1w '%5.3d' "${p1w//[^0-9]/}"
        p1w="${p1w:0:3}.${p1w:3}"

        # get percent of total cpu time
        (( p1c = (10000 * 10#0${tc//[^0-9]/}) / timep_ctimeALL ))
        printf -v p1c '%5.3d' "${p1c//[^0-9]/}"
        p1c="${p1c:0:3}.${p1c:3}"

        printf '%s%s%%%s%s%%%s\n' "${a0}" "${p1w#* }" "${a1}" "${p1c#* }" "${a2}"

    done <"${logPathCur}")"
    echo "${logCurTmp}" >"${logPathCur}"

    # if '--flame' flag given create flamegraphs
    ${timep_flameGraphFlag} && {
        printf '\nGENERATING FLAMEGRAPHS (+%s)\n' "${SECONDS}"  >&2

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

            printf '\nCOMBINING FLAMEGRAPHS INTO VERTICALLY STACKED SVG IMAGES (+%s)\n' "${SECONDS}"  >&2

            svgCombineInd=0

            _timep_COMBINE_FLAMEGRAPH --type="f" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg"
            _timep_COMBINE_FLAMEGRAPH --type="F" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg"

            _timep_COMBINE_FLAMEGRAPH --type="w" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg"
            _timep_COMBINE_FLAMEGRAPH --type="c" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg"

            _timep_COMBINE_FLAMEGRAPH --type="fF" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.svg"
            _timep_COMBINE_FLAMEGRAPH --type="wc"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.R.svg"

            type -p ln &>/dev/null && {
                ln "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.svg" "${timep_TMPDIR}/profiles/flamegraph.ALL.svg"
                ln "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.R.svg" "${timep_TMPDIR}/profiles/flamegraph.ALL.R.svg"
            }

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

    ${timep_deleteFlag} && [[ ${timep_TMPDIR} ]] && {
        [[ -d  "${timep_TMPDIR}"/.log ]] && \rm -rf  "${timep_TMPDIR}"/.log
        [[ -d  "${timep_TMPDIR}"/.worker ]] && \rm -rf  "${timep_TMPDIR}"/.worker
        for nn in "${timep_TMPDIR}"/*; do
            [[ -f "$nn" ]] && \rm -f "$nn"
        done
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    [[ -L ./timep.profiles ]] && \rm -f ./timep.profiles 2>/dev/null
    printf '\n\nTHE PROFILE HAS FINISHED PROCESSING! (+%s)\nAll profiles can be found at "%s"' "${SECONDS}" "${timep_TMPDIR}/profiles" >&2
    type -p ln &>/dev/null && ln -sf "${timep_TMPDIR}/profiles" ./timep.profiles 2>/dev/null && printf ' or accessed via the symlink "./timep.profiles"' >&2
    ${timep_flameGraphFlag} && [[ "${timep_flameGraphPath}" ]] && printf '\nAll flamegraphs can be found in the "flamegraphs" sub-directory ("%s")' "${timep_TMPDIR}/profiles/flamegraphs"  >&2
    printf '\n\n'  >&2

    ) {timep_FD0}<&0 {timep_FD1}>&1 {timep_FD2}>&2 {fd_sleep}<><(:)
}

_timep_SETUP() {
    local -a filePathA

    local ARCH t tt k kk timep_git_branch outDir filePath fileCur downloadFlag localFlag gotFlamegraphFlag gotLoadableFlag b b0 doneFlag extglobState supportedArchFlag b64

    if shopt extglob | grep -qE 'off$'; then
        extglobState='-u'
    else
        extglobState='-s'
    fi
    shopt -s extglob

    [[ "${FUNCNAME[1]}" == 'timep' ]] || local timep_flameGraphPath

    downloadFlag=false
    localFlag=false

    forceFlag=false
    outDir="/dev/shm/.timep/lib/${USER}-${EUID}"

    # parse inputs
    while true; do

        case "${1}" in

            -d|--download*) case "${1}" in
                -d|--download) downloadFlag=true; localFlag=true; timep_git_branch='main'  ;;
                -dlocal|--download=local)  downloadFlag=true; localFlag=true  ;;
                -d*local*|--download=*local*) downloadFlag=true; localFlag=true;  timep_git_branch="${1#*=}"; timep_git_branch="${timep_git_branch//?(\,)local?(\,)/}"; timep_git_branch="${timep_git_branch//[\"\']/}"  ;;
                -d*|--download=*) downloadFlag=true;  localFlag=false; timep_git_branch="${1#*=}"  ;;
            esac  ;;
            -o|--out=|--output=|--outdir=|--outputdir=)  outDir="${1#*=}"  ;;
            -f|--force) forceFlag=true  ;;
            *)  break  ;;
        esac
        shift 1

    done

    gotFlamegraphFlag=false
    gotLoadableFlag=false

    # create required dirs
    mkdir --mode=1777 -p "/dev/shm/.timep"
    mkdir --mode=1777 -p "/dev/shm/.timep/lib"
    mkdir --mode=700 -p "${outDir}"

    # add to PATH and BASH_LOADABLES_PATH
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
        # see if the files are available locallly
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
                        enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a && [[ $(getCPUtime) ]] && [[ $(timep_crc32 '' <<<"${RANDOM}") ]] && [[ $(timep_fnv1a '' <<<"${RANDOM}") ]] && gotLoadableFlag=true
                    fi
                }
            fi
        done
    fi

    if ${downloadFlag} && ! { ${gotFlamegraphFlag} && ${gotLoadableFlag}; }; then
        # try to download the files
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
                enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a && [[ $(getCPUtime) ]] && [[ $(timep_crc32 '' <<<"${RANDOM}") ]] && [[ $(timep_fnv1a '' <<<"${RANDOM}") ]] && gotLoadableFlag=true
            fi
        }
    fi

    if ${forceFlag} || ! { ${gotFlamegraphFlag} && ${gotLoadableFlag}; }; then
        # use the versions built into theis time.bash file

        # note: this base64 binary blob is generatred by using _timep_base64_to_file  on the arch-specific compiled shared .so file for the builtin.
        # passing this blob to the stdin of _timep_base64_to_file <path> will restore the original .so file (needed for the loadable builtin to get cpu time with getCPUtime) at <path>.
        # the .so file, source code and compile instructions are all available in the "timep" repo on github (https://github.com/jkool702/timep) at LOADABLES/SRC/timep.c.
        # The compiled .so file that this binary blob re-creates is avaiilable in the repo at LIB/LOADABLES/BIN/$ARCH/timep.so. timep_flamegraph is available at LIB/timep_flamegraph.so.
        # Note: these base64 blobs have been compressed. The information needed to decompress them is built into the start of the blob, as are the sha256 and md5 checksums for the original .so file

        { ! ${forceFlag} && ${gotLoadableFlag}; } || "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

        { ! ${forceFlag} && ${gotFlamegraphFlag}; } || "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"
        chmod +x "${outDir}"/timep{.so,_flamegraph.pl}

        enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a
    fi

     shopt ${extglobState} extglob
}


_timep_base64_to_file() {
    local b b0 b1 k kk fd0 fd1 out0 out outC outN outF outB outFile nnSum noVerifyFlag doneFlag IFS extglobState
    local -a compressV compressI outA
    local -x LC_ALL=C

    # parse options
    if shopt extglob | grep -qE 'off$'; then
        extglobState='-u'
    else
        extglobState='-s'
    fi
    shopt -s extglob

    [[ -t 0 ]] && {
        printf '\nERROR: pass the base64-encoded sequence on stdin. ABORTING.\n'  >&2
        return 1
    }

    # determine if we are outputting to stout or to a file
    exec {fd0}<&0
    if (( $# > 0 )); then
        [[ -f "$1" ]] && { \rm -f "$1" || return 1; }
        outFile="$1"
        : >"${outFile}"
        exec {fd1}>"${outFile}"
    else
        exec {fd1}>&1
    fi

    # read dataheader and data
    read -r -d $'\034' -u "${fd0}" out0
    read -r -d '' -u "${fd0}" out
    exec {fd0}>&-

    if [[ -z ${out} ]]; then
        # if data header is mising then the base64 may have been made with standard base64 decoding. attempt to work with this.
        out="${out0}"
        grep -F '+' <<<"${out}" | grep -qF '/' && { base64 -d <<<"${out}" >&$fd1; return; }
        noVerifyFlag=true
        outN=0
        outF=''
        nnSum=0
    else
        # parse the data header to get various parameters
        noVerifyFlag=false
        {
            read -r outN outB
            read -r nnSum_md5
            read -r nnSum_sha256
            mapfile -t compressV

        } <<<"${out0}"

        # determine checksum to use. prefer sha256
        if type -p sha256sum &>/dev/null; then
            nnSum="${nnSum_sha256}"
        elif type -p md5sum &>/dev/null; then
            nnSum="${nnSum_md5}"
        else
            noVerifyFlag=true
        fi

        # restore full base64 sequence
        (( ${#compressV[@]} > 0 )) && {
            compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')

            for (( kk=${#compressV[@]}-1; kk>=0; kk-- )); do
                out="${out//"${compressI[$kk]}"/"${compressV[$kk]}"}"
            done
        }
    fi

    # recreate binary from base64 sequence
    # this generates outF which is a string that contains the hex values formatted like: \x00\xFF\x9A\x...'
    # printf '%b' then will write out the binary data using that string
    while read -r -N 4 b0; do
        b0="${b0%%*([^0-9a-zA-Z@_])$'\n'}"

        [[ ${b0} ]] || break
        (( b1 = 64#0${b0}))

        if ((outN < 6 )); then
            printf -v b '%0.'"${outN}"'X' "${b1}"
            b="${b:0:${outN}}"
        else
            printf -v b '%0.6X' "${b1}"
        fi
        (( outN = outN - ${#b} ))
        printf -v outC '\\x%s' ${b:0:2} ${b:2:2} ${b:4}
        printf -v outC '%s' "${outC%%*(\\x)}"
        outF+="${outC}"
        ((outN <= 0 )) && break
    done <<<"${out}"

    printf '%b' "${outF}" >&"${fd1}"
    exec {fd1}>&-

    # verify output file and make it executable
    if [[ ${outFile} ]] && [[ -e "${outFile}" ]]; then
        chmod +x "${outFile}"
        (( outB > 0 )) && type -p truncate &>/dev/null && truncate --size="${outB}" "${outFile}"
        ${noVerifyFlag} || [[ "${nnSum}" == '0' ]] || { nnSumF="$("${nnSum%%\:*}" "${outFile}")"; nnSumF="${nnSumF%% *}"; grep -qF "${nnSum#*\:}" <<<"${nnSumF}" || { printf '\n\nWARNING FOR EXTRACTED LOADABLE:\n"%s"\n\nCHECKSUM DOES NOT MATCH EXPECTED VALUE!!!\nDO NOT CONTINUE UNLESS THIS WAS EXPECTED!!!\n\nEXPECTED: %s\nGOT: %s\n\nTHIS CODE WILL NOW REMOVE THE EXTRACTTED .SO FILE AND ABORT\nTO FORCE KEEPING THE [POTENTIALLY CORRUPT] .SO FILE, RE-RUN THIS CODE WITH THE "--force" FLAG'  "${outFile:-\(STDOUT\)}" "${nnSum}" "${nnSumF}" >&2; read -r -u ${fd_sleep} -t 2; \rm -f "${outFile}"; return 1; }; };
    elif ! { ${noVerifyFlag} || [[ "${nnSum}" == '0' ]]; }; then
        nnSumF="$("${nnSum%%\:*}" <(printf '%b' "${outF}"))"; nnSumF="${nnSumF%% *}"; grep -qF "${nnSum#*\:}" <<<"${nnSumF}" || { printf '\n\nWARNING FOR EXTRACTED LOADABLE:\n"%s"\n\nCHECKSUM DOES NOT MATCH EXPECTED VALUE!!!\nDO NOT CONTINUE UNLESS THIS WAS EXPECTED!!!\n\nEXPECTED: %s\nGOT: %s\n\nTHIS CODE WILL NOW REMOVE THE EXTRACTTED .SO FILE AND ABORT\nTO FORCE KEEPING THE [POTENTIALLY CORRUPT] .SO FILE, RE-RUN THIS CODE WITH THE "--force" FLAG'  "${outFile:-\(STDOUT\)}" "${nnSum}" "${nnSumF}" >&2; read -r -u ${fd_sleep} -t 2; \rm -f "${outFile}"; return 1; };
    fi

    { (( ${#FUNCNAME[@]} > 1 )) && [[ "${FUNCCNAME[1]}" == 'timep' ]]; } || shopt ${extglobState} extglob
}


_timep_file_to_base64() {

    local nn kk kk0 k1 k2 out out0 outF outN v1 v2 nnSum hexProg quoteFlag noCompressFlag IFS IFS0

    local -a charmap compressI compressV outA nnSumA
    local -x LC_ALL=C

    if shopt extglob | grep -qE 'off$'; then
        extglobState='-u'
    else
        extglobState='-s'
    fi
    shopt -s extglob
    # parse inputs

    quoteFlag=false
    noCompressFlag=false

    while true; do
        case "${1}" in
            -q|--quote)
                quoteFlag=true
                shift 1
            ;;
            -n|-nc|--no-compress|--no-compression)
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

    # define char mapping array that convero 0-63 --> [0-9][a-z][A-Z]@_ (bash 64# chars)
    charmap=($(printf '%s ' {0..9} {a..z} {A..Z} '@' '_'))
    outN=0
    outA=()

    # to dump the binary as ascii hexidecimals , we need od or hexdump
    if type -p od &>/dev/null; then
        hexProg='od -x'

    elif type -p hexdump &>/dev/null; then
        hexProg='hexdump'
    else
        return 1
    fi

    # map each 12-bit segment (3x ascii hex chars, each representing 4 bits of data) into 2 base64 ascii chars (each representing 6 bits of data)
    while read -r -N 3 nn; do
        nn="${nn%$'\n'}"
        (( outN = outN + ${#nn} ))
        until (( ${#nn} == 3 )); do
            nn="${nn}"'0'
        done
        (( k1 = ( 16#${nn} >> 6 ) ));
        (( k2 = ( 16#${nn} % 64 ) ));
        outA+=("${charmap[$k1]}" "${charmap[$k2]}")
  done < <(${hexProg} -v <"${1}" | head -n -1 | sed -E 's/^[0-9a-f]+[[:space:]]+//; s/([0-9a-f]{2})([0-9a-f]{2})/\2\1/g; s/[[:space:]]//g' | sed -zE 's/\n//g');

    IFS=
    out="${outA[*]}"
    unset IFS

    (( outN = ( outN >> 1 ) << 1 ))

    # get orig file size
    if type -p stat &>/dev/null; then
        outB="$(stat -c %s "$1")"
    elif type -p wc &>/dev/null; then
        outB="$(wc -c <"$1")"
    else
        outB=0
    fi

    # embed checksums
    if type -p md5sum &>/dev/null; then
        nnSum="$(md5sum "$1")"
        nnSumA[0]="${nnSum%%[ \t]*}"
        nnSumA[0]='md5sum:'"${nnSumA[0]}"
    else
        nnSumA[0]=0
    fi
    if type -p sha256sum &>/dev/null; then
        nnSum="$(sha256sum "$1")"
        nnSumA[1]="${nnSum%%[ \t]*}"
        nnSumA[1]='sha256sum:'"${nnSumA[1]}"
    else
        nnSumA[1]=0
    fi

    # compress base64 and assemble the header
    if ${noCompressFlag}; then
        printf -v out0 '%s\n' "${outN} ${outB}" "${nnSumA[@]}"
    else
        # initial compression run
        compressI=('~' '`' '!' '#' '$' '%' '^' '&' '*' '(' ')' '-' '+' '=' '{' '[' '}' ']' ':' ';' '<' ',' '>' '.' '?' '/' '|')
        mapfile -t compressV < <(sed -E 's/(00+)(([^0]+0?[^0]+)*)/\1\n\2/g; s/([^0]+)/\1\n/g' <<<"${out}" | grep -E '..' | sort | uniq -c | sed -E 's/^[ \t]+//' | grep -vE '^1 ' | sort -nr -k1,1 | while read -r v1 v2; do (( v0 = v1 * ${#v2} - v1 - ${#v2} )); printf '%s %s %s %s\n' "$v0" "${#v2}" "$v1" "$v2"; done | grep -vE '^-' | sort -nr -k 1,1 | head -n 25 | sort -nr -k2,2 | sed -E 's/^([0-9]+ ){3}//')
        for kk in "${!compressV[@]}"; do
            out="${out//"${compressV[$kk]}"/"${compressI[$kk]}"}"
        done
        # 2 final compression runs where we re-generate the list of possible replacements and expand it to also look for simple repeated chars (with a limit of a maximum of 32 chars)
        for kk0 in 1 2; do
            ((kk++))
            compressV[$kk]="$({ sed -E 's/(00+)(([^0]+0?[^0]+)*)/\1\n\2/g; s/([^0]+)/\1\n/g' <<<"${out}" | grep -E '..' | sort | uniq -c | sed -E 's/^[ \t]+//'; { read -r -N 1 y; while read -r -N 1 x; do if [[ "$x" == "${y: -1}" ]]; then y+="$x"; else echo "$y"; read -r -N 1 y; fi; done; } <<<"${out}" | grep -E '..' | sort | uniq -c| sed -E 's/^[ \t]+//' | while read -r v1 v2; do if ((${#v2} > 32 )); then (( v1 = v1 * ( ${#v2} / 32 ) )); v2="${v2:0:32}"; fi; printf '%s %s\n' "$v1" "$v2"; done } | grep -vE '^1 '   | sort -nr -k1,1 | while read -r v1 v2; do (( v0 = v1 * ${#v2} - v1 - ${#v2} )); printf '%s %s %s %s\n' "$v0" "${#v2}" "$v1" "$v2"; done | grep -vE '^-' | sort -nr -k 1,1 | head -n 1 | sed -E 's/^([0-9]+ ){3}//')"
            out="${out//"${compressV[$kk]}"/"${compressI[$kk]}"}"
        done

        printf -v out0 '%s\n' "${outN} ${outB}" "${nnSumA[@]}" "${compressV[@]}"
    fi

    # combine header and base64
    printf -v outF '%s'$'\034''%s' "${out0%$'\n'}" "${out}"

    # print output, optionally quoted
    if ${quoteFlag}; then
        printf '%s' "${outF@Q}"
    else
        printf '%s' "${outF}"
    fi

    { (( ${#FUNCNAME[@]} > 1 )) && [[ "${FUNCCNAME[1]}" == *'timep'* ]]; } || shopt ${extglobState} extglob
}

# Fallback for head -n N and head -n -N
if ! type -p head >/dev/null; then
head() {
    local -a A A1
    local n kk
    if (( $# == 0 )); then
      mapfile -t -n 20 A
    else
      [[ $1 == -n ]] && shift 1
      case $1 in
         [0-9]*)  n=$1; mapfile -t -n "$n" A ;;
        -[0-9]*)

            n=${1#-};

            (( kk = n < 20 ? 20 : n ));

            mapfile -t -n $kk A;

            (( ${#A[@]} >= n )) && while true; do
                mapfile -t -n $kk A1

                if (( ${#A1[@]} < kk )); then
                    A=("${A[@]}" "${A1[@]}")
                    break
                else
                    printf '%s\n' "${A[@]}"
                fi
                mapfile -t -n $kk A
                if (( ${#A[@]} < kk )); then
                    A=("${A1[@]}" "${A[@]}")
                    break
                else
                    printf '%s\n' "${A1[@]}"
                fi

            done
            if (( ( ${#A[@]} - n ) >= 0 )); then
                A=("${A[@]:0:${#A[@]}-n}")
            else
                return 0
            fi

        ;;
        *) return 1 ;;
      esac
    fi
    printf '%s\n' "${A[@]}"
}
fi

# Fallback for tail -n N and tail -n +N
if ! type -p tail >/dev/null; then
tail() {
    local -a A A1
    local n kk
    if (( $# == 0 )); then
        n=20
    else
      [[ $1 == -n ]] && shift 1
      case $1 in
        +[0-9]*)  (( n = ${1#+} - 1 ));  mapfile -t -n $n _; mapfile -t A; printf '%s\n' "${A[@]}"; return 0  ;;
         [0-9]*)  n=$1 ;;
         *) return 1  ;;
      esac

    fi
    (( kk = n < 20 ? 20 : n ));

    mapfile -t -n $kk A;

    (( ${#A[@]} >= n )) && while true; do
        mapfile -t -n $kk A1

        if (( ${#A1[@]} < kk )); then
            A=("${A[@]}" "${A1[@]}")
            break
        else
            printf '%s\n' "${A[@]}"
        fi
        mapfile -t -n $kk A
        if (( ${#A[@]} < kk )); then
            A=("${A1[@]}" "${A[@]}")
            break
        else
            printf '%s\n' "${A1[@]}"
        fi

    done
    (( ( ${#A[@]} - n ) >= 0 )) && A=("${A[@]:${#A[@]}-n}") ;
    printf '%s\n' "${A[@]}"
}
fi

# install script to reset the flamegraph script and the timep.so file to the default versions present embedded in this file

mkdir --mode=1777 -p "/dev/shm/.timep"
mkdir --mode=1777 -p "/dev/shm/.timep/lib"
mkdir --mode=700 -p "/dev/shm/.timep/lib/${USER}-${EUID}"

[[ -f "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash" ]] && chmod +w "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash" 
[[ -f "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash" ]] && chmod +w  "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

cat<<'EEEOOOFFF' >"/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"
#!/usr/bin/env bash

# regenerate timep_flamegraph.pl
printf '%s' $'#!/usr/bin/perl -w\n\nuse strict;\n\nuse Getopt::Long;\n\nuse open qw(:std :utf8);\n\nmy $encoding;\nmy $fonttype = "Verdana";\nmy $imagewidth = 1200;          # max width, pixels\nmy $frameheight = 16;           # max height is dynamic\nmy $fontsize = 12;              # base text size\nmy $fontwidth = 0.59;           # avg width relative to fontsize\nmy $minwidth = 0.1;             # min function width, pixels or percentage of time\nmy $nametype = "Function:";     # what are the names in the data?\nmy $countname = "samples";      # what are the counts in the data?\nmy $colors = "hot";             # color theme\nmy $bgcolors = "";              # background color theme\nmy $nameattrfile;               # file holding function attributes\nmy $timemax;                    # (override the) sum of the counts\nmy $factor = 1;                 # factor to scale counts by\nmy $hash = 0;                   # color by function name\nmy $rand = 0;                   # color randomly\nmy $palette = 0;                # if we use consistent palettes (default off)\nmy %palette_map;                # palette map hash\nmy $pal_file = "palette.map";   # palette map file name\nmy $stackreverse = 0;           # reverse stack order, switching merge end\nmy $inverted = 0;               # icicle graph\nmy $flamechart = 0;             # produce a flame chart (sort by time, do not merge stacks)\nmy $negate = 0;                 # switch differential hues\nmy $colortime;                                  # maps primary (v1) color channel to index defined in the stack traces\nmy $titletext = "";             # centered heading\nmy $titledefault = "Flame Graph";       # overwritten by --title\nmy $titleinverted = "Icicle Graph";     #   "    "\nmy $searchcolor = "rgb(230,0,230)";     # color for search highlighting\nmy $notestext = "";             # embedded notes in SVG\nmy $subtitletext = "";          # second level title (optional)\nmy $help = 0;\n\nsub usage {\n        die <<USAGE_END;\nUSAGE: $0 [options] infile > outfile.svg\\n\n        --title TEXT     # change title text\n        --subtitle TEXT  # second level title (optional)\n        --width NUM      # width of image (default 1200)\n        --height NUM     # height of each frame (default 16)\n        --minwidth NUM   # omit smaller functions. In pixels or use "%" for\n        --fonttype FONT  # font type (default "Verdana")\n        --fontsize NUM   # font size (default 12)\n        --countname TEXT # count type label (default "samples")\n        --nametype TEXT  # name type label (default "Function:")\n        --colors PALETTE # set color palette. choices are: hot (default), mem,\n        --bgcolors COLOR # set background colors. gradient choices are yellow\n        --hash           # colors are keyed by function name hash\n        --random         # colors are randomly generated\n        --time           # colors are determined from sample counts (time spent per-function)\n        --cp             # use consistent palette (palette.map)\n        --reverse        # generate stack-reversed flame graph\n        --inverted       # icicle graph\n        --flamechart     # produce a flame chart (sort by time, do not merge stacks)\n        --negate         # switch differential hues (blue<->red)\n        --notes TEXT     # add notes comment in SVG (for debugging)\n        --help           # this message\n\n        eg,\n        $0 --title="Flame Graph: malloc()" trace.txt > graph.svg\nUSAGE_END\n}\n\nGetOptions(\n        \'fonttype=s\'  => \\$fonttype,\n        \'width=i\'     => \\$imagewidth,\n        \'height=i\'    => \\$frameheight,\n        \'encoding=s\'  => \\$encoding,\n        \'fontsize=f\'  => \\$fontsize,\n        \'fontwidth=f\' => \\$fontwidth,\n        \'minwidth=s\'  => \\$minwidth,\n        \'title=s\'     => \\$titletext,\n        \'subtitle=s\'  => \\$subtitletext,\n        \'nametype=s\'  => \\$nametype,\n        \'countname=s\' => \\$countname,\n        \'nameattr=s\'  => \\$nameattrfile,\n        \'total=s\'     => \\$timemax,\n        \'factor=f\'    => \\$factor,\n        \'colors=s\'    => \\$colors,\n        \'bgcolors=s\'  => \\$bgcolors,\n        \'hash\'        => \\$hash,\n        \'random\'      => \\$rand,\n        \'cp\'          => \\$palette,\n        \'reverse\'     => \\$stackreverse,\n        \'inverted\'    => \\$inverted,\n        \'flamechart\'  => \\$flamechart,\n        \'negate\'      => \\$negate,\n        \'time\'        => \\$colortime,\n        \'notes=s\'     => \\$notestext,\n        \'help\'        => \\$help,\n) or usage();\n$help && usage();\n\nmy $ypad1 = $fontsize * 3;      # pad top, include title\nmy $ypad2 = $fontsize * 2 + 10; # pad bottom, include labels\nmy $ypad3 = $fontsize * 2;      # pad top, include subtitle (optional)\nmy $xpad = 10;                  # pad lefm and right\nmy $framepad = 1;                               # vertical padding for frames\nmy $depthmax = 0;\nmy %Events;\nmy %nameattr;\n\nif ($flamechart && $titletext eq "") {\n        $titletext = "Flame Chart";\n}\n\nif ($titletext eq "") {\n        unless ($inverted) {\n                $titletext = $titledefault;\n        } else {\n                $titletext = $titleinverted;\n        }\n}\n\nif ($nameattrfile) {\n        open my $attrfh, $nameattrfile or die "Can\'t read $nameattrfile: $!\\n";\n        while (<$attrfh>) {\n                chomp;\n                my ($funcname, $attrstr) = split /\\t/, $_, 2;\n                die "Invalid format in $nameattrfile" unless defined $attrstr;\n                $nameattr{$funcname} = { map { split /=/, $_, 2 } split /\\t/, $attrstr };\n        }\n}\n\nif ($notestext =~ /[<>]/) {\n        die "Notes string can\'t contain < or >"\n}\n\nmy $minwidth_f;\nif ($minwidth =~ /^([0-9.]+)%?$/) {\n        $minwidth_f = $1;\n} else {\n        warn "Value \'$minwidth\' is invalid for minwidth, expected a float.\\n";\n        usage();\n}\n\nif ($bgcolors eq "") {\n        if ($colors eq "mem") {\n                $bgcolors = "green";\n        } elsif ($colors =~ /^(io|wakeup|chain)$/) {\n                $bgcolors = "blue";\n        } elsif ($colors =~ /^(red|green|blue|aqua|yellow|purple|orange)$/) {\n                $bgcolors = "grey";\n        } else {\n                $bgcolors = "yellow";\n        }\n}\nmy ($bgcolor1, $bgcolor2);\nif ($bgcolors eq "yellow") {\n        $bgcolor1 = "#eeeeee";       # background color gradient start\n        $bgcolor2 = "#eeeeb0";       # background color gradient stop\n} elsif ($bgcolors eq "blue") {\n        $bgcolor1 = "#eeeeee"; $bgcolor2 = "#e0e0ff";\n} elsif ($bgcolors eq "green") {\n        $bgcolor1 = "#eef2ee"; $bgcolor2 = "#e0ffe0";\n} elsif ($bgcolors eq "grey") {\n        $bgcolor1 = "#f8f8f8"; $bgcolor2 = "#e8e8e8";\n} elsif ($bgcolors =~ /^#......$/) {\n        $bgcolor1 = $bgcolor2 = $bgcolors;\n} else {\n        die "Unrecognized bgcolor option \\"$bgcolors\\""\n}\n\n{ package SVG;\n        sub new {\n                my $class = shift;\n                my $self = {};\n                bless ($self, $class);\n                return $self;\n        }\n\n        sub header {\n                my ($self, $w, $h) = @_;\n                my $enc_attr = \'\';\n                if (defined $encoding) {\n                        $enc_attr = qq{ encoding="$encoding"};\n                }\n                $self->{svg} .= <<SVG;\n<?xml version="1.0"$enc_attr standalone="no"?>\n<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">\n<svg version="1.1" width="$w" height="$h" onload="init(evt)" viewBox="0 0 $w $h" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">\n<!-- Flame graph stack visualization. See https://github.com/brendangregg/FlameGraph for latest version, and http://www.brendangregg.com/flamegraphs.html for examples. -->\n<!-- NOTES: $notestext -->\nSVG\n        }\n\n        sub include {\n                my ($self, $content) = @_;\n                $self->{svg} .= $content;\n        }\n\n        sub colorAllocate {\n                my ($self, $r, $g, $b) = @_;\n                return "rgb($r,$g,$b)";\n        }\n\n        sub group_start {\n                my ($self, $attr) = @_;\n\n                my @g_attr = map {\n                        exists $attr->{$_} ? sprintf(qq/$_="%s"/, $attr->{$_}) : ()\n                } qw(id class);\n                push @g_attr, $attr->{g_extra} if $attr->{g_extra};\n                if ($attr->{href}) {\n                        my @a_attr;\n                        push @a_attr, sprintf qq/xlink:href="%s"/, $attr->{href} if $attr->{href};\n                        push @a_attr, sprintf qq/target="%s"/, $attr->{target} || "_top";\n                        push @a_attr, $attr->{a_extra}                           if $attr->{a_extra};\n                        $self->{svg} .= sprintf qq/<a %s>\\n/, join(\' \', (@a_attr, @g_attr));\n                } else {\n                        $self->{svg} .= sprintf qq/<g %s>\\n/, join(\' \', @g_attr);\n                }\n\n                $self->{svg} .= sprintf qq/<title>%s<\\/title>/, $attr->{title}\n                        if $attr->{title}; # should be first element within g container\n        }\n\n        sub group_end {\n                my ($self, $attr) = @_;\n                $self->{svg} .= $attr->{href} ? qq/<\\/a>\\n/ : qq/<\\/g>\\n/;\n        }\n\n        sub filledRectangle {\n                my ($self, $x1, $y1, $x2, $y2, $fill, $extra) = @_;\n                $x1 = sprintf "%0.1f", $x1;\n                $x2 = sprintf "%0.1f", $x2;\n                my $w = sprintf "%0.1f", $x2 - $x1;\n                my $h = sprintf "%0.1f", $y2 - $y1;\n                $extra = defined $extra ? $extra : "";\n                $self->{svg} .= qq/<rect x="$x1" y="$y1" width="$w" height="$h" fill="$fill" $extra \\/>\\n/;\n        }\n\n        sub stringTTF {\n                my ($self, $id, $x, $y, $str, $extra) = @_;\n                $x = sprintf "%0.2f", $x;\n                $id =  defined $id ? qq/id="$id"/ : "";\n                $extra ||= "";\n                $self->{svg} .= qq/<text $id x="$x" y="$y" $extra>$str<\\/text>\\n/;\n        }\n\n        sub svg {\n                my $self = shift;\n                return "$self->{svg}</svg>\\n";\n        }\n        1;\n}\n\nsub namehash {\n        my $name = shift;\n        my $vector = 0;\n        my $weight = 1;\n        my $max = 1;\n        my $mod = 10;\n        $name =~ s/.(.*?)`//;\n        foreach my $c (split //, $name) {\n                my $i = (ord $c) % $mod;\n                $vector += ($i / ($mod++ - 1)) * $weight;\n                $max += 1 * $weight;\n                $weight *= 0.70;\n                last if $mod > 12;\n        }\n        return (1 - $vector / $max)\n}\n\nsub sum_namehash {\n  my $name = shift;\n  return unpack("%32W*", $name);\n}\n\nsub random_namehash {\n        my $name = shift;\n        my $hash = sum_namehash($name);\n        srand($hash);\n        return rand(1)\n}\n\n\nmy $sum_wall;\nmy $sum_cpu;\nmy $max_wall;\nmy $max_cpu;\nmy $n_samples;\n\nsub color_timep {\n  my ($type, $name, $count_wall, $ind_wall, $count_cpu, $ind_cpu) = @_;\n  my ($saturation, $intensity, $i2, $s, $type0);\n  my ($r, $g, $b);\n\n  if (defined $count_cpu) {\n      if (defined $sum_wall & defined $sum_cpu && $sum_cpu > 0) {\n          $count_cpu = ($sum_wall * $count_cpu / $sum_cpu);\n\t  $max_cpu = ($sum_wall * $max_cpu / $sum_cpu);\n      } elsif (defined $max_cpu && $max_cpu > 0) {\n\t  $count_cpu = $count_cpu * $max_wall / $max_cpu;\n          $max_cpu = $max_wall;\n      }\n  }\n\n    if ($type eq "timep") {\n            if (defined $ind_wall && $ind_wall >= 0 && defined $n_samples && $n_samples > 0 ) {\n                    $intensity = $ind_wall / (2 * $n_samples);       \n            } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_wall / $max_wall) ** 2) ** 2));\n            }\n            if (defined $count_cpu && $count_cpu > 0) {\n                            $saturation  = 1 - (1 / (1 + ($count_cpu / $count_wall)) ** 2);\n            } else {\n                    $saturation = 1\n            }\n            $type0 = "time";\n    } elsif (defined $count_cpu && $count_cpu > 0 && $type eq "timepr") {\n           if (defined $ind_cpu && $ind_cpu >= 0 && defined $n_samples && $n_samples > 0 ) {\n                   $intensity = $ind_cpu / (2 * $n_samples);       \n           } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_cpu / $max_cpu) ** 2) ** 2));\n           }\n           if (defined $count_wall && $count_cpu > 0) {\n                           $saturation = 1 - (1 / (2 + ($count_cpu / $count_wall)) ** 2);\n           } else {\n                   $saturation = 1\n           }\n           $type0 = "time";\n   } else {\n           if (defined $ind_wall && $ind_wall >= 0 && defined $n_samples && $n_samples > 0 ) {\n                   $intensity = $ind_wall / (2 * $n_samples);       \n           } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_wall / $max_wall) ** 2) ** 2));\n           }\n           $saturation = 1;  \n           $type0 = "time";\n   }\n  \n  $intensity  = 1 if $intensity > 1;\n  $intensity  = 0 if $intensity < 0;\n  $saturation = 1 if $saturation > 1;\n  $saturation = 0 if $saturation < 0;\n\n  $saturation  = (4 / 3) * (1 - (1 / (1 + ($saturation ** 2)) ** 2));\n\n  if ($colors =~ /^timep/) {\n    if ($name =~ m:_\\[f\\]$:) { \n      $type0 = "function";\n    } elsif ($name =~ m:_\\[s\\]$:) {\n      $type0 = "subshell";\n    } else {\n      $type0 = "time";\n    }\n  }\n\n  if ($type0 eq "time") {\n    $i2 = $intensity ** 2;\n    $r = ((255 * ($intensity + sqrt($intensity)) / 2) * $saturation + 212 * (1 - $saturation));\n    $g = ((255 * (1 - ((1 - 2 * $intensity) ** 2)) * (1 - $i2)) * $saturation + 212 * (1 - $saturation));\n    $b = ((255 * (1 - $intensity) * (1 - $i2) * (1 - ($intensity * $i2))) * $saturation + 212 * (1 - $saturation));\n    $s = $saturation * (1 + 255 / ($r + $g + $b)) / 2;\n    $s = 1 if $s > 1;\n    $r = int($r);\n    $g = int($g * $s + 212 * (1 - $s));\n    $b = int($b);\n  } else {\n        $saturation = (1 / 3) + ($saturation / 4);\n        if ($type0 eq "function") {\n                  $r = ((155 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $g = ((55 + int(25 * $intensity)) * $saturation + 255 * (1 - $saturation));\n\t    \t  $b = ((200 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n        } elsif ($type0 eq "subshell") {\n                  $r = ((200 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $g = ((55 + int(25 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $b = ((155 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n        }\n  }\n\n  return "rgb($r,$g,$b)";\n}\n\nsub color {\n        my ($type, $hash, $name, $ind) = @_;\n        my ($v1, $v2, $v3);\n\n        if ($hash) {\n                $v1 = namehash($name);\n                $v2 = $v3 = namehash(scalar reverse $name);\n        } elsif ($rand) {\n                $v1 = rand(1);\n                $v2 = rand(1);\n                $v3 = rand(1);\n        } else {\n                $v1 = random_namehash($name);\n                $v2 = random_namehash($name);\n                $v3 = random_namehash($name);\n        }\n\n        if ($colortime && defined $ind && $ind >= 0 && $n_samples > 0) {\n            $v1 = 2 * $ind / $n_samples;\n        } \n\n        if (defined $type and $type eq "hot") {\n                my $r = 205 + int(50 * $v3);\n                my $g = 0 + int(230 * $v1);\n                my $b = 0 + int(55 * $v2);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "mem") {\n                my $r = 0;\n                my $g = 190 + int(50 * $v2);\n                my $b = 0 + int(210 * $v1);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "io") {\n                my $r = 80 + int(60 * $v1);\n                my $g = $r;\n                my $b = 190 + int(55 * $v2);\n                return "rgb($r,$g,$b)";\n        }\n\n        if (defined $type and $type eq "java") {\n                if ($name =~ m:_\\[j\\]$:) {      # jit annotation\n                        $type = "green";\n                } elsif ($name =~ m:_\\[i\\]$:) { # inline annotation\n                        $type = "aqua";\n                } elsif ($name =~ m:^L?(java|javax|jdk|net|org|com|io|sun)/:) { # Java\n                        $type = "green";\n                } elsif ($name =~ /:::/) {      # Java, typical perf-map-agent method separator\n                        $type = "green";\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:_\\[k\\]$:) { # kernel annotation\n                        $type = "orange";\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "perl") {\n                if ($name =~ /::/) {            # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:Perl: or $name =~ m:\\.pl:) {        # Perl\n                        $type = "green";\n                } elsif ($name =~ m:_\\[k\\]$:) { # kernel\n                        $type = "orange";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "js") {\n                if ($name =~ m:_\\[j\\]$:) {      # jit annotation\n                        if ($name =~ m:/:) {\n                                $type = "green";        # source\n                        } else {\n                                $type = "aqua";         # builtin\n                        }\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:/.*\\.js:) { # JavaScript (match "/" in path)\n                        $type = "green";\n                } elsif ($name =~ m/:/) {       # JavaScript (match ":" in builtin)\n                        $type = "aqua";\n                } elsif ($name =~ m/^ $/) {     # Missing symbol\n                        $type = "green";\n                } elsif ($name =~ m:_\\[k\\]:) {  # kernel\n                        $type = "orange";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "wakeup") {\n                $type = "aqua";\n        }\n        if (defined $type and $type eq "chain") {\n                if ($name =~ m:_\\[w\\]:) {       # waker\n                        $type = "aqua"\n                } else {                        # off-CPU\n                        $type = "blue";\n                }\n        }\n\n        if (defined $type and $type eq "red") {\n                my $r = 200 + int(55 * $v1);\n                my $x = 50 + int(80 * $v1);\n                return "rgb($r,$x,$x)";\n        }\n        if (defined $type and $type eq "green") {\n                my $g = 200 + int(55 * $v1);\n                my $x = 50 + int(60 * $v1);\n                return "rgb($x,$g,$x)";\n        }\n        if (defined $type and $type eq "blue") {\n                my $b = 205 + int(50 * $v1);\n                my $x = 80 + int(60 * $v1);\n                return "rgb($x,$x,$b)";\n        }\n        if (defined $type and $type eq "yellow") {\n                my $x = 175 + int(55 * $v1);\n                my $b = 50 + int(20 * $v1);\n                return "rgb($x,$x,$b)";\n        }\n        if (defined $type and $type eq "purple") {\n                my $x = 190 + int(65 * $v1);\n                my $g = 80 + int(60 * $v1);\n                return "rgb($x,$g,$x)";\n        }\n        if (defined $type and $type eq "aqua") {\n                my $r = 50 + int(60 * $v1);\n                my $g = 165 + int(55 * $v1);\n                my $b = 165 + int(55 * $v1);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "orange") {\n                my $r = 190 + int(65 * $v1);\n                my $g = 90 + int(65 * $v1);\n                return "rgb($r,$g,0)";\n        }\n\n        return "rgb(0,0,0)";\n}\n\nsub color_scale {\n        my ($value, $max) = @_;\n        my ($r, $g, $b) = (255, 255, 255);\n        $value = -$value if $negate;\n        if ($value > 0) {\n                $g = $b = int(210 * ($max - $value) / $max);\n        } elsif ($value < 0) {\n                $r = $g = int(210 * ($max + $value) / $max);\n        }\n        return "rgb($r,$g,$b)";\n}\n\nsub color_map {\n        my ($colors, $func) = @_;\n        if (exists $palette_map{$func}) {\n                return $palette_map{$func};\n        } else {\n                $palette_map{$func} = color($colors, $hash, $func);\n                return $palette_map{$func};\n        }\n}\n\nsub write_palette {\n        open(FILE, ">$pal_file");\n        foreach my $key (sort keys %palette_map) {\n                print FILE $key."->".$palette_map{$key}."\\n";\n        }\n        close(FILE);\n}\n\nsub read_palette {\n        if (-e $pal_file) {\n        open(FILE, $pal_file) or die "can\'t open file $pal_file: $!";\n        while ( my $line = <FILE>) {\n                chomp($line);\n                (my $key, my $value) = split("->",$line);\n                $palette_map{$key}=$value;\n        }\n        close(FILE)\n        }\n}\n\nmy %Node;       # Hash of merged frame data\nmy %Tmp;\n\nsub flow {\n        my ($last, $this, $v, $d, $iw, $id) = @_;\n\n        my $len_a = @$last - 1;\n        my $len_b = @$this - 1;\n\n        my $i = 0;\n        my $len_same;\n        for (; $i <= $len_a; $i++) {\n                last if $i > $len_b;\n                last if $last->[$i] ne $this->[$i];\n        }\n        $len_same = $i;\n\n        for ($i = $len_a; $i >= $len_same; $i--) {\n                my $k = "$last->[$i];$i";\n                $Node{"$k;$v"}->{stime} = delete $Tmp{$k}->{stime};\n                if (defined $Tmp{$k}->{delta}) {\n                        $Node{"$k;$v"}->{delta} = delete $Tmp{$k}->{delta};\n                }\n                if (defined $Tmp{$k}->{ctime}) {\n                        $Node{"$k;$v"}->{ctime} = delete $Tmp{$k}->{ctime};\n                }\n                if (defined $Tmp{$k}->{indwall}) {\n                        $Node{"$k;$v"}->{indwall} = delete $Tmp{$k}->{indwall};\n                }\n                if (defined $Tmp{$k}->{indcpu}) {\n                        $Node{"$k;$v"}->{indcpu} = delete $Tmp{$k}->{indcpu};\n                }\n                delete $Tmp{$k};\n        }\n\n        for ($i = $len_same; $i <= $len_b; $i++) {\n                my $k = "$this->[$i];$i";\n                $Tmp{$k}->{stime} = $v;\n\n      if (defined $d) {\n      \t      if ($colors =~ /^timep/) {\n\t\t      $Tmp{$k}->{ctime} = $d;\n      \t      } else {\n      \t\t      $Tmp{$k}->{delta} += $i == $len_b ? $d : 0;\n      \t      }\n      }\n      if (defined $iw) {\n      \t      $Tmp{$k}->{indwall} = $iw;\n      }\n      if (defined $id) {\n        $Tmp{$k}->{indcpu} = $id;\n      }\n  \n  }\n  return $this;\n}\n\nmy @Data;\nmy @SortedData;\nmy $last = [];\nmy $time = 0;\nmy $delta = undef;\nmy $indwall = undef;\nmy $indcpu = undef;\nmy $ignored = 0;\nmy $line;\nmy $maxwall = 0;\nmy $maxdelta = 1;\nmy $sumwall = 0;\nmy $sumcpu = 0;\nmy $nsamples = 0;\n\nif ($colors =~ /^timep/) {\n    $maxdelta = 0;\n}\n\nforeach (<>) {\n        chomp;\n        $line = $_;\n    \tif ($stackreverse) {\n\t\tmy ($stack, $samples);\n\t\tmy $samples2 = undef;\n                ($stack, $samples) = (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\t\tif ($stack =~ /^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/) {\n\t\t\t$samples2 = $samples;\n                \t($stack, $samples) = $stack =~ (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\t\t}\n                if (defined $samples2) {\n                        unshift @Data, join(";", reverse split(";", $stack)) . " $samples $samples2";\n                } else {\n                        unshift @Data, join(";", reverse split(";", $stack)) . " $samples";\n                }\n        } else {\n                unshift @Data, $line;\n        }       \n}\n\nif ($flamechart) {\n        @SortedData = reverse @Data;\n} else {\n        @SortedData = sort @Data;\n}\n\nforeach (@SortedData) {\n        chomp;\n\tmy ($stack, $samples);\n\tmy $indwall = undef;\n\tmy $samples2 = undef;\n\tmy $indcupu = undef;\n\t($stack, $samples) = (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\tif ($stack =~ /^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/) {\n\t\t$samples2 = $samples;\n\t\t($stack, $samples) = $stack =~ (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\t\t\n\t\tif ($samples2 =~ /^(\\d+):(\\d+)$/) {\n\t\t\t($samples2, $indcpu) = $samples2 =~ (/^(\\d+):(\\d+)$/)\n\t\t}\n\t}\n\tif ($samples =~ /^(\\d+):(\\d+)$/) {\n\t\t($samples, $indwall) = $samples =~ (/^(\\d+):(\\d+)$/)\n\t}\n\tunless (defined $samples and defined $stack) {\n\t\t++$ignored;\n                  next;\n        }\n\n        $delta = undef;\n        if (defined $samples2) {\n            if ($colors =~ /^timep/) {\n\t\t    $delta = $samples2;\n\t    } else {\n\t\t    \n\t\t    $delta = $samples2 - $samples;\n    \t    }\n\t    $maxdelta = abs($delta) if abs($delta) > $maxdelta;\n\t    $sumcpu += $samples2;\n    }\n    \n    $maxwall = $samples if $samples > $maxwall;\n    $sumwall += $samples;\n    $nsamples += 1;\n    \n        if ($colors eq "chain") {\n                my @parts = split ";--;", $stack;\n                my @newparts = ();\n                $stack = shift @parts;\n                $stack .= ";--;";\n                foreach my $part (@parts) {\n                        $part =~ s/;/_[w];/g;\n                        $part .= "_[w]";\n                        push @newparts, $part;\n                }\n                $stack .= join ";--;", @parts;\n        }\n\n        $last = flow($last, [ \'\', split ";", $stack ], $time, $delta, $indwall, $indcpu);\n\n        if ($colors eq "timep") {\n                $time += $samples;\n        } elsif (defined $samples2) {\n                $time += $samples2;\n        } else {\n                $time += $samples;\n        }\n}\nflow($last, [], $time, $delta, $indwall, $indcpu);\n\nif ($colortime) {\n    (defined $indwall) or warn "Coloring by sample count / time requires running the input stack traces through \'stackcollapse-time.bash\'. Standard function-name-based coloring ill be used.\\n";\n    ($colors !~ /^time/) and (defined $indwall and defined $delta) and warn "Coloring by sample count / time is not supported when using the delta between two input sample counts / times.\\nIf the 2nd input is an intependent sample count / time measurement, use \'--color=timep\' instead.\\n"\n}\n\nif ($countname eq "samples") {\n        warn "Stack count is low ($time). Did something go wrong?\\n" if $time < 100;\n}\n\nwarn "Ignored $ignored lines with invalid format\\n" if $ignored;\nunless ($time) {\n        warn "ERROR: No stack counts found\\n";\n        my $im = SVG->new();\n        my $imageheight = $fontsize * 5;\n        $im->header($imagewidth, $imageheight);\n        $im->stringTTF(undef, int($imagewidth / 2), $fontsize * 2,\n            "ERROR: No valid input provided to flamegraph.pl.");\n        print $im->svg;\n        exit 2;\n}\nif ($timemax and $timemax < $time) {\n        warn "Specified --total $timemax is less than actual total $time, so ignored\\n"\n        if $timemax/$time > 0.02; # only warn is significant (e.g., not rounding etc)\n        undef $timemax;\n}\n$timemax ||= $time;\n$max_wall ||= $maxwall;\n$max_cpu ||= $maxdelta;\n$sum_wall ||= $sumwall;\n$sum_cpu ||= $sumcpu;\n$n_samples ||= $nsamples;\n\nmy $widthpertime = ($imagewidth - 2 * $xpad) / $timemax;\n\nmy $minwidth_time;\nif ($minwidth =~ /%$/) {\n        $minwidth_time = $timemax * $minwidth_f / 100;\n} else {\n        $minwidth_time = $minwidth_f / $widthpertime;\n}\n\nwhile (my ($id, $node) = each %Node) {\n        my ($func, $depth, $etime) = split ";", $id;\n        my $stime = $node->{stime};\n        die "missing start for $id" if not defined $stime;\n\n        if (($etime-$stime) < $minwidth_time) {\n                delete $Node{$id};\n                next;\n        }\n        $depthmax = $depth if $depth > $depthmax;\n}\n\nmy $imageheight = (($depthmax + 1) * $frameheight) + $ypad1 + $ypad2;\n$imageheight += $ypad3 if $subtitletext ne "";\nmy $titlesize = $fontsize + 5;\nmy $im = SVG->new();\nmy ($black, $vdgrey, $dgrey) = (\n        $im->colorAllocate(0, 0, 0),\n        $im->colorAllocate(160, 160, 160),\n        $im->colorAllocate(200, 200, 200),\n    );\n$im->header($imagewidth, $imageheight);\nmy $inc = <<INC;\n<defs>\n        <linearGradient id="background" y1="0" y2="1" x1="0" x2="0" >\n                <stop stop-color="$bgcolor1" offset="5%" />\n                <stop stop-color="$bgcolor2" offset="95%" />\n        </linearGradient>\n</defs>\n<style type="text/css">\n        text { font-family:$fonttype; font-size:${fontsize}px; fill:$black; }\n        .hide { display:none; }\n        .parent { opacity:0.5; }\n</style>\n<script type="text/ecmascript">\n<![CDATA[\n        "use strict";\n        var details, searchbtn, unzoombtn, matchedtxt, svg, searching, currentSearchTerm, ignorecase, ignorecaseBtn;\n        function init(evt) {\n                details = document.getElementById("details").firstChild;\n                searchbtn = document.getElementById("search");\n                ignorecaseBtn = document.getElementById("ignorecase");\n                unzoombtn = document.getElementById("unzoom");\n                matchedtxt = document.getElementById("matched");\n                svg = document.getElementsByTagName("svg")[0];\n                searching = 0;\n                currentSearchTerm = null;\n\n                // use GET parameters to restore a flamegraphs state.\n                var params = get_params();\n                if (params.x && params.y)\n                        zoom(find_group(document.querySelector(\'[x="\' + params.x + \'"][y="\' + params.y + \'"]\')));\n                if (params.s) search(params.s);\n        }\n\n        // event listeners\n        window.addEventListener("click", function(e) {\n                var target = find_group(e.target);\n                if (target) {\n                        if (target.nodeName == "a") {\n                                if (e.ctrlKey === false) return;\n                                e.preventDefault();\n                        }\n                        if (target.classList.contains("parent")) unzoom(true);\n                        zoom(target);\n                        if (!document.querySelector(\'.parent\')) {\n                                // we have basically done a clearzoom so clear the url\n                                var params = get_params();\n                                if (params.x) delete params.x;\n                                if (params.y) delete params.y;\n                                history.replaceState(null, null, parse_params(params));\n                                unzoombtn.classList.add("hide");\n                                return;\n                        }\n\n                        // set parameters for zoom state\n                        var el = target.querySelector("rect");\n                        if (el && el.attributes && el.attributes.y && el.attributes._orig_x) {\n                                var params = get_params()\n                                params.x = el.attributes._orig_x.value;\n                                params.y = el.attributes.y.value;\n                                history.replaceState(null, null, parse_params(params));\n                        }\n                }\n                else if (e.target.id == "unzoom") clearzoom();\n                else if (e.target.id == "search") search_prompt();\n                else if (e.target.id == "ignorecase") toggle_ignorecase();\n        }, false)\n\n        // mouse-over for info\n        // show\n        window.addEventListener("mouseover", function(e) {\n                var target = find_group(e.target);\n                if (target) details.nodeValue = "$nametype " + g_to_text(target);\n        }, false)\n\n        // clear\n        window.addEventListener("mouseout", function(e) {\n                var target = find_group(e.target);\n                if (target) details.nodeValue = \' \';\n        }, false)\n\n        // ctrl-F for search\n        // ctrl-I to toggle case-sensitive search\n        window.addEventListener("keydown",function (e) {\n                if (e.keyCode === 114 || (e.ctrlKey && e.keyCode === 70)) {\n                        e.preventDefault();\n                        search_prompt();\n                }\n                else if (e.ctrlKey && e.keyCode === 73) {\n                        e.preventDefault();\n                        toggle_ignorecase();\n                }\n        }, false)\n\n        // functions\n        function get_params() {\n                var params = {};\n                var paramsarr = window.location.search.substr(1).split(\'&\');\n                for (var i = 0; i < paramsarr.length; ++i) {\n                        var tmp = paramsarr[i].split("=");\n                        if (!tmp[0] || !tmp[1]) continue;\n                        params[tmp[0]]  = decodeURIComponent(tmp[1]);\n                }\n                return params;\n        }\n        function parse_params(params) {\n                var uri = "?";\n                for (var key in params) {\n                        uri += key + \'=\' + encodeURIComponent(params[key]) + \'&\';\n                }\n                if (uri.slice(-1) == "&")\n                        uri = uri.substring(0, uri.length - 1);\n                if (uri == \'?\')\n                        uri = window.location.href.split(\'?\')[0];\n                return uri;\n        }\n        function find_child(node, selector) {\n                var children = node.querySelectorAll(selector);\n                if (children.length) return children[0];\n        }\n        function find_group(node) {\n                var parent = node.parentElement;\n                if (!parent) return;\n                if (parent.id == "frames") return node;\n                return find_group(parent);\n        }\n        function orig_save(e, attr, val) {\n                if (e.attributes["_orig_" + attr] != undefined) return;\n                if (e.attributes[attr] == undefined) return;\n                if (val == undefined) val = e.attributes[attr].value;\n                e.setAttribute("_orig_" + attr, val);\n        }\n        function orig_load(e, attr) {\n                if (e.attributes["_orig_"+attr] == undefined) return;\n                e.attributes[attr].value = e.attributes["_orig_" + attr].value;\n                e.removeAttribute("_orig_"+attr);\n        }\n        function g_to_text(e) {\n                var text = find_child(e, "title").firstChild.nodeValue;\n                return (text)\n        }\n        function g_to_func(e) {\n                var func = g_to_text(e);\n                // if there\'s any manipulation we want to do to the function\n                // name before it\'s searched, do it here before returning.\n                return (func);\n        }\n        function update_text(e) {\n                var r = find_child(e, "rect");\n                var t = find_child(e, "text");\n                var w = parseFloat(r.attributes.width.value) -3;\n                var txt = find_child(e, "title").textContent.replace(/\\\\([^(]*\\\\)\\$/,"");\n                t.attributes.x.value = parseFloat(r.attributes.x.value) + 3;\n\n                // Smaller than this size won\'t fit anything\n                if (w < 2 * $fontsize * $fontwidth) {\n                        t.textContent = "";\n                        return;\n                }\n\n                t.textContent = txt;\n                var sl = t.getSubStringLength(0, txt.length);\n                // check if only whitespace or if we can fit the entire string into width w\n                if (/^ *\\$/.test(txt) || sl < w)\n                        return;\n\n                // this isn\'t perfect, but gives a good starting point\n                // and avoids calling getSubStringLength too often\n                var start = Math.floor((w/sl) * txt.length);\n                for (var x = start; x > 0; x = x-2) {\n                        if (t.getSubStringLength(0, x + 2) <= w) {\n                                t.textContent = txt.substring(0, x) + "..";\n                                return;\n                        }\n                }\n                t.textContent = "";\n        }\n\n        // zoom\n        function zoom_reset(e) {\n                if (e.attributes != undefined) {\n                        orig_load(e, "x");\n                        orig_load(e, "width");\n                }\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_reset(c[i]);\n                }\n        }\n        function zoom_child(e, x, ratio) {\n                if (e.attributes != undefined) {\n                        if (e.attributes.x != undefined) {\n                                orig_save(e, "x");\n                                e.attributes.x.value = (parseFloat(e.attributes.x.value) - x - $xpad) * ratio + $xpad;\n                                if (e.tagName == "text")\n                                        e.attributes.x.value = find_child(e.parentNode, "rect[x]").attributes.x.value + 3;\n                        }\n                        if (e.attributes.width != undefined) {\n                                orig_save(e, "width");\n                                e.attributes.width.value = parseFloat(e.attributes.width.value) * ratio;\n                        }\n                }\n\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_child(c[i], x - $xpad, ratio);\n                }\n        }\n        function zoom_parent(e) {\n                if (e.attributes) {\n                        if (e.attributes.x != undefined) {\n                                orig_save(e, "x");\n                                e.attributes.x.value = $xpad;\n                        }\n                        if (e.attributes.width != undefined) {\n                                orig_save(e, "width");\n                                e.attributes.width.value = parseInt(svg.width.baseVal.value) - ($xpad * 2);\n                        }\n                }\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_parent(c[i]);\n                }\n        }\n        function zoom(node) {\n                var attr = find_child(node, "rect").attributes;\n                var width = parseFloat(attr.width.value);\n                var xmin = parseFloat(attr.x.value);\n                var xmax = parseFloat(xmin + width);\n                var ymin = parseFloat(attr.y.value);\n                var ratio = (svg.width.baseVal.value - 2 * $xpad) / width;\n\n                // XXX: Workaround for JavaScript float issues (fix me)\n                var fudge = 0.0001;\n\n                unzoombtn.classList.remove("hide");\n\n                var el = document.getElementById("frames").children;\n                for (var i = 0; i < el.length; i++) {\n                        var e = el[i];\n                        var a = find_child(e, "rect").attributes;\n                        var ex = parseFloat(a.x.value);\n                        var ew = parseFloat(a.width.value);\n                        var upstack;\n                        // Is it an ancestor\n                        if ($inverted == 0) {\n                                upstack = parseFloat(a.y.value) > ymin;\n                        } else {\n                                upstack = parseFloat(a.y.value) < ymin;\n                        }\n                        if (upstack) {\n                                // Direct ancestor\n                                if (ex <= xmin && (ex+ew+fudge) >= xmax) {\n                                        e.classList.add("parent");\n                                        zoom_parent(e);\n                                        update_text(e);\n                                }\n                                // not in current path\n                                else\n                                        e.classList.add("hide");\n                        }\n                        // Children maybe\n                        else {\n                                // no common path\n                                if (ex < xmin || ex + fudge >= xmax) {\n                                        e.classList.add("hide");\n                                }\n                                else {\n                                        zoom_child(e, xmin, ratio);\n                                        update_text(e);\n                                }\n                        }\n                }\n                search();\n        }\n        function unzoom(dont_update_text) {\n                unzoombtn.classList.add("hide");\n                var el = document.getElementById("frames").children;\n                for(var i = 0; i < el.length; i++) {\n                        el[i].classList.remove("parent");\n                        el[i].classList.remove("hide");\n                        zoom_reset(el[i]);\n                        if(!dont_update_text) update_text(el[i]);\n                }\n                search();\n        }\n        function clearzoom() {\n                unzoom();\n\n                // remove zoom state\n                var params = get_params();\n                if (params.x) delete params.x;\n                if (params.y) delete params.y;\n                history.replaceState(null, null, parse_params(params));\n        }\n\n        // search\n        function toggle_ignorecase() {\n                ignorecase = !ignorecase;\n                if (ignorecase) {\n                        ignorecaseBtn.classList.add("show");\n                } else {\n                        ignorecaseBtn.classList.remove("show");\n                }\n                reset_search();\n                search();\n        }\n        function reset_search() {\n                var el = document.querySelectorAll("#frames rect");\n                for (var i = 0; i < el.length; i++) {\n                        orig_load(el[i], "fill")\n                }\n                var params = get_params();\n                delete params.s;\n                history.replaceState(null, null, parse_params(params));\n        }\n        function search_prompt() {\n                if (!searching) {\n                        var term = prompt("Enter a search term (regexp " +\n                            "allowed, eg: ^ext4_)"\n                            + (ignorecase ? ", ignoring case" : "")\n                            + "\\\\nPress Ctrl-i to toggle case sensitivity", "");\n                        if (term != null) search(term);\n                } else {\n                        reset_search();\n                        searching = 0;\n                        currentSearchTerm = null;\n                        searchbtn.classList.remove("show");\n                        searchbtn.firstChild.nodeValue = "Search"\n                        matchedtxt.classList.add("hide");\n                        matchedtxt.firstChild.nodeValue = ""\n                }\n        }\n        function search(term) {\n                if (term) currentSearchTerm = term;\n                if (currentSearchTerm === null) return;\n\n                var re = new RegExp(currentSearchTerm, ignorecase ? \'i\' : \'\');\n                var el = document.getElementById("frames").children;\n                var matches = new Object();\n                var maxwidth = 0;\n                for (var i = 0; i < el.length; i++) {\n                        var e = el[i];\n                        var func = g_to_func(e);\n                        var rect = find_child(e, "rect");\n                        if (func == null || rect == null)\n                                continue;\n\n                        // Save max width. Only works as we have a root frame\n                        var w = parseFloat(rect.attributes.width.value);\n                        if (w > maxwidth)\n                                maxwidth = w;\n\n                        if (func.match(re)) {\n                                // highlight\n                                var x = parseFloat(rect.attributes.x.value);\n                                orig_save(rect, "fill");\n                                rect.attributes.fill.value = "$searchcolor";\n\n                                // remember matches\n                                if (matches[x] == undefined) {\n                                        matches[x] = w;\n                                } else {\n                                        if (w > matches[x]) {\n                                                // overwrite with parent\n                                                matches[x] = w;\n                                        }\n                                }\n                                searching = 1;\n                        }\n                }\n                if (!searching)\n                        return;\n                var params = get_params();\n                params.s = currentSearchTerm;\n                history.replaceState(null, null, parse_params(params));\n\n                searchbtn.classList.add("show");\n                searchbtn.firstChild.nodeValue = "Reset Search";\n\n                // calculate percent matched, excluding vertical overlap\n                var count = 0;\n                var lastx = -1;\n                var lastw = 0;\n                var keys = Array();\n                for (k in matches) {\n                        if (matches.hasOwnProperty(k))\n                                keys.push(k);\n                }\n                // sort the matched frames by their x location\n                // ascending, then width descending\n                keys.sort(function(a, b){\n                        return a - b;\n                });\n                // Step through frames saving only the biggest bottom-up frames\n                // thanks to the sort order. This relies on the tree property\n                // where children are always smaller than their parents.\n                var fudge = 0.0001;     // JavaScript floating point\n                for (var k in keys) {\n                        var x = parseFloat(keys[k]);\n                        var w = matches[keys[k]];\n                        if (x >= lastx + lastw - fudge) {\n                                count += w;\n                                lastx = x;\n                                lastw = w;\n                        }\n                }\n                // display matched percent\n                matchedtxt.classList.remove("hide");\n                var pct = 100 * count / maxwidth;\n                if (pct != 100) pct = pct.toFixed(1)\n                matchedtxt.firstChild.nodeValue = "Matched: " + pct + "%";\n        }\n]]>\n</script>\nINC\n$im->include($inc);\n$im->filledRectangle(0, 0, $imagewidth, $imageheight, \'url(#background)\');\n$im->stringTTF("title", int($imagewidth / 2), $fontsize * 2, $titletext);\n$im->stringTTF("subtitle", int($imagewidth / 2), $fontsize * 4, $subtitletext) if $subtitletext ne "";\n$im->stringTTF("details", $xpad, $imageheight - ($ypad2 / 2), " ");\n$im->stringTTF("unzoom", $xpad, $fontsize * 2, "Reset Zoom", \'class="hide"\');\n$im->stringTTF("search", $imagewidth - $xpad - 100, $fontsize * 2, "Search");\n$im->stringTTF("ignorecase", $imagewidth - $xpad - 16, $fontsize * 2, "ic");\n$im->stringTTF("matched", $imagewidth - $xpad - 100, $imageheight - ($ypad2 / 2), " ");\n\nif ($palette) {\n        read_palette();\n}\n\n$im->group_start({id => "frames"});\nwhile (my ($id, $node) = each %Node) {\n        my ($func, $depth, $etime) = split ";", $id;\n        my $stime = $node->{stime};\n\tmy $ctime = $node->{ctime};\n        my $delta = $node->{delta};\n        my $indwall = $node->{indwall};\n        my $indcpu = $node->{indcpu};\n\n        $etime = $timemax if $func eq "" and $depth == 0;\n\n        my $x1 = $xpad + $stime * $widthpertime;\n        my $x2 = $xpad + $etime * $widthpertime;\n        my ($y1, $y2);\n        unless ($inverted) {\n                $y1 = $imageheight - $ypad2 - ($depth + 1) * $frameheight + $framepad;\n                $y2 = $imageheight - $ypad2 - $depth * $frameheight;\n        } else {\n                $y1 = $ypad1 + $depth * $frameheight;\n                $y2 = $ypad1 + ($depth + 1) * $frameheight - $framepad;\n        }\n\n        my $samples = sprintf "%.0f", ($etime - $stime) * $factor;\n        (my $samples_txt = $samples)\n                =~ s/(^[-+]?\\d+?(?=(?>(?:\\d{3})+)(?!\\d))|\\G\\d{3}(?=\\d))/$1,/g;\n\n        my $info;\n        my $samples2 = undef;\n        my $iwall = undef;\n        my $icpu = undef;\n\n        if ($func eq "" and $depth == 0) {\n                $info = "all ($samples_txt $countname, 100%)";\n        } else {\n                my $pct = sprintf "%.2f", ((100 * $samples) / ($timemax * $factor));\n                my $escaped_func = $func;\n                $escaped_func =~ s/&/&amp;/g;\n                $escaped_func =~ s/</&lt;/g;\n                $escaped_func =~ s/>/&gt;/g;\n                $escaped_func =~ s/"/&quot;/g;\n                $escaped_func =~ s/_\\[[kwij]\\]$//;      # strip any annotation\n\n                if (defined $indwall) {\n                        $iwall = sprintf "%.0f", $indwall;\n                }\n                if (defined $indcpu) {\n                        $icpu = sprintf "%.0f", $indcpu;\n                }\n\t        if ($colors =~ /^timep/) {\n                        $samples2 = sprintf "%.0f", $ctime * $factor;\n                        $info = "$escaped_func ($samples_txt $countname, $pct%)";\n\t\t} else {\n\t\t\tunless (defined $delta) {\n\t\t\t\t$info = "$escaped_func ($samples_txt $countname, $pct%)";\n\t\t\t} else {\n\t\t\t\tmy $d = $negate ? -$delta : $delta;\n\t\t\t\tmy $deltapct = sprintf "%.2f", ((100 * $d) / ($timemax * $factor));\n\t\t\t\t$deltapct = $d > 0 ? "+$deltapct" : $deltapct;\n\t\t\t\t$info = "$escaped_func ($samples_txt $countname, $pct%; $deltapct%)";\n\t\t\t}\n\t\t}\n\t}\n\n        my $nameattr = { %{ $nameattr{$func}||{} } }; # shallow clone\n        $nameattr->{title}       ||= $info;\n        $im->group_start($nameattr);\n\n        my $color;\n        if ($colors =~ /^time/) {\n                $color = color_timep($colors, $func, $samples, $iwall, $samples2, $icpu);\n        } elsif ($func eq "--") {\n                $color = $vdgrey;\n        } elsif ($func eq "-") {\n                $color = $dgrey;\n        } elsif (defined $delta) {\n                $color = color_scale($delta, $maxdelta);\n        } elsif ($palette) {\n                $color = color_map($colors, $func);\n        } else {\n                $color = color($colors, $hash, $func, $iwall);\n        }\n        $im->filledRectangle($x1, $y1, $x2, $y2, $color, \'rx="2" ry="2"\');\n\n        my $chars = int( ($x2 - $x1) / ($fontsize * $fontwidth));\n        my $text = "";\n        if ($chars >= 3) { # room for one char plus two dots\n                $func =~ s/_\\[[kwij]\\]$//;      # strip any annotation\n                $text = substr $func, 0, $chars;\n                substr($text, -2, 2) = ".." if $chars < length $func;\n                $text =~ s/&/&amp;/g;\n                $text =~ s/</&lt;/g;\n                $text =~ s/>/&gt;/g;\n        }\n        $im->stringTTF(undef, $x1 + 3, 3 + ($y1 + $y2) / 2, $text);\n\n        $im->group_end($nameattr);\n}\n$im->group_end();\n\nprint $im->svg;\n\nif ($palette) {\n        write_palette();\n}' >"/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"

    chmod +x "/dev/shm/.timep/lib/${USER}-${EUID}/timep_flamegraph.pl"
EEEOOOFFF

chmod 500 "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"

printf '#!/usr/bin/env bash\n\nshopt -s extglob\n\n' >"/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"
declare -f _timep_base64_to_file >>"/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"
cat<<'EEEOOOFFF' >>"/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

# regenerate timep.so

ARCH="$(uname -m)"

supportedArchFlag=true

case "${ARCH}" in

######## BEGIN BASE64 ENCODED TIMEP.SO FILES ########
# +++++++++++++++++++++++++++++++++++++++++++++++++ #

'x86_64')
b64=$'43886 21944\nmd5sum:7164c6d7f36078d8e08524d464a26af5\nsha256sum:2273c2bedc44478483b350d385b5a36fe249c606972cd2819121a705c3a0d7c6\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri\n00000000000000000000000000000000000000000\n0000000000000000000000000000000000000000\n000000000000000000000000000000000000000\n0gpw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n00\n__\n################################\034vQlchw810g}?c0fw01[1}3xe}.4?e?a04?7w0t?4>5&}rh4;1J4g]g]g>g,8}w]2:1c4M;4Mj]1]1>1w.d0Z:Q4Q;3gjg;aw4:@0w]4]8>6>W3Q;3Ejg;exd:M04;3?g:w]1,g.1M0w;702:s08:A]2g]1}4>1>c0N:M34;30cg;3}c}8]5fBt6g4>M34;30cg;c0N:c}M}w]kelQp0g.3Mcg;f0N:Y34:Y]3M]1]1hVnhA1w#{0g]5bBt6g4>Q3Q;3gjg;d1d:c08:M0w:4]1>1g>3>hQVl06o1UcbI9ydno1fRZ_ns59ya5_weYMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q.Yvg03_9jFd?1E,eDw//_OkOjg?q04.3FQf//YBaAQ?6w2>Ws3//_9i9d?1E0M.eCM//_Okqjg?q0g.3FEf//YB4AQ?6w5>Wp3//_9gFd?1E1w.eC0//_Ok2jg?q0s.3Fsf//YB@AM?6w8>Wm3//_9v9c?1E2g.eBg//_OnGj.q0E.3Fgf//YBUAM?6wb>Wj3//_9tFc?1E3>eAw//_Onij.q0Q.3F4f//YBOAM?6we>Wg3//_9s9c?1E3M.eDM_L/_OmWj.q1>3FUfX/_YBIAM?6wh>Wt3@//9qFc?1E4w.eD0_L/_Omyj.q1c.3FIfX/_YBCAM?6wk>Wq3@/Y)i8QZkkU?4yd1kFe?18evxQ5kyb1mVb?18xs1Q2v_w3N@<ccf7U<i8QZ8kU?4yddhFe?18avV8yv18MuU_ic7U0Qw1NAzh_Dgki8I5lkI?4y5M7g8_@1C3NZ4?333N@<fcf7LG0fuld>tiJli8cZcAI.18yulQ34ydfiV9?3Eev/_@xA//NwmZjg.lT33NY0MMYvw,3P3NXWWnv/_Yf7U<yMnqkg?i8DVxs0fxh81?2_88eUXkyd1sdd?1C3TrrpwZL9qsI?1C3SXnLMg.18zp?1.pwZKXSofsJcvpwZMQw1C3T3J?Yvg01C3S_4pwZLP6of_Kl8wY^01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf18et0fxjv//71rRg.1>i8nSt3980sWU//_QydfqBc?1C3N@4;fJx58wY41csb1W0wfJJ8P19t8ev5RWvvgMP70MMYv045mgll1l5lji87I804?8f_0M@fA04?8f_0nUHi8JK2370w7Q?4wfhex5cui3_MdR6AObpx11w3MA04Mfhe3H2Sof7Qg?37Jhj7Ai8RQ952_0w.exQ_f/xs0fxvg.18yQMAm4OdJ2ig>ibzfZRfzFpL484xFn2hgg48f04zTWkz1@jZ8MvE7i2Dai07jj8DSL///EXLP/Q69NEn03UkP0g?i6C49a>10gwY0i6Cc99>10gwY0i0ec99w.180s580UMAG>4w1Sky5Xg@4T>4ydv2ggi8Qlt2A?bV,cs18ynMA2ewf_f/i8JQ90wNQAy9X@x0_f/jonAt2G@g>4ydv2hgi8Dpcs18zhkVag?We3X/YNQAydt2hgj8DDW17Y/Z8wsgw0g?h8DMmRR1n45tglX3pwYvh.j8SQ99,N_QO9ZKwC_f/xs0fxoU.18qogAE>4123M18qpMAA>4123M180VMAC>4w1MQw3D2iE>Wvf@/ZC3NZ4?18zjSx8M?cs3ESLH/Q6@0g.eK1pF18ysV8zjSva.cs3E7_L/@BF//pyUf7Ug<eyr@L/yPzEJfL/Qydfokz?18ysoNMeyj@L/WXugW7LW/@beeyk@/_i8QZdiw?4y9Nz70W7fW/_HBV18w_U7tCF8yv18yvF8Muw3j8R0_Qyd3cuU//_MYv0f983PzN0Ay3Mwx8et5RYofC1QGdvcs8i8f@0TodYwYUYgt8w@U4i8f714y5ZDgtYwYUY0t8w@U1t1bO3PzMhM58w_U1t0rO3PzMhMbTQcegKf//_HM6of7Ug<45nglp1lk5klld8wuOU>i8RQ91jEJvH/QyddqQD?18yNx9ysh8yt_EofH/Un03UgE0w?i8QRCOs?4y9T@x9@L/goD5xs0fx1U1?18zjnh9M?i8DvW2_W/@9Non03UkB0w?yQgA58fU0M@fIwk.@4_0c?8fU0w@58g8?4Cbn2g8w3I03Ugj0w?3Xo3w@wJtggfJAc1ict490w,xs0fxfY1?18zjkL9M?i8DvW1_W/Z9ysp8xs0fx407?2_.10eyF@v/ioD5i8n03UgG1w?NMgA,37rj8QZ3vL/@Ih3NY0i8IlAkw?4O9X/iyse@0g.4O9YrE.40j8DLW0nV/Z8ysp8xs0fxaA4?2b3pd8?25Onn7cs0fEAyd5sjW/@5M7goK04>fEAyd5jb@/@1Ug?40193Qjni8Alckw?cs5lQw.4.3HB0Yvh.yQgA58fU0M@fM0g?8fU0g@egw8?4Cbn2g8w3I03UgH0w?3Xojw@EJ3UjG1.w_w33UgH1w?ics49,25Qw@45M8?4yddiwC?18yt_E6fD/QC9NAy5M0@4SMk?bY.40WabU/Z9yst8xs0fxbw5?18KOkz8EjADfbbibSP0g>4?6qgj8DNKw.g2@0g.4O9_@wb@f/i8n03Uh20g?j8DWj07UpCoK3N@4<1CpyUf7Ug<6of7Qg.@S2Ay3Mw58ctB8ysJ83W_ti3DgtuHHG0Yvx;yTMA54O9VKzQ@L/yslcyuvEWLv/Qy1Nbw.29W5JtglN1nk5ugl_3pwYvh.i8Dui8QZS2k?370W4_T/@Z0g.eL6ict490w,ct98znMA6bU1>ibw<g.4y9h2goWe_T/@5M7U@ZAgA7w5QdQyb1uR3?2_.104ObceygZ/_NMgA0g.4C9Nky5M0@5V_T/QydfiMB.NMezvZL/WUV8zngA84ydfssA?3Evfv/UA498n03UiF0M?i8I5CAc?bY.40j8IMW3TT/Z9ysl8xs1QKcs4904.3FA_T/Sof7Ug<4O9Z@yEZL/j8D_ysm5M0@5Fgc?ezCZL/honJ3UjN0M?i8DpLy>18znMA8370i8Qlyig?eziZL/i8I494y5M0@4s08?37ii8RQ9218ysvEZLr/@CL_L/w_w33Ui80w?ics49,2_0g.37iLw4.37h2go,6q9v2gsi8RY91zEPvr/Un0vA3Sh2gu0ngVi8I5OQ8?bY.40grQ1>j8IMW6zS/Z9yst8xs0fxsrZ/Z8zjT08M?cs3ELLn/@BG_L/i8RQ9218zjSz8M?W5zS/Z1ysm5M0@4g08?4yb1np2?2_.104ObcewpZL/ioD7i8n0tbl1Lg4.3FsfT/QCbh2ggioJs90x8ykgA20@S480X?@5Qw4?8ji3Ukk_L/yPkZig?xvofxsfZ/@@88eUXkyd1iB5?1C3TrrpwZL9gQA?1C3SXmLwg.18zp?1.pwZKXCofsJcvpwZMQw1C3T3J06oK3N@4<1C3S_4pwZLP6of_Kl8wY^01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf18et0fxjv//71hR8.1>WqrY/Yf7Ug<4O9Z@wUZf/j8DLxs0fxmc1?3Eufj/UI498n03Uie0g?ytB8zhlN8w?Ly,NM4ydv2gwW6fQ/Z8yQgA24y5M0@5AfT/Qydv2gwWdLP/_FhfP/Qydfjst.NMeyUY/_WmjY/Z8zjSQ7.cs3EFvf/@Bh_f/ioJY910NM80_04wfhst8yggAWmDZ/YfJwe3W2RR10@SgM64QHE,i0Z5l2g8i8Bk90zF8fH/M@SkM7F3vL/QyddkUx?18zjR58g?W3HQ/Z9ysp8xs0fxibX/_Eavf/UIUW4bQ/Z8zjRj7.i8D6cs3E8vf/@Dd@/_3NZ?4yddgAx?18zjQ08g?WfnP/Z9ysp8xs0fxfg.2_.10ex_Y/_ioD5i8n03Unt@v/j8DTW2LP/_FWvL/@x1Y/_honJt6HEJ_b/UIUWd3P/Z8zjTf8.i8D6cs3EH_b/@Br@/_W1nP/@b52i5QDh6W8DO/@beeyyY/_i8QZX2.4y9Nz70W87O/_FbvL/QO9Z@z4YL/WgbY/ZcyvvEJ_b/@BB_L/j8DTWaHO/_Hz4O9Z@ywYL/WX1cyvvEBLb/@BR_f/W2PO/@beex5Y/_i8Dui8QZuNI?4y9Mz70W27O/_FPvH/QCbh2ggi8A4980U?@5O_D/@C@@v/Wf3N/@beew9Y/_i8QZyxI?4y9Nz70WezN/_FBfH/@zeYv/yPzEV_b/Qy9TAydfoQr?18ys8NMez3Yv/Wm_W/ZCpyUf7Ug;Yv04y3X0x8yPSRfw?Lw4.3EO_b/QybfoM@?2@0g.eyWYL/i8IZqPU?bU1>WaDO/YNM4y3N0z3?3P3NXWi8fI24y3N0z3|||#########################[3>6w>4>6>4404g0C4:6w.1M.346@RqGUecYq9neFOxd6BR&}098>i*1,w*8g>g*fo>i*eY>i*dc>i*eg>h*5k>i*fI>i*6Y>i*dA>g*6Q>i*cI>g*bU>i&4>w*eE>i*7o>g*dY>i*aM>g*ck>i*6c>i*2M>w*ac>i*4o>y*2w1.g*4s1.h01s0M54:M}81.i?g0814:@]3g1.h01s?58:M]1o1.h01s0g58:M}1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB069RqmNQqmVvpn9OrT80nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?pCZMpmU0u6Rxr6NLoM1CsClxp01UpD9Bpg1MrSNI07dQp6BK07dQong0pClOsCZO071Rt7c0pCdIrTdB07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T04tcik93nP8KcyUR,w01?4?w02?8?w03?8?w01?8?g02?401?1?8?g02?8?g02?8?g01?4?g01}4?M1q0g?4]2PApo6.406g1.g>BV6m1w.M1L0g?4>7kqqgA.80uw4;3gjg:w]Q0g;3ojg:w]A0g;3wjg:w]U4Q;30k]w]Hz:38k]w]K2M;3gk]w]Hz:3ok]w]U2M;3wk]w]Hz:3Ek]w]a2Q;3Mk]w]u2Q;3Uk]w]Hz}kg:w]E2Q:wkg:w]Hz]Ekg:w]62U:Mkg:w]Hz]Ukg:w]g2U;10kg:w]A2U;18kg:w]U2U;1wkg:w]Hz:1Ekg:w]22Y;1Mkg:w]Hz:1Ukg:w]c2Y;20kg:w]u2Y;28kg:w]Hz:2gkg:w]M2Y;2okg:w]43:2wkg:w]Hz:30kg:w]2z4;38kg:w]U0w;3okg:w]M5:3wkg:w]rz4]kw:w]Kz]8kw:w]U0w:okw:w]854:wkw:w]yP4;10kw:w]HP:18kw:w]U0w;1okw:w]o54;1wkw:w]q3:1Mkw:w]U0g;2EjM:o>2[2MjM:o>7[2UjM:o>q[30jM:o>f[38jM:o>s[3gjM:o>m[3ojM:o>o[3wjM:o>t{0k]s>1{8k]s>3{gk]s>4{ok]s>5{wk]s>6{Ek]s>8{Mk]s>9{Uk]s>a[10k]s>b[18k]s>c[1gk]s>d[1ok]s>e[1wk]s>g[1Ek]s>h[1Mk]s>i[1Uk]s>j[20k]s>k[28k]s>l[2gk]s>n[2ok]s>o[2wk]s>p*6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM}?1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vpCVScm4W86pxqmNBp21QrO1Ls6lK82sKbOQDey0BsM.7hFrmlMnSpKtz5xey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM>1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1ComBIpmgwt6YwrT1Bry0DbyYJ9PEw9nc.1QqmRBs5ZzsCcPczEwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc,lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ<4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK,!0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM,820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK05ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt<13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw;!0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI>rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw;5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK}19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U<4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU;1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt06tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM0Br6NA02lIr6ga06tBt4dglnhFrmk0t6BJpn1vpCVScm40bg1Oow1QqmRBs5ZCrDoNojEwrTlQ86ZC86RBrmZOug1QqmRBs5ZCrDoNojEwsClxp21BsD9LszEw9nc09j0NdCNIu01QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwrTlQ86ZC86RBrmZOug1QqmRBs5ZzsCcPczEwsClxp21BsD9LszEw9nc09j0Uu01QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt=4>2,M>g>w>1g.4telg01?701,A}w01M0g>3}4r0PIY>1w.c3g/Zo>Ydb/U>1gRf/B>73m/_s>Ydr/_,MT/_g04:k}5Wkw01u1016MM72901.A>7>63g/Zw0g>UghwUoiwYbtMy?3YqeOEP928,4>4g.1EQL/ng4;14>m>bjj/Yv0w.48e48U2gwUozgd23y2c144ea8o5ggUMwMp73J020Ps12wUMh0UEggUwgwUogwUggwU8hMI>g>E>8Pl/ZT]4M.2Q>@dn/P88>gwUgzM923xye0Q8e88Q4gwUEz0l13z261A4ee8c7hMXM0gdI0wEee4cec44ea48e848e648e448e24sb>5,g1?3ETv/fw>143x1V3ww||#######################&?3g1:904:U4Q:1]5E1:3]2k0w:Q]o14:p]d1d:6M]8]1E]S4Q:s}w]ZvX_rM<8]k]22c:6]3ww:2w:260g:I]6}3]exf]w:3U0g;1g]1M]n]90F:1M]g9g:w]w0g:9]1w]_L/rM>3g9:f/_SY<g:3M/ZL,8UA:@v/rM,E####&}0exd&.co2:Rw8;3C0w;fo2:1wc:m0M;2o3:dwc;160M;5o3:pwc;1S0M;8o3:Bwc;2C0M;bo3:Nwc;3m0M;eo3:Zwc:61$aUM:K2M;2Kc:e0I:Hz]Ebg;7wJ:Hz:2wbg%aUM:62U;2Kc:40K:A2U;3wbw&?2Kc]wL:Hz]MbM;7wL:Hz:30bM;10M:Hz#acg;e08]g:30k:6UN$Kz:3w2]4]854;2bcg%aYM:U0w:1]61h:q3+e04:hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F>2>1;g?hQ4A0jdxcg0w1:204:2>1;g?hQ4A0jdxcg2k0w;aE2:2>1;g?hQ4A0jdxcg1w4g;6wh:2>1;g?hQ4A0jdxcg0w1:dA4:2>1;g?hQ4A0jdxcg1u4g;5Uh:2>1;g?hQ4A0jdxcg1u4g;5Uh:2>1;g?hQ4A0jdxcg2G0w;aY2:2>1;g?hQ4A0jdxcg1E4g;6Qh#g>g0YvY)3g>801?w1+3M>80101g1+8w>80102g1+e,406020kw:4]h,404w3ojg=qM>80103g1+tM>404g3gjg(g0YvY)Bw>80103w1:5Q1:DM>406030lw:g]JM>406030kw]4:MM>8010101w;1Y2:QM>80101w2:7s]U,80103w2:388:Xw>405M1Mkw:w]@g>40602wkw:g}M4.405M30k:5}4M4.405M0wkg;3w]8M4.405M1wkg;5}cw4.g0YvY)f04.404018cM(g0YvY)iw4.801g1w4g=k04.404M3wjg=ng4.40503Ejg=pw4,3M3Mcg=ug4.405M1Ukw=xg4.405w3EjM=CM4.8?w2k0w=Eg4?18*Lw4?2&Sw4?1&W04?18*@g4?18*308?18*7w8?14*c08?18*ig8?1405M30kg;3}n08?1801?w4g;3U]s08?18*yM8?18*wM8?1&yg8?18*Dw8?1&Fw8?18*Kg8?2&O08?18*S08?1&Vw8?18*ZM8?1&2gc?1405M?kw;3}70c?18*bwc?18*h0c?2&nwc?18*sMc?28*zwc?1&Cwc?1405M10kw;3}06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0oT9zcP9vsTs0oT9zcP9vt65yr6lvqmVFt6Bxr6BWpmg0oT9zcP9vt65yr6k0pSlQgR1lt6BJplZJomBK06dOoPcOnSxTnTwUdw1QqmRBs5ZytmBIt6BK06dOoPcOnSBJs6M0oSxBoSJBp2UM07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8Kdg1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1MtnhPg4tcik93nP8KcyUR06pBsD9LsA17j4B2gRYObz8Kdg1CsClxp417j4B2gRYObz8Kdg1Pt6hFrA17j4B2gRYObz8Kdg1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8KcyUR07xCsClB07dKs79FrDhCg4tcik93nP8KcyUR07xJomNIrSc0sThOoSRMg4tcik93nP8KcyUR05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB071Lr6N0hQN9gAdvcyUObzk0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pLs6lKg4tcik93nP8KcyUR06tBt79RsS5Dpk17j4B2gRYObz8Kdg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB07dQsClOsCZOg4tcik93nP8KcyUR05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KcyUR065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ.KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KqmVFt?Kt6lUt?KpCBKqg0KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP##<6M>s>2]702:s08:A-1-2U>1>1w:2k0w;9g2:6M-g+25,g>o]I08;2M0w;601+g]1}d,4>6]204:80g:@3g=8-3E>1>1w:1w4g;60h:3g-g+1,ZL/rM8}2}8:3g]1M]8-iw>I>2]3ww:e2:3g0w:w>1>2}o]58>3,w]88M:wz:xw4+4+1q>//rM8]zyg;2e9:3M]1M]2}8]pM.fX/SY2]d0A:Q2g;1}0w>1>2-7o>4,w]g9g;10B:w0g:7}w]6]2,1>48]A2A;2gag;fw1:1M.1o>8]1w]yw>4>2]90H:A2I:M1w=4-98>7,w:30cg;c0N:c)w+2B,g>8]Y34;3Mcg;3M-4-IM>4>2]30O:c38:s0g=2-bQ>e,M:3gjg;d0Z:2)w]2]39>3M>c]S4Q;3ofg:w-8}w]Rg>4>3]e1d:U3Q:8-2-e8>6,M:3Ejg;ewZ:M04:8}w]4]3H,g>c]G4Y;2EfM;4)8}w]Y,4>3]exf:W3Y;3)2}8]fA>1,M:30k:c1]K04=2-3_>2,c]w58;1Ugw;4w4+w-104.4>M-u48:K)g]1}Q1.7[38tw;ax2:804+g-1,w(38gM;a05:7>1Y>8]1w]2g>c*q4A;2I0M+g+14>3*1hd:8M4+4+'
;;

'aarch64')
b64=$'144302 72152\nmd5sum:c1ee2ea49f232f6bddc7b75091cf916a\nsha256sum:42edb34e0bbe4e502ef254825c0a45419ae2dfd80a108a285a21f98281a6ebef\n0flVxY@jLE7fS__xXNeNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKghY@jBE7fSYxDbReexMWrA\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n04Poj4\n000000\n00000\n0000\n042\n000\n31\n00\n````````````````````````````````\n027Zog\034vQlchw810g=?c0JM01+1=9wi0g=04?e?704?7g0s?4<5`=I2k}2M9g=0g}g<o>38_g}czZ0g:OfQ1:1U1[a08=01}2<1w>e3Z[UfQ1:3w_g4:c01[M04[8=g<4<O04}380g}cw1[9=A=g{kelQp0g;8M{z{2c}1k{5g{1{1hVnhA1w``;g{5bBt6g4<OfQ}38_g4:czZ0g:e08[U0w[4{1<1g<3<hQVl0fjwj6PfuAucrNA3sOHitseioTYd:c<t;g<o<gg0h02og[t<7M>cgrXlGHwUPNEBsWDa4Qqnk`)c02g3w3g#c05w3>8)4<2`xM>1`hw>28!lg>18!Zw>18!Bg>18`04?18!S<18!WM>1`Ng>18!Q<1`Ow>14!vw>18`g>2`Yg>18!Dw>1`1M4?18!oM>18!Lw>18!Tw>18!H<1`b<2`BM>18!rg>18!cw4?1`V<18!kg4?1405w2M0g8:3=304?1802M0E7[4g{fw4?1405w3w0g8:3=804?1405w0g0w8:3=05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs01MrSNI07dQp6BK07xJomNIrSc0pCZMpmU0pD9Bomg0pClOsCZO07xCsClB07dQong0pSlQonlUtC5I06pzr6ZPpg1MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T=4?g02?8?w02?8?w01?8?g02?8?g03?4?w02?8?w01?4?w02?4?w01?4?g01;g0206g1>g{behBwo>c0rw4?1<2nApo6>207A1[OfQ1}.[80g[QfQ1}.[2Mg[SfQ1}.[dzZ0g:M?2}.[a0g[Q?2}.[d0x[S?2}.[d0u[U?2}.[d0x[W?2}.[fwu[Y?2}.[d0x[@?2}.[40v=42}.[90v[2,}.[d0x[4,}.[bwv[8,}.[d0x[a,}.[30w[c,}.[d0x[e,}.[5ww[g,}.[aww[i,}.[fww[o,}.[d0x[q,}.[20x[s,}.[d0x[u,}.[4wx[w,}.[90x[y,}.[d0x[A,}.[dwx[C,}.[2wy[E,}.[d0x[I,}.[ewt[K,}.[80k[O,}.[d>w:Q,}.[80y[U,}.[10t[W,}.[80k[@,}.[2010w[82}.[a0y[4082}.=t[6082}.[80k[a082}.[6010w:c082}.[c0y[GfY1}11<M+IfY1}11>1g+KfY1}11>7g+MfY1}11>3w+OfY1}11>4-QfY1}11>7M+SfY1}11>6-UfY1}11>8(2}21>1-2?2}21>1g+4?2}21>1w+6?2}21>1M+8?2}21>2-a?2}21>2g+c?2}21>2w+e?2}21>2M+g?2}21>3-i?2}21>3g+k?2}21>3M+m?2}21>4-o?2}21>4g+q?2}21>4w+s?2}21>4M+u?2}21>5-w?2}21>5g+y?2}21>5w+A?2}21>5M+C?2}21>6g+E?2}21>6w+G?2}21>6M+I?2}21>7-fOc3RvRXLWDZ0M2hrg?BfRXMqy_8MflM0dvRw<3MuX@FY>Y17@h_AgUz@h808vRxYw0Zkv80fl7O03Rh01090h0A3V4080Ai|0g2g4gp0@h0y094w0x_m4040A14agfAggw2h808vRx01090h3A3V4680Ai|0g2g4h90@h22094w0x_m4040A14mgfAgEw2h808vRx01090h6A3V4c80Ai|0g2g4hV0@h3y094w0x_m4040A14ygfAg0w6h808vRx01090h9A3V4281Ai|0g2g4iF0@h120p4w0x_m4040A14KgfAgow6h808vRx01090hcA3V4881Ai|0g2g4jp0@h2y0p4w0x_m4040A14WgfAgMw6h808vRx01090hfA3V4e81Ai|0g2g4k90@h020F4w0x_m4040A156gfAg8wah808vRx01090hiA3V4482Ai|0g2g4kV0@h1y0F4w0x_m4040A15igfAgwwah808vRx01090hlA3V4a82Ai|0g2g4lF0@h320F4w0x_m^e>f?V4vVg>JcD__Nv?R_m7O03RhYw0Zkv80fl?40A>2p410g2g8g09AjY?eL>1kUg?Y27kh_Bx?2QY0c1Gw027Zr?R_m?40A>2p410g2g8g09Ai4?cIy_7_jggO1yO7Ygpf1?2QUw?Q4bIh_By?2QY0c2Gw027Zr?R_mfOc3RvRXLGDZ0M2hYMI0@vc?f1w0AAVg040d@>d?S4vVw>Je>d?o3uhtv__BZz__Vsw081io089evcbgfDZuYaELOc3Rs03nZov80flnOg3RtL__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnA?3MUMc0GE902p60k4aV80o0dgk?b<2Mfwg0jXSYM3Ss101f7Xz0fk1?952g12h7O03RhYw0Zkv8~0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFK6wi1f1Y?KKx@_ZkDB02Ls410bi2g0Chp?1yQ9?941080io1h0e<kE0742ig7xwK04wgkF_?jHgv__le038iH?R_m?20kI03nZov80fl7O03RhYw0ZnZuWGF_gc0AhYc077I3g1kYRc1Gvsr0fAv101NPgk0l3c4gfAk083iow90elY?75P4F@q7MM0si4505gQ243VUkc2Ao02g3Av?1Ng020kFgiDVEb__@nE0g0de530V4?81iUic0@jH__Vu03g0RUxtdGgd8ydbw4QWFUM6wYK4zgfB250er?w3CNs018I?80ib___B@g302G01?Qgf__BM?gbAm__@nUgc0Gw>9?g3ehWLX_B_djgqAA081iZNJ0@u0.2HZuZqEM0dvRxc0wd8k083iUkc2Ak?w5bD_L@nEfL_dugbiqDw@pXio6GYYwd8ydawtdfOUM6wYE0oVfbxgMehg7N0CM3YhVc2_8bb?204Fs80VIc__@nV0c0aI3X_Pnw5QSF0ky8QKcbjGDx0q3O01g1CSc?pJz?aboM0nyPc50bg5?2gFs0PAu8.qE1283iU4c1Auh30bDB9M3VPvX_B@530p7w0NeG0w20kKT@_VvAgQ2VR080Je8DgfDz0NuGU4c2Ag48wdbAgM2VMvX_B@530F7w0NiG0w20kK7@_VvAgQ2VZNJ0@u0.2HPkQ6F_nLmGc03nZo>2g040OAqj@_VsA081iLf__5_srgfDw0MgGYRd1GvRXRGz?R_mUgc3Gw>9?U3ehV4c0Kuj@_VvAgQ2VZNJ0@u0.2HPkQ6F_nLmGc03nZrx_L@n?10Krv@_Vvx0M2G<A030cF6b_L@nZNJ0@ig0w5bPkQ6FEv__5PYc0f590M1k9vN2Q@830aGC103h0M204wk81oJ4h42UoQz46BY01uKx__Zk01?Ai44g98020qbog40J080g3Ax103NoQ326K>5g2140VoQ326zY40f5w?1k?x0emd0M1Hw0OcGM0dvRwc0w1bO__Yn7O03RvRXIaDZ0M2hUtc1Avdj0qDToMeFG_X_BM4?90j043VZ0c0Gy40d97w0NeGDvX_BU0f03jw0NeG0g?A250d97RmMaFB_X_B_k302Fw1g0QU0cjGw4?90xE3uhAvX_B_s302F03M0RU7t0KhYc076I8M1k@mI4GvIH0fC06M1k7Mw0so4?5ij1A3Vo090ek0A03kr083i8M30QK3z0p42081i8g20QKc_0fBt_L@n7M?smQe05jw_Q1V80U0dK4?d0xU4vV802wQzE0w58S043Vl_X_B_c30aE03M2R<A02wep4K_L@n@OJ0@vBHhaBq>kU7t0KhYc076I7M1k@mI4GhY4077J4g1kAMp0@m42g3B14g0Q8rg0sq0y05gv301No3c0l1A0wdbx4?QU0cjGw4?90x83mhcfX_B_o30aEwcg2Q802wQzz@_VvU0M2G82Q0JbdAxd9TdE3ikUiMYKc35GGjDdfOU0coGBd@@v8n8c3O8w2wQy40wd9b_L@n8080J0c308Lx0NyG7O03RhYw0Zkv80fl8xh0e5c04YFPvxurvM01WU7__Rjz0NqGU0coGy80Ed8x083ie_X_BO3@_Xnw0NqGjfX_B_s302Hw0NyGdOc0dgP@_VvR9g0QUMcjGK030F42?2g0gi0QAa0dV7V_v@nU0cpGHAB0bjx0Mah0w20kxz@_VvRmQaF@mJ4Ggk?1jwtQ2VUgckGIr@_VvT0M0GU0ckGLvZ_Vvw0NsGYRd1GvtzgWDZuZ2EM0dvRw>93x0NeG0c0WAtbZ_VvRmQaFU0ckGzs0w5bG_v@nU0cnaLdjgqDToQeF_nLgGc03nZoj?2gsM8RAu034WHx0MahZfT_B_E302E06g0QUg?Q27wh_Aw0a3idw10@u7Z_VvP0M2Gof7_J3E0w58o?2gZg?Y1Az496RgwCh6020kwk?1h2o43VU0cjGA?fZrU0M0G8w2wQy40wdbz0NqGU0cjGK_Z_Vvx0M2GUw?Y60n0biw4AiVofX_dg02wdbxdM3VH_T_BNY0uvbz?3M0w?A4a?F4w081iUjt0@k80CpFyo03VE184Kuv__Nsv301N?U0l1A0wd8z081iUec1Ag80w58x083i_TI0KufX07CL_v@n7M?sgQ205jw_Q1VM040dK4?d0xU4vV802wQzk0w58S043VGvT_B_w30aF0XL@R<A020dF60_v@n@mJ4GqT__Nsj?2gsM8RAu034WHx0MahGvT_B_k302H03g0QUg?Q27wh_Aw0a3idw10@prZ_VvU0M2GMfT_J3k0w59t__YnAU90Gu430aHX0M2Go090ei40g3Dw2w0REuj_du8?f11g0Chg512Kq0n03k3?2M<I3U404ZZLc0ZD0g0jN@UM3Qwg02h8k0gAhYw0Zkv8~0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFK6wi1f3Y?eKx@_Zk@OJ0@lVg0HTRmQaF@mJ4Glj__Ns>2g0e0TAiTZ_Vtr__Yn<A020d94F_v@nl___5U4agfAw040V7M?sjAgDVGe__Yn0bg0sk4?5hw1A0V6M20QE3r_Pjw0NeG0g?A24wdp4O_v@nZwc0GI0e0bgw0a3ieLT_B_c30aG0102Q6w20kBD__Ns0J01Ngg?l606g3A_?1NuNevCKX__Ntx1A0VW_X_5@034WE1?2g8i0RAhXZ_VvS0M2GUdT_JlfZ_Vs0,VavT_B@430aE>2g040RAvTY_VvVqQiFaL__5@034WE1?2g8i0RAg_Z_VvS0M2GM0I0J2?Ed8n_v@nYMc0Gw3D_Xnw0NqG0_T_BXX@_Nvw0NqGhfT_BY0303nw0NeG1vT_BTE503jz0NwGU0c2Ag8?901183igG0WAvbY_Vvw0NKGuMk0Je430F42081i4vT_B_IHgfDRmQaF@mJ4GvT@_NvQ_f@ntgk0d2rZ_Vs0,V_fP_B@430aE>2g>TAt3Y_VvVqQiF_vX_5@034WHE_f@nCwc0d1HZ_Vs0,VYfP_B@430aE>2g020WAsjY_VvXaQ3V@mJ4Gv3@_Nvw0NqGQ_P_BZ3@_Nvw0NqGQfP_BZj__Nvw0MahYvP_B_lrgGDVqQiFSLX_5@030F7I_f@n@OJ0@vlrgGDVqQiFRfX_5@035GH2_f@nU___5@035GG__f@nRf__5@035GGY_f@n9v__5_IHgfDRmQaF@mJ4Gsv@_NvO_f@n?10KszY_Vvy0M2GUgcjGw>9>3ChC_P_B_IHgfDVqQiFN_X_5@vY_Vs0,VLvP_B@430aE>2g060UAp7Y_VvXaQ3V@mJ4GrT@_Nvt_f@n?10KrfY_Vvy0M2GUgcjGw>9?U3mhxLP_B_BHhaCP_LYnwwF0@k?g3Av?1Nmh2vCCf@_Nvw?3g0f17@vRXLWAx081i_gc0AsTY_Vvw?3g0ex7@i40w5b9_f@nU>Q03sh_Ax081iNvP_BM?w5bZuY6EM0dvRzYz0ZnZuX@F_gc0AvRXMqy_8MflM0dvRw-6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP:1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g;9mNIp0E>1Dpnh3k5lQqmRB[t6BJpn1vpCVScm4:7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0bg[1Oow}7hFrmlMnSpKtz5xey1ComBIpmgwt6YwrT1Bry0DbyYJ9PEw9nc>1QqmRBs5ZCrDoNojEwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc;t6BJpn1vpCVScm4W86ZRt21Lpy1JpmRLsDA}1QqmRBs5ZCrDoNojEwsClxp21BsD9LszEw9nc:2kMcjpIr7w0t6BJpn1voT9zcP8:7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8W86pxqmNBp21QrO1Ls6lK82sKbOQDey0BsM>7hFrmlMnSdOoPcOey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM<1QqmRBs5ZzsCcPczEwrTlQ86ZC86RBrmZOug}7hFrmlMnSdOoPcOey1Opm5A86lOsCZOey0BsM:9j0Uu;1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt:13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw<19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI;20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1voT9zcP8w9Osw9OsFb20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng:gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU}19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U}1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw=imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK:19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK[t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng<1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt;6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ}4<2;M>223KeQwwXzJ88eUXi23KeQ16McXl;A>30Xf__r<f3I__@;beT__Vg>20Xv__L<a3J___g<MeX__@g<8Yv__m04?83N__ZI0g?afD__UM2[4=1uB8017wu0hIc7M0g<6<4PI__YM{1;I<qeP__PM{9<4<2gXf__k;11bk4e89Q4Dwd2AM9eTJTj3w11bg>1<1E<LeP__Mw{4<7M>38Xf__504}1M<A<djJ__Z80w>44eU0atb9UHh9gFAOF1BOpGRdd2RQbuTgU0ggXw0FcGB2Cn9FQIDyJVRQbkQQ7uTgU0ggXw0FQIDyJ5AOGkapsCggHngJjjgtXt3w112QsaRQbkQQ7uTgU0ggJ8RQbkQM>1;40g?Ge___Tg{704?1w1>cYf__G0s>113E02Di2u7Qij7FgtBNGo6kOm6VksjpEnChx1CNptSQ7qSkmq5VAo0AjmRk7qSkLuTtvoQZge044ew0aj7FgtBhOm6VsqC1Ct89UvhtrlhZXtRZzjR0U0ggW?FcuB1Sl79orBNGo6pAoCxur5FQwDxZMSREaSJB12R2r5DHrgJrlgtHpgpksBxJ8Chyq5Qmr5BvrkdHpgpAoCxur5B_rgtrlgtHpgpksBxKp69EniJHpgpAoCxur5ALrgtHpgpAoCxt3CNp3SQfmRk7qSk6l79orChyq5VImgMHrgtrlgtHpggJ3SQqr5A4aSQ7mRk7qSk4bigHrgtHpggJ8SQ7qSk6p69EnigHqSk4b<7<3w2?2kZL__h;133x2t0FU1jtXt3w////////////////////////////////////////////////////////////////////////////////////////`````````````````````[w1{I4[dzZ0g}g[1A0g[M{U0Q[d{6Ms[6g[38_g4:1I{2=q{d3Z0g:7=8{fn@_SY;Y04[5{405[1w{E0w[E{x04[b{1w=M[3E_M4}8{a08[k=s{5M[2U2M[s{e0s[8{804[2g{o{fX__SY;20s}3___ZL:4{Yf__rM<341w}fD__SY;a````=?e3Z0g````^e=U{3w{e=U{3w{e=U{3w{e=U{3w{e=U{3w{e=U{3w{e=U{3w{e=U(a0g(3g8g}d0u[Q24}3U7w}d0x[g1Y}2g7M}d0x[K1Y(d0x[c2[3g8g}5ww[G2[3U8`>3g8g}20x[Q24}188g}90x[Q24}3o8g}2wy[Q24(ewt[w1g[1{d>w:w28(10t[w1g[1{2010w:E28&t[w1g[1{6010w:M28(4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag<w<g:4?4t19]0E0Y}2Q3M[w<g:4?4t19]0U0Q}3M3g[w<g:4?4t19]0r1M}1U7{w<g:4?4t19]0M0Y}284{w<g:4?4t19]0r1M}1I7{w<g:4?4t19]0r1M}1I7{w<g:4?4t19]0Y0Q}3Y3g[w<g:4?4t19]0u1M}247`&3?40O04#3?80Y04#3?c0a08#3?g0g0k#3?k0N0o#3?o020s#3?s0e0s#3?w0K0I#3?A0U0Q#3?E>U#3?I0E0Y#3?M0r1M#3?Q0A1M#3?U?2c#3?Y0m2c#301?OfQ1$30140QfQ1$30180SfQ1$301c0UfQ1$301g0EfY1$301k0WfY1$301o0M?2$301s0g082$301w`?301A0q0o2(4<40f7_%w}I0E0Y*I<2?I0E0Y[k=w}A0U0Q*w}M0r1M(1w<40f7_%w}A0Y0Q*w}M0u1M(1Y<40f7_%w}I0M0Y(2I<2?I0M0Y(2Q<2?I0Y0Y(4}180SfQ1)4c<2?I0b1*5A<101s0g082}1{4}140QfQ1)6k<10140QfQ1)8M<2?I0w1*4}1?OfQ1)9w<101?OfQ1)4[Y0r2c(4}1s0g082$40f7_%w}I0E1*bs<2?I0E1{k0g}4[Q0A1M(c;2?I0M14}180w}d;2?I021g}1Q{dQ<2?I0w1g}2E1M}4[Q0U28(4}1s0k082)eI<101s0k082}4=c1>101s0o082[1{Y1>101s0o0o2}4{4}1o0M?2)1A1>101o0M?2}8{2g1>101o0Q?2:1g{3g1>101o08,}U{4g1>101o0o,:1g{4[Y0Q2c(5c1>40f7_^4[Y0H2k(5Q1>1?Y0H2k#40f7_^6I1>2?M0r1M(741>10180SfQ1)7U1>10f7_UfQ1)8s1:U?2c(9E1>101o0g082)ao1>10f7_EfY1)bM1>2?A0U0Q*w}E>U(c81>w!dU1>g!eM1>y`o2>i!1Y2>h01o0I,}M{382>i?I0a1M}14{4o2>i!5I2>i!6Y2>i!842>i!982>g!9w2>i!aw2>g!b02>h!c42>i!dk2>w!eg2>i!fg2>g`83>i!183>i!2s3>i!3A3>i!4E3>g!5M3>h01o0U,}M{6Y3>w!5Q2>i!8A3>i!ak3>g!b43>h01o04082}M{cc3>i`1zsDhFbCY097w0oS5Ir5ZTpm5HnSpK06dOt6UKrM1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM0Ap01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V06dOoPcOnTdT06tBt4dglnhFrmlvrm5Frw1zsCcPcBZEtRZxsCQ0t6BJpn1voDlFr7hFrw1zsCcPcBZQom9IplZFrCBQqm5IqnFBp01zsCcPcBZQom9Ipg1zq6lzqSlAbz?oT9zcP9vqmRMr01QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06tBt65Ru7pxr417j4B2gRYObz4T07dKs79FrDhCg4tcik93nP8Kcjs0pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1UpD9Bpg1MrSNIg4tcik93nP8Kcjs0u6Rxr6NLoM1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0s7lQsQ17j4B2gRYObz4T06tBt79RsS5Dpk17j4B2gRYObz4T07dQsCdJs417j4B2gRYObz4T06pOpm5Ag4tcik93nP8Kcjs0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz4T065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ06pBsD9LsA17j4B2gRYObz4T>KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KpSVRbC9RqmNAbC5Qt79FoDlQpnc```=?1I<7;w[380g}cw1[9^g&K<ZL__rM8{Y04}3M0g}3g=M{8&e;I<2{2w2[a08[o0M[g<3<2=o{4;3;w[101g}405[x04*4*18<____rM8{N0o}341w}48=M{2=8{lg>fX__SY2=w7[20s[M=g<1<2&6g<4;w{U1M}3w7[w0g[3=w{6{1K<1<48{K0I}2U2M}2w2{M>1k<8{1w{u;4<6{e0d[U0Q[s&1&7c<1<1w=3w{e[A04(1&1@;g<o{E0Y}2w3M}cMc*w&x;4<6{6Ms[r1M[o&1&8E<1;w[2g7[90s[s0o(1&2i;g<8=2c{8M}5g&4&E;4<2{5wz[m2c}1o0w(2&aE<e;M[38_g4:czZ[2^w{2{2S<3M<c{QfQ1:3g_g[w&8=w{Mw<4<3{dzZ0g:SfQ[8&2&cY<6;M[3w_g4:e3Z[M04[4=w{4{3o;g<c{EfY1:2w_M}4w&8=w{Tg<4<3{ez_0g:WfY}3g&2=8{eo<1;M[3>8:c>g:w04(1&3I<2;c{g082:1?w4:2w4*g&Yg<4<M&g081}K^g{1{fE<7+1E1w8:7020g:804*g&1;w#2g0M4:20a[6M>4U<8{1w{2g<c!I0Q1:3l0M*g*14<3!8kh0g:404*4*'
;;

'armv7')
b64=$'26160 13080\nmd5sum:eebfe5502786cd52489b9c4200180eb4\nsha256sum:22f217801eb5312ef8089a82fe58f09de205aba2327105e6b7749b0c38d305b1\n0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw\n0sSlQtn1voDlFr7hFrBZQqmRBs\n06RxqSlvoDlFr7hFrBZxsCtS\n000000000000000\n0jUWcMEe41c2cg\n00000000000000\n0hQN9gAdvcyUQ\n0000000000000\n00000000000\n0000000000\n04@ezca3x\n000000000\n00000000\n0000000\n000000\n00000\n0000\n281M\n000\n05M\n01s\n0g\n04\n01\n00\n0s?8w7?]?y\n################################\034vQlchw41,*0c0a0.-3g:2Ubw}g.jg08?602w07?r0>#}3g6M?Q1I:k=40,:1gv:k7M4051Y102w2:Q1w0.w=g02}81Y?20v,0w7M40U}e[6}1[g:3Q}Z}fg}A}9[g}4}kulQp#*.w:1}1iVnhA51Y0.gv,0k7M40X}eM}4[g}g}k[M:4telg0CRifJIMsQBLp6TQP5cfUryrlwfMc}s[g}k}V1.w[1M}u}N1LJmGK3zf6ylPGsEjhFtg#*v0s+3?A{8gw,=M0k0bU%18:16#y}4#8}8g%1}1L#i}Ng%4w:dA%18:1l#i}U#4}eo%18:3b#g}QM%4w:fs%18:2z#i[g%8}eI%18:1S#g}_#4g:98%18:1J#i}Y#4w:aM%1}1z#i}b#8}1o1&1}17,?Z2..w}h.g?w40>Mk0.Q}4w0b03g1:c8g406}1405?y,?9241.w}h.g?5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC069FrChvtC5Oqm5yr6k0oDlFr7hFrBZBsD9Lsw1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO!07dQsCdJs.CrT1Brw1Urm5Ir6Zz06pOpm5A06pBsD9Lsw1UpD9Bpg1MrSNI07dQong0pCdIrTdB071Rt7c0sThAqmU`.xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt.QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcP>tcik93nP8Kcjs^(8?w.0>?w02?8?M.?80,02?8?w.0,0,02?8?w020>?w.0>0,.0>0,.?c0mw40.(IV6m1w0..A,0>}9uhBwo:c0rM40.[kqmAd:207E1+51Y1<}o7M4;:1Mv,0n}x2.<:288>;:8Mw,0n}A2.<:2k8>;:9ww,0n}D2.<:2w8>;:agw,0n}G2.<:2M8>;:bgw,0n}K2.<:2Y8>;:c0w,0n}N2.<:3c8>;:d0w,0n}R2.<:3o8>;:dMw,0n}U2.<:3A8>;:eww,0n}X2.<:3Q8>;:fww,0n[241<}48g4;}Mx,0n}4241<}o8g4;:1Mx,0n}9241<}E8g4;:30x,0n}d241<:1A8>05gg?6ww,0l1g?r2..ks0.M8>05h4?7gw,0l5:u2..ku0.Y8>05hE?80w,0l7M?32..o3:g8>05wg0.gw,0m1w?62..o7:s8>05ww?20w,0m2g?92..oa:E8>05wI?2Mw,0m3:c2..od:Q8>05wU?3ww,0m3M?f2..og0.08>05x40>gw,0m4w?i2..oj0.c8>05xk?50w,0m5w?l2..on0.o8>05xw0;w,0m6g?o2..or:8g2TFhM?WMy0Luw4U2TB1e2vVgXwz@08YbXBq1w1?36z@8hOEPyqfyYVg36z@8hOEPyofyYVg36z@8hOEPymfyYVg36z@8hOEPykfyYVg36z@8hOEPyifyYVg36z@8hOEPygfyYVg36z@8hOEPyefyYVg36z@8hOEPycfyYVg36z@8hOEPyafyYVg36z@8hOEPy8fyYVg36z@8hOEPy6fyYVg36z@8hOEPy4fyYVg36z@8hOEPy2fyYVg36z@8hOEPy0fyYVg36z@8hOEPy@fuYVg36z@8hOEPyYfuYVg36z@8hOEPyWfuYVg36z@8hOEPyUfuYVg36z@8hOEPySfuYVg36z@8hOEPyQfuYVg36z@8hOEPyOfuYVg36z@8hOEPyMfuYVhgMD@kk89_B0P2fU08wA@s?5bz7LYL0tT__@Fc5M40s}2M0D@kIc9_Bb22vVg?z@03c8_w0.jUg8wz@0u_OY1632vVgcMAKs?5fz7LYL0hf_b@5w6>0n1w1.wn,1E}e02vVjwMD@k?8_w0P2fU?Mg@2z7W3xa22vVkchwu314b3x0y2fU1X_bM4oc9_B0P2iVM?k@cu_OY14_YLUi0o,0s6>0O1o107M:1cc9_Bj22vVgcMz@?cdfB0y2fU:k@cu_OYh440JWjgMD@k3c9bD0.jUM8:EE09_B?2fU8f__@La___H0i2wUNwMD@k3c8_w0233Vh20Luzg5M40z1o106g:245g40A1s10d3__@HIc9_B1e0JVgcMz@?89fB0c2wUg?kKc1Ua3x8w?6y0j2ec30a3xK1ReUW8MEe41.bz0j0z4>)0j0z4>)0j0z4>)0j0z4>)0j0z4>)0j0z4>)0j0z4>>@c188byEP2wUg4M8N.35bz132wVuf__NE18a3zk32vVgcMz@?88fB0.uUMQ:E08e3zf12vVgXwze.48_w0j3sV08M8@1Pce_C0P61U,MA@ke05Px8ygzUfv__NE20e3x1f2tV0U0Ee44Y9TAq1s10cMm,2M5w40Y4YJWgc0kefkQ4Tyng?Ow40kec0sa3j1V2wQgo?dE4s97B033nVg?k@c0sa030M1gUM2gE1dt:ai82dUw80Eec84a3xc___WM?kecW:qQNQ4UQ0y1edcc9TBox11UYdfEe6h4Yfwi02tVkd3pe0f843zN6@wUp12VK28k8Ty1h2wUg?Uedc___H051gUAI0.F>wjzz22tVozwDukf443zMz@wUpUxU@2gM9TBB02tVpMxU@?89bwM3@zU,wAK03carw0.nUP4:EIIp_B2a2dUwKMz@3M8cTxg12wUMIwEe4a0a3xaL__WMkwEe4a4a3x1M2wUi3__@I?5Dz2g?2wIwEe5>a3z202wUg10zuk4o8TB7L__WMkwEe484a3x2g2wUhj__@I50a3xRd2dUL2fLuy8k8Ty1h2wUg?Eecs___H0.gUOc0.F0cwjzz42tVow0Dukfc43zN6@wUp13VK2g49TBB22tVp53VK02g9jwMC@CUbX__@FY09_B?2fUdn@_@I1ka3zVv__WCM0D@k?8_wQ_X_WMk0Ee7kQ8TyY8@ZW0ygAuk0cdDB0.jUM2gE0es___GYvX_WM?Aenz_L_H.2wUjg0D@k?8_wMvX_W@H__@HF_L_H?2gVtL@_@I>a3x602vVg?z@2V_L_HUL__Wwwa?3Y2:j0A?ew8?2I2:Y4YJWnPgju8k48TyULX_WZwmD@k0o93B>2wUg4gz@060a3xE_X_WYhSD@k?53z1T2fU8A:GU5F_B1w2wUg4gz@2r_L_H081gUB8:GA5F_B1w2wUg4gz@2l_L_H051gUEo0.Ekc9TB0M1jUOI10cHP:a0w1jUUo0.E4o9jB033mVg?k@e2:a0b2wUOQMk@81cdo50.jUTU:Fk5F_B1w2wUg4gz@2c_L_H081gUDk1?E12a3zB_X_WM1Mke8W,0a032wUMMMzukEBF_BaaqvVg1wEec9A8_w2G2fU0A?eE4d9DB1M2wUg?k@c1ca03032s5ggQygkaca.0a221jf_b@40oa3x0iywUM4gEec8ca3x1M2wUo7@_@LsNp_BT2mvVg,ke8cM8_w0y2fUeH__NE80a3xqLX_WM?kec70a3x9w406CP@_@Icc9TB0.jUP41?GE9p_B872dUwoMEe4w4a3z1M2wUg8wz@20_L_H0.rUOU1?E08a3z1N2wUgI0Ee5Q_L_Hd:WxgMDuk305fzUw?Ow40k@dZ?3q152kVg0wRuk?5bzQ:2yQwkK818dk50M1jUM2ME1d1,0a0.iUTc:EQ5p_B1g2wUg4gz@0@_L_H0a1gUz.?E12a3zivX_WM2gke8o,0a9mc2U@hY2uePkg3z8Ch8U_9Xjecaca3x0iywUM4gEec90a3xgfX_WM?ked5:a0i19Uw?wK.cfbB0S0CU0oQEe6ldOfwBCm7U:kK47s8fwZ___6KT__@E44a3x502tVtT@_@I0ka3x102wUij@_@I50a3xvd2dUL2fLuyg19_B1x2wUg?z@0e_L_H0l2wU_j__@E5Ia3x022wUM5wEecs88TB602dUwogEe4o88TBL67dUhn@_@I?53z3w?SHUNTu41.fz2M?2AgQD@k12a3z0P2nVM20A@ke_L_H071gUwNwzhlT__Yqa0ivVg?z@3P_v_HU___WxNAD@kw48Ty1C2fU0o0Ee4h_L_H031gUwMMzumq:aZ3evVg48Eec3c9vD082jVvHZ_@I0s53yXf__2w4MEeccc8TBov__WwE0Ee7D_v_H051gUwA0Ee6o:qWvT_WM?meeI:a812wUXgzD@k0o8TB0m2dU0o0Ee4288_w172dVvTZ_@I?5LzG:2w0wEec64a3x2M2wUv7Z_@KN___G2b2wUg60Eec08a3z212wUhw0zu8o88TBL87dUtfZ_@I?53z2w?SHUNTu41.fz1M?2zMPD@k12a3z0P2nVM2wA@nc_v_H091gUEb__NEe?3Gb5evVi,zu85k8_w1g2wUtfZ_@I0w53yjM?2w0PD@k12a3z0P2nVM2wA@mZ_v_H091gUw60E1dO__YqZ0avVg?z@2y_v_HAL__WA08BeA0cdrB023rVg?k@cV:q0.iUUX__NHc0F_B?2fU?wAek?5bzvv__6y0j2eeU7kXzEz2wUg4>Kc1c2cg,$,$,$,$,$,$,0jUM4wwKazca3x0j0z4>ckKc4ca3BU___6w4wEed0cF_B0P2fU?ww@lq___G0M1jUMaME16C__Yq2b2kVg0MS@k?5fz0b2w0W7__@Ek0F_B?2fU6vZ_@Jn___G20avVg?z@1z_v_Hk___WyQMk@81cdo50.iUM2ME0fg_L_GW16vVgk0Ee4148_wn_T_WM2wke8w__YqwfT_WM?AelO_v_H.2wUsg1D@k?8_wkfT_WQ3__@GU4p_B1w2wUg4gz@1h_v_H081gUz8:E12a3znfT_WM1Mkeb6_LYq202wUnfZ_@Jb___GkfT_WM?mecv:aqfT_WM?Aelq_v_H.2wUmM1D@k?8_wefT_WOz__@F5_v_H332tVg?k@cm:anfT_WM?Aele_v_H.2wUk.D@k?8_wbfT_WNP__@Ea0a3xmvT_WQ___@E80a3xlLT_WYH@_@E60a3xfLT_WMH__@E70a3xe_T_WMv__@Ea0a3xjvT_WZP__@E80a3xiLT_W@n__@Ea0a3xh_T_WT3__@E__v_H?2gVj7Z_@I>a3xQ02vVg?z@0f_v_H__X_WzvZ_@I?93BavT_WM0wEe6Q09_B1x2wUg?z@06_v_HZLX_WyXZ_@I?93B8fT_WM0wEe6k09_B1h2wUg?z@3Z_f_HXvX_WwyMBek0cdLB0.jUM2ME0eU_L_GL0w?egi,2A2:k0A?6w80.Q4M40@fL__Sgi,1w4w40V0w?307?3o1M?t}2M7:41w?80o:M5:I1g?X0Y1;f,2c1:K0c?bg3?2k0M?v0c?a03:I1:j0c?5030.M0w0>40JWlx0D@loc9_B142fU0cMBes8Q4Ty0h2wUMc0Ee44c8TB2fT_WPMMD@k14a3z0P2kVMc0Ee44c8TB0LT_WOwMD@k14a3z0P2kVMc0Ee44c8TB_fP_WM?Eec8Q8Ty482ZWa0b,2[u}6M}8g2TF282ZW3Q:1[2M:4[g}g}2o:1[dg:4[3}g[o:1[5}4[e}g[Q:1[9g:4[i}g}2w:1{w:4[o}g[A:1[2w:4#6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP06tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp{Br6NA2w:6tBt4dglnhFrmk?7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0bg:79y0.QqmRBs5ZCrDoNojEwpC5Fr6lA87hL86ZMpmUw9OULbisW82lP}t6BJpn1vpCVScm4W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP[7hFrmlMnSpKtz5xey1LtngwrSowrmlJrT9V0.QqmRBs5ZCrDoNojEwsClxp21BsD9LszEw9nc09j0NdCNIu.QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1ComBIpmgwt6YwrT1Bry0DbyYJ9PEw9nc:1QqmRBs5ZzsCcPczEwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc[t6BJpn1voT9zcP8W86ZRt21Lpy1JpmRLsDA?7hFrmlMnSdOoPcOey1Opm5A86lOsCZOey0BsM0Bc3xU[7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi~}19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI[20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK0.9py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1voT9zcP8w9Osw9OsFb20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi~?imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw}19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U0imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw?t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng}1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt[6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0fg:4[b}g}1}1[9w:4[R}g[c:1[1w:4[k}g[U:1[3g:4[B}g}18:1[a}4[2}g}1w:1[2g:4[a}g||###########(N0A0;9:s7M40,:5E1:c}v0s:Q:305:6g:1gv,0r}1}1E}o7M407[g:3R_LZL6>:k:180M0.w:4w1:a}x>:I}g[M[w,02}I}1g}h}5M:cM6:h}j0k0.8:20,0>M}w:3@__ZL30k?f___SY1}Yf__rYM4?3W__ZLa###&w7M4*]?y//////0s?8w7?]##%382g?91w?6Mn:A6:A1s?2go?3o5M?a1w?2go0.g6+2go?386:91w?eMo:U6g?b1w+A6:y1A?2go?2M6g?@1A?2go:Y6w?y1E?2go+B1o?egc:1}y2.0dMq+Q1k?egc:1}I2.0fMq+N1k?egc:1}P2..Mr+hQd3ey0EhQVlai0NcyUObz4wcz0Ocz4Ncz4wa59Bp218ongwcj8KcyUNbjgF>4M}omlxoCA?io}5dOR1?oa1Q48,A22wgi11g15g4n0Nw16g4q0xM18w402[w{g?hQ4A0jdxcg2A2:O0w:w}8{40>t19>Poj40v0s?8g7:8}2{10.7gig1cS4N0c0k?345:2[w{g?hQ4A0jdxcg382:O0A:w}8{40>t19>Poj40M1g?c0k:8}2{10.7gig1cS4N0c0k?305:2[w{g?hQ4A0jdxcg241M?y0s:w}8{40>t19>Poj40N1g?cwk#%fg(M.=o,+c?w{i>+3?c{4w3-M>{3c1-c.g{30k+3?o{4M5-M07{3c1w+c02=v0s+3?A{8w7-M0a{2A2-c02M{M1g+3?M{cwk-M0d{3c6M+c03w{51Y1=3?Y{1wv,=M,=s7M4=c>g{81Y1=3.8+w,=M0j{248>=c05=f241=3.k#:M0m#:c;{i2k1=3.w0,%103N_Mw:2A2*2M0b}F0w+2?I06}c08*b?w:1Y1M(2g08}M1g*M06M%103N_Mw:241M(2g08}N1g*M08w%103N_Nw:385*3g0K}O1g+1?Q02}cw8*b>}382-802M0o}_0w*I02[M9*b>8}c2g+802M0o}j0A*I06}1Mv,-h?w:1s2g(2M1l}n0A+2?I06}b09*b06I}Y8g40,}405g0o}61Y1-1?tM:1wv,=g,?w:342g(2M2u}N0A+2?I06}1gv,-f0aE}k7M4=403M0o}f241-1k#0.03N_Mw:382g(2M39}O0A}1:2?I06}bMa*b.w:1o5g(3g08}O0E*I0Qw:cwa:s0w:w0b.w:3g3*2M08}V0M*I0Uw:egc0.E1M:w0b.w:3k4M(2M08}j1g*I06}b0k*b.w:108g4-5g3M}g2410,}1.k02>0>gx,0.}g0l.g10.49g4.[405g0o}x2.-1g07w4?8gw,>[g0k02A1?288>0a[405?V,?I2..M}1.g0ig4?cMw,0E[g0k05w1%g0YvYo}f1I*Q0bw:3Mr-g0d.w:3c6M(3w1y,?P1I+1?U#0.03N_T.?305-803.S,?71Y1=1.40wM4?20v,=g3N_UM1:Y8g4=40502o,:2.=10f7_Hw4?7M7-w09?w:](2w0o}C0s*E02}9M7*a0bg1&18:35,&y}Tw4&8}fE1&1[i0M&i}208&4w:1w2&18}F0w&i}gw8?fgw,0o}4g0k05k20.c5:t}1802M1F0w&g}rM8&4w:7U2&1}260w&i}Bw8&4w:ak2&18:2U0w&w}NM8&4w:ds2&1}3B0w&h}Zg8&4w:103&18}z0M&i}d0c&4}4o3:c8g406}1405.p0M&i}rgc&8}8s3&1}2j0M?9241.w}h.g?6dOt6AKrM0Aog1zomNInTtBomJvpCU096g0oT9QryVL06dOt69BpSBKkOVL065Ir5ZFrn1IqmlAnSpyqnhP06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru.zrSRMr6lQpmgKc.vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0oT9zcP9vsTs0pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0oT9zcP9vt65yr6lvqmVFt6Bxr6BWpmg0oT9zcP9vt65yr6k0oSxBoSJBp2UM06dOoPcOnSBJs6M0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ07dQsCdJs417j4B2gRYObzg0nRZzu65vpCBKomNFuCl^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kd.Cpn9OrT9^06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1QqmRBs5ZzsCcPcBZPt79RoTg`.UpD9Bpg1MrSNIg4tcik93nP8Kd.Urm5Ir6Zz06pOpm5Ag4tcik93nP8Kd.MtnhPg4tcik93nP8Kd.Pt79BsD9LsA17j4B2gRYObzg0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0sThAqmV^05Zvpn9OrCZvr6ZzonhFrSV^07dKs79FrDhCg4tcik93nP8Kd.CoSNLsSl^!07hFrmlMnSpKtz5xnTdQsDlzt.DpnhOtndxpSl^05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bA5ijiVxt7hOqm9Rt6lP02VDrDkKoDlFr6gKonhQsCBytnhBsM###-6M}s}2}Z}fg}A#4-2U:3S__ZL0w:1w1:o,?c[c-1[g}U}2M}8:18,?i>}2:4[M}g}g}g[c}2}i0c0>w3?24,&1-4w:3___ZL0w:cM4?3c1:g[c(w}8:1l}_L__rM8}c1g?30k0>[4[g}g-p[A}2}j0k0>M5?20,:M-4}2}6Q}9}gw:cM6?3c1w?I[c}j}1[w:1S[g}o:1Y1M?v0s:M#g-sg}4}6}y0s?8w7:s,&4}1}7M}1}1w:ag8?2A2:70M&1-22[g}o:305:M1g:w#g-y[4}2}O1g?cwk:41M&4-9[1[w:cMr?3c6M0.#1-2q}3w}c}k7M4051Y:g#g}4}Fw}Y}3}61Y1.wv:4#4}1}b8}1[M:1Mv,0s7M0.#1-2_}1w}c}w7M4081Y?e[4(g}8}O[4}3[2.:w?24#4}1}cQ}1[M:8gw,248:K#1-3j}2[c}Y8g40f24:M4%g-S[4}M-3Mx:K#1[g:e4}30.M(1G8g?cg#g+3N}1M+189g40D24?e#,(g}8%7My?2g1M?6w:5M}4}4[A}3#caw?Fgc%g-h[M%IiQ:s1%4-'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'145454 72728\nmd5sum:8f8426191996bd5a8784ba517c12e777\nsha256sum:34f82928e91704bdbf28d7e32fd7ceefdb65665cd3211f55b01aafb5a060a4e9\n0GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0Mc3\n0000\n011W\n000\n0g\n00\n````````````````````````````````\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg\034vQlchw81.+0c05g01-1=1wl.}w>4?e?704?7?r?4<5`=A2U}2gbw+g}g<o<8_g[zZ.]2fQ1}U1g}609+1}2<1w>23Z[8fQ1}w_g4]e01[U04[8=g<4<O04}38.}cw1[9=A=g{kelQp.>10b[40I[g2M[Q{3g{1{1hVnhA1w``:g{5bBt6g4<2fQ[8_g4}zZ.]@08}3U0w[4{1<1g<3<hQVl0dAFqg5a0VL6bNVS0WY0L0HTdcj6]c<s:g<o<gg0h02og[s<7w>cgrXlGHwUPNEBsWDa4Qqnk`(c02g3w3g#c05g3>8(4<2`FM>1`hw>29w#lg>19w#3M4?19w#Tg>19w#_M>1`1g4?19w#Jg>19w#UM>1`rg>19w#Ng>14!Dw>19w!g>2`2w4?19w#vM>1`5w4?19w#oM>19w#Yg>19w#WM>19w#OM>1`b<2`zg>19w#pM4?1`@<19w#g04?1405g2M.8]3=kM4?19w2w2w9[7=bg4?1405g3w.8]3=6M4?1405g.0w8]3+5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U069FrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO05Zvs79FrDhCqmlBpj4Oe01Pt6hFrw1JomJBnS9RqmNQqmVvon9Dtw1CrT1Brw1Urm5Ir6Zz06pOpm5A07dQsCdJs01Cpn9OrT80u6pOpmk0s6ZIr01Pt65Q06pzr6ZPpg1MtnhP06tBt4dglnhFrmlvsThOtmdQ07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01xp6hvoDlFr7hFrw1Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs=g01?8?w02?80.02?c0.03?8?w010.0.02?8?w02?40.02?4?w01?40.01:g0307c1>g{behBwo>g0vg4?1<2OApo6>308w1>g<BV6m1w>w2j.[zZ.]5w{w4w}13Z.]5w[2M4g}1zZ.]5w{o_g4]c>w]5w[104w}d>w]5w{gaM}dw?w]5w{ga[e>w]5w{gaM}ew?w]5w{Ua[f>w]5w{gaM}fw?w]5w[20a=10w]5w[3ga{w10w]5w{gaM}1010w]5w[3Ua[2010w]5w{gaM}2w10w]5w[1Mag}3010w]5w{gaM}3w10w]5w[2oag}4010w]5w[3Eag}4w10w]5w{Uaw}6010w]5w{gaM}6w10w]5w[1waw}7010w]5w{gaM}7w10w]5w[28aw}8010w]5w[3gaw}8w10w]5w{gaM}9010w]5w{oaM}9w10w]5w[1EaM}a010w]5w{gaM}b010w]5w{E9M}bw10w]5w=5M}cw10w]5w[3g?8]d010w]5w[30aM}e010w]5w[1g9w}ew10w]5w=5M}fw10w]5w{w.8[20w]5w[3waM}1020w]5w[109w}1w20w]5w=5M}2w20w]5w[1w.8]3020w]5w=b{z_.]9w>1-013_.]9w<c-1z_.]9w>1w-23_.]9w<k-2z_.]9w<U-33_.]9w>1Y-3z_.]9w>1U-43_.]9w>1M-1>w]5g<g-1w?w]5g<k-2>w]5g<o-2w?w]5g<s-3>w]5g<w-3w?w]5g<A-4>w]5g<E-4w?w]5g<I-5>w]5g<M-5w?w]5g<Q-6>w]5g<Y-6w?w]5g>1-07>w]5g>14-7w?w]5g>18-8>w]5g>1c-8w?w]5g>1g-9>w]5g>1k-9w?w]5g>1o-a>w]5g>1s-aw?w]5g>1A-b>w]5g>1E-bw?w]5g>1I!6011@6y1wKCC0UBZ80i0jw%204MY0752eao227Mg?7UAvYx@<608w0bE?2wbMM0_A6Z__Zb6,7?8jwg?7EFwc8v2?w4U:6011@221wKCC0UBZ80i0jw%o047UC862Wqo3ynQw181e%1w.vyMwobFFwe9vi04w4U%6011@121wKCC0UBZ80i0jw%o047Ug862Wqo3ynQw181e%1w.vwEwobFFwe9vi04w4U%6011@921wKCC0UBZ80i0jw%o047Ue862Wqo3ynQw181e%1w.vxUwobFFwe9vi04w4U%6011@by1wKCC0UBZ80i0jw%o047Ui862Wqo3ynQw181e%1w.vwowobFFwe9vi04w4U%6011@521wKCC0UBZ80i0jw%o047Uc862Wqo3ynQw181e%1w.vywwobFFwe9vi04w4U%6011@ay1wKCC0UBZ80i0jw%o047Uo862Wqo3ynQw181e%1w.vy8wobFFwe9vi04w4U%6011@821wKCC0UBZ80i0jw%o047Um862Wqo3ynQw181e%1w.vxMwobFFwe9vi04w4U%0w1cf21Kgzw>1w<o423ozx0wO8V01wFv2?wAQ>1w4822Wg?b2Mw089dFw88v1>vzx_O7UFwe9vhw.vwx181e6,2?8jwg?7EFwc8v2?w4U?49w0w1cfc1Jgzw>1w<o423ozx0wU8Uk223v7gux7NQ3EhYBg64v2?wAQ>1w6822Wg?b2Mw089dFw88v1>vzx_O7UFwe9vhw.vwx181e6,2?8jwg?7EFwc8v2?w4U>1w?12o080j3Ngrk8U<o4238EA>AI8022jao227Mg?7UUvYx@<60ww2bF>Fb1g0wA7__S8Y67VzebnZ_QIo047EZvX_iO?8jw1020V<o1>ux0wOapFwc8v2?w4U>1w<o>gC0204MYU6N2e23__QI>1w<o<6<1w<o080j3P0r48U<o5238E4>1wu1JEv7wzyDNgwY8U>9bdw0wA3@_@8Y_L@yf32JVPwwHqkU4?CeoM30h2pfE1Zg03we9AKo7Sc0QghFwfFv<6<1w?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev640y4gym2J4tscHv4n12TMx|02AVtfY.w4083A>1wk8cyAg?ayNc0891Fwd9vv__23D__Q0V<o<6<1w?12o040a8Q@MAtlu58FvqwlanAkiypZ4019wnwWiDTA_M12@51avi0.TAw081e?10ei0.TAw081e^o<6>49w0w1cf51HgzyC0wxY0M03b1>vxh_y7Uy0a1gg40wO@80m7XA061@Vw1EvKE0u7XA06tg0w0VeI?3@9?29bMw0DA>e0X>wenxbf7SM0E91Y?xeg80o3xUiOhZu4IXviTW_QIo047E>3b7M1wA3U047Fk@cwfsgw03TM0e7EFpI8os_Tam4e?BV3M?fp98aDR.wxxQzA8vnr@iDRw084U__Zwe7g@anRgi4FZ558EvnxbfnTR@_Zb6,<OO80o90o031W7?Euwf040Zq03xW7w?uA?3YIg49aot8NODPiakFZ53H6v1hiNDMkgIpY5eH6vc01wA7@_O8Zc051enw1op2w0s7XcasFenxjgTRUiOlZg020e701gvBUiPVZNvL_iNw.uxM0k7F?2we7zXUTZUkQhZjvH_iNw.uw?3MIu04xwjw0wA5UWWp_uff5vT018p5?80UudJzvUnX_QIo047E?2we7zrp7ZUUUd_4vH_iNw.uxM0i61y05xWV01wuKo0q7HE071WXg78TSE0u7HI04xe1>uyC0MxY8020jw>6<1w?12o>U3I?20V0w1we7xbf7TM024Vu4IAvnxbeTSR@fZb6,<OOc_E91o021e>o3xM0o7UKvH_iNw.uw>cI7062g6?8uBM0c7E3M10fmw0UuxU?7F__Zwe412iC5M0o7EQAAGvt8NiDQkeyBZ558Fvhh2anRUiPRZsvH_iNw.uw>cIwfW2gi7W_QIo047E0w1zW3nW_QIo047Eu1JAvfX_ozMgFScUwvz_iNw.uy80m7HA061WVw1EuKE0u7H.0wer018jyQ1OdZ4?1Wao327Mw081e_LZyfd2CoPx9@fZb6,04083Do__Zb<o>gC1M0m6g_LZyf7wPN7MUFScU0vD_iNw.uxM0i61y05xWV01wuKo0q7HG07xWX018jwg?7EJ0szvqo327Mw081e4?AWnxbf7Q?2C9>9b4jZwA2M_LZb<o>gC1h@vZb6,080o@xB@vZb6,7wrp7P@_S8YYapze33__QI=o05>204MY06x2eao227PE_W7XYf_1@Oq0s7TU_@7X201xAh>vz1_y7U@021e1w.vzh@fZb6,fX_wzN0FUgU?3zWTwrvnMw1vVXM0Y@b304w40w1oBUM0YFb2g4w42p_w1YCiqwvoM381>40V1Cyw4go8011nrg3M1wOw4r05C44c1g.r08046s027P__OwVu40Fvvg3anQkiyFZHAxAvaV8fTRgi6dY>3beg3wA703PUI_L@2f52Dx3zM0o1080m9uc0faiPA0o10CvU0v9ACE7Sc0O.?10egpEE14620.lSQ0Y0ocE17w1Fx130k046M2011D?xY__YEenx0anTQ0OBZ54EGvqV8p7OKi3ZZk4xzv<OMC03xZfE0Fli21c7Q@w2BlF062gs0ffyP@_U8Yaay4ed04w40w1oBUM0YFbcg4w42p_w1YCiqwvoM381>40V1Cyw4go8011nrg3M1wOw4g08C44c1g.r08046s027P__OwVu40Fvvg3anQkiyFZHAz4vWV8fTRgidV_>ub403wA3U02610M09b4g8wk480i7X4051@Nw1ovIw0o7XA0q2gg802iNA0U90203ZWM?fUA>AIl0e2gtf_ajA>AI3022g040fUA>AI>wenxbenQY0U91_L@2f7zXUT@8FUgUSvr_iNw.uxV6SBYu4IXvgMbwA41060YEvr_iNw.uxV6TNYF0y2gg?83BUiPFZ?3weO>4w>1wM862Wqo3ynRUUUd_8gi0jxw.uxU6TZY.20e7zrpDY10a0Yuee3v_nQ_QIo047E_LYyfk2jajBV6ShYu4IIvlM8wA4>1wo8t2wg?2yOI_U9:oc218LA>1w.10em27gF6s__ZbufLzvQTR_QIo047E>3b2o0e7Q@w2Bl884MvjW0allA_E90@?xwgc02iMI1U51.29bN01gvIo0m7X8061@Zw3Dk080fTH>_yg?yi@M0VV1Q_YFeg?yiYU1VV1_0C2gg?83BUiPFZJ0eugvX_wzNU@@d_yau4ebnR_QIo047EuhJFv7xbeTSg2o91.1wf7TR_QIo047EuhJYv1M9wA4yxe0_YIIwfg01M3YB8_ZzV9MFoui3TDIe03ZVIM7uoTzrpDY10a0Y.20e7zzwT_tY_Zb6,7ArqnNU0891.0Gsv__73D__QAV7022gg?ayM?5O9uee8vTzWiDTiYuF_Lf@2gkbUanCC0OBZ.0Eynx32DQ2?wV0w1aynzWanTiYiBZu4F9vtbNWn_w_M12udJCvM40E3M1080Uuee3vSDP_QIo047EuhJFv93_wA1USSd_lvj_iNw.uxU6TVYuee3vM?7yMU1U90_vf_iNw.uz41V91o021e_X_EzNU@@p_uee3vO2EFjww080Umvn_iNw.uw?3EIudd3vXw7wA5UUUh_?2wedTP_QIo047E4051WNw1ouIw0o7Hb>i>gC1U@@d_vvf_iNw.uw>cI9fO2gfE0ouxUWWh_7vz_iTwrvDNUWWd_uvf_iNw.ux?i4UJ0v3vN>uw80661Wf@xW_3_MuLU_@7HFwc8v221s7Qw081e<o>gC3@_S8YufLAv_2EoPw10c0XIvb_iNw.uxUWWd_9vf_iNw.ux?i4UJ0v3vN>uw80661Wf@xW_3_MuLU_@7HFwc8v221s7Qw081e>wenxbenQ1020V?2we080anA1080UY01xef?8vBRYLZb6,<ONA0850Zw0xEg40an5o0891<o2y08KA1060Y>FWnxbeTR5Y_Zb6,04083BUiPFZuhJYvazYwA3@_S8Y.30eWyEoPw1YLZb6,0w18uIg0k7H605xWO01wuJ0__Zb_L_yfS?wjy0F_YXufLzv_nP_QIo047E>3b7wruDP01891<o2y08KA1060Y>FWnxbeTTdYLZb6,7Arv7Ok_U91.0wenxbeDQI_fZbufLzv@TN_QIo047Eu1J@v7PX_QI>1w<o>gC.040VClq_vpBmx7Q620Qg1C2J4ltJ0f063a0hefGog20.3CplHZZClq4vgo83h06oaQhlSQ0Y0ocE14o@Fx0c010epBmLTSplEhZ1wwd40pwHh5nrg3M1wMw4fzVC41?8gUg01_e6DN_QIo047E3fH_iM>6<1w?12o1w0wA.03TFu4IWvg?aoA>AI3022g>83BUiPFZ?10eg4083A?a0U.20ef?ojzM046hZ?xItnM_QIo047E>3b7g0wk3S026x.0Fsmw0wA4>1wa80yWg40o3M?2DFu4IXvqnN_QIo047E.0weg?yiZV6TNY9x0Mvgrwalk@w2Bl884MvjW0alkg_890_LZyf040M3LwFScUjv3_iNw.uwg0k7H605xWO01wuKg_vZb_L_2fS?wjy0FZUXuff3vQnO_QIo047E>3b7wrvTP40E91<o2y08KA1060Y>FWnxbeTQtYvZb6,7Arv7Oo_U91.0weg?2iMC03xZfE0Fli21c7Q@w2BlyfL_iN0.3CplHZZClq4vgo83h06oaQhlSQ0Y0ocE148@px08010epBmLTSplEhZ1wwd40pwHh5nrg3M1wOw4uzUC40M040VClq_vpBmx7Q620Qg1C2J4ltJ0f0632.Ofyog4?x3x?7YUOu__iNw.uzs@fZb<o<6>49w203ZWN?fuA?5@9u4IVvg?aoA>EIK062g3U6alk>AIMfO2g<61gwQa1<o5238zA>EIY0e2gfX_gzT@_M8ZcaRaei2J23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev640y4gym2J4tscHv4n12TMx|02AVtfY.w4083A>1w204xWN01guIo0m7H8061WR238F4U@_Zb4010epBmLTSplEhZ1wwd40pwHh5nrg3M1wOw4uzTC40w040VClq_vpBmx7Q620Qg1C2J4ltJ0f063a0hOfuog30.3CplHZZClq4vgo83h06oaQhlSQ0Y0oc812EZVx.024e4?vPwFXLZb6,7wrvDOUZ_Zb<o>gC3@_S8Y.30ePyEoPyBXvZb6,fjW_QL@_S8Y.30eS2DoPydXvZb6,dPW_QLj_QEV>ab0M0wA0105@9>ab3U6alk?8ALLfuugb3T_QI103@9?29bYjU_QL@_U8Yuff3vUyDx3y5XLZb6,7ArqnNUiPJZ90a2gg40o3NdXLZb6,7Arv7PI0o91>vb2o0e7Q@w2Bl884MvjW0almY@fZb_L@2f7zXUT@8FUgUeuX_iNw.uxV6SBYu4IXvr02wA41060Y0uX_iNw.uxV6TNYrfu2g7zroTYdXvZb6,bzW_QJUSSd_vuT_iNw.uw>cIuee3vWM0wA0FXvZb6,>6yPY0891o021e_X_EzMw0epXuee3v@yEFjww080UwuX_iNw.uw?3AIucIzv_M0wA5UUUh_?2we0nJ_QIo047E204xWN01guIo0m7H8061WR3V_QL9XfZb6,eM0AA6ZXvZb6,040M3I206fEPuT_iNw.uxU6ShY_LZyf02EoPwpXfZb6,101guIo0m7H8061WRPV_QK1XfZb6,>6yOM0891suT_iNw.uw206fExuT_iNw.uxU6ShY_LZyfcyEoPzhW_Zb6,040M3I80i7H4051WNw1ouIw0o7H3fD_iTzroT_JW_Zb6,3jU_QJUSSd_TuL_iNw.uzY_LZbuee3vSTJ_QIo047E4051WNw1ouIw0o7Hvfz_iTzzwTZhXvZb6,0w18uIg0k7H605xWO01wuJs@fZbudJzvV7H_QIo047E3f__iTzroT@1W_Zb6,4z__QJUSSd_suL_iNw.uzg@LZb204xWN01guIo0m7H8061WNzU_QKhXfZb6,040M3I206fEEuP_iNw.uxU6ShY_LZyf92DoPzJWLZb6,101guIo0m7H8061WP3U_QJlXfZb6,040M3I206fEpuP_iNw.uxU@@h_u1JBvfX_ozOUFScUHuH_iNw.uwg0k7H605xWO01wuLMZ_Zb4?ZWnxbeDQ?2C9>9b03SwA3QZvZb_uL_iNw.uw10c0X0w1zW0TI_QIo047EufLAvTwrpnP@_S8Ywaxze5nG_QIo047E204xWN01guIo0m7H8061WVjT_QKVW_Zb6,080o@zdW_Zb6,7wrp7P@_S8Ymaxze4z@_QI=U07]1w?12o080j3NwmA8UFw88v<60Mw6bE.20e1>vzx_O7UMuD_iNw.uw>1we81yW040w3yJWvZb6,<610w6bE.20e9DF_QIo047E8?xe>o3wg?7EFwc8v2?w4U=o<3wSw4]ao227M509Z2Fw9Evqo327PM_MLEk62bvhhqo7Tk_MMU?2bWobM07yC0UBZ201HWi04w4Xc__ZbOf__iYj__QL0__ZbLf__iXz__QKQ__ZbIf__iWP__QKE__ZbFf__iW3__QKs__ZbCf__iVj__QKg__Zbzf__iUz__QK4__Zbwf__iTP__QJU__Zb0w1cf5NpgzyC0wxY4?1@97_8vxM024U4?1Wao327Mw081e=1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM]pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA:2lIr6ga<pSlQgR1lt6BJpg}7hFrmlMnSpKtz5x]1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP02Q{sC8}1QqmRBs5ZCrDoNojEwpC5Fr6lA87hL86ZMpmUw9OULbisW82lP<t6BJpn1vpCVScm4W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP:7hFrmlMnSpKtz5xey1LtngwrSowrmlJrT9V[t6BJpn1vpCVScm4W879Bomgwpn9OrT8W82lP}Bc34Sr6NU07hFrmlMnSdOoPcO]1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1ComBIpmgwt6YwrT1Bry0DbyYJ9PEw9nc>1QqmRBs5ZzsCcPczEwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc:t6BJpn1voT9zcP8W86ZRt21Lpy1JpmRLsDA}1QqmRBs5ZzsCcPczEwsClxp21BsD9LszEw9nc]2kMe7w:t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD]1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng]gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb]w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiMw820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U0lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ]4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK[imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK[lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU=4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw]imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw}7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ:t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng<1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt}1:w<c<wwXzJ88eUXi23KeQwwXzJ0hI3eP:5:er__S<1MV___t<c3G___E<ofz__OM2?3o@f__i<1+nFi?hUgg4r30405<1w>28@f__z:122k4.wp14<3<2oVv__p04}1M<h<fjC__Zg0M>4oeI0chgnV3CMl1D0h1Dgd1DM5VDw9vSQ7sgtR1TAbvggU.wp1h0WM0VI5D0it0VY14k5@rZJ1T47tgtZ22wU.Mp1ggJ8CMms19Q3DM582JJ1T47tgtZ13w131A512M>401?2U<QeD__Vwd<iwX?x51vFQ3Dwav0h58vM9zCgt1Cwp1CMl1D0hYStHrT4Wq1A6r1k6s109wSA7rgtNf2wU0hMp1ggp8TZXtgMJa3w171A511AzvTJR13I02Cguq1FI5D0it0VU2DM4hgnUhi7Zw2JB1SA7rgtN12RnpSJLsq9E6CMms16MaSA7rgtN12RDqSZNwCguq1FI5D.2gZB1SA7rgtNKCguq1FI5D0h9Slqp1SLpgtF1SQ7sgpE6CMms14_qgtJ1T46p1VE6CMms153pgtF1SQ7sgpE6CMms14ip1QjphdF1SQ7sgpA7Cwqr1pM4hdB1SA7rgtN1Cwqr1pM4h9A7hdB4Cgt1Sk7qgtJ1T46q1FI5D0hc2JF1SQ7sggJd2JF1SQ7sggJ6Cgtd2JB1SA7rgtN12M>1M>3Y.?bfr__T]i0Uw4k5@jgU.Mp1////////////////////////////////////////////////////////////////////////////////////``````````````````````#818}2M4g}1zZ.}g[1P.[M+U[d{agB[6g{8_g4]1I{2=q{13Z.]7=8{fn@_SY:Y04[5{2w5[1w{E0w[E{Dw4[b{1w=M+08}8{408[k=s{5M[382M+7]b2k[3?1M-?1M[181M[w{w.[9{1w{_L__rM:81M}f___SY]g[3M__ZL:co6[@v__rM:E````+?7Y2``````````````````````%40i&gaM}10E[42I[Ua[10H[w2w}3ga[10H[@2w*10H[s2A[gaM}9wF[W2A[Uaw`>gaM}60G[42I}28aw}d0G[42I[oaM}6wH[42I*2wD{1s[1{d>w]M2I*50C{1s[1{2010w]U2I*40C{1s[1{6010w}2M*4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag<w<g]4?4t1904Poj40U1[3w4{w<g]4?4t1904Poj4>U[I3w[w<g]4?4t1904Poj40F2k}2U9g[w<g]4?4t1904Poj40U1{I4w[w<g]4?4t1904Poj4042k[g9g[w<g]4?4t1904Poj4042k[g9g[w<g]4?4t1904Poj40b0U[Y3w[w<g]4?4t1904Poj40K2k}389g`&3?40O04#3?80Y04#3?c0a08#30.0a0k#3?k0Nwo#3?o020s#3?s0i0s#3?w0O0I#3?A0U0Q#3?E.0U#3?I0F2k#3?M0Q2k#3?Q.2M#3?U0t2M#3?Y02fQ1$301?4fQ1$301406fQ1$301808fQ1$301c?fY1$301g<2$301k0M?2$301o.082$301s`?301w0q0o2*4<40f7_%0Q<2o0E0U1^Y<2o0E.14*28<2o0E0I14*3w<101o.082}1{4g<101?4fQ1(6I<2o0E0818*7s<1?Y02fQ1$40f7_%9o<2o0E.18}1A.}9Y<2o0E0I1c}1g0M}aY<2o0E?1s}2o3g}bQ<101o0k082}4{dk<101o0o082[1[e4<101o0o0o2}4{eI<101k0M?2}8{fo<101k0Q?2]1g=o1>101k08042}U{1o1>101k0o042]1g{2k1>40f7_%2Y1>1?U0z2U#40f7_%3Q1]E0E0Y*6E1]E0o1&981]A0U0Q*bc1>2o0I0F2k*bA1]E?1&dQ1]E062k*f01]E0E1&202]E080Y*3w2]E>Y*5Q2]E.0U*8A2]E0M0Y*ac2]E0o0U*cs2]E081&fo2>101406fQ1*c3]E0w0Y*343]E.0Y*543]E0w1&7g3]E0o0Y*9A3]E0w0U*bs3>101808fQ1(c03]E0U0Y*eg3]E.1^I4]Q.2M*1U4>101k.082(2E4]E0U0U*4Y4]E0M0U*784>101c?7Y2(7w4]E0E0U*9w4]E0M1&bI4>2o0A>U*c44>w!8E4>g!dQ4>yo#fs4>io#105>h01k0I042}M{2c5>io0E0E2g}1M{3s5>io#4A5>io#382>g!5E5>io#6E5>io#9I2>g!8k5>io#a85>h!bc5>io#ag1>w!cs5>io#4c3>g!ds5>io#es5>io#fM5>io!U6>io#cI1>g!1Y6>h01k0U042}M{386>w!4M6>io#aI3>g!6w6>h01k04082}M{7E6>io!1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V06dOoPcOnTdT06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK06dOoPcOnThxoCNBnSBKqnhFomNFuClA06dOoPcOnThxoCNB06dEpmdHpmgKc01zsCcPcBZFrn1I07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0c3;0Mcm4Ks6NQnSdxr6MKnRZzu65vpCBKomNFuCl)0c3;0Mcm4Ks6NQnSdxr6MKpSlQsDlPomtBg417j4B2gRYObz4T03;;5BbD1It5ZzomNIbBZvpSRLrBZPt65Ot5Zv05ZCqmVF03;;5xbD1It5ZzomNIbCRxqSlvoDlFr7hFrBZxsCtS05ZvpSNFrCJvk4NksClPrSNSpg;;0NoiVMr7hvoS5Ir2VvnTdKs79FrDhCqmlBpj4Oe410hQN9gAdvcyUPcw;;0NoiVMr7hvoS5Ir2VUpD9Bpg;;0NoiVMr7hvoS5Ir2VPt79zrn1)0c3;0Mcm4Ks6NQnSdxr6MKoSNLoSJvpSlQt6BJpk10hQN9gAdvcyUNdM;;0NoiVMr7hvoS5Ir2VUrm5Ir6Zz03;;5xbD1It5ZzomNIbCpOpm5Ag417j4B2gRYObz4T03;;5xbD1It5ZzomNIbBZvpn9OrCZvr6ZzonhFrSV)0nRZAsSZvq65Kp6NB03;;5xbD1It5ZzomNIbBZvs79FrDhCqmlBpj4Oe410hQN9gAdvcyUPcw;;0NoiVMr7hvoS5Ir2VyqmVAnTpxsCBxoCNB03;;5xbD1It5ZzomNIbD1Rt7d)0c3;0Mcm4Ks6NQnSdxr6MKpClOsCZOg417j4B2gRYObz4T03;;5xbD1It5ZzomNIbC5Ap5ZytmBIt6BK05Z4mkV1jkB303;;5xbD1It5ZzomNIbCpLs6lKg417j4B2gRYObz4T03;;5xbD1It5ZzomNIbDdQsClOsCZOg417j4B2gRYObz4T05ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM;;0NoiVMr7hvoS5Ir2VCoSNLsSl)0c3;0Mcm4Ks6NQnSdxr6MKs6ZIr410hQN9gAdvcyUNdM0Kl4Z3bw;;0NoiVMr7hvoS5Ir2VytmBIt6BKnSlOsCZO03;;5xbD1It5ZzomNIbDdQonh.4tcik93nP8KcPc0nSBKqng0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06pzr6ZPpk17j4B2gRYObz4T06pLs6lKg4tcik93nP8Kcjs0s6ZIr417j4B2gRYObz4T05Zvs79FrDhCqmlBpj4Oe417j4B2gRYObzcO05ZvsSVMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80sThAqmV0hQN9gAdvcyUNdM1Pt79BsD9LsA17j4B2gRYObz4T07dQonh0hQN9gAdvcyUPcM1MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0pSlQgR1lt6BJplZPt79RoTg0pClOsCZOg4tcik93nP8Kcjs?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM```-0r<1M<8{O04}38.}2g^4^bw>fr__SY2{f01[Y04[Q=c{2^3w<b:w{E0w}2w2=c[4:M<w{6{1]M<8{a0k[E1g}9U1&1^i<f___SY2{co6[Nwo}1+c=w{2{5k>3@__ZL0w{81M[w7[g=4:g<w&1A<1:8{i0s}181M}804{M{8{1w{rw<g>12{cwb[O0I[g0w[c<k<2=o{7w<1<1w[3w3g}e0d[n^2^1@:g<o{g0U}103w}6gn&w^x:4<6{agB[F2k[A^1^8E<1:w[3g9g}d0B[s0o*1^2i:g<8{g2M}10b[3g^4^E:4<2{7gI[t2M[s0w*1^aE<e:M{8_g4}zZ[2%w{2{2S<3M<c{4fQ1}g_g[w^8=w{Mw<4<3{1zZ.]6fQ[8^2^cY<6:M{w_g4]23Z[U04[4=w{4{3o:g<c=fY1[_M}4w%.[w{sM<w<3+?w]ifY}3%2=8{dQ<1:M[3>8]c>g]w04*1^3z<2:c{g082]1?w4]2w4&g^W:4<M^g081}K%g{1{f4<7-1E1w8]702.]804&g^1:w#2g0M4]f09[6w>4Q<8{1w{2g<c!w0Q1]2c1w&g&14<3`Mk.]1M4&4&'
;;

'riscv64')
b64=$'36350 18176\nmd5sum:066ea7f81488bd9ed5c31617bf096cc5\nsha256sum:9b7cf9665303e4a87d8311ab1bd1ace64b28986271efb0c72d2026041f0ed675\n0OnScOs31vuCBzsT8Os31vuCBCpmVzpmAOs31vuCRJtmMNs31vuC5xrmYNs31vuC5IsDdzcn\n000000000000000000000000000000000000000000000000000000000000000\n4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri\n05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n4w\n00\n0Q:1g3g:5\n````````````````````````````````\034vQlchw810g{0c0YM01=1{1}1g>4?e?804?7?r?c?704,fz8$pw(4[g,k$;3I8]eMw}1}1,1w>fwJ]@3Q:3Ufg:1w4]c0w}4}8,6,42U]gfw:10@]E04:2w0g]w}1<g;w}2[8]A}2g}1}1gVnhA1,80u]w1U:207w:2M}b[4}57Bt6g6$%?1[kKlQp0g>3Ubg:fwZ]@3Q]80w]w2}g}4,5<c>17jBk0wUpogRGN84G1yhJGnzBMIryTQrI;M>1E,1,1w>1101409x]1E,s,N1LJmGK3zf6ylPGsEjhFtg$=M0a0b0e-2X,4g^1,8^2f,4^1k,.&3s,4^1R,.&31,4^3f,.&3y,.&16,.&1D,4^26,.&1u,.&3K,.&2t,4^1w,.&3D,.^T,8w&39,.&3l,.^t,8^2L,.&2S,.^p0g?4%U0g?4g0k0811]c}3P,.0a0fEn]dw}B0g?4g0k0b11]c[70g?4g0k0e11]c{nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB#0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Lr6M0sThAqmU0u6Rxr6NLoM1CrT1Brw1CsClxp01Cpn9OrT80u6pOpmk0sThxt01CoSNLsSk0s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUOdM]8?g01?8?g02?4?w03?8?g02?8?w01?8?w02?8?w01?8?w01?4?g01?4?g0204I1>g}behBwo>c0lg4?1,27Apo6>20601]@3Q]3}3of}3U]3}fUe]23U]3[w@]E4}3}3wf]G4}3}70t]I4}3}70q]K4}3}70t]M4}3}9wq]O4}3}70t]Q4}3}e0q]S4}3}30r]U4}3}70t]W4}3}5wr]@4}3}70t}44]3}d0r]244]3}70t]444]3}fwr]644]3}.s]844]3}9ws]c44]3}70t]e44]3}c0s]g44]3}70t]i44]3}ews]k44]3}30t]m44]3}70t]o44]3}7wt]q44]3}cwt]s44]3}70t]w44]3}8wp]y44]3}e0h]C44]3}ax}E44]3}20u]I44]3}b0o]K44]3}e0h]O44]3}fx}Q44]3}40u]U44]3}a0o]W44]3}e0h]@44]3}311}48]3}60u]K3Y]2<w=M3Y]2<M=O3Y]2,6w=Q3Y]2,7+S3Y]2,4M=U3Y]2,5w=W3Y]2,7g+4}5,1+24}5,1g=44}5,1w=64}5,1M=84}5,2+a4}5,2g=c4}5,2w=e4}5,2M=g4}5,3+i4}5,3g=k4}5,3w=m4}5,3M=o4}5,4+q4}5,4g=s4}5,.=u4}5,5+w4}5,5g=y4}5,5M=A4}5,6+C4}5,6g=BPc?3c3MQ43LwcG4Md3_pe20OEjkNc0wXa206s03w0nfw>PUeams33w0j,5PU>c@zyxD0MU04M>1s@>3fwUEpMce01c,nfw>PWe9Ss33w0j,5PU>c@3ytD0MU04M>1s@>3fEUCpMce01c,nfw>PUe9Cs33w0j,5PU>c@zylD0MU04M>1s@>3fwUBpMce01c,nfw>PWe96s33w0j,5PU>c@3yhD0MU04M>1s@>3fEUzpMce01c,nfw>PUe8Ss33w0j,5PU>c@zy9D0MU04M>1s@>3fwUypMce01c,nfw>PWe8ms33w0j,5PU>c@3y5D0MU04M>1s@>3fEUwpMce01c,nfw>PUe86s33w0j,5PU>c@zxZD0MU04M>1sR>j1gkSBPs?9e7xPlzyas0BPs?8eTNM@hMUa7wE0ndg?4MnBcVsR?2jxmkPyoSjRPl0_p6@Bom5CsmndM?wXs73V73wEu2w9sT?23NOsNDut14grABPs?8eTNMOhNNsR>j1inLwFvLY1_VEC25hNsT>z1fsKgg62w8a0srYndw>Oo6byG8HExtVHu6KeSjxwoOBPk?9e59iQj1g0g4Tcm09Jn5w0X0S10cTfj01fT5M0X1@10IYtD09Ln5M1RzPSf4_cn01Jn5M0X0S10cTfj09dT5M2X1_10cQtD01Jn5M3RzXCf1oKrRNs0eMvwg1fP5M1RzXCfeMtwg9Ln5M1RzPSfxoIrlNs0KMvMgfmf4Tcn03SfKMtwg1Jn5M3RzPSfCc459F45UNKCZEl75Ps?2cDZO9zygw2MFzZlNsS>j1KoxwQo801LnxM052bmfA_vT3UE7IFushXCfUNgo_Nf5Z_@2w055wE0dsorKkLGdhSfdFNiyWGrCOK9e_El7oZSD381BwQs4097z0kidhM59oMnR5Eg8FEk9hu_MvZxFVruDN21CpVe7pXGTZBfzAUrSv88nNCCSBXcnZMaThwY0AUo697Sn30BZlre9SgatxVCfLFDLYd_eaEFNUsFC2DuThMY0AUs79be6ZwbGpiFSIMvT0GWmLFqOBIWmoMY435rSAME10hs6>j1GpYAMk015q5X_3vQZq58Ek1hK_MfZ5z0gA25Mo?1c6FDGj1g04PEoCxu_MLZ6CxkG50krLY1_flCjSobpA5CDOur9WkEliuzlxwE01h059x0yCxgB5X_3_OMTt30A1hiXAX_0_Nk7JOCAatXt73M2jxMsAIUDV0CFCGDqypnRlIMvT0HapLFCSCu_MLY8Gyy7hX_0_N0x1X_3vOqG55Mk?1c5pn3LYf@_lCiSp1pFYDA5iLpwkEliuzlxwE0n1g?4MlBqK_M_XQ5iKmTJEkn1g?4Mn5r@_MTYDSo5pAJCgmqv9VkEliuzlxwE03Kgk1wQs90eep1@w1ip6_X_1_Lgx1X_0vMWG55Mk?1c5FmthLR5Nj02yYqrJxLlm_u_MnYg0oqG4BMk?9e5NmEyxu_MfYxz?koBMk?9e5FmEyxsHFX_3_NyG9dsSn1g?AUnBtya5X_3vNqGaoNI55F973ktzifsSPKlCXmHFoUvDa0B7oVvD081AwQs406ep1Po1jol7wxs1hEl5a?@Ve_MfYdzmq0kwRvx08mboUg759sT?23JUvkgmm3Kgs0X_0_IOG9xkNz3Mk@QK5q@lXRoL6xGF973ktzjfsMPKniUlHVxkpzRvoqw6i3hwg0oUA660d71?r1PvZCMo706cd1PgdhSe3VR81iCe31xyn1g?AUmBoia5X_2vKaG9oMk5jA5BX_3vH2GboMk5i3uAYIIj15jeJOsyx8la0xijxRsOExHexA5CxklqxjWkAUEW6@_M_WEtMrc6pg7qxMf71M251PCccMhk0@eqZLXexA5Cxklqxu_MLWxV_kW5X_0_IWGamElzDwEUX_1_F6c72jUj2g41EEpaxhs6>j1CpyAMk?K_MLWFz0gE@OElixg56X_3vFQVFHCAeqAFXcq0ihqq5X_0_OGGa9EnLY3@wHD0eteVAlEnGuCRxwE2yxhs5>j1ulGX_1_D4VFxkHFLMM85Mk?1c5FlbLY3@xGENz2wkEBPs?8eT1XZ1poeV1M3LYb@taEBz10kGQK5q@lXRoL65j0541kOneM?AUKHUxsW>j2GHa5MI?1cbGXcNE8cT2w1axoanaEi5hsW6gmpaxu_MvVGGxmcc1iondM>Ov77Vs7?2jxYuMsvIzc6E18WibgvCToVvD?eW1063hME0Auc1iwl9OEk1hyw?Igz5y41X_0_ESdtE0a3l@40I_sD0pT7BPs?8eTxXh1poeV1M3LY3@jaELz5gnC5Mk?1c5xkLLY1@eHCAeqAFX4rYc21s5>j1il4X_2_AyG9oMA55FsT?23JUuMgmm3Kgs0X_0_zOGbst45ihSRw6g3Lgg1wQs408d63g1zB0siUVI6RxsS>39ErjoNE6abu6KeSjxwoOBPk?9e5Nt8j1g0g4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs70hJn5M3RzXCf1oKrRNs0eMvwg1fU5M1RzXCfeMs0gpLn5M1RzPSfxoIrlNs0KMvMgfmf4Twn0bCfeMs0gpLn5M1RzXCfDc459F45UNKCZEl7jCCKquFIiCQndM?8O3TOfmP5Mk?1c5pj_LY6_Y0rkn1g?4Mk5cu_Mz_LdKMd71?r1PvZCMs701DzwQsk?5dUU07O9s5?2jxikN8EnLY1@8GEBz?kqgmnLY4_YaEBhNtbxmLBuZmbNwkPRIMd71?r1PvZCMs701DzwQsk0e7O0kRRLUd6501tIps5?2jxqkI5Mk?1c5FiLLY3@3GEDz5MnaX_2fZwx1X_0L_aG55Mk?1c5NiHLY4_OHCAeqAFXErKn1g?AUk5ahs5>j1gkEX_2f_WG9oMQ54A5BX_3fYOG9UNw5M4W5X_0f_hs5>j1kkUX_1fXGVFWCNari6XjEnLY6_Zdulaxu_MX@VzzMM84MA10qa6iEkn1w?4MpCepc5?bLY2_RoMQd2cG5qEk1hK_Mj_9eqqVF3CFauWFX2DPGr4FJtr7LYe_GoMc92e_Mr@I8gu_M3_6Gxhs5>j1qkCX_0LVWVF3CFauRSNiEnLY4_EoUEc1e_MP@w8gu_Mr@WGxhs5>j1okMX_2fVaVF3CFauWFX2DPGr4FJBrBexu_Mb_41KkW5X_2LY8mTiEnLY2_JjCCKqgVGiDIdKkG5X_0LXbSTjEnLYa_Krrtexu_Mb@WBLQW5X_2LXjCPjCCKquFIiCQxIu_MH@48gu_Mj@sGxGa55Mk?1c5NijLY4_tHCDGr4FJ8r7LY8_v247LY2_BGEkn1g?4Ml58e_MjZKKquFIiCTBJK_MzZQ8gu_Mb@cGxGa55Mk?1c59hjLY2_pHCAeqAFXSro3Kwg1wQsa0ees1WM1iICYgh65hhsB>3dql@1KjLY8_Fxkkn9g>PkBve_MH@y5hhsB>3dslWX_3fVW9w0kl10oa0pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc;6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp;Br6NA2w>6tBt4dglnhFrmk:1QqmRBs5ZCrDoNog;t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM0J}79y]t6BJpn1vpCVScm4W86pxqmNBp21QrO1Ls6lK82sKbOQDey0BsM>7hFrmlMnSpKtz5xey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM,1QqmRBs5ZCrDoNojEwrTlQ86ZC86RBrmZOug:7hFrmlMnSpKtz5xey1Opm5A86lOsCZOey0BsM;9j0NdCNIu01QqmRBs5ZzsCcPcw;t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPczEwpC5Fr6lA87hL86ZMpmUw9OULbisW82lP,t6BJpn1voT9zcP8W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP<7hFrmlMnSdOoPcOey1LtngwrSowrmlJrT9V]t6BJpn1voT9zcP8W879Bomgwpn9OrT8W82lP:Bc3xU<7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M;lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<!0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK05ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt;13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw:!0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt<7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ<pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng016McXb<g>2UYf__h,azN__Zo,off__Z,1W@v__j08]g[dWkw01v0416MM201<o,rf3___[t,2M>18Yv__K04>123K02hE42B0Ney0i91F88AME2x9ke0Aj8gI52OkbigJd2RkjkgwU0gwXw0E42y0i91F88AMGk309wO4b9gJ92QQgaMkjkgwU0gwJgy0i91F88AMFg2I52O4b9gJ92QQjkgwU0gwI0u04?ag>28YL__6wo>123L01iEw4ygq10FkepF88qFcaChqq609mB0Om49siC1h2QZjmRZzpSB2j2FgcBx02RJ92QQbkgJpkMkb8gIB4Rk8e048eY0610Ew4ygqi29kekd94Awyj2FAmCxxSB0Om49siC1g2lJvoStE2lwHjgJh2RA8brJjmChqq60b8QAbjgJB2SAGi25Oj2FAmCxw2fFgcBx2n4FwkhdjmRZxoB0Om4dDq0zHjgJh2RAaj2FAmCxw2eJd2SkbqgFcaB0Om49siC1ip5FEo0zHigJd2R4bmgJt2S4bpgJF2Awyj2FgcBx1yQQbkgJp2AMGk39ogBNao59AmCxxAQQbkgJp2RQbogJB2SAaj2FgcBx18BNao59AmCxx8RZzpSAzigJd2R4bmgF88AMGk39ogBNao59AmCxxgRZzpSB3kRFAmCxx22J92QQbpgJF22RMaQQbpgJF22RHjgJB2SAaj2FgcBx1s2Jd2R4bmgwIo,808?2rT__YS<48e44O10Cb1h0U||```````)1}4I1]6g]3Ufg:1I}2[q{@]7[8}fn@_SY<a08]5}305]1w]1w0w]E}qM4]b}1w[M]3MfM]8}U04]k[s}5M]1M2M]s}20s]8}.6]2g}o}fX__SY<S0o:3___ZL;4}Yf__rM,2s1w:fD__SY<a`$&10@`)3__________M[k/0d]k/0d]k/0d]k/0d]k/0d]k/0d]k0Q:1g3g`````{?4`4`4${0hQd3ey0EhQVlai0Nd2UObz.cz0Od30Vcj8wa59Bp218ongwcjgKcyUNbjcF045B,sCBPoTo?lI,440lOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M?w,g;4?4t1904Poj40I0U:2M3w]w,g;4?4t1904Poj40I0U:123M]w,g;4?4t1904Poj40c1w]M6}w,g;4?4t1904Poj40c1w]M6$*?M01>2^M0202w2^M030602^M040305^M0509M6^M060dw6^M07?w7^M08070b^M09050d^M0a0b0e^M0b030o^M0c080u^M0d0b0u^M0e0fwZ^M0f>@^M0g?w@^M0h010@^M0i0b0_^M0j0f0_^M0k0a1%M0l0112^M0m$M0n$M0o02x6)1,103N_M*d<w0a0b0e)y:a0b0e)f<w0a0d8e-1T<w0a0fUe-2d<g0l0112}g]2p<g0f>@-3;w0a03of-3c<g0e0fwZ&103N_M(3H<w0a03wf]Y[y:a03wf-3Q<w0a02wg]K04]40g>w0a0e0h]6wo]i0g>g0l01x2]1[G0g>g0l0212[g]S0g>g0l0216]1}1?g>g0k0a1}2}1b0g>g0k0ax}k}1r0g>g0k0fx}e}1H0g>g0k0311]k}1W0g?103N_M(240g>g0d0eww&103N_M(2i0g>g3N_R0d-2I0g>g0g?w@-2V0g>g3N_N0@-320g<c080u-3l0g>g0k0112-3x0g>g3N_X0_-3T0g?4g^80w?8%A0w?4%O0w?4g0k0811]c}150w?.&1q0w?.0a0fEn]dw]1K0w?4^1Q0w?.&2g0w?4^2o0w?.&2F0w?.&2V0w?.&3i0w?4^3w0w?.&3Q0w?.^80M?.^o0M?4^3S0w?.^G0M?4g0k0b11]c[Z0M?.&1f0M?8w&1F0M?.&1W0M?.&2c0M?8^2C0M?.&2U0M?.&380M?4^3k0M?4g0k0e11]c{oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc097xOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0oT9zcP9vsTs0pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0oT9zcP9vt65yr6lvqmVFt6Bxr6BWpmg0oT9zcP9vt65yr6k0oSxBoSJBp2UM06dOoPcOnSBJs6M0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vk59fgQl4ll95nQN9jAJ1hQlvl452j4lv05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv07dQp6BKg4tcik93nP8Kczs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80t6BJpn1voT9zcP9vsThOtmdQ06tBt79RsS5Dpk17j4B2gRYObz8T07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8T07xJomNIrSc0pD9Bomh0hQN9gAdvcyUOdM1Pt65Qg4tcik93nP8KcPc0oSNLoSJvpSlQt6BJpk17j4B2gRYObz8T069FrChvtC5Oqm5yr6k0sThOpn9OrT90hQN9gAdvcyUOdM1PrD1OqmVQpA17j4B2gRYObz8T071Rt7d0hQN9gAdvcyUOdM1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kczs0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUOdM1CrT1BrA17j4B2gRYObz8T06pBsD9LsA17j4B2gRYObz8T#0sThOoSRMg4tcik93nP8Kczs0s6ZIr417j4B2gRYObz8T065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ>KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VQpnxQ02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KsCBPoToKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc`$r,1M,8{8[w:2g(4(bw>fr__SY2}2w2]a08]Q[c}2(3w,b<w]1w0w:602]Q08]4<w,w}6}1;M,8}c0k]M1g:6I1)1(i,f___SY2}9M6]D0o]Y[c[w}2}5k>3@__ZL0w]3o1w:dw6]c[4<g,w)1A,1<8}20s]81M:6w4}M}8}1w}rw,g>12}70b]s0I:3w0g]c,j,2[o}7c,1,1w]1g3g:50d]o04-1[4}1U<g,o}I0U:2M3w:809)2(vw,4,O}30o]c1w:1g1w-2[1}8o,1<w]207w:80u]b*g)2k<g,8}I1U:2M7w:3M2)8(Dw,U,3}fwZ]@2Q]8(2[8}aE,f<M[fw}K]2*w}2}2S<g,c}23U]8bw]w(8(MM,o,3}10@]42U:2w0g]g}2[g}cM,1<M]2MfM:b0L]g*w}2}3h<g,c}Y3Y:3MbM:b*8[w}Sw,4,3}a1}E3]1M0g-2(e<8<M}ggw:10O]60g)w)3B<g>3*gcw:2U(1[4}Xw,c?7*0fz8:1C*g*1>7+Ehw:agO]A*g(1<w^UcM:cw7]6w>3s,8}1w}2g,c%3I:3C0M)g)14,3^eo@]5w4)4)'
;;

's390x')
b64=$'44510 22256\nmd5sum:9a941f70f7ef31518e0684a00c36aa08\nsha256sum:24abf56721db20a143b7da14bb797325749417ed5b8d730207b622a6451be973\n0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\n000000000000000000000000000000\n00000000000000000000000000000\n0000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0hQN9gAdvcyUO\n00000000000\n0000000000\n41_4d4ecg4\n000000000\n0vN3h3z41\ng7YgQgUN\n00000000\n0000000\n00000\n0000\n000\n00\n___\n04t19\034vQlchw820g=?301o>1%g;4@M,01?3w01M1?1Q07,4>5`{cx}O4;1<g>o;ZQ;4Tg;jt}4g}xo;4,02>1w<3TE;juw<1dW}7{s{2,g>4}sw;1O}78}2g}9{4p7jBk,g;MM;33}cc{b{I{hAtelh>1w``?46hQVl8>4;ft;1dQ;4Tg}z}2c{1>1>1g>3hQVl06oijbQMI4Cg6WTsD79hF4y@9vKZ{c>q,g>o?8g9g0h04{q>75HJ6YjNz8eHD3FnEDlFda4`=?c.A;ds)hy8!42`Dx`rN8!Lx8!lh8!Qx8!Sh`TN8!N1`P18!Zx8!Bh8`i`Wx8!tx`V14!x18!rh8!H1`XN8!oN8!b2!18h!1g14?1o<1hw{M>@N8.I;ys}18.1bh4?1o<1hI{M.13N4?1o<1hU{M05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC069FrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06RxqSlvoDlFr7hFrBZxsCtS06pLs6lK07xJomNIrSc0pD9Bomg0pClOsCZO07xCsClB071Lr6M0sThAqmU0sThxt01CoSNLsSk0s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg+{8?g01?c?w04?8?g02?4?w02?8?g05?4?w02?c?g02?8?g01?4?g01?4<401>lc>g,0qmArc>5.1ng.106BF6n>1>mw>g3mBF5,c.5P>40RFqh8>2.1vg=01dQ{c;4i;1dS{c;4d;1dU{c;ju;1gE{c;4j;1gG{c;br8<1gI{c;bfM<1gK{c;br8<1gM{c;bi;1gO{c;br8<1gQ{c;bmo<1gS{c;brg<1gU{c;br8<1gW{c;btM<1g@{c;br8<1h=c;bBg<1h2{c;br8<1h4{c;bDw<1h6{c;bIg<1h8{c;brw<1hc{c;br8<1he{c;bN8<1hg{c;br8<1hi{c;bPE<1hk{c;bU8<1hm{c;br8<1ho{c;bYg<1hq{c;c1;1hs{c;br8<1hw{c;b2E<1hy{c;5@;1hC{c;kaw<1hE{c;c6g<1hI{c;aSM<1hK{c;5@;1hO{c;kfw<1hQ{c;c88<1hU{c;aS;1hW{c;5@;1h@{c;kj;1i=c;ca;1fM,8>a&1fO,c>a&1fQ>1E>a&1fS,Y>a&1fU>18>a&1fW>1M>a&1fY>1w>a&1f@>1Q>a&1g,08>b&1g2,g>b&1g4,k>b&1g6,o>b&1g8,s>b&1ga,w>b&1gc,A>b&1ge,E>b&1gg,I>b&1gi,M>b&1gk,Q>b&1gm,U>b&1go>1,b&1gq>14>b&1gs>1c>b&1gu>1g>b&1gw>1k>b&1gy>1o>b&1gA>1s>b&1gC>1A>b{3Hr_0M02iV1?vF_L_oecgY.9c3>x4I0g.x9@cg4.1bA2016Dx?33u7zgf4g?jHr_3g?g7Z.UN3Me?AM1.23VQwvMc108UN0g4?41_47?s01M304.8hzz41>:0g3?kMfj/_B,c0g.x3ecg4.1]0c01j0Zf/Zk>oM1.240UN0g.[0M05c3Q/_Ng.3304.8fjz41>:0g3?kMfj/@R>ic0g.wWecg4.1]0c01j0Zf/Wk.1wM1.23sUN0g.[0M05c3Q/_Bg.7z04.8d3z41>:0g3?kMfj/@5>Ac0g.wNecg4.1]0c01j0Zf/Tk.2EM1.22UUN0g.[0M05c3Q/_pg.c304.8aPz41>:0g3?kMfj/Zl>Sc0g.wEecg4.1]0c01j0Zf/Qk.3MM1.22kUN0g.[0M05c3Q/_dg.gz04.88zz41>:0g3?kMfj/YB.18c0g.wvecg4.1]0c01j0Zf/Nk.4UM1.21MUN0g.[0M05c3Q/_1g.l304.86jz41>:0g3?kMfj/XR.1qc0g.wmecg4.1]0c01j0Zf/Kk.60M1.21cUN0g.[0M05c3Q/@Rg.pz04.843z41>:0g3?kMfj/X5.1Ic0g.wdecg4.1]0c01j0Zf/Hk.78M1.23wM2.23tX1802E1AN1w?1@PX1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.238M2.235KgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.7WbI6?707P08.8aM7Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.89TzYfZw_T6l0b?FTg05s0g.vq@cg4>Gu4?z08.7Df0Vv/Cz0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>zuM1.21LUQ0g.iFTg1xus0Q_0M1Kt0Q@0M1KtwQZ0M1KsgQY0M1KsMQX0M1KtgQW0M1KtMQV0M1Ks0QU0U1KswQT0U1Kt0QS0U1KtwQR0U1KsgQQ0U1KsMQP0U1KtgQO0U1KtMQN0U1Ku0QM0U1KuwQL0U1Kv0QK0U1KvwQJ0U1KugQI0U1KuMQH0U1KvgQG0U1KvMQF0U1Ks040wM3Kt041wM3Ks0QE0M1Kt0QD0M1Ktw42wM3Ksg43wM3KtwQC0M1KsgQB0M1KsM44wM3Ktg45wM3KsMQA0M1KtgQz0M1KtM46wM3Ks047wU3KtMQy0M1Ks0Qx0U1Ksw48wU3Kt049wU3KswQw0U1Kt0Qv0U1Ktw4awU3Ksg4bwU3KtwQu0U1KsgQt0U1KsM4cwU3Ktg4dwU3KsMQs0U1KtgQr0U1KtM4ewU3Ku04fwU3KtMQq0U1Ku0Qp0U1Kuw4gwU3Kv04hwU3KuwQo0U1Kv0Qn0U1Kvw4iwU3Kug4jwU3KuM4kwU3Kvg4lwU3KvM4mwU3Ks04nwM3Kt04owM3Ktw4pwM3Ksg4qwM3KsM4rwM3Ktg4swM3KtM4twM3Ks04uwU3Ksw4vwU3Kt04wwU3Ktw4xwU3Ksg4ywU3KsM4zwU3Ktg4AwU3KtM4BwU3Ku04CwU3Kuw4DwU3Kv04EwU3KvwQm0U1KugQl0U1KuMQk0U1KvgQj0U1KvMQi0U1Ks0Qh0M1Kt0Qg0M1KtwQf0M1KsgQe0M1KsMQd0M1KtgQc0M1KtMQb0M1Ks0Qa0U1KswQ90U1Kt0Q80U1KtwQ70U1KsgQ60U1KsMQ50U1KtgQ40U1KtMQ30U1Ku0Q20U1KuwQ10U1Kv0Q?U1Kvw4FwU3Kug4GwU3KuM4HwU3Kvg4IwU3KvM4JwU3Ks04KwM3Kt04LwM3Ktw4MwM3Ksg4NwM3KsM4OwM3Ktg4PwM3KtM4QwM3Ks04RwU3Ksw4SwU3Kt04TwU3Ktw4UwU3Ksg4VwU3KsM4WwU3Ktg4XwU3KtM4YwU3Ku04ZwU3Kuw4@wU3Kv04_wU3Klc4>uMU04w0v45j802D2f__FP4?qtQ02HHcM01?Pzk2.91182025R3IhjqZ0BBol108X50EfPxnUM0L__@g5MnIg3qZ0BBo1108X0kEfPxnFPv_VxwwIYQ0QI0D/__XAm0287_Kd08.B44w8070h//Ih3qZ0BBo1108M0s0/_X2n_O61AF_j_VasE?2PPg3iKho08wv@1MvHv_0U02jzYfVg_T7I8w4W0TXIb0350nXzI308?il0b?Xbw.16X2w1h0d@FTA?44MYe2Dag02Men/OjX2o0L01@UQ3MW?4M1UwN9KBM1Tzk_vfKoo0146wYi3Hh?_?GV1?WKgg08ec0Ye?1eJg?k03rA9053H5g06?SV2g0lM5UwN9KBWN4?M0dM5Tzk_vfKgw04bDAk5jH4g06?SV2g0BWO801M0aKgA09461802Dav__Men/QN6abI9w3407Xzgf4w?jz8f4M?jH5?5?THUw05?SV2g0kKgA0UKI1?o03uI@?o03rA9?6V2g0@WR.M0dKgw0leJ3?c03uJl?o03rA804bzkf4E?zH9?6?SV201iUR3Ne?8Kgw0meOU0b?vc1>aBqsV04118f2wMen/OYgj3MEbA402KDig?Men/OjX7w0601YM4>F_FPA0gbA405x18f3wMen/OAgj3MUbA402uDig?Men/NXKhg0aKJ_Yuw010v@FXA?atV?11cf3wFOA?I3B/XSKME_QE0vA6wYi2Dag?Kgg0eI3B/YHKMC07Q0vKdgYi?1ecMYj?1eIB?k03uJ3?k03rA902mV2g13WN801w0dWUg01w0dKgA04HA908jH0g03?SV2?5WRw?M0dW@?1w0dKgw0k@fwYiw02eIR?o03rA80efzUf4U?yV1?WKgg0zGsF/0Vv/70oEKME_Q80vI3B/Yaucw8.5auE?70Vv__@_6V1?OM2>DKMen/J9Khg0aKJ_Yuw010v@M2>D4FWw?s3B/XeWvQ__aV1?RM2>DFMen/J1Khg0aKJ_Yuw010v@UT0M4?4Bg1M0eNU>hGvQ_HD0Vv__@@Xz82.1iDG?1Men/KSKgg0cI0w.9Fs3B/X3GvQ_Yk71@JLY3?9c3g.7xrA40e_zYfWM_T6DW__Uo83w044MYaP0Vv__@@vzc2>iV102yM1>CDFMw?bA402eOng0iFNj__Gu40n_0g.2q2V101jIBQ0hqsk__WO8w20yo.EG?1XIy02607X0o.2uSV101PIBQ0pWsk__WO8w2Myr.EGM01XIJw5O07Vo0f2IX0842Md@X0w2pgd@X0o1v09@UV2w2?4UP2g?2kBg2g0au40n7I4__j0dzIdw06bnXz490109jBif2w?3I605C07WV1?FM3>BJMen/GRKgg0wKME19Q0vakK?70Vv__@LKV102iX2w1D01YFSw?atU?2DZ?bN1w?1LlKgg0cHA402AdUhxOKgg0mbA402CBjw01FPA?s3B/WXeME0oU0vc0M.uvKcgc.4GtQ_@f?f__@_X0U.7Df42M?6X3Bje>704f__@_aDZf_lm53MHeNi0Wg3vKNs0pA1vKeME0w01ecwI.B9k0I02Dx06bX9b_QM3oX2w3KiR@X5w480d@ITk0weOo0oc0vHA402L0c.2g30Vv__@AyV101yX2w46g1YFiU?s3B/WzHA409bIa0fp07P0vILODej0vogy8OmV101mKgg0aqle?6Deg01Men/G8X2w0q01YKgg06k42A03IUzW_05mDx?FXew06w5YXew03g9YUQ2g?2ggh2g0rC207jzsdg.Pzk1.92D6M01Ko80tudMR.3eeM4.Aasr?6Vww1XUT3k.cX13_No1AWO8?w0cUM0g?2gU@0g0g2gKo801@c0R.3ecM4080AedM40c0Aasr?iVww3wU@3k.cKo80fKcMR.3bC207fzsdg.OD9__uKgg0lHA402CBjw01FPA?s3B/W8@MC_VU0vbA402r0Vv__@tIoIKMC0NQ0vHA402D0Vv__@ubIy0du07WV101ngi3MKc1>8EqsV0230Vv__@CePPg1UX7w0Ng1Ygj3MKbA402uDig?Men/ERKgg0aI3B/VMbAk02JEwf58WS_Nw?41_WV1?WUO3MH?kMen/Pw6baV1?GMen/CGKhg0aSy0YkzHr_6.g7_I0w.8NWuU?70Vv__@kGV1?GMen/ClKhg0aSy0YkzHr_6.g7_Kl8Ya.alu?7zkf2M02iDig?FPA?k4wYb30Vv__@oPIb?r07Wh0v2TFUg05IhE.q6GkK?7zw6>j0Vv__@oGV102iX2w0c01YFSw?qvQ_EZ1cf2UM2>vwMen/CV66bI9L_z07X0c.1Zv08.1Zf0Vv__@hOV1022X2w36M1YFiU?s3B/VoHA409bI9LVI07OV1?EMen/DEM2>w@FXw?s3B/UUavQ_VqV1?EMen/ApX2o2ug1@Kgg0as3B/V8uNE0Gg0vHAm05t18f2UM4>wYFPA08c3B/VEKdMYa?1eNS_Q40v44wYbz0Vv__@kuDZfZoX5w25gd@ITk0welcYb.el4Ybg?qt9?2Deg01gi3MIc3B/V0uMI01I0vF41YbuDx?mN8w?1CfFiU?udww.1c3B/U_XA409bIa09f07ODy?1F_j@rQ4MYbz08.1Rn0Vv__@iUowKMC_@c0vI0M.7jc0w.7ic3B/UArA406bI9LVc07P0Vv__@jDz82.1iDK?1Men/A1Kgg0cI0w.7cY3B/UmqvQ_M_zwa0g?jzAa08?jzwf2w02jzU9.9h388?Bg2g0atQ0reD8g3_FTj_2s1>qkKcwg.4GtQ_JPD0dfMc0rD8dfwc0rDgdfgc0rDodf0c0rD4deMc0rDcdewc0rDkdegc0rDsde0c0rDwddMc0rD0ddwe0rD8ddge0rDgdd0e0rDodcMe0rD4dcwe0rDcdcge0rDkdc0e0rDsdbMe0rDwdbwe0rDEdbge0rDMdb0e0rDUdaMe0rDAdawe0rDIdage0rDQda0e0rDYd9Me0rD0408c0XD840oc0XD0d9wc0rD8d9gc0rDg40Ec0XDo40Uc0XDgd90c0rDod8Mc0rD4418c0XDc41oc0XD4d8wc0rDcd8gc0rDk41Ec0XDs41Uc0XDkd80c0rDsd7Mc0rDw428c0XD042oe0XDwd7wc0rD0d7ge0rD842Ee0XDg42Ue0XD8d70e0rDgd6Me0rDo438e0XD443oe0XDod6we0rD4d6ge0rDc43Ee0XDk43Ue0XDs448e0XDw44oe0XDE44Ee0XDM44Ue0XDU458e0XDA45oe0XDI45Ee0XDQ45Ue0XDY468e0XD046oc0XD846Ec0XDg46Uc0XDo478c0XD447oc0XDc47Ec0XDk47Uc0XDs488c0XDw48oc0XD048Ee0XD848Ue0XDg498e0XDo49oe0XD449Ee0XDcd60e0rDkd5Me0rDsd5we0rDwd5ge0rDEd50e0rDMd4Me0rDUd4we0rDAd4ge0rDId40e0rDQd3Me0rDYd3we0rD0d3gc0rD8d30c0rDgd2Mc0rDod2wc0rD4d2gc0rDcd20c0rDkd1Mc0rDsd1wc0rDwd1gc0rD0d10e0rD8d0Me0rDgd0we0rDod0ge0rD4d?e0rDc49Ue0XDk4a8e0XDs4aoe0XDw4aEe0XDE4aUe0XDM4b8e0XDU4boe0XDA4bEe0XDI4bUe0XDQ4c8e0XDY4coe0XD04cEc0XD84cUc0XDg4d8c0XDo4doc0XD44dEc0XDc4dUc0XDk4e8c0XDs4eoc0XDw4eEc0XD04eUe0XD84f8e0XDg4foe0XDo4fEe0XD44fUe0XBj4>6DZfRnM2>nkFXw?s3B/SHavQ_mb08.1mKDK?1Men/qyF_jZmedwE1?19k0o03Iq>4qPMg26F_jZVKMu_Zc0SePC?oJvKcgA040Basx0f@Dig?WQzME03zF_jXVeegI040BavQ_4uV1?FMen/r8X8w0kw1@Men/t2UO0w.kFXw?s3B/T2HA403b08.1n30Vv__ZCaDZfQoKgg0as3B/SG@NE03M0vI3B/T9ucw8.5auU?70Vv__ZKSV1?OM2>mLMen/p5F_jY@XA402r0Vv__ZPX08.1jyDK?1Men/oSF_jYXbA402r0Vv__ZO@DZfOwKgg0ac3B/TaavQ_lGV1?CMen/sxF_j_HbA402z0Vv__ZNGDZf_2UP2w4?4IY40wVk0c02DtfLuF_jXSI3B/SSKcw8.5c3B/SFbA403KV1012FXw?s0w.4Vs3B/R@avQ_aX0Vv__ZIfz82.1iDK?1Men/qbKgg0erA404b08.1iH0Vv__Zu6DZfOnMen/qIUO0w.kFXw?s3B/StbA403b08.1gb0Vv__ZsODZfO21Ms71Ms71Ms71Ms71MvHX_1M02j4a.5I7zYfZw_T6Deg01Men/rlN2w?1qKFPA?s3B/SPsgE.mCGsV?70Vv__ZImDag?W@_N4?41_U71Ms71Ms71@JLY3?9ecgY7w01avX_S3z4f.2j0M.5CDzgf4g?jHr_3g?g7Z;bgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ0S1sTn1FdkTBsF8ZBDLXSZYxPaKIaakXejc2iQEWqFLaVjTHKuNkuOPTYMJv_FHJ5GiJDmmJN0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV0Xf2zSmu__xyHCBxq__j5CPfhow8mKr_3SFMpwoXOx412RO1LxrdZHACmS@Mt@4oJQtTxJfiRf7kUA9ETrfU7ZG3rFbizFLBRrUdvdPLJMLrTO6lLQG2UHxW57KNaWUcJxIUD0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD09JAMH2R_@DJt3fciPpDEJrTGUtNrEXLHaZ2OwHJ5GinbdG1cMctVmX2Qs38w8mKlk59y_borecL6q36ylLQG1iqe8STS3LMWxDTRkNrEXLhCC@utwdaZGL2xJcdwdaZA44uC3hKSvNFHNnpP@R1JR8IzpbRJqzWa7hATUUScb4jZ_OkLCVTS@eLK_V5Xu@gS2MzJn@R1JSytcHU13quBFDTkHcZS9nno1BpYIpr3pNrCI6V_0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE0HytZ1VWNUScb4FhAeUgdrmE@uCFqGeHlhPCtQDuL1dIC5nfs5EfJK8cwCH@PJweSUwNQItaqmrcZ5OWQ3o6TLlMXMbFIHlXu@gUFSsCoId2o8IvnGbhnqbkB86@5IXBCR0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP0NTBGwFcnZQdvcB3quBGd6Xp_aRDy4rqobzgiJ@BgjToBtuAQshJQZrQ@QSOolwWJl7eEXM0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw0WOdthwb_gohoOS6PzhtZsttPm3s@HQjRpdrmE@AaOC6PrKYDmHbPVg3M3Vd5b1dh7QwS5_qkaJmIXry38j6AgnJlwguiypT5O505sjSc6rdDW3PRzzgwdZhdIC5pAqWz0_mbVuEFBOuMqSJhZrtTAW_jkJl63QUn77rsgp6GM8fbPKn58xbV1TwCSj2J@InOZVXwJ1V2_7p4eSUwOutOUFe3lWhWnQJC81ST46n1GZ8_FoWkRDCilEM>1T1P2mXwVxb9A9krGQ2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh0gJswrUmPvqV9BJLI7vx6bt7tUrjQJjNRe92qdSP@1_qwSWiQEWrVtm@3nPsXXsbSZYxBrZawKaUuxhXIiKK3bore9M91GDH3zo_swtDxgk0lNerpcaMX6fO9DlGEVM2rpcaMJv_FXngPP4ISpWbmZWK7smWeXWOLgIEaXhqABOPqwjc37ulKMJ70O825HBl1ioLOS6PzbNCwNEBrZawkCzydJZwXYeEpZZlcmWeXQpFLDDo3iLqHMErj3o3iLp117FwQrJDYqqYlSs_Jgrtib8SiZrmE@yxQpd@edz2N4_vYBbVKtZLzHXL@huTLAdwI8Xl_JgrtEDja@0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa0aUDvguuIudz2Nakp3K43mRGfDFGmGzGRksVDt9THMjr9xlPT1q3Xry389G_IXo3JK8ctb7iCBCPfhsKJ0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD0A6GLwIg4cAc88p412RPcMctVqEaj5_t3nP9gSDFqzhKSvOJpUx6SC2UQ4HvFk4ZS9nnFd74rtfmZfJdIC5oeHlhPGeY07jkKP3yoJQtTNnqbkCcQTPP@ZhcpmmMSsoiJ@BgyXWUWLOVy7NI1FnJ6M6BuU88Zc7R3YhnqSJhZ1NIoma5pj3oYC80jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y0@jhiMjkhZ8dxvSB2HlHeSUwO4NF45Xlo47AECtNsxg1n4Zz1CPp@wYZoUQ83vkjr9xmp6KEMfRy@nGapsDI6JHkvmTtVeLQRblhwZe5NNST46hGI23OYXBNi8i@gtU9JAMHvH5YLuuUbgugLNSh3JK8cDDsKajwRuAuBZbpy0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6W.1,rdDpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g?2lIr6ga06tBt4dglnhFrmk?7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0bg1Oow?t6BJpn1vpCVScm4W86pxqmNBp21QrO1Ls6lK82sKbOQDey0BsM1QqmRBs5ZCrDoNojEwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMnSpKtz5xey1LtngwrSowrmlJrT9V?1QqmRBs5ZCrDoNojEwsClxp21BsD9LszEw9nc09j0NdCNIu01QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1ComBIpmgwt6YwrT1Bry0DbyYJ9PEw9nc0t6BJpn1voT9zcP8W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs5ZzsCcPczEwrTlQ86ZC86RBrmZOug?t6BJpn1voT9zcP8W879Bomgwpn9OrT8W82lP02kMe7w?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb.820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK05ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt04dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb01lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw?imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK04BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU?7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ?7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ?6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?hI3eM.2M>4/ws>4z__@gM>qf__VO>34/NI>iM}5,01uB8?nwe0hIc3W01;7>1P__@0w.3Lw142gQh0MdS2IRc2Tbd,01o>ff__UY>bK04q73owcygKa2EI9z0yd1UU6zMl63J040M6e2I_ePsPbOID8NMWw0k8b0K8aPYXdPcLaOsz73G01gwJK2I_ePsPbOID8NMWw0k8b,6g.2o/Cl.2E80hEoexMS838AbywGb2oM8zgue1EY5k0XM0Qyo5gc39wHfPITcOYH9Ocv6S0Ww0k8bqwHfPITcOYH9Ocv6S0Ww0k8bq0HfPITcOYH9Ocv6S0Ww0k8b;7>g3/1Y>i01czwqf1koeM09QPYUeE04~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~```$.h8;13g;ju=g;5j{M;ds{d;8I{6g<4Tg}1I}2{q;jtw}7{8,6/Lk;1Y{5;1fw}1w;8E{E;1xM}b}1w{M<4@E{8;1U{k{s}5M;Kg{s;74{8;18{2g}o,6/_U;6M,1L/_{4,r/Y}q,06/_A}a~juw~Tu;3vU;e7w;U@;3BU;evw;Wu;3HU;eTw;X@;3NU;ffw;Zu;3TU;fDw;@@;3ZU;f_w<10u;43U;hc;2SO;bfM;JIw<2Qw;br8;Jpw<2SQ;br8;JT^br8;Kl;2SO;bDw;KN;2SU^JIw<2Yi;br8;Lew<2@2;br8;LN;30g;br8&2MG;5@,1=?52E;c6g&2JI;5@,1=?53U;c88&2Jw;5@,1=?54M;ca=4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag;w>g.1|04Poj4}45}gk,w>g.1|04Poj4}3n}dE,w>g.1|04Poj4}8I}yT,w>g.1|04Poj4}45}hc,w>g.1|04Poj4}8I}yM,w>g.1|04Poj4}8I}yM,w>g.1|04Poj4}3q}dHw>w>g.1|04Poj4}8JM;yWw`<3.1}sw(3.2}v*3.3}yw(3.4;1fw(3.5;1E*3.6;1I*3.7;1N*3.8;2V*3.9;3n*3.a;3r*3.b;45*3.c;8I*3.d;8L*3.e;cc*3.f;cf*3.g;jt*3.h;jtw(3.i;ju*3.j;juw(3.k;jWw(3.l;k&3.m;ka*3.n;kx*3.o#?3.p;lyw)440f_N#0Q2.b;45(Y2.b;48)282.b;4d)3w1.n;kx=g.4g1.h;jtw-6I2.b;4i)7s1.g;jt*40f_N#9o2.b;4j}3Lw.9Y2.b;5f}2Xw.aY2.b;5@}aww.bQ1.n;kxw}1>dk1.n;ky}4,e41.n;ly{1>eI1.m;ka{2>fo1.m;kaw}k>go1.m;kfw}e>ho1.m;kj{k>ik40f_N#iY1.f;cwM(40f_N#jQ2.c;8I)kc1.i;ju)l010f_N;juw-lA>e;cc)mM1.m;kx)nw10f_N;jWw-oU2.9;3n)pgy!qQw!sAg!K4i!tsi!usi!w0i!x4h.m;ko{c>ygi.b;8D{i>zwg!zUi!AQg!Bki!Cki!Dgi!Esw!Foi!Gog!Hgh!Igi!JYi!L8g!Mgh.m;kr{c>Nsi!Owi!PMw!Rog!S8h.m;ku{c01zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V06dOoPcOnTdT06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK06dOoPcOnThxoCNBnSBKqnhFomNFuClA06dOoPcOnThxoCNB06dEpmdHpmgKc01zsCcPcBZFrn1I07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0nRZzu65vpCBKomNFuCl+05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kcw1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0pClOsCZOg4tcik93nP8Kcw1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01UpD9Bpg1MrSNIg4tcik93nP8Kcw1Urm5Ir6Zz06pOpm5Ag4tcik93nP8Kcw1MtnhPg4tcik93nP8Kcw1Pt79BsD9LsA17j4B2gRYObz80nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0sThAqmV+05Zvpn9OrCZvr6ZzonhFrSV+07dKs79FrDhCg4tcik93nP8Kd01JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kcw1DpnhOtndxpSl+05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?KpSZQbD1It?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM```,1I>7{8;1O}78}2g%4)Kr/Zw}2}v}1Y{Q,M-2)e,I{w;8E}yw;2Q,g>2{w}6>4,3{8;4@}jU}os%1-18r/_M}2;1E}6w{Y,M)w}2>lm/_U{w;r}1I{k,g>1{w-6g>4{8;74}sg;18,3)8}1w.1K>1}12;2V}bA}7w,M.1k}2{o>u,4}1w;RM;3n{fw%g-7c>1{o;dI}SM}G$4}2>1@,g}6;45}gk;19M%4)x,4}1w<2b}8I{aw%g-8E>1{8;yY;2bM;3t$8-2i,g}2;cc}MM{I%1)E,4{w<33M;cf}18$w-aE>e{c<1dQ;3Tg{w%8{w.2S>3M}3;jtw;ZS{8%2{8>Mw>4{M<4Tw;fu{2$w-cY>6{c<1dW;3TE}s,4)8}1>3o,g}3;jWw;_G}1o%2{8>Tg>4{M<5{g=E$w-eo>1{c<1gE;42w}n$8-3I>2{3;kx;124}go%2)Yg>4}c^gx{bw%4{g.fE>7&1ma;49{i$4)1,w#.13o}v8>6M.3s}2{o>2g>c!iOw;3t$4-14>3!4Ws}h$1{'
;;

# ------------------------------------------------- #
######### END BASE64 ENCODED TIMEP.SO FILES #########

    *)  supportedArchFlag=false  ;;
esac

${supportedArchFlag} && {
    _timep_base64_to_file "/dev/shm/.timep/lib/${USER}-${EUID}/timep.so" <<<"${b64}"
    chmod +x "/dev/shm/.timep/lib/${USER}-${EUID}/timep.so"
    unset b64
}

EEEOOOFFF

chmod 500 "/dev/shm/.timep/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

_timep_SETUP --force

shopt ${timep_extglobState} extglob
unset timep_extglobState
