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
    #    1. In some deeply nested chains of combined subshells + background forks with multiple subshells + forks before the 1st command in the sequence, some commands may have an incorrect nesting level. That said, commands should still be grouped together roughtly correctly, and will still have accurate timing info.
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
        if ${timep_IS_SUBSHELL_FLAG}; then
            if ${timep_IS_BG_FLAG}; then
                ((timep_CHILD_PGID == BASHPID)) && ((timep_CHILD_TPID == timep_PARENT_PGID)) && ((timep_CHILD_TPID == timep_PARENT_TPID)) && timep_SIMPLEFORK_NEXT_FLAG=true
                timep_CMD_TYPE="BACKGROUND FORK"
            else
                timep_CMD_TYPE="SUBSHELL"
            fi
            ${timep_IS_FUNC_FLAG_1} && { timep_IS_FUNC_FLAG_1=false; [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO - 1 )); }
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


    # load current log (sorted by NEXEC) into array
    mapfile -t logA < <(sed -zE 's/(^|\n)(TRAP \([^\)]+\)\: [^\n]*)\n([^\n]+)\:\:[^\n]+\n/\n\3::\t\2\n/g' <"${logCur}" | sort -V -k11,11)

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
            timep_hash - 'cmd0' <<<"${cmdA[$kk]}"

        fi

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
b64=$'45374 22688\nmd5sum:41f6f99eb5291abc6852bfc2e24048e0\nsha256sum:9368ea8a5e67eb74e9238f8259954672403df1e4b448f29ea8f356d8012905fe\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n0000000000000000000000000000000000000000\n000000000000000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n0MCofXY5C3S_8pwZOQ\n000000000000000000\n0hQN9gAdvcyUObzk\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\naUL\n000\n18\n00\n__\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\034vQlchw810g{?c0fw01=1{21h{>4?e?a04?7w0t?4<5${Phg]3d5{g[g<g;8{w[2}3s6}dMo[1[1<1w>cwZ}O4Q]38jg]8w5}U0A[4[8<6<U3Q]3wjg]e1d}M04]3?g}w[1;g>1M0w]702}s08}A[2g[1{4<1<80S}w3o]20dw]3{c{8[5fBt6g4<w3o]20dw]80S}c{M{w[kelQp0g>2Mdw]b0S}I3o]1k[5g[1[1hVnhA1w!+?g[5bBt6g4<O3Q]38jg]cxd}e08}U0w}4[1<1g<3<hQVl02h@nbkc1QJCC7sHR6Em2nSe05xEYMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q>Yvg03_9jFd?1E;eDw//_OkOjg?q04>3FQf//YBaAQ?6w2<Ws3//_9i9d?1E0M>eCM//_Okqjg?q0g>3FEf//YB4AQ?6w5<Wp3//_9gFd?1E1w>eC0//_Ok2jg?q0s>3Fsf//YB@AM?6w8<Wm3//_9v9c?1E2g>eBg//_OnGj>q0E>3Fgf//YBUAM?6wb<Wj3//_9tFc?1E3<eAw//_Onij>q0Q>3F4f//YBOAM?6we<Wg3//_9s9c?1E3M>eDM_L/_OmWj>q1<3FUfX/_YBIAM?6wh<Wt3@//9qFc?1E4w>eD0_L/_Omyj>q1c>3FIfX/_YBCAM?6wk<Wq3@//9p9c?1E5g>eCg_L/_Omaj>q1o>3FwfX/_YBwAM?6wn<Wn3@//9nFc?1E6<eBw_L/_OlOj>q1A>3FkfX/_YBqAM?6wq<Wk3@//9m9c?1E6M>eAM_L/_Olqj>q1M>3F8fX/M&.zjSFjw?i8Q5EAU?4wV@7gli8I5VAE?4y5M7g9_@0f7U:MMYvw;.zjRVjw?i8QRsAU?4wF_Ay9Y4z1XzZ8Mvw3i076id7@t1h8yMnliw?i8n0t0z_U6of7Qg?ccf7U:YMYu@E0ZhkU>1RaRl8wPSOiw>4y9Vngci8QZFAw?ewV//W6j//61hRe>1nscf7M333N@:fcf7LHFt//MYvw;2b1jFi?.yt65M7hdyvx8xsAfx6o1?3TQ4w1YkydfhNe?1CpyUf7Ug:6pCbwYvx]pwYvh>3Xomi8f60j72Muw83XricMini3DNtuDTQcdC3Trri8Q5SQQ?46U88eUXk6V1<6p13SXgpwZL9p8M?1CggZKWkydA?4?1C3Tbj7Sofsd80pwZMXg0f7U:pwZLN6ofrYNC3_XBi8f046ofSYdC3Tbh0mofe432pw_LMmofrYxC3Tbg0mofSYJC3Px`01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px(~0mofSYJC3Px0OCofXY4fak3Mi3Dg3UkT//NMndk<g>8DUi8n93Umq_L/MV2b1rFg?25M0@55g4?4yd1qJc?1C3TrrLy23KeS_1<6ofrOlBbM?pwZKRCofrKZ8zp?1>pwZOQNZC3T3i06ofseQ03N@:6ofrYhC3S_cpw_@Vky3M11C3ZL3pwZOQg5C3Px(~0mofSYJC3Px`01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px(05C3ZLbpwYUgcFC3@_13OB0Y4wVQ0@5d//Ys5DkY>4>.wPRRiM>7g1MRcNM0@yi8QlhLT/Un0t1@U0g<@yi8Ql9<87x>g04yd1ivZ/Z83Qjgi8Alf4I?5L3pyUf7Ug:4y9Qky5Qw@4@M>fvncs3HcSpCbwYvx]pCoK3N@4]f7Ug:f8fef0Y1Ay3M069_QwVMg@4IM>4yd50q3UwtRUAydk0x8et5ObmpCbwYvx]pCoK3N@4]f7M3Oi0YUYnMm@4y9Q4y3Mwx8et5PX4wVO7dCi8Rg0v8fef0Y1AwVODdni8Rg0L8fef1Y1w58esFPhQydk0fO3PzMv0o2i3DasPt8zl04YwYUY7M60QwVODcDi8Rg1v8fef1Y1wh8esFP5Qydk0rO3PzMv0o5i3DasMvO3PzMv0o6yvzTQccf7Q?i8Rh24wVQg@3q//@LEyvz3pwYvh>glt1lA5lglhli8DZkQy1Xcw>.yngA44y9l2gow3YJ3Um5<w7Y107l_W4XZ/YNQAydv2gEibw:g>bU1<i8B492zErLH/Un0vwLSh2gK0g@5J04?4ydt2gMi8QZsOk?ez@@v/ykgA38n03UjI0g?i8I5MQk?bY>40i8I0i8A49eyG@v/ioD4i8n03Uiv0g?NQgA304>3HeAyddiYB?.yu_E9vH/Qy912h8xs0fxf01?2_>10exK@v/ioD4i8n03Ui@0g?NQgA3;.Likz8EjADfbbhj7Jir@P0g<4>Yv04yb32iW>10bU1<j8DDW9HU/Z9ysp8xs1QsAOb3vJ8?1dxsBQbAi9XQO9YAO9VA7_QkKd33h1yslcyu0fJx.wY01i37lig@LXQwVMnnJWWIf7M0NM0@yj8QdDvH/Un0t1@U0g<@yj8Qdu_T/U7x>g04yd1nXW/Zc3Qj8j8AdAQw?eKrA4ybf2jE1_z/QO9VQ69NUn0tk3Eqfz/UJ490O5M0@4G<4ybh2ggi8n0t0d4yix8yQgA64y5M7g3i8AEi874O<4i9@5JtglN1nk5ugl_3W2zU/@bl2gcxt9QouxXZ/_yPzE1fD/Qydfvsz?.ysoNMexPZ/_grY1<WXB8yMkIh>LM>g.yM.yggAW1fU/_7h2gc0g>4C9N4y5M0@5FvX/QydfpQz>NMewNZ/_WXN8yPMAW7rT/_HB4ybf2jEq_v/@Ba//i8QRsic?4ydfmwz?3Eo_z/Qy912h8xs1Q8rY>40Wb3T/Z9ysh8xs0fxkH@/Z8yPMAW2LT/_HCAydflEA?3EPvr/@Bl//WbfS/@beewY@f/i8DKi8QZqyg?4y9Mz70WazS/_Fcf/_MYv045nglp1lk69Rk5kioDQLBI>1lkQy9@Qy3X2zEX_r/Qy5M7gii8Dvi8D5Wc_S/@0v0f_nngwi8f4a4i9WAO9VAy9TRJtglN1nk5ugl_Fnfv/MYvg019yuZ8wYk1iiDvioR_0uzRZL/i8Duj8DWioD6i8D7W2jT/Z3Nwg@04y9X@xTZL/i8Rg_Qy9NQy912h8ylgA2ez2ZL/i8Jk90x8yuV8yst8ysfEX_r/Qyb32hcyvv6h0L_0ey@Zv/i8n03Uid<ZA0Eg0@5CM>4ydt2goKwE>.ytZ8NQgA6;3EQfr/Qy9NAybh2goi8n0t0m0e01QfAy9TAydfigy>NM37JW8LR/ZcyvvE4_r/Qy9T@wbZL/i8f4a4y9W5JtglN1nk5ugl_3pwYvx]h8DFj8Dyj8DTW8bS/Z8ysnHMwYvh>j8DTWf3R/Z8xs0fxmP/_Yf7U:j8DTcuTEJLn/Qy9T@yKZv/WW5CpyUf7Ug:911lA5lglhlkQy1X201?23_McfzV01?23_M5@aQybrwwNM81Z?.3QjEhj7Aw_Y3thFcySoggo0Y901c3QjwWMJC3NZ4>NXkkNV4ydt2hgLM8>3EZfj/Un03UnQ<i8Jc95xczrgAA<4yUP_tjUWmrN2.qlMAk4123M.Z@B8MvA_ic7W1QwFOAw1QQO9ZH///WdXR/Z1ysq5M0@5cM4?4xFx2iw<g48f04xFz2ig<g48f04w3z2io<i071i0ec9aw>.0tB8xuQfxdM>.znMA44yd5ugw?2@g<370i8BY90zEH_j/Qybt2g8ct98yu_EUfj/QS5V7gGLA<.znMAk4y9Sj70i8QlGi>ey0Zf/ct98zngAk4O9V@yNZf/i874804?4i9Y5JtglN1nk5uMSof7Qg?4OdJ2ig<cvZcyvrE5Ln/Un03Ume<i6C49a<10gwY0i6Cs99<10gwY0i0es99w>.0sd80VMAG<eDP_L/pwYvh>i8QZei4?370W5HP/Z1Lw4>3Hwmqgi8Dei8QZ3O>370Wb_P/_Fqv/_SoK3N@4:3E6_f/UIUWajQ/Z8zjQl8g?i8D6cs3E4_f/@KTAezXYL/yPzExfj/Qydfqkv?.ysoNMezPYL/WVugglhlkQy3X7.zngA4ewKZf/i8QRFxY?4Ob84y9NkO9V@ypY/_xs0fx441?.zjmk7M?j8DDW8bP/@9MUn03Uj8<i8QRxNY?4O9V@xFY/_yse5M0@4jM4?4yddnEv?1cyuvEkff/UD3xs0fxhU1?2bh2ggw_w33UZx0M?3Uhb0w?i8QZL1U?8fU0Dkii8JZ24yd1qMu?20fM.3QjUibwB8Oa4V9POOQydl2goNQgA5;.zngA54y9h2goW9_U/@5M0@5yM>4Obh2goyQMA54ydv2gwcs.zhku7M?LB<3EBLb/Qydv2gwWfPN/_Hu6oK3N@4:2bh2ggw_w33U@j0g?3Ugd0g?i8QZ9xU?8fU0Dkii8JZ24yd1hou?20fM.3QjUibwB8Oa4V9POOQydl2gocvp8ykgA6ewk@f/xs0fxbg2?2X0g>eIj3NZ4?2bv2ggi8DKW6jY/@9MQy9X@zWYv/i8f4s8DomRR1nccf7U:j8DCi8QZiNU?370W4vN/_HKgYvh>yQgA48fU0M@fgM8>@4Hg4?4ydfoot?23@09R4Aybvgx8zglS7g?w3Y0i0Z4@37ii8RQ91z7h2go;exXZ/_xs0fxmv/_@bj2goi8RY922@8<370i8QlZhQ?exTYv/i8RY923ETv3/@Bm//3N@4:1cySkgi8JZ244fJwgAw3Y03Um2<i8QZ0NQ?8j03Ug20w?ibwB8Oa4V9POOP7Si8Rk91x8ykgA6ew0Z/_xs0fxuP@/Z8yQMA64ydv2gwi8QlyxQ?370Lz<.ynMA2ezSYf/i8JQ90wNQAO9V@wDYv/Wt3@/ZCA4ydfl4u>NMewOYf/Wq7@/Yf7Qg?8j03UhN_L/Wo3/_Yf7M1cySkgi8JZ244fJwgAw3Y03Uhq0g?xc0fxbnZ/ZCbwYvx]ibwB8Oa4V9POOQydl2goi8RQ91j7h2gk;4y9h2goW4HS/@5M0@5dLX/QObh2goyQMA54ydv2gwcs.zhn97>LB<.ynMA2ewYYf/i8JQ90wNQAO9V@xJYf/Whr@/Yf7Ug:4Obph.yTQ8gg@S12i0fM0fxe8>24M0@4k_X/Sqgct98zngA6ct491w;WcPR/@5M0@5KfT/UJc91x8znMA8bUw<cs.zhl67>i8BY90zEM@/_Qybt2g8ct9cyuvEZe/_@Ct_v/3N@:4ydflAt>NMezWXL/WmDZ/Yf7Qg?4ydfi4t>NMezyXL/Wl7Z/Yf7Qg?4ybj2goi8RY92.zhnG6M?cs2@c<exrX/_i8RY923EMuX/@AW_v/3NZ?4ydfg4r?24M0@5GvX/@ykYL/WhTZ/Yf7U:i8QZUhE?8j03Ukp//WZUf7U:i8fI24ybfmkX?2@0g>ezXX/_i8IZf3I?bU1<WeHL/Z8yPQjeM?Lw4>3ESu/_QybfgEX?2@0g>ez8X/_cs.wYg8MM3P3NXWi8fI24y3N0z3||!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!^?3<8g<4<6<44x4g0C508:8g>2k>346@RqGEecYsHvhTuF5lQKEBsWDa4Qqnk${0Ww>1$xw>.%4<2$E<1$rw4?.%ug>.%sM>.%nM>14%d04?.%Hw>.%Pw>.%NM>.%jw4?.%w<1$j04?.%704?1$pg>1$pM4?.$g>2$mw>.%UM>.%Rg>1$@<.%204?1$lg>.%lg4?1$rg>.%gw4?.%b<2$BM>.%hw>28%Cg4?1$K04?1405M2wkw]3{sM4?.0101M5}4Y[OM4?1405M1wkw]3{Jg>.010103}8g1}Fg4?1405M3wkw]3{xM4?1405M0wkM]3{05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB071Lr6M0sThxt01Pt6hFrw1Urm5Ir6Zz06pLs6lK06pOpm5A06pBsD9Lsw1UpD9Bpg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSM0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUNd017j4B2gRYObzcP04tcik93nP8Kcjs-:g02?4?g02?8?w02?c?w02?8?w01?8?g01?8?g04?k?g06?4?w01?8?w01?8?w01?4?g01?4?g01;g050dQ1>g[byhBwo>o0VM4?1<2kApo6>50f81>g<IV6m1w?103Z0g?4<9uhBwo>c0208?1<1R6CA9>201c2}O4Q}8[505}Q4Q}8[105}S4Q}8[dxd[54}8[,}254}8[5wN}454}8[,}654}8[80N}854}8{0P}a54}8[cwN}c54}8[10O}e54}8[3wO}g54}8[80O}o54}8[,}q54}8[bwO}s54}8[,}u54}8[e0O}w54}8[,}y54}8[2wP}A54}8[7wP}C54}8[,}E54}8[a0P}G54}8[ewP}M54}8[,}O54}8[20Q}Q54}8[,}S54}8[4wQ}U54}8[9wQ}W54}8[10O[58}8[,}258}8[ewQ}458}8[,}658}8[10R}858}8[5wR}a58}8[,}c58}8[a0R}e58}8[f0R}g58}8[,}o58}8[d8L}q58}8[f0f}u58}8{1h}w58}8{IM}E58}8[coL}G58}8[f0f}K58}8[61h}M58}8[2sM}U58}8[bEL}W58}8[f0f}@58}8[c1h[5c}8[4gM}85c}8[aYL}a5c}8[f0f}e5c}8{1i}g5c}8[4wS}E4Y}6;M=G4Y}6<2+I4Y}6<8g=K4Y}6<8M=M4Y}6<4M=O4Y}6<9g=Q4Y}6<7g=S4Y}6<7M=U4Y}6<9w+5[7;g=25[7;w=45[7<1+65[7<1g=85[7<1w=a5[7<1M=c5[7<2g=e5[7<2w=g5[7<2M=i5[7<3+k5[7<3g=m5[7<3w=o5[7<3M=q5[7<4+s5[7<4g=u5[7<4w=w5[7<9+y5[7<5+A5[7<5g=C5[7<5w=E5[7<5M=G5[7<6+I5[7<6g=K5[7<6w=M5[7<6M=O5[7<7+Q5[7<7w=S5[7<7M=U5[7<8+bg1Oow1QqmRBs3EwrTlQ86ZC86RBrmZOug1QqmRBs3EwsClxp21BsD9LszEw9nc0qmVSomNFp21xsD9xui1FrChBu3Ew9nc0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs5ZCrDoNog1QqmRBs5ZzsCcPcw1QqmRBs5ZEondE07hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc3xU02kMe7wJ9j0NdCNIu01QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt{1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD{1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt}gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw]4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM{20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw{lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ:4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK;4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ:4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK}imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw{imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK:19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK}pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng+?1;w<c<4<8;k>17jBk?g01M0g<9{8?s04;M[16McXl;A;Pf/s<b3e/@o<cd3/WM>2wQv/O<b3i/_s<Adn/OM1>wR/_A04?43p/_o0g?MdT/N02}5{1uB8?nwg0hIc1Myg0g?9<1M>28O/_U04<e44oe64Ef2Ts8w?_6zIGcOgy;1<14<4cX/TY1}6<5w>1YP/_pw4<3bM4e48c2twU801<1Q<Qd3/ME1}j<8w>3cQv/Tg8>123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6h0UUwMt73E020Y412wUUh0UMggUEgwUwgwUogwUggwU8ggI>1w<S<5Pk/@40g>48e48Y2gwUozwd23y2d14kea8M5igUMxwp13zy31Qseo60a3zxa3z113yx23y123xx23x123wx92Mbh2wUUh0UMggUEgwUwgwUogwUggwU8iwI0h<3M1?28Rv/7M8>123x2e0A8e68Q3gwUwz0h13yy61k4ec8c6hMXg0wcT0gEec4gea44e848e648e448e24sb<d<8g1?1wR/_ugg>123x2c0A4e68o3ggUwwMh43F010U812wUwgMUoggUggwU8i0I<k<L04?azr/Zf;4ge409a3ww|!!!!!!!!!!;k0k}g1g]dxd[g}3t0g}M[B08}d[c0k}6g}38jg]1I[2{q[d1d}7{8[fn@_SY:2[5[ewz}1w}108[E[7M8}b[1w{M}3EjM}8[K08}k{s[5M}28b[s[K2o}8[d05}2g[o[fX/SY;m2o]3/_ZL:4[Yf/rM;89w]fD/SY;dg!!!!!{0e1d$>co2}Rw8]3C0w]fo2}1wc}m0M]2o3}dwc]160M]5o3}pwc]1S0M]8o3}Bwc]2C0M]bo3}Nwc]3m0M]eo3}Zwc}61}1o4}9wg}S1}4o4}lwg]1C1}7o4}xwg#2KbM]5wN}HyY]20cg[P}O34}gcw]3wO}w38#2KbM]bwO}HyY]3wcw],}a3c]1UcM],}E3c]3EcM$?2KbM]20Q}HyY].d}9wQ}438$>HyY]3Ed},}43k]1odg],}E3k]3Mdg],!QyY]3M3M}4{54}bc!coL}Y0Y}1[61h}9P!2WbM]f0f[g}30kg]4gM!HOY]3M3M}4{58].dw)hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp2.ongwcjkKcyUNbj4F<2<1]g?hQ4A0jdxcg2w1}a04}2<1]g?hQ4A0jdxcg2k0w]aE2}2<1]g?hQ4A0jdxcg305}cwk}2<1]g?hQ4A0jdxcg2w1}5A5}2<1]g?hQ4A0jdxcg2_5}bYk}2<1]g?hQ4A0jdxcg2_5}bYk}2<1]g?hQ4A0jdxcg2G0w]aY2}2<1]g?hQ4A0jdxcg385}cQk!0g<g0YvY^3g<80102w1*3M<80103g1*8w<801?g1g)e;40601wkM}4[h;404w3gjg)qM<80101g1g)tM<404g38jg^>g0YvY^Bw<80101w1g]7Y1}Fg<40602wlM}g[Mg<40602wkM[4}QM<80103w1w]6o1}V;406020kM}w[Zg<80101g2[E1}204>80101w2g]dQ2}cw4>80103g3g]1Y2}gw4>80103M3M]7A4}k04>405M?kg]5{nM4>405M1wkg]5w[rM4>405M30kg]3w[vM4>405M?kw]5{zw4>g0YvY^C04>40403oe%g0YvY^Fw4>801g305*H04>404M3ojg)Kg4>40503wjg)Mw4;3M2Mdw)Rg4>405M1gkM)Ug4>405w3EjM)Tw<8?w2k0w)ZM4?1$1g8?.%8w8?2$fw8?1$j08?.%ng8?.%s08?.%ww8?14%B08?.%Hg8?1405M2wkw]3{M08?.0101M5}4Y[R08?.%VM8?.%@w8?.%5gc?.%3gc?1$4Mc?.%a0c?1$g0c?1405M1wkw]3{kwc?1$mwc?.%rgc?.010103}8g1}vMc?2$zwc?.%Dwc?.%I0c?1$Lwc?.%Sgc?1$Xgc?.%_wc?1$40g?1405M3wkw]3{8Mg?.%dgg?.%iMg?2$pgg?.%uwg?28%Bgg?1$Egg?1405M0wkM]3{06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBKqng0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZzsCcPcBZEtRZUe3o0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSV-0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80s7lQsQ17j4B2gRYObz8Kdg1Cpn9OrT9-0pD9Bomh-0sThAqmV-0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06pzr6ZPpk17j4B2gRYObz8Kdg1Pt79IpmV-0sThOoSxOg4tcik93nP8KcyUR07xCsClB07dKs79FrDhCg4tcik93nP8KcyUR06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0sThOoSRMg4tcik93nP8KcyUR069FrChvtC5OnSZOnS5OsC5V05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1JpmRzs7B0hQN9gAdvcyUNd01yqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr417j4B2gRYObzcU069FrChvon9OonBvtC5Oqm5yr6k0s6ZIr417j4B2gRYObz8Kdg1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCZMpmV-0pSlQsDlPomtBg4tcik93nP8KcyUR05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0sThOpn9OrT9-0nRZzu65vpCBKomNFuCl-0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bD9Lp65Qog0KrCZQpiVDrDkKs79Ls6lOt7A0bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KpSVRbC9RqmNAbC5Qt79FoDlQpnc!![6M<s<2[702}s08}A&1&2U<1<1w}2k0w]9g2}6M&g*25;g<o[I08]2M0w]e01*g[1{d;4<6[a04}E0g}v4*8&3E<1<1w}305}c0k}3g&g*1;ZL/rM8{2{8}3M[1M[8&iw<I<2[40w}g2}2E0M}w<1<2{o[58<3;w}3E8M]ewz}7M8*4*1q<//rM8[22o}89w]4U[1M[2{8[pM>fX/SY2[5wC}m2o]1w{w<1<2&7o<4;w}2U9w]bwC}Q0k}7{w[6[2;1<48[y2M]28b}bw2}1M>1o<8[1w[yw<4<2[40L}g2Y]101M)4&98<7;w}20dw]80S}c^w*2B;g<8[I3o]2Mdw]5g&4&IM<4<2{wT}23s]3k0g)2&bQ<e;M}38jg]cwZ}2^w[2[39<3M<c[Q4Q]3gfg}w&8{w[Rg<4<3[dxd}S3Q}8&2&e8<6;M}3wjg]e0Z}M04}8{w[4[3H;g<c[E4Y]2wfM]4w&8{w[Y;4<3[exf}W3Y{g)2{8[fA<1;M{kg}11}k08)2&3_<2;c[o5c]1ggM]4w4*w&104>4<M&k4c}K^g[1{Q1>7=2EtM]813}804*g&1;w^>2wh}aw6}7<24<8[1w[2g<c%i4I]2P1&g*14<3%fJf}8M4*4*'
;;

'aarch64')
b64=$'145662 72832\nmd5sum:098d8e3a7b5eb439d581d6da86d53a73\nsha256sum:aaa43b835c3128f8c82c50373788fb90340a2eeb617ba29976c71f95a3dd8469\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n027ZrM\n000000\n00000\n0000\n000\n0w\n0g\nMg\n00\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n0h{E14[2w4g[a\034vQlchw81>-0c0JM01)1+40l>-4?e?704?7g0s?4;5~+s2Y[1MbM-g[g;o<30_g[c3Z>]MfQ1]101g[6w9-1[2;1w<dzZ{SfQ1]3o_g4]c01{M04{8+g;4;O04[38>[cw1{9+A+g=kelQp><2wb{a0I{E2M[1A=6g=1=1hVnhA1w~~:g=5bBt6g4;MfQ[30_g4]c3Z>]g08[10,{4=1;1g;3;hQVl07nXajqquVCYA9U8BjUp_UzMGKAK]c;A:g;o;gi4h02ok,]A;a;cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg~(M09080h`M0m<1,)?3J;4w!3Q;4`3o;4w`g;8`2G;4`16;8w`@>?4w!26;4w!1m>?4w!2U;4w!1J;4w!2:4~C>?4`1l;4w!1B;4`1v;4g!2x;4w`1;8`1q;4w!3v;4~2>?4w!1U>?4w!1c>?4w!1N>?4w!1P;4w`i>?4`3h;4w!1v>?4~I;8`1o>?4w!2g;4w!2z>?4`1V;4w!32>?4g0m0702,]c=1Z>?4w0b0a0A{l=3l>?4g0m0402,]c=2_;4w0b040q{u04[2L>?4g0m0a02,]c=2h>?4g0m0d02,]c-nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0s6ZIr01Pt65Q07dQp6BK07xJomNIrSc0pCZMpmU0pD9Bomg0pClOsCZO07xCsClB06tBt65Ru7pxr01vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSM0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObz4T+80>02?40>02?80,02?80,01?40,01?80,01?c0>04?80,02?80>02?40>02?80>02?40>01?40>01:g030es1<g=byhBwo<g0Yg4?1;2PApo6<30fM1<g;BV6m1w<w07,[c3Z>[.[2w5{czZ>[.[1c5{d3Z>[.[3g_g4{1,[.[189g{w1,[.{89M[101,[.[189g[1w1,[.{M9M[201,[.[2Ma{2w1,[.[1U9M[301,[.[309M[3w1,[.[3E9M[401,[.{Ma{501,[.[189g[5w1,[.[1Ea{601,[.[189g[6w1,[.[2ga{701,[.[189g[7w1,[.[3oa{801,[.{Eag[8w1,[.[189g[901,[.[1gag[9w1,[.[2oag[b01,[.[189g[bw1,[.[3gag[c01,[.[189g[cw1,[.[3Uag[d01,[.[18aw[dw1,[.[309M[f01,[.[189g[fw1,[.[2oaw=2,[.[189g{w2,[.[30aw[102,[.{8aM[1w2,[.[189g[202,[.[1gaM[2w2,[.[2waM[302,[.[189g[402,[.[2o9w[4w2,[.{87w[5w2,[.+g8]602,[.[3UaM[702,[.[1E9w[7w2,[.{87w[8w2,[.[1g>8]902,[.{ob{a02,[.{U9w[aw2,[.{87w[bw2,[.[2M>8]c02,[.{Ub{d02,[.{E9w[dw2,[.{87w[ew2,[.[3M>8]f02,[.[1ob{a3_>[gg<o)az_>[gg<w)b3_>[gg?2g)bz_>[gg?2o)c3_>[gg?18)cz_>[gg?1g)d3_>[gg?2w)dz_>[gg?1Y)e3_>[gg?2A*w[wg<c),0,[wg<g)1<w[wg<k)1w0,[wg<s)2<w[wg<w)2w0,[wg<A)3<w[wg<E)3w0,[wg<I)4<w[wg<M)4w0,[wg<Q)5<w[wg<U)5w0,[wg<Y)6<w[wg?1)06w0,[wg?14)7<w[wg?1c)7w0,[wg?2s)8<w[wg?1g)8w0,[wg?1k)9<w[wg?1o)9w0,[wg?1s)a<w[wg?1w)aw0,[wg?1A)b<w[wg?1E)bw0,[wg?1I)c<w[wg?1M)cw0,[wg?1Q)d<w[wg?1U)dw0,[wg?2)0e<w[wg?24)ew0,[wg?28)f<w[wg?2c)3Yz0ZnZuX@F_gc0AoQ?9jZuY6ELOc3Rs03nZo:Y7K_Gv<d0h_AvV4e8_Ai027Zov80fl7O03RhYw0ZnM?3M4g90@h02094w0x_mY<Y146gfAg8w2h808vRL<f0h2A3V4480Ai}?3M4gV0@h1y094w0x_mY<Y14igfAgww2h808vRL<f0h5A3V4a80Ai}?3M4hF0@h32094w0x_mY<Y14ugfAgUw2h808vRL<f0h8A3V4081Ai}?3M4ip0@h0y0p4w0x_mY<Y14GgfAggw6h808vRL<f0hbA3V4681Ai}?3M4j90@h220p4w0x_mY<Y14SgfAgEw6h808vRL<f0heA3V4c81Ai}?3M4jV0@h3y0p4w0x_mY<Y152gfAg,ah808vRL<f0hhA3V4282Ai}?3M4kF0@h120F4w0x_mY<Y15egfAgowah808vRL<f0hkA3V4882Ai}?3M4lp0@h2y0F4w0x_mY<Y15qgfAgMwah808vRL<f0hnA3V4e82Ai}?3M4m90@h020V4w0x_mY<Y15CgfAg8weh808vRL<f0hqA3V4483Ai}?3M4mV0@h1y0V4w0x_mY<Y15OgfAgwweh808vRL<f0htA3V4a83Ai}?3M4nF0@h320V4w0x_m%e<d?V4vVg<JbT__Nv?R_m7O03RhYw0Zkv80flU<Y<397x?3M8g0cAjY?eL<1kUg?Q27gh_Bx?2QY0c1Gw027Zr?R_mU<Y<397x?3M8g0cAi4?cIy_7_jggO1yO7Ygpf1?2QUw?Q4bIh_By?2QY0c2Gw027Zr?R_mfOc3RvRXLGDZ0M2hYMI0@vc?f1w0AMVg040d@<d?R4vVw<Je<d0>3uhov__BZz__Vsw081io08cevcbgfDZuYaELOc3Rs03nZov80flnOg3RtL__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnB?3MF40cAqcggXA3,0QMw40Jal0394A?abUMc1GG9?97x0O0Go1h0e;kE0742ig7xwK04wgkGv?fHgv__le038iH?R_m1w?I0c?b0@101fTij3fpM404Z_8ccZwQ?Aoh0497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCVW184YvM04WW7X_Ri@40eZNf__5@0382Fv303Nqgc0l2og0d63083i7O03RhYw0Zn4q6eUVgc3GCcg0940icgqnM03WSb__Rhv?nHGg40l2hEpjyz102h04346BY?@I9>1k8Sxzeak8094>ccqLM02WS8?5gxq6kU04316K0382H?R_m1g20QK___NvZuX2F_gc0Avdj0qDP0M2GZlI2Gvtz0WDXsMmF_0c1Gw0>3DydM3V7Xg0sk4a05hw1A0V?E0du8?f11g0Ohg113Ks0503k3?2M;I3U404ZZ9ccZD>0jNYwMPQwg02h8k>AuovfAXW1PZL_UuYjIqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrA4vfAVq1PZL8pOZjzEseCV07PVemws_rM2sLkUq73FKmNY@jBE7fSZXDXReuxYWrxE4wjM_?3HEvL_l5Ug0XRjg0Oho0F2@k0h0bgz0c3iUec1Ag8,58x083iUPY0@sD@_Vsv?1Nrg?le3_g7D03w0T4M?I7d2597w0NeGUgc2Atj@_VvT0M0GM1?de4?d0xU4vV802wQzk>fCZ_L@n@Mc0GC0h0bgT081i@mI4GgQ?1jw0NeG>?I25w596A_L@nZgc0GE0i0bgw0a3iIfX_B_I30aG03M2Q5M20kLBH1aCPp8jikUiMYDESwdajDdfOUMclGK036WHS?3M6<A280Ed8x083iRA8cAsz@_Vso0Neh@gc0GBd@@v8k081i6y30YI020bj32AbV0Mk0Je0352Hy0NCGUgcrGC?fZpy0NCbZ0c0aK436WEw540U4M0jODd@6FI_?bHwv__lec35qHw0NKG8w2wQy4,daL_L@n@gc0GE3Z_Xnw0NmGN_X_B_o302Hw0NKG5wc0dnf@_Vsn1g0Qn<J9g30bDwdQ3VU0A0J1c?fDw0NoG@mJ4GvdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw02wd9j_L@n0M?A1Y0uv9z41uhoN2oCIca0LDi__YnnfX_BNs503iy_L@n?10Kjo,59D_L@nUgc0Gw<b?81qhd_X_B_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_mU0clGA7@_Vvn__YnUg?Q27wh_Aw0a3idM20kzk>fBe_L@n@Mc0GE030bjVqMiFD___5M02wd8I_L@n,?A1Y0uv9201eh>?A2>5V4048aqo0E2@mX__Nvw0NmGaLX_BZv__Nvw0NeG>?I25w594F_L@nZgc0GE020bgw0a3idvX_B_I30aE0_v@RU0clGxT@_Vs<2Mdw20kw305p45_L@nP___5_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_m;I3o,58,1ih@fT_BYb__Ntq_L@n?10Kjo,58v_L@nUwc0GK434WE<2M040lAuXZ_VuU__Yn_nKWGvQ3097PkM6FYMc0GLlr0GDS0M6GogK0kLsr0fDT0M8Ge_X_BM010bjQ0M2GU0cjGJLZ_Vtw,2b0f1ve1ZQ0n4w>1kUwcnaK435GHT6Q3VU0cjGLlrgGDPkQ6F_nL6G0_@_Nu20xfbUys0@k04097T_v@nZgc0GK8DgfDx0NeGAMo0ArXZ_Vvy9Q3VU0cjGHZG8zz2_v@n5>0QuPZ_Vvx0NeGYMc0GK835aGQ_v@nU0clGDZGd3yR_v@ng>0J?EgbD0130Tgw60kK5z0p7w0NeG_OY0@vnZ_VvybQ3Vow?J48>3A2,0Q5020QK434WE<2M080mAqPZ_Vvw0NmGNLT_B@034WH4_v@nZNJ0@u035aHPkQ6FZlJ2GvRXNGz?R_mUgc0GKc35OHy0NqGU0clGL7Z_VvQ0M2GYf__5@035qGV_v@nUfL_JhYw0Zkv80fl7O03Ru035qGL_v@nU0cjGxg,daI_v@nWf__5NYw0Zkv80fl_nKGGvQ3094v301NX0Q0lfdj0qDT6M3V7.0ssQ505gP143V5020QC82g3Bv?1NsNavCxYc074x1g1kd0x0@u530F6?A0V7M?sk0,5ak4F@qv_T_BW0403jxgMeh?20kK4z0fCW_v@nw0Q0du8njqA3i8ziU1deGuc1Efbx8Q3Vgxg3CM080VIn?ib?204G_Z_VvA0M0Gw>0dczZ_Vs?42VzLT_B@430aE<2M0e0nAlXZ_VvPkQ6F9020kLsrgfDw0.G_nLmGc03nZoj083i5020QK530F5?81im_T_BW3X_PnA2QCFUfCuQC1GLf83i8ziE7jjYKc1Efa06ejOUkc3Ak1Yg9I0_4uj0LO2OM0,1an20erzfT_B@g302H0@_YRU1tdGg58ydbz2QWFUg6wYw0k0pJz?6roM02ySc05UIP1g2Q1g?Ialw697y0MmG>y0QK130p7AgM2VVis0@k7Z_VvxgM6hU0cjGw8,59t_v@nV4d0Ktg20bjy9Q3VUMcnGK130F41283iV4c0KjnZ_VvxgMahU0ckGw8,59h_v@nV4d0KvsrgfDw0.GYRd1GvRXRGz?R_m;I03w5F4o_v@n9020kHP__NvT6Q3VU0c4aLdjgqDZuZqEM0dvRK430WE<2M080oAuh30bBI_v@nV4d0KvsrgfDw0.GYRd1GvRXRGz?R_mqvT_BM0>bAL_v@nUgc0Gw<b?o1uh__P_B_srgfAA081iYRd1Gq7__NvZuXqF_gc0Au430p7PkM6FZhc0@l7Z_Vsk043VZgc0Gw4?b0xE1yhU0ckGzLZ_Vs02w0QU0ckGw4?b0xU1yhdLT_B_c302Gw1g0QU0ckGw4?b0xE1ChcfT_B_c302Gw2w0QU0ckGw4?b0xo1GhaLT_B_c302Ew2g0RU4d0KhYc077I6g1ko1c0l1Y807414g1kE0p0@g4?b0xg1ih,10elY?74w082qESi4QK8z0p53xb3OUhc1AoesQ_b_hM2VgTXVYKcD0fDr_v@n0>0dugDgfA2?2MUQt0Kkbw6V412E3iU4c1As_Y_VvwgM6h0vT_BO8?1jwgQ2V7MM0ssMc05iw201k7Mw0sg4c05iw1A3V>?I2505942040VnM?si0,9Gzp8jiUyc1Ake4If81083iwVPjYAd@@vbz9M3VLfT_BO0c03gP081iU0clGI3Y_VvR4Q3VU0cjaLdjgqDZuYGEM0dvRK13gbDx0NmG4f__B_c302Hw0NmGJvP_B_kjgfDw0NcGYRd1GvRXOGz?R_mUgckGw<b0P081i020rAo_Y_VvF__YnU4d0KhYc077c401k80Q0l1Y8076x1M1kE0p0@g4?b0xg1ih,10elY?74w082qUic1Ag8,db_iM2VALT_B@3W_PnziQ2V,?A4b06V41183iU4c1AovY_VvwgM6hKvP_BZH__NuwQA2F>10eo82g3A11g0R;A010595y7?QESi4QK8z0p53xb3O>20QEesQ_93vLDOUOs0@nDZ_Vv0Z_YRUOt0@uh30p7w0MiG>q0Qw8?912E1KhV1Y0@mPY_Vvx7Q3VU0ckGw8,5a8_f@nLv__5M<90>1ihFv__5M<90P081i020pAl3Y_VuG__Yn;A010595Z__Yn;A0105978__Yn8Lf_ddL__Nvz9Q3V,?A4aw6V411E3iU4c1Al7Y_VvwgM6hw_P_BWj__NuwBA2F>10eq8>3B11M0QgKT_dadAxdby8M6hgUiMYK4j0p63DdfOVhY0@kd@@vb_hM2VUOs0@kfZ_Vs0YvYRV2t0@u130p7zhQ2V>G0Qw8?912U1Khd_P_B@0vgfDxgM6h,20kBfY_Vu8__YnEd90Gg4>3C20A0VUgI0d8bP_Pjx8M6h,20QLZb0bAJ_v@ngeX_dudbgbDAgM6hU0c4Gw44wd82?2ggI0rAugv0fAw_f@nUhZ0@u035aE2081iffP_BT7__Ns<2gcM20kw2w6F47_f@nov__5M<90P081i0e0pAgbY_Vts__Yn;A0105972@fYRUw?Q450395044eVM0k0dgc?9;2gfwg0jTQAMPSs101f7O33fi1?94xg12hVxY@jLE7fS__xXNeNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKghY@jBE7fSYxDbReexMWrA0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFK6wi1f3Y?eKx@_Zknx03Llh039602AbV0er_Jg02wdbk@_@nUL__Y1Y0uv9201ehUv__Y2>5V4048aqw0E2@ir__Ns<2g040kAibQ_Pny?3ggk0cAk>gXCw_vYR0M?A;90U101ftOj3fpo404Yp8ccZ84?Ai50494x7Pxed0s_rPC7JAUxDbted1MQrE0ue4Wk1zZL09OTjxgsd6Wj7zxeB0o_rTeuJQVQ7zhKAxUUjFg6fSZiDHtel1UQrF4ue4Wk1zZLcpWTjzgud6Wg7zxeB0o_rN2uJQUk7zhKxNUUjFg6fS_DDbteZ1MQrFkue4Wk1zZLJpWTjHgud6Uk184Y7M01WW7X_Rho40eZL___5@8?d11g0Ohg113Km3T_Pk3?2g;A3U404ZZ9ccZD>0jNYwMPQwg02h8k>AhYw0Zkv80flUhY@jLE7fS__xXNe8pOZjzEseCV07PVemws_rM2sLkUq73FKhxY@jBE7fS_6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCVr7PVemws_rTKvLkVW7PFK6wi1f1Y?uKx@_Zky___5NYw0Zkv80fl7O03Ru<b?Y4vV_nK_Gi4,5bZ0M2hJ_L_B@<b?W4vV8g20kHfX_Vvw?2M0dx7@i4,5aL@_@nU<I03sh_Ax081iG_L_BM0,5bZuY6EM0dvRzYz0ZnZuX@F_gc0AvRXMqy_8MflM0dvRw:J=79y{t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M+t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug;1QqmRBs3EwsClxp21BsD9LszEw9nc<1FrDpxr6BA865OsC5V86BKp6lUey0BsM1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM]pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA:2lIr6ga;pSlQgR1lt6BJpg[7hFrmlMnSpKtz5x]1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO]1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw[1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M]9j0NdCNIu?Bc3xU:2kMe7wJ9j0NdCNIu:1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt{gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw[4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM+2,821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw+lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ]4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK:4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:82,86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI=2,821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ]4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK{imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw+imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK]19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK{t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt:7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ:pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng(1:w;c;wwXzJ88eUXi23KeQwwXzJ0hI3eSg;b;gev__TM<1MV___A;aPD__@A:ez__YM;wWf__U;2jF___Q;EeD__Mw1?2wXv__M04?23L__Y0,?qf7__Tg2;@f__H08{g+5Wkw04u1U16MMv01:o;Ler__P+4;2M<3oVL__f+A;g:3D__Zg:44JggUwDgiu0Qaj0AXuTtce044J;4;6w;IV___2+g;v;3zD__Y4>[1;2g;aez__TM=J;ag<2gWf__0><113E02Di2u7Qaj7Fgth9ksBxKn6FwpCNqs5g9l2FEnChx12QOq5VAotgHqSknuTtLsRZzlRJfk3w112RfqSkruTtLsRZzlRJfk3w113E02ANWk7pksBxKn6FwpChyq5VImD1mt89UvgZDqipEnChx1StFaChyq5QfpSB6p69EngtHphJXtSZPnSdnmQZge044ew0aj7FgtBhOm6VsqC1Cr5FMlDi2u7PM<1s>?SeL__Tw1;ggVwDgOu2Qaj2Fg9gFk8Bwt3BMph2JXtRZnmQZge044bs0HuTtvlRJfk3w112M1M;D04?1zJ__Z8,<44eU0atb9UHh9gFAOF1BOpGRdd2RQbuTgU>gXw0FcGB2Cn9FQIDyJVRQbkQQ7uTgU>gXw0FQIDyJ5AOGkapsCggHngJjjgtXt3w112QsaRQbkQQ7uTgU>gJ8RQbkQM<3g;g,?XeX__UM6;ggWw0pQkDxd4ANak4pkg0BoaTJTlQZge044biwHuTtnjR0U>gI07;4w2?1cZv__l:133x2t0FU1ktXt3w////////////////////////////////////////////////////////////////////////////////////~~~~~~~~~~~~~~~~~~~~#a0k{j1g[3g_g4[4=VM4{c=80h{3g{3Q9{1A=MfQ1[r+w=6w{38_g4]1M=2=3R_LZL:f01{1g=w1w{o=c08{a=182{2M=o+c=WfY1[2=ew2{5+7=1s=C0U{7=cw8{2=3g1g{A=6=3@__ZL:8w8{____rM:1=f3__SY:cww[3V__ZL:3k~~~~-3o_g4~~~~~;a||||||||||0h*189g{wD{i2k{M9M[b0E{u2s[309M[ewD{c2w*4wB{q2w[189g[90E{i2k[3oa{2wF{i2k[1gag[9wF~<4wB{Q2A[189g[fwF{i2E[309M~?189g[9wG{i2k[30aw{wH{i2k[1gaM[a0H{i2k*9wC{21U{1-1,]@2I*6wC{21U{1=501,]62M*3wC{21U{1=b01,]e2M*2wC{21U{1=f01,]m2M*4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag;w;g]4?4t1904Poj40M1c[3k4M{w;g]4?4t1904Poj4,14[2g4g{w;g]4?4t1904Poj40Z2g=9g{w;g]4?4t1904Poj40U1c[2E5=w;g]4?4t1904Poj40Z2g[3Q9=w;g]4?4t1904Poj40Z2g[3Q9=w;g]4?4t1904Poj40A14[2s4g{w;g]4?4t1904Poj4?2k{c9g~&3?40O04!3?80Y04!3?c0c08!30>080o!3?k0cww!3?o0y,!3?s0O,!30,0C0U!3?A,14!3?E0E14!3?I0M1c!3?M0Z2g!3?Q042k!3?U0E2M!3?Y022Q!301?MfQ1#30140OfQ1#30180QfQ1#301c0SfQ1#301g0CfY1#301k0WfY1#301o<42#301s<c2#301w~?301A0a0s2*4;40f7_$w[I0M1c&I;2?I0M1c{k+w[A,14&w[M0Z2g*1w;40f7_$w[A0A14&w[M?2k*1Y;40f7_$w[I0U1c*2I;2?I0U1c*2Q;2?I041g*4[180QfQ1(4c;2?I0j1g*5A;101s<c2[1=4[140OfQ1(6k;10140OfQ1(8M;2?I0E1g*4[1?MfQ1(9w;101?MfQ1(4{Y072Q*4[1s<c2#40f7_$w[I0M1g*bs;2?I0M1g{4>[co;2?I0N1k[1Y=4{Q042k*dA;2?I>1o=1=c1<2?I0M1I[18,[1c1<2?I021U[2c1w[4{Q,2M*4[1s040c2(241<101s040c2[4=3Q1<101s080c2{1{4Y1<101s080s2[8=4[1o<42(601<101o<42]1g=6Y1<101o0k042]1o=7Y1<101o0I042[U=8Y1<101o0Y042]1g=4{Y,2Q*9U1<40f7_%4{Y0r2Y*aw1<1?Y0r2Y!40f7_%bo1<2?M0Z2g*bM1<10180QfQ1(cA1<10f7_SfQ1(d81]U0E2M*ek1<101o<c2(f41<10f7_CfY1*s2<2?A,14&w[E0E14&Q2<i`1Y2<g`2Q2<i`3Y2<w`5I2<g`6A2<y`8c2<i`9M2<h01o0s082[M=aY2<i?I0E2g[1k=cc2<i`dw2<i`eM2<i`fU2<i~Y3<g`1k3<g`2Q3<i`3Q3<h01o>082[M=4Y3<g`5s3<h`6w3<i`7M3<i?I>1E[1U>[8U3<w`9Q3<i`aQ3<g`bI3<i`do3<i`eo3<i`fI3<i~Q4<i`1U4<g`384<i`4g4<g`5o4<h01o0E082[M=6A4<w`dE2<i`8c4<i`9Y4<g`aI4<h01o0Q082[M=bQ4<i~1zsDhFbCY097w0oS5Ir5ZTpm5HnSpK06dOt6UKrM1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM0Ap01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdOoPcOnSxTnS5Org1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ06RBrmdMuk17j4B2gRYObz4T06pFrChvtC5Oqm5yr6k0sThOr6lKg4tcik93nP8Kcjs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQonlUtC5Ig4tcik93nP8Kcjs0sSVMsCBKt6p0hQN9gAdvcyUNdM1CoSNLsSl0hQN9gAdvcyUNdM1CrT1BrA17j4B2gRYObz4T07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB071Lr6N0hQN9gAdvcyUNdM1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQp6BKg4tcik93nP8Kcjs0sThOpn9OrT90hQN9gAdvcyUNdM1yqmVAnTpxsBZLsBZxsD9xug1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSR.4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1yqmVAnS5OsC5VnTpxsCBxoCNB07dQsCdEsA17j4B2gRYObz4T06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt01Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~~+6M;s;2=cw1{O04{A^1^2U<3S__ZL,{3M>[f01{f+3+w^U;2M;8=c08{M,[f03{1:c;8=1w=g:c;2=206{80o{i,&g&4w<3___ZL,=O2{388{l+3+8+w{1l;_L__rM8=y,[282{4+1:4;8^p:g;2=cw8{O,[3g1g{c=2+o=6U;4;gw{2o3w[9we{W08{3;5g;w=6=1U:g;o=w14[204g[1M^4^sM;4;6=a0h{E14{g,*4^7U;1;1w{304M[c0j{d14*2^24:g;o=Z2g[3Q9{1w^4^yw;4;2=10B{42k[2g1M*4^98;1:w{2wb{a0I{p%g&2w:g;8=22Q{8bg[6w2&8^Gw;U;3=c3Z>]MfQ{8^2+8=bo;f:M{38_g4]czZ{2%w=2=32:g;c=QfQ1]3g_g{w^8^PM;o;3=dzZ>]SfQ[30>{g=2+g=dw;1:M{2o_M4]9z_{k%w=2=3t:g;c=WfY1]3E_M[101&8+w=Vw;4;3-1,{41=w*4^eM;8:M-M8{3>]a>*1^3N:g<3#M4]2U^1+4=@w;s)2w7,]c0c1[w>*1%4;2`504>]40I{r;jM;w=6+9:M!1w3M4]cY4&1^4g;c`bNg1[g>&g*'
;;

'armv7')
b64=$'35462 17732\nmd5sum:317882cb27930187f8ef961c8917d055\nsha256sum:50edc72372596b5fc30cf3e5d9c275f13624c3cd1bd623053e154c9a824f1c15\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n1Ew4Mzz122wUrwtjKeyca3x\n000000000000000\n00000000000000\n01fzEP2wUg4M8N\n0000000000000\n0hQN9gAdvcyUQ\n04@ezca3x13\n00000000000\n0000000000\n0jUWcMEe4\n000000000\n00000000\n0000000\n000000\n00000\n0000\n1w2g\n000\n05M\n01s\n0g\n01\n04\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n0i22UGcMEe41c2cg,NiUMgMEenz__Yq\034vQlchw41,*0c0a0>-3g:3Ag[g>jg08?602w07?r0.!}288M?y2c:k=40,:1gL:kbM4052Y108M2?2o1w0>w=g02}82Y?20L,0wbM40U}e[6}1[g:3Q}Z}fg}A}9[g}4}kulQp!*>w:1}1iVnhA52Y0>gL,0kbM40X}eM}4[g}g}k[M:4telg1ZvvMpH0TSv42_oWZcV3guc_84Uwc}z[w}o}gy0202kl4g{z}9M:cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg!*l0A+3?A{awM,=M0k0eE#1}1u,%i}hw#8w:fw#18}g!w}sM#4}4k1%18:1l!i}wg#4w:2I1%18:3z!i}y!4}1c1%1}1z!i}mM#4}6w#18:1B,%i}DM#4w}4#2}1K!i}Rg#4}cU#18:37!i}HM#4g:8U#18:13,%i}_M#4}aw#18:1c,%g}eg4%4w:2M#2}1@,%g}HM4?5wN,0o}4g0k06E1?3s6w?A}1802M32,0,341>w}h>g0Jg:8Mg0>E,0.w0b09M10>Mcg406}140502a,?y341>w}h>g?5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06pLs6lK07xJomNIrSc0s6ZIr>CsClxp>Pt65Q069RqmNQqmVvpn9OrT80pClOsCZO07xCsClB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80pCdIrTdB07dQp6BK069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1Pt79QrSM0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ07hFrmlMnSpKtz5xnTdQsDlzt>QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS.tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg(g02?8?w>0.?w02?8?M020.0,020.?w02?80,.0.?w02?8?w020.?w>?80,>0.0,>0.0,>0.?M3k,0.-2PApo6:40dU1:g}BV6m1w:M3F,0.}1hFqgQ:80Z.+kbM4;:1wL,0n}72Y1<:2Ec.;:aMM,0n}I3><:2Qc.;:bwM,0n}L3><:30c.;:cgM,0n}O3><:3gc.;:dgM,0n}S3><:3sc.;:e0M,0n}V3><:3Ec.;:eMM,0n}Y3><:3Qc.;:fMM,0n[341<}4cg4;}wN,0n}3341<}gcg4;:1wN,0n}7341<}wcg4;:2gN,0n}a341<}Icg4;:30N,0n}d341<}Ucg4;:40N,0n}h341<:1ccg4;:50N,0n}m341<:1scg4;:6gN,0n}q341<:1Mcg4;:7gN,0n}v341<:20cg4;:8wN,0n}z341<:2kcg4;:9wN,0n}x3>>k5?28c.05gs?8MM,0l8M?A3>>kB?2kc.05hk?9wM,0l6w?D3>>kD?2wc.05i4?agM,0la:33>>o3:gc.05wg0>gM,0m1g?63>>o6:sc.05ww?20M,0m2g?93>>oa:Ec.05wI?2MM,0m3:c3>>od:Qc.05wU?3wM,0m3M?f3>>og0>0c.05x40.gM,0m4w?i3>>oj0>cc.05xg?50M,0m9w?l3>>ol0>oc.05xo0;M,0m5M?o3>>oo0>Ac.05xA?6wM,0m6M?r3>>os0>Mc.05xQ?7gM,0m7w?u3>>ov0>Yc.05y:80M,0m8w?240JWm:eI8wbTE1e0JVgjwD@keU8_w2f2@Vp0C,?NE_y4IGcUF3SLek0NE_y4IGcUEzSLek0NE_y4IGcUE3SLek0NE_y4IGcUDzSLek0NE_y4IGcUD3SLek0NE_y4IGcUCzSLek0NE_y4IGcUC3SLek0NE_y4IGcUBzSLek0NE_y4IGcUB3SLek0NE_y4IGcUAzSLek0NE_y4IGcUA3SLek0NE_y4IGcUzzSLek0NE_y4IGcUz3SLek0NE_y4IGcUyzSLek0NE_y4IGcUy3SLek0NE_y4IGcUxzSLek0NE_y4IGcUx3SLek0NE_y4IGcUwzSLek0NE_y4IGcUw3SLek0NE_y4IGcULzRLek0NE_y4IGcUL3RLek0NE_y4IGcUKzRLek0NE_y4IGcUK3RLek0NE_y4IGcUJzRLek0NE_y4IGcUJ3RLek0NE_y4IGcUIzRLek0NE_y4IGcUI3RLek0NE_y4IGcUHzRLek0NE_y4IGcUH3RLek0NE_y4IGcUGzRLek[532vVhgwD@k3c8_w0y2jVM?kKcu_OY1Q___Wx0B,2k}b02vViMMD@kI89_B?2fU0cMz@:5fx0y2fU1X_bM4oc9_B0P2iVM?k@cu_OY14_YLUowC,249w40T2g108w}U09_Be32vVg?z@03c8_w0313UacvEe4E89_BgN61Uc4gIe4288_w7LYL0hwMD@k3c9bD0>jUNX_bM4j_O_xi2o1.gC,2c9.0E}4MMD@lc89_B0P2fU?MQ@k288_w0>jUNX_bN4gg2TFd32vVgcMAKs?5fz0w?2yw0D@k?8_wrv__WYH__@I18a3z632vVgcMz@?8cfB482ZWfwB,1g9.0x}4wz,2U9g40Qf__Ww[gg2TFUe2vVgXwz@?M9XB0<UN4:E?5bz0c3wUh20Lgz409_B0y21U:z@>447y0i12Uw4MYukcc2fwsP3LVwcNwe.c9fB0w1hUiP48@3T__Yq303wUh20LuwwgMzzK4ReUWMMEe41>Pz130z4.&0z4.&0z4.&0z4.&0z4.&0z4.&0z4..@c1M8PyEP2wUggM8N>35Pz132KVuf__NE1Ma3z432vVgcMz@?M8fBOL__WEMB,1E9g40J2g10f1fbuA0cd3Bg4evVnjgju8J05fz142fU>gEe4848TB322dVgI:EA4V_B1g2wUg4gz@0w___H081gUHE:E12a3zcv__WM1wkeaL:a0a2wUQ8?eE1cd3B0>jU_3__NHI4F_B0h2fU?wAuk?5bz8g?6y032eeU3kXzEz2wUg4.Kc0c2cg,)0c2cg,)0c2cg,)0c2cg,)0c2cg,)0c2cg,)0c2cg,0jUM4wwKazca3x030z4.ckKc4ca7BU___6w4wEedwcF_B0P2fU?ww@locF_B0P2fU,AA@k?5bzeg?2w6wEec08a3z402dUwEgEe44883B422dVrixPu7P_L_H0>gUPc?dGSctTx,0jUP}EkcF_B,ywUMcMBes0w9fBXfX_WM1wke8U:a9kc2U@hs2uc0sa3zY96vVv2ND@k9A8_w2X2fU294iefOmQPz1a2dVgwMEe41aa3z0h2wUMo0Ee7u_L_H0a1gUyI:E4d9DB1M2wUg?k@c64a3x2P2w,EwEe44J8A5c_YLUrf10ec0sa3x0h16UwHwwu>cf7B0Q0AU,QEe6sdifwB4O5U0U0ku45k8fwZ___6Kf__@FI8p_B0y2fU,Aw@n1___Go56vVhwgzu85k8_w1g2wUsT@_@I0E53ybM?2zgND@k12a3z0P2kVM20A@mQ_L_H061gUw6wE1f6__Yqa06vVg?z@2j_L_H6M?Www0Ee44E9TBCfX_WM2gke860a3x2M?6FT@_@I?5Hz5M?2wwMDuk?5fz07235gMMDuk?5fzY4334gA0Ee5QQ8TyY8@ZW97@_@I?5Hz2:2Hn@_@I?93BDLX_WM,Ee6U09_B?2fU7r@_@I1Aa3zYf__Www0Ee6Q_L_HY___Www0Ee6N_L_HVf__WF,D@k50a3x0h2fU73@_@I0w53y1w?2w48Eee1_L_H061gUFj__NE80a3xFfX_WYH__@Fw09_B?2fU5X@_@LC___GBvX_WM?Ael@_L_H022wUkg0D@k54a3x?2fU5n@_@Lt___GV2810d0e:Q9.0F2c109wz,2o}92c108jZ__Y0_v__W0M:gd?2E3:40M?egb?3I2M?Y4sJWg5wEe4gQ4TymN2wUM10Ee42sa3xtfX_WM1gke85:a102wUmT@_@I?8jw0j1gVlQ0k@c5:a1O2wUgogEe440a3x4d2dUL17Luxw_L_G1915U.0yu98_L_H0a2wUM20Ee444a3x2i2wUg5gxu8S_L_H2q38VMk0Ee5n_L_H0p10UzT@_@I,a3x1h2wUgAwEe4J_L_H202wUgCwNesf_L_H0>gUO8:Ekc93Bg?jUOc0>E0ca3z2y2wUMg0Ee4c48Ty332dVgT@_@Icc9TB0>jUM8:E0cdfB0>jUMI:FM09_B112wUg?z@06_L_H052wUMw0Ee4l_L_H102wUhf@_@I50a3x4d2dUL27Luw08a3xM3@wUghMzuk80a3x062dVjv@_@I0ka3xYf__Www0Ee49_L_H2w1gUtL__NE80a3x0LX_WMg0Ee40_L_H052wU@H__@E02M?Y4YJWgc0kefkQ4Tyng?Ow40kec0sa3j1V2wQgo?dE4s97B033nVg?k@c0sa030M1gUM2gE1dt:ai82dUw80Eec84a3xVfT_WM?kecW:qQNQ4UQ0y1edcc9TBox11UYdfEe6h4Yfwi02tVkd3pe0f843zN6@wUp12VK28k8Ty1h2wUg?Uecf_L_H051gUAI0>F.wjzz22tVozwDukf443zMz@wUpUxU@2gM9TBB02tVpMxU@?89bwM3@zU,wAK03carw0>nUP4:EIIp_B2a2dUwKMz@3M8cTxg12wUMIwEe4a0a3xWLT_WMkwEe4a4a3x1M2wUt7Z_@I?5Dz2g?2wIwEe5.a3z202wUg10zuk4o8TBTLT_WMkwEe484a3x2g2wUsnZ_@I50a3xRd2dUL2fLuy8k8Ty1h2wUg?Eefv_v_H0>gUOc0>F0cwjzz42tVow0Dukfc43zN6@wUp13VK2g49TBB22tVp53VK02g9jwMC@CUbX__@FY09_B?2fU8rZ_@I1ka3zVv__WCM0D@k?8_wxfT_WMk0Ee7kQ8TyY8@ZW0ygAuk0cdDB0>jUM2gE0es___GIvT_WM?Aemq_v_H>2wUjg0D@k?8_wsLT_W@H__@GF_v_H?2gVpbZ_@I.a3x602vVg?z@1G_v_HUL__Wyga:o2g?q0A:g9?382:Y44JWmzgju8848TyFvT_W@wjD@k0o93B052wUg4gz@060a3xkvT_WM?ked3:aP1evVgo0Ee4148_wi_T_WM10ke8H:aK1evVgo0Ee4148_whvT_WM10ke95:aF1evVgo0Ee4148_wf_T_WM10ke8W:q232tVgc0k@e@?3axw?2w80k@dX:q102lVg0MQek?5fzr0ev1g?zM?ca3zQDKvXh0wzu8c48Ty17KdXgMMzukb_L_H0>gUNI0>Hg8sTxY23dUjMzD@koo8Tyk12wUMo0Ee4cc9TB0y2fU6nZ_@I60a3xifT_WNk?eE8c9TB0M1jURE?cES:a0w1jUR4:E?V_B?2fUbo_z@bg8cfx>2wU_0xPu4g88TyX_T_WM?keep:a0k2wUMc?eE54a3x202tVin__@I,a3x1g2wUi3Z_@I40a3xqd2dUL21LuyM0F_B1x2wUg?z@07_v_HX___WwwMDuk305fzww?OCg:E205fzfw?6wg0Buk0cd3B0>jUTM2DMk?8Y?22wUN,zu8g88TBPLT_WM?kefu__Yqo2avVhxwzu8w4a3z1w2wUh0MDuk288_waLT_WMo0Ee4d_v_HSL__WE40BuA0cd3B023nVg?k@cD:q0>iUW8:Ew0F_B?2fU7FXD@Q.a3z422dUwhXzuSQ_v_H081gUIj__NE4uVTJ_26vVhxwzu8M4a3z1w2wUg1XzuQ288_w3_T_WMwwEe464a3x1M2wUvrY_@KZ___G102lVg0MQek?5fzN06v1g?zM2F___GL06vVg?z@35_f_HHv__WH>D@k?8_wxv__WGw1D@k?8_wML__Ww?kKet__YaSf__WE40BuA0cd3B023nVg?k@d9:a0>iUTz__ME0ca3ziTKvXh0wzu8c48Ty17KdXgMMzum4_v_H081gUFj__NE4uVTJk26vVhxwzu860a3xk12wUM1XzuQcc9TB0y2fUdXY_@I88a3x1x2wUgs0Ee75_f_Hzf__WE40BuA0cd3B023nVg?k@cC:a0>iUVH__ME08a3z412dUx0wzulF_v_H081gUDD__NHI89_B662dUwo0Ee4w4a3z432tVg8wz@35_f_H222wUgogEe470a3xHfP_WTf__@H?9_B?2fU87Y_@JF___GJ02vVg?z@1Z_f_Hpv__WJ0xPu7M8cTxE22vVhxwzu8M4a3z1w2wUg8wz@2M_f_H1w2wUpfY_@Jw___G0>iUUQ:FU09_B?2fUdn__@E?5bzm:2Cw0D@k?8_wIL__Ww3M8ecB8Oa4V9POOZw8?382:T0w?f080>c1M?P0w?dw6:o2:j0o?dw7?3E1g?p0s?8g5?2o1w?q0k0;5?2M1w?h0o?e05?2A1g?W0k0>g4}1:_1w106wo,1s6.0Ifb__PMo,2E5M40D1s10f3N__ZY5M40W1o10dMm,0MYv__e?vVg?z@?c93B0>jUO8?`,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUYwM7@k3c8_w0223Vt0M7@k3c8_w12ijVg?kKfs81Y50y2f0,AwMk0___GW?vVg?z@?c93B0>jUO8?`,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUTwN7@k3c8_w0223Vo0N7@k3c8_w12ijVg?kKec8hY50y2f0,AwMng_L_GC.vVg?z@?c93B0>jUO8?`,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUOwO7@k3c8_w0223Vj0O7@k3c8_w12ijVg?kKcY8xY50y2f0,AwMmw_L_G440JWn10D@lMc9_B142fU0cMBes8Q4Ty0h2wUMc0Ee44c8TBYLL_WRgMD@k14a3z0P2kVMc0Ee44c8TBXfL_WQ0MD@k14a3z0P2kVMc0Ee44c8TBVLL_WOMMD@k14a3z0P2kVMc0Ee44c8TBUfL_WM?Eec8Q8Ty482ZW10l,2A}D}8M:2g}240JWgy0LuwZ}g[I:1[4}4[C}g}3k:1{M:4[6}g}1g:1[3w:4[d}g}2k:1[4w:4[E}g[8:1[6}4[9}g[E:1!0J}sC8?7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis[t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP0>QqmRBs3EwrTlQ86ZC86RBrmZOug}1QqmRBs3EwsClxp21BsD9LszEw9nc:1FrDpxr6BA865OsC5V86BKp6lUey0BsM1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g[9mNIp0E:1Dpnh3k5lQqmRB0>QqmRBs5ZCrDoNog1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq:t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP0>QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0NdCNIu?Bc3xU[2kMe7wJ9j0NdCNIu[1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt0>3rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@0>9py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb[~0Et6BJpn1vq65Pq20D9O0D9OAI[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw}1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw}19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI[20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?~0Et6BJpn1voT9zcP8w9Osw9OsFb}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ,SZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU0.BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI}lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK.BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU?7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt[7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ[pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng0Z}g[I:1[4}4[C}g}3k:1{M:4[6}g}1g:1[3w:4[d}g}2k:1[4w:4[E}g[8:1[6}4[9}g[E:1////////!!!!!!!!}c?2o2M?72Y10.:3k,?3}5g9:d}r1I0>A}kbM406M}g}q}62Y1>M}4}ZvX_rNw1:5}V0c:o:1k,?2w:fU1:b}4[c[c.?w:f[k}4g:1s:1A2:4g:7g6:i}Y.0>c}8}_L__rPg6?3___ZL,:f3__S_y1g?@L__rPk!!!*082Y1*0o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]?o0A?609?]!!![d1M?dwt:Q7:_1Q0.wv0>47w?N1Y?8Mu?3g7w=3gs:47M?d1M?2wv:Q7:s1Y?c0v:Q7:W1Y?2Mw+d1M?6gw:Q7:y2:dgw?347M=3gs:A8g?d1M0.Mx?2k8g?d1M?dwx:A8w?d1M=1M7g0.1g:4:2Ec.0u28=147g0.1g:4:3gc.0B28+o7g0.1g:4:3Yc.0J28+c7g0.1g:4}ocg40R28=17gQcW82x7jBkF834Obz8Kci0Oc38Ocj4Oci0EkClA84xxt20NcyUObz4Jd2A,j}1xpm5yqg>9w}kTbk4>wE7ggw12g8a11845.l0hs36.p0hE27.y,08}2{10>7gig1cS4N0e0a:42M?2[w{g?hQ4A0jdxcg1k2g?n0A:w}8{40.t19.Poj40r1I?70r:8}2{10>7gig1cS4N0,b:43:2[w{g?hQ4A0jdxcg1I6M?r1I:w}8{40.t19.Poj40r1I?6Mr:8}2{10>7gig1cS4N;9?]?2[w{g?hQ4A0jdxcg1M6M?t1I!#Z(30.{1w1-M02{1k,+c?M{V0c+30,{e85-M05=Q1w+c>w{t0o+3?s{6g8-M08{1k2g+c02g{o0A+3?E{e0a-M0b{1I6M+c03=t1I+3?Q{8gz-M0e=kbM4=c03M{62Y1=3>=1ML,=M0h=wbM4=c.w=3>=3>c{awM,=M0k{2wcg4=c05g!?3>o!:M0n{2Idg4=c060>!40f7_2}e0a*b?I:3w2w+802M0o}_0E*I02}5g9*9?w:1I6M(3?r!40f7_2}5M9*9?w:1M6M(3?y!40f7_6}7gr*d02U:1Q6M+403g08}10I*I,[gb-w0b>w}U2M(2M08}i0I*I,w:4wb-w0b>w:282M(2M0o}72Y1-1402}9wb*b05k:2o2M+802M0o}X0I*I0qM:a0N,>[g0l>w}obM4-4>T}62Y1=1>?2{c*b09U[3-802M0o}52Y1(Y0Gw:1gL,=g0f>w:2wcg4-5g!0.0f7_2[wc*b0cA}83:@[802M0o}Z0M*I06[gs*d?w[3g(2M3o{Q?8M3:2?I06}5,*b?w:2c4*2M0o}Y14*I02}fgh*b?81?3Q4g?708:802M0o}_1c*I02}10k*b>81:g5:P0o:802M0o}21w*I02}9Mo*b>w:1o6M(2M0o}F341-1k08.?agN,.[g0l03M1?2Ecg4:g:405g1e,?G3k10,}1>k06}awM,-k05Y1?2Ec.0a[405>K,?Q3>02M}1>g0vw4?fMM,0s[g0k08U1:ocg40a[40502t,%40f7_6}fgy*d02U:3Q8w+403g0o}x2c*U0FM4?8gz-g0e!:g0Yv@R,?r1I+2?M0KM40>ML,=g0h0cw1:wbM4=40Yv_h,?E341=1>g0Tg4}M,=g3N__c10>k2g+802g08}o0A*E06}709*a?w:1Q2g(2w3V,%g}1M8%4w:1w2%28}N0w%i}gw8%8}5U2%1}3B0M%i}r08%4w:7M2%18:2d0w%i}Fw8%4w:bs20>ocg406}140503a0w?T1E?9[i?I0Tw8%4}eg2%1}3Y0w%i}2Mc0.0N,0o}4g0k>Q3%1[B0M%i}dgc%4w:4g3%18:1n0M?z1:6w1:i?I0qgc%8}7w3%18:280M%g}Bwc%4w:as3%18:2U0M%h}O0c%4w:ec3%18:3S0M%g}2wg%4w:1I4%1[J1:s341>w}h>g,,%4w:5g4%2}1K1#g}uwg?8wN,0o}4g0k0>zsDhFbCY09640oS5Ir5ZTpm5HnSpK02hA06dOt6UKrM1zsDhypmtFrBcKrM1xr6NvqmRMr6BBp5ZCoCBQsM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt>CqmVAnTpxsCBxoCNB07dQsCdJs417j4B2gRYObzg0nRZzu65vpCBKomNFuCl^07dQsDhLr417j4B2gRYObzg0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80pCZMpmV^06pBsD9LsA17j4B2gRYObzg0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T06RBrmdMuk17j4B2gRYObzg0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0s6ZIr417j4B2gRYObzg0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1CsClxp417j4B2gRYObzg0s7lQsQ17j4B2gRYObzg0sThOpn9OrT9^069FrChvtC5OnSZOnS5OsC5V05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB07dQsCNBrA17j4B2gRYObzg0sThOoSxOg4tcik93nP8Kd>Pt6hFrA17j4B2gRYObzg0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObzg0sSVMsCBKt6p^069FrChvon9OonBvtC5Oqm5yr6k0pCdIrTdBg4tcik93nP8Kd>JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kd>vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ:KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIbChVrw0KsClIbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?Kp65Qog0KoDdP02VzrSRJpmVQ02V1kAQKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc!!!*r}1M}8:3Q}Z}2g!g-bw:fr__SY2}6.0>w1:Y[M-4}1}3w}b[w:5g10>k,?A08:g}3}1}1}1{M}8:3A0M?V0c?fU1#4-i}f___SY2}Uwk?e850>i[M-2[w:5k:3@__ZL0w:3g6:Q1w0,[g}1}1-1A}2g}8:1Q1w?t0o?f>:3(g}8}rg}A:12}p0w?6g8?3M[M:1c}4}2}7o}1}1w:5g90>k2g?3!1-1N[g}o:]?o0A?7M1#g}4}v[4}6}U0E?e0a?2c4#8-88}1}1w:6Mr0>I6M?2!1-28[g}8:1Q6M?t1I0>08#g-A[4}2}x2c?8gz:4!4-9E}e[M:1gL,0kbM0>!1[g:2C}3M}c}obM4062Y:g!g}4}Iw}4}3}72Y1>ML:4!4-bY}6[M:20L,0wbM?U[g-1[w:38[g}c[c.?3:aw!g}4}Pg}4}3}G3>0awM?3U!4-dc}8[M:a0N,2wcg?3,%1-3o[g:3(E34?2U!4}1}Ug}c?7*cUN:N!1-f4}7-aMR,?cw?U!1(1[w#U38?708:q}og}g}g}2g}c#50X?2c1#1-14}3#3sfM0>M4#g+'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'147648 73824\nmd5sum:0eff87ee8eb976c56c2bf56ac90c2cce\nsha256sum:f34ff7bed5ea56e06f74b03212d430e874ad1d684e42710e83008eddec5d20d6\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n0Mc3\n000\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n04w4U^6\034vQlchw810g{0c05g01=1[60p0g:w.4?e?704?7?r?4,5!{G3E:2Eew{g:g,o,8_g]zZ0g;2fQ1;3U1g:20a{1:2,1w.23Z]8fQ1:w_g4;e01]U04]8[g,4,O04:380g:cw1]9[A[g}kelQp0g,Me]30U]c3w:14}4g}1}1hVnhA1w!!:g}5bBt6g4,2fQ]8_g4:zZ0g;@08:3U0w]4}1,1g,3,hQVl03w0WW1X7LELwj8oJrGuFoMhWI5e;c,z<g,o,gi4h02ok0w;z,9M.cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg!(M09080h!M0l.10w+03z,4C#3G,4!3e,4C!g,8!2w,4!16,8C!Q0g?4C#2K,4C#1r,4C#1X,4!0s0g?4!1F,4C#1u0g?4C#1x,4!1c0g?4C#1l,4g#2n,4C!1,8!21,4C#3l,4!3U,4C#270g?4C#120g?4C#2?g?4C#1K,4C!80g?4!37,4C#1K0g?4!0I,8!26,4C#3G0g?4!1Q,4C#2N0g?4g0l07020w;c}3m0g?4C0a040L]x}340g?4g0l04020w;c}2R,4C0a0a0t]l08:2u0g?4g0l0a020w;c}2c0g?4g0l0d020w;c{nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0sThAqmU0pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO07dQsCNBrw1yqmVAnTpxsCBxoCNB06RBrmdMug1CqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr01yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U05Zvs79FrDhCqmlBpj4Oe01JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1Dpnh3k5lQqmRBnTdQsDlzt01QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs[w01?8?g01?8?w02?8?g01?8?M01?c?w02?401?1?k?w02?8?w01?8?g01?8?g02?4?g01?4?g01<g040fo1.g}byhBwo.k.8?1,2PApo6.4?I2.g,IF6m1w.M0m0w?4,9uhBwo.808g8]8_g4;1o}M1o]g_g4;1o}k1o]o_g4;1o}6fQ1}g8;1o}S3}80g8;1o}C38]g0g8;1o}S3}o0g8;1o}M38]w0g8;1o}g3g]E0g8;1o}23c]M0g8;1o}k3c]U0g8;1o}u3c:1?g8;1o}M3c:1g0g8;1o}S3]1o0g8;1o}@3c:1w0g8;1o}S3]1E0g8;1o}83g:1M0g8;1o}S3]1U0g8;1o}q3g:2?g8;1o}K3g:280g8;1o}S3]2g0g8;1o}U3g:2o0g8;1o}a3k:2M0g8;1o}S3]2U0g8;1o}o3k:3?g8;1o}S3]380g8;1o}y3k:3g0g8;1o}S3k:3o0g8;1o}k3c:3M0g8;1o}S3]3U0g8;1o}a3o[w8;1o}S3}80w8;1o}k3o]g0w8;1o}C3o]o0w8;1o}S3}w0w8;1o}U3o]E0w8;1o}c3s]M0w8;1o}S3]1?w8;1o}a38:180w8;1o}k2c:1o0w8;1o{42;1w0w8;1o}y3s:1M0w8;1o}@34:1U0w8;1o}k2c:280w8;1o}k042;2g0w8;1o}G3s:2w0w8;1o}O34:2E0w8;1o}k2c:2U0w8;1o}I042;3?w8;1o}O3s:3g0w8;1o}K34:3o0w8;1o}k2c:3E0w8;1o}Y042;3M0w8;1o}W3s]8_M4;2o,k+g_M4;2o,6+o_M4;2o,v+w_M4;2o,8+E_M4;2o,i+M_M4;2o,E+U_M4;2o,D=10_M4;2o,z=18_M4;2o,B+g?8;1k,3+o?8;1k,4+w?8;1k,5+E?8;1k,7+M?8;1k,8+U?8;1k,9=1.8;1k,a=18?8;1k,b=1g?8;1k,c=1o?8;1k,d=1w?8;1k,e=1E?8;1k,f=1M?8;1k,g=1U?8;1k,h=2.8;1k,j=28?8;1k,C=2g?8;1k,k=2o?8;1k,l=2w?8;1k,m=2E?8;1k,n=2M?8;1k,o=2U?8;1k,p=3.8;1k,q=38?8;1k,r=3g?8;1k,s=3o?8;1k,t=3w?8;1k,u=3E?8;1k,w=3M?8;1k,x=3U?8;1k,y!1w0gvygwobFFwe9vi04w4U^0w1cf61JgzyC0wxY4?1@97_8vw.1w2802W.E2Yc0fV1Lv__iNw0guxM024U4?1Wao327Mw081e<1w0gvyEwobFFwe9vi|011@3y1wKCC0UBZ80i0jw^o047UO862Wqo3ynQw181e^1w0gvzMwobFFwe9vi|011@2y1wKCC0UBZ80i0jw^o047Uo862Wqo3ynQw181e^1w0gvx0wobFFwe9vi|011@1y1wKCC0UBZ80i0jw^o047Uy862Wqo3ynQw181e^1w0gvwwwobFFwe9vi|011@c21wKCC0UBZ80i0jw^o047Uk862Wqo3ynQw181e^1w0gvywwobFFwe9vi|011@6y1wKCC0UBZ80i0jw^o047U@862Wqo3ynQw181e^1w0gvzowobFFwe9vi|011@321wKCC0UBZ80i0jw^o047Um862Wqo3ynQw181e^1w0gvxMwobFFwe9vi|011@4y1wKCC0UBZ80i0jw^o047UQ862Wqo3ynQw181e^1w0gvzwwobFFwe9vi|011@ey1wKCC0UBZ80i0jw^o047Uw862Wqo3ynQw181e^1w0gvyUwobFFwe9vi|011@121wKCC0UBZ80i0jw^o047UI862Wqo3ynQw181e^1w0gvxUwobFFwe9vi|011@9y1wKCC0UBZ80i0jw^204MYw6B2e,6,1w08hye0248zA062BY8022jg.60gw8bF.Ib2?wASC0wxY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1.uyC0MxY8020jw?gC0204MY86B2e,6,1w08hye024wzxg88dYt1W4v7gex7Ol0ohY8022jg.60ow8bF.Ib2?wASC0wxY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1.uyC0MxY8020jw.6.49w0w1cfb1Egzw.1w08gyyg?2iMw089cFw88v1.vzx_O7U,o2208KA?2AI5022gv__ozMovCcUlvT_iNw0guzR_LZb8?xe04083A.1w4?1W0248FCC0MxY8020jw.6,1w?12o080j3N0q48U8f__iM.60204MYc6x2e,60gx2a1,o124Mzw.AIl022gg?9iN40891FweFvfwoqDP__UgU,o,6.49w0g0AzjX2hRlUkyBZG1kFuhha9DQg02C1u3EFvnxbaDTw_M12@4wzvi?oTww081e_LZ2fvX_0zQwKkEV4bA8eh?9zCc0M4gClq0vk?g3CphC1Zz0d44qo3inQ?49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~%`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M120g0weg.60gx2ahVfX_iM(gC0204MYU6p2eao227Po_S7XUf@1@TwzCTPU_@7XMfY1@TwrvTNUaXNYOfYx@@z_EvIg?7UIvUx@.8UDj_OAV.9b4M0wA7@_U8YufLzvWyNx3zd@_Zb6011W7ArunPo18910g1wf9DX_QIo047EuhJZv504wA4o047U207x@w.3Iw0k7Xg071@Sw104w102e9.9bb3_wA,1w48h2wg.60gx28V.abcM0wA3@_Q8Z_LY2fi2VizAgKgwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vhs4a_240GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx~%0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg02AVtfY0gw4083A.1w48gyAg.60wy2bF.FbcM1wA41020V?2we080anA1080UY01xef?8vCZ@fZb6011W,OPs0o50Zw0xEg40an7g0o91,o2y08KA1060Y0g?eM?auIJ@LZb6011W7ArvnPM0E916011@0w1UvEw0k7Xg071@Oa4M3_OOO0Z?7wfykzTCfAD2BxV8fTuwU0fDCP0vty?10eTzb9DY10a0Y0g20e7zHET_pZ_Zb6011W7ArvTOA0891,o228wKA?2MIF062gqo3ynQw04dXufLBvTzHF7Yx181e6011W040Wnf__NQV__Y_enwruDMs0891.Fb.foBUWWx_uf8FvtaVOn@g_U91gLzFuWo3anQ102y9u4cavg8023A204G9uf8FvtaVanRUiABZQHD9v@3_049UOOp_0g2wf040w3xUWWd_evv_iNw0guxV6TZYpf@2g7zb8T@B@fZb6011W,ONU6TZYueKzvN01wA0J@fZb6011W.62O40o91.Xb0w0wA4?5Kj.Ybdg1wA4?dPX207xWy01guKQ1@d_g071WR018jwg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2?w4X@_O8Z,od2najA?a0U0g20ef?ojwwy2bV0g0weg80anDM027VVvr_iNw0guw.cIbfW1gvX_UzZw084UEb7_eTzXUT@B@vZb6011W,ONU6TxYW022gg.60Ew2bF0g1wf.auJ1@fZb6011W7ArvnM40o916011@0w1UvE1.X8051@Q01MvIg_LZb_LYyfg.63gBOAVu4IIvi288LBc_LZb8vv_iNw0guw?1wIq022gn7U_QIo047E0g3weM80o@y1@fZb6011W7wrp7P@_S8Y6b9ze0TS_QIo047E207xWy01guJ?s7Hk04xebg7UTYg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2?w4VUOOd_2vr_iNw0guyg__ZbucIzv_DR_QIo047EtfX_i_X_wzNU@@d_Gb64e87T_QIo047EuhJVv7g0wA41060Yjvv_iNw0guxV6TRY9fS2g7zb8T@VZvZb6011WfX_ozM10e0X0b9ze6nR_QIo047Epf__iMw1UuEw0k7Hg071WR018jyQ1@d_4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LZyf040U3KMImcU5vn_iNw0guwk__Zbivv_iNw0guw206fEnvv_iNw0guxU@@h_0g3weTwrpnP@_S8YUb5zee7Q_QIo047EUfX_iM}1w0A;6.49w0w1cf61xgzyC0wxYSfZx@@3_wvJU8UBY@f_x@RI0w3xUiPNZu2KXv7wrvTMg?7UkvYx@eTR_QIo047EuhJFv2M0wA5U@@d_E031@TxbfDQhZvZb6011W1gqvTP__Oe9ng09b4M0wA6w0c7HufLzvTzrpnZUUUh_ivn_iNw0guxU6TZYI?xe7zXUTYg?7ESfZxW@3_wuLU_@7HFwc8v2?w4U.1w,o.gC1gYbZYC02x@TzPTnY106kUs02x@bTR_QIo047Es02xW7zXV7ZU6TVYyvr_iNw0guxM0a7E.weg40DjxU8UdYu?xCn?wvyKajVZpvj_iNw0guz__@cXuvn_iNw0guxM087EufLBvTwrvnN5ZLZb6011W7w08oBUYYd_HLAZvv7P_QIo047E.zbcg0wA4E02e1g?Fstw0wA.20V2w2we6?wjxUWWd_o?x@u7O_QIo047Eo?xWg?aiMg0891.Fyg?2iNA0891_LZyf7zHF7YMICcU?3weP7P_QIo047Euff3vMnQ_QIo047EueKzv_DP_QIo047EC02xWW?MuKM024UufLzvN.uzo_S7HUf@1W_z_UuKC0MxY8020jw.6.49wu1JAv7zrpDZUUUl_uff3vZ7Q_QIo047Eu1J_v9P__QJUYYd_nvj_iNw0guw?2cIff@2g,6,1w?12o7zPMTY?e0Xuvf_iNw0guxUWWd_rvf_iNw0guyo0a7HE031WQ3@_QI[o05;1w,o.gC0204MY05Z2eao227M3?cI4?1@57@8vy80E510g23bUw1ovKg0o7XC06x@Ww1UvKg0pR0203AWM?fUA?8AL202ug.U3I?20Vu4IYvr02wA7M024V0w1we7xb97RUiPJZDv7_iNw0guw.cIv062gfw0guBjUO0ZN2?fv?UuyBCMxxP_sFogU02nAf.ZAAwGvk12267iegxZtLVavm?wjz__S0Ut3UFvl18iDQkkyxZu4IZvinQ_QIo047E.3b8w1wA1w0c7Es02xW0Y0g3RE0e7Eu?1Wg?fON0gAFxQz7avd8FiDQkeIpY55b6v1h2NDMkWIpYM062gvX_8zQM0k4Vu05xAa01MvKEIyAVu5d3vnxb9nR?80Us051@nxbfDQlZfZb6011W701guA?a0UufLzvTxjh7StYvZb6011W.f2NU0i61e022gnzHFDZUYYl_s04xAk?w3xUSSd_Rvf_iNw0guw?a0UudJAvTzzwTZxYvZb6011W7018o680m7HA061WVw1EuKw0s7HJ0szvqw1UuKM0i4U4?1Wao327Mw081e,o,6.49w?3weM?83A2060Uu4IYvv?8jBUiOhZu4IXvinM_QIo047E.3b8P@wA5w084U?1we701wvzFYLZb6011W,OMs0o90o?xWn?Muwf040Zq03xW7w?uD__S0Ug49aon01wuziiiFZQz5avhgWanQkkyBZ548FvnxbfnSxYLZb6011W,OO0_E91kvb_iNw0guw206fEpvb_iNw0guxU6ShY_LZyf8yOoPzNX_Zb6011W8w1ouKg0o7HC06xWWw1UuI1020VI04xebg78TQg?7EFwc8v2?w4X@_S8Yib9zebDL_QIo047E0g0wetz__QI.1w?12o701op3@_S8Yu3f4vb2OoPyNYfZb6011W7018o680m7HA061WVw1EuKE0u7HI04xe1.uyQ1OdZFwc8v2?w4Ug02jFu4IYvg?aoA.AIhfS2gb3@_QI.1w?12o87N_QIo047E0w1zW9nN_QIo047Eu1JAvfX_ozNEICcUcf__iM}1w0k.80j3OMmQ8UFw88vez_EvLM_Y7X@f_x@N.vwh_O7UL021e0TN_QIo047E_L@2fbyOx3w?cfHu1JZv205O7L03OwI30e0g205ynz03OAI?e0g9DS07Op9G1Zz0cw4.g3A6qa0h1ww045tJ0f063a0hb0ioggM5011I0w0gpM07vf__9PBUe2BZZ0cFvhhaaDSKi6hYHAw@vl18oTM.cIO0a2gs0fa2P@_U8YOba4eeM1w40w1oBUM0YFbe01w42pZw1YCiqwvoM381.40V1Cyw4go8011nrg3M1wOw4jM4C44c1g0gr08046s01TP__OsVu3wFvvg3anQkiyFZHAzAvWV8fDRgifZ_.vbaM1wA703OwI_L@2ffyOx3zc0E1080m9uc0faiP?E10Cvo0v9ACE7Sc0O0g?10egpEE1462?glSQ0Y0ocE17I19x130k046M2011D?tY__YDenwUanTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM?7OOc0E91M0YEbfX_wzMEIUgU70a0g205ynz03OAI40a0g9DS07Op9G1Zz0cw4.g3A6qa0h1ww045tJ0f063a0hw0qoggM5011I0w0gpM08vf__a3BUg2BZZ0cFvhhaaDSKieh_HAw@vl18_TY?1YIR062gbM08o43?AIM0q1giM5wA42?AI_LZyfa2NoPws0890201ZW.8UA.AI3022gfX_ozOwImcU8Egwfvbbg3TAD4Fx9icFogU0inA?40VI02xebw0wjyM027VK011Ao7O_QI.cID0i2gg40U3JUWWd_xuT_iNw0guzM024UJ0vzvN.uzE_W7HYf_1W_z_UuKC0MxY8020jw.6,1w?12o7zPMT_.7VauT_iNw0guz.7Fu1J_v.7ONs_E90L?xwgc02iPU0U51R0a2gg802iP@_S8YEb5ze1g0wA0807TE.zyg?2iM418918Egwfvbbg3TAD4Fx9icFogU0inCM0a4U?20eb?8vD9YvZb.3b4P_wA2M0c7Eo031e_X_EzNUIWkUuff3vP?w3yZXLZb6011W7zPMT@hXLZb6011W3g?4w?49wuff3vY.vBVXfZb6011Wc.uA.cIgfS2gbU0ouxUWWh_hvD_iTwrvTNUWWd_suP_iNw0guzM024UJ0vzvN.uzE_W7HYf_1W_z_UuKC0MxY8020jw.6.49wuff3vNTI_QIo047Eu1J_v.7OMQ_E91_LZyf7zPN7ZoIScU0g3wePDH_QIo047EyfX_iM.6,1w?12o7zPMT_.7VSuL_iNw0guz.7Fu1J_v.7ONY_o90L?xwgc02iP01851K0e2gg802iP@_S8YEb5ze1M0wA0807TE.zyg?2iMc0890_LZyfa2NoPw?20V?2web?wjyM026hwv3_iM.OM4_E90I031w6?MjL@_W8YwbeBe7zPMTYw080UtuT_iNw0guxUYYd_iuT_iNw0guzI_LZb,o,6.49w4010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4rPXC40w040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hDfKog3?g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc811Y@Vx0g024e4?vzz.7VNuH_iNw0guz.7FyfL_iM?gC0g040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hHfKog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16c@Vx0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw46PXC41?8gUg01@ec.vB5WLZb6011Wc.uBU6TZYtfL_iMw0vuwg05TF.3yg?aEA.wIfwoFli01wA,AI_LZyfa2NoPwY1o918Egwfvbb03T?47VV9M8oikzam4e?BVI02xe.w3yM027VWuX_iY?guA.cIqfO2gb?Muxw0c4X_L@yfc?gvBUIWkUuff3vP?w3zlW_Zb6011Wc?guA?a0Uuff4vTxjgTRtWvZb6011W43Z_QIg040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0h_fGog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE17s@Fx0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw4bPWC41?8gUg01@ec.vABWvZb6011Wc.uBU6TZYNfH_i_X_ozM10e0XSb9ze4nE_QIo047EBfL_iM?2iMk_891XfX_iM.6,1w?12ofX_ozOwImcU@fL_iX?UuyU0c60o031e_X_EzO8IWkUuff3vR?w3zpWLZb6011W7zPMT@JWLZb6011W53Y_QI807TE4?ZWg.UA?4C9.8b3U6iBmE0o91.abe3WwA4yx40ZYII0fs?8vDAD0xx9idaogU02DA,VI02xebw0wjyM047VK?1AlDJ_QL?27F.3bdzWwA2M0e7EK031w6?MjL@_W8YM?x@oyPFjxUYYd_k020e47G_QIo047EM?xWg?E3xUYYh_u4IzvsDD_QIo047EHfL_iMw0vuwg03TF.3yg?ioA.wIfwpalig2wA4.EIlfO2gg?g3A?a0UM?x@r?wjyM046hPuP_iY?8uA.cIjfG2gb?Mo1w0c4X_L@yfc?8vC0IWkUuff3vO?w3yVWvZb6011W7z__QIg040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hqfCog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE158@px0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw42zVC41?8gUg01@e2nD_QIo047Eu1J_v3zV_QI?49w_LZyf040U3IUIScUhur_iNw0guyk@vZb_LZyf040U3I8IScUbur_iNw0guxY@vZb.abfX_ozOwImcUmfW2g,60gx4a1,o1248zA.EIS022gfX_gzT@_M8Z8bBaeh2V23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ,o,6.49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~%`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M120g0weg.60gx2ah,o2288KA?2AIxfC2gfX_8zQ.1wQ9sFei288LBM@vZb.abfX_ozOwImcUTfS2g,60gx4a1,o1248zA.EIKf@2gfX_gzT@_M8Z8bBaeh2V23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ,o,6.49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~%`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M12UfX_iM.60gx4a1,o1248zA.EIRfW2gfX_gzT@_M8Z8bBaeh2V23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ,o.gC0n12LMx0aH4o1gqN69o24gRSMxY1s4Ev64%`0GQhym0x4dtI8v0n1a7Nx~0y4gym2J4tscHv6pjW1Z4?Fenj_0480_LZb[6?M.w1cfc1fgzyC0wxY,o320oKw1080U4?1@e7_8vzxULZb6011W,60Uw6bE0g20ecTy_QIo047E,o420oKw1080UKub_iNw0guw.1wi81yW040w3yBULZb6011W2?8jw?60U4?1Wao327Mw081e[6}o2zg0g;Fw88v0k0DQaC0CxZFwc8vf3_2@xgo8JZ55Fwvtj_33w?8LFwL?uao3ynQ806LF80i0jIP__QL8__ZbNf__iY3__QKY__ZbKf__iXj__QKM__ZbHf__iWz__QKA__ZbEf__iVP__QKo__ZbBf__iV3__QKc__Zbyf__iUj__QK0__Zbvf__iTz__QJQ__Zbsf__iSP__QJE__Zbpf__iS3__QJs__Zbmf__iM80j3O4jA8UFw88v1.vyh_O7Us?xe1.uyC0MxY8020jyQ}sC8:1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V<7hFrmlMey1Opm5A86lOsCZOey0BsM.6BKtC5Iqmgwon9OonAwqmVApnwW82lP06tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP;1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g<9mNIp0E.1Dpnh3k5lQqmRB]t6BJpn1vpCVScm4;7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8;7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq]7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD:Bc34Sr6NU02kMe7w<9j0Uu2QBc34Sr6NU<5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb{820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK[1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ<t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng,1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt(4,2<M.223KeQwwXzJ88eUXi23KeQ16McXg<s.2wTL__s,f3v__@4,sen__R01?3gV___G04?23H__Ys0w?4fv__Rg2?2wZ___m,1{nFi?hUgg4r30405,1w.10Z___H<122k40gwp14,3<ETL__j04:38,h,6jv__ZU1g.4k9gg2r1pM4gVY1C0x63J02Cgut0N51vB8aBMB2Cwp1Dw912M9nBMB1Cwp1Dw82iZt1SAbuggU0i0p1TZTsSZDoggXg0Fw8Cgur1pM4Dgev0h51vC6n2kaq1A6u0BvngtF1TA4e04A6gt_tTdLpS44eQ0an2pw8Cguq1FI5D0it0VU2DM4hgnV8RZHulps9Cwqu0A7ngtF1TA4e04A6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnU.1k,404?1zA__Zk0w.4w9gg2r1pM4DM553H014k5@hFU2idV73w161A7vTdJ43H01CMms19U2DM4hgnV2Dgd_2JR1TA4e04o6gt_sSQcbmdR1Tw?s,6w1.wVL__k0c.163H034k5@gVI5gpM4gpQ3gpY1upU2nZJ1T47tgtV2TQ4e0486gkgeI0er1pM4Dgev0h51vC_rgtN1Tk7vgwEe04c6gk4bi9I5D0it0VY1i0HrgtN1Tk7vggU0gMp1ggI,Q,T04?fPE___M2M.4weY04hgnWt0VU2DM42BwEe04o6gt_uTkgbuMEe04o6gt_uTkcb01M,k0w?Jfj__Ug<i0Uw4k5@kwU0gMp1//////////////////////////////////////////////////////////////////////////////////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!;M1o:1g5w:1zZ0g:g]3S0g]M}E14]d}7MM]6g}8_g4;1I}2[q}13Z0g;7[8}fn@_SY<Y04]5[w6]1w}M0w]E}b08]b}1w[M{08:8}Q08]k[s}5M]2E3w{7;V2Y]3?1M+01M]3o2}w}Q0k]9}1w}_L__rM,282]f___SY;g]3M__ZL<3g8]@v__rM<R!!!!)7Y2!!!!!!!!!!!!!!!!!!!!!!!!!!!.3oc]9wO]S3]30cw:40Q]23c:1gcM:7wP]M3c(dwM]@3c:3oc]20Q]S3]1Ed]bwQ]S3]3wd]2wR!,dwM]o3k:3oc]8wR]S3k:1gcM!.3oc]2wS]S3]1gdw:9wS]S3]3wdw:30T]S3*2wO]k2c]1{10w;y3s(fwN]k2c]1}5010w;G3s(cwN]k2c]1}b010w;O3s(bwN]k2c]1}f010w;W3s(4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag,w,g;4?4t1904Poj40w1k:205g]w,g;4?4t1904Poj40E14:3c4g]w,g;4?4t1904Poj40v3]2gc}w,g;4?4t1904Poj40w1k:3c5w]w,g;4?4t1904Poj40N2Y:34bM]w,g;4?4t1904Poj40N2Y:34bM]w,g;4?4t1904Poj40P14:3s4g]w,g;4?4t1904Poj40A3]2wc!^3?40O04#3?80Y04#3?c0c08#3?g020o#3?k0d0w#3?o0y0w#3?s0S0w#3?w0G0U#3?A0w14#3?E0U14#3?I0v3!3?M0E3!3?Q0c3w#3?U0t3w#3?Y02fQ1$301?4fQ1$301406fQ1$301808fQ1$301c?fY1$301g,2$301k.42$301o.c2$301s!.301w0a0s2(4,40f7_^0Q,2o0E0w1k*Y,2o0E0U1k(28,2o0E0k1o(3w,101o.c2:1}4g,101?4fQ1)6I,2o0E0M1o(7s,1?Y02fQ1$40f7_^9o,2o0E0Q1o:1c0g:ak,2o0E081w:1U1g:cY,2o0E?2]1g0M:dY,2o0E0k2c:3M2M:eQ,101o040c2:4[A1.101o080c2]1]1I1.101o080s2:8}2M1.101k.42;1g}3I1.101k0k042;1o}4I1.101k0I042:U}5I1.101k0Y042;1g}6E1.40f7_^7g1.1?U0F3E#40f7_^881;E0U1c(aY1;E0o1g(dk1;E0U1g(fQ1;E0U18(242;E0M1c(4o2;A0w14(6s2.2o0I0v3*6Q2;E?1c(982;E0w1g(bo2;E0Q2Y(cA2;E0g1k(fA2;E0g1c(143;E081c(3o3;E?18(683;E081g(7M3;E0818(a03;E0E1g(cY3.101406fQ1)dM3;E0w1c*E4;E0o1c(2E4;E081k(4Q4;E?1k(784;E0E1c(9s4;E0g18(bk4.101808fQ1)bU4;E0g1g(e84;E0M1g*A5;E0M18(2A5;E0U14(5s5;Q0c3w(6E5.101k.c2)7o5;E0E18(9I5;E0w18(bU5.101c?7Y2)cg5;E0o18(eg5;E0o1k*s6.2o0A0E14*Q6;E?1g(3s6.io#1I5.g!4A6.io#5I6.w!do5.g!7s6.yo#946.io#aE6.h01k0s082:M}bQ6.io0E0g2Y:24}d46.io#ec6.io!I3.g!1Y6.g!fg6.io!g7.h01k0g082:M}1o7.io#7g3.g!347.io#4U7.h!5Y7.io!Y2.io0E0E1Q:1k0w:5w2.w!7c7.io#1M4.g!8c7.io#9U7.io#aU7.io#cc7.io#dk7.io#c41.g!eo7.io#ag2.g!fw7.h01k0E082:M[I8.w!2k8.io#aA4.g!448.h01k0Q082:M}5c8.io!1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0c3>0Mcm4Ks6NQnSdxr6MKnRZzu65vpCBKomNFuCl-0c3>0Mcm4Ks6NQnSdxr6MKoCBKp5ZxsD9xulZSon9Fom9Ipg>>0NoiVMr7hvoS5Ir2VDpnhOtndxpSl-0c3>0Mcm4Ks6NQnSdxr6MKoCBKp5ZSon9vrT9von9OonA0c3>0Mcm4Ks6NQnSdxr6MKsThOoSxOg417j4B2gRYObz4T03>>5BbD1It5ZzomNIbBZvpSRLrBZPt65Ot5Zv05ZCqmVF03>>5xbD1It5ZzomNIbDdQsCNBrA10hQN9gAdvcyUNdM>>0NoiVMr7hvoS5Ir2VJomJBnS9RqmNQqmVvon9Dtw1vnStIqmVHnR1cl79BsSZItCk0c3>0Mcm4Ks6NQnSdxr6MKnRZPrD1OqmVQpCBBpmkNczx0g4tcik93nP8KcP80c3>0Mcm4Ks6NQnSdxr6MKu6pOpmk0c3>0Mcm4Ks6NQnSdxr6MKsThOoSRMg417j4B2gRYObz4T03>>5xbD1It5ZzomNIbCdIrSdHnStBt7hFrml-0c3>0Mcm4Ks6NQnSdxr6MKu6Rxr6NLoM>>0NoiVMr7hvoS5Ir2VCsClxp410hQN9gAdvcyUNdM>>0NoiVMr7hvoS5Ir2VvnSlOsCVLnSNLoS5QqmZKg417j4B2gRYObz4T05Zvp7dLnSxxrChIpg>>0NoiVMr7hvoS5Ir2VvnT1OqmVQpCBBpmkNczx0g4tcik93nP8KcP80c3>0Mcm4Ks6NQnSdxr6MKoCBKp5ZSon9Fom9Ipg>>0NoiVMr7hvoS5Ir2VMtnhPg417j4B2gRYObz4T03>>5xbD1It5ZzomNIbCRBrmdMuk10hQN9gAdvcyUNdM>>0NoiVMr7hvoS5Ir2VCpn9OrT9-0c3>0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3>0Mcm4Ks6NQnSdxr6MKpCZMpmV-0c3>0Mcm4Ks6NQnSdxr6MKsThOpn9OrT9-0c3>0Mcm4Ks6NQnSdxr6MKpCBKp5ZSon9Fom9Ipg>>0NoiVMr7hvoS5Ir2VvnSBPrScOcRZPt79QrSN0g4tcik93nP8KcPw0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv03>>5xbD1It5ZzomNIbCpzr6ZPpk10hQN9gAdvcyUNdM>>0NoiVMr7hvoS5Ir2VMrSNIg417j4B2gRYObz4T02VkjQcK03>>5xbD1It5ZzomNIbC9RqmNQqmVvpn9OrT80c3>0Mcm4Ks6NQnSdxr6MKsThxt410hQN9gAdvcyUPcM1vqmVFt0>>0NoiVMr7hvoS5Ir2VJomJBnSVBtRZxsD9xulZSon9Fom9Ipg1JpmRzs7B0hQN9gAdvcyUNdM1Pt79IpmV0hQN9gAdvcyUNdM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1MrSNIg4tcik93nP8Kcjs0t6BJpn1vq65Pq5ZPt79RoTg0nRZMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80nRZPrD1OqmVQpCBBpmkNczx0hQN9gAdvcyUPcw1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0sThxt417j4B2gRYObzcP05ZvqndLoP8PnTdQsDhLr417j4B2gRYObzcU071Rt7d0hQN9gAdvcyUNdM1DpnhOtndxpSl0hQN9gAdvcyUNdM1Pt79zrn10hQN9gAdvcyUNdM1CsClxp417j4B2gRYObz4T07dQsCdEsA17j4B2gRYObz4T07hFrmlMnSpKtz5xnTdQsDlzt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1Dpnh3k5lQqmRBnTdQsDlzt01Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP!!!)6M,s,2}cw1]O04]A&1&2U.3S__ZL0w]3M0g:f01]f[3[w&U,2M,8}c08]M0w:dw3]1<c,8}1w}g<c,2[w6]20o]I0w*g*4w.3___ZL0w}Q2]3g8]kw}3[8[w]1l,_L__rM8}y0w:282]5[1<4,8&p<g,2}dw8]S0w:3g1g]c}2[o}6U,4,gw]2E3w:awe]Q08]3,5<w}6}1U<g,o}w14:204g:5M&w&vw,4,6}e0h]U14:2s7w(8&8g,1,1w]1Yc]7MM]9^g*2a<g,8}E3]2wc]907*g&Aw,4,2}30U]c3w:14&1&a<1<w]1Qe]7gU]d08*g*2G,3w,c}2fQ1:8_g]w&8[w}Jw,Y,3}13Z0g;4fQ]8&2[8}c8,1<M}o_g4;1zZ]2^w*3f,1w,c}8fQ1:w_g:e01]1[8}1[S<4,3[3_0g:fY:1g^04]8}7c,8<M{08;53_[4*w}2}3t<g,c{42}g4]2*g&UM,w,3{30w]c1:E1*4&ew,1,c^030g;bw&4[g]3N,1M=a0s2:M0M4;201*4^g,8!k0g1;2w2M:1E.1m,2[o[A,3!f0f0g;pgw*4&h<M#1l604:s1*1&'
;;

'riscv64')
b64=$'37694 18848\nmd5sum:e94d7c5a7d5aabd6aa7815a749915651\nsha256sum:8cd1d538139fe8b4e68579c2d8e7e4e089676ab41bcb36572ce610554f2d2e45\n0OnScOs31vuCBzsT8Os31vuCBCpmVzpmAOs31vuCRJtmMNs31vuC5xrmYNs31vuC5IsDdzcn\n000000000000000000000000000000000000000000000000000000000000000\n0rm5HplZKpntvon9OonBvtC5Oqm5yr6k\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n0YpCBIpnMJfy1rf5p1kzVt\n000000000000000000000\n00000000000000000000\n07mffo@5yNJn5M2X1_1\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n07mfKoYX1M11CZsn)\n044Pudw\034vQlchw81.[?c0YM01{1[a12]1g>4?e?804?7?r?c?704,_z8#pw(4[g,k#:Eag:2wF}1}1,1w>f0J]Y3Q:3Mfg:e04]@0w}4}8,6,22U]8fw]w@]E04:2w.]w}1<g;w}2[8]A}2g}1}1gVnhA1,fwC]@2o:3U9w:3M}f[4}57Bt6g6#$?1[kKlQp.>3Mbg:f0Z]Y3Q]g0w:102}g}4,5<c>17jBk0ePRd2eFO6298mwoZ@bcKDOtnr5Y;M>24,1,1w>118h409xg2;24,B,N1LJmGG3zf7aTQtTGhltbG9neFOxd6BR#{3?E0Q18+dI,g%4I,h$4,w%94,g%3c1>i%6o,g%7s,i$Q1>g%bw,i%54,g%dg,i%bY,i%5A,i%6M,i%2k1>i%co,g%eA,i%8w,i%3Q1>i%fA,g%5Y1>i%4o1>g%3Y1>i%9Y,i%3s,y%74,i%5Y,i%1Q,w%5w1>i%4o,i%8E1>g%aA1>h01g.48]M}6g1>i?E0h1Y:14}bM1>h01g0448]M}ao,i?E0n1s]4.:9o1>h01g0s48]M}7w1>h01g0E48]M[1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1MrSNI07dQp6BK07xJomNIrSc0pD9Bomg0pClOsCZO07xCsClB07dQong0pCZMpmU0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06pzr6ZPpg1yqmVAnTpxsBZLsBZxsD9xug1Pt79zq780sThOr6lK069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvon9OonBvtC5Oqm5yr6k!0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcU04tcik93nP8KcPc0hQN9gAdvcyUOdM]4?w01?4?w01?80.02?4?w02?8?M02?401?2?80.02?4?w02?8?w02?4?w02?40.01?40.01?40.030cU1>g}byhBwo>g0S04?1,2PApo6>30ec1>g,xV6m1w>w3K.:f0Z}M]1m4M:fwZ}M}u4M}@}M[fw:e1[M]307M:ex[M]208g:f1[M]307M:fx[M]2E8g]11}M}E8M]x1}M]3M8g:111}M}U8w:1x1}M]1w8w:211}M]2E8w:311}M]307M:3x1}M]3w8w:411}M]307M:4x1}M}88M:511}M]307M:5x1}M]1g8M:611}M]2w8M:6x1}M]307M:711}M]388M:7x1}M}g9]8x1}M]307M:911}M]189]9x1}M]307M:a11}M]1M9]ax1}M]309]b11}M}U8w:c11}M]307M:cx1}M}g9g:d11}M]307M:dx1}M}U9g:e11}M]209g:ex1}M]307M:f11}M]389g:fx1}M}o9w]12}M]307M:112}M}g8g:1x2}M}o6w:2x2}M]3wg]312}M]1M9w:412}M]3w8]4x2}M}o6w:5x2}M}Mgg:612}M]2g9w:712}M]2M8]7x2}M}o6w:8x2}M]28gg:912}M]2M9w:a12}M]2w8]ax2}M}o6w:bx2}M]3.g:c12}M]3g9w:b0_}w,c{bw_}w,g{c0_}w>24{cw_}w>2c{d0_}w>2k{dw_}w>1E{e0_}w>1Q{ew_}w>2o=1}1g,8=x}1g,k{11}1g,o{1x}1g,s{21}1g,w{2x}1g,A{31}1g,E{3x}1g,I{41}1g,M{4x}1g,Q{51}1g>2g{5x}1g,U{61}1g,Y{6x}1g>1=71}1g>14{7x}1g>18{81}1g>1c{8x}1g>1g{91}1g>1k{9x}1g>1o{a1}1g>1s{ax}1g>1w{b1}1g>1A{bx}1g>1I{c1}1g>1M{cx}1g>1U{d1}1g>1Y{dx}1g>2=9sP>P0Yd10XU3Y1c3g_SjwwfM4Rcj08eOww1D?U05PU>c@3KZD0MU04M>1s@>3fEXKpMce01c,nfw>PUeXCs33w0j,5PU>c@zKRD0MU04M>1s@>3fwXJpMce01c,nfw>PWeX6s33w0j,5PU>c@3KND0MU04M>1s@>3fEXHpMce01c,nfw>PUeWSs33w0j,5PU>c@zKFD0MU04M>1s@>3fwXGpMce01c,nfw>PWeWms33w0j,5PU>c@3KBD0MU04M>1s@>3fEXEpMce01c,nfw>PUeW6s33w0j,5PU>c@zKtD0MU04M>1s@>3fwXDpMce01c,nfw>PWeVCs33w0j,5PU>c@3KpD0MU04M>1s@>3fEXBpMce01c,nfw>PUeVms33w0j,5PU>c@zKhD0MU04M>1s@>3fwXApMce01c,nfw>PWeUSs33w0j,5PU>c@3KdD0MU04M>1s@>3fEXypMce01c,nfw>PUeUCs33w0j,5PU>c@zK5D0MU04M>1sR>j1gk0BPs?9e7x_Zzyas0BPs?8eThYShMUa7wE0ndg?4MnB_psR?2jxmnZyoSjRPl0_p6@Bom5CsmndM?wXs7Pp73wEu2w9sT?23NOvXDut14grABPs?8eTNYGhNNsR>j1qmIwFvLY1_VEC25hNsT>z1fvUgg62w8a0sr@ndM?wWs7@9nbAQvR_Nn6bFondg?4MnBZEf61g0rRUs0xgmRzVfTZM@a1WGnD4uVz@ekNvUjNvv_wE2TxHzJAUo6cFsU?2jy4zQ0kwj0M.4TUo09Jn6?X3I11cTXu01fT5M0X1@10IYv70pLn5M1RzPSf4_Un01Jn5M0X3I11cTXu09dT5M2X1_10cQv70hJn5M3RzXCf1oKrRNs0eMvwg1f@5M1RzXCfeMv.pLn5M1RzPSfxoIrlNs0KMvMgfmf4TUn03SfKMv.hJn5M3RzPSf8W3E?kEAgzz6CzSxksndM?8OXTW3C_kn6yYqrJOKC6ZsXBQK5m_lXRwQs502G9HEirxPvZcEgrxMs0Cuc3hNk0oNI781sT>39QvCBPs?9e7N@ldWXu6KeSjxwoOBPk?9e59uk1hxc5010ju1o0CRsm03I8|04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8|0ATsn0bI7Y40PhMs16Rsn0fmfKoY5yVLn5M0X1@104_wn/0ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrSBPs?9e7VZE5hVz30Xu7g6ce1MW5hU8n0kq5hiw0fKjLY7_moRKw3EdnUg25ySe61MWndM?wXt7Fk5B0XE70e_MvY6GyolaoM456BHVoL5CXmHFdWDOONc9msWT9Oa4AUtncwld0xDixA5Cxklexi8tfFDLY3_24MQZ6M5bBPI?9eb2Zcn3>4MOcSGGc3sS3JUJ0NsZqxmq6PEm2BPe6f04GyYW70Ys708k7cQAD0jc9Ggfz6vr@QEp1pEl5jEnLY5@ZGENFZla5X_2_OqGbjElzC0IaX_3_ISea2wOpM2ewp05z2wggiDIaveFIiCQzc2g1HD0eteVAjCCKqgVGWDFuxqFXrm62w1s7>j1Ovi8XjDgfmZ30wn5g?4MkBBe_MfXyGyBD9BPs?8eTFVl1pgeW1M3LYd@NGEBdNlHVoL5CXmHFxkExJOeQyQ6n1M?AUv7PjS_BNk?9e5Fp1axu_M7XYGyAn5gmnLY7@KGEAZNlHVoL5CXmHFwkH9Lu_MfWBzy0E2X_2_Ggx1xkLLY3@RGEkn5g?4Mn5A@_MnWlauMFYWCNarq6TkEnLY5@Vbrtixu_MTXzVJVsl?2jxmma5Nk?1c5poDLY7@UaEEtNk5BX_3vFWG9UNo5VBa5X_0vJxsl>j1kmdX_1vE8lb_rRauMFYWCNartmZ5Nk?1c5ForLYb@uxkLlJu_MfW48golbX_2_H2G6OEkn5g?4MmBx@_MLVPpJlRNiLwKypc5I0myU4XQxKiOyiG4X_0vE17d9LOGx2a5X_1vEyal0QvR_Vc7Q0lz3fs0UDgyxgpAFC1exIG5EDB2um5xwrNmXbeax40jxhE0kL3LY3@tEElmxyGaxgjLY7@tQFECxie02w3LYb@t4MjR_@_MfVKCxia6GEgCBe_MvVJixic0103LYd@i9s4slpfT1MiBUOB6b?CxgbAX_1_Ea9Dwsu3NMs0zsKCxhsl>j1um0X_3_A054kEnLY7@i9EnLY1@iFC0yxgpAUDg2uK9GgDCyum5xwE2GxsW6iEpixu_M7VYGxcC_kEnLY7@hlv5ixu_M_UUCxu_MDUU1hdCT3n66XBbWzktzPqskEKGCVIHyjLW5hSftFMO0pod7102hUM54zks1imc5Zhq42aq52knLYf@kqumTFYgwpCujxSuWJ_pjUVe6ZDO25YpFJFuP5_s2JQof09e61yhZBMM9vlmPytA2DoupzXWpX_1vxyGasu7apwFTJQsf09e71OiPxLo2WCkGtHc7ZMaKBHWmIFreBCcf10NmZFca.4n1w?4MoCupc5?hmxu_MnV7mxia50krLYb@9oM490xs6>j1ypTAMk01cW69EnLY3@fFElaxg56X_2vxRpAZC2Sp1pFYDCOuBa5kDERooa?kg1iog8FEk9hu_MvUwdTgM90kkKVe_MH_N1XsFF2DuThMY0AUs79be9@g9GpGFSEClZlrc7ZMaOCrWpJFDLY2_WaEExQu_MH_I8gu_MnUuGxhs5>j1ulIX_1LZRpAJCgmqv9V1kHSo5a5kDERooa05Mk?1c5VmrLY6_R1kHBJXq55Mk?1c5hmPLY5@8ZC1mpbpA5CDOula5kDERooa?XA50od72g3zCgvE0kChL@_MX_g8gu_MDU2Gxhs5>j1ilAkrZRsoG58K7a@0rBFLPLYd@20PA502G4BMk?9e59mtaxu_MDUpxPps5?2jxilDiEnLY9@5GEgZNps5?2jxglFiEnLY7@4GEhz0wkeBMk?9e5NmFaxu_MfUeGx5TJwAsdhSd3ZOhzzesq2ksn1g?4Ml5k6eqVM08p8d71g29VNs5>j1glfBNs?8eT1YkM04M?I8@Ve_MvVBz?kmxkilE8973ktziLsioULD30B75Mk?1c5VkJzB@s026i3hMk0oUs74Fsn?23JMv1c021hjXAX_2vBnDNECoj2g41iEkn1w?4Mp6pFc5?fLY8_NiEnLY2_Pcq02hqa5X_2vRaG48EnLY0_yGC0ap4pV9EnCt4BxwE3axhs5>j1slwX_1fTEl4Yr@2hMR7oQjT66ebVN89hNs5>j1ml3oVHD?xAwQs508DD5Mk?1c59k81hyM?IjLY3@d8v6yhxc9.5axhs6>j1CpuAMk?K_Mb@Baxu_MP@FpJMxA0PA40od71g03hMA0IuYn1g?4MnBfmca1OOn5M?wXuDIP?wkneZ3XAX_0vy6cq1jqypFc9.5exhs6>j1GpoAMk?@_MX@fexkG50krLY4_sFDARJNs5>j1slcX_1fQEl4cr_z3wvIvrsn1g?4MnBd_CR8Cuihxc9.5axhs6>j1yplAMk01u_MrZZaxu_M3@7JJgxA0PA40od71g03hMA0oUY75Kcc1@in5M?wXt7Gz?j03eZ0b2fKjLY8_@oNU5b29DAAqj2g41jEkn1w?4Mo6k9c5?nLY4_qDrs8p0cV1063hMk?Qs90a7bUMU7X056b03eZ0b4X_2f@Ccu1iyyhFc9.5exhs6>j1GpbAMk?K_MrZoBJNs5>j1gl6X_2fNol4wrQn1g?4Mk5gK_MzYi5h86R5Mk?1c5xiFtZNsD>39@tuBOs?9e7pRVdWXu6KeSjxwoOBOk?9e5NlQ1hxc5010ju1o0CRsm03I8|04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8|0ATsn0bI7Y40PhMs16Rsn0fmfKoY5yVLn5M0X1@104_wn/0ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrSBOs?9e7xRc5hVz30Xu7gecn1ZonZ___4Mt7myeQVQ2VKNs5>j1mksUN47W1sD>39WtgBOs?9e79R1VZXu6KeSjxwoOBOk?9e5xkY1hxc5010ju1o0CRsm03I8|04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8|0ATsn0bI7Y40PhMs16Rsn0fmfKoY5yVLn5M0X1@104_wn/0ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrScrYn9M>OsDhpsD?2jxWt46vKTxHzJAUo6cFsB?2jxgl40koj1g.4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs70hJn5M3RzXCf1oKrRNs0eMvwg1fU5M1RzXCfeMs.pLn5M1RzPSfxoIrlNs0KMvMgfmf4Twn03SfKMs.hJn5M3RzPSfCc459F45UNKCZFmRFDC5hf6@gh65hhsB>3dgka1KjLYe@Sxkkn9g>Pm51@_M3Xq5hhsB>3dqk5X_0LJol55Ok>cRhgnLY4@QEC01hk41wE0J}79y]t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M[t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug,1QqmRBs3EwsClxp21BsD9LszEw9nc>1FrDpxr6BA865OsC5V86BKp6lUey0BsM1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM;pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA<2lIr6ga,pSlQgR1lt6BJpg:7hFrmlMnSpKtz5x;1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO;1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw:1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M;9j0NdCNIu?Bc3xU<2kMe7wJ9j0NdCNIu<1lkQ57hjEwt6BJpn1vq65Pq2&]gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK;19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK]t6BJpn1vq65Pq2&;1QqmRBs5ZzsCcPcy&<7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ<pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng0B8Oa4V9POOM4r0PIY,1w>63I__Zk,jKT__Sw>1AYf__Z,6zN__Zc.?8ff__Yg1?1c@f__308]g[dWkw01v0416MM201<o,1eP__@U}y,2M>3uXf__5wc>123L01l8w4ygqi2842AMGk39keBN838w6m49wkChqq60aoRAbogJB2SAoaMkb8gIB2QAbjgJh2RkjngwU.wI2g9ogC1ip5FEokdroStFABx2o59AmCxxE2Jp2S4bpgJF22R3mSdDq0zGm49wkChqq64bmgJx2Skbq?1k,K,6zL__Y4.>48ek4ai24O819cawg9cygpoOkj8gI56QQbigwU.wVgwga818A6Awyj2Aal3AGk309U2I54O4b9gJh2RkbigJd23w122M?t,101>kYf__K04>123K02hE42B0Ney0i91F88AME2x9ke0Aj8gI52OkbigJd2RkjkgwU.wXw0E42y0i91F88AMGk309wO4b9gJ92QQgaMkjkgwU.wJgy0i91F88AMFg2I52O4b9gJ92QQjkgwU.wI0h,8w1?1kYv__b0k>123F01iEw4Awy10EA60M812I52O4bihcB23w122MakAMFIQM9I2Fcap0JqAMFAQMd@0FcagJc07,d01>UZL__h<123x1cwg82cc543w``````````````````````````#]g]3e.:1A}Y3Q]r[w}6w]3Ufg:1M}2}3R_LZL<2w2]1g}g1w]o}q08]a}fA1]2M}o[c}Y3Y]2}a02]5[7}1s}k0U]7}9w8]2}1o2}A}6}3@__ZL<5w8]____rM<1}f3__SY<2ww:3V__ZL<3k`#^8fw`#3__________M[Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1]3M4]f.]Y1``````##4`4`4`4#[?hQd3ey0EhQVlai0Nd2UObz4wcz0Od30Vcj8wa59Bp218ongwcjgKcyUNbjcF045B,sCBPoTo?lI,440lOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M?w,g;4?4t1904Poj40Q18:3g4w]w,g;4?4t1904Poj40Q18:1y4M]w,g;4?4t1904Poj40y1Y:287M]w,g;4?4t1904Poj40y1Y:287M#*0M01>2%M0202w2%M0306w2%M040106%M05?E8%M0605w8%M0709w8%M08050e%M090f.%M0a0d0i%M0b08wv%M0c0fwC%M0d03wD%M0e0f0Z%M0f0fwZ%M.>@%M0h?w@%M0i0aw_%M0j0f0_%M0k0e1$M0l0d12%M0m#M0n#M0o0ex6-1,103N_M*d<w0a0d0i-y:a0d0i-f<w0a0f8i+1T<w0a01Uj+2d<g0l0d12}g]2p<g0f0fwZ+3;w0a05oj+3c<g0e0f0Z^103N_M(3H<w0a05wj]Xw}y:a05wj+3W<w0a04ok]5wc]A.>w0a060o]K04]Q.>w0a01wq]b0k:12.>g0l0dx2]1}1u.>g0l0e12[g:1M.>g0l0e16]2}21.>g0k0e1}k}2g.>g0k0311]m}2w.>g0k08x1]e}2M.>g0k0c11]k}2_.?103N_M(39.>g0d02gF^103N_M(3n.>g3N__.+3N.>g.>@+3@.>g3N_Mw@-70w<c0fwC-q0w>g0k0d12-C0w>g3N_Ww_-Y0w?4%1a0w?4g^1r0w?8%1T0w?4%250w?4g0k0412]c}2o0w?4w^2J0w?4w0a04gv]h}310w?4%370w?4w^3z0w?4%3X0w?4w%d0M?4g0k0112]c[v0M?4$D0M?4w%V0M?4w^1b0M?4w0a05Mn]104:1t0M?4w^1K0M?4w^1@0M?4w^2n0M?4%2B0M?4w^3?M?4w^3k0M?4w^3E0M?4%3Y0M?4w%c1>4%3m0M?4w%u1>4g0k0712]c[N1>4w^131>8w^1t1>4w^1K1>4w^201>8%2q1>4w^2I1>4w^2Y1>4%381>4g0k0a12]c[0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc097xOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vk59fgQl4ll95nQN9jAJ1hQlvl452j4lv05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv06pFrChvtC5Oqm5yr6k0sThAqmV0hQN9gAdvcyUOdM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1QqmRBs5ZzsCcPcBZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kczs0sSlQtn1voDlFr7hFrBZQqmRBs01UpD9Bpg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kczs!0sThOoSxOg4tcik93nP8Kczs0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1JpmRzs7B0hQN9gAdvcyUOdM1Pt79IpmV0hQN9gAdvcyUOdM1yqmVAnTpxsBZLsBZxsD9xug1CsClxp417j4B2gRYObz8T07dQonh0hQN9gAdvcyUPcM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kczs0oCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01Pt79BsD9LsA17j4B2gRYObz8T07dKs79FrDhCg4tcik93nP8Kczs0oCBKp5ZxsD9xulZSon9Fom9Ipg1MtnhPg4tcik93nP8Kczs0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pzr6ZPpk17j4B2gRYObz8T05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kczs0pCZMpmV0hQN9gAdvcyUOdM1Cpn9OrT90hQN9gAdvcyUOdM1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB07dQsCdJs417j4B2gRYObz8T071Lr6N0hQN9gAdvcyUOdM1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt>bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?Kt6lUt?KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bD9FsSdSbC5Qt79FoDlQpnc0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP`^r,1M,8[08[w:2g(4(bw>fr__SY2}2w2]a08]Y[c}2(3w,b<w]1E0w:6w2]G0c]4<w,w}6}1;M,8}40o]g1w:fA1-1(i,f___SY2[E8]2ww:1e[c[w}2}5k>3@__ZL0w]1o2]5w8]g[4<g,w-1A,1<8}C0w:2o2]bw5}M}8}1w}rw,g>12}50e]k0U:2w0w]c,j,2[o}7c,1,1w]3M4]f.]U04+1[4}1U<g,o}Q18:3g4w:bwc-2(vw,4,2}8wv]y1Y:1M1M+2(8o,1<w]3U9w:fwC]f*g-2k<g,8}e2s]U9M:f01-8(Dw,U,3}f0Z]Y2Q]8(2[8}aE,f<M]3Ufg:fwJ]2*w}2}2S<g,c[3U}bw]w(8(MM,o,3[w@]22U:2w.]g}2[g}cM,1<M]2EfM:awL]i*w}2}3h<g,c}Y3Y:3MbM:f*8[w}Sw,4,3}e1}U3]3M.+2(e<8<M]3ggw:d0O]6.-w-3B<g>3(3gcw:2U(1[4}Xw,c?7*0_z8:1C*g*1>7{3Ehw:6gP]A*g(1<w^3UcM:bw8]6w>3w,8}1w}2g,c%I3M:3q1(g-14,3%8F1]5w4-4-'
;;

's390x')
b64=$'53952 26976\nmd5sum:7ecf38cb837e96bb5d8a55bf72284158\nsha256sum:f775807197193b7c07bff0f12a54203040ea6952952465f3e0366ccb1ded2721\n09JAMH2R_@DJt3fciPpDEJrTGUtNrEXLHaZ2OwHJ5GinbdG1cMctVmX2Qs38w8mKlk59y_borecL6q36ylLQG1iqe8STS3LMWxDTRkNrEXLhCC@utwdaZGL2xJcdwdaZA44uC3hKSvNFHNnpP@R1JR8IzpbRJqzWa7hATUUScb4jZ_OkLCVTS@eLK_V5Xu@gS2MzJn@R1JSytcHU13quBFDTkHcZS9nno1BpYIpr3pNrCI6V_\n0Xf2zSmu__xyHCBxq__j5CPfhow8mKr_3SFMpwoXOx412RO1LxrdZHACmS@Mt@4oJQtTxJfiRf7kUA9ETrfU7ZG3rFbizFLBRrUdvdPLJMLrTO6lLQG2UHxW57KNaWUcJxIUD\n0HytZ1VWNUScb4FhAeUgdrmE@uCFqGeHlhPCtQDuL1dIC5nfs5EfJK8cwCH@PJweSUwNQItaqmrcZ5OWQ3o6TLlMXMbFIHlXu@gUFSsCoId2o8IvnGbhnqbkB86@5IXBCR\n0_mbVuEFBOuMqSJhZrtTAW_jkJl63QUn77rsgp6GM8fbPKn58xbV1TwCSj2J@InOZVXwJ1V2_7p4eSUwOutOUFe3lWhWnQJC81ST46n1GZ8_FoWkRDCilEM\n0WOdthwb_gohoOS6PzhtZsttPm3s@HQjRpdrmE@AaOC6PrKYDmHbPVg3M3Vd5b1dh7QwS5_qkaJmIXry38j6AgnJlwguiypT5O5\n0S1sTn1FdkTBsF8ZBDLXSZYxPaKIaakXejc2iQEWqFLaVjTHKuNkuOPTYMJv_FHJ5GiJDmmJN\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n41_4d4ecg4\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\034vQlchw820g[?301o>1(g;68w,01?3w01M1?1Q07,4>5^[gv;11Y;1<g>o<1dO;5T8;nsw;5}Ao;4,02>1w<4Tw;nu;1tU:7}s}2,g>4:sw;1O:78:2g:9}4p7jBk,g<101;404;g0g:f}Y}hAtelh>1w^^>46hQVl8>4;jsw<1tO;5T8:zw;2e}1>1>1g>3hQVl05U07EPWrpKttUPqaYxCv3O@JEa7}c>w,g>q?8k9g4h84}w>95HJ6YjNz8eGtQvvOyVt5qCseBuytmAQEg^{M?2g<13o{3l4^168w^g8^2w4^574w&1l4w&3e4w&4J4w&1V4w&204^4l4^1z4w&1r4^1P4w&5w4w&2n4w^18^1E4w&3P4^374w&3z4w&1J4g&264w&554w&414^5e4^2K4w&4X4w^I8^6b4^6G4g?5w<68U:3>5B4w?2M<2Ow:5w.6Z4g?5w<688:3>2R4w?2M<1_g:zM.6n4g?5w<69E:3>5V4g?5w<6ao:3?nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0pCZMpmU0u6Rxr6NLoM1MrSNI07dQong0sThAqmU0pD9Bomg0pClOsCZO07xCsClB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO06RBrmdMug1CqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr01yqmVAnTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObz4T04tcik93nP8Kd017j4B2gRYObz8;1?8?g01?c?w02?g?w01?4?w01?8?w02?401g01?801w02?8?M01?4?w02?4?g01?4?g01?4?g:1?k.7f>4,06BF6U>1w.tA>g1FqhIM>k.7A>40qmAps>4.1XM.10dqmAk,M.vE>g3mBF4w>8.84[?5T8}M;ls;5Tg}M;l8;5To}M<1tS;63o}M;Vpw<63w}M;W_;63E}M;Vpw<63M}M;X8;63U}M;Ypw<64[M;Xq;648}M;YTw<64g}M;XHw<64o}M;XY;64E}M;Vpw<64M}M;Y8w<64U}M;Vpw<65[M;Yhw<658}M;Vpw<65g}M;Yz;65o}M;YSw<65w}M;Vpw<65E}M;Z0w<65M}M;Zh;66[M;Vpw<668}M;Zv;66g}M;Vpw<66o}M;ZE;66w}M;ZX;66E}M;YTw<66U}M;Vpw<67[M;@ew<678}M;Vpw<67g}M;@ow<67o}M;@Gw<67w}M;Vpw<67E}M;@X;67M}M;_e;67U}M;Vpw<688}M;WC;68g}M;B:68w}M<1wS;68E}M;_z;68U}M;Wr;69[M;B:69g}M<1xa;69o}M;_G;69E}M;Wg;69M}M;B:6a[M<1xw;6a8}M;_Nw<6ao}M;Wd;6aw}M;B:6aM}M<1xK;6aU}M;_V;5@U,M>E-5_,1,E-5_8>8,E-5_g>8w>E-5_o>4w>E-5_w>5M>E-5_E>9,E-5_M>7w>E-5_U>9g>E-6<w>I-608,M>I-60g>1g>I-60o>1w>I-60w>1M>I-60E>2,I-60M>2g>I-60U>2w>I-61,2M>I-618>3,I-61g>3g>I-61o>3w>I-61w>3M>I-61E>4,I-61M>4g>I-61U>8M>I-62,4M>I-628>5,I-62g>5g>I-62o>5w>I-62w>6,I-62E>6g>I-62M>6w>I-62U>6M>I-63,7,I-638>7g>I-63g>7M>I}eJLY3?9bA401@D@_ZwUN3M.AMc.2tqM1.2tPUN0g.4Kg804qu4?cdUud0Yh?1eJLYd?10vQ?3z4f0U02j04.9Q7i1_0M40zz410g?g7Ygs01M070c0g.Dpecg4.10vN3h3z410c01j0Zf/@k,M1.2toUN0g.]0M05c3Q/_Rg.1z04.9QPz41>g7YgQgUN0g3?kMfj/_5>cc0g.Dgecg4.10vN3h3z410c01j0Zf/Xk.18M1.2sQUN0g.]0M05c3Q/_Fg.6304.9Ozz41>g7YgQgUN0g3?kMfj/@l>uc0g.D7ecg4.10vN3h3z410c01j0Zf/Uk.2gM1.2sgUN0g.]0M05c3Q/_tg.az04.9Mjz41>g7YgQgUN0g3?kMfj/ZB>Mc0g.C@ecg4.10vN3h3z410c01j0Zf/Rk.3oM1.2rIUN0g.]0M05c3Q/_hg.f304.9K3z41>g7YgQgUN0g3?kMfj/YR.12c0g.CRecg4.10vN3h3z410c01j0Zf/Ok.4wM1.2r8UN0g.]0M05c3Q/_5g.jz04.9HPz41>g7YgQgUN0g3?kMfj/Y5.1kc0g.CIecg4.10vN3h3z410c01j0Zf/Lk.5EM1.2qAUN0g.]0M05c3Q/@Vg.o304.9Fzz41>g7YgQgUN0g3?kMfj/Xl.1Cc0g.Czecg4.10vN3h3z410c01j0Zf/Ik.6MM1.2q0UN0g.]0M05c3Q/@Jg.sz04.9Djz41>g7YgQgUN0g3?kMfj/WB.1Uc0g.Cqecg4.10vN3h3z410c01j0Zf/Fk.7UM1.2psUN0g.]0M05c3Q/@xg.x304.9B3z41>g7YgQgUN0g3?kMfj/VR.2ac0g.Checg4.10vN3h3z410c01j0Zf/Ck.90M1.2oUUN0g.]0M05c3Q/@lg.Bz04.9yPz41>g7YgQgUN0g3?kMfj/V5.2s[M1.2skM2.2shX1802E1AN1w?2m7X1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.2rYM2.2rVKgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.9nHI6?707P08.9K07Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.9J7zYfZw_T6l0b?FTg05s0g.Bf@cg4>Gu4?z08.94v0Vv/wj0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>LmM1.2qzUR0g.iFUg0jKN80380vc0D/__Q43g02V5w1iFQ4?qtQ02LHh?1?Pz03.92DeM025MnI83qZ0BBo0x08X0kwfPxnUR0/@g5R3I9jqZ0BBo8x08X20EfPxnKho0kGt7_@j09/__@V5w0yIYQ0Qwv@UO0M?2gFPI?hsBX28SLg9pm28g2eMB83YUlXAm05bIcf_7o6iDZf_BVM3jY306VQ3jU306VS3jQ306VN3jM306VP3jI306VR3jE306VT3jA306VM3jw3w6VO3js3w6VQ3jo3w6VS3jk3w6VN3jg3w6VP3jc3w6VR3j83w6VT3j43w6VU3j03w6VW3iY3w6VY3iU3w6V@3iQ3w6VV3iM3w6VX3iI3w6VZ3iE3w6V_3iA3w6VM0g230eVQ0g630eVM3iw306VQ3is306VS0ga30eVN0ge30eVS3io306VN3ik306VP0gi30eVR0gm30eVP3ig306VR3ic306VT0gq30eVM0gu3weVT3i8306VM3i43w6VO0gy3weVQ0gC3weVO3i03w6VQ3hY3w6VS0gG3weVN0gK3weVS3hU3w6VN3hQ3w6VP0gO3weVR0gS3weVP3hM3w6VR3hI3w6VT0gW3weVU0g@3weVT3hE3w6VU3hA3w6VW0h23weVY0h63weVW3hw3w6VY3hs3w6V@0ha3weVV0he3weVX0hi3weVZ0hm3weV_0hq3weVM0hu30eVQ0hy30eVS0hC30eVN0hG30eVP0hK30eVR0hO30eVT0hS30eVM0hW3weVO0h@3weVQ0i23weVS0i63weVN0ia3weVP0ie3weVR0ii3weVT0im3weVU0iq3weVW0iu3weVY0iy3weV@3ho3w6VV3hk3w6VX3hg3w6VZ3hc3w6V_3h83w6VM3h4306VQ3h0306VS3gY306VN3gU306VP3gQ306VR3gM306VT3gI306VM3gE3w6VO3gA3w6VQ3gw3w6VS3gs3w6VN3go3w6VP3gk3w6VR3gg3w6VT3gc3w6VU3g83w6VW3g43w6VY3g03w6V@0iC3weVV0iG3weVX0iK3weVZ0iO3weV_0iS3weVM0iW30eVQ0i@30eVS0j230eVN0j630eVP0ja30eVR0je30eVT0ji30eVM0jm3weVO0jq3weVQ0ju3weVS0jy3weVN0jC3weVP0jG3weVR0jK3weVT0jO3weVU0jS3weVW0jW3weVY0j@3weVkMg.1F_j@cgs71MvHr_0M02j0Q.2_mV103LU_3@KfZNF@L_Y620U01wEe08Kgg0IHf108ePMg2ABiQw0au401SV1?HM3>_wMen/MsKgg0wKME0Mw0vakK?70Vv/8aV102yX2w2Vg1YFTw?avQ0sOl0201FTj_UY0g.AzKcw4.4GtQ0onD0dfMc0rD8dfwc0rDgdfgc0rDodf0c0rD4deMc0rDcdewc0rDkdegc0rDsde0c0rD0ddMe0rD8ddwe0rDgddge0rDodd0e0rD4dcMe0rDcdcwe0rDkdcge0rDsdc0e0rDwdbMe0rDEdbwe0rDMdbge0rDUdb0e0rDAdaMe0rDIdawe0rDQdage0rDYda0e0rD0108c0XD810oc0XD0d9Mc0rD8d9wc0rDg10Ec0XDo10Uc0XDgd9gc0rDod90c0rD4118c0XDc11oc0XD4d8Mc0rDcd8wc0rDk11Ec0XDs11Uc0XDkd8gc0rDsd80c0rD0128e0XD812oe0XD0d7Me0rD8d7we0rDg12Ee0XDo12Ue0XDgd7ge0rDod70e0rD4138e0XDc13oe0XD4d6Me0rDcd6we0rDk13Ee0XDs13Ue0XDkd6ge0rDsd60e0rDw148e0XDE14oe0XDM14Ee0XDU14Ue0XDA158e0XDI15oe0XDQ15Ee0XDY15Ue0XD0168c0XD816oc0XDg16Ec0XDo16Uc0XD4178c0XDc17oc0XDk17Ec0XDs17Uc0XD0188e0XD818oe0XDg18Ee0XDo18Ue0XD4198e0XDc19oe0XDk19Ee0XDs19Ue0XDwd5Me0rDEd5we0rDMd5ge0rDUd50e0rDAd4Me0rDId4we0rDQd4ge0rDYd40e0rD0d3Mc0rD8d3wc0rDgd3gc0rDod30c0rD4d2Mc0rDcd2wc0rDkd2gc0rDsd20c0rD0d1Me0rD8d1we0rDgd1ge0rDod10e0rD4d0Me0rDcd0we0rDkd0ge0rDsd?e0rDw1a8e0XDE1aoe0XDM1aEe0XDU1aUe0XDA1b8e0XDI1boe0XDQ1bEe0XDY1bUe0XD01c8c0XD81coc0XDg1cEc0XDo1cUc0XD41d8c0XDc1doc0XDk1dEc0XDs1dUc0XD01e8e0XD81eoe0XDg1eEe0XDo1eUe0XD41f8e0XDc1foe0XDk1fEe0XDs1fUe0XBj1>708.9gvz42>aDx03KFjU?qt9?3zcf2w02h18f2wFPA?s3B/WNeMI?s0vF41YauDt?egj3MGc0w.e6c3B/X5hxOX2w14g1@N4w?25yFiU?ue0g.1c3B/WJHA40abIa04u07ODu?1M6XbYFPAFVw?c1Jx28z9rA405yV1?GFkU?qsV?70Vv__@GOV102OX2w0uw1YMe.2iQUN3w.2FUg0EXAm02CV101bKgg0ewTxKgg0mxyiggKw0eMHfHY0lqu402DIa?q0nPIa?d0DPzca.911ka01Ko80o@dwR.3ed0k.Aatr?6Vww1AUS3k.cU@1g?2gFRI?rC206Xzodg.PI1v@Pw6jHKM02?Pz45.93z0501092Vww0mUN3k.cUO1g0w2gUS1g0M2gFRI01bC2?7z0dg.OVww0wUO3k.cKo80oKdwR.3auT_ZWV101oKgg0aGle?6Deg01Men/ERKgg0IKMC_UM0vbA402z0Vv__@tIoIKMC03g0vHA402H0Vv__@ubIu01o07WPPg1oX5w01g1Yk91g0bfd07HIu?607Pzo7.2iV5?Hq83Ne6ywYk3Hr_5U?g7_I?/XpYgb.A4avQ_MX04f__@R_46M?90yDZfZpKgg0aI3B/VIuNU02?vI3B/Wq@cw8.5auU?70Vv__@weV1?OM2>RhMen/AXKhg0aSy0YjxEEf50WS_Nu?41_WV1?EMen/GcF_j_THA402z0Vv__@EmDZf@CM3>Q1M2>PZMen/AWKgg0wKME01M0vakK?70Vv__@q2V102yX2r@XM1YKgg0ac3B/WpI0w.d2WuU?70Vv__@fWDZf_3M2>PsFXw?s3B/UZavQ_XD0Vv__@w_z82.1j0Vv__@qCV1?XKgg0gGuU?708.3dz0Vv__@dSDZf@y1Ms71Ms71MvHr_0M02jzYfZo_T6V101PKgg0pbA40baDeg1rMen/D6X2w0R01YKgg0EGsp?3IePO_05mDx03mFOA03XA902fD0H.3uD6M0gVO?c021FUg03es1I0101Gsr013D8?M086Dtf_UVM801M0xgl0w0rC4042V8012Ku8w5qsA0b7zwk_M_T7zCb/T6lnp?FTg0CXDFI9HIag010dD0Vv__@heV1?XKgg0wHA40d91Ko?Kgg0is3B/UFF80I02D6g?gr2w0uMXfbY0lqu408KDWg0fKgA0U@teE040dWsr013Dp40M086Dx?cVQ6w0k06FNI04etAg3?wqtQ__zD9w0702510e01Kog0gHAw04WVUy0gFOg0pKehj_3_sue1j@__srA402D0Vv__@cKV1018Kgg0EHA403L0Vv__@6bzmq/T6i05?Kgg0bs3B/U2eME05A0v95082KDt01sVkzME.Kgg0aGt9?F1cf2wMen/ABUX3ME?2FUg01Fk0I02Dx?MKgg0eI0w.c9s3B/U1atV?2V1?JMen/xtKgg0aI3B/UmbA402vHr_3o?g7_HA404qV1?TKgg0a@JLYdw01c3Q/URGsF?@DZfYUF@A03WvQ_UeV1017Kgg0cHA405qV1?JMen/AjKgg0sGvQ_Y@V1?JMen/wWX2r_Gg1YKgg0bqtV?30Vv__@22V1?GMen/wrF_j_MMs71MvHv_0U02jzYfVg_T7I8w4W0TXIb0350nXzI308?il0b?Xbw.16X2w1h0d@FTA?44MYe2Dag02Men/vnX2o0L01@UQ3MW?4M1UwN9KBM1Tzk_vfKoo0146wYi3Hh?_?GV1?WKgg08ec0Ye?1eJg?k03rA9053H5g06?SV2g0lM5UwN9KBWN4?M0dM5Tzk_vfKgw04bDAk5jH4g06?SV2g0BWO801M0aKgA09461802Dav__Men/z56abI9w3407Xzgf4w?jz8f4M?jH5?5?THUw05?SV2g0kKgA0UKI1?o03uI@?o03rA9?6V2g0@WR.M0dKgw0leJ3?c03uJl?o03rA804bzkf4E?zH9?6?SV201iUR3Ne?8Kgw0meOU0b?vc1>brWsV04118f2wMen/x0gj3MEbA402KDig?Men/vnX7w0601YM4>JpFPA0gbA405x18f3wMen/wEgj3MUbA402uDig?Men/u_Khg0aKJ_Yuw010v@FXA?atV?11cf3wFOA?I3B/T7KME_QE0vA6wYi2Dag?Kgg0eI3B/UgKMC07Q0vKdgYi?1ecMYj?1eIB?k03uJ3?k03rA902mV2g13WN801w0dWUg01w0dKgA04HA908jH0g03?SV2?5WRw?M0dW@?1w0dKgw0k@fwYiw02eIR?o03rA80efzUf4U?yV1?WKgg0zGsF/0Vv__@0goEKME_Q80vI3B/THucw8.5auE?70Vv__ZQmV1?OM2>H8Men/pZKhg0aKJ_Yuw010v@M2>GuFWw?s3B/SrWvQ__aV1?RM2>H3Men/pRKhg0aKJ_Yuw010v@UT0M4?4Bg1M0eNU>hGvQ_HD0Vv__ZTbz82.1iDG?1Men/saKgg0cI0w.avY3B/SgGvQ_Yk71@JLY3?9c3g.86ufM_M3_sk4MYa30Vv__ZU7zc2>iV102yM1>G7FMw?bA402eOng0iFNj__Gu40a_0g.2E2V101jIBQ0hqsk__WO8w2Myr.EGM01XIK01F07X0o.2EiV1023IBQ0qask__WO8w2Myr.EGM01XIK02G07X0I.2EyV103zIBQ0LGsk__WO8w2Myr.EGM01XIJw2e07Vo0f2wX081Iwd@X0w1dMd@X0o1409@UP2w2?4M2>CUBg0M0bDys2f0nILODej0nogy8Onzkf2E02jBjf2A?11gf2Egj3MFc3B/VFuMC0480vKdwYaw01edgYag05A4wYb30g.2CWDeg1gMen/rugi3MIc3B/SmqvQ041ocf2wX380Owd@X3w0x0d@X3o0LM9@UN2w2?4M2>BSBg0g0bDys270nILODej0nogy8Onzkf2E02h1gf2EFPA?c3B/VpKME0c40vGuU?6V1?GMen/noKhg0a@JLYj?10v@Kgg0eKcwYa?5c3B/ZJxyOKgg0aI3B/RNbAk02LHr_4M?g7_I0w.a0quU?70Vv__ZlqDZf_pm23MEeMy0is3vKME0ek3vKMC0802vKfwE0w01c0w.98Vk0U02VUD0KVkPMG.FQA?44MYaz0Vv__@hDI9L@S07Xzkf2E01p18f2MM4>DyFPA08c3B/Slk4wYb30Vv__Zt2DZf@TUS2w4?4UO2w2?4gQ1w09k0802Dt01dFQ40_Wu40e_08.2eL0XILODej0Xogy8OnzUf2E02h1gf2EFPA?c3B/UT@MC_TM0vKdgYaw0144wYb30g.2qiDeg0MMen/orgj3MIbA402qDig?Men/mOF_j_us0w.8LqvQ_QL08.2kaDK?1Men/jjF_j_lI0w.8HGvQ_LH08.2aCDZf@aFQ40_Wu4_PeDZf@UUR3MG?4gi3MIc1>9rqsV0330Vv__Zuh18f2MMen/lvF_j_hKcgE1?1ecwE0w01bA40853g1?Bg0w0au40xKDgg3_FUj@Os1KO_asVc1Jx28z9udwYaw09elcYag?450Yax1cf2AMen/xIX2r_2g1@US3MG?4UR3MF?mgi3MIc1>9dqsV0530Vv__Zql1cf2MKgg0aat9?30Vv__ZjODZfY3UU2w4?4UO2w2?4gM2?9k0802Dx07zFM40_Wu4_NTBjf2E?2Dig?gj3MGc3B/UdeMC_J40vKdgYaw05A4wYb30g.2fSDeg0wMen/lMgj3MIbA402yDig?Men/k7F_j@PI0w.8OauU?70Vv__Z2SDZfWMM2>yEFXw?s3B/Q8WvQ_Gr0w.7cHz88.1aDt065VM3jY306VO3jU306VQ3jQ306VS3jM306VN3jI306VP3jE306VR3jA306VT3jw306VM3js3w6VO3jo3w6VQ3jk3w6VS3jg3w6VN3jc3w6VP3j83w6VR3j43w6VT3j03w6VU3iY3w6VW3iU3w6VY3iQ3w6V@3iM3w6VV3iI3w6VX3iE3w6VZ3iA3w6V_3iw3w6VM20230eVO20630eVM3is306VO3io306VQ20a30eVS20e30eVQ3ik306VS3ig306VN20i30eVP20m30eVN3ic306VP3i8306VR20q30eVT20u30eVR3i4306VT3i0306VM20y3weVO20C3weVM3hY3w6VO3hU3w6VQ20G3weVS20K3weVQ3hQ3w6VS3hM3w6VN20O3weVP20S3weVN3hI3w6VP3hE3w6VR20W3weVT20@3weVR3hA3w6VT3hw3w6VU2123weVW2163weVY21a3weV@21e3weVV21i3weVX21m3weVZ21q3weV_21u3weVM21y30eVO21C30eVQ21G30eVS21K30eVN21O30eVP21S30eVR21W30eVT21@30eVM2223weVO2263weVQ22a3weVS22e3weVN22i3weVP22m3weVR22q3weVT22u3weVU3hs3w6VW3ho3w6VY3hk3w6V@3hg3w6VV3hc3w6VX3h83w6VZ3h43w6V_3h03w6VM3gY306VO3gU306VQ3gQ306VS3gM306VN3gI306VP3gE306VR3gA306VT3gw306VM3gs3w6VO3go3w6VQ3gk3w6VS3gg3w6VN3gc3w6VP3g83w6VR3g43w6VT3g03w6VU22y3weVW22C3weVY22G3weV@22K3weVV22O3weVX22S3weVZ22W3weV_22@3weVM23230eVO23630eVQ23a30eVS23e30eVN23i30eVP23m30eVR23q30eVT23u30eVM23y3weVO23C3weVQ23G3weVS23K3weVN23O3weVP23S3weVR23W3weVT23@3weVkO>1M2.1R3UN0w.2FTjZ9Y?/QzYgb.teavQ_h@Dgg3_FUj@oY0w.6nWvQ_uiD0g3_FUj@mI0w.6lGvQ_xM71Ms71Ms71Ms7W@_Ms?AN2w?1CFU_3_ofZNFPA?s3B/PUsgE.pBGsV?70Vv__YZD4a.6nWDeg01Men/fhN2w?1BWFPA?s3B/POqsF?3HX_4g?g7_ws71Ms71Ms7WS_Mc?AUN3Mu?4F_L_oecgY.9c3>phud0Yh?1eJLYd?10vQ;J0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr0yFLaViWQ3o5Pts6ARjulOAzSmu_LrTO7cGWMEFjIVcM9bizFGCYHBfuKVX5hXbfvP2R_@CKQmFaStpqT43v2SoTS3LMFSsCot1w5Lt9qktdfCVTSW0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y0xqVLYfqD1C1zLa4g4bn86@5ITSKiprrX1TUhyThTu6QZbkYtjygCztI_wvSEdKAJaeC@nlLwRYTe@T2ZLv8pm_iEbyK7EkuX4HHwOS6Pys2gqFWMUSfT87pUk505sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS0QHSgghWod6Xp_6CL5tDfXk6TkyOdALmRGfEEt6jvzzoMIhfT_9i@rDvrUW@X_AnJXV3ob2eRvXk6Tq9QOLw4dFWmCvtiIPToBttw6lDONBIdD5KqMrDY0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h0gJsPc37umG2ANvTgRYOkdFWmEQrJDYHmu8hJFwKd1aTWl1ftylRWjhN6TjRLjXjr9xm3GRksWzL01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh0GbSZYxRxEj171ohSHJCoJfiw2K9Vv1ow8NwPpIH4bWigxJfiRlHf48Y@WBpCULqkf9JAMH57u03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH0wYLeVsky4LA7u2rpcaTWNvbTDK2Q7AbYtAgXry39VTbyAUdnF7FviSow7rsgps6HQz@BzFjmup9mz,7s7c9rK3C4ICgBhKHgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ%0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV`0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD~0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE!0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP0NTBGwFcnZQdvcB3quBGd6Xp_aRDy4rqobzgiJ@BgjToBtuAQshJQZrQ@QSOolwWJl7eEXM0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw$05sjSc6rdDW3PRzzgwdZhdIC5pAqWz#>1T1P2mXwVxb9A9krE.4>1IXgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ%0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV`0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD~0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE!0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP0NTBGwFcnZQdvcB3quBGd6Xp_aRDy4rqobzgiJ@BgjToBtuAQshJQZrQ@QSOolwWJl7eEXM0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw$05sjSc6rdDW3PRzzgwdZhdIC5pAqWz#>1T1P2mXwVxb9A9krEJ079y?1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD?1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V?1QqmRBs3EwsClxp21BsD9LszEw9nc0qmVSomNFp21xsD9xui1FrChBu3Ew9nc0pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc0pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA.Br6NA2w1Dpnh3k5lQqmRB?1QqmRBs5ZCrDoNog1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq.t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0NdCNIu?Bc3xU.Bc3xUbikMcjpIr7w?5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ?4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1vq65Pq20D9O0D9OAI.w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU?5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt04dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI.w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU?4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK?1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng?t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng?pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng016McX>e,r__ZlY>lf__SjM.1M/vP>cz__@8c.16f__VfM.5Q/ID>sg>k,05Wkw01u0U16MMfE04;o>7f__Ri>eY04g93h42wwHdgwI,l>3z__Zz4.6y016xwW73owcygKa2EI9z0yd1UU6zMlg3Kw3j9wmChk31kUaPYXdPcLaOsz7NJDo3G01gwI2q0HfPITcOYH9Ocv6StweE0522M.4M.2g/u_>zM0hEoexMS838AbywGb2oM8zgue1EY5hwX80wc1L0HfPITcOYH9Ocv63G01gwJi2I_ePsPbOID8NYoeE0562M,0m>e3__@3I.2Xw16xMS838AbywGb2oM8zgue1EY5hwXg10c1zwHfPITcOYH9OcseE0522Mby2I_ePsPbOID8NMWw0k8brwHfPITcOYH9OcseE0522M>1c.1ff__UU>um04q63Esdy0O92UEayMCc28Q7zwqf1kMeE0c30ooaPYXdPcLaOsz7NwWw0k8bpwHfPITcOYH9Ocv63G01gwI,02>6c/GQ>5w0j8U6zMl63I020AjfPwWw0g||||^^^^^^^^^^^&1lM;5i;1tS}1:sY:3;13o}Q;J[p;nsw:6M:8:1E<1tQ}s}w,r__@Zg;7M}k;5M}6:z}2w;8e}I:6}3;nW[w;a8:1g:1M:n;3B}1M;y[w;5Q}9:1w,r/_w;ww,6/_Y}g>1L/M;1YU,r/@g:R^^^*,01tU^^^^}hhw<15C;4oo;hFw<176;4uo;i1w<18C;4Ao;ipw<1a6;4Go;iNw<1bC;4Mo;j9w<1d6;4So;jxw<1eC;4Yo;jVw<1g6;52o;khw<1hC;58o;Vpw<3HY;emo;X8;3NC;eSw;YTw<3KK;e_)3BC;f28;Vpw<3N6;emo;Yz;3Pq;emo;Z0w<3R4)Vpw<3RY;emo;ZE;3TI;fdU-3BC;fzE;Vpw<3Vy;fGE;Vpw<3XI;fPw;Vpw-eFw;B,04[?odw;_z)eCM;B,04[?oiw;_G)eA:B,04[?oo:_Nw-ezg;B,04[?orw;_V[hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F;2>1>40hQ4A0jdxcg:kE;1iw>2>1>40hQ4A0jdxcg:gS;148>2>1>40hQ4A0jdxcg:J:2Qs>2>1>40hQ4A0jdxcg:kE;1m,2>1>40hQ4A0jdxcg:J:2Q,2>1>40hQ4A0jdxcg:J:2Q,2>1>40hQ4A0jdxcg:h2;14m>2>1>40hQ4A0jdxcg:J7;2QG^:c.4;1O+c.8;1Y+c.c;2c+c.g;5M+c.k;7Pw=0c.o;88+c.s;8w+c.w;ek+c.A;gS+c.E;h6+c.I;kE+c.M;J-c.Q;Jc+c.U<101+c.Y<10g+c?1;1tO+c?14<1tQ+c?18<1tS+c?1c<1tU+c?1g<1vE+c?1k<1w-c?1o<1wS+c?1s<1yO+c?1w*,0c?1A<1CU=0gg0__4*>3g8.I;kE=3M8.I;kQ=8w8.I;l8=e04?1s<1yO}1>h04?14<1tQ=qM8.I;ls=tM4?1;1tO+g0__4*>Bw8.I;lw:eY>Fg8.I;pg:q8>PM8.I;y4:bK>TM8.I;B}um>Xg4?1s<1yQ}4.12g4?1s<1yS:g>16M4?1s<1CS}8.1b04?1o<1wS:1g.1eM4?1o<1xa:1o.1iM4?1o<1xw}U.1mM4?1o<1xK:1g.1qwg0__4*.1t04.Y<11X+g0__4*.1ww8.M;J=1y04?18<1tS{1Bg40__4<1tU{1Dw>U<101{1Ig4?1o<1yO{1Lg40__4<1vE{1QM8.A;gS{1Sh^1VO8&202^271^3Hh8&2ax8&2ex8&2iN8&2p18&2th4?1o<1ye}M.2y18.I;IE:1o.2D1^2Ex^2Kx4?1o<1y2}M.2P18&2SN^2UN8&2YN8&30x8&35h8.I;vQ:8Y.39O^3dx8&3hx^3l18&3ph8&3w14&3A18&3GN8&3Lx^3Qx^3V14?1o<1yq}M.3ZN8&4218&472^4dx^4gx4?1o<1yC}M06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01CqmVAnTpxsCBxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcw1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1CrT1BrA17j4B2gRYObz80rmlJoT1Vg4tcik93nP8Kcw1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0pClOsCZOg4tcik93nP8Kcw1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01UpD9Bpg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1QqmRBs5ZEondEnTdQsDlzt01MrSNIg4tcik93nP8Kcw1Urm5Ir6Zz06pOpm5Ag4tcik93nP8Kcw1MtnhPg4tcik93nP8Kcw1Pt79BsD9LsA17j4B2gRYObz80oCBKp5ZSon9vrT9von9OonA0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0sThOoSxOg4tcik93nP8Kcw1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01Pt6hFrA17j4B2gRYObz80nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz80sSVMsCBKt6p0hQN9gAdvcyUQ069FrChvon9OonBvtC5Oqm5yr6k0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pzr6ZPpk17j4B2gRYObz80pSlQsDlPomtBg4tcik93nP8Kcw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ.KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KpSVRbC9RqmNAbC5Qt79FoDlQpnc^^^:r>1M:2:sw;1O}A(1=bC/_o}w;7M:v}f,c=w{3w>b}8;2c:8M:V,4,w:8:1w.1,0M:2;1s:5M:8e*g{i6/_Y}w;ve;1YU:j,c=8}w.5lL/@}8;88:ww:6,4,g:8{1A>1}2;28:8w:ng,M{2}o>rw>g:gw;Vg;3B:2y,c>l}w:6>7w>1}o;gS;13o:3U(4{1P,g:6;4hw;h6:e*1}w>vw>4:1w<1iw;5a:oo(1=8g>1}o;J:2Q}2E(4{2a,g:2;bj:Jc;1bk(2=Aw>4}w<404;g0g:f*g{a,1}8<10g;41}r*8{2G>3w:3;nsw<1dO}8(2}8>Jw>Y}M<5Tg;jt}2*w:2>c8>1}c<1tS;4To}w(8{3f>1w:3;nu;1dU:7,1=2}g>S,4}M<5@w;jW}o*w:2>dQ>1}c<1w:5[dw(8{3C,g:3;odw<1gS:7M(2=X,w}M<6b8;kIw;46*w{f4>1:3)5b8:2U(1}4.3W>1M-pK;1i@:4w(1=0g>8^l1w;8E>1I>U}w:6,A>3^5OU;15g(1=h,M&1x3:4g*g}'
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
