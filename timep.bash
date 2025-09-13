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

    if [[ ${timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT} ]] && { [[ "${timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT}" == '1' ]] || [[ "${timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT}" == 'true' ]] || [[ "${timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT%[Ee][Ss]}" == [Yy] ]]; }; then
        timep_flameGraphFlag=true
    else
        timep_flameGraphFlag=false
    fi
    
    if [[ ${timep_ALLOW_ORPHANS_FLAG} ]] && { [[ "${timep_ALLOW_ORPHANS_FLAG}" == '1' ]] || [[ "${timep_ALLOW_ORPHANS_FLAG}" == 'true' ]] || [[ "${timep_ALLOW_ORPHANS_FLAG%[Ee][Ss]}" == [Yy] ]]; }; then
        timep_ALLOW_ORPHANS_FLAG=true
    else
        timep_ALLOW_ORPHANS_FLAG=false
    fi
    export timep_ALLOW_ORPHANS_FLAG="${timep_ALLOW_ORPHANS_FLAG}"

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

    timep_RETURN_TRAP_STR='timep_SKIP_DEBUG_FLAG=true
timep_TRAP_OPTS=${-//[^eu]/}; ${timep_TRAP_OPTS:+set +}${timep_TRAP_OPTS}
[[ -z ${#FUNCNAME[@]} ]] || (( ${#FUNCNAME[@]} < 1 )) || {
    unset "timep_FNEST[-1]" "timep_NEXEC_A[-1]" "timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]" "timep_NPIPE[${timep_FNEST_CUR}]" "timep_STARTTIME[${timep_FNEST_CUR}]" "timep_LINENO[${timep_FNEST_CUR}]" "timep_LINENO_OFFSET[${timep_FNEST_CUR}]"
    timep_FUNCNAME_STR="${timep_FUNCNAME_STR%.*}"
    timep_FNEST_CUR="${timep_FNEST[-1]}"
    timep_NEXEC_0="${timep_NEXEC_0%.*}"
}
${timep_TRAP_OPTS:+set -}${timep_TRAP_OPTS}
timep_SKIP_DEBUG_FLAG=false
'

    if ${timep_CLOCK_GETTIME_FLAG}; then
        timep_END_CTIME_STR='getCPUtime timep_END_CTIME timep_END_CTIME_SELF'$'\n'
        timep_START_CTIME_STR='getCPUtime timep_START_CTIME timep_START_CTIME_SELF'$'\n'
    else
            type -p getconf &>/dev/null && clktck=$(getconf CLK_TCK)
        : "${clktck:=100}"
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

    timep_DEBUG_TRAP_STR_1='timep_TRAP_OPTS=${-//[^eu]/}; ${timep_TRAP_OPTS:+set +}${timep_TRAP_OPTS}
'
    ${timep_ALLOW_ORPHANS_FLAG} && timep_DEBUG_TRAP_STR_1+='if [[ -f "${timep_TMPDIR}/.profiling.done" ]] || ! [[ -d "${timep_TMPDIR}/.log" ]]; then 
    kill -TERM "$BASHPID"
    exit 0
fi
'
    timep_DEBUG_TRAP_STR_1+='[[ "$-" == *m* ]] || {
        printf '"'"'\nWARNING: timep requires job control (set -m) to be enabled.\n         Running "set +m" is not allowed!\n         Job control will automatically be re-enabled.\n\n'"'"' >&2
        set -m
    }
    [[ "$-" == *T* ]] || {
        printf '"'"'\nWARNING: timep requires functrace (set -T) to be enabled.\n         Running "set +T" is not allowed!\n         functrace will automatically be re-enabled.\n\n'"'"' >&2
        set -T
    }
    if (( ${#BASH_COMMAND} > 16384 )); then
        timep_BASH_COMMAND_CUR="${BASH_COMMAND::16384}"
    else
        timep_BASH_COMMAND_CUR="${BASH_COMMAND}"
    fi
    timep_FUNCNAME_N="${#FUNCNAME[@]}"
    : "${timep_FUNCNAME_N:=0}"
    [[ "${timep_BASH_COMMAND_CUR}" == '"'"'set -'"'"'*m* ]] && echo 1 > "${timep_TMPDIR}/.log/.disableSignalRelay"
    [[ "${FUNCNAME[0]}" == "trap" ]] && ! ${timep_SKIP_DEBUG_FLAG} && {
        timep_SKIP_DEBUG_NEXT_FLAG=true
    }
    ${timep_SKIP_DEBUG_FLAG} || {
        timep_NPIPE[${timep_FNEST_CUR}]=${timep_NPIPE0}
        if (( 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} > 10#0${timep_END_CTIME_SELF} )); then
            timep_STARTTIME[${timep_FNEST_CUR}]="${timep_STARTTIME[${timep_FNEST_CUR}]%$'"'"'\t'"'"'*}"$'"'"'\t'"'"'"0"
            timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]=0
        fi
        if [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]%% *}" == '"'"'wait'"'"' ]]; then
            (( timep_END_CTIME = 10#0${timep_STARTTIME[${timep_FNEST_CUR:-0}]#*$'"'"'\t'"'"'} + 10#0${timep_END_CTIME_SELF} - 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} ))
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
                ((timep_FNEST_CUR >= ${timep_FUNCNAME_N})) || {
                    timep_IS_FUNC_FLAG=true
                    timep_NO_PRINT_FLAG=true
                    timep_FNEST+=("${timep_FUNCNAME_N}")
                }
            else
                timep_IS_BG_FLAG=true
            fi
        else
            timep_IS_SUBSHELL_FLAG=true
            printf '"'"'%s\n'"'"' "${timep_ENDTIME}" >>"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
            ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++))
            builtin trap '"'${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}'"' EXIT
            '
        for nn in INT TERM QUIT HUP; do
            printf -v trapAddCur '%s' "${timep_SIGNAL_RELAY_TRAP_STR//\%s/${nn}}"
            timep_DEBUG_TRAP_STR_1+=$'\n'"builtin trap '${trapAddCur//"'"/"'"'"'"'"'"'"'"}' SIG${nn}"$'\n'
        done
        timep_DEBUG_TRAP_STR_1+='
            IFS='"'"' '"'"' read -r _ _ _ _ timep_CHILD_PGID _ _ timep_CHILD_TPID _ </proc/${BASHPID}/stat
            ((timep_CHILD_PGID == timep_PARENT_TPID)) || ((timep_CHILD_PGID == timep_CHILD_TPID)) || { ((timep_CHILD_PGID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)); } || timep_IS_BG_FLAG=true
        fi
        if ${timep_IS_SUBSHELL_FLAG} && ${timep_IS_BG_FLAG}; then
            ((timep_CHILD_PGID == BASHPID)) && ((timep_CHILD_TPID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)) && timep_SIMPLEFORK_NEXT_FLAG=true
            timep_CMD_TYPE="BACKGROUND FORK"
        elif ${timep_IS_SUBSHELL_FLAG}; then
            timep_CMD_TYPE="SUBSHELL"
            ${timep_IS_FUNC_FLAG_1} && { timep_IS_FUNC_FLAG_1=false; [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 9 )); }
        elif [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]}" == " (F) "* ]]; then
            timep_CMD_TYPE="FUNCTION (P)"
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]# (F) }"
            timep_IS_BG_FLAG=false
        elif ${timep_IS_BG_FLAG}; then
            timep_CMD_TYPE="SIMPLE FORK"
        elif ${timep_IS_FUNC_FLAG_1}; then
            timep_CMD_TYPE="FUNCTION (C)"
            timep_IS_FUNC_FLAG_1=false
            [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 9 ))
        else
            timep_CMD_TYPE="NORMAL COMMAND"
        fi
        ${timep_LINENO_INIT_FLAG} && {
            timep_LINENO_INIT_FLAG=false
            [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 4 ))
        }
        if ${timep_IS_FUNC_FLAG}; then
            timep_LINENO_0=1
        else
            (( timep_LINENO_0 = LINENO - 10#0${timep_LINENO_OFFSET[${timep_FNEST_CUR:-0}]:-0} ))
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
            printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"
            printf '"'"'1\t%s\t+\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}.0\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_END_CTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}.${BASHPID}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO_0}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${BASH_COMMAND@Q} ${timep_IS_BG_INDICATOR}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"
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
                [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s" ]] || printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME_PREV_0}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${timep_BASHPID_PREV}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s"
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
                        (( 10#0${timep_END_TIME0//[^0-9]/} < 10#0${timep_END_TIME//[^0-9]/} )) && {
                            timep_END_TIME="${timep_END_TIME0}"
                            timep_END_CTIME="${timep_END_CTIME0}"
                        }
                    done
                    timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"

                } {timep_FD_ENDTIME}<"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
                exec {timep_FD_ENDTIME}>&-
            }
            ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s %s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR}]}" "${timep_STARTTIME[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]@Q}" "${timep_IS_BG_INDICATOR}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
            ((timep_NEXEC_A[-1]++))
            ((timep_NEXEC_N++))
        fi
        ${timep_IS_FUNC_FLAG} && {
            timep_FUNCNAME_STR+=".${FUNCNAME[0]}"
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"
            timep_NEXEC_A+=(0)
            ((timep_NEXEC_N++))
            [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]=" (F) << (FUNCTION): ${timep_BASH_COMMAND_CUR} >>"
            timep_NPIPE[${timep_FUNCNAME_N}]="1"
            timep_FNEST_CUR="${timep_FUNCNAME_N}"
            timep_NO_PRINT_FLAG=false
            timep_IS_FUNC_FLAG_1=true
        }
        if (( timep_LINENO_0 < 0 )) && [[ "${timep_BASH_COMMAND_CUR}" == "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]% \(\?\)}" ]]; then
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR} "'"'"'(?)'"'"'
        else
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR}"
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
                timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR}"
                timep_FNEST+=("${timep_FUNCNAME_N}")
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
            TIMEP_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}"'"'"' _ "${@}"
        else
            TIMEP_TMPDIR="${timep_TMPDIR}/.exec/${timep_NEXEC_0}" builtin exec "${BASH}" -m -O extglob -o functrace "${cmd0[@]}" -c '"'"'timep "${@}" <&0'"'"' _ "${@}"
        fi
    }
            fi
        fi
       '"${timep_START_CTIME_STR}"'

        (( timep_START_TIME = 10#${EPOCHREALTIME//[^0-9]/} ))

        timep_STARTTIME[${timep_FNEST_CUR}]="${timep_START_TIME}"$'"'"'\t'"'"'"${timep_START_CTIME}"
        timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]="${timep_START_CTIME_SELF}"

    }
    ${timep_TRAP_OPTS:+set -}${timep_TRAP_OPTS}
'

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

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0 timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_START_CTIME_SELF timep_END_CTIME_SELF timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0 timep_pidCur timep_BASH_COMMAND_CUR timep_FUNCNAME_N timep_LINENO_INIT_FLAG timep_TRAP_OPTS timep_NEXEC_HASH_CUR
        declare -a timep_BASH_COMMAND_PREV timep_FNEST timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_LINENO_OFFSET timep_LINENO_OFFSET_PREV timep_BASHPID_ADD timep_START_TIME timep_START_UTIME timep_START_STIME timep_START_CTIME_SELF_A timep_pidA timep_NEXEC_HASH_A

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

        timep_FNEST=("${#FUNCNAME[@]}")
        timep_FNEST_CUR="${#FUNCNAME[@]}"

        timep_BASHPID_PREV="$BASHPID"
        timep_BG_PID_PREV="$!"
        timep_BG_PID_PREV_0='"''"'
        timep_BASH_SUBSHELL_PREV="$BASH_SUBSHELL"
        timep_NEXEC_A=(0)
        timep_NEXEC_N=0
        timep_NPIDWRAP='"'"'0'"'"'
        timep_NEXEC_0="{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"
        timep_hash 'timep_NEXEC_HASH_CUR' <<<"${timep_NEXEC_0}"
        timep_NEXEC_HASH_A[${timep_FNEST_CUR}]="${timep_NEXEC_HASH_CUR}"
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

        echo "${EPOCHREALTIME}" > "${timep_TMPDIR}/.log/.final.end.wtime"
        '"${timep_END_CTIME_STR}"'
        echo "${timep_END_CTIME}" >"${timep_TMPDIR}/.log/.final.end.ctime"

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

    # indicate the profiling run is finished (will trigger orphans to exit)
    ${timep_ALLOW_ORPHANS_FLAG} || : >"${timep_TMPDIR}/.profiling.done"

    # remove empty log files
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
enable | grep -q 'timep_hash' || {
timep_hash() {
    local __var_in __var_out

    if [[ -z "$1" ]] || [[ "$1" == '-' ]]; then
        # Capture stdin
        __var_in="$(cat <&0)"
    else
        # Process file path
        __var_in="$1"
    fi
    if [[ "$2" ]]; then
        declare -n __var_out="$2"
        __var_out="$(timep_crc32 <<<"${__var_in}")-$(timep_fnv1a <<<"${__var_in}")"
        declare +n __var_out
    else
        printf '%s-%s\n' "$(timep_crc32 <<<"${__var_in}")" "$(timep_fnv1a <<<"${__var_in}")"
    fi
}
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

    local logCur log_tmp kk kk1 kkLast lineno1 nn inPipeFlag nPipe startWTime endWTime startCTime endCTime wTime cTime wTime0 cTime0  func pid nexec lineno cmd t0 t1 log_tmp linenoUniq log_dupe_flag spacerN logMergeAll fg0 ns nf nPipeNextIgnoreFlag IFS IFS0 nPipe0 cmd0 cmd00 d6 wTimeTotal cTimeTotal wTimeP cTimeP nlogA logDepth keyCur mergeInd kkOut jj firstFlag 
    local -a logA nPipeA wTimeTA cTimeTA funcA pidA nexecA linenoA cmdA mergeA mergeA0 isPipeA isTrapA logMergeA linenoUniqA sA fA eA fgA normalCmdFlagA startWTimeA endWTimeA startCTimeA endCTimeA wTimeA cTimeA wTimePA cTimePA linenoUniqMapA linenoUniqLineA linenoUniqCountA linenoUniqWTimeA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA linenoUniqWTimeTA linenoUniqCTimeA linenoUniqCTimeTA linenoUniqCmdA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA isMergeIndicatorA mergeCurA mergeCurA0 cmdIndexA linenoUniqNestDiagramA linenoUniqCmdIndexA linenoUniqLinenoA inPipeFlagA
    local -A linenoUniqMapAA

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && {
        trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2' ERR
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

#    (( logDepth <= 2 )) && set -xv

    # load current log (sorted by NEXEC) into array
    #mapfile -t logA < <(sed -zE 's/\n(TRAP [^\n]+)\n/'$'\034\035''\1\n/g' <"${logCur}" | sort -V -k11,11 | sed -E 's/'$'\034\035''(TRAP .*)$/\n\1/')
    mapfile -t logA < <(sed -zE 's/(^|\n)(TRAP \([^\)]+\)\: [^\n]*)\n([^\n]+)\:\:[^\n]+\n/\n\3::\t\2\n/g' <"${logCur}" | sort -V -k11,11)
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
#        if [[ "${logA[$kk]}" == 'TRAP ('*'):'* ]]; then
#            (( kk1 = kk + 1 ))
#            cmd0="${cmdA[$kk1]}"
#            cmdA[$kk1]="${logA[$kk]@Q}"
#            ((kk1++))
#            while { (( linenoA[$kk1] < 0 )) || [[ "${cmdA[$kk1]}" == "${cmd0}" ]]; } && (( kk1 < ${nlogA} )); do
#                unset "cmdA[$kk1]"
#                unset "nPipeA[$kk1]"
#                unset "startWTimeA[$kk1]"
#                unset "endWTimeA[$kk1]"
#                unset "startCTimeA[$kk1]"
#                unset "endCTimeA[$kk1]"
#                unset "funcA[$kk1]"
#                unset "pidA[$kk1]"
#                unset "nexecA[$kk1]"
#                unset "linenoA[$kk1]"
#                unset "logA[$kk1]"
#                ((kk1++))
#            done
#            nPipeA[$kk]=-1
#            unset "logA[$kk]"
#            continue
#        fi

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
        if [[ "${cmd}" == 'TRAP ('*'): '* ]]; then
            cmd="${cmd@Q}"
            isTrapA[$kk]=true
        else
            isTrapA[$kk]=false
        fi
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
        elif (( nPipeA[$kk] > 1 )) && (( kk > 0 )) && ! ${isTrapA[$kk]} && [[ "${cmdA[$kk]//"'"/}" == '(('*[\<\>\=]*'))' ]]; then
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
            [[ -f "${timep_TMPDIR}/.log/.needsMerge/log.${nexecA[$kk]#* }" ]] && \rm -f "${timep_TMPDIR}/.log/.needsMerge/log.${nexecA[$kk]#* }"

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

            # if we still dont have a valid end cpu time then assume it took as much cpu time as it took wall-clock time
            ${timep_CLOCK_GETTIME_FLAG} && if [[ "${endCTimeA[$kk]}" == '-' ]] || (( cTimeA[$kk]<= 1 )); then
                cTimeA[$kk]="${wTimeA[$kk]}"
                (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${wTimeA[$kk]//[^0-9]/} ))
            fi
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

    # record each log name in the ".needsMerge" dir
    [[ -d "${timep_TMPDIR}/.log/.needsMerge" ]] && \rm -rf "${timep_TMPDIR}/.log/.needsMerge"
    mkdir -p "${timep_TMPDIR}/.log/.needsMerge"
    for kk in "${!timep_LOG_NAME[@]}"; do
        : >"${timep_TMPDIR}/.log/.needsMerge/${timep_LOG_NAME[$kk]##*\/}"
    done

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

    timep_LOG_NESTING[0]="${timep_LOG_NESTING[0]%$'\n'}"

    # add in any logs that didnt get merged all thge way up to the top lvl. this way at least they arent entirely missing...
    [[ -f "${timep_TMPDIR}/.log/.needsMerge/${timep_LOG_NESTING[0]##*\/}" ]] && \rm "${timep_TMPDIR}/.log/.needsMerge/${timep_LOG_NESTING[0]##*\/}"
    for nn in "${timep_TMPDIR}"/.log/.needsMerge/*; do
        printf '\n\n%s\n' "$(<"${nn}")" >>"${timep_TMPDIR}/.log/.needsMerge/${timep_LOG_NAME[$kk]##*\/}"
    done

    printf '\n\nFINALIZING OUTPUTS\n' >&2
    printf '\nGETTING TOTAL TIMES (+%s)\n' "${SECONDS}" >&2
    printf '\n\n' >>"${timep_LOG_NESTING[0]}.out"
    printf '\n\n' >>"${timep_LOG_NESTING[0]}.out.combined"

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
                enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash && [[ $(getCPUtime) ]] && [[ $(timep_crc32 '' <<<"${RANDOM}") ]] && [[ $(timep_fnv1a '' <<<"${RANDOM}") ]]  && [[ $(timep_hash '' <<<"${RANDOM}") ]] && gotLoadableFlag=true
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

        enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash
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
b64=$'44544 22272\nmd5sum:0bc7e8d7a9d6014a91a806cd16717c7f\nsha256sum:e2cd5f14f6daab80d73f3e44c3c7df14bfb8f6afb2670d52b9fd2213ce0919c1\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0000000000000000000000000000000000000000\n000000000000000000000000000000000000000\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0hQN9gAdvcyUObzk\n000000000000000\n00000000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n__\034vQlchw810g}?c0fw01{1}81f}.4?e?a04?7w0t?4>5$;Lh8;2Z4w]g]g>g,8}w]2]g5w;10m]1]1>1w.cwZ:O4Q;38jg;4w5:E0A]4]8>6>U3Q;3wjg;e1d:M04;3?g:w]1,g.1M0w;702:s08:A]2g]1}4>1>20Q:83g:wd:3}c}8]5fBt6g4>83g:wd:20Q:c}M}w]kelQp0g.1gd:50Q:k3g;1c]4M]1]1hVnhA1w!=?g]5bBt6g4>O3Q;38jg;cxd:e08:U0w:4]1>1g>3>hQVl0ehpoM@HlL11vUc3olMWL6i1W@b7YMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q.Yvg03_9jFd?1E,eDw||_OkOjg?q04.3FQf||YBaAQ?6w2>Ws3||_9i9d?1E0M.eCM||_Okqjg?q0g.3FEf||YB4AQ?6w5>Wp3||_9gFd?1E1w.eC0||_Ok2jg?q0s.3Fsf||YB@AM?6w8>Wm3||_9v9c?1E2g.eBg||_OnGj.q0E.3Fgf||YBUAM?6wb>Wj3||_9tFc?1E3>eAw||_Onij.q0Q.3F4f||YBOAM?6we>Wg3||_9s9c?1E3M.eDM_L|_OmWj.q1>3FUfX|_YBIAM?6wh>Wt3@||9qFc?1E4w.eD0_L|_Omyj.q1c.3FIfX|_YBCAM?6wk>Wq3@|Y*i8QZWkU?4yd1u9e?18evxQ5kyb1mpb?18xs1Q2v_w3N@<ccf7U<i8QZKkU?4yddr9e?18avV8yv18MuU_ic7U0Qw1NAzh_Dgki8I5lkI?4y5M7g8_@1C3NZ4?333N@<fcf7LG0fole>tiJli8cZcAI.18yulQ34ydfip9?3Eev|_@xA||Nwltjw.lT33NY0MMYvw,3P3NXWWnv|_Yf7U<yMlWkw?i8Dhxs1QjoDUi8n93UhC0g?ZZ180v58zjRsjw?pCoK3N@4<1CpyUf7Ug<6of7Qg.@S5Ay3Nw4NMI7E20@SQzc4BQwVYnnFZZ33pwZSSQyd1hJe?11K223KeR1Kgg.1CggZKQ6ofrOmObw?pA4frKB8zp?1.pwZOQNZC3T3i06ofseQ03N@<6ofrYhC3S_cpw_@Vky3M11C3ZL3pwZOQg5C3Px0MCofXY5C3S_8pwZOQ`0mofSYJC3Px0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ05C3ZLbpwYUgcFC3@_13OB0Y4wVQ0@5d||Ys53l4.4.29@4y5Og@5CLX|YegyMnWk.xs0fxhk1?18zgnHj.pwZSSXUwwXzJLMg.1C3SYBxiQ?6ofrJpC3SXLi8Sg?g?6ofsJcvpwZMQw1C3T3J?Yvw,1C3S_4pwZLP6of_Kl8wY0gpw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ`0mofSYJC3Px0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ01pw_rOSofe43apw_LMgYFgf18et0fxjv||71tRf.1>i8cZJkI.1Q0sdjcs0fEAyd5krZ|@5M7gvK04>fEAyd5kg2?21Ug?4018zgkD_v|i0Z4Q4y95nNb?1rMSoK3N@4<11lA5lglhlkQy1X201?23_McfzV01?23_M5@aQybrwwNM81Z?183QjEhj7Aw_Y3thFcySoggo0Y901c3QjwWMJC3NZ4.NXkkNV4ydt2hgLM8.3EVfH|Un03UnQ>i8Jc95xczrgAA>4yUP_tjUWmrN218qlMAk4123M18Z@B8MvA_ic7W1QwFOAw1QQO9ZH|||W5XX|Z1ysq5M0@5cM4?4xFx2iw>g48f04xFz2ig>g48f04w3z2io>i071i0ec9aw.180tB8xuQfxdM.18znMA44yd5lMG?2@g>370i8BY90zEv_H|Qybt2g8ct98yu_EIfH|QS5V7gGLA>18znMAk4y9Sj70i8Ql8iE?exg@L|ct98zngAk4O9V@y1@L|i874804?4i9Y5JtglN1nk5uMSof7Qg?4OdJ2ig>cvZcyvrEBLH|Un03Ume>i6C49a>10gwY0i6Cs99>10gwY0i0es99w.180sd80VMAG>eDP_L|pwYvh.i8QZwic?370W4HV|Z1Lw4.3Hwmqgi8Dei8QZxOA?370W8_V|_Fqv|_SoK3N@4<3E2_D|UIUW2jW|Z8zjRt8M?i8D6cs3E0_D|@KTAezH@f|yPzE1fH|QydfhQF?18ysoNMezz@f|WVugi8Dhi8ni3UjX>ZZsNMeIPpCoK3N@4<1CpyUf7Ug;Yvx;YwYUY3M6i8f?oD_i3D13UiP>i8Qk1Efy1Tnyi8Rg24wVQn8JpCoK3N@4<1CpyUf7Ug;Yv0f983PzNv1rUi8Dgi8f224wVQnfIi3D8sSp8zl01YwYUY3M6i3DasRt8zl02YwYUY7M60kwVODd7i8Rg0_8fef1Y1w98esFPdQydk0jO3PzMv0o3i3DasOt8zl05YwYUY7M614wVODcni8Rg1L8fef1Y1wl8esFP1_8fef1Y1wq9@fvgMMYvg018zl48i3Dh3UdH||W@y9@cdC3NZ4?11lQ5mgll1l5l8yvRji87IO>4y9t2ggi8Bk91y0fOQfxok.20vM40tn_EbLL|P7ii8RY92x8K<1>Lw4.18ykgAaexe@f|xs1@2_p492U13UmQ0g?i8RQ9318zjSW9M?W0XU|@9h2gcxs0fxeM1?18yMkzh.LM.g18yM18yggAWcHT|Z9ysh8xs0fx9Y1?37h2gc0g.eIWi8QRtys?4y9X@w5@f|i8A494y5M0@4Y04?bY.40W8XT|Z9ysh8xs0fxbU1?37h2gc,4yZ9icyxeisYIJ5cuR9LXc1,g?3NY0i8Ic9bE.40Lw4.1cyuvEWLr|QC9NAy5M7hOj8Id6Qs?4S5OngKh8DLj8DOj8DCgv_hiUQcd469NkO9U0@S44y3M058ctl93W_Li3D1tuTHGMYv03703W9czgRZ@f|xs1Q7Xw1>3W9czgRX_v|wu4?1?i8Q5nLz|QMfhcxcygSPhw?WVKgi8IY9exnZL|j8DDgoD7xs1RgeyoZL|yQgA38n03UiE>i8J49118xs1Q0Qi9a4ybh2goi8n0t0d8yix8wsj8>h8DUmRR1n45tglV1nYfEmfr|UJk90O5QDhxWcLR|@beezAZL|i8QZfyo?4y9Nz70WcfR|Z1LM4.3HKkyb1oN2?2_.104yb04y912jEc_r|Yt490M1>ioD4i8n03UmB_L|i8QZV2k?370W87R|_HL4ybf2jENLn|@Kki8IY9eyXZv|WkH|_Z8zjmU9g?i8QZHOk?ex3ZL|i8A494y5M7gxLM.g3EQfn|QC9N4y5M0@5iLX|Qybf2jEu_n|@Kqi8QZAxY?ewtZv|Wln||E0_n|UIUW1PS|Z8yuV8zjSy7M?i8D2cs3E@fj|@AM||3NY0glhlkQy3X718zngA4ey@Zv|i8QRnyk?4Ob84y9NkO9V@xFZv|xs0fx441?18zjlc9g?j8DDW5bR|@9MUn03Uj8>i8QRfOk?4O9V@wVZv|yse5M0@4jM4?4yddj8B?1cyuvE8fn|UD3xs0fxhU1?2bh2ggw_w33UZx0M?3Uhb0w?i8QZIOg?8fU0Dkii8JZ24yd1qcA?20fM183QjUibwB8Oa4V9POOQydl2goNQgA5,18zngA54y9h2goW4_Y|@5M0@5yM.4Obh2goyQMA54ydv2gwcs18zhnm9.LB>3EtLj|Qydv2gwWfPP|_Hu6oK3N@4<2bh2ggw_w33U@j0g?3Ugd0g?i8QZ7ig?8fU0Dkii8JZ24yd1gQA?20fM183QjUibwB8Oa4V9POOQydl2gocvp8ykgA6ez4@|_xs0fxbg2?2X0g.eIj3NZ4?2bv2ggi8DKW7jU|@9MQy9X@zqY|_i8f4s8DomRR1nccf7U<j8DCi8QZ0Og?370W4vP|_HKgYvh.yQgA48fU0M@fgM8.@4Hg4?4ydfnQz?23@09R4Aybvgx8zglJ8M?w3Y0i0Z4@37ii8RQ91z7h2go,ewH@|_xs0fxmv|_@bj2goi8RY922@8>370i8QlHic?exnY|_i8RY923ETvb|@Bm||3N@4<1cySkgi8JZ244fJwgAw3Y03Um2>i8QZ@y8?8j03Ug20w?ibwB8Oa4V9POOP7Si8Rk91x8ykgA6eyM@L|xs0fxuP@|Z8yQMA64ydv2gwi8Qlgyc?370Lz>18ynMA2ezmYL|i8JQ90wNQAO9V@w7Y|_Wt3@|ZCA4ydfvAs.NMewOYL|Wq7@|Yf7Qg?8j03UhN_L|Wo3|_Yf7M1cySkgi8JZ244fJwgAw3Y03Uhq0g?xc0fxbnZ|ZCbwYvx;ibwB8Oa4V9POOQydl2goi8RQ91j7h2gk,4y9h2goWfHV|@5M0@5dLX|QObh2goyQMA54ydv2gwcs18zhm18w?LB>18ynMA2ewsYL|i8JQ90wNQAO9V@xdYL|Whr@|Yf7Ug<4Obph18yTQ8gg@S12i0fM0fxe8.24M0@4k_X|Sqgct98zngA6ct491w,W7PV|@5M0@5KfT|UJc91x8znMA8bUw>cs18zhn@8g?i8BY90zEE_7|Qybt2g8ct9cyuvERf7|@Ct_v|3N@<4ydfg4s.NMezWYf|WmDZ|Yf7Qg?4ydfsAr.NMezyYf|Wl7Z|Yf7Qg?4ybj2goi8RY9218zhmy8g?cs2@c>ewXYv|i8RY923EMv3|@AW_v|3NZ?4ydfvww?24M0@5GvX|@wAZf|WhTZ|Yf7U<i8QZS2.8j03Ukp||WZUf7U<i8fI24ybfnkZ?2@0g.eybYv|i8IZj3Q?bU1>W7HN|Z8yPQzfg?Lw4.3Eqv7|QybfhEZ?2@0g.exoYv|cs18wYg8MM3P3NXWi8fI24y3N0z3///!!!!!!!!!!!!!!!!!;3>6w>4>6>44w4g0C408<6w.1Q.346@RqGEecYsLvhTuylPGsEjhFtg$?98>i^1,w^8g>g^fQ>i^d,i^cE>i^bo>h^5k>i^dQ>i^6Y>i^ds>g^6Q>i^bM>g^fo>i%4>w^b4>i^7o>g^aM>i^eg>g^cg>i^6c>i^2M>w^ac>i^4o>y^2w1.g^4s1.h01s0o58:M}81.i?g0o18;1f]5E1.h01s0858:M]3g1.h01s0E58:M]1o1.h01s0U58:M}1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB069RqmNQqmVvpn9OrT80nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1MrSNI07dQong0sThAqmU0u6Rxr6NLoM1CrT1Brw1CsClxp01Cpn9OrT80u6pOpmk0pCdIrTdB06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs01MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01QqmRBs5ZEondEnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T04tcik93nP8KcyUR,w01?4?w02?8?w03?8?w01?8?g02?401?1?8?g02?8?g02?8?g01?4?g01?4>1?c0r04?1}IV6m1w?101S0g?4>9uhBwo.c0wg4?1>1R6CA9.208M1:O4Q:8]d04:Q4Q:8]904:S4Q:8]dxd:M5]8]2oP:O5]8]f0J:Q5]8]2oP:S5]8]1wK:U5]8]9wL:W5]8]60K:Y5]8]awK:@5]8]d0K]54:8]1wL:854:8]2oP:a54:8]50L:c54:8]2oP:e54:8]7wL:g54:8]2oP:i54:8]c0L:k54:8]10M:m54:8]2oP:o54:8]3wM:q54:8]80M:w54:8]2oP:y54:8]bwM:A54:8]2oP:C54:8]e0M:E54:8]30N:G54:8]awK:M54:8]2oP:O54:8]80N:Q54:8]2oP:S54:8]awN:U54:8]f0N:W54:8]2oP:Y54:8]3wO:@54:8]8wO]58:8]2oP:858:8]7EP:a58:8]e0d:e58:8]c1g:g58:8]bcP:o58:8]6UP:q58:8]e0d:u58:8]21h:w58:8]cYP:E58:8]68P:G58:8]e0d:K58:8]81h:M58:8]eMP:U58:8]5sP:W58:8]e0d:@58:8]c1h]5c:8]e0O:E4Y:6,w{G4Y:6>1M{I4Y:6>6w{K4Y:6>7=M4Y:6>3M{O4Y:6>7g{Q4Y:6>5w{S4Y:6>6=U4Y:6>7w=5]7,g{25]7,M{45]7>1=65]7>1g{85]7>1w{a5]7>2=c5]7>2g{e5]7>2w{g5]7>2M{i5]7>3=k5]7>3g{m5]7>3w{o5]7>4=q5]7>4g{s5]7>4w{u5]7>4M{w5]7>5=y5]7>5g{A5]7>5M{C5]7>6=E5]7>6g{pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP07hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis}7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng;4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U;~0Et6BJpn1vq65Pq20D9O0D9OAI}0w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU}5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt<13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw>19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?~0Et6BJpn1voT9zcP8w9Osw9OsFb}w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt<13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw;4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI>lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw<imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw;6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0bg1Oow1QqmRBs3EwrTlQ86ZC86RBrmZOug1QqmRBs3EwsClxp21BsD9LszEw9nc0pSlQgR1lt6BJpg1QqmRBs5ZCrDoNog1QqmRBs5ZzsCcPcw1QqmRBs5ZEondE07hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc3xU02kMe7wJ9j0NdCNIu01QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt=?g>8>3>1>2,5>hQVl?4?s04>2g]2?701,c}hI3eQM>8>ocX|Sw.2gQf|A>13i|@A>wdf|Y>2wRv|204?b3m|Ys0g?AdD|SM1.gTL|F04:k}5Wkw01u1016MM72901.A>7>f3d|Zw0g>UghwUoiwYbtMy?3YqeOEP928,4>4g.3UP|_vM4:o>m>6jh|ZC0g>cL0gUgwM9S3ww0h>7g.2UQL|7M8.123x2e0A8e68Q3gwUwz0h13yy61k4ec8c6hMXg0wcT0gEec4gea44e848e648e448e24sb>4>bM.2gRf|2w4;1c>Q>8Pl|_t0w.48e48Y2gwUozwd23y2d148ea8M5ggUMxwp43zy31Qsew083Mg4a3zx43z113yx23y123xx23x123wx12M.3g>w0g?7dz|TA4>gwUgz0913xy60Q4e88c4h0Wg0ge20gEe84ce644e448e24wb>5>5w1?1ATf|jM>143x02iwU8//!!Q0g;2g1:dxd]g:1I0g:M]B08:d]b0i:6g:38jg;1I]2}q]d1d:7}8]fn@_SY<2]5]20z:1w]U8]E]C04:b]1w}M:3EjM:8]@04:k}s]5M]8aM:s]e2k:8]d05:2g]o]fX|SY,@2g;3|_ZL<4]Yf|rM>2U9:fD|SY,dg!!!!!}0e1d$co2:Rw8;3C0w;fo2:1wc:m0M;2o3:dwc;160M;5o3:pwc;1S0M;8o3:Bwc;2C0M;bo3:Nwc;3m0M;eo3:Zwc:61!2oP:Y2Q:CcM;1wK:C2Y;1wbw;awK:Q2U:obM#2oP:k2Y:CcM;7wL:9zc;30bM;10M:9zc:Uc:80M$2oP:K3]CcM;e0M:c34;2Ebw$CcM;80N:9zc;2Ecg;f0N:9zc:Ucw;8wO:9zc#1WcM;e0d]g:30k:bcP!rzc;3w3g:4]854;3fcM#68P:U0Q:1]81h:X3c#1ncM;e0d]g:30kg;e0O-17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA>8>4<1?[0204:80g:8>4<1?[09g2:Gw8:8>4<1?[0b0i:K18:8>4<1?[0204:Sgg:8>4<1?[0aYi:HN8:8>4<1?[0aYi:HN8:8>4<1?[0aE2:HM8:8>4<1?[0bwi:Lh8!1>103N_M*d,w040204)f,w040504)y,w040904)U,g0o021j]g:14,g0i0d1d-1H,w040d04-1T,g0h0cxd&103N_M(2m,w040e04:vM4;2B,g0o061n:1]31,g0o061j}g;3j,w040606:pw4;3A,g0o041j:2]3R,w040f09:2w4:80g.w040d07:7M8:o0g.w04.b:Tg8;120g.w040e0d:ugg;1g0g.g0n0c1g:k]1v0g.g0n021h:m]1L0g.g0n081h:e]1_0g.g0n0c1h:k]2e0g?103N_M(2o0g.g0g?MS&103N_M(2C0g.w050b0i-2I0g.g0j0dxd-2V0g.g0k0e1d-320g,f050Q-3l0g.g0n011j-3x0g.g0m0exf-3u,w0209g2-3T0g?4w^k0w?8%M0w?4%@0w?4w&1f0w?4w&1y0w?4w&1Q0w?4g&260w?4w&2v0w?4g0n061i:c]2O0w?4w04060i:jM:360w?4w&3x0w?4w&3p0w?4^3v0w?4w&3Q0w?4g0n021i:c}60M?4%e0M?4w^x0M?8%M0M?4w&1?M?4^1e0M?4w&1v0M?4^1N0M?4g0n0a1i:c]240M?4w&2m0M?4w&2I0M?8^360M?4w&3r0M?8w&3S0M?4%21.4g0n0e1i:c}0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmVFt01QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSdOoPcOnSxTnTwUdw1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvpn9OrCZvr6ZzonhFrSV+0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80s7lQsQ17j4B2gRYObz8Kdg1Cpn9OrT9+0pD9Bomh+0sThAqmV+0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06pzr6ZPpk17j4B2gRYObz8Kdg1UpD9Bpg1PrD1OqmVQpA17j4B2gRYObz8Kdg1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQsCdJs417j4B2gRYObz8Kdg1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1MrSNIg4tcik93nP8KcyUR06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CrT1BrA17j4B2gRYObz8Kdg1DpnhOtndxpSl+0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79BsD9LsA17j4B2gRYObz8Kdg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8Kdg1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt.bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCBKqng0bDhBu7g0bCpFrCA0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KsCZAonhx02VKrThBbCtKtiVMsCZMpn9Qug0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?KpSZQbD1It?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!;1I>7,w:1M0w;702:9*g(K,g>o]B08;2k0w;1I(4(xg>4>6]b02:I08;1w0g-4}g]3g>1>1w]w1:204:zMU-2*W,g>o]I18;2M4w:Q(4(g>fr|SY2}0w]2]U}s]2(4E>b,w]U8:3ww:W08:8,g>w]6]1i,M>8]82c:w8M;9w1)1(mw.f|_SY2]bwA:K2g:@}s}w]2]6s.3@|ZL0w:3U9:fwA:g}8,g>w)1S>1,8]e2k:U9g;d05:1M]8]1w]w,g.12}wH:22I;3U0g:s>m>2}o]8E>1,w}bg]J:80s-1(2i>1M>8]83g:wd:3*8(Fg>4>2]50Q:k3g;1c(1(bc>1,w:2wd:a0Q:s04)w)2Z>3w>c]O4Q;38fg:w(8}w]Og>Y>3]d1d:Q3Q:8(2}8]dk>1,M:3ojg;dwZ:2*w)3y>1w>c]U4Q;3wfg;c01:2}8]1}WM>4>3]a1f:E3Y;18(2}8]f,1,M:3EjM;ew_:M*w]2]3V,g>c]M5:30g:502)w(_M>w>3]21j:44c;181)8*g1.1>c(113:bw(4}g]d0g?1M{q7s;10gM;201)4*g>8^o4g;3E1g;1M>x>2}o}A>3^4xa:50g)4(h,M&1sjw;2c1)1('
;;

'aarch64')
b64=$'144846 72424\nmd5sum:24eb458a52ab73d42096eaafb5079c01\nsha256sum:ce421931bf145917e515fa9fe1e46eedf5321709a9436741bbb7e0b8ba381bdb\n0gAuovfAXW1PZL_UuYjIqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrA4vfAVq1PZL8pOZjzEseCV\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n042\n000\n31\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n07PVemws_rM2sLkUq73FKmNY@jBE7fSZXDXReuxYWrxE4wjM_?3HEvL_l5Xg\034vQlchw810g{?c0JM01=1{awj0g{04?e?704?7g0s?4<5!]O2E]38aw{0g]g<o>30_g]c3Z0g:MfQ1}1g]2w9{01]2<1w>dzZ}SfQ1:3o_g4:c01}M04}8{g<4<O04]380g]cw1}9{A{g[kelQp0g>10a}40E}g2w]1s[5M[1[1hVnhA1w!#?g[5bBt6g4<MfQ]30_g4:c3Z0g:g08]1?w}4[1<1g<3<hQVl03@7d0Moi_wSEPL9Syp6izVR@QX9:c<t;g<o<gi0h02og0w:t<8<cgrXlGGwUPNOZZ7tW9neFOxd6BR![c02g1w3M%c05w3>8-4<2#xM>1#hw>28$lg>18$Tg>18$Bg>18$VM>18$N<18$RM>1#H<18$L<1#Jw>14$vw>18#g>2#Ig>18$Dw>1#1M4?18$oM>18#04?18$Ow>18$Xw>1#b<2#BM>18$rg>18$cw4?1#Q<18$kg4?1405w0M0w8:3{304?1802M1A8}5g[p04?1405w>w8:3{fw4?1405w1w0w8:3{804?1405w2g0w8:3{05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1PrD1OqmVQpw1yqmVAnTpxsCBxoCNB071Lr6M0sThxt01Pt6hFrw1Urm5Ir6Zz06pLs6lK06pOpm5A06pBsD9Lsw1UpD9Bpg1DpnhxtnxSomM0pCdIrTdB06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs01MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01QqmRBs5ZEondEnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T{4?g02?8?w02?8?w01?8?g02?8?g03?4?w02?8?w01?4?w02?4?w01?4?g01?4{g0207o1>g[behBwo>c0w04?1<2nApo6>208I1}MfQ1].{i}OfQ1].}aMh}QfQ1].}d3Z0g:M?2].}7wx}O?2].}b0y}Q?2].}7wx}S?2].}dwy}U?2].}5wA}W?2].}20z}Y?2].}6wz}@?2].}90z{42].}dwz}4,].}7wx}6,].}10A}8,].}7wx}a,].}3wA}c,].}7wx}e,].}80A}g,].}d0A}i,].}7wx}k,].}fwA}m,].}40B}s,].}7wx}u,].}7wB}w,].}7wx}y,].}a0B}A,].}f0B}C,].}6wz}I,].}7wx}K,].}40C}M,].}7wx}O,].}6wC}Q,].}b0C}S,].}7wx}U,].}fwC}W,].}4wD}Y,].}7wx{82].}40y}2082].}e0p}6082].}c>w:8082].}a0D}c082].}10y}e082].}e0p}i082].}1010w:k082].}c0D}o082].}e0x}q082].}e0p}u082].}7010w:w082].}e0D}A082].}d0x}C082].}e0p}G082].}b010w:I082].{E}EfY1]11<M=GfY1]11>1g=IfY1]11>7g=KfY1]11>7M=MfY1]11>3w=OfY1]11>4+QfY1]11>8+SfY1]11>6+UfY1]11>8g-2]21>1+2?2]21>1g=4?2]21>1w=6?2]21>1M=8?2]21>2+a?2]21>2g=c?2]21>2w=e?2]21>2M=g?2]21>3+i?2]21>3g=k?2]21>3M=m?2]21>4+o?2]21>4g=q?2]21>4w=s?2]21>4M=u?2]21>5+w?2]21>5g=y?2]21>5w=A?2]21>5M=C?2]21>6g=E?2]21>6w=G?2]21>6M=I?2]21>7+fOc3RvRXLWDZ0M2hrg?BfRXMqy_8MflM0dvRw<3MuX@FY>Y17@h_AgUz@h808vRxYw0Zkv80fl7O03Rh01090h0A3V4080Ai027Zog0g2g4gp0@h0y094w0x_m4040A14agfAggw2h808vRx01090h3A3V4680Ai027Zog0g2g4h90@h22094w0x_m4040A14mgfAgEw2h808vRL>f0h6A3V4c80Ai027ZrM?3M4hV0@h3y094w0x_mY>Y14ygfAg0w6h808vRL>f0h9A3V4281Ai027ZrM?3M4iF0@h120p4w0x_mY>Y14KgfAgow6h808vRL>f0hcA3V4881Ai027ZrM?3M4jp0@h2y0p4w0x_mY>Y14WgfAgMw6h808vRL>f0hfA3V4e81Ai027ZrM?3M4k90@h020F4w0x_mY>Y156gfAg8wah808vRL>f0hiA3V4482Ai027ZrM?3M4kV0@h1y0F4w0x_mY>Y15igfAgwwah808vRL>f0hlA3V4a82Ai027ZrM?3M4lF0@h320F4w0x_m&e>d?V4vVg>JcD__Nv?R_m7O03RhYw0Zkv80flU>Y>2V7x?3M8g0bAjY?eL>1kUg?Q27gh_Bx?2QY0c1Gw027Zr?R_mU>Y>2V7x?3M8g0bAi4?cIy_7_jggO1yO7Ygpf1?2QUw?Q4bIh_By?2QY0c2Gw027Zr?R_mfOc3RvRXLGDZ0M2hYMI0@vc?f1w0AIVg040d@>d?R4vVw>Je>d?g3uhtv__BZz__Vsw081io08bevcbgfDZuYaELOc3Rs03nZov80flnOg3RtL__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnB?3MF40bAqfggHA30w0QMw40Jal02V4A?abUMc1GG9?97x0O0Go1h0e<kE0742ig7xwK04wgkGv?fHgv__le038iH?R_m1w?I0c?b0@101fTgP2fpM404Z_2c8ZwQ?Aoh0497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCVW184YvM04WW7X_Ri@Q0aZNf__5_RXGGDZ0M2h7MM0suMd05jPkM6FZNI0@hY4077d1g1kcMh0@hg0wd9y0A0VnM?snciDVEv301N8gk0l3g8gfDxgMahw090ehY?75?81iB1avCxb__Vuw1?QUkc3Ag?w5bx8M3Vgv__BU0d03ny5QSF0Qy8QK0jjGDz0q3OUid0@k8k0VI020er5M04yM?w18S__@nV0c0aE0403h7__@n?10KhT__Vvx0M2G<I010197N_L@nYRd1Gig0w5bT6Q3VU0c4aLRXRGz?R_m4M20Qxg0wdbxgMahg020kKX@_Vuw@_YRV0J9Gu3VDJ9wqHPO0Qy8QG1QQ_bz0q3Ow1zAYK530V50v42r0fN7AMbYwII?80iBMw3CNf__VvA0M0GMfL_du0njqA1i8ziUMJeGu41Ef80506roM01CSc?EJz01ubcMk0J0k?b2BM0ihUwc5Gw48wdbwgM6hV4c0KukD0fDk_L@nUkc1Au034WE2081iZfX_B@h3gbDk0w2QUyt0@uc35WHwgMah0gy0QKh30bD8_L@nUkc2Au035aE2081iWfX_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRw>b?g0ehG_X_BOg0w5aY__YnZNJ0@u0.2HPkQ6F_nLmGc03nZrx0MeG<I03w197AgM2VW_X_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRKz@_Vs0,VLLX_B@430aE>2M0c03Apb@_VvT6Q3V9020kLdjgqCx__YnU0cwaBYc0f4F0M1k9x?Qoc0wdb4q6eUVgc3GCcg0940icgqnM03WSb__Rhv?nHGg40l2hEpjyz102h04346BY?@I90g1k8Sxzeak80940gccqLM02WS8?5gxq6kU04.6K0382H?R_m1g20QK___NvZuX2F_gc0Avdj0qDP0M2GZlI2Gvtz0WDXsMmF_0c1Gw?g3DydM3V7Xg0sk4a05hw1A0V?E0du8?f11g0Khgd12Ks0503k3?2M<I3U404ZZ3c8ZD0g0jNY8MzQwg02h8k~|0HRjg0Kho0F2@k0h0bgz0c3iUec1Ag80w58x083iUPY0@kD@_Vsv?1Nrg?le3_g7D03w0T4M?I7c21p7w0NeGUgc2Al3@_VvT0M0GM1?de4?d0xU4vV802wQzk0gfAZ_L@n@Mc0GC0h0bgT081i@mI4GgQ?1jw0NeG0g?I24w1p4E_L@nZgc0GE0i0bgw0a3icfX_B_I30aG03M2Q5M20kLBH1aCPp8jikUiMYDESwdajDdfOUMclGK036WHS?3M6>A280Ed8x083iRA8bAk3@_VsowMyh@gc0GBd@@v8k081i6y30YI020bj32AbV0Mk0Je0352Hy0NCGUgcrGC?fZpy0NCbZ0c0aK436WEw540U4M0jODd@6FI_?bHwv__lec35qHw0NKG8w2wQy40wd8D_L@n@gc0GE3Z_Xnw0NmGd_X_B_o302Hw0NKG5wc0dvvZ_Vsn1g0Qn>J9g30bDwdQ3VU0A0J1c?fDw0NoG@mJ4GvdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw02wdbn_v@n0M?A1Y0uv9zI1mhoN2oCIca0LDi__YnUfT_BNs503gi_L@n?10Kjo0w5bD_v@nUgc0Gw>b?U0qhK_T_B_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_mU0clGInZ_Vvn__YnUg?Q27wh_Aw0a3idM20kzk0gfDe_v@n@Mc0GE030bjVqMiFD___5M02wdaM_v@n0w?A1Y0uv92w0yh0g?A22M5p4048aqo0E2@mX__Nvw0NmGHLT_BZv__Nvw0NeG0g?I24w1p6J_v@nZgc0GE020bgw0a3iJvT_B_I30aE0_v@RU0clGG7Z_Vs>2Mdw20kw201F69_v@nP___5_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_m<I3o0w580g0mhvfT_BYb__Nva_v@n?10Kjo0w5av_v@nUwc0GK434WE>2M>6AnbZ_VuU__Yn_nKSGvQ3097x0M6hYRc1Gvkj0fCP_v@n5010@vk30aE1?2M8k07Au035aGB_v@n?E0de035aE1?2M8o07Aq3Z_VvP0M0GE0k0de035aE1?2M8k08ApHZ_VvP0M0GE0E0de035aE1?2M8g09ApjZ_VvP0M0G80A0du13gbAv301NX1A0l60j05gv201N0h40la06gfA1?2M8g05Ag80g3Bv?1N8020CGdAxdby8M6hgUiMYK4j0p63DdfO_Qs0Kkd@@vbz9M3VPvX_BM0403nA9Q3V0w?Ied7gbB2w0Gh0gG0QK130p55_v@nU4c1AmLZ_Vsy>kU4d0KhYc077c301kE0w0l1Y80741301kE0p0@g4?b0x?mh0w10elY?74w082qESi4QK8z0p53xb3O0g20QEesQ_93vLDOUOs0@qX@_Vsw3?QcM20kK035qES_v@nZhd0@u034OHPkQ6F_nLaGc03nZrwgQ2VUgclGLfZ_VvP0M0GU0clGyLZ_VvR4Q3VU0cjaLdjgqDZuYGEM0dvRK435aE>2McM20kw302p45_v@nWv__5@13gbAv301NP1?l20d05gv201NEgs0la06gfA1?2M8g05Ag80g3Bv?1N8020CK4z0p42083i_QI0Koj@_Vvw@LYRUQJ0Kg8?b12o0Gh0gi0QK130p7Z_f@nU4c1AifZ_Vvq__YnEd90Gg40g3C20A0V0gk0dg>b<mhoxM0dadAxdby8M6hgUiMYw40wda3DdfOgTXVYKcD0fBH_L@nMfv_ducDgfDAgM6hU0c4Gw46wd82?2MgA0aAugv0fDy_f@nUhZ0@u035aE2081i0LT_BXT__Ns>2M>5Aqn__Ns>2McM20kw301V76_f@nGL__5M>b<mhvv__5M>b<mhOf__5ObP_Pjr__YnUOt0@g8?b12g0Gh0gq0QK130p77_f@nU4c1AuTY_VuA__YnE9p0Gg40g3Cy040Vggs0d4bJ_Pizp8jiUyc1Ake4Ifbx4M6hwVPjYKkv0fB3vLDO_Qs0KucD0fAR_L@n0f7_dugDgfDwgM6hUQt0Kg4awd82?2MgE0aAqTY_Vvw7Q3VUkc1Ag80w5bd_f@nyf__5W3igaA1040Vww90eu4b03i2Y_YQUic1Ag80wdb_iM2V7_X_BQ3K_PnziQ2VV4c1Au0.aE1183i0w?I49w2F7A7M3VBLP_B@4vgfDw0NiG0w20kHrY_VtN__Yn<I3c0w580g0ChvvP_BS7__Ns>2McM20kw20295U_f@nnf__5M>b<mhMLz_du8?f11g0Khgd12Ks0503k3?2M<I3U404ZZ3c8ZD0g0jNY8MzQwg02h8k~|0HRkg0Khw0F2@g3C_Xk?E3iiLP_BM8?90v07DOgE08Ag4?90wI1mh0122CE0a0LAC__Yn<I>1p4yZfYRUw?Y4502V50Q4aVEfT_dgc?b<2Me0g0jTscMzSm101f6gz2fi1?94xg12h8hYUjzg7fSYVxXpe8pOTjzgsd6W07zxeB0o_rM2sJQUk73hKANUUjFg6fSZPDHtet1UQrF8ue4Wk1zZLkFWTjBgud6Wh7zxeB0o_rP6uJQUQ7zhKA1UUjFg6fSYgDHte51UQrEsue4Wk1zZLVVOTjLgsd6Wl7zxeB0o_rXmuJQWQ7zhK50i1f1Y?uKx@_Zkmd02Lr___Nvy?3Mgk0bAk3ggHBwZ_YR0M?I<b0@101fvgP2fpM404Yv2c8Z84?Ai50497x7PVe@ws_r_@7L4UxDbReexMWrA0vfAVq1PZL09OZjxEseCV67PVemws_rYqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrBIvfAVq1PZLuV@ZjDEveCUq184Y7M01WW7X_Rid__YnU>I03Mh_DZuX@F8g20kLQ3094u_f@nU>I03Eh_Ax081i6LP_B@>b?S4vV8g20kxrY_Vvw?2M0dN7@i40w58i_f@n?20kLRXMqz?R_mfOc3RvRXLWDZ0M2h_nL1GbYz0Zn?R_mpSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc:6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp:Br6NA2w>2Q[sC8]1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD{1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V;7hFrmlMey1Opm5A86lOsCZOey0BsM>6tBt4dglnhFrmk]1QqmRBs5ZCrDoNog:t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw:t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE}t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:2kMcjpIr7w09j0Uu:Bc3xUbikMcjpIr7w;lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng]4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI;6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U]`0Et6BJpn1vq65Pq20D9O0D9OAI{0w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU{5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt:13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw<19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI;20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?`0Et6BJpn1voT9zcP8w9Osw9OsFb{w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt:13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw]4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI<lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU{4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw:imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw]7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng:t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng<1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt;6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ]4<2;M>223KeQwwXzJ88eUXi23KeQ16McXn;E;Wv__t<33F__@8<reD__VM>30Wv__N<e3F___o<VeH__@M<IXv__o04?a3J__ZQ0g?Ef7__OM2>A@f__p08}g{5Wkw04u1U16MMv01;o<xez__P{4<2M>2wWf__f{A<g<czE__Zg;44JggUwDgiu0Qaj0AXuTtce044J<4<6w>3QWf__2{g<v;3F__Y40g]7<2g<YeD__Qw2<ggXw0FQIDyJ4B2CjaA6n9CHkQQbngJXt3w113K02AOGkapsCDiOuaTDngJjjgtXt3w113K02DiOuaQmjaFgFBOp12Jt2Rdd1TJQe044bhMHngJjjgtXt3w112QzngJjj<4;g1?34W___t[2Q<604?2jI__Y01<44ew0at89UvgFcuB1R4BhOm6VsqC1Cr5FMl0BkaCxup644bj9EnChxR2JHphtXtSZPnSdnmQZge044bkZHphJXtSZPnSdnmQZge044ew0aj7FgtBhOm6VsqC1Cp69EnCNqs5pQwDxZ3StF9Cxup647pSAGp69EngZDqkpAoCxt1SJB6TJTrTdvoRtrjR0U0ggW?FcuB1Sl79orBNGo6pImD1mt89Uvd<d01?1IX___x0o>113G01Dhiu4Qij4FghBh02lwHuTtnjR0U0ggJa2JXtRtfk3w112M0s<208?bzR__Zk;4ce49Q2Dw5hTJQe/////////////////////////////////////////////////////////////////////////////!!!!!!!!!!!!!!!!!!!+0i}H14]3g_g4]4[tw4}c[60f}3g}2U8}1A[MfQ1]r{w[6w}38_g4:1M[2[3R_LZL;f01}1g}1o1g}o[a08}a[9o1}2M[o{c[WfY1]2[2w2}5{7[1s[e0Q}7[6w7}2[3g1g}A[6[3@__ZL;3w7}____rM;1[f3__SY;Xwo]3V__ZL;3k!!!#?3o_g4!!!!)80f}w0Y]203M]80f}w0Y]203M]80f}w0Y]203M]80f}w0Y]203M]80f}w0Y]203M]80f}w0Y]203M]80f}w0Y]203M]80f}w0Y)7wx}I28]1U8g]dwy}m2g}w8M]6wz}A2c]3o8M)u24}g9}7wx}e2g]1U8g]80A}Q2g]1U8g]fwA}g2k!u24]1U9g]7wx}E2k]3M9g]6wz!7wx}g2o]1U8g]6wC}I2o]1U8g]fwC}i2s]1U8g)g28]3w6g}4[M?2:2w9M)428]3w6g}4[4,:309M)U24]3w6g}4[s,:3w9M)Q24]3w6g}4[I,}a(hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F<2<1]g?hQ4A0jdxcg0w4g]3gh}2<1]g?hQ4A0jdxcg1w3M]70f}2<1]g?hQ4A0jdxcg2U8}cgw}2<1]g?hQ4A0jdxcg104g}wi}2<1]g?hQ4A0jdxcg2U8}bww}2<1]g?hQ4A0jdxcg2U8}bww}2<1]g?hQ4A0jdxcg1M3M]7Mf}2<1]g?hQ4A0jdxcg348}d0w!-c?g380g%c?w3M0g%c?M0E0w%c0101o1g%c01g3K1w%c01w0U1M%c01M1E1M%c02?U3g%c02g1w3M%c02w203M%c02M0w4g%c0302U8$c03g3g8$c03w10a$c03M2wa$c04030_g4^c04g38_g4^c04w3g_g4^c04M3o_g4^c0502o_M4^c05g3E_M4^c05w3>8^c05M3?w8^c06!c06g3E1w8)g<g0YvY&2]2M0w4g)2M<802M0w4g]1g[2]2g1w3M)2]302U8(6;g0YvY&2]2g1M3M)2]30348(7M<g0YvY&2]2M104g)aM<802M104g)bg<802M1M4g)g]4w3g_g4-gM<802M2I4g)mg<405M3?w8]4[g]4g38_g4-pg<404g38_g4-z;802M?4w)g]4030_g4-C;404030_g4-g]3M2Qa(g]5M3?w8^g0YvY&2]2M0w4w)JM<802M0w4w}g1}g]3g3g8(Nw<802M0A4M]4w2}Rw<802M1I5g]7g[Wg<802M3w5g[4}4M4>802M3w6g]8g6}g]3g0wa(g]5M3g0w8-8g4>405M3g0w8]g[fg4>405M3w0w8}4}jM4>405M3w1w8]w[g]5w3>8-o04>405w3>8:5{rM4>405w0g0g8:5w[vM4>405w1M0g8:3w[zM4>405w2M0g8:5{g]3M0oag)Dw4>g0YvY&g]3M34aw)G04>403M34aw%g0YvY&Jw4>80302U8(L04>404w3g_g4-Og4>40Yv_o_g4-Qw4;3w10a(Vg4>405w3?w8-Yg4>40Yv@o_M4-1M8>802g1w3M)2]2w203M)3g8?2#ag8?1#dM8?28$kg8?18$qw8?1405w0M0w8:3{vg8?1802M1A8}5g[Ag8?18$Fw8?18$Kw8?18$P08?18$Tg8?1#UM8?18$YM8?1405w>w8:3{1gc?1#3gc?14$7wc?18$cwc?2#ggc?18$kgc?1#nMc?18$rMc?18$x0c?18$Bwc?18$FMc?1#Kgc?1405w1w0w8:3{P0c?2#G08?18$Vwc?18#wg?1#3wg?1405w2g0w8:3{80g?18#6dOt6AKrM0Au01zomNInTtBomJvpCU0oT9QryVL06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP02hA05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0pSlQgR1lt6BJplZJomBK07hFrmlMnSdOoPcOnSxTnS5Org1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQonlUtC5Ig4tcik93nP8Kcjs0sSVMsCBKt6p0hQN9gAdvcyUNdM1CoSNLsSl0hQN9gAdvcyUNdM1CrT1BrA17j4B2gRYObz4T07xCsClB071Lr6N0hQN9gAdvcyUNdM1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQp6BKg4tcik93nP8Kcjs0sThOpn9OrT90hQN9gAdvcyUNdM1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0pClOsCZOg4tcik93nP8Kcjs?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?KpSZQbD1It?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!!]6M<s<2[cw1}O04}A*1*2U>3S__ZL0w}3M0g]f01}e{3{w*U<2M<8[a08}E0w]303}1;c<8[1w[g;c<2[5w5}m0k]2m0g(g(4w>3___ZL0w}3K1w]eU6}h{3{8{w}1l<_L__rM8[e0s}U1M]3{1;4<8*p;g<2[6w7}q0s]3g1g}c[2{o[6U<4<gw[U3g]3wd}a08}3<5g<w[6[1U;g<o[o0Y]1w3M]1M*4*sM<4<6[80f}w0Y]2g0g)4*7U<1<1w[w4g]20h}C0Y)2*24;g<o[K2}2U8}1w*4*yw<4<2[d0w}Q2}1M1M)4*98<1;w}10a}40E}n&g(2w;g<8[E2w]2wa}2w2(8*Gw<U<3[c3Z0g:MfQ}8*2{8[bo<f;M}38_g4:czZ}2&w[2[32;g<c[QfQ1:3g_g}w*8*PM<o<3[dzZ0g:SfQ]3?g}g[2{g[dw<1;M}2o_M4:9z_}k&w[2[3t;g<c[WfY1:3E_M]d&8{w[Vw<4<3[c>w:M?1[w)4*eM<8;M}3?w8:c020g:a0g)1*3N;g>3*3?w4:2U*1{4[@w<s=ew60w:Y081]w0g)1&4<2$1040g:k0E}r<jM<w[6{9;M%1w3w4:384(1*4g<c$Ax81]g0g(g)'
;;

'armv7')
b64=$'34790 17396\nmd5sum:4e82f3a8d2084fb74c802cb380bb5143\nsha256sum:f954f71519588fd14d0ce6bdbeaf23911d4cc498e5bf097778c3d8f252e06f3f\nq81c8UMgwEe6U7kXzEz2wUg4\n0t6BJpn1vq65Pq5ZPt79RoTg\n000000000000000\n01fzEP2wUggM8N\n00000000000000\n0jUM4wwKazca3x\n0jUWcMEe41c2cg\n0000000000000\n00000000000\n0000000000\n04@ezca3x\n000000000\n00000000\n0000000\n000000\n00000\n0P2fU\n0000\n000\n05M\n01s\n0g\n04\n01\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n032gVg?k@cy:~>Kc1c2cg,^,^,^,^,^,^,%\034vQlchw41,*0c0a0.-3g:2kfM]g.jg08?602w07?r0>!]1E8:q2]k=40,:1gL:kbM4052Y106M20.U1w0.w=g02]82Y?20L,0wbM40U]e[6]1[g:3Q]Z]fg]A]9[g]4]kulQp!*.w:1]1iVnhA52Y0.gL,0kbM40X]eM]4[g]g]k[M:4telg3qbOJzNZi6BrAqy80mUBhMAVd2ywc]s[g]k]V3.w[1M]v]N1LJmGG3zf7bTQtTEBsWDa4Qqnk!*1g8-M09{28c>=c0503S!i]hw$8w:1!2]24!g]rM$4w:aM$18:3a!i]lg$4w:d4$1]2W!i]Iw$4]bY$18:3Z!i]EM$4w]4$2]35!i]tw$4]dU$14:2i!i]rg$4w:ds$18:3A!g]oM$4w:2M$2[m,&g]hM4?3wN,0o]4g0k?81?3k5M?A]1802M1q,?8341.w]h.g0d>?50N,0o]4g0k02810.Ecg406]1405:nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A07dQong0pClOsCZO07xCsClB06pzr6ZPpg1Pt6hFrw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ07hFrmlMnSpKtz5xnTdQsDlzt.QqmRBs5ZzsCcPcBZPt79RoTg`0r6ByoOVPrOUS>tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg(w020>0,02?8?w030>?w.?8?w020>.0.?8?w02?80,020>0,.0>0,.0>0,0306M1:g-behBwo:g0tw40.]2nApo6:30841:g]56BF3g:w2c,=1gL,0n]62Y1<]sbM4;:8wM,0n]z3.<:2gc>;:9gM,0n]C3.<:2sc>;:a0M,0n]F3.<:2Ec>;:b0M,0n]J3.<:2Uc>;:bMM,0n]M3.<:34c>;:cwM,0n]P3.<:3gc>;:dgM,0n]T3.<:3wc>;:egM,0n]W3.<:3Ic>;:f0M,0n]@3.<:3Yc>;[N,0n]1341<]8cg4;]MN,0n]4341<]kcg4;:1wN,0n]8341<]Acg4;:2MN,0n]c341<]Ucg4;:3MN,0n]h341<:18cg4;:50N,0n]l341<:1scg4;:60N,0n]q341<:1Icg4;:7gN,0n]u341<:1Ac>05gg?6wM,0l1g?r3..ks0.Mc>05hU?7gM,0l4g?u3..kk0.Yc>05hY?80M,0l6w?x3..kw:cc>05wc0.0M,0m1:53..o6:oc>05ws0.MM,0m2:83..o9:Ac>05wE?2wM,0m2M?b3..oc:Mc>05wQ?3gM,0m3w?e3..of:Yc>05x:40M,0m4g?h3..oi0.8c>05xc0>MM,0m5g?k3..om0.kc>05xs?5wM,0m6:n3..op0.wc>05xI:x0buB8?3H282ZW0jwbuk4U9_B3K2fU0zMLKng9M4?cqfUxbazebgZXPB0cqfUxbazeb8ZXPB0cqfUxbazeb0ZXPB0cqfUxbazeaUZXPB0cqfUxbazeaMZXPB0cqfUxbazeaEZXPB0cqfUxbazeawZXPB0cqfUxbazeaoZXPB0cqfUxbazeagZXPB0cqfUxbazea8ZXPB0cqfUxbazea0ZXPB0cqfUxbaze9UZXPB0cqfUxbaze9MZXPB0cqfUxbaze9EZXPB0cqfUxbaze9wZXPB0cqfUxbaze9oZXPB0cqfUxbaze9gZXPB0cqfUxbaze98ZXPB0cqfUxbaze90ZXPB0cqfUxbaze8UZXPB0cqfUxbaze8MZXPB0cqfUxbaze8EZXPB[1gMD@kk89_B}08wA@s?5bz7LYL0tP__@GM9w40t]2M0D@kIc9_Bb22vVg?z@03c8_w0.jUg8wz@0u_OY1632vVgcMAKs?5fz7LYL0hf_b@48a>.2w107MC,1E]e02vVjwMD@k?8_w}?Mg@2z7W3xa22vVkchwu314b3x0y2fU1X_bM4oc9_B0P2iVM?k@cu_OY14_YLUswD,349M40b2o108]1cc9_Bj22vVgcMz@?cdfB0y2fU:k@cu_OYh440JWjgMD@k3c9bD0.jUM8:EE09_B?2fU8b__@La___H0i2wUNwMD@k3c8_w0233Vh20LuxU9M40Y2k106g:3E9>0e2s10d3__@E[440JWu3wD@keU8_w0c2uVg?nech:a0.iUM30Ue4gwbQ8N02vVg8wwu:8_w0h11Uw4wgK81cf7B330zU7cMX@o3co3w132jVg80ku4IN2fwZ___6wM0Ue4gwbTE84c8UXxdjKeIca3x,0sUMgM8N.#.#.#.#.#.#..fz0s2cUGcMEe44c2cg,NsUMgMHKnz__Yq0s2wUN0MD@k3c8_w0c23VsH__@Ec9M40W2o103gC,3MjOTF0M1gUZjgju9t?3a,1gUM1MEdc7Aa3h1w?SwhMAuk0cdvB0.jUM1ME0c3053z092w4RQ:F8w8Ty0w2wUMwgEe4P___H0.gUPE0.Hj7gjzg284UQMMDuly447zMQ@wUp4jM@1809TBgQdAU0Ywgef4rW3xA4bCU8xgzu854a3x?3wUQP__@I0k53yiM?6A0i1eec89TBye2tVgYggef2fW3xDy7zU930Dumk09TBD27zU?wAK30fWfw122iU0cMFK:5vzcg?2yOND@k8E8Ty2X2fUf0wPu5>a3z2O2wUgE0Ee4G___H1i2wUgEgEe470a3x8f__WM?muc9:a2O2wUk,Eec80a3x>2dVghwzuku___H1i2wUgwgEe490a3x5f__WMk0Ee7kQ8TyY8@ZW8xgzu854a3x?2wUNP__@I?53z8M?6A0O1eecg9TBy02tVgYMgef4rW3xA4fCU9,Dumk89TBAkfCU090Be32rWrwLL__WDM0D@k?8_wRvX_WM5gEefB___Gr02vVg?z@3j_L_H1g2wUtjgzubMzXTE292hVg0MSuk?5fz092w0VP__@HN_L_H?2gVuf@_@I>a3xd02vVg?z@31_L_HWL__WKD@_@I?93BS_X_WM,Ee4o09_B?2fUbD@_@Ly___G50Q:wc0.o3:Z0I?bwb?3MjOTF033gVk13D@lQQ4Tybg1jUMh0z@?ka3x212dVgMwzukb:a91evVgk0Ee4148_wG_X_WM20keaW:a,ywUXr@_@I0o53yHM?2w2wEed2?3G0j3gVg?k@fM__YqX1avVg4gz@?897B0.iUO40.Ew0MzzK0ReUW8MEe41.bz030z4>)030z4>)030z4>)030z4>)030z4>)030z4>)030z4>>@c188byEP2wUg0M8N.35bz132xVuf__NE18a3zo3avVgcMz@?88fBm3avVgcMz@>99fB0.iUPA:E1Ea3z022wUN?zu8a4a3x1220Vh0wzumQEsTxufX_WM?kecP?3qJz7tUg4>@cM:a53avVg48Eec3c9jD082jVn7@_@I0o53ye:2yl30KfAn0Dz072wU_2hD@nMIp_B2p2fU0KMz@0yh4zzYBJcUMiwzuk8ca3x0iywUM4gEec60a3xo_X_WM2wke8H:a13ipVgs0Ee4?5fz1x2wUgIME>a8a3x1bi91jf_b@6PMg3z072wUg4ghK8aU87w0j3NVgd09e>da3xD3kzU9hcxu0e057x1l23Ufv__NHz___Gr26vVg8wz@>98fBMv__WC1hD@ko48Ty1l2fU0k0Ee5f_L_H0a1gUyY:EQcp_B,ywUMcMBes0w9fBevX_WM1wke81Ea0jNL__6yw1D@k?8_w7LX_WNI?eE80a3x1a2tVif@_@I0A53y1w2wUgI0.EB_L_H0.qUNs:E8c9TB0.jUM1MwNkcc9TB0.jU_10MN490a3xtd2dUL2fLuwp_L_H0.qUMw:EN_L_H?2gVif@_@I>a3xK02vVg?z@._L_H0p2wU_3__@E80a3xbvX_W_f__@E80a3xaLX_W@j__@Gg49_B1g2wUg4gz@3X_v_H081gUwo:E12a3z1LX_WM1wkeak__Yq202wUhT@_@La___Go02vVg?z@3F_v_HVL__Wx7@_@I?93B0_X_WM0wEe5409_B1h2wUg?z@3w_v_HTv__WCwy,2U2M?C2c1?wz,3Y8w40u]8wy,1E@___VfH__Z09?3I2g?A0A?fw8?3c2:R0w?f11buBEQ4Ty212dUL_Z_@LE4V_B062gVg1gEe4148_w1w2wUs3Z_@I?53zgM?2IMjD@k60a3x0h2fUbHZ_@I,53yaM?2HwjD@k60a3x0h2fUbjZ_@I,53yhg?2GgjD@k60a3x0h2fUaXZ_@I,53yew?6wwMDuk305fzLw?OEo:E205fzuM?6wg0Buk0cd3B0.jUSM3DMk?8Y?32wUZ9XD@Qg88Ty312dUwhXzuQcc8TBXfX_WM?kecr:qQ27dUv0wPu4Y8V_B662dUB,Eec60a3x332tVg8wz@32_v_H1w2wUqXZ_@Il?3G232tVgc0k@dq?3adw?2w80k@dh:a?evVg?z@2SfU_yQ233Ug,EefM8sTx422dUJ3@_@I?53zCg?2w50Eec3?3G1h2wUgw0Dul2_L_H>2wUgk0Ee69_v_H102wUmzgzubMwrTEI0avVgogEe4?8_ws_T_W@___@E8c9TB0M1jUU8?cFA:a0w1jUPU0.E409nB033gVg?k@dY0FY5?2f:wEecg48Ty422dVq_@_@I?53zTL__6C0yD@koo8Ty812wUMo0Ee4gc9TB0y2fU8vZ_@I60a3xs_T_WZH__@G109nF033gVg0wR@k?5fz9M?6w?kKey:a80avVg?z@1WuV_J.2wUN0wzu84uUTJBvX_WM20keb4__Yq17KtXvMxD@koo8Tyc12wUMo0Ee40uUTJ0y2fU6PZ_@I88a3x1x2wUgs0Ee5y_v_HLv__Wwg0Buk0cd3B0.jUYg1DMk?8Y0Gv__WHM1D@k?8_wcvT_WWT__@GM0p_B?2fU8n__@GE0p_B?2fUcb__@E?5bzDv__2Jz__@G109nF033gVg0wR@k?5fzig?2w?kKdU__Ya032wUQJXD@Qg88Ty312dUwhXzuQcc8TBpvX_WM20keak__Yq17KtXl0xD@koo8Ty1w2wUl,Eec0uUTJ332tVg8wz@0X_v_H222wUgogEe470a3xcvT_WUP__@G109nF033gVg0wR@k?5fz9w?2w?kKeq__Ya022wUN,zu8g88TBiLX_WM20ke9V__YqX22vVhxwzu860a3x812wUN0MDuk288_w8LT_WMwwEe464a3x1M2wUhzZ_@JP___GM02vVg?z@3J_f_Hqv__WHg0D@k?8_wWvP_WSn__@Hg8sTxY23dUq0wD@koo8Tyc12wUMo0Ee4288_w3vT_WMo0Ee7V_f_Hof__Ww?kKed:au02vVg?z@3l___G0.iURw:FE09_B?2fUbb__@E0Y23z9icyxeisYIL02:I0w?cg8?3o2:K0s?bg80.41M]w?bw6?3.M?l0o0>M7?3M1g?w0o?dg5?381g?C0o?2M6?381g?z0k?d05?2.:r,?egr,1g6M40h1I1.zQ__YA6M40A1E108gq,1oY___p1E10d0p,346g40Cfb__Pw07@k?8_w|0j0z4>ckKc4ca3BU___6w4wEef8c1_B}?ww@ngc1_B},AA@k?5bzT20v1g8wzM>98c50f__WKw07@k?8_w|0j0z4>ckKc4ca3BU___6w4wEedUch_B}?ww@m0ch_B},AA@k?5bzz24v1g8wzM>98c5QfX_WFw17@k?8_w|0j0z4>ckKc4ca3BU___6w4wEecEcx_B}?ww@kMcx_B},AA@k?5bzf28v1g8wzM>98c5EfX_Wx10buBMg9_Bs32vVgh0z@03c9jD2d1dUw4gEec30a3x132dVkPY_@Jkc9_B0h2wUMcMBes30a3x132dVkrY_@J0c9_B0h2wUMcMBes30a3x132dVk3Y_@IIc9_B0h2wUMcMBes30a3x132dVjHY_@I?a3z2d2dUx20Luwo6>0x]7M:1I]s[x0buA8wbTEfg:4[b]g]1]1[9w:4[R]g[c:1[1w:4[k]g[U:1[3g:4[B]g]18:1[a]4[2]g]1w:1[2g:4[a]g!pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP0.DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc0pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA[2lIr6ga]bg:79y0.QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA[t6BJpn0W879Bomgwpn9OrT8W82lP]pSlQgR1lt6BJpg?t6BJpn1vpCVScm40t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw?7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD02kMcjpIr7w09j0Uu{Bc3xUbikMcjpIr7w[lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng0,SZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM[imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb{w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ,SZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU[imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb{w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM]w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt>dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK0.9py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb]5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt0.ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp.xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK0.QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng]1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt[6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0fg:4[b]g]1]1[9w:4[R]g[c:1[1w:4[k]g[U:1[3g:4[B]g]18:1[a]4[2]g]1w:1[2g:4[a]g//////////!!!!!!!!!!!!!!!:60a?3U2g?72Y10>:1I,?3]1g8:d]p1w0.A]kbM406M]g]q]62Y1.M]4]ZvX_rNw1:5]n0c:o:1c,?2w:9o1:b]4[c[c>?w:b[k]4g:1s:1A1M0>g:7g5:i]Y>0.c]8]_L__rPg5?3___ZL,:f3__S_O1:@L__rPk!!!*082Y1*080w?208:w2:80w?208:w2:80w?208:w2:80w?208:w2:80w?208:w2:80w?208:w2:80w?208:w2:80w!!![9wp?2U6w?C1A?dMq:E7:91I?ags0.I6M?I1I=2o6g?V1I?9wp:87:C1A?50s?2w7:C1A?cws:c7g=9wp0.47g?C1A?6wt?2Q7g?F1M=2o6g0.1U?9wp:I7w?t1U?9wp?2U7w0.1Y?9wp+k1E:wh:1]y3.05wv+91E:wh:1]I3.07gv+@1A:wh:1]T3.09gv+X1A:wh:1]@3.0bgv+hQd3ey0EhQVlai0NcyUObz4wcz0Ocz4Ncz4wa59Bp218ongwcj8KcyUNbjgF>4M]omlxoCA?io]5dOR1?oa1Q48,A22wgi11g15g4n0Nw16g4q0xM18w402[w{g?hQ4A0jdxcg102g?p0A:w]8{40>t19>Poj4050w0.M8:8]2{10.7gig1cS4N06go0.E6:2[w{g?hQ4A0jdxcg1A2g?p0E:w]8{40>t19>Poj40p1w?6go:8]2{10.7gig1cS4N06go0.A6:2[w{g?hQ4A0jdxcg0s2:80w:w]8{40>t19>Poj40q1w?6Mo!$fg(M.=o,+c?w{j>+3?c{5M3-M>{3O1-c.g{d0k+3?o{7g5-M07{1A1M+c02=50w+3?A{208-M0a{102g+c02M{p1w+3?M{6Mo-M0d{1A8-c03w{52Y1=3?Y{1wL,=M,=sbM4=c>g{82Y1=3.8+M,=M0j{28c>=c05=w341=3.k!:M0m!:c;{z3k1=3.w0,$103N_Mw:102g(2M0b]g0A+2?I06]5M9*b?w]k2*2g08]p1w*M06M$103N_Mw]s2*2g08]q1w*M08w$103N_Nw:1I6*3g0K]r1w+1?Q02]6g9*b>]1A2g+802M0o]C0A*I02]aw9*b>8:2E2g+802M0o]W0A*I06]1ML,-h?w:3U2g(2M1l]@0A+2?I06]4Ma*b06I:20cg40,]405g0o]62Y1-1?tM:1wL,=g,?w:1w2w(2M2u]o0E+2?I06]1gL,-f0aE]kbM4=403M0o]w341-1k!0.03N_Mw:1E2w(2M39]q0E?fw]2?I06]5gb*b.w:3Y6*3g08]o0I*I0S]60b:s0w:w0b.w:1E3g(2M08]v0Q*I0W]7Md?2c0M:w0b.w:3c4*2M08]214*I>w4:wh?3c1w:w0b.w[5g(2M08]B1k*I06]50o*b.w:24cg4-5g0w,?x3410,]1.k0f>?8wN,0.]g0l>U1?28dg4.[405g0o]y3.-1g0nM4?8wM,0E[g0k06U1?2Mc>0b[405.@,?T3..M]1.g0zw4?fwM,0E[g0k09Q1$g0YvYo]R1Y*Q0bw:dgv-g0d.w:1A8*3w2D,?p2-1?U!0.03N_Xk10.A6-80302X,?72Y1=1.40O>?20L,=g3N_Z41?20cg4=40503t,:3.=10f7_YM40.g8-w09?w]w2*2w0o]c0w*E02]3g8*a0fA1&18]a0w&y]8M8&8]3Y2&1]1F0M&i]jg8&4w:5Q2&18:1K0w&i]xM8?3wN,0o]4g0k09E2?3k5M?A]1802M2K0w&g]J08&4w:cc2:wcg406]140503l0w&g]Tg8&4w:eQ2&18:3Y0w&i]3Mc&8]1U3&18]K0M&g]f0c&4g:4M3&18:1D0M&i]uwc&4w:8I3&1]2t0M?k341.w]h.g0I0c&4w:cg3&2]3u0M&g]Wwc?6wN,0o]4g0k0.zsDhFbCY09640oS5Ir5ZTpm5HnSpK02hA06dOt6UKrM1zsDhypmtFrBcKrM1xr6NvqmRMr6BBp5ZCoCBQsM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc.QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt.Pt79zrn10hQN9gAdvcyUQ05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kd.vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1CrT1BrA17j4B2gRYObzg0pClOsCZOg4tcik93nP8Kd.zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0s6ZIr417j4B2gRYObzg`0u6Rxr6NLoM1CsClxp417j4B2gRYObzg0s7lQsQ17j4B2gRYObzg0sThOpn9OrT90hQN9gAdvcyUQ05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB07dQp6BKg4tcik93nP8Kd.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kd.PrD1OqmVQpA17j4B2gRYObzg0pCdIrTdBg4tcik93nP8Kd.JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kd.vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ:KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIbChVrw0KsClIbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?Kp65Qog0KoDdP02VzrSRJpmVQ02V1kAQKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc!!!*r]1M]8:3Q]Z]2g!g-bw:fr__SY2]6>0.w1:Q[M-4]1]3w]b[w:4M10.c,0>08:g]3]1]1]1{M]8:1s0M?n0c?9o1$4-i]f___SY2]Ywg?f840.2[M-2[w:5k:3@__ZL0w:3g5:Q1g0,[g]1]1-1A]2g]8:1Q1g?t0k?f.:3(g]8]rg]A:12]p0s?6g7?2M[M:1c]4]2]7o]1]1w:1g8:k2:3!1-1N[g]o]w2:80w0.M1$g]4]v[4]6]g0A0>09:A3M&8-88]1]1w:6go0.A6:2!1-28[g]8:1I6:r1w?fw7$g-A[4]2]p2:6gw:4!4-9E]e[M:1gL,0kbM0.!1[g:2C]3M]c]obM4062Y:g!g]4]Iw]4]3]72Y1.ML:4!4-bY]6[M:20L,0wbM?U[g-1[w:38[g]c[c>?3:8w!g]4]Pg]4]3]y3.08wM?3U!4-dc]8[M:80N,20cg?3,&1-3o[g:3(w34?2U!4]1]Ug]c?7*aUN:N!1-f4]7-8MR,3wcg?U!1(1[w$M38?d07:q]nM]g]g]2g]c$90W?3Y0M&1-14]3$2cfw0.M4$g+'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'145982 72992\nmd5sum:31d253b8c534c570d8ef8fae06d8e3b1\nsha256sum:74ce95e44918c9eeb9a7e2bef352847080b4449de6281eadf952a5493b11ef15\n0GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0Mc3\n0000\n000\n00\n################################\n0epBmLDSplEhZ1wwd4\034vQlchw810g[?c05g01{1[20m0g:w.4?e?704?7?r?4>5#[y3g:28d[?g:g>o>8_g]zZ0g;2fQ1;2U1g:e09[01:2>1w.23Z]8fQ1:w_g4;e01]U04]8[g>4>O04:380g:cw1]9[A[g}kelQp0g.1Mcw:70O]s38]Y}3M}1}1hVnhA1w##<g}5bBt6g4>2fQ]8_g4:zZ0g;@08:3U0w]4}1>1g>3>hQVl0fYZcSekL4HJ7EFPD3DOcvsUslaS;c>s<g>o>gi0h02og0w;s>7M.cgrXlGGwUPNOZZ7tW9neFOxd6BR#[?c02g1w3M%c05g3.8+4>2#FM.1#hw.29w%lg.19w%Zw.19w%OM.19w%WM.1#Sg.19w%Jg.19w%Qg.1#rg.19w%Ng.14$Dw.19w$g.2#Yg.19w%vM.1#5w4?19w%oM.19w%3M4?19w%Tw.19w%_g.1#b>2#zg.19w%ug4?1#V>19w%g04?1405g0M0w8;3[pg4?19w2w30ag:8g}kM4?1405g.w8;3[bg4?1405g1w0w8;3[6M4?1405g2g0w8;3[05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U069FrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO05Zvs79FrDhCqmlBpj4Oe01Pt6hFrw1CrT1Brw1Urm5Ir6Zz071Lr6M0pD9Bomg0pClOsCZO07xCsClB07dQong0pCdIrTdB06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs01MtnhP06tBt4dglnhFrmlvsThOtmdQ07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01xp6hvoDlFr7hFrw1Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs[g01?8?w02?8?g02?c?g03?8?w01?g?g02?8?w02?4?g02?4?w01?4?g01?4[g0308k1.g}behBwo.g0zM4?1>2OApo6.309E1.g>BV6m1w.w2B0g]zZ0g;5w]2w4M:13Z0g;5w}M4M:1zZ0g;5w}o_g4;c.w;5w]2EaM:cw?w;5w]3wb]d.w;5w]2EaM:dw?w;5w}8bg:e.w;5w]28bw:ew?w;5w]1gbg:f.w;5w]2obg:fw?w;5w]30bg}10w;5w}8bw:1010w;5w]2EaM:1w10w;5w]10bw:2010w;5w]2EaM:2w10w;5w]1Ebw:3010w;5w]2EaM:3w10w;5w]2Mbw:4010w;5w[bM:4w10w;5w]2EaM:5010w;5w}EbM:5w10w;5w]1MbM:7010w;5w]2EaM:7w10w;5w]2EbM:8010w;5w]2EaM:8w10w;5w]3gbM:9010w;5w}wc]9w10w;5w]2obg:b010w;5w]2EaM:bw10w;5w]1Mc]c010w;5w]2EaM:cw10w;5w]2oc]d010w;5w]3wc]dw10w;5w]2EaM:e010w;5w}Ecg:ew10w;5w]1Ucg:f010w;5w]2EaM}20w;5w]1Mb}w20w;5w]3g7g:1w20w;5w]3.8;2020w;5w]3gcg:3020w;5w]10b]3w20w;5w]3g7g:4w20w;5w}g0g8;5020w;5w]3Mcg:6020w;5w}gb]6w20w;5w]3g7g:7w20w;5w]1M0g8;8020w;5w}gcw:9020w;5w[b]9w20w;5w]3g7g:aw20w;5w]2M0g8;b020w;5w}Mcw]z_0g;9w.1{013_0g;9w>c{1z_0g;9w.1w{23_0g;9w>k{2z_0g;9w>U{33_0g;9w.2{03z_0g;9w.1Y{43_0g;9w.1M{4z_0g;9w.1U{1.w;5g>g{1w?w;5g>k{2.w;5g>o{2w?w;5g>s{3.w;5g>w{3w?w;5g>A{4.w;5g>E{4w?w;5g>I{5.w;5g>M{5w?w;5g>Q{6.w;5g>Y{6w?w;5g.1{07.w;5g.14{7w?w;5g.18{8.w;5g.1c{8w?w;5g.1g{9.w;5g.1k{9w?w;5g.1o{a.w;5g.1s{aw?w;5g.1A{b.w;5g.1E{bw?w;5g.1I$6011@6y1wKCC0UBZ80i0jw*204MYw6Z2eao227Mg?7UAvYx@>608w0bE?2wbMM0_A6Z__Zb6011W7?8jwg?7EFwc8v2?w4U<6011@221wKCC0UBZ80i0jw*o047UC862Wqo3ynQw181e*1w0gvyMwobFFwe9vi04w4U*6011@121wKCC0UBZ80i0jw*o047Ug862Wqo3ynQw181e*1w0gvwEwobFFwe9vi04w4U*6011@921wKCC0UBZ80i0jw*o047Ue862Wqo3ynQw181e*1w0gvxUwobFFwe9vi04w4U*6011@by1wKCC0UBZ80i0jw*o047Ui862Wqo3ynQw181e*1w0gvwowobFFwe9vi04w4U*6011@521wKCC0UBZ80i0jw*o047Uc862Wqo3ynQw181e*1w0gvywwobFFwe9vi04w4U*6011@ay1wKCC0UBZ80i0jw*o047Uo862Wqo3ynQw181e*1w0gvy8wobFFwe9vi04w4U*6011@821wKCC0UBZ80i0jw*o047Um862Wqo3ynQw181e*1w0gvxMwobFFwe9vi04w4U*0w1cfa1Igzw.1w>oc23ozz0wO8V01wFv2?wAQ.1w4822Wg?b2Mw089dFw88v1.vzx_O7UFwe9vhw0gvwx181e6011W2?8jwg?7EFwc8v2?w4U?49w0w1cf41Igzw.1w>oc23ozz0wU8Uk223v7gux7NQ3EhYBg64v2?wAQ.1w6822Wg?b2Mw089dFw88v1.vzx_O7UFwe9vhw0gvwx181e6011W2?8jwg?7EFwc8v2?w4U.1w?12o080j3PgqQ8U>oc238EA.AI8022jao227Mg?7UUvYx@>60ww2bF.Fb1g0wA7__S8Y67VzebnZ_QIo047EZvX_iO?8jw1020V>o1.uz0wOapFwc8v2?w4U.1w>o.gC0204MYo6J2e23__QI.1w0w1cf51Hgzw.1wQ8cywg.63gwY8U.9b5g0wA4?2kIh022gqo3GnPU66FY__@4e>6>1w?12o04098Q@MAtlu58FvqwlanAkiypZ4?FwnwWanRUiOFZUfY0gLx88TQw06dU8020jLX_gzT@_M8Zobdael2P23Ag02oVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A.1wQ8cyAuj@_QI-49w0w1cf01GgzyC0wxY0M03b1.vxh_y7Uy0a1gg40wO@80m7XA061@Vw1EvKE0u7XA06tg0w0VeI?3@9?29bMw0DA.e0X.wenxbf7SM0E91Y?xeg80o3xUiOhZu4IXvlTW_QIo047E.3b7M1wA3U047Fk@cwfsgw03TM0e7EFpI8os_Tam4e?BV3M?fp98aDR0gwxxQzA8vnr@iDRw084U__Zwe7g@anRgi4FZ558EvnxbfnQB_fZb6011W>OO80o90o031W7?Euwf040Zq03xW7w?uA?3YIg49aot8NODPiakFZ53H6v1hiNDMkgIpY5eH6vc01wA7@_O8Zc051enw1op2w0s7XoaMFenxjgTRUiOlZg020e701gvBUiPVZZvL_iNw0guxM0k7F?2we7zXUTZUkQhZvvH_iNw0guw?3MIu04xwjw0wA5UWWp_uff5vT018p5?80UudJzvXnX_QIo047E?2we7zrp7ZUUUd_gvH_iNw0guxM0i61y05xWV01wuKo0q7HE071WXg78TSE0u7HI04xe1.uyC0MxY8020jw.6>1w?12o.U3I?20V0w1we7xbf7TM024Vu4IAvnxbeTTB@fZb6011W>OOc_E91o021e.o3xM0o7UWvH_iNw0guw.cI7062g6?8uBM0c7E3M10fmw0UuxU?7F__Zwe412iC5M0o7EQAAGvt8NiDQkeyBZ558Fvhh2anRUiPRZEvH_iNw0guw.cIwfW2gl7W_QIo047E0w1zW6nW_QIo047Eu1JAvfX_ozN0H6cUIvz_iNw0guy80m7HA061WVw1EuKE0u7H0g0wer018jyQ1OdZ4?1Wao327Mw081e_LZyf02IoPxV@fZb6011W04083Do__Zb>o.gC1M0m6g_LZyf7wPN7NEH6cUcvD_iNw0guxM0i61y05xWV01wuKo0q7HG07xWX018jwg?7EJ0szvqo327Mw081e4?AWnxbf7Q?2C9.9b4jZwA2M_LZb>o.gC21@vZb6011W080o@yl@vZb6011W7wrp7P@_S8Y8aNze33__QI[o05.204MYI6p2eao227Po_S7XUf@1@TwzCTPU_@7XMfY1@TwrvTNUaXNYOfYx@@z_EvIg?7UIvUx@.8UDj_OAV.9b4M0wA7@_U8YufLzvTyIx3yZ@fZb6011W7ArunPo18910g1wf8DU_QIo047EuhJZv504wA4o047U207x@w.3Iw0k7Xg071@Sw104w102e9.9bb3_wA>1wQ8d2wg.63gwO8V.abcM0wA3@_Q8Z_LY2fm2PizBgIMwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vhs4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A.1wQ8cyAg.63wxObF.FbcM1wA41020V?2we080anA1080UY01xef?8vBdZLZb6011W>OPs0o50Zw0xEg40an7g0o91>o2y08KA1060Y0g?eM?auItZ_Zb6011W7ArvnPM0E916011@0w1UvEw0k7Xg071@Oa4M3_OOO0Z?7wfykzTCfAD2BxV8fTuwU0fDCP0vty?10eTzb9DY10a0Y0g20e7zHETZFZvZb6011W7ArvTOA0891>oe27wKA?2MIF062gqo3ynQw04dXufLBvTzHF7Yx181e6011W040Wnf__NQV__Y_enwruDMs0891.Fb.foBUWWx_uf8FvtaVOn@g_U91gLzFuWo3anQ102y9u4cavg8023A204G9uf8FvtaVanRUiABZQHD9v@3_049UOOp_0g2wf040w3xUWWd_Ovj_iNw0guxV6TZYpf@2g7zb8T@RZvZb6011W>ONU6TZYueKzvN01wA1tZvZb6011W.62O40o91.Xb0w0wA4?5Kj.Ybdg1wA4?dPX207xWy01guKQ1@d_g071WR018jwg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2?w4X@_O8Z>ob2kajA?a0U0g20ef?ojzwxObV0g0weg80anDM027Vtvj_iNw0guw.cIbfW1gvX_UzZw084UsaP_eTzXUTZlZLZb6011W>ONU6TxYW022gg.60Ew2bF0g1wf.auINZvZb6011W7ArvnM40o916011@0w1UvE1.X8051@Q01MvIg_LZb_LYyfg.62MB2AVu4IIvu278LBc_LZbkvj_iNw0guw?1wIq022gk7R_QIo047E0g3weM80o@xhZvZb6011W7wrp7P@_S8YWaNze9TP_QIo047E207xWy01guJ?s7Hk04xebg7UTYg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2?w4VUOOd_Cvf_iNw0guyg__ZbucIzvUDP_QIo047EtfX_i_X_wzNU@@d_uaO4e77Q_QIo047EuhJVv7g0wA41060Yfvj_iNw0guxV6TRY9fS2g7zb8TZ9Y_Zb6011WfX_ozM10e0XQaNzefnO_QIo047Epf__iMw1UuEw0k7Hg071WR018jyQ1@d_4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LZyf040U3K0H6cUFvb_iNw0guwk__Zb6vj_iNw0guw206fEbvj_iNw0guxU@@h_0g3weTwrpnP@_S8YIaNze77O_QIo047EUfX_iM}1w0A;6.49w0w1cf31xgzyC0wxYWf@x@_3_MvLU_@7X4?1@17_8vyY084Uzvf_iNw0guz@_U8Y0aS4e.M@JU6TRY80n8uY0fa2Mc0U1080m9uc0faiM?U10Cvo0v9ACE7Sc0O0g?10egpEE1462?glSQ0Y0ocE14I19x130k046M2011D?tY__YDenwUanTQ0OBZ54EGvqV8p7OKi3VZk4xzv>OP80E91M0YEbfX_wzMgHogUX060g205ynz03OAIU060g9DS07Op9G1Zz0cw4.g3A6qa0h1ww045tJ0f063a0hf0ioggM5011I0w0gpM07vf__9PBUe2BZZ0cFvhhaaDSKieh_HAw@vl18_TY?1YIH062gs0fa2P@_U8YgaS4ecM2w40w1oBUM0YFbc02w42pZw1YCiqwvoM381.40V1Cyw4go8011nrg3M1wOw4uM4C44c1g0gr08046s01TP__OsVu3wFvvg3anQkiyFZHAzAvWV8fDRgifZ_.vb8M2wA703OwI_L@2f72Jx3ws0E1080m9uc0faiMg0E10Cvo0v9ACE7Sc0O0g?10egpEE1462?glSQ0Y0ocE1601Fx130k046M2011D?xY__YEenx0anTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM?7OPk0o90L?xwgc02iP01E51b0m2gg802iP@_S8YsaNze1M0wA0807TE.zyg?2iMc0890_LZyf72IoPwyx20ZYIJ0fuisiC4B8OBx3w19ug?g3CM0a4UK021eb?8vCU046hcvz_iM.OOs18910g3weTzHETZBYfZb6011Wf?8jyQ1@d_4?1Wez_EuLM_Y7H@f_xWWo327Mw081e>o>6.49wuff3vY.vA9YfZb6011Wc.uBU6TZY.vb5P@wA2Y02610M09bfw3wk7k0E910w09bfX_ozNMH6cU5022g0w0vuw?2e9.9b0g4wA4yx20ZYIJ0fuisiC4B8OBx3w19ur?Ejw?80UI?x@nDT_QI.cIjf@2gb?Muxw0c4X_L@yfc2JFjxUYYd_c020e1TN_QIo047Euff3v_7M_QIo047Ed.i.gC1UYYd_M?1@lDL_QIo047EM?1Wg.ON0_o90Lw1xW7zHF7_5Y_Zbu1J_v7zHETZhX_Zb6011Wf?8jyQ1@d_4?1Wez_EuLM_Y7H@f_xWWo327Mw081e>o.gC1UYYd__uX_iNw0guxU6TZY.vb3j@wA7@_S8Yuff4vW2JoPw10e0XuuX_iNw0guy8_LZb>o>6.49wuff3vY.vCVXLZb6011Wc.uBU6TZY.vb7PZwA2Y02610M09bc04wk6U0U910w09bfX_ozNMH6cU7022g0w0vuw?2e9.9b0M0wA3@_S8YsaNze.83A?a0UI021eb?8p4NZLZb.3b0j@wA2M0c60o031e_X_EzP8HqkUuff3vO?w3zlX_Zb6011W7zPMT@FX_Zb6011WeP@_QI.1w>o.gC0g040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hLfKog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16s@Vx0c01|0pwHh5nrg3M1wMw47PXC41?8gUg01@ec.vCBXvZb6011Wc.uC8@_Zb?12o1?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16I@Vx0801|0pwHh5nrg3M1wOw4oPXC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320grfKog4?x3x?7UUM?1@inJ_QIo047EM?1WnwrvTNQ@_Zb201ZW1?nuA.e9.Gyg?22M@1yBl8062g.2iP@_S8YsaNze3M5wA4yx20ZYII0fs?gvDAD0xx9icFogU02nCM0a4U?20eb?8vCpZfZbM011Wg.ONE_890I031W6?MjL@_W8YM011@s2JFjxUYYd_c020e3nK_QIo047EM011Wg?E3xUYYh_u5d3vrTI_QIo047EgfT_iN?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE17Y@Fx0801|0pwHh5nrg3M1wOw4tPWC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320gLfGog4?x3x?7UUM?1@gnI_QIo047EM?1WnwrvTP4@LZb_LZyf040U3IwHmcUxuL_iNw0guyk@_Zb.9b1jYwA7I_LZb>o>6.49w_LZyf72IoPzU@_ZbI03xWbw0Mo1w0c4X_L@yfd2JFjxUYYd_k020e3DJ_QIo047Euff3vMTJ_QIo047EkfP_iMw0vuwg03TF.3yg?ioA.wIfwpalqw1wA4.EIUfG2gia4g3TOOM0ZM?x@uis264B8QFx3w0aug.3CM0a4UK021eb?gvCU?6h2vf_iY?8uA.cISfG2gb?UuyU0c60o031e_X_EzP?27VQaSBe7zPMTZg080UEuP_iNw0guz?27F?2we7zPN7ZUiOdZauL_iNw0guyI@_Zb201ZW1?fuA.e9?19yg?22M@1AFl90a2gg?2yNk_891?10eg?E3z?27VI021eb?gp5ZYLZbM?xWg.ONc@E90I031w6?MjL@_W8YM?x@syJFjxUYYd_8020e1DI_QIo047Euf__iN?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE15E@px0801|0pwHh5nrg3M1wOw4kzVC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320gafCog4?x3x?7UU1uH_iNw0guxU6TZYefD_iM?gC3@_S8Y0g3weU2JoPy5WvZb6011W9jV_QL@_S8Y0g3weR2JoPxJWvZb6011W7PV_QI.EI_LZyf72IoPxo_E9<od23gE4.1wQ8cyeg?2yPo0890_LZ2fvX_0zRwIQEVkbc8eh?ajCc0M4gClq0vk?g3CphC1Zz0d44qo3inQ.1w>o.gC0n12LMx0aH4o1gqN69o24gRSMxY1s4Ev64&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx!0y4gym2J4tscHv6pjW1Z4?Fenj_0481020V>od238F4.1wU8syWg?aiO4@o90_LYyfg.62MB2AVU8sy@n3V_QI.EI_LZyf72IoPzs_o9<od23gE4.1wQ8cyeg?2yOU_U90_LZ2fvX_0zRwIQEVkbc8eh?ajCc0M4gClq0vk?g3CphC1Zz0d44qo3inQ.1w>o.gC0n12LMx0aH4o1gqN69o24gRSMxY1s4Ev64&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx!0y4gym2J4tscHv6pjW1Z4?Fenj_04bw_LZb>od23gE4.1wQ8cyeg?2yPk_E90_LZ2fvX_0zRwIQEVkbc8eh?ajCc0M4gClq0vk?g3CphC1Zz0d44qo3inQ.1w?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw3@_QI[o03.204MYg5l2eao227M.1wc81yW040w3wg?7UUvYx@27C_QIo047E>o3y0oKw1080U3ur_iNw0guw.1wg81yW040w3zVVvZb6011W>618w6bE0g20eenB_QIo047E8?xe.o3wg?7EFwc8v2?w4U[o]1wGdk1;2C0wxY1g2vgGo2q7SC0MxYYfYbW51wyTQkmC1ZRfYce.y@C2Y01UFwe9vgw0q@Aw181ePf__iYz__QL4__ZbMf__iXP__QKU__ZbJf__iX3__QKI__ZbGf__iWj__QKw__ZbDf__iVz__QKk__ZbAf__iUP__QK8__Zbxf__iU3__QJY__Zbuf__iM80j3MAl48UFw88v1.vyh_O7Us?xe1.uyC0MxY8020jCtBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP;1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g<9mNIp0E>J}79y]t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M[t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug>1QqmRBs3EwsClxp21BsD9LszEw9nc.1Dpnh3k5lQqmRB]t6BJpn1vpCVScm4;7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8;7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq]7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD:Bc34Sr6NU02kMe7w<9j0Uu2QBc34Sr6NU<5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb[0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK[1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb>5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ<t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng>1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt:1<w>c>wwXzJ88eUXi23KeQwwXzJ0hI3ePw>6>ge7__Sw.2gUL__v>e3B___M>oeL__XM1?1gZ___Z04?e3T__Zg>4[1uB8017x10hIc0g0k>6>8zT__@c<489gg121A4g>c>d3w__Zc0g:7>14>3eb__R03>hwWM0N51vAer1k6s146t0Q6v0nCu0B_rgtN1Tk7ugJZ13w121A543H03CMms19Q3DM4hgnVLSQ7sgtR1TQ8a3w131A512Qyr1pM4Dgev0kwaSQ7sgtR1TQ4e04c6gk4b>O>bw.3EVf__u0k.152k40CMms14ev0pw8hwXg0FA7DgchgnVi2Fs9gFE6gpU2ggI2lVs9gpE6gpU20ALngtF2TA4e04w6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnVxBMB2Cwp1Dw9nRQ7qgtV13w191A7vTtPrStx13J02BMCo29A7Cwqr1pM4Dgeu0FY14k5@idvqTBmn2pE6Dw91RQ7qgtV13w191A7vTtPrStx13J02C0yp1VI5D0it0VY14k5@>d>8g1?2sWv__Y0I.183L014k5@Dgeu0FY10Foa3w161A7vTJR42TIa3w161A7vTJR32M0s>L04?5jR__@4<4we8151vB8e04c6gg//////////////////////////////////////////////////////////////////////////////////########{E1c]M4M:1zZ0g:g]250g]M}w0Y]d}dMG]6g}8_g4;1I}2[q}13Z0g;7[8}fn@_SY<Y04]5}405]1w}E0w]E}I04]b}1w[M[?8:8}408]k[s}5M]183g[07;p2E]3?1M{?1M]1U1M]w}Q0k]9}1w}_L__rM<U1M:f___SY;g]3M__ZL<f06]@v__rM<R####[.7Y2######################*awH]U2M:2EaM]wJ]y2U:1gbg:9wJ]M2Q]8bw-G2I:10bw:awH]q2U:2EaM:b0K}2Y:2EaM:2wL]s2Y#.G2I:2EbM:awH]Q2Y]wc]9wJ#.awH]s3]2EaM:9wM]U3]2EaM:2wN]u34:2EaM-s2M:3g7g]4}M?2;3gcg-g2M:3g7g]4}4042;3Mcg-42M:3g7g]4}s042:gcw)2M:3g7g]4}I042:Mcw-hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F>2>1:g?hQ4A0jdxcg1w4w:60i]2>1:g?hQ4A0jdxcg203M:aMf]2>1:g?hQ4A0jdxcg3saw:f0G]2>1:g?hQ4A0jdxcg1w4w:aMj]2>1:g?hQ4A0jdxcg14aw:4gG]2>1:g?hQ4A0jdxcg14aw:4gG]2>1:g?hQ4A0jdxcg2I3M:bMf]2>1:g?hQ4A0jdxcg3Maw}H#(c?g380g%c?w3M0g%c?M0E0w%c010101g%c01g3M1w%c01w0U1M%c01M1U1M%c020183g%c02g1w3M%c02w303M%c02M3saw%c03.aM%c03g1Mcw%c03w2Icw%c03M08_g4^c04?g_g4^c04g0o_g4^c04w0w_g4^c04M?_M4^c05<8^c05g3.8^c05w3?w8^c05M#?c0603E1w8-g>g0YvY*3g>9w2w1w4w-3M>9w2w304w-8w>9w2w0M4M-e<405w3?w8:4}h<404?g_g4+qM>9w2w2w4M-tM>403M08_g4^g0YvY*Bw>9w2w2M4M:4M1]Fg>9w2w?5g:503]Jg>9w2w1g6]7w5]TM>9w2w3g7g:f0b]Xg>405w3g0w8:g}2g4.405w3w0w8]4]6M4.405w3w1w8:w}b04.405g3.8;5[eM4.405g0g0g8;5w}iM4.405g1M0g8;3w}mM4.405g2M0g8;5[qw4.g0YvY*t04.403w24d$g0YvY*ww4<2w0w4g-HM4<2w3w4g-RM4<2g1w3M-@04.9w2M3saw-_w4<2w204g-8w8<2w1gaw-dg8<2w0w4w-pg8<2w2w4)vg8<2w204)Ew8<2w303M-Pw8<2w104g-W08<2w3w3M-30c<2w2w4g-eMc.404g0o_g4+i0c<2w?4g-twc<2w304)Bwc<2w?4w-Kgc<2w3w4)Twc<2w?4)_0c.404w0w_g4+1gg<2w1w4g-agg<2w304g-k0g<3g1Mcw-oMg.405g3?w8+rMg<2w1w4)B0g<2w104)JMg.404M?vM8+Lgg<2w0w4)Tgg<2w104w(k.9w2g203M-1wk?2#PMg?1#8wk?29w%f0k?19w%lgk?1405g0M0w8;3[q0k?19w2w30ag:8g}v0k?19w%zwk?19w%tM8?1#DMk?19w%HMk?1405g.w8;3[Mgk?19w%U08?1#T0k?19w%@gk?14$2wo?19w%Wg4?2#7wo?19w%y0c?1#bwo?19w%fwo?19w%kMo?19w%pgo?19w%408?1#two?1405g1w0w8;3[ygo?2#EMo?19w%Y0c?1#LMo?1405g2g0w8;3[Qgo?19w$6dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0pSlQgR1lt6BJplZJomBK07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM,,0NoiVMr7hvoS5Ir2VvnSdUolZCqmVxr6BWpk10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VDpnhOtndxpSl=0c3,0McmkKs6NQnSdxr6MKnRZDrmZKnTdQon9QnRY0nSpFrCA0c3,0Mcm4Ks6NQnSdxr6MKrm5HplZytmBIt6BKnS5OpTo0nRZDr6BKqRZgj5hOpndLr7pB03,,5xbD1It5ZzomNIbBZvsSVMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbDxCsClB03,,5xbD1It5ZzomNIbDdQsCdJs410hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2Vzr6ZzqRZDpnhQqmRBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbDxJomNIrSc0c3,0Mcm4Ks6NQnSdxr6MKpD9Bomh=0c3,0Mcm4Ks6NQnSdxr6MKnRZBsD9KrRZIrSdxt6BLrA10hQN9gAdvcyUNdM1vnShPrRZEomVAr6k0c3,0Mcm4Ks6NQnSdxr6MKnRZMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbC9FrChvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKs7lQsQ10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VCpn9OrT9=0c3,0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3,0Mcm4Ks6NQnSdxr6MKpCZMpmV=0c3,0Mcm4Ks6NQnSdxr6MKsThOpn9OrT9=0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv03,,5xbD1It5ZzomNIbCpzr6ZPpk10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VMrSNIg417j4B2gRYObz4T02VkjQcK03,,5xbD1It5ZzomNIbC9RqmNQqmVvpn9OrT80c3,0Mcm4Ks6NQnSdxr6MKsThxt410hQN9gAdvcyUPcM1vqmVFt01vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1MrSNIg4tcik93nP8Kcjs0t6BJpn1vq65Pq5ZPt79RoTg0nRZMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80nRZPrD1OqmVQpCBBpmkNczx0hQN9gAdvcyUPcw1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0sThxt417j4B2gRYObzcP071Rt7d0hQN9gAdvcyUNdM1DpnhOtndxpSl0hQN9gAdvcyUNdM1Pt79zrn10hQN9gAdvcyUNdM1CsClxp417j4B2gRYObz4T07hFrmlMnSpKtz5xnTdQsDlzt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1Dpnh3k5lQqmRBnTdQsDlzt01Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP###+r>1M>8}O04:380g:2g(4(bw.fr__SY2}f01]Y04]U[c}2(3w>b<w}E0w:2w2]60c]4<M>w}6}1;M>8}g0k:101g:b01)1(i>f___SY2}f06]Y0o:12[c[w}2}5k.3@__ZL0w}U1M:3w7]g[4<g>w)1A>1<8}u0s:1U1M:d05}M}8}1w}rw>g.12}4wd]i0Q]g0w]c>k>2[o}7w>1>1w]1w3M:60f]n(2(1@<g>o}M0Y:303M:1Mr)w(x<4>6}dMG]T2E]A(1(8E>1<w[aM}H]s0s-1(2i<g>8}s38:1Mcw:3M(4(E<4>2}aMO]H38:3s0g-1(aE>e<M}8_g4:zZ]2*w}2}2S>3M>c}4fQ1:g_g]w(8[w}Mw>4>3}1zZ0g;6fQ]8(2(cY>6<M}w_g4;23Z]U04]4[w}4}3o<g>c[fY1]_M:5^g]w}sM>w>3[.w;kfY:3*2[8}dQ>1<M]3.8;c.g]8-1(3z>2<c}M082;3?w4;2w4)g(W<4>M(M081:K*g}1}f4>7{3E1w8;f020g;804)g(1<w$g104;20a]6w.4U>8}1w}2g>c$c0U1;3z1w)g)14>3$1cl0g;1M4)4)'
;;

'riscv64')
b64=$'36878 18440\nmd5sum:dcb63a7edb66635bd39873159c7aad08\nsha256sum:bcd4922fc07c27bd4744bedee75ec6be77c3a7a7916c11e32ee26d7b93d4a9a6\n0OnSgOs39voP9Mc5ZWqmdPsz9Mc5ZWqmpBrCdBqj9Mc5ZWrmRRr35Mc5ZWom5JrP5Mc5ZWomNOsScNs3\n000000000000000000000000000000000000000000000000000000000000000\n0000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n07hFrmlMnSpKtz5xnTdQsDlzt\n000000000000000000000000\n000000000000000000000\n0gpLn5M1RzPSfxoIrlNs\n00000000000000000000\n0hJn5M3RzXCf1oKrRNs\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n00\n0U;3g3w;d\n0t6BJpn1vq65Pq5ZPt79RoTg\034vQlchw810g[0c0YM01{1[x1:1g.4?e?804?7?r?c?704>Lz8!0pw(4}g>k!:g9g;10B]1]1>1w.f0J:Y3Q;3Mfg;a04:K0w]4]8>6>22U:8fw:w@:E04;2w0g:w]1,g<w]2}8:A]2g]1]1gVnhA1>40z:g2c;108M;3g]d}4]57Bt6g6!!01}kKlQp0g.3Mbg;f0Z:Y3Q:g0w;102]g]4>5,c.17jBk0aY2meSbAnf6aj0bIl0cwuvxdb1o<M.1E>1>1w.1181409x02<1E>t>N1LJmGG3zf7bTQtTEBsWDa4Qqnk!}M0a030g+2y>4g$1>8$2f>4$1k>4w^2Z>4$1R>4w^2E>4$2M>4w^33>4w^16>4w^1D>4$26>4w^1u>4w^3K>4w^3l>4$1w>4w^3e>4w$T>8w^38>4w^2S>4w$t>8$3D>4w^2t>4w$p0g?4#U0g?4g0k?12:c]3P>4w0a0a0r:h]1b0g?4g0k0d11:c}B0g?4g0k0312:c}70g?4g0k0612:c[nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80s6ZIr01Pt6hFrw1Urm5Ir6Zz06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q06pLs6lK06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK%01QqmRBs5ZzsCcPcBZPt79RoTg|0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUOdM:8?g01?8?g02?4?w03?8?g02?8?w01?8?w02?8?w01?8?w01?4?g01?4?g;g0205Q1.g]behBwo.c0pM4?1>27Apo6.20781:Y3Q:3]bog:@3Q:3]7Ug]3U:3[@:E4]3]90s:G4]3]cwt:I4]3]90s:K4]3]f0t:M4]3]70v:O4]3]3wu:Q4]3]80u:S4]3]awu:U4]3]f0u:Y4]3]90s:@4]3]2wv]44:3]90s:244:3]50v:444:3]90s:644:3]9wv:844:3]ewv:a44:3]90s:c44:3]10w:e44:3]5ww:i44:3]90s:k44:3]90w:m44:3]90s:o44:3]bww:q44:3}wx:s44:3]80u:w44:3]90s:y44:3]5wx:A44:3]90s:C44:3]80x:E44:3]cwx:G44:3]90s:I44:3]10y:K44:3]60y:M44:3]90s:Q44:3]5wt:S44:3]7gm:W44:3]a1]Y44:3]bwy]48:3]2wt:248:3]7gm:648:3]f1]848:3]dwy:c48:3]fws:e48:3]7gm:i48:3]4x1:k48:3]fwy:o48:3]ews:q48:3]7gm:u48:3]811:w48:3]1wz:I3Y:2,w{K3Y:2,M{M3Y:2>6w{O3Y:2>7=Q3Y:2>7g{S3Y:2>4M{U3Y:2>5w{W3Y:2>7w=4]5>1=24]5>1g{44]5>1w{64]5>1M{84]5>2=a4]5>2g{c4]5>2w{e4]5>2M{g4]5>3=i4]5>3g{k4]5>3w{m4]5>3M{o4]5>4=q4]5>4g{s4]5>4w{u4]5>5=w4]5>5g{y4]5>5M{A4]5>6=C4]5>6g{BPc?3c3MQ43Lwci4Md3_pe20N8jkNc0wXa206s03w0nfw.PUe4ms33w0j>5PU.c@zx1D0MU04M.1s@.3fwUgpMce01c>nfw.PWe3Ss33w0j>5PU.c@3wZD0MU04M.1s@.3fEUepMce01c>nfw.PUe3Cs33w0j>5PU.c@zwRD0MU04M.1s@.3fwUdpMce01c>nfw.PWe36s33w0j>5PU.c@3wND0MU04M.1s@.3fEUbpMce01c>nfw.PUe2Ss33w0j>5PU.c@zwFD0MU04M.1s@.3fwUapMce01c>nfw.PWe2ms33w0j>5PU.c@3wBD0MU04M.1s@.3fEU8pMce01c>nfw.PUe26s33w0j>5PU.c@zwtD0MU04M.1sR.j1gkCBPs?9e7xOlzyas0BPs?8eTh_uhMUa7wE0ndg?4MnB8VsR?2jxmkzyoSjRPl0_p6@Bom5CsmndM?wXs7ZV73wEu2w9sT?23NOsxDut14grABPs?8eTN_ihNNsR.j1qnmwFvLY1_VEC25hNsT.z1fsugg62w8a0sr@ndM?wWs77FnbAQvR_Nn6bFondg?4MnB78f61g0rRUs0xgmRzVfTZM@a1WGnD4uVz@ekNvUjNvv_wE2TxHzJAUo6cFsU?2jy4wq0kwj0M0g4TUo09Jn6?X3I11cTXu01fT5M0X1@10IYv70pLn5M1RzPSf4_Un01Jn5M0X3I11cTXu09dT5M2X1_10cQv7)0eMvwg1f@5M1RzXCfeMv*0KMvMgfmf4TUn03SfKMv0ghJn5M3RzPSf8W3E?kEAgzz6CzSxksndM?8OXT3zC_3n66XBbWzktzPqskEKGCVIHyjLW5hSftFMO0pod7102hUM54zks1imc5Zhq42aq52knLY9_oqumTFYgwpCujxSuWJ_pjUVe6ZDO25YpFJFuP5_s2JQof09e61yhZBMM9vlmPytA2DoupzXWpX_3_PyGasu7apwFTJQsf09e71OiPxLo2WCkGtHc7ZMaKBHWmIFreBCcf10NmZFca0g4n5w?4Mp6E9c5?hmxu_M_Zfmxia50krLY5_hoM490xsm.j1AquAMk01cW69EnLYd_hFElaxg56X_0_PRpAZC2Sp1pFYDCOuBa5kDERooa?kg1iog8FEk9hu_M7YMdTgM90kkKVe_MnYl1XsFF2DuThMY0AUs79be9@g9GpGFSEClZlrc7ZMaOCrWpJFDLYd_2aEExQu_MnYg8gu_M_YCGxhsl.j1gmkX_0vM5pAJCgmqv9V1kHSo5a5kDERooa05Nk?1c51oXLY1@@1kHBJXq55Nk?1c5ppfLYf_9ZC1mpbpA5CDOula5kDERooa?XA50od72g3zCgvE0kChL@_MDXQ8gu_MfYeGxhsl.j1kmbkrZhsqbNFKTaWorRPKniUlrZnLm3hMk0aECKx9K7d_QOx1K71M2pUMd75g1z6Msw5Ps.cDN_2ndM?AUt7Y4THJUqUXpe61zandg?AUmBXM564Mk041dU5w2rlNo0eMw0gjdUS?jZNs0eMvwgbf71M6rRNs0toYZzNfU5M0rlNs0eMw0gjdUS02jtNs0KMvMg3d71M4rlNs0Zo@VzMmbCZsn03I7U40j@1s0to@VzPI7046rRNs0toYZzUmb6Rsn0bI7Y43RzNdU5M0ZzXI7044rlNs0ZoYZzVz11iqh1ucrFLqndM?AUtDVgl7Ccc3JUt0oMU73El7wxs1hEl5a?@Ve_M_XFzmW0ewRvx08mboUo73FsT?23JYuPgmk3Kws0X_3_GGG9xkFz0gkqmLByYmrJqKATGvbb4MBpPHsD8EijxRsO1kQ26ta6gmq5hkW58xQ@Cu_MLWwj3jQr0kKneM?AUKbThsc.j30O_GEMdPoeTyQ35PRG5pErexoancUoY0iGbPEs3NMs0xgsPiis1cMCF0@cpZLXixA5Cxklexu_MTWeGz6DRkEnLY3@KGEJexmeo2MHLY7@voUEa39D08W1A0mca111auMFYWCNaricM906Ks0VQXCheqqVF3CHGuBW5GDJJooa05Ms?1c7FXozJet0ZrQc21s5.j1qlLX_2_DGGamsCndM?wXsDF45B0XE70e_MnVKGykT5mLByYmrJqKC5iy6T8Xibgps7?2jxQuOfr@n1g?AUkBr4G5X_2vEOGahsl1pu_M_VuGyjT5mLByYmrJqKC1iICZX_2_B6e82wbLY3@l2465i@_MLVGGxhs5.j1klLX_3vA4FX2DPGr4FJErtixu_MTVQJJRa5X_1vDvCTBMk?9e5Vmkn1g?4MnBpe_M_VMGyxT5gmnLY5@hGEDz5wnCkEnLY9@q5Mk?1c5NmzLYd@bxkLZLkFX2DPGr4FJRrQn1g?4MkBoK_MfUG5iZmRX_2_z0x1xkLLY3@iaEraxhs5.j1ilzX_0_ydCRtn6axibxOLw6VqrYX_0vAMcV1g0Gx9s5?2jxulBiEnLYd@mosSn1g?AUnBpkG5X_3vBqG4fsmn1g?AUn5pQG5X_2_BaG4oM853Fs5?2jxolFiEnLY7@jGEhtXo973ktzg_sAoUPD6wB75Mk?1c5xltzCKs026i3hMk0yusn1g?4Ml5lFsn?23JYv3c01c?b2fKjLY3_5oM055El4Bq22hMR7oQHT4CebVMM9hNs5.j1iljoVvD?xAwQs506e71Nan5M?wXv7LP?wkk@Ve_MnY5VYq9C4MA10kG55Mo?1c61Cmj1g03X_3vwAG5X_1_wP6w0Amyxu_MfWeGx2a5X_1f@qFw2Ch6uiq5VDh9ooa0OEkn1g?4Mm5n@_Mz_m5hf6_wAsdhSd4ZNxzy@si2ksn1g?4MmBiCeqVM08p8d71g29VNs5.j1ml90koI?b4X_3_K27NEAoj2g41iEkn1w?4MoCnpc5?bLY6_WiEnLY0_Xmrs8p0cV1063hMk?Qs90b7L5Mk?1c59klz2wsIBNs?8eTpX8M0855PLg@Ve_MTXdz6wkSECqj2g41jEkn1w?4MpClVc5?fLY2_RPElaxg56X_2fYGpVdrsn1g?4Mm5i@_Mz@C5h36_UMU7X7ST5Mk?1c59j_VJi9DAAoj2g41iEkn1w?4MrCkVc5?nLYa_MiEnLY4_NXrk8p0cV1063hMk?Qs906ef1Nrz30vABNs?8eT1WAM04M0PLg2MzXAX_1vGCcu1iMypV96AMA10kW55Mo?1c6NAWj1g05X_2fWVST26g3egg1wQs5?d72g2xO@ce1@M1hyM0PLg2Ne_MnWpz7wkEEAqj2g41jEkn1w?4MpCiFc5?bLYa_D9rsn1g?4Mn5he_MPZO5h86Z5Mk?1c5Nk3LYc_rxki1Jhs5.j1skNnvsndM.OsDBpsT?2jxWukjuKTxHzJAUo6cFsR?2jxgmk0koj1g0g4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs7)0eMvwg1fU5M1RzXCfeMs*0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZFsT?2jxYu91kuoMMeTxQ3z5Mvm5_v__Nc7xSEzJet0KrIn1g?4MmB8@ch1@wndM.OvDxFsT?2jxSu6uvuTxHzJAUo6cFsR?2jxsm50koj1g0g4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs7)0eMvwg1fU5M1RzXCfeMs*0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZz6_5Os.cDpTKn9M?AUvDuxDXJUqUXpe61zan9g?AUl5uw564Mk041dU5w2rlNo0eMw0gjdUS?jZNs0eMvwgbf71M6rRNs0toYZzNfU5M0rlNs0eMw0gjdUS02jtNs0KMvMg3d71M4rlNs0Zo@VzMmbCZsn03I7U40j@1s0to@VzPI7046rRNs0toYZzUmb6Rsn0bI7Y43RzNdU5M0ZzXI7044rlNs0ZoYZzVz11iqh1ucrFLqlJqpVxkjNLA4hxkkn9g.Pl5h0rAX_0LNUl55Ok.cRNk7LY4_6xkkn9g.PnBf@_MrYm5hhsB.3dok_X_2fNa9w0kl10oa<6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP<1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g,9mNIp0E>J]79y:t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M}t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug>1QqmRBs3EwsClxp21BsD9LszEw9nc.1Dpnh3k5lQqmRB:t6BJpn1vpCVScm4<7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8<7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq:7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD;Bc34Sr6NU02kMe7w,9j0Uu2QBc34Sr6NU,5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK:imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb[820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK}1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng<gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU,imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM]820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng<gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU;19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb>5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK}19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U<4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU;1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ<7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ,t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng>1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt02kz8EjADfbb0hI3ePg>5>ueT__QM.1CXL__o>1XM___o>dff__Sg1?1w@f__H04:g}dWkw01v0416MM201,o>9eT__@U]t>2M.3@Xv__K04.123K02hE42B0Ney0i91F88AME2x9ke0Aj8gI52OkbigJd2RkjkgwU0gwXw0E42y0i91F88AMGk309wO4b9gJ92QQgaMkjkgwU0gwJgy0i91F88AMFg2I52O4b9gJ92QQjkgwU0gwI0y>ag>@X___5wc.123L01l8w4ygqi2842AMGk39keBN838w6m49wkChqq60aoRAbogJB2SAoaMkb8gIB2QAbjgJh2RkjngwU0gwI2g9ogC1ip5FEokdroStFABx2o59AmCxxE2Jp2S4bpgJF22R3mSdDq0zGm49wkChqq64bmgJx2Skbq?14>c04?czN__YI1g.48eA05ay0ii2842ygo30w4aMkb8gJ94Ok8e048b0Fij2CPj0CMaAMFA2RGj2Cjj0TU2AMF2QM0s>u04?aPS__Z4,48e44O10w8MMkge````````````````````````````````````````````````!&g:1t0g;1A]Y3Q:r}w]6w:3Ufg;1M]2]3R_LZL,2w2:1g:181g:o]o08:a]7Q1:2M]o}c]Y3Y:2]e01:5}7]1s]Y0M:7]3w7:2]2o1M:A]6]3@__ZL<w7:____rM,1]f3__SY,Nwo;3V__ZL,3k`!$8fw`!03__________M}Q/0e:Q/0e:Q/0e:Q/0e:Q/0e:Q/0e:Q0U;3g3w``````!!0g`g`g`g![017gQcW82x7jBkF834Qbz8Kci0Oc38Qc3ANcy0EkClA84xxt20Nd2UObz4JcOA0gmk.1Oqndztw01mM>gg1n9SdzhFcD0NnSQOs31voj9MclZCcD~?2>1;g?hQ4A0jdxcg0M4:30g:2>1;g?hQ4A0jdxcg0M4:c8g:2>1;g?hQ4A0jdxcg3A6M;egr:2>1;g?hQ4A0jdxcg3A6M;egr!&?3?4.8^3?80a08^3?c0o08^3?g0i0k^3?k0Nwo^3?o020s^3?s0e0s^3?w0Y0M^3?A0Q0U^3?E0c1$3?I0W1I^3?M0g2c^3?Q0u2c^3?U0Y3Q^3?Y0@3Q^301.3U^3014023U^30180G3Y^301c0Y3Y^301g0E4$301k0A48^301o!301s!301w0G4o-4>40f7_&0Q>2?E0c1-28;E0c1(Y>2?E0kx-7s>2?E0vx-8Q>101k0A48:1]9A>1?Y0@3Q+c,2?E0Jx-cM>1?U0Y3Q^40f7_&eI>2?E0K1:3K]28;E0K1-fE>2?E0Fx4;2U0g:E1.2?E0nxc:m0M;3g1.2?E0t1o:I1g;481.101k0C48:4]5U1.101k0E48]1:701.101k0E4o:8]841.101g0E4:1g]901.101g0Y4:1o]a01.101g0i44:U]b01.101g0w44;1g]bY1.40f7_&cA1.1?Q032k^40f7_&ds1.10f7_Q0U+f41.101.3U+fU1.10f7_23U-s2<M0g2c+1E2.101g0A48+2o2.10f7_G3Y+3M2.h$4Q2.w$6A2.g$7s2.h01g?48:M]8E2.i$9Y2.i?E0E1I;14]bc2.g$bA2.i$dk2.h01g0Q44:M]es2.g$eY2.i#03.i$103.i$2A3.g$3s3.i$4I3.i$5Y3.i$6Y3.g$4Q3.i$843.h01g0c48:M]9g3.i$ao3.y$c03.i$d43.i$ec3.w$fQ3.i#Y4.i$1Y4.g$2I4.h01g0o48:M}1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM0Au79SdzhFcD0NnSQOs31voj9MclZCcD~?nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZgkAZ3hkhlkAlvj4BeiQ57hlZkgk9chlY0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0sThAqmV0hQN9gAdvcyUOdM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1QqmRBs5ZzsCcPcBZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kczs0sSlQtn1voDlFr7hFrBZQqmRBs01UpD9Bpg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kczs|0u6Rxr6NLoM1CsClxp417j4B2gRYObz8T07dQonh0hQN9gAdvcyUPcM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kczs0oCBKp5ZSon9Fom9Ipg1Pt79BsD9LsA17j4B2gRYObz8T07dKs79FrDhCg4tcik93nP8Kczs0s7lQsQ17j4B2gRYObz8T06RxqSlvoDlFr7hFrBZxsCtS%01CoSNLsSl0hQN9gAdvcyUOdM1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8T06pLs6lKg4tcik93nP8Kczs0pClOsCZOg4tcik93nP8Kczs0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79zrn10hQN9gAdvcyUOdM1MrSNIg4tcik93nP8Kczs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bDhBu7g0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?KpSZQbD1It?Kp65Qog0KoDdP02VzrSRJpmVQ02VOqndztyVxt7hOqm9Rt6lP02VDrDkKoDlFr6gKonhQsCBytnhBsM`!?r>1M>8[8}w;2g(4(bw.fr__SY2]2w2:a08:U}c]2(3w>b,w:1w0w;602:W08:4,w>w]6]1<M>8]i0k;181g;7Q1-1(i>f___SY2]co6:Nwo:@}c}w]2]5k.3@__ZL0w]81M:w7:c}4,g>w-1A>1,8]e0s:U1M;bw5]M]8]1w]rw>g.12]f0c:Y0M;3w0g:c>j>2}o]7c>1>1w:3g3w;d0e:o04+1}4]1U,g>o]c1]M4:bgb-2(vw>4>2]ewr:W1I;1o1M+2(8o>1,w:108M;40z:d&g-2k,g>8]u2c;1U8M;9w1-8(Dw>U>3]f0Z:Y2Q:8(2}8]aE>f,M:3Ufg;fwJ:2&w]2]2S,g>c}3U]bw:w(8(MM>o>3}w@:22U;2w0g:g]2}g]cM>1,M:2EfM;awL:i&w]2]3h,g>c]Y3Y;3MbM;b&8}w]Sw>4>3]a1]E3:3M0g+2(e,8,M:2ggw;90O:60g-w-3B,g.3(2gcw;2U(1}4]Xw>c?7&0Lz8;1C&g&1.7{2Ehw;2gP:A&g(1,w^2UcM;fw7:6w.3w>8]1w]2g>c$I3I:Z1(g-14>3$eQ_:5w4-4-'
;;

's390x')
b64=$'45038 22520\nmd5sum:283013e1dc165470f4ee08cc0d70bf09\nsha256sum:1d4dd22a16ff6fa7dd6ea3343590bff2903450c5bd532ee3a8036c3eedfa6c23\n09JAMH2R_@DJt3fciPpDEJrTGUtNrEXLHaZ2OwHJ5GinbdG1cMctVmX2Qs38w8mKlk59y_borecL6q36ylLQG1iqe8STS3LMWxDTRkNrEXLhCC@utwdaZGL2xJcdwdaZA44uC3hKSvNFHNnpP@R1JR8IzpbRJqzWa7hATUUScb4jZ_OkLCVTS@eLK_V5Xu@gS2MzJn@R1JSytcHU13quBFDTkHcZS9nno1BpYIpr3pNrCI6V_\n0Xf2zSmu__xyHCBxq__j5CPfhow8mKr_3SFMpwoXOx412RO1LxrdZHACmS@Mt@4oJQtTxJfiRf7kUA9ETrfU7ZG3rFbizFLBRrUdvdPLJMLrTO6lLQG2UHxW57KNaWUcJxIUD\n0HytZ1VWNUScb4FhAeUgdrmE@uCFqGeHlhPCtQDuL1dIC5nfs5EfJK8cwCH@PJweSUwNQItaqmrcZ5OWQ3o6TLlMXMbFIHlXu@gUFSsCoId2o8IvnGbhnqbkB86@5IXBCR\n0_mbVuEFBOuMqSJhZrtTAW_jkJl63QUn77rsgp6GM8fbPKn58xbV1TwCSj2J@InOZVXwJ1V2_7p4eSUwOutOUFe3lWhWnQJC81ST46n1GZ8_FoWkRDCilEM\n0WOdthwb_gohoOS6PzhtZsttPm3s@HQjRpdrmE@AaOC6PrKYDmHbPVg3M3Vd5b1dh7QwS5_qkaJmIXry38j6AgnJlwguiypT5O5\n0S1sTn1FdkTBsF8ZBDLXSZYxPaKIaakXejc2iQEWqFLaVjTHKuNkuOPTYMJv_FHJ5GiJDmmJN\n0NTBGwFcnZQdvcB3quBGd6Xp_aRDy4rqobzgiJ@BgjToBtuAQshJQZrQ@QSOolwWJl7eEXM\n000000000000000000000000000000\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0hQN9gAdvcyUO\n0000000000\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n0g.41_4d4ecg4\034vQlchw820g].301o>1-g;52U,01?3w01M1?1Q07,4>5&]f7:Ys;1<g>o;ZO;4T8;jsw;4O:zw;4,02>1w<3Tw;ju;1dU:7]s]2,g>4:sw;1O:78:2g:9]4p7jBk,g;WT;3Hs;eJM:d]Q]hAtelh>1w&&?46hQVl8>4;fsw<1dO;4T8:zw;2e]1>1>1g>3hQVl098mn@f4FwGbqp0Dp5_LfzQfdYZk]c>q,g>q?8g9g0h84]q>7lHJ6YjNz8eGtQvvOVMWlW9Rqjix&;c.A;eW{hy8*42&Dx&rN8*H18*lh8*Q18*RN&Kx8*Ix&Ox8*Zx8*Bh8&i&LN8*tx&N14*x18*rh8*V1&Th8*oN8*b2*18h*1g14?1o<1i]0M>@N8.I;DA:1o.1kN4?1o<1hQ]M.1bh4?1o<1ic]M.13N4?1o<1io]M05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC069FrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06pLs6lK07xJomNIrSc0s6ZIr01Pt65Q07dQp6BK06pOpm5A06pBsD9Lsw1UpD9Bpg1CoSNLsSk0rm5HplZytmBIt6BKnS5OpTo0s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg}]8?g01?c?w04?8?g02?4?w02?8?g05?4?w02?c?g02?8?g01?4?g01?4?g01?g.5B>4,06BF6P>1g.mY>g1FqhBM>g.5W>40RFqhg>3.1xg.10dqmAi,w.oY].jsw:3;1aw;jt]3;19g;jtw:3;4To;ka]3;3i@;kaw:3;3nk;kb]3;3i@;kbw:3;3nU;kc]3;3s@;kcw:3;3p:kd]3;3uS;kdw:3;3q6;ke]3;3r8;kf]3;3i@;kfw:3;3rW;kg]3;3i@;kgw:3;3su;kh]3;3i@;khw:3;3tA;ki]3;3uO;kiw:3;3i@;kj]3;3vq;kjw:3;3ws;kkw:3;3i@;kl]3;3xk;klw:3;3i@;km]3;3xU;kmw:3;3z4;kn]3;3uS;ko]3;3i@;kow:3;3Ai;kp]3;3i@;kpw:3;3AW;kq]3;3C2;kqw:3;3i@;kr]3;3D4;krw:3;3Eg;ks]3;3i@;kt]3;3lM;ktw:3;1_M;kuw:3;52w;kv]3;3FA;kw]3;3l4;kww:3;1_M;kxw:3;53M;ky]3;3G:kz]3;3ko;kzw:3;1_M;kAw:3;558;kB]3;3Gu;kC]3;3kc;kCw:3;1_M;kDw:3;56:kE]3;3GY;jXw>2>2w+jY,3>2w+jYw>q>2w+jZ,s>2w+jZw>f>2w+j@,i>2w+j@w>t>2w+j_,o>2w+j_w>u>2w+k,02>2M+k0w>4>2M+k1,5>2M+k1w>6>2M+k2,7>2M+k2w>8>2M+k3,9>2M+k3w>a>2M+k4,b>2M+k4w>c>2M+k5,d>2M+k5w>e>2M+k6,g>2M+k6w>h>2M+k7,j>2M+k7w>k>2M+k8,l>2M+k8w>m>2M+k9,n>2M+k9w>p>2M]WS_Mc?AKgg07WvX_S3z4f.2j0M.85b04.86Lz41>iV0w0hFUg?MTxUQ3N4?4WS_MQ?41_g?ecgY3w09c0g.wet87Y30g2ecg41?10vN1M07?s0M1.21sUN|0M05c3Q/_Vg>304.853z41>g7YgQgUN0g3?kMfj/_l>6c0g.whecg4.10vN3h3z410c01j0Zf/Yk>MM1.20UUN|0M05c3Q/_Jg.4z04.82Pz41>g7YgQgUN0g3?kMfj/@B>oc0g.w8ecg4.10vN3h3z410c01j0Zf/Vk.1UM1.20kUN|0M05c3Q/_xg.9304.80zz41>g7YgQgUN0g3?kMfj/ZR>Gc0g.v_ecg4.10vN3h3z410c01j0Zf/Sk.30M1.1_MUN|0M05c3Q/_lg.dz04.7@jz41>g7YgQgUN0g3?kMfj/Z5>Yc0g.vSecg4.10vN3h3z410c01j0Zf/Pk.48M1.1_cUN|0M05c3Q/_9g.i304.7Y3z41>g7YgQgUN0g3?kMfj/Yl.1ec0g.vJecg4.10vN3h3z410c01j0Zf/Mk.5gM1.1@EUN|0M05c3Q/@Zg.mz04.7VPz41>g7YgQgUN0g3?kMfj/XB.1wc0g.vAecg4.10vN3h3z410c01j0Zf/Jk.6oM1.1@4UN|0M05c3Q/@Ng.r304.7Tzz41>g7YgQgUN0g3?kMfj/WR.1O]0M1.21wM2.21tX1802E1AN1w?1XLX1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.218M2.215KgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.7KbI6?707P08.82M7Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.81TzYfZw_T6l0b?FTg05s0g.uF@cg4>Gu4?z08.7q_0Vv/Cj0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>GSM1.1_LUR0g.iFUg0jKN80380vc0D/__Q43g02V5w1iFQ4?qtQ02LHh?1?Pz03.92DeM025MnI83qZ0BBo0x08X0kwfPxnUR0/@g5R3I9jqZ0BBo8x08X20EfPxnKho0kGt7_@j09/__@V5w0yIYQ0Qwv@UO0M?2gFPI?hsBX28SLg9pm28g2eMB83YUlXAm05bIcf_7o6iDZf_BVM3jY306VQ3jU306VS3jQ306VN3jM306VP3jI306VR3jE306VT3jA306VM3jw3w6VO3js3w6VQ3jo3w6VS3jk3w6VN3jg3w6VP3jc3w6VR3j83w6VT3j43w6VU3j03w6VW3iY3w6VY3iU3w6V@3iQ3w6VV3iM3w6VX3iI3w6VZ3iE3w6V_3iA3w6VM0g230eVQ0g630eVM3iw306VQ3is306VS0ga30eVN0ge30eVS3io306VN3ik306VP0gi30eVR0gm30eVP3ig306VR3ic306VT0gq30eVM0gu3weVT3i8306VM3i43w6VO0gy3weVQ0gC3weVO3i03w6VQ3hY3w6VS0gG3weVN0gK3weVS3hU3w6VN3hQ3w6VP0gO3weVR0gS3weVP3hM3w6VR3hI3w6VT0gW3weVU0g@3weVT3hE3w6VU3hA3w6VW0h23weVY0h63weVW3hw3w6VY3hs3w6V@0ha3weVV0he3weVX0hi3weVZ0hm3weV_0hq3weVM0hu30eVQ0hy30eVS0hC30eVN0hG30eVP0hK30eVR0hO30eVT0hS30eVM0hW3weVO0h@3weVQ0i23weVS0i63weVN0ia3weVP0ie3weVR0ii3weVT0im3weVU0iq3weVW0iu3weVY0iy3weV@3ho3w6VV3hk3w6VX3hg3w6VZ3hc3w6V_3h83w6VM3h4306VQ3h0306VS3gY306VN3gU306VP3gQ306VR3gM306VT3gI306VM3gE3w6VO3gA3w6VQ3gw3w6VS3gs3w6VN3go3w6VP3gk3w6VR3gg3w6VT3gc3w6VU3g83w6VW3g43w6VY3g03w6V@0iC3weVV0iG3weVX0iK3weVZ0iO3weV_0iS3weVM0iW30eVQ0i@30eVS0j230eVN0j630eVP0ja30eVR0je30eVT0ji30eVM0jm3weVO0jq3weVQ0ju3weVS0jy3weVN0jC3weVP0jG3weVR0jK3weVT0jO3weVU0jS3weVW0jW3weVY0j@3weVkMg.1F_j@cgs71MvHv_0U02jzYfVg_T7I8w4W0TXIb0350nXzI308?il0b?Xbw.16X2w1h0d@FTA?44MYe2Dag02Men/OfX2o0L01@UQ3MW?4M1UwN9KBM1Tzk_vfKoo0146wYi3Hh?_?GV1?WKgg08ec0Ye?1eJg?k03rA9053H5g06?SV2g0lM5UwN9KBWN4?M0dM5Tzk_vfKgw04bDAk5jH4g06?SV2g0BWO801M0aKgA09461802Dav__Men/QJ6abI9w3407Xzgf4w?jz8f4M?jH5?5?THUw05?SV2g0kKgA0UKI1?o03uI@?o03rA9?6V2g0@WR.M0dKgw0leJ3?c03uJl?o03rA804bzkf4E?zH9?6?SV201iUR3Ne?8Kgw0meOU0b?vc1>erqsV04118f2wMen/OUgj3MEbA402KDig?Men/OfX7w0601YM4>VnFPA0gbA405x18f3wMen/Owgj3MUbA402uDig?Men/NTKhg0aKJ_Yuw010v@FXA?atV?11cf3wFOA?I3B/XRKME_QE0vA6wYi2Dag?Kgg0eI3B/YGKMC07Q0vKdgYi?1ecMYj?1eIB?k03uJ3?k03rA902mV2g13WN801w0dWUg01w0dKgA04HA908jH0g03?SV2?5WRw?M0dW@?1w0dKgw0k@fwYiw02eIR?o03rA80efzUf4U?yV1?WKgg0zGsF/0Vv/6MoEKME_Q80vI3B/Y9ucw8.5auE?70Vv__@@SV1?OM2>T6Men/J5Khg0aKJ_Yuw010v@M2>SsFWw?s3B/XdWvQ__aV1?RM2>T1Men/IZKhg0aKJ_Yuw010v@UT0M4?4Bg1M0eNU>hGvQ_HD0Vv__@@Hz82.1iDG?1Men/KOKgg0cI0w.dvs3B/X2GvQ_Yk71@JLY3?9c3g.9nrA40e_zYfWU_T6DW__Mo83w062wU0yV102OIY40wXf10ailbi?FUg07rA402L0c.3nP0Vv__@MiV1022X2w3201YFiU?s3B/XiHA40abIa0bB07ODu.F_g1P9k0806Dtf_zM1.1NyUO0g.iFTg1xus0Q_0M1KswQ@0M1Kt0QZ0M1KtwQY0M1KsgQX0M1KsMQW0M1KtgQV0M1KtMQU0M1Ks0QT0U1KswQS0U1Kt0QR0U1KtwQQ0U1KsgQP0U1KsMQO0U1KtgQN0U1KtMQM0U1Ku0QL0U1KuwQK0U1Kv0QJ0U1KvwQI0U1KugQH0U1KuMQG0U1KvgQF0U1KvMQE0U1Ks040wM3Ksw41wM3Ks0QD0M1KswQC0M1Kt042wM3Ktw43wM3Kt0QB0M1KtwQA0M1Ksg44wM3KsM45wM3KsgQz0M1KsMQy0M1Ktg46wM3KtM47wM3KtgQx0M1KtMQw0M1Ks048wU3Ksw49wU3Ks0Qv0U1KswQu0U1Kt04awU3Ktw4bwU3Kt0Qt0U1KtwQs0U1Ksg4cwU3KsM4dwU3KsgQr0U1KsMQq0U1Ktg4ewU3KtM4fwU3KtgQp0U1KtMQo0U1Ku04gwU3Kuw4hwU3Kv04iwU3Kvw4jwU3Kug4kwU3KuM4lwU3Kvg4mwU3KvM4nwU3Ks04owM3Ksw4pwM3Kt04qwM3Ktw4rwM3Ksg4swM3KsM4twM3Ktg4uwM3KtM4vwM3Ks04wwU3Ksw4xwU3Kt04ywU3Ktw4zwU3Ksg4AwU3KsM4BwU3Ktg4CwU3KtM4DwU3Ku0Qn0U1KuwQm0U1Kv0Ql0U1KvwQk0U1KugQj0U1KuMQi0U1KvgQh0U1KvMQg0U1Ks0Qf0M1KswQe0M1Kt0Qd0M1KtwQc0M1KsgQb0M1KsMQa0M1KtgQ90M1KtMQ80M1Ks0Q70U1KswQ60U1Kt0Q50U1KtwQ40U1KsgQ30U1KsMQ20U1KtgQ10U1KtMQ?U1Ku04EwU3Kuw4FwU3Kv04GwU3Kvw4HwU3Kug4IwU3KuM4JwU3Kvg4KwU3KvM4LwU3Ks04MwM3Ksw4NwM3Kt04OwM3Ktw4PwM3Ksg4QwM3KsM4RwM3Ktg4SwM3KtM4TwM3Ks04UwU3Ksw4VwU3Kt04WwU3Ktw4XwU3Ksg4YwU3KsM4ZwU3Ktg4@wU3KtM4_wU3Klc4>s0w.sS@cg8>Gu40eWBfw01FQA?ecMYa?944wYa2Deg01Men/CcX2M01M1@Ag7MFWtQ?V1cf2EM2>KQMen/Dd67bIa04h07X4i.6laBbw01UU1>4Men/B@Kgg0EKME0hU0vatU?70rILODeiDC.M6S48ycBKgg0mbA402GBjw01FPA?s3B/VtbA40bbIa01W07P0U.78zz4e>aDx02zKho0arA404KV1?W3u6V101q69912W?X2I@LM1lFUg0auME01E1veME?Q2vecME.A45gE06Vww1zUS3k.cUQ1g?2gFRI?rC206jzodg.PzU5.92DmM01Ko80rKdwR.3eM5_Xe0peKX?803ecgk.Aec0k040AbC201rz4dg.Pz8502093zo503092DmM04Ko8?uc0R.3bC2023z8dg.OVww1yUS3k.cFXv_THA405yV1?GFkU?qsV?70Vv__@fSV102OX2r_z01YKgg0ac3B/UINyOX2o0d01@Kgg0aI3B/UKKNU05w0vHfd05zIm?507NgA5?IYQ0uKNU?o0vedws.9bAk02JEwf4Uqa3NgeJLYnw010v@M03/DLN0I?1LAF_j_3I0g/VVYgr.rTavQ_RCV1?GMen/y9X7w0801@Men/A3UO0w.kFXw?s3B/UOXA403b08.2KT0Vv__@2eV5?Hq83Ne6ywYk3Hr_5U?g7_HA402z0Vv__@hiDZf_uKgg0ac3B/V3qvQ_Wr0c.2FT08.2FD0Vv__@2aV1022X2w0701YFiU?s3B/UqbA40abI9LXL07OV1?EMen/zKM2>GDFXw?s3B/TVGvQ_Yf08.2DyDK?1Men/vsF_j_Ks3B/UF@cw8.5c3B/UsrA403KV1012FXw?s0w.atc3B/TNqvQ_W871Ms71Ms71@JLY3?9c3g.86ufM_M3_sk4MYa30Vv__@a7zc2>iV102yM1>FXFMw?bA402eOng0iFNj__Gu40a_0g.2DiV101jIBQ0hqsk__WO8w2Myr.EGM01XIK01F07X0o.2DyV1023IBQ0qask__WO8w2Myr.EGM01XIK02G07X0I.2DOV103zIBQ0LGsk__WO8w2Myr.EGM01XIJw2e07Vo0f2wX081Iwd@X0w1dMd@X0o1409@UP2w2?4M2>DIBg0M0bDys2f0nILODej0nogy8Onzkf2E02jBjf2A?11gf2Egj3MFc3B/YfuMC0480vKdwYaw01edgYag05A4wYb30g.2CaDeg1gMen/wegi3MIc3B/TKqvQ041ocf2wX380Owd@X3w0x0d@X3o0LM9@UN2w2?4M2>CGBg0g0bDys270nILODej0nogy8Onzkf2E02h1gf2EFPA?c3B/X_KME0c40vGuU?6V1?GMen/t8Khg0a@JLYj?10v@Kgg0eKcwYa?5c3B/WrxyOKgg0aI3B/TdbAk02LHr_4M?g7_I0w.9ZquU?70Vv__ZJqDZf_pm23MEeMy0is3vKME0ek3vKMC0802vKfwE0w01c0w.9lVk0U02VUD0KVkPMG.FQA?44MYaz0Vv__@X7I9L@S07Xzkf2E01p18f2MM4>DmFPA08c3B/Txk4wYb30Vv__ZP2DZf@TUS2w4?4UO2w2?4gQ1w09k0802Dt01dFQ40_Wu40e_08.2h_0XILODej0Xogy8OnzUf2E02h1gf2EFPA?c3B/Xt@MC_TM0vKdgYaw0144wYb30g.2pyDeg0MMen/tbgj3MIbA402qDig?Men/syF_j_us0w.8YqvQ_QL08.2jqDK?1Men/pjF_j_lI0w.8UGvQ_LH08.2dSDZf@aFQ40_Wu4_PeDZf@UUR3MG?4gi3MIc1>9oqsV0330Vv__ZNh18f2MMen/q_F_j_hKcgE1?1ecwE0w01bA40853g1?Bg0w0au40xKDgg3_FUj@Os1KO_asVc1Jx28z9udwYaw09elcYag?450Yax1cf2AMen/I4X2r_2g1@US3MG?4UR3MF?mgi3MIc1>9aqsV0530Vv__ZJl1cf2MKgg0aat9?30Vv__ZGODZfY3UU2w4?4UO2w2?4gM2?9k0802Dx07zFM40_Wu4_NTBjf2E?2Dig?gj3MGc3B/WPeMC_J40vKdgYaw05A4wYb30g.2f6Deg0wMen/qwgj3MIbA402yDig?Men/pTF_j@PI0w.8LauU?70Vv__ZqSDZfWMM2>ysFXw?s3B/REWvQ_Gr0w.5Prz88.1aDt065VM3jY306VO3jU306VQ3jQ306VS3jM306VN3jI306VP3jE306VR3jA306VT3jw306VM3js3w6VO3jo3w6VQ3jk3w6VS3jg3w6VN3jc3w6VP3j83w6VR3j43w6VT3j03w6VU3iY3w6VW3iU3w6VY3iQ3w6V@3iM3w6VV3iI3w6VX3iE3w6VZ3iA3w6V_3iw3w6VM20230eVO20630eVM3is306VO3io306VQ20a30eVS20e30eVQ3ik306VS3ig306VN20i30eVP20m30eVN3ic306VP3i8306VR20q30eVT20u30eVR3i4306VT3i0306VM20y3weVO20C3weVM3hY3w6VO3hU3w6VQ20G3weVS20K3weVQ3hQ3w6VS3hM3w6VN20O3weVP20S3weVN3hI3w6VP3hE3w6VR20W3weVT20@3weVR3hA3w6VT3hw3w6VU2123weVW2163weVY21a3weV@21e3weVV21i3weVX21m3weVZ21q3weV_21u3weVM21y30eVO21C30eVQ21G30eVS21K30eVN21O30eVP21S30eVR21W30eVT21@30eVM2223weVO2263weVQ22a3weVS22e3weVN22i3weVP22m3weVR22q3weVT22u3weVU3hs3w6VW3ho3w6VY3hk3w6V@3hg3w6VV3hc3w6VX3h83w6VZ3h43w6V_3h03w6VM3gY306VO3gU306VQ3gQ306VS3gM306VN3gI306VP3gE306VR3gA306VT3gw306VM3gs3w6VO3go3w6VQ3gk3w6VS3gg3w6VN3gc3w6VP3g83w6VR3g43w6VT3g03w6VU22y3weVW22C3weVY22G3weV@22K3weVV22O3weVX22S3weVZ22W3weV_22@3weVM23230eVO23630eVQ23a30eVS23e30eVN23i30eVP23m30eVR23q30eVT23u30eVM23y3weVO23C3weVQ23G3weVS23K3weVN23O3weVP23S3weVR23W3weVT23@3weVkO>1M2.1uLUN0w.2FTjZ9Y?/RHYgb.nFavQ_h@Dgg3_FUj@oY0w.6AWvQ_uiD0g3_FUj@mI0w.6yGvQ_xM71Ms71Ms71Ms7W@_Ms?AN2w?1gNU_3_ofZNFPA?s3B/R0sgE.k7GsV?70Vv__ZfD4a.50qDeg01Men/jNN2w?1g2FPA?s3B/QWqsF?3HX_4g?g7_ws71Ms71Ms7WS_Mc?AUN3Mu?4F_L_oecgY.9c3>jPud0Yh?1eJLYd?10vQ;J0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr0yFLaViWQ3o5Pts6ARjulOAzSmu_LrTO7cGWMEFjIVcM9bizFGCYHBfuKVX5hXbfvP2R_@CKQmFaStpqT43v2SoTS3LMFSsCot1w5Lt9qktdfCVTSW0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y0xqVLYfqD1C1zLa4g4bn86@5ITSKiprrX1TUhyThTu6QZbkYtjygCztI_wvSEdKAJaeC@nlLwRYTe@T2ZLv8pm_iEbyK7EkuX4HHwOS6Pys2gqFWMUSfT87pUk505sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS0QHSgghWod6Xp_6CL5tDfXk6TkyOdALmRGfEEt6jvzzoMIhfT_9i@rDvrUW@X_AnJXV3ob2eRvXk6Tq9QOLw4dFWmCvtiIPToBttw6lDONBIdD5KqMrDY0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h0gJsPc37umG2ANvTgRYOkdFWmEQrJDYHmu8hJFwKd1aTWl1ftylRWjhN6TjRLjXjr9xm3GRksWzL01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh0GbSZYxRxEj171ohSHJCoJfiw2K9Vv1ow8NwPpIH4bWigxJfiRlHf48Y@WBpCULqkf9JAMH57u03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH0wYLeVsky4LA7u2rpcaTWNvbTDK2Q7AbYtAgXry39VTbyAUdnF7FviSow7rsgps6HQz@BzFjmup9mz,7s7c9rK3C4ICgBhKHgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ%0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV`0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD~0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE!0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP^0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw$05sjSc6rdDW3PRzzgwdZhdIC5pAqWz#>1T1P2mXwVxb9A9krE.4>1IXgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ%0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV`0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD~0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE!0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP^0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw$05sjSc6rdDW3PRzzgwdZhdIC5pAqWz#>1T1P2mXwVxb9A9krFDpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g?2lIr6ga02Q0sC8?7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis?7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA?7hFrmlMey1Opm5A86lOsCZOey0BsM1Dpnh3k5lQqmRB?1QqmRBs5ZCrDoNog1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq.t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0NdCNIu?Bc3xU.Bc3xUbikMcjpIr7w?5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ?4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1vq65Pq20D9O0D9OAI.w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU?5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt04dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI.w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU?4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK?1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng?t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng?pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng016McX>c,n__Zvk>jf__SVg.1E/ux>cj__@kk.17f__Xbg.5I>5,01uB8?nwe0hIc3W01;6>1P__Zu>3L0142gQh0E8aPk8b,5w>U/r9>KU0hEsdy0O92UEayMCc28Q7zwqf1koeQ0g30oUaPYXdPcLaOsz73G01gwI2UwHfPITcOYH9OcseE0522SUaPYXdPcLaOsz73G01gwI,l>9j__ZSU.6y016xwW73owcygKa2EI9z0yd1UU6zMlg3Kw3j9wmChk31kUaPYXdPcLaOsz7NJDo3G01gwI2q0HfPITcOYH9Ocv6StweE0522M.4M.3I/zY.1Vo0hEoexMS838AbywGb2oM8zgue1EY5j0Ww0Mc1xwHfPITcOYH9Ocv63G01gwJC2I_ePsPbOID8NYoeE0522M,08>jP__@J,m01czwqf1koeM082hc_e3G01&&&&&&&&&&&&&&&),4G:ik;4To]4;1pg:c;3Kw:3g<2vM:1A<1dO]r]w:6w<4Tg:1M:2,1L__XR:v]1g;kg]o;2a]a:pA:2M:o]c<1fE]2:u]5]7:1s;d2]7;1Pw:2:ng]A:6,1L/@;1Kw,r/_M:1,6/_:6Gw>1L/V:3k&&&).4Tw&&&&,0Zm;3To;fBw;@S;3Zo;fZw<10m;43o;glw<11S;49o;gJw<13m;4fo;h5w<14S;4lo;htw<16m;4ro;QLw<3nk;dbU;R@;3s@;dA:TJw<3q6;dIw+3i@;dLE;QLw<3su;dbU;Tp;3uO;dbU;TSw<3ws+0QLw<3xk;dbU;Uu;3z4;dXo+3i@;eh8;QLw<3AW;eo8;QLw<3D4;ex:QLw+dn:vY,4].ka:Wp+0dkg;vY,4].kf:Ww+0dhw;vY,4].kkw;WDw+dgM;vY,4].ko:WL]0hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F;2>1>40hQ4A0jdxcg:hQ;17g>2>1>40hQ4A0jdxcg:eW:Yo>2>1>40hQ4A0jdxcg:DY;2wc>2>1>40hQ4A0jdxcg:hQ;1aM>2>1>40hQ4A0jdxcg:DY;2vM>2>1>40hQ4A0jdxcg:DY;2vM>2>1>40hQ4A0jdxcg:f6:YC>2>1>40hQ4A0jdxcg:E3;2wq&;c.4;1O=c.8;1Y=c.c;2a=c.g;54=c.k;6Gw{0c.o;6W=c.s;7e=c.w;d2=c.A;eW=c.E;fa=c.I;hQ=c.M;DY=c.Q;E8=c.U;WT=c.Y;X4=c?1;1dO=c?14<1dQ=c?18<1dS=c?1c<1dU=c?1g<1fE=c?1k<1g+c?1o<1gE=c?1s<1iA=c?1w),0c?1A<1mG{0gg0__4)>3g8.I;hQ{3M8.I;i{08w8.I;ik{e04?1s<1iA]1>h04?14<1dQ{qM8.I;iE{tM4?1;1dO=g0__4)>Bw8.I;iI:eY>Fg8.I;ms:bK>Jg8.I;po:q8>TM8.I;vY:um>Xg4?1s<1iC]4.12g4?1s<1iE:g>16M4?1s<1mE]8.1b04?1o<1gE:1g.1eM4?1o<1gY:1o.1iM4?1o<1hi]U.1mM4?1o<1hw:1g.1qwg0__4).1t04.Y;Yr=g0__4).1ww8.M;DY[1y04?18<1dS[1Bg40__4<1dU[1Dw>U;WT[1Ig4?1o<1iA[1Lg40__4<1fE[1QM8.A;eW[1Si8(1Yy*23x*3e18(2718(2b18(2hh8(2lx4?1o<1i]0M.2qh8.I;DA:1o.2vh*2wN4?1o<1hQ]M.2Bh8(2F1*2H18(2L18(2ON8(2Ty*2Xh8(2_h*32N4(36N8(3dx8(3ih*3mN4?1o<1ic]M.3rx8(3vN8(3AO*3Hh*3Kh4?1o<1io]M06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0pSlQgR1lt6BJplZJomBK07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01vnSdUolZCqmVxr6BWpk17j4B2gRYObz80nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80pCZMpmV}06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1Cpn9OrT9}07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB07hFrmlMnSxxsSxvsThOtmdQ071Lr6N}07xJomNIrSc0pD9Bomh}071Rt7d}07dQsClOsCZOg4tcik93nP8Kcw1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1Pt6hFrA17j4B2gRYObz80nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz80sSVMsCBKt6p0hQN9gAdvcyUQ06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CoSNLsSl}06tBt79RsS5Dpk17j4B2gRYObz80nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt.bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP&&&<1I>7]8;1O:78:2g-4{Kr/Zw:2:v:1Y]U,M[2{e,I]w;8E:yw;2W,g>2]w:6>4,3]8;54:kg:pA-1[18r/_M:2;1GE;6Gw:@,M{w:2>lm/_U]w;rE;1Kw:k,g>1]w[6g>4]8;7e:sU;1t,3{8:1w.1K>1:12;3gw;d2:7w,M.1k:2]o>u,4:1w;XE;3Kw:fw-g[7c>1]o;fa:YE:G)4:2>1@,g:6;4t:hQ;1ow-4{x,4:1w<2vM;9_]aw-g[8E>1]8;E8;2ww;4HM-8[2i,g:2;eJM;WT]Q-1{E,4]w<3Ig;eN:1o)w[aE>e]c<1dO;3T8]w-8]w.2S>3M:3;jt:ZQ]8-2]8>Mw>4]M<4To;ftw:2)w[cY>6]c<1dU;3Tw:s,4{8:1>3o,g:3;jW:_E:1w-2]8>Tg>4]M<5]g]0E)w[eo>1]c<1gE;42w:v)8[3I>2]3;kF;12A:go-2{Yg>4:c+0gF]bw-4]g.fE>7+1mG;4b]i)4{1,w(13U:vU>6M.3w:2]o>2g>c*iZw;3OM-4[14>3*4@z:h)1]'
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
