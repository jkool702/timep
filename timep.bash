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
b64=$'45552 22776\nmd5sum:ccf0aa2854189faaf420215445432514\nsha256sum:7112d5e3e73ef90f3c43e988e390a84f9b071a9d8e2cb2b00fd13a9ab971dc01\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n00000000000000000000000000000000000000000\n0000000000000000000000000000000000000000\n01pw_rOSofe43apw_LO6ofrY5C3Tbh\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0hQN9gAdvcyUObzk\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n18\n00\n__\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\034vQlchw810g[?c0fw01{1[7xh[>4?e?a04?7w0t?4,5%[Lhk:2Z5g}g}g,g<8[w}2]346g:cgp}1}1,1w>cwZ]O4Q:38jg:8w5]U0A}4}8,6,U3Q:3wjg:e1d]M04:3?g]w}1<g>1M0w:702]s08]A}2g}1[4,1,20T]83s]wdM:3[c[8}5fBt6g4,83s]wdM:20T]c[M[w}kelQp0g>1gdM:50T]k3s:1k}5g}1}1hVnhA1w!=0g}5bBt6g4,O3Q:38jg:cxd]e08]U0w]4}1,1g,3,hQVl0aKkdU5@XWsCrktYR_JZGE31Z5icYMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q>Yvg03_9jFd?1E<eDw//_OkOjg?q04>3FQf//YBaAQ?6w2,Ws3//_9i9d?1E0M>eCM//_Okqjg?q0g>3FEf//YB4AQ?6w5,Wp3//_9gFd?1E1w>eC0//_Ok2jg?q0s>3Fsf//YB@AM?6w8,Wm3//_9v9c?1E2g>eBg//_OnGj>q0E>3Fgf//YBUAM?6wb,Wj3//_9tFc?1E3,eAw//_Onij>q0Q>3F4f//YBOAM?6we,Wg3//_9s9c?1E3M>eDM_L/_OmWj>q1,3FUfX/_YBIAM?6wh,Wt3@//9qFc?1E4w>eD0_L/_Omyj>q1c>3FIfX/_YBCAM?6wk,Wq3@//9p9c?1E5g>eCg_L/_Omaj>q1o>3FwfX/_YBwAM?6wn,Wn3@//9nFc?1E6,eBw_L/_OlOj>q1A>3FkfX/_YBqAM?6wq,Wk3@//9m9c?1E6M>eAM_L/_Olqj>q1M>3F8fX/_YBkAM?6wt,Wh3@//9kFc?1E7w>eA0_L/*4ydfoBe?.zgm2jw?i3DUt1l8yMn6iw?i8n0t0D_U0Yvw<333N@;4ydflBe?.zjlijw?i2D@i8DMic7KfQz1@0d80sp8QvVQ54yb1rla?.xs1Q2f_wpwYvh>MMYvw<3P3NXWw3QBjw>7kHlky3fp9a,i8DBt0N8zjS6i>W2D//Epf/_Yo5_kQ>5tMMYv0ccf7U;YMYu@KBT//3N@;8I56B8?4y9Qon0t4S9@4y5Og@4pw4?fvgi07Ni8QZ_4Q?6pCbwYvx:pCoK3N@4;1C3NZ4>fJxp8wYo1csb1W0wfJJ8P19t8ev5RWvvgMSoftJJ8zgmXjg?grwwwXzJgrA4,pA4frJ1C3SYB4z4?6p13SXFi8Sg?g?6ofsJcvpwZMQw1C3T3J?Yvw<1C3S_4pwZLP6of_Kl8wY0gpw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ$0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf.et0fxjv//71qRg>1,yvx8xsAfxpH@/_3A8I5CB>8n03Ukl0g?i8Q5yQM?6oftJK@88eUXrY4,pwZL9ukL?1C3SXmpwZKXQydA?4?1C3Tbj7Sofsd80pwZMXg0f7U;pwZLN6ofrYNC3_XBi8f046ofSYdC3Tbh0mofe432pw_LMmofrYxC3Tbg0mofSYJC3Px`$0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px0OCofXY4fak3Mi3Dg3UkT//NMlZjM>g>4y3fllb,t073kP703W98zhl6_v/xs1Q7Xw1,3W98zhkA,wu4?1?i8Q59_T/Qwfhd.yhksiM?mYdCbwYvx:i8Dhi8ni3UjX,ZZsNMeIPpCoK3N@4;1CpyUf7Ug:Yvx:YwYUY3M6i8f?oD_i3D13UiP,i8Qk1Efy1Tnyi8Rg24wVQn8JpCoK3N@4;1CpyUf7Ug:Yv0f983PzNv1rUi8Dgi8f224wVQnfIi3D8sSp8zl01YwYUY3M6i3DasRt8zl02YwYUY7M60kwVODd7i8Rg0_8fef1Y1w98esFPdQydk0jO3PzMv0o3i3DasOt8zl05YwYUY7M614wVODcni8Rg1L8fef1Y1wl8esFP1_8fef1Y1wq9@fvgMMYvg0.zl48i3Dh3UdH//W@y9@cdC3NZ4?11lQ5mgll1l5l8yvRji87IO,4y9t2ggi8Bk91y0fOQfxok>20vM40tn_EjLT/P7ii8RY92x8K;1,Lw4>.ykgAaexu@L/xs1@2_p492U13UmQ0g?i8RQ93.zjTj9g?WeXV/@9h2gcxs0fxeM1?.yMmzhg?LM>g.yM.yggAW9HV/Z9ysh8xs0fx9Y1?37h2gc0g>eIWi8QRzOk?4y9X@wl@L/i8A494y5M0@4Y04?bY>40W5XV/Z9ysh8xs0fxbU1?37h2gc<4yZ9icyxeisYIJ5cuR9LXc1<g?3NY0i8Ic9bE>40Lw4>1cyuvEyLz/QC9NAy5M7hOj8IdSQw?4S5OngKh8DLj8DOj8DCgv_hiUQcd469NkO9U0@S44y3M058ctl93W_Li3D1tuTHGMYv03703W9czgSt@L/xs1Q7Xw1,3W9czgRX_v/wu4?1?i8Q5vLH/QMfhcxcygRPi>WVKgi8IY9ezTZ/_j8DDgoD7xs1Rgexo@f/yQgA38n03UiE,i8J491.xs1Q0Qi9a4ybh2goi8n0t0d8yix8wsj8,h8DUmRR1n45tglV1nYfE6fz/UJk90O5QDhxW5LT/@beezQ@f/i8QZlOg?4y9Nz70W5fT/Z1LM4>3HKkyb1gN4?2_>104yb04y912jE0_z/Yt490M1,ioD4i8n03UmB_L/i8QZ_ic?370W17T/_HL4ybf2jEpLv/@Kki8IY9exrZ/_WkH/_Z8zjnh8M?i8QZO2c?exj@f/i8A494y5M7gxLM>g3EEfv/QC9N4y5M0@5iLX/Qybf2jE6_v/@Kqi8QZIyg?eyJZL/Wln//EA_r/UIUW2PU/Z8yuV8zjT29>i8D2cs3Eyfr/@AM//3NY0i8n_3Uh70w?glt1lA5lgoDlglh9yvi@mM>5lji8DXi8fIaezmZL/i8D5i8n0t0Z8yt_EJLr/U1Y0_Ztt3ZcyuvEF_r/Qydu07E_Lr/QO9VAy9N@wPZL/i8f4a4i9WAy9TQy9NBJtglN1nk5ugl_F9_v/MYvw<19yuZ8wYk1iiDvioR_0uyZZL/i8Duj8DWioD6i8D7WePS/Z3Nwg@04y9X@w_ZL/i8Rg_Qy9NQy912h8ylgA2eyaZL/i8Jk90x8yuV8yst8ysfEJ_r/Qyb32hcyvv6h0L_0ew6ZL/i8RU0uxtZL/j8DSi8D7W9bR/Z8ytZ9ysvEV_n/Qydu07EfLr/Qy9TAy9N@xPZv/j8DDi8D5WczR/Z8znw1W1_S/Zcyup8ysvElfn/QO9ZQC9NezpZv/i8DvWd7R/Zcyv_E2vn/Qy9NQy5M0@4Pg>8J7aax03Umi,G0hQpAz7h2go<ezMZf/i8RQ91yW2w>4y9XYs;4y9M@wlZL/i8D6i8J491x8euxQ2E0U07k5wPIytmV8yuUNM4ydfh8z?3ELvj/Qy3N2wNM5JtglN1nk5ugl_33NZ?4O9_AydfqUx>NMeynZf/cs.wYgEmRR1n45tglV1nYdC3NZ4?.wYgEhoDEj8Dxi8DGmQO9_BR1n45tglV1n@AxZL/A4i9WkO9UAO9_@yiZv/WXJcyv_E2fn/Qy9NQy5M0@57//@KzpyUf7Ug;370MSpCbwYvx:pF11lA5lglhlkQy1X201?23_McfzV01?23_M5@aQybrwwNM81Z?.3QjEhj7Aw_Y3thFcySoggo0Y901c3QjwWMJC3NZ4>NXkkNV4ydt2hgLM8>3E5fj/Un03UnQ,i8Jc95xczrgAA,4yUP_tjUWmrN2.qlMAk4123M.Z@B8MvA_ic7W1QwFOAw1QQO9ZH///WfXQ/Z1ysq5M0@5cM4?4xFx2iw,g48f04xFz2ig,g48f04w3z2io,i071i0ec9aw>.0tB8xuQfxdM>.znMA44yd5mQw?2@g,370i8BY90zEP_f/Qybt2g8ct98yu_E0fj/QS5V7gGLA,.znMAk4y9Sj70i8Qlcy>eywY/_ct98zngAk4O9V@zhY/_i874804?4i9Y5JtglN1nk5uMSof7Qg?4OdJ2ig,cvZcyvrEdLj/Un03Ume,i6C49a,10gwY0i6Cs99,10gwY0i0es99w>.0sd80VMAG,eDP_L/pwYvh>i8QZYi>370W6HO/Z1Lw4>3Hwmqgi8Dei8QZC1Y?370Wd_O/_Fqv/_SoK3N@4;3Ea_b/UIUWcjP/Z8zjTd8>i8D6cs3E8_b/@KTAewbYL/yPzEFff/QydfiUv?.ysoNMew3YL/WVugglhlkQy3X7.zngA4exeY/_i8QRbNY?4Ob84y9NkO9V@yVYL/xs0fx441?.zjkt7M?j8DDWabO/@9MUn03Uj8,i8QR41Y?4O9V@y9YL/yse5M0@4jM4?4yddgcv?1cyuvEsfb/UD3xs0fxhU1?2bh2ggw_w33UZx0M?3Uhb0w?i8QZj1U?8fU0Dkii8JZ24yd1jMu?20fM.3QjUibwB8Oa4V9POOQydl2goNQgA5<.zngA54y9h2goWc_T/@5M0@5yM>4Obh2goyQMA54ydv2gwcs.zhmD7w?LB,3EJL7/Qydv2gwW1PN/_Hu6oK3N@4;2bh2ggw_w33U@j0g?3Ugd0g?i8QZJxQ?8fU0Dkii8JZ24yd1qot?20fM.3QjUibwB8Oa4V9POOQydl2gocvp8ykgA6ex4Z/_xs0fxbg2?2X0g>eIj3NZ4?2bv2ggi8DKW6jY/@9MQy9X@wqYv/i8f4s8DomRR1nccf7U;j8DCi8QZR1Q?370W5vM/_HKgYvh>yQgA48fU0M@fgM8>@4Hg4?4ydfhot?23@09R4Aybvgx8zgk67g?w3Y0i0Z4@37ii8RQ91z7h2go<eyHZL/xs0fxmv/_@bj2goi8RY922@8,370i8QlvxQ?eynYf/i8RY923E_u/_@Bm//3N@4;1cySkgi8JZ244fJwgAw3Y03Um2,i8QZANM?8j03Ug20w?ibwB8Oa4V9POOP7Si8Rk91x8ykgA6ewMZL/xs0fxuP@/Z8yQMA64ydv2gwi8Ql4NQ?370Lz,.ynMA2ewmYf/i8JQ90wNQAO9V@x7Yf/Wt3@/ZCA4ydfgAu>NMex2X/_Wq7@/Yf7Qg?8j03UhN_L/Wo3/_Yf7M1cySkgi8JZ244fJwgAw3Y03Uhq0g?xc0fxbnZ/ZCbwYvx:ibwB8Oa4V9POOQydl2goi8RQ91j7h2gk<4y9h2goW7HR/@5M0@5dLX/QObh2goyQMA54ydv2gwcs.zhli7>LB,.ynMA2exsX/_i8JQ90wNQAO9V@ydX/_Whr@/Yf7Ug;4Obph.yTQ8gg@S12i0fM0fxe8>24M0@4k_X/Sqgct98zngA6ct491w<WfPQ/@5M0@5KfT/UJc91x8znMA8bUw,cs.zhnf6M?i8BY90zEU@X/Qybt2g8ct9cyuvE5e/_@Ct_v/3N@;4ydfh4t>NMewaXL/WmDZ/Yf7Qg?4ydftAs>NMezOXv/Wl7Z/Yf7Qg?4ybj2goi8RY92.zhlP6M?cs2@c,exXXL/i8RY923EUuT/@AW_v/3NZ?4ydfp4q?24M0@5GvX/@z4Yv/WhTZ/Yf7U;i8QZshE?8j03Ukp//WZUf7U;i8fI24ybfnkW?2@0g>ewrX/_i8IZj3E?bU1,W0HL/Z8yPQzew?Lw4>3E@uX/QybfhEW?2@0g>ezEXL/cs.wYg8MM3P3NXWi8fI24y3N0z3||!!!!!!!!!!!!!!!!!!!!!-3,8M,4,6,44x4g0C508;8M>2s>346@RqGEecYsHvhTuF5lQKEBsWDa4Qqnk%[0Yg>1%xw>.^4,2%E,1%Rg>.^yg4?.^ug>.^sM>.^nM>14^jM4?.^Hw>.^Pw>.^NM>.^qg4?.^w,1%pM4?.^dM4?1%pg>1%ww4?.%g>2%mw>.^Ww>.^T,1%_M>.^8M4?1%lg>.^s04?1%rg>.^ng4?.^b,2%BM>.^hw>28^J04?1%3M4?1%QM4?1405M2wkw:3[zw4?.0101w5g:4Y}Vw4?1405M1wkw:3[Jg>.0101w3]5c2]M04?1405M3wkw:3[Ew4?1405M0wkM:3[05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB071Lr6M0sThxt01Pt6hFrw1Urm5Ir6Zz06pLs6lK06pOpm5A06pBsD9Lsw1UpD9Bpg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0sThOoT1V069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvondPrSdvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUNd017j4B2gRYObzcP04tcik93nP8Kcjs+,1?8?g01?8?w02?8?w03?8?w02?8?g02?4?g02?401?5?401w01?8?g02?8?g02?8?g01?4?g01?4?g01:1?k0@04?1[K96m1w?1w020w?4,9ihBwo>k03g8?1,2PApo6>401w2>g,BV6m1w>M0z0w?4,7kqqgA>80bw8:38jg]w}s0k:3gjg]w}c0k:3ojg]w}S4Q}kg]w}9P}8kg]w[38]gkg]w}9P}okg]w}a38]wkg]w}G3c]Ekg]w}s38]Mkg]w}K38]Ukg]w}U38:10kg]w}a3c:1wkg]w}9P]1Ekg]w}o3c:1Mkg]w}9P]1Ukg]w}y3c:20kg]w}9P]28kg]w}Q3c:2gkg]w}83g:2okg]w}9P]2wkg]w}i3g:2Ekg]w}A3g:30kg]w}9P]38kg]w}O3g:3gkg]w}9P]3okg]w}Y3g:3wkg]w}g3k:3Ekg]w}K38}kw]w}9P}8kw]w}A3k]gkw]w}9P}okw]w}K3k]wkw]w[3o]Ekw]w}9P}Mkw]w}i3o]Ukw]w}C3o:10kw]w}9P]1wkw]w}iP]1Ekw]w}U1]1Ukw]w[54:20kw]w}x3]2wkw]w}fP]2Ekw]w}U1]2Ukw]w}o54:30kw]w}E3]3wkw]w}cP]3Ekw]w}U1]3Ukw]w}M54}kM]w}Lj}wkM]w}a3}EkM]w}U1}UkM]w[58:10kM]w}Y3o:2wjM]o,3{2EjM]o,9{2MjM]o,z{2UjM]o,B{30jM]o,k{38jM]o,D{3gjM]o,u{3ojM]o,w{3wjM]o,E=0k}s,1=8k}s,2=gk}s,4=ok}s,5=wk}s,6=Ek}s,7=Mk}s,8=Uk}s,a{10k}s,b{.k}s,c{1gk}s,d{1ok}s,e{1wk}s,f{1Ek}s,g{1Mk}s,h{1Uk}s,i{20k}s,j{28k}s,C{2gk}s,l{2ok}s,m{2wk}s,n{2Ek}s,o{2Mk}s,p{2Uk}s,q{30k}s,r{38k}s,s{3gk}s,t{3ok}s,v{3wk}s,w{3Ek}s,x{3Mk}s,y=J079y07hFrmlMey1LtngwrSowrmlJrT9V07hFrmlMey1Opm5A86lOsCZOey0BsM0BsPEwrCZQ865K865OsC5V06tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM0Br6NA02lIr6ga06tBt4dglnhFrmk0t6BJpn1vpCVScm40t6BJpn1voT9zcP80t6BJpn1vq65Pq01QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0Uu?Bc3xUbikMcjpIr7w0t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt07hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng]1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?6BKtC5IqmgwrDlJpn9FoO1FrChBu21CrT8wqmVApnxBp21xsD9xujEw9nc;6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK;19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK]pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng:g,8,3,1,2<5,hQVl?4?s04,2g}2?701<c[hI3eRg,9,ocL/T<MPL/C,b3f/@I,8d7/Yw,MQL/T,13l/YI0g?sdv/Zw1?2gSv/808?13u/Zo0w:1g[nFi?5U404r30s8A04?2g,s,WcH/M02,3x163xxa3MJT28?fNEXazcA8w<g,h,93d/Z_0g:1w>1o,_cX/So1<OY13x230Doe2?g,t,53g/Ya0g:4M>28,jd7/ZQ2,gwUgzM923xye0Q8e88Q4gwUEz0l13z261Agee8c7hMW?wf10gEee4gec44ea48e848e648e448e244b,G,dw>3sQ/_kM8>1b3x2f0A8e68U3gwUwzgh53yyc1kAec8o6ggUUwMt73C1Y2wUUiIcec4763yx2P0UwgIQe64be3x12PMU8j0I3hM4a3zx33z113yx23y123xx23x123wx52Rsa3zx13z113yx23y123xx23x123wx72Qga3zxaMMUMhcoea4bc3y12PgUogIUe44bf3wx62T0e2cf6PcTePM>4g>240g?Adn/NY2,gwUgzw923xyd0Q8e88M4ggUExwl13z231AseQ083dM4a3z143yx13y123xx23x123wx72M>3g>3c0g?qdv/TA4,gwUgz0913xy60Q4e88c4h0Wg0ge20gEe84ce644e448e24wb,5<g2?2MS/_jM,143x02iwU8|!*?s0k]M1g:dxd}g]3U0g]M}B08]d}b0l]6g]38jg:1I}2[q}d1d]7[8}fn@_SY;2}5}1wA]1w]108}E}ew8]b}1w[M]3EjM]8}W08]k[s}5M]3ob}s}22s]8}d05]2g}o}fX/SY<G2o:3/_ZL;4}Yf/rM,1i9w:fD/SY<dg!!!!!;e1d%>co2]Rw8:3C0w:fo2]1wc]m0M:2o3]dwc:160M:5o3]pwc:1S0M:8o3]Bwc:2C0M:bo3]Nwc:3m0M:eo3]Zwc]61]1o4]9wg]S1]4o4]lwg:1C1]7o4]xwg:2m1]ao4)Dc[O]9P}Ecw:awP]s38:2Ucw:e0O]a3c#Dc]60P]9P]28cM:2sM]Q3c]wd]2sM]i3g:2gd%,Dc]cwQ]9P]3Md]40R]K38%>9P]2gdg:2sM]K3k}dw:2sM]i3o:2odw:2sM#iP]3w4}4[54:24c#3YM]U1}1}61h]E3!Pc]e0g}g]30kg:bQM#a3]3w4}4[58:3Mdw-hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp2.ongwcjkKcyUNbj4F,2,1:g?hQ4A0jdxcg301]c04]2,1:g?hQ4A0jdxcg2k0w:aE2]2,1:g?hQ4A0jdxcg2M5g:bwl]2,1:g?hQ4A0jdxcg301]7A5]2,1:g?hQ4A0jdxcg2L5g:aYl]2,1:g?hQ4A0jdxcg2L5g:aYl]2,1:g?hQ4A0jdxcg2G0w:aY2]2,1:g?hQ4A0jdxcg2U5g:bQl!g,g0YvY*3g,8010301)3M,80103M1)8w,801?M1g-e<40601wkM]4}h<404w3gjg-qM,80101M1g-tM,404g38jg&g0YvY*Bw,8010201g:7Y1]Fg,40602wlM]g}Mg,40602wkM}4]QM,801>1M:6o1]V<406020kM]w}Zg,80101M2}E1]204>8010202g:dQ2]cw4>8010303w:1Y2]gw4>80103w4]7A4]k04>405M?kg:5[nM4>405M1wkg:5w}rM4>405M30kg:3w}vM4>405M?kw:5[zw4>g0YvY*C04>404030eg&g0YvY*Fw4>801g2M5g-H04>404M3ojg-Kg4>40503wjg-Mw4<3M1gdM-Rg4>405M1gkM-Ug4>405w3EjM-Tw,8?w2k0w-ZM4?1%1g8?.^8w8?2%fw8?1%j08?.^nM8?.^s08?.^wM8?.^Bg8?14^FM8?.^M08?1405M2wkw:3[QM8?.0101w5g:4Y}VM8?.^@w8?.^3gc?.^a0c?.^80c?1%9wc?.^eMc?1%kMc?1405M1wkw:3[pgc?1%rgc?.^w0c?.0101w3]5c2]Awc?2%Egc?.^Igc?.^MMc?1%Qgc?.^X0c?1%?g?.^4gg?1%8Mg?1405M3wkw:3[dwg?.^i0g?.^nwg?2%u0g?.^zgg?28^G0g?1%J0g?1405M0wkM:3[Nwg?1%06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBKqng0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZzsCcPcBZEtRZUe3o0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSV+0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80sThOoT1Vg4tcik93nP8KcyUR071Rt7d+0pClOsCZOg4tcik93nP8KcyUR06pOpm5Ag4tcik93nP8KcyUR07dQp6BKg4tcik93nP8KcyUR06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01CoSNLsSl+0sThOr6lKg4tcik93nP8KcyUR07dQsCdEsA17j4B2gRYObz8Kdg1UpD9Bpg1PrD1OqmVQpA17j4B2gRYObz8Kdg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQsCdJs417j4B2gRYObz8Kdg1yqmVAnTpxsBZLsBZxsD9xug1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0rmlJoT1Vg4tcik93nP8Kcjg0oCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01yqmVAnS5OsC5VnTpxsCBxoCNB071Lr6N+0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pLs6lKg4tcik93nP8KcyUR06tBt79RsS5Dpk17j4B2gRYObz8Kdg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB07dQsClOsCZOg4tcik93nP8KcyUR05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KcyUR065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ069FrChvondPrSdvtC5Oqm5yr6k?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bD9Lp65Qog0KrCZQpiVDrDkKs79Ls6lOt7A0bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KpSVRbC9RqmNAbC5Qt79FoDlQpnc!!]1I,7<w]1M0w:702]9*g(K<g,o}B08:2k0w:1I(4(xg,4,6}b02]I08[w-4[g}3g,1,1w]301]c04]XN)2*W<g,o}I1k:2M5g]Q(4(g,fr/SY2[0w}2}Y[s}2(4E,b<w]108]40w]S0c]8<g,w}6}1i<M,8}62g]o9]3E2)1(mw>f/_SY2}58C]kyo:1i[s[w}2}6s>3@/ZL0w]2E9w:awC]o[8<g,w)1S,1<8}22s]89M:d05]1M}8}1w}w<g>12}dwI]S2M:3E0w]s,m,2[o}8E,1<w]30bM:c0L]o0s-1(2i,1M,8}83s]wdM:3*8(Fg,4,2}50T]k3s:1k(1(bc,1<w]2EdM:awT]708)w)2Z,3w,c}O4Q:38fg]w(8[w}Og,Y,3}d1d]Q3Q]8(2[8}dk,1<M]3ojg:dwZ]2*w)3y,1w,c}U4Q:3wfg:c01]2[8}1[WM,4,3}a1f]E3Y:.(2[8}f<1<M]3EjM:ew_]404)w}2}3V<g,c[54}gg:502)w(_M,w,3}61j]k4c:.1)8*g1>1,c(513]bw(4[g}d0g?1M{G7s:20gM:201)4*g,8^E4g:3o1w:1M,x,2[o[A,3^7xb]Swg)4(h<M&1ik]2c1)1('
;;

'aarch64')
b64=$'145872 72936\nmd5sum:32f9bcd69b675010b7b353495667c5ff\nsha256sum:ac0367f8b540b0ee1b8ae8a98f7f8a0f3f0969ae209f0ca234ce298965cd43f4\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0000000000000000\n000000000000000\n00000000000000\n00000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n````````````````````````````````\n0i]818]w4w:2\034vQlchw81.=0c0JM01+1[awl.=4?e?704?7g0s?4,5`[b34]Icg=g:g,o>30_g:c3Z.;MfQ1;1g1g:7w9=1:2,1w>dzZ]SfQ1;3o_g4;c01]M04]8[g,4,O04:38.:cw1]9[A[g}kelQp.,Mbw:30K]c2U:1A}6g}1}1hVnhA1w``<g}5bBt6g4,MfQ:30_g4;c3Z.;g08:1?w]4}1,1g,3,hQVl01yFVx6sqUvIMR4gRkHuqCY4leG5;c,C<g,o,gi4h02ok0w;C,aw>cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg`(M09>i!M0m01010w)3Q,4w#3X,4!3o,4w!g,8!2G,4!16,8w#1p.?4w#26,4w#1N.?4w#2U,4w#1J,4w#2<4!11.?4!1l,4w#1B,4!1v,4g#2x,4w!1,8!1q,4w#3C,4`9.?4w#2j.?4w#1D.?4w#2c.?4w#1P,4w!J.?4!3h,4w#1W.?4!3v,4w!I,8!1P.?4w#2g,4w#2@.?4`p.?4!1V,4w#3t.?4g0m08020w;c}2o.?4w0b>C]l}3M.?4g0m05020w;c}2_,4w0b0e0q]d08:3a.?4g0m0b020w;c}2I.?4g0m0e020w;c=nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0s6ZIr01Pt65Q07dQp6BK07xJomNIrSc0pCZMpmU0pD9Bomg0pClOsCZO07xCsClB06tBt65Ru7pxr01vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0sThOoT1V069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvondPrSdvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObz4T=2?4?w01?4?w02?8?w02?80.01?80.02?80.03?401?2?8?w02?4?w01?80.02?80.01?80.01?40.01?4,1?c?w8?1[K96m1w?1?c0w?4,behBwo>c05M8?1,2nApo6>20282]MfQ1:31]40l]OfQ1:31]eMk]QfQ1:31]d3Z.;4042:31]awC]6042:31]9wE]8042:31]awC]a042:31]c0E]c042:31]40G]e042:31}wF]g042:31]50F]i042:31]7wF]k042:31]c0F]o042:31]awC]q042:31]fwF]s042:31]awC]u042:31]20G]w042:31]awC]y042:31]6wG]A042:31]bwG]C042:31]awC]E042:31]e0G]G042:31]2wH]M042:31]awC]O042:31]60H]Q042:31]awC]S042:31]8wH]U042:31]dwH]W042:31]50F[82:31]awC]2082:31]2wI]4082:31]awC]6082:31]50I]8082:31]9wI]a082:31]awC]c082:31]e0I]e082:31]30J]g082:31]awC]k082:31]2wE]m082:31]6wv]q082:31]1010w;s082:31]8wJ]w082:31]fwD]y082:31]6wv]C082:31]6010w;E082:31]awJ]I082:31]cwD]K082:31]6wv]O082:31]c010w;Q082:31]cwJ]U082:31]bwD]W082:31]6wv]@082:31[20w]c2:31]ewJ]EfY1:11>1w+GfY1:11>2-IfY1:11>9w+KfY1:11>a-MfY1:11>4w+OfY1:11>5-QfY1:11>aw+SfY1:11>8-UfY1:11>aM(2:21,M+2?2:21>1-4?2:21>1g+6?2:21>1M+8?2:21>2-a?2:21>2g+c?2:21>2w+e?2:21>2M+g?2:21>3-i?2:21>3g+k?2:21>3w+m?2:21>3M+o?2:21>4-q?2:21>4g+s?2:21>4M+u?2:21>ag+w?2:21>5-y?2:21>5g+A?2:21>5w+C?2:21>5M+E?2:21>6-G?2:21>6g+I?2:21>6w+K?2:21>6M+M?2:21>7-O?2:21>7g+Q?2:21>7w+S?2:21>7M+U?2:21>8g+W?2:21>8w+Y?2:21>8M+@?2:21>9(42:21>9g+fOc3RvRXLWDZ0M2hBg?BfRXMqy_8MflM0dvRw,3MuX@FY>Q17@h_AgUz@h808vRxYw0Zkv80fl7O03Rv>f0h0A3V4080Ai027ZrM?3M4gp0@h0y094w0x_mY>Y14agfAggw2h808vRL>f0h3A3V4680Ai027ZrM?3M4h90@h22094w0x_mY>Y14mgfAgEw2h808vRL>f0h6A3V4c80Ai027ZrM?3M4hV0@h3y094w0x_mY>Y14ygfAg0w6h808vRL>f0h9A3V4281Ai027ZrM?3M4iF0@h120p4w0x_mY>Y14KgfAgow6h808vRL>f0hcA3V4881Ai027ZrM?3M4jp0@h2y0p4w0x_mY>Y14WgfAgMw6h808vRL>f0hfA3V4e81Ai027ZrM?3M4k90@h020F4w0x_mY>Y156gfAg8wah808vRL>f0hiA3V4482Ai027ZrM?3M4kV0@h1y0F4w0x_mY>Y15igfAgwwah808vRL>f0hlA3V4a82Ai027ZrM?3M4lF0@h320F4w0x_mY>Y15ugfAgUwah808vRL>f0hoA3V4083Ai027ZrM?3M4mp0@h0y0V4w0x_mY>Y15GgfAggweh808vRL>f0hrA3V4683Ai027ZrM?3M4n90@h220V4w0x_mY>Y15SgfAgEweh808vRL>f0huA3V4c83Ai027ZrM?3M4nV0@h3y0V4w0x_mY>Y162gfAg0wih808vRw^3w?3g0eh7@k>biR__YnM0dvRxYw0Zkv80fl7O03Ru>f0.0OhUg?Y250394_?3HM>le4?d0xQ4vVog?Jf030qE?x_mM0dvRK>f0.0OhUg?Y250394x?3b8LN_QQ4cwoIx_46jMg?Je8?d12X4vVow?Jf030GE?x_mM0dvRzYz0ZnZuXWF_gc0Avcb0fDP?3Mo49cek0103vw?3g0dh7@o>bjw?3g040TAlD__Vvo__@n8020kC1233DP2Q3V_nL2GbYz0Zn?R_m7O03RlYA0Znr__Yn7O03RhYw0Zkv80fl7O03RhYw0Zkv80flVg?Yai0396z84eV0M80dc810biBw0Oh9?2y@c30qGyg02hUgcwaC0kg3w>5a01N0AA1Uobw1845aDM03WQ7__Rjw0O4GM0dvRwo?b03?2Mfwg0jZS8MPSs101fvUj3fod?964g12hVxY@jLE7fS__xXNeNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKghY@jBE7fSYxDbReexMWrA0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFKuwi1f7Y01eKx@_ZkLy03Lsj__Nvw0O0GnMM0YmA305gC403hwM20QxYw0Zkv80flN6xzKek30WFz402h04z46BY?@Jy__ZknM05WWA105gAq6kUEMg0Ag10N1Fv?fH2g40l2dEoPyB202h04336HY?KJy?1k8mxBe010MhHw0O0GM0dvRwk0wdbL__Yn_nKMGvQ3097PkM6FYMc0GLlr0GDToMeF@Tc5GvM30qE?40VUzs0@h@Q07512w1ko0p0eg0a03ny?3Mgo0cAk0wgXD01g0R0M?I,b0@101fvoz3fpM404YvxccZ84?Ai50497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCUq184YfM?WW7X_Rhu80eZkU0cAm0agLB04g2Q8M30QK3z0p42081i8g20QKc_0fD1_L@n7M?smQ?5jw_Q1VM0U0dNc?b1PMxChU0cjGK430F7c_L@nZMc0aI.03jx?3g8u17@i?Ed8R043VJvX_B_I30aFw4g2QdM20kLBH1aAd>kU0cjGw4?b0xU1ChDfX_B_k30aG04w2Q802wQGz@_VvX0M2Gw0Y0J1s0w5bVqMiFISi4QBe4If9WdE3iAVPjYKc35qHw0NKGZw?Y1w?90y0a3i8g20QJq23970_L@n68clAvA30aFjvLDO5020kxEwMfb?w2QMMF2@gc50bjw0NgGUwcpGK436WFw03_mowcpy_g302Hx0NKG81h0e1c04YFPvxGrfM02WU7__Rjz0NmGU0crGy80Ed8x083iF_X_B_A30aG0_v@RU0clGIv@_VvS0M0GU0crGxo303lH_L@n5Mk0d5M?bik0M2VU3t0@u090bgj?3VU0cmaLBHhaDPkQ6FZlJ2GvtzgWDXsQmF_nLgGc03nZo?E3ii_X_BMc?90v07DOoV0pAmcgC9H32wbVQL__5Rj@_Vsn1g0QDLX_BM0.bAS081in_X_B@430aE>2M0a0rAi_@_VvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRK035qEV_L@nR___5@4?d0xU4vV802wQzs0w58R043VhLX_B_I30aG?M2Q@mI4Gp___Ns?E3i9fX_BM8?90v07DOgE0lAg4?90wA1Ch0122CC0a0LBK__YnU0clGyb@_Vvn__YnU0cjGw4?b0xU1Ch8vX_B_k30aG?w2Q802wQyT@_VvX0M2G0fT_Ju035qEl_L@n,I3o0w58.1Kh_vT_BY___NvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw>b0S081i>qAv3Z_Vv2__YnlLX_BM0.bAS081i5_X_B@830aHx0NeG,I0306F7C_v@nKf__5S0h0bjZuXGF_gc0Avdj0qDP0M2GZlI2Gvk30qFx2U1iZSc3Gvw30yEO_L@nZ0c0GK>bjw0NeGQLT_BS0208I0Y5YU7Tg1su0105jw0NmGPfT_BM04097S_v@nUgclGyP@_Vvy0NwGUgc0GLlrgGDw0NeGZSd3GvdjgqDZuYqE0fX_5U824YLy9M3Vg.0AuzZ_VvS0M2GUyt0@u434WGj1w2hH_T_B@8DgfDw0NeGTSEyebfZ_Vsk103hTvT_B@434WHP0M2GUwckGGnZ_Vvw0NqGvSEQeaHZ_Vs0102hRfT_B@435GEa_L@nZMc0GK034WGz_v@n0.0AsTZ_Vvx0NeG0_X_B_g30aHw0NmGDfT_BM040976_v@nUgclGLPZ_VvR0M2GU0cmGHnZ_Vvw0NeGI_T_B@035WGd_v@nU0o0J04EgbD1130TogcgdLYL0fDT_v@nYMc0GA81w5bxoM6hU0ckGDY20bD9_v@nUyZ0@lY05eL>1kgw10eo8?3lx0A2VfUw0ss4305jx0NiG,I>795Z_v@n?20QLdjgqDRmQaFZSd3GvRXNGz?R_m,Ie435WE0M1Ohs_T_BM?wdbPkQ6FZlJ2GvtzgWDZuYqEM0dvRKg362Hz0NmGUwckGK435WHPkQ6FZlJ2GvtzgWDZuYqERfT_5@430aHz0NwGUwclGK035WGP_v@nXv__5@035WFY_v@n0fD_Juz__Ns?83iM0dvRxYw0Zkv80fl7O03RvRXGGDZ0M2h7MM0suMd05jPkM6FZNI0@hY4077d1g1kcMh0@hg0wd9y0A0VnM?snciDVEv301N8gk0l3g8gfDxgMahw090ehY?75?81iB1avCAvZ_Vuw1?QUkc3Ag?w5bx8M3VwLT_BU0d03ny5QSF0Qy8QK0jjGDz0q3OUid0@k8k0VI020er5M04yM?w19T_v@nV0c0aE0403ik_v@n?10KlrZ_Vvx0M2G,I?w7F4C_v@nYRd1Gig0w5bT6Q3VU0c4aLRXRGz?R_m4M20Qxg0wdbxgMahg020kyfZ_Vuw@_YRV0J9Gu3VDJ9wqHPO0Qy8QG1QQ_bz0q3Ow1zAYK530V50v42r0fN7AMbYwII?80iBMw3CRjZ_VvA0M0GMfL_du0njqA1i8ziUMJeGu41Ef80506roM01CSc?EJz01ubcMk0J0k?b2BE1WhUwc5Gw48wdbwgM6hV4c0KukD0fA9_v@nUkc1Au034WE2081i9vT_B@h3gbDk0w2QUyt0@uc35WHwgMah.y0QKh30bDZ_f@nUkc2Au035aE2081i6vT_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRw>b?81ShUfP_BOg0w5aY__YnZNJ0@u0312HPkQ6F_nLmGc03nZrx0MeG,I0307F7AgM2VefT_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRznZ_Vs?42VZ_P_B@430aE>2M0a0tAsvY_VvT6Q3V9020kLdjgqCx__Yn_nKSGvQ3097x0M6hYRc1Gvkj0fAp_v@n5010@vk30aE1?2M8u0uAu035aE3_v@n?E0de035aE1?2M8i0vAvXY_VvP0M0GE0k0de035aE1?2M8u0vAvzY_VvP0M0GE0E0de035aE1?2M8q0wAvbY_VvP0M0G80A0du13gbAv301NX1A0l60j05gv201N0h40la06gfA1?2g8s0pAg8.3Bv?1N8020CGdAxdby8M6hgUiMYK4j0p63DdfO_Qs0Kkd@@vbz9M3VG_T_BM0403nA9Q3V0w?Aed7gbB282ah.G0QK130p6n_f@nU4c1AsDY_Vsy>kU4d0KhYc077c301kE0w0l1Y80741301kE0p0@g4?90xM1Ch0w10elY?74w082qESi4QK8z0p53xb3O.20QEesQ_93vLDOUOs0@oPZ_Vsw3?QcM20kK035qG8_f@nZhd0@u034OHPkQ6F_nLaGc03nZrwgQ2VUgclGx3__VvP0M0GU0clGDTY_VvR4Q3VU0cjaLdjgqDZuYGEM0dvRK435aE>2gcM20kw1w8p5n_f@nWv__5@13gbAv301NP1?l20d05gv201NEgs0la06gfA1?2g8s0pAg8.3Bv?1N8020CK4z0p42083i_QI0KmbZ_Vvw@LYRUQJ0Kg8?91202ah.i0QK130p5f_f@nU4c1Ao7Y_Vvq__YnEd90Gg4.3C20A0V.k0dg>9?M1ChoxM0dadAxdby8M6hgUiMYw40wda3DdfOgTXVYKcD0fB9_v@nMfv_ducDgfDAgM6hU0c4Gw46wd82?2ggK0xAugv0fAQ_f@nUhZ0@u035aE2081ikfP_BXT__Ns>2g0c0pAqn__Ns>2gcM20kw1w7V4o_f@nGL__5M>9?M1Chvv__5M>9?M1ChOf__5ObP_Pjr__YnUOt0@g8?912U26h.q0QK130p4p_f@nU4c1AkLY_VuA__YnE9p0Gg4.3Cy040Vggs0d4bJ_Pizp8jiUyc1Ake4Ifbx4M6hwVPjYKkv0fB3vLDO_Qs0KucD0fAj_v@n0f7_dugDgfDwgM6hUQt0Kg4awd82?2ggy0yAv_X_Vvw7Q3VUkc1Ag80w58r_f@nyf__5W3igaA1040Vww90eu4b03i2Y_YQUic1Ag80wdb_iM2V_vP_BQ3K_PnziQ2VV4c1Au031aE1183i0w?A4808F7A7M3VWfL_B@4vgfDw0NiG0w20kwjY_VtN__Yn,A3c0w580U22hP_L_BS7__Ns>2gcM20kw0w897a@_@nnf__5M>9?M1ChMLz_du8?d11w0Ohg213Ks0503k3?2g,A3U404ZZyccZD.0jN@4MPQwg02h8k.AuovfAXW1PZL_UuYjIqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrA4vfAVq1PZL8pOZjzEseCV07PVemws_rM2sLkUq73FKmNY@jBE7fSZXDXReuxYWrxE4wjM_?3HEvL_l5Uw0XRkw0Ohw0F2@g3C_Xk?E3iDfL_B@b___0v07DOgE0lAu7___0wA1Ch0122CE0a0LAC__Yn,A0306p4yZfYRUw?Q460395084eVEfT_dgc?9,2ge.0jTu8MPSm101f6oj3fi1?94xg12h8hYUjzg7fSYVxXpe8pOTjzgsd6W07zxeB0o_rM2sJQUk73hKANUUjFg6fSZPDHtet1UQrF8ue4Wk1zZLkFWTjBgud6Wh7zxeB0o_rP6uJQUQ7zhKA1UUjFg6fSYgDHte51UQrEsue4Wk1zZLVVOTjLgsd6Wl7zxeB0o_rXmuJQWQ7zhK50i1f1Y?uKx@_Zkm203Lr___Nvy?3ggo0cAk0wgXBwZ_YR0M?A,90@101fvoz3fpM404YvxccZ84?Ai50494v80fl7O03Ru4vfAXW1PZL_UuYjy6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrAovfAVq1PZLNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKmNY@jBE7fSZXDXReuxYWrxE4wjMv?7HEvL_l8L__Nsv80fl7O03RhYw0Znw?2M0f17@vRXLWAx081i_gc0AofX_Vvw?2M0ex7@i40w59_@_@nU>I03oh_Ax081iu_L_B@>b?T4vV8g20kDvX_Vs?81i_nL1Gc03nZo_8Mfl_nK_GvQ3097ZuY6ELOc3Rs03nZo<bg]1Oow:7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis[7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA<t6BJpn0W879Bomgwpn9OrT8W82lP,qmVSomNFp21KtmRBsCBz86BKp6lU86pLsy1FrChBu6lA865OsC5Vey0BsM;9ncW86VLt21xry1xsD9xug[pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc;6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp;Br6NA2w>6tBt4dglnhFrmk:1QqmRBs5ZCrDoNog;t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw;t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE]t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs;2kMcjpIr7w09j0Uu;Bc3xUbikMcjpIr7w<lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng:4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI<6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U:~0Et6BJpn1vq65Pq20D9O0D9OAI=w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU[5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt;13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw,19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI<20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?~0Et6BJpn1voT9zcP8w9Osw9OsFb[w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt;13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw:4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU[4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw;imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw:7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng;t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng,1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ*g,8,3,88eUXi23KeQwwXzJ88eUXg4r0PJA,2M>53C__ZY,wer__V,2YVL__F,13D___c,cev__@<QWf__Z,b3E__Y8.?IeP__Y01?3MXL__b08?3zN__@w0w?Qfv__Zw2]4[1uB8017wu0hIc7M.,6,cPB__YM}1<I,Wen__PM}9,4<gVL__k<11bk4e89Q4Dwd2AM9eTJTj3w11bg>1,1E,fer__Mw}4,7M>18VL__104]g,A,3zD__ZY}bg>2A,Eev__M04,ggW?FQwDxZ2ANWk7kil79orBNGo6pImD1k2lgGq5VAoggJcCxup67kaSJB5TJTrTdvoRtrjR0U.gJjSJB6TJTrTdvoRtrjR0U.gW?FcuB1Sl79orBNGo6pAoCxur5FMlDi2u7QfpSACq5VAogtDqiFAoCxt3StFhChyq5Q7qSkruTtLsRZzlRJfk3w113E02ANWk7pksBxKn6FwpCNqs5pQwDxZE,n04?ezG__YQ0w>48eo9QcDwJ2AMGk2kal29o7gVs6C0ln2JXtRZzlRJfk3w112M9c2JXtRZzlRJfk3w112QAaTJTnSdnmQZge044bi0HuTtvoRtrjR0U.gJa3w3jRdnmRZztTw1M,O04?bPI__Z80w>44eU0atb9UHh9gFAOF1BOpGRdd2RQbuTgU.gXw0FcGB2Cn9FQIDyJVRQbkQQ7uTgU.gXw0FQIDyJ5AOGkapsCggHngJjjgtXt3w112QsaRQbkQQ7uTgU.gJ8RQbkQM>3g,Y0w?AeX__UM6,ggWw0pQkDxd4ANak4pkg0BoaTJTlQZge044biwHuTtnjR0U.gI07,7g2?3MZf__l<133x2t0FU1ktXt3w///////////////////////////////////////////////////////////////////////////////////``````````````````````````````>40l]X1g:3g_g4:4[w8]c=i]3g]1k9w:1A}MfQ1:r[w}6w]38_g4;1M}2}3R_LZL<f01]1g]1g1w]o}c08]a}2Q2]2M}o[c}WfY1:2}1w3]5[7}1s}W0U]7}1w9]2}3g1g]A}6}3@__ZL<dw8]____rM<1}f3__SY<vww:3V__ZL<3k````=3o_g4`````,2||||||||||0i]818]w4w*G2o:2oa]awC]M2w:10aw]wF]k2A:1Uag:c0F*2E9w:fwF]G2o]waw:awC]q2E:2Uaw:awC]U2E]EaM`?2E9w:60H]G2o:28aM:dwH]k2A`>G2o]Eb]awC]k2M:2ob]awC]U2M]Mbg:awC&Ea]6wv}g}g.8;8wJ*3U9M:6wv}g]1w.8;awJ*389M:6wv}g]30.8;cwJ*2U9M:6wv}g=w8;ewJ*17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA,8,4;1?{060k]t1g]8,4;1?{>i]418]8,4;1?{05gC]o2o]8,4;1?{080k]i1k]8,4;1?{05gC]l2o]8,4;1?{05gC]l2o]8,4;1?{010i]718]8,4;1?{060C]r2o`^M010cw1!M020f01!M030302!M040506!M0507U8!M060dw8!M0701w9!M080ewe!M09>i!M0a020i!M0b060k!M0c05gC!M0d070C!M0e030K!M0f09wK!M.0c3Z.$M0h0czZ.$M0i0d3Z.$M0j0dzZ.$M0k09z_.$M0l0ez_.$M0m01010w$M0n01030w$M0o`>M0p03w70w(1,103N_M%8:b060k&b<w0b060k]5[8:9>i&8:c05gC&o,103N_M%8:9010i&8:c060C&v,103N_M%8:b080k&H<w0b080k&J<w0b0b0k*1]i0d3Z.)13<w0b0eMk*1p<g0n01030w:g]1]h0czZ.)1B<g0h0czZ.)2c<w0b040l*1]g0c3Z.)2o<g.0c3Z.)1]f0aMK*1]n01030w%0103N_M%8:b060l*2T<w0b060l]104:36<w0b06gm]v}1]d070C*3p<w0b0e0m[g]3.>w0b020t]i08]j.>w0b06wv]z0o:1]d010K*1]n02030w(x.>g0n02030w;1[Z.>g0n03030w]g:1f.>g0n03070w;2}1]m01010w)1w.>g0m01010w;k}1L.>g0m06010w;m}1_.>g0m0c010w;e}2f.>g0m>20w;k}1]f010L*2u.?103N_M^1]f02wN*2E.>g0f02wN#103N_M^2S.>w0c05gC*2Y.>g0i0d3Z.)39.>g3N_ZzZ.)3i.<e030K*3B.>g0m01030w)3N.>g3N_Vz_.(70w>w09>i&8:a020i&d0w?4w!v0w?4`J0w?4w!_0w?8!1r0w?4!1F0w?8w#230w?4w#2s0w?4g0m08020w;c}2L0w?4w0b>C]l}330w?4w#3o0w?4w#3I0w?4w#3@0w?4w!f0M?4`l0M?4`J0M?4w!Z0M?4g0m05020w;c}1f0M?4!1n0M?4g#1E0M?4w#1Y0M?4w0b0e0q]d08:2e0M?8!2t0M?4w#2J0M?4!2X0M?4w#3m0M?4w#3C0M?4w#3X0M?4w!d1>4w!u1>4`O1>4w#141>4!1m1>4w#1E1>4g0m0b020w;c}1X1>8!3q0w?4w#2l1>4w#2N1>4!2Z1>4g0m0e020w;c}3f1>4!3z1>4w`oT9QqiVL02hU06dxr6NvtSlxqRZCrw1zsDhKbCY0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc096g0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzsCcPcBZEtRZxsCQ0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01JpmRzs7B0hQN9gAdvcyUNdM1CqmVAnTpxsCBxoCNB07dQsCNBrA17j4B2gRYObz4T05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06tBt65Ru7pxr417j4B2gRYObz4T07dKs79FrDhCg4tcik93nP8Kcjs0pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1UpD9Bpg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1MrSNIg4tcik93nP8Kcjs0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0oCBKp5ZSon9vrT9von9OonA0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0s7lQsQ17j4B2gRYObz4T06tBt79RsS5Dpk17j4B2gRYObz4T07dQsCdJs417j4B2gRYObz4T06pOpm5Ag4tcik93nP8Kcjs0oCBKp5ZxsD9xulZSon9Fom9Ipg1Pt79zq790hQN9gAdvcyUNdM1JomJBnS9RqmNQqmVvon9Dtw1Pt79zs7B0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg1Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP```=?r,1M,8}O04:38.:2g^4^bw>fr__SY2}f01]Y04]Y[c}2^3w,b<w}M0w:302]8.]4<M,w}6}1;M,8}k0o:1g1w:2Q2&1^i,f___SY2}7U8]vww:1o[c[w}2}5k>3@__ZL0w]3o2]dw8]g[4<g,w&1A,1<8}60A]o2g:d05}M}8}1w}rw,g>12}ewe]W0U]o0M]c,l,2[o}7w,1,1w[4w}i]7%g&1P<g,o}818]w4w:302&g^vw,4,6}60k]o1g:3Q4g*8^8g,1,1w]1k9w:5gC]6%g&2a<g,8}s2o:1M9w:c07&g^Aw,4,2}30K]c2U:1A^1^a<1<w]2obw:9wK]B08&w&2G,3w,c}MfQ1;30_g]w^8[w}Jw,Y,3}czZ.;OfQ]8^2[8}c8,1<M]3g_g4;d3Z]2%w&3f,1w,c}SfQ1;3o_g:c01]1[8}1[S<4,3}9z_.;CfY:1g^2[8}dQ,1<M]3E_M4;ez_]804&w}2}3C<g,c}4042:g.4]2&g^X<w,3}1030w;40c1:E1&4^f4,1,c^103.;bw^4[g]3W,1M+e0s2;1?M4;201&4%g,8!o.1;102M:1I>1f,2[o[A,3!a0f.;Zgg&4^h<M#2l504;101&1^'
;;

'armv7')
b64=$'35616 17808\nmd5sum:18328e7096f04d4c0f5100d5986a22bf\nsha256sum:42820d3f7d5ca05c4dd7ccd0b8bbebe44e9d369ad0542e943580eeaa139010ff\n1Ew4Mzz122wUrwtjKeyca3x\n000000000000000\n0jUWcMEe44c2cg\n00000000000000\n01fzEP2wUg4M8N\n0hQN9gAdvcyUQ\n0000000000000\n000000000000\n00000000000\n01fzEP2wUg\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n2M2g\n000\n01s\n05M\n0g\n01\n00\n04\n````````````````````````````````\n0i22UGcMEe41c2cg,NiUMgMEenz__Yq\034vQlchw41,&c0a0>-3g}Mgg}g>jg08.602w07.r.4`}2U9:K2g:k=40,:1gL:kbM4052Y109g2.2w1w0>w=g02}82Y.20L,0wbM40U}e[6}1[g:3Q}Z}fg}A}9[g}4}kulQp`&1w:1}1iVnhA52Y0>gL,0kbM40X}eM}4[g}g}k[M:4telg3huZ8OjDBChcQHLEr29m4PgQdD20c}B[w}o}gy0202kl4g{B}ag:cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg`*F0A+3.A{b0M,=M0k0f4#1}1V,^i}hw#8w:fY#18}g`w}sM#4}6>^18:1l`i}wg#4w:4o1^18:3G`i}y`4}2U1^1}1z`i}mM#4}dk#18:1E`i}w?^4w:9Y#18}1`w}rw#4w:dM#1}3e`i}NM#4w:aY#14:2e`i}nw4^4w:1E1^1}2E`i}pM4^4}5g1^18}I`w}Cg4^4[o1^1}3a,.o341>w}h>g0xg4.egr.2g}4w0b0dQ10>8cg406}140502R}Z1}M2:i.I0JM4.7wN,0o}4g0k0ak1.2gcg406}1405:nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A07dQong0oDlFr7hFrBZBsD9Lsw1Cpn9OrT80u6pOpmk0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1CoSNLsSk0sThAqmU0oCBKp5ZSon9vrT9von9OonA0sThOoSxO07dQsCNBrw1Pt79zs7A0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1Pt79QrSM0oCBKp5ZxsTdLoRZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs>MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn.omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt>QqmRBs5ZEondEnTdQsDlzt>Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T?tcik93nP8Kd&g02.8.w>.4.w02.8.M02.40,02.4.w02.8.w>0,0,02.8.w02.80,02.4.w>.40,>.40,>.40,>.c0XM40>)IV6m1w0>03V,.4}9uhBwo:c>080>[kqmAd:2.Y2+52Y1;}obM4<:1ML,0n}I3>;:2Qc?<:bwM,0n}L3>;:30c?<:cgM,0n}O3>;:3cc?<:d0M,0n}S3>;:3sc?<:e0M,0n}V3>;:3Ec?<:eMM,0n}Y3>;:3Qc?<:fwM,0n}_3>;}4cg4<}wN,0n}3341;}gcg4<:1gN,0n}6341;}wcg4<:2gN,0n}a341;}Icg4<:30N,0n}d341;}Ucg4<:3MN,0n}g341;:18cg4<:4MN,0n}l341;:1ocg4<:60N,0n}p341;:1Icg4<:70N,0n}u341;:1Ycg4<:8gN,0n}y341;:2gcg4<:9gN,0n}D341;:2wcg4<:8MM,0l1g.A3>>k7.2kc?05ik.9wM,0l9M.D3>>km.2wc?05hI.agM,0lag.G3>>ky.2Ic?05iE:MM,0m0M.43>>o4:kc?05wk0>wM,0m1w.73>>o8:wc?05wA.2gM,0m2w.a3>>ob:Ic?05wM.30M,0m3g.d3>>oe:Uc?05wY.3MM,0m4:g3>>oh0>4c?05x8.4wM,0m4M.j3>>ok0>gc?05xk.5gM,0ma:m3>>om0;c?05xs.60M,0m6:p3>>op0>Ec?05xE.6MM,0m7:s3>>ot0>Qc?05xU.7wM,0m7M.v3>>ow.20c?05y4.8gM,0m8M.y3>>oA:8g2TFpw.WMy0Luw4U2TB1e2vVgXwz@08YbXBg2o1.36z@8iOEPygfqYVg36z@8iOEPyefqYVg36z@8iOEPycfqYVg36z@8iOEPyafqYVg36z@8iOEPy8fqYVg36z@8iOEPy6fqYVg36z@8iOEPy4fqYVg36z@8iOEPy2fqYVg36z@8iOEPy0fqYVg36z@8iOEPy@fmYVg36z@8iOEPyYfmYVg36z@8iOEPyWfmYVg36z@8iOEPyUfmYVg36z@8iOEPySfmYVg36z@8iOEPyQfmYVg36z@8iOEPyOfmYVg36z@8iOEPyMfmYVg36z@8iOEPyKfmYVg36z@8iOEPyIfmYVg36z@8iOEPyGfmYVg36z@8iOEPyEfmYVg36z@8iOEPyCfmYVg36z@8iOEPyAfmYVg36z@8iOEPyyfmYVg36z@8iOEPywfmYVg36z@8iOEPyufmYVg36z@8iOEPysfmYVg36z@8iOEPyqfmYVg36z@8iOEPyofmYVg36z@8iOEPymfmYVg36z@8iOEPykfmYVg36z@8iOEPyifmYVg[kc9_B522vVgcMz@0289fD0>iUNX_bM7g___GG2g109M}I09_Bb32vViMwD@k.8_w0P2fU:k@4288_w7LYL0hwMD@k3c9bD0>jUNX_bM4j_O_xa2o102gC,1Q9?0A}3w0D@kUc9_B.2fU0cMz@.c4fwEN@wUiwwD@l34o7wMh2MUg8wz@0u_OY1632vVgcMAKs.5fz7LYL0hf_b@7E9g40V2k102gA,2E}j32vVkMwD@k3c8_w033jVg8wz@:5fz7LYL4h10buAQc9_B0P2iVM.k@c2:aa02vVg.z@1D___HOL__WM4wEecoc9_B0P2fU.wM@kgwbTEC2k10ewz,2c}U28105wB,3g___G[110buDwU9_B3K2fU030DKk.5Pz4g.2w.kKc0Me3x482Z2cg0D@k2887w.2fU?ggu8184by0j3NVgMM8@1Pce_C0P60U,MA@k2057xbcgzUfv__NEc0e3x482ZW2132eeUjkXzH32wUg407ec4c2cg,!,!,!,!,!,!,0jUM70zeazca3x130z4?cnec4caXBU___6w70Eecgc9_B0P2fU030w@na___Gb2k1.wB,1k9?0Y4YJWg0MQel,V_Btd1dUyQ0k@c4g8_w052wUgwgzukc88TB2M.2ygjD@k50a3x0h2fU1H__@I0w53yKw.2w48EecH___H061gUGY:E0Ea3zgw.Ww4MQek.5fzYf__6KMiD@k148_w022hVg.kKcx:q80c8UXwdjKeyca3x,0iUM0M8N>(0M8N>(0M8N>(0M8N>(0M8N>(0M8N>(0M8N>>fz0i22UGcMEe40c2cg,NiUMgMEunz__Yq0i2wUS0OD@k3c8_w0223VlwOD@k3c8_w12ijVg.kKcV:a0q2wUM0wEecg08Ty2x2wUggwwekg88TBJa7dUuT@_@I.53zcM.SHoNTu41>fzc:2xgOD@k12a3z0P2kVM20A@nC_L_H061gUzw:EBgMbzV5M9UM1MEefMAp_BYb6vVgCgz@0bI8_w8Ah8U_9rjec4E8TB232wUg4EEec14a3z1w2wUtL@_@I0E53yaM.2wgQCuk70a3x0>jUMogEe4bca>2y2wUgiQygkP_O_xIY40UM1MEe4144ry2K21U?MYuk3g2jw13iwUpMR8@2kj8nw3w1hUglgw@3T__YqU___WCMxD@k288_w12i3Vs7__@Fwkp_B612dUwlgz@050a3xOLX_WM2wke8L:ad36vVg48Eec3c9jD082jVqX@_@I0o53y0q2w4Yr__NEE0p_B.2fU8T@_@Ir.3G202wUgiwDumi_L_H091gUwo0Ee4b:qB_X_WM.mKcn:a232tVg.k@c0s8cl332tVg.k@fMgcch2g2wUnjgzubMzXTEy_X_WM.mKc8:aILX_WM.Aemr_L_H>2wUrw0D@k.8_wsfX_WM6gEefM___G202wUr7@_@LP___G202wUqX@_@LA___GA12vVgk0Ee4148_wqLX_WM20ke86:a,ywUTL@_@I0o53yBf__6ww0Ee6x_L_HOL__WC.D@k.8_wmfX_W@r__@Gi_L_H.2gVnL@_@I08a3xh02vVgkgEe4.8_wj_X_WZT__@FY8w40s0Y.dgz,148M40e2c10a}348w40xfT__M3Z__@83g.F0Q.4wd.2M3:x0M.8Mc.3MhOTF?1gUx3gju9E:a0m2wUlIgEec2sa3xsfX_WM1gke85:a102wUmD@_@I.8jw0j1gVlQ0k@cb:a1w2wUmf@_@I1083yhLX_WMogEe57_L_H1O2wUg,Ee440a3x4d2dUL17Luxm_L_G1915U?0yu8X_L_H0a2wUM20Ee444a3x2i2wUg5gxu8F_L_H1g2wUgCwOetd_L_H0p10Uz3@_@I,a3x2i2wUgkgEe4w_L_H2q34VMw0Ee54_L_H,20Uyv@_@I84a3xafX_WM1gEe440a3xfvX_WM40we8w_L_H112wUi7@_@I0Aa3x1w2wUjr@_@I1083y6vX_WMogEe4q_L_H062wUgw0Ee4b_L_H102wUgD@_@I50a3xWvT_WM.kecL:a532gVk2?@8w:q1.jUNs:Ecw8TBafX_WM10Ee4a8a3z2g2wUgMgzu80w8jBU_T_WMMMDuk905fx1g.2w0MQ@k.5fz0w.6w0MBeky05fz4M.6Dg0D@k94a3x.2fUdDZ_@I.a3z4d2dUL27Luxs09_B1h2wUg.z@3i_v_H.2wUN3gzubMxXTE1z2wUgAwEe454a3x072dVhL@_@LT___G022wUv1wPu450a3xMz@wUgr@_@LN___G1g2wUtrZ_@I.53zO___6KL__@E42M.50I.f1fbuA3053zRd1dUBQ.cE1053z072wQMugEd46.3q172hVg0MR@k.5fz072w0Mc0kec0Aa0jng.2Ay0zu820a3z212wUrnZ_@I.53zew.6Jct1ed08wjzj32tVm8gguf3jW3xAhf3U4w0Dul3gSjw3O10UYhLEe6ggKrwy52dUwkgEe4.e3zU_T_WM1gke9b:qg184UUMwDum8U9TB3N10UY8_Ee6u8ufwAc2tVpg0Dums8ufw022iUc0_E@?89bw0P2CU:l@cN:abb6vVgywzu8bI8_wY23dUk,Eecb8a3x2w2wUrXZ_@I58a3x2x2wUgs0Ee6B_v_H0>pUMA:Eb8a3xg12wUMw0Ee4,8TB162dVrbZ_@I58a3x212wUgA0Ee6p_v_H1g2wUtjgzubMzXTEy52dUwkgEe4.a3zI_T_WM.kecz:qg384UUN0Dum809TB3P10UYhLEe6gg@rwA12tVpgwDumhg@rw0A2kUc9LFK2@___Gv02vVg.z@1n_v_H0l2wU@n__@FI09_B.2fU5nZ_@I50a3xRd2dUL2fLuw8A97B033pVg.k@c0Aa03Df__WEnZ_@I.93BrLT_WM,Ee4Q09_B.2fU4fZ_@LG___GvvT_WM.AelC_v_H>2wUhw0D@k.8_we_T_W@b__@F82w.f0A.8M9:E2g.X0w.f11buBEQ4Ty212dUDDZ_@LA4V_B062gVg1gEe4148_w1w2wUibZ_@I.53zgM.2IwjD@k60a3x0h2fU1PZ_@I,53yaM.2HgjD@k60a3x0h2fU1rZ_@I,53yhg.2G0jD@k60a3x0h2fU13Z_@I,53yew.6wwMDuk305fzLw.OEo:E205fzuM.6wg0Buk0cd3B0>jUSw3DMk.8Y.32wUZ5XD@Qg88Ty312dUwhXzuQcc8TBULT_WM.kecr:qQ27dUv0wPu4U8V_B662dUB,Eec60a3x332tVg8wz@0V_v_H1w2wUhPZ_@Il.3G232tVgc0k@dq.3adw.2w80k@dh:a_0avVg.z@2RfU_yQ233Ug,EefM8sTx422dUIrZ_@I.53zCg.2w50Eec3.3G1h2wUgw0DukB___H?2wUgk0Ee7N_f_H102wUmzgzubMwrTEH0avVgogEe4.8_wSfP_W@___@E8c9TB0M1jUU8.cFA:a0w1jUPU0>E409nB033gVg.k@dU0FY5.2f:wEecg48Ty422dVqnZ_@I.53zTL__6BMyD@koo8Ty812wUMo0Ee4gc9TB0y2fUfXY_@I60a3xUvP_WZH__@G109nF033gVg0wR@k.5fz9M.6w.kKex:a70avVg.z@1VuV_J>2wUN0wzu84uUTJy_T_WM20keb4__Yq17KtXvwxD@koo8Tyc12wUMo0Ee40uUTJ0y2fUefY_@I88a3x1x2wUgs0Ee7a_f_HLv__Wwg0Buk0cd3B0>jUY>DMk.8Y0Gv__WHw1D@k.8_wBLP_WWT__@GI0p_B.2fU8n__@GA0p_B.2fUcb__@E.5bzDv__2Jz__@G109nF033gVg0wR@k.5fzig.2w.kKdU__Ya032wUQFXD@Qg88Ty312dUwhXzuQcc8TBm_T_WM20keak__Yq17KtXkMxD@koo8Ty1w2wUl,Eec0uUTJ332tVg8wz@2O_f_H222wUgogEe470a3xCvP_WUP__@G109nF033gVg0wR@k.5fz9w.2w.kKeq__Ya022wUN,zu8g88TBgfT_WM20ke9V__YqW22vVhxwzu860a3x812wUN0MDuk288_wCvP_WMwwEe464a3x1M2wUo3Y_@JP___GL02vVg.z@1i_f_Hqv__WH.D@k.8_wjLP_WSn__@Hg8sTxY23dUpMwD@koo8Tyc12wUMo0Ee4288_wxfP_WMo0Ee5D_f_Hof__Ww.kKec:at02vVg.z@3l___G0>iURs:FA09_B.2fUbb__@EB8Oa4V9POO_M8.3I2[A0>g90>81M.Y0w.dg6:Y2:i0o.fM7.3A1g.y0s.805.2Y1w.p0k.5w5.3k1w.q0o:g6.381g.30o0>?.3Y0M._1s106wn,1s5M4?fb__PMn,2E5w40D1o1053N__ZY5w40W1k10dMl,2gYf__e.vVg.z@.c93B0>jUO8.~,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUYwM7@k3c8_w0223Vt0M7@k3c8_w12ijVg.kKfs81Y50y2f0,AwMk1___GW.vVg.z@.c93B0>jUO8.~,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUTwN7@k3c8_w0223Vo0N7@k3c8_w12ijVg.kKec8hY50y2f0,AwMnh_L_GC?vVg.z@.c93B0>jUO8.~,0iUM4M8N>$>$>$>$>$>$>>fz|0i2wUOwO7@k3c8_w0223Vj0O7@k3c8_w12ijVg.kKcY8xY50y2f0,AwMmx_L_G440JWn10D@lMc9_B142fU0cMBes8Q4Ty0h2wUMc0Ee44c8TBN_L_WRgMD@k14a3z0P2kVMc0Ee44c8TBMvL_WQ0MD@k14a3z0P2kVMc0Ee44c8TBK_L_WOMMD@k14a3z0P2kVMc0Ee44c8TBJvL_WM.Eec8Q8Ty482ZW0wk,2I}F}9g:2o}240JWgy0LuwZ}g[I:1[4}4[C}g}3k:1{M:4[6}g}1g:1[3w:4[d}g}2k:1[4w:4[E}g[8:1[6}4[9}g[E:1`0J}sC8.7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis[t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP0>QqmRBs3EwrTlQ86ZC86RBrmZOug}1QqmRBs3EwsClxp21BsD9LszEw9nc:1FrDpxr6BA86VRrmlOqmcwqmVApnwwpCZO86BKp6lUpmgwon9OonAW82lP02lPey1KrTgwomUwon9OonA[pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP0>DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc0pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA[2lIr6ga}pSlQgR1lt6BJpg.t6BJpn1vpCVScm40t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw.7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM.t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD02kMcjpIr7w09j0Uu{Bc3xUbikMcjpIr7w[lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng0,SZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw.imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM[imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb{w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ,SZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU[imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb{w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw.imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U.5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt?dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK0>9py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb}5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt0>ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp>xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK0>QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng}1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt[6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0fg:4[b}g}1}1[9w:4[R}g[c:1[1w:4[k}g[U:1[3g:4[B}g}18:1[a}4[2}g}1w:1[2g:4[a}g///////`````````````06wc}3:72Y1.4:3L,.3}ag9:d}t1M0>A}kbM406M}g}q}62Y1>M}4}ZvX_rNw1:5}1,:o:1k,.2w:1A2:b}4[c[c?.w[1:k}4g:1s:2A2:4g:bg6:i}Y?0>c}8}_L__rTg6.3___ZL,:f3__SYu1w.@L__rPk```&82Y1&I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09.].I0A.b09```{Y7g.21Y.3Mt:I7M.u2:7gv.3Q8:L1Y}w+f1Q.3gw:Y7g.m2:3Mt.2w8:Y2:3Mt:o8g.n24+Y7g.B24.3Mt.2U8g0>28.fgw+f1Q.5gy:Y7g.v28.cgy:Y7g.22c.5gz:Y7g=a0u:s5g:g:b0M,2E8M=7gu:s5g:g:dwM,348M=4wu:s5g:g}gN,3A8M=3Mu:s5g:g:20N,?9+4t3gPEwa4teliAwcj8KcyUN838Mcz8Ncj8N82xipmgwi65Q834Obz8KciQQag11c}65Bom9F.4C}1jsJgg062wt12?90wE44wgk0hk15Mco0hA16w8s0i81.w}8{4.4t19?Poj40i0I.6Mb:8}2{10>7gig1cS4N0ag9.2I2g.2[w{g.hQ4A0jdxcg1Q7:u1M:w}8{4.4t19?Poj40r0I.6Mc:8}2{10>7gig1cS4N07gs0>Q7:2[w{g.hQ4A0jdxcg1Q7:t1M:w}8{4.4t19?Poj40H0A.b09:8}2{10>7gig1cS4N07ws0>Y7`#3Q)c0,{6?+3.8{5g1-M03=41-c>=7wo+3.k{7g6-M06{2Q1w+c>M{F0w+3.w{ag9-M09{]+c02w{i0I+3.I{7gs-M0c{1Y7-c03g{J2g+3.U{1gL,=M0f=obM4=c?=72Y1=3>4{20L,=M0i+c?=c?M{I3>=3>g{awN,=M0l`:c05w`.3;{bgR,=M0o.4`g0YvY8}i0I*I02M:4wb-w0b>w:1A2M)2M08}F0A*A02}7gs*c>I`g0YvY8}H0A*A02}7ws*c028`g0YvYo}v1M*Q0bw:7Ms-g0d.w:1I2M)2M1[r0I+2.I06}a0b*b.w:2M2M)2M12}I0I+2.I06}f0b*b>w}sbM4-4g08{M*I0lg[c-w0b>w:1k3*2M1H}G341.4}1>k06}1wL,-g07s}obM4=4?.8}q0M*I0Dw:6wc-w0b>w}kbM4-3M2G}52Y1=1.Y06}awN,-l`:g0YvY8}s0M*I0Og:70c.3U[w0b>w:1s3g)2M0o}31Q*Q02}6wd*b0dw:1E3g.z0c:802M0o}K1&I02}fgg*b>w:3U4w)2M08[1c*I.w4}j:s0w:w0b>w}85g)2M08}71k*I?w40>Ml.381w:w0b>w}g6g)2M08}F1A*I06}60s*b>w:2Icg4-5g0w,.H3410,}1>k0f?.b0N,0>}g0l?U1.2Mdg4>[405g0o}I3>-1g0nM4.b0M,0E[g0k06U1.3oc?0b[405>@,0>341>M}1>g0zw4.20N,0E[g0k09Q1#g0YvYo}92g*Q0bw:2gA-g0d>w:2Q9*3w2D,.J2g+1.U`0>03N_Xk10>Q7-80302X,.72Y1=1>40O?.20L,=g3N_Z41.2Ecg4=40503t,:3>=10f7_YM4.ag9-w09.w:])2w0o}M0A*E02}cg9*a0fA1^1[70w^i}608^8w:342^18:120w^w}nw8^4}fo3^18:1I0w^i}v08^4w:8Q2^18:2C0w^i}JM8.60N,0o}4g0k0cE2.3A6M.A}1802M3u0w^g}V08^4}fM2^18}b0M.i341>w}h>g07gc^4}2k3^18}S0M^i}hwc^4w:5k3^18:1E0M.Z1}M2:i.I0uwc^8}8A3^18:2p0M^g}FMc^4w:bw3^18:390M^h}Sgc^4w:fg3^18}71#g}6Mg^4w:2M4^1[@1:u341>w}h>g0kgg^4w:6k4^2}1_1#g}yMg.90N,0o}4g0k09Q4^1{oT9QqiVL02hx06dxr6NvtSlxqRZCrw0Ap>zsDhKbCY0oT9QoClDqmVjbCY0omNInSBJs6NFpmhvpC9Ft7c0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc>Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr>QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0pCBKp5ZSon9Fom9Ipg1Pt79zrn1%05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kd>Pt79QrSN%05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kd>Cpn9OrT9%06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1JpmRzs7B%07hFrmlMnSdOoPcOnTdQsDlzt>PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB071Lr6N%07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0sThOoT1Vg4tcik93nP8Kd>CsClxp417j4B2gRYObzg0s7lQsQ17j4B2gRYObzg0sThOpn9OrT9%069FrChvtC5OnSZOnS5OsC5V05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB07dQsCNBrA17j4B2gRYObzg0sThOoSxOg4tcik93nP8Kd>Pt6hFrA17j4B2gRYObzg0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObzg0sSVMsCBKt6p%069FrChvon9OonBvtC5Oqm5yr6k0pCdIrTdBg4tcik93nP8Kd>JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kd>vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ069FrChvondPrSdvtC5Oqm5yr6k.2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq.Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bA5ijiVxt7hOqm9Rt6lP02VDrDkKoDlFr6gKonhQsCBytnhBsM```-6M}s}2}Z}fg}A`4-2U:3S__ZL0w:1w1:o,.f[c-1[g}U}2M}8:1k,.l?.b02:4[M}g}g}g[c}2}1,:g4:p0w^1-4w:3___ZL0w:1U6:u1w.lw}c)w}8:1l}_L__rM8:1Q1w.t0o.4[4[g}g-p[A}2}J0o.bg6.3M,:M-4}2}6Q}9}gw:ag8.2A2[4:c}j}1[w:1S[g}o:2A2g.F0A:M`g-sg}4}6}I0A.b09.2k,^4}1}7M}1}1w:4wb0>82M.b14^2-22[g}o:1Q7:t1M:w`g-y[4}2}v1M.7Ms:U2#4-9[1[w:bgA.2Q9:1`1-2q}3w}c}kbM4052Y:g`g}4}Fw}Y}3}62Y1>wL:4`4}1}b8}1[M:1ML,0sbM0>`1-2_}1w}c}wbM4082Y.e[4)g}8}O[4}3[3>:M.2M`4}1}cQ}1[M:b0M,2Mc:@`1-3j}2[c:2Ecg40G34:M4#g-S[4}M-awN:K`1[g:e4}30>M)3mcg.cg`g+3N}1M+2Qdg40238.e`,)g}8#ewO.2g2:6w:64}4}4[A}3#1UeM.Igg#g-h[M#ak}s1#4-'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'148062 74032\nmd5sum:bd05b89f3f87ba1add99de7658191ab6\nsha256sum:1a116823388d93d0ffe98aad274237bea61f29742c270c504910da53ae983b5e\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n0Mc3\n000\n0w\n0g\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n04w4U&6\034vQlchw81.=?c05g01+1=30q.}w,4?e?704?7?r?4;5!=O3M}38f=0.}g;o;8_g[zZ.]2fQ1}81w}30a=01}2;1w,23Z[8fQ1}w_g4]e01[U04[8=g;4;O04}38.}cw1[9=A=g{kelQp.;wew}20W[83E}14{4g{1{1hVnhA1w!!:g{5bBt6g4;2fQ[8_g4}zZ.]@08}3U>[4{1;1g;3;hQVl0fMcCfx7P@FeDKfWl1QoK94zGIX_]c;B:g;o;gi4h02ok>]B;ag,cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg!-0M09,i#M0l0101>-3G;4C$3N;4#3e;4C#g;8#2w;4#16;8C$1f.?4C$2K;4C$1r;4C$1X;4!T.?4#1F;4C$1V.?4C$1x;4#1D.?4C$1l;4g$2n;4C#1;8#21;4C$3s;4#3_;4C$2y.?4C$1t.?4C$2r.?4C$1K;4C#z.?4#37;4C$29.?4#3l;4C#I;8#26;4C#5>?4!f.?4#1Q;4C$3c.?4g0l0802>]c{3N.?4C0a0f0M[x{3v.?4g0l0502>]c{2R;4C0a060u[h0c}2V.?4g0l0b02>]c{2D.?4g0l0e02>]c=0nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0sThAqmU0pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO07dQsCNBrw1Pt79zs7A0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSM0oCBKp5ZxsTdLoRZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U05Zvs79FrDhCqmlBpj4Oe01JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1Dpnh3k5lQqmRBnTdQsDlzt01QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs=080.02?40.02?80>02?40.02?c0.03?80>010.0.05?80>02?80.02?40>01?80.01?80.01?40.01?4;10.04g8?1=K96m1w?1g0r>?4;behBwo,g09w8?1;2OApo6,30342,g;BV6m1w,w0Y>[zZ.]5w[205M}13Z.]5w{g5M}1zZ.]5w{o_g4]101>]5w[2ocw}1w1>]5w[28d[201>]5w[2ocw}2w1>]5w[2Md[301>]5w{Mdw}3w1>]5w[3Ud[401>]5w[10dg}4w1>]5w[1Edg}501>]5w[2Mdg}601>]5w[2ocw}6w1>]5w[3Edg}701>]5w[2ocw}7w1>]5w{gdw}801>]5w[2ocw}8w1>]5w[1odw}901>]5w[2Edw}9w1>]5w[2ocw}a01>]5w[3gdw}aw1>]5w{odM}c01>]5w[2ocw}cw1>]5w[1gdM}d01>]5w[2ocw}dw1>]5w[1UdM}e01>]5w[38dM}ew1>]5w[10dg{2>]5w[2ocw[w2>]5w{oe[102>]5w[2ocw}1w2>]5w[10e[202>]5w[28e[2w2>]5w[2ocw}302>]5w[3ge[3w2>]5w{weg}402>]5w[2ocw}502>]5w{od[5w2>]5w=9g}6w2>]5w{g.8]702>]5w[1Ueg}802>]5w[3EcM}8w2>]5w=9g}9w2>]5w[1w.8]a02>]5w[2oeg}b02>]5w[2UcM}bw2>]5w=9g}cw2>]5w[30.8]d02>]5w[2Ueg}e02>]5w[2EcM}ew2>]5w=9g}fw2>]5w=>8[3>]5w[3oeg[z_.]9w,1g+13_.]9w;o+1z_.]9w,2+023_.]9w;w+2z_.]9w,18+33_.]9w,2E+3z_.]9w,2A+43_.]9w,2k+4z_.]9w,2s+1,w]5g;c+1w0>]5g;g+2,w]5g;k+2w0>]5g;s+3,w]5g;w+3w0>]5g;A+4,w]5g;E+4w0>]5g;I+5,w]5g;M+5w0>]5g;Q+6,w]5g;U+6w0>]5g;Y+7,w]5g,1+07w0>]5g,14+8,w]5g,1c+8w0>]5g,2w+9,w]5g,1g+9w0>]5g,1k+a,w]5g,1o+aw0>]5g,1s+b,w]5g,1w+bw0>]5g,1A+c,w]5g,1E+cw0>]5g,1I+d,w]5g,1M+dw0>]5g,1Q+e,w]5g,1U+ew0>]5g,1Y+f,w]5g,24+fw0>]5g,28-1>]5g,2c+>1>]5g,2g#6011@921wKCC0UBZ80i0jw&204MYU6N2eao227Mg?7UAvYx@;608w0bE?2wbMM0_A6Z__Zb6011W7?8jwg?7EFwc8v20>4U:6011@ay1wKCC0UBZ80i0jw&o047Ue862Wqo3ynQw181e&1w.vz8wobFFwe9vi|011@fy1wKCC0UBZ80i0jw&o047Ua862Wqo3ynQw181e&1w.vxwwobFFwe9vi|011@421wKCC0UBZ80i0jw&o047U6862Wqo3ynQw181e&1w.vy8wobFFwe9vi|011@221wKCC0UBZ80i0jw&o047UM862Wqo3ynQw181e&1w.vxgwobFFwe9vi|011@a21wKCC0UBZ80i0jw&o047Uq862Wqo3ynQw181e&1w.vw8wEbFFwe9vi|011@dy1wKCC0UBZ80i0jw&o047Uc862Wqo3ynQw181e&1w.vxowobFFwe9vi|011@721wKCC0UBZ80i0jw&o047Ui862Wqo3ynQw181e&1w.vzgwobFFwe9vi|011@022wKCC0UBZ80i0jw&o047UU862Wqo3ynQw181e&1w.vzMwobFFwe9vi|011@821wKCC0UBZ80i0jw&o047UK862Wqo3ynQw181e&1w.vwgwobFFwe9vi|011@b21wKCC0UBZ80i0jw&o047Uu862Wqo3ynQw181e&1w.vyowobFFwe9vi|011@ey1wKCC0UBZ80i0jw&204MYM6x2e;6;1w48hye1248zA062BY8022jg,6.w8bF,Ib20>ASC>xY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1,uyC0MxY8020jw0.C0204MYo6x2e;6;1w48hye124wzxg88dYt1W4v7gex7Ol0ohY8022jg,60ow8bF,Ib20>ASC>xY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1,uyC0MxY8020jw,6,49w>1cff1Dgzw,1w48gyyg?2iMw089cFw88v1,vzx_O7U;o2208KA?2AI5022gv__ozMovCcU5vT_iNw.uzR_LZb8?xe04083A,1w4?1W1248FCC0MxY8020jw,6;1w?12o080j3O0pQ8U8f__iM,60204MYs6t2e;6>x2a1;o224Mzw,AIl022gg?9iN40891FweFvfwoqDP__UgU;o;6,49w.0AzjX2hRlUkyBZG1kFuhha9DQg02C1u3EFvnxbaDTw_M12@4wzvi?oTww081e_LZ2fvX_0zQgKQEV0bI8eh?9zCc0M4gClq0vk0.3CphC1Zz0d44qo3inQ?49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~^`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M12.>eg,6>x2ahVfX_iM)gC0204MY86p2eao227Po_S7XUf@1@TwzCTPU_@7XMfY1@TwrvTNUaXNYOfYx@@z_EvIg?7UIvUx@,8UDj_OAV,9b4M>A7@_U8YufLzvSyPx3yd@_Zb6011W7ArunPo1891.1wf5DX_QIo047EuhJZv504wA4o047U207x@w,3Iw0k7Xg071@Sw104w102e9,9bb3_wA;1w88h2wg,6>x28V,abcM>A3@_Q8Z_LY2fh2XizA0KMwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vhs4a_240GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx~^0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg02AVtfY.w4083A,1w88gyAg,60My2bF,FbcM1wA41020V?2we080anA1080UY01xef?8vBZ@fZb6011W;OPs0o50Zw0xEg40an7g0o91;o2y08KA1060Y.?eM?auLJ@vZb6011W7ArvnPM0E916011@>1UvEw0k7Xg071@Oa4M3_OOO0Z?7wfykzTCfAD2BxV8fTuwU0fDCP0vty?10eTzb9DY10a0Y.20e7zHET@pZ_Zb6011W7ArvTOA0891;o328wKA?2MIF062gqo3ynQw04dXufLBvTzHF7Yx181e6011W040Wnf__NQV__Y_enwruDMs0891,Fb,foBUWWx_uf8FvtaVOn@g_U91gLzFuWo3anQ102y9u4cavg8023A204G9uf8FvtaVanRUiABZQHD9v@3_049UOOp_.2wf04>3xUWWd_@vr_iNw.uxV6TZYpf@2g7zb8TZB@fZb6011W;ONU6TZYueKzvN01wA3JZ_Zb6011W,62O40o91,Xb>>A4?5Kj,Ybdg1wA4?dPX207xWy01guKQ1@d_g071WR018jwg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v20>4X@_O8Z;o92oajA?a0U.20ef?ojwMy2bV.>eg80anDM027VFvr_iNw.uw,cIbfW1gvX_UzZw084Uobf_eTzXUT@5@vZb6011W;ONU6TxYW022gg,60Ew2bF.1wf,auI1@fZb6011W7ArvnM40o916011@>1UvE1,X8051@Q01MvIg_LZb_LYyfg,62gC2AVu4IIvj288LBc_LZbUvr_iNw.uw?1wIq022gl7U_QIo047E.3weM80o@xx@fZb6011W7wrp7P@_S8YSbdzecTR_QIo047E207xWy01guJ?s7Hk04xebg7UTYg?7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v20>4VUOOd_Ovn_iNw.uyg__ZbucIzvXDR_QIo047EtfX_i_X_wzNU@@d_qbe4e47T_QIo047EuhJVv7g>A41060Y3vv_iNw.uxV6TRY9fS2g7zb8TZVZvZb6011WfX_ozM10e0XMbdze2nR_QIo047Epf__iMw1UuEw0k7Hg071WR018jyQ1@d_4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LZyf040U3JMIScURvj_iNw.uwk__Zbavv_iNw.uw206fEfvv_iNw.uxU@@h_.3weTwrpnP@_S8YEbdzea7Q_QIo047EUfX_iM{1w0A]6,49w>1cfa1wgzzU_@7XuhJ_v47_8vz?E91Fw88vb?MvJU8VVYy?x@RI>3yE0a7Xu2KVvd,vyFZvZb6011W7ArqnNUiPRZ8022gnzXUT_hZfZb6011W1gqvTP__Oe9ng09b5M>A5UYYd_Jvj_iNw.uw106cUOvn_iNw.uxUYYh_fvv_iNw.uxUOOl_u1JAv7zXUT_FZfZb6011Wd,uy8027HG02xWX?MuKC0MxYM?xefz_UuIw081ekey_v90.vKo067X.1Bea0>vJM0a7Uqvn_iNw.uxM0a7EufLAvTwruTNlZLZb6011W7?Euw?20V.2te7wzwTNU026ps021@aUFeTQhZfZb6011Wf__UPIBZvZb6011W70>uxU@@l_u1JYv17S_QIo047Eu?xynzroTZUUVR_HLAYvtDP_QIo047E.1zeeTQ_QIo047EudJAvS7S_QIo047Eu1JWv7zzwT@NY_Zb6011W040oPz5ZfZb6011W7zzx7YVZLZb6011W7wrvTNUYYd_yvf_iNw.uw106cUDvj_iNw.uxUYYh_4vr_iNw.uxU6TNYudJzvW7P_QIo047EueKzvVnP_QIo047Eudd3vMDP_QIo047E,zb3M1wA4E04e1g018sv0>A0404FNG022gg?83Bw027Vs?x@tDQ_QIo047E,wegE0E3xw084Uu1J@v7zXUTY?3WhSv7_iNw.uxw027FgfwFv1M>A4?2C9,9b10>A,3W18w09bb0>A3@_S8YufLAv_2PoPwxYLZb6011W,o3zg?7Ey?xWV0.uKo067HE021WWw0EuKM0c7HM?xeao327PU_@7H8020jw,6,49w_LZyf7zjh7YwJ6cURv7_iNw.uzg?7Ey?xWV0.uKo067HE021WWw0EuKM0c7HFwc8v,o3zs_vZb?12o7zb9TZUUUp_ufLBvTzjh7@NY_Zb6011W7j__QI?49wu1JAv7zb9DZUUUl_udd3vT7P_QIo047Elf__iM0.C1UQQd__vb_iNw.uw?2cIKfW2g83__QI=o07]1w;o,gC0204MYk5R2eao227M3?cI4?1@57@8vy80E51.23bUw1ovKg0o7XC06x@Ww1UvKg0pR0203AWM?fUA?8AL202ug,U3I?20Vu4IYvr02wA7M024V>1we7xb97RUiPJZrv3_iNw.uw,cIv062gfw.uBjUO0ZN2?fv?UuyBCMxxP_sFogU02nAf,ZAAwGvk12267iegxZtLVavm0>jz__S0Ut3UFvl18iDQkkyxZu4IZvhnP_QIo047E,3b8w1wA1w0c7Es02xW0Y.3RE0e7Eu?1Wg?fON.AFxQz7avd8FiDQkeIpY55b6v1h2NDMkWIpYM062gvX_8zQM0k4Vu05xAa01MvKoJ2AVu5d3vnxb9nR?80Us051@nxbfDQ5Y_Zb6011W701guA?a0UufLzvTxjh7RJYfZb6011W,f2NU0i61e022gnzHFDZUYYl_s04xAk0>3xUSSd_Nvb_iNw.uw?a0UudJAvTzzwTYNYfZb6011W7018o680m7HA061WVw1EuKw0s7HJ0szvqw1UuKM0i4U4?1Wao327Mw081e;o;6,49w?3weM?83A2060Uu4IYvv?8jBUiOhZu4IXvvnK_QIo047E,3b8P@wA5w084U?1we701wvzpYvZb6011W;OMs0o90o?xWn?Muwf040Zq03xW7w?uD__S0Ug49aon01wuziiiFZQz5avhgWanQkkyBZ548FvnxbfnShYvZb6011W;OO0_E91gv7_iNw.uw206fElv7_iNw.uxU6ShY_LZyf7yQoPz1XLZb6011W8w1ouKg0o7HC06xWWw1UuI1020VI04xebg78TQg?7EFwc8v20>4X@_S8Yebhze8DK_QIo047E.>etz__QI,1w?12o701op3@_S8Yu3f4va2QoPy1X_Zb6011W7018o680m7HA061WVw1EuKE0u7HI04xe1,uyQ1OdZFwc8v20>4Ug02jFu4IYvg?aoA,AIhfS2gb3@_QI,1w?12o77M_QIo047E>1zW8nM_QIo047Eu1JAvfX_ozNoJ6cUcf__iM{1w0k,80j3M0mA8UFw88vez_EvLM_Y7X@f_x@N,vwh_O7UL021efTL_QIo047E_L@2fayQx3w?cfHu1JZv205O7L03OwI30e.205ynz03OAI?e.9DS07Op9G1Zz0cw4,g3A6qa0h1ww045tJ0f063a0hb0ioggM5011I>.pM07vf__9PBUe2BZZ0cFvhhaaDSKi6hYHAw@vl18oTM,cIO0a2gs0fa2P@_U8YKbi4eeM1w4>1oBUM0YFbe01w42pZw1YCiqwvoM381,40V1Cyw4go8011nrg3M1wOw4jM4C44c1g.r08046s01TP__OsVu3wFvvg3anQkiyFZHAzAvWV8fDRgifZ_,vbaM1wA703OwI_L@2feyQx3zc0E1080m9uc0faiP?E10Cvo0v9ACE7Sc0O.?10egpEE14620.lSQ0Y0ocE17I19x130k046M2011D?tY__YDenwUanTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM?7OOc0E91M0YEbfX_wzMoJogU70a.205ynz03OAI40a.9DS07Op9G1Zz0cw4,g3A6qa0h1ww045tJ0f063a0hw0qoggM5011I>.pM08vf__a3BUg2BZZ0cFvhhaaDSKieh_HAw@vl18_TY?1YIR062gbM08o43?AIM0q1giM5wA42?AI_LZyf62PoPws0890201ZW,8UA,AI3022gfX_ozNwIScU8Egwfvbbg3TAD4Fx9icFogU0inA?40VI02xebw>jyM027VK011Ap7N_QI,cID0i2gg40U3JUWWd_luP_iNw.uzM024UJ0vzvN,uzE_W7HYf_1W_z_UuKC0MxY8020jw,6;1w?12o7zPMT_,7V@uL_iNw.uz,7Fu1J_v,7ONs_E90L?xwgc02iPU0U51R0a2gg802iP@_S8Yobdze1g>A0807TE,zyg?2iM418918Egwfvbbg3TAD4Fx9icFogU0inCM0a4U?20eb?8vDpYfZb,3b4P_wA2M0c7Eo031e_X_EzNEJqkUuff3vP0>3yJXvZb6011W7zPMT@1XvZb6011W3g?4w?49wuff3vY,vB9W_Zb6011Wc,uA,cIgfS2gbU0ouxUWWh_hvD_iTwrvTNUWWd_guL_iNw.uzM024UJ0vzvN,uzE_W7HYf_1W_z_UuKC0MxY8020jw,6,49wuff3v@TG_QIo047Eu1J_v,7OMQ_E91_LZyf7zPN7Z8JmcU.3weMDG_QIo047EyfX_iM,6;1w?12o7zPMT_,7VGuH_iNw.uz,7Fu1J_v,7ONY_o90L?xwgc02iP01851K0e2gg802iP@_S8Yobdze1M>A0807TE,zyg?2iMc0890_LZyf62PoPw?20V?2web0>jyM026hAu__iM,OM4_E90I031w6?MjL@_W8YsbmBe7zPMTYw080UpuP_iNw.uxUYYd_euP_iNw.uzI_LZb;o;6,49w4010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4rPXC4>040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hDfKog30.3CplHVZClq4vgo83h06oaQhlSQ0Y0oc811Y@Vx.024e4?vzz,7VBuD_iNw.uz,7FyfL_iM0.C.040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hHfKog20.3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16c@Vx0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw46PXC41?8gUg01@ec,vAlWvZb6011Wc,uBU6TZYtfL_iMw0vuwg05TF,3yg?aEA,wIfwoFli01wA;AI_LZyf62PoPwY1o918Egwfvbb03T?47VV9M8oikzam4e?BVI02xe,w3yM027V@uT_iY0.uA,cIqfO2gb?Muxw0c4X_L@yfc0.vBEJqkUuff3vP0>3z5WLZb6011Wc0.uA?a0Uuff4vTxjgTQJWfZb6011W43Z_QIg040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0h_fGog20.3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE17s@Fx0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw4bPWC41?8gUg01@ec,vDRV_Zb6011Wc,uBU6TZYNfH_i_X_ozM10e0XObhze1nD_QIo047EBfL_iM?2iMk_891XfX_iM,6;1w?12ofX_ozNwIScU@fL_iX?UuyU0c60o031e_X_EzNUJqkUuff3vR0>3z9WvZb6011W7zPMT@tWvZb6011W53Y_QI807TE4?ZWg,UA?4C9,8b3U6iBmE0o91,abe3WwA4yx40ZYII0fs?8vDAD0xx9idaogU02DA;VI02xebw>jyM047VK?1AmDI_QL?27F,3bdzWwA2M0e7EK031w6?MjL@_W8YM?x@nyRFjxUYYd_k020e37F_QIo047EM?xWg?E3xUYYh_u4IzvpDC_QIo047EHfL_iMw0vuwg03TF,3yg?ioA,wIfwpalig2wA4,EIlfO2gg0.3A?a0UM?x@r0>jyM046hTuL_iY?8uA,cIjfG2gb?Mo1w0c4X_L@yfc?8vBMJqkUuff3vO0>3yFWfZb6011W7z__QIg040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hqfCog20.3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE158@px0c010epBmLDSplEhZ1wwd40pwHh5nrg3M1wMw42zVC41?8gUg01@efnB_QIo047Eu1J_v3zV_QI?49w_LZyf040U3IEJmcU5un_iNw.uyk@vZb_LZyf040U3LUJ6cU_uj_iNw.uxY@vZb,abfX_ozNwIScUmfW2g;6>x4a1;o2248zA,EIS022gfX_gzT@_M8Z4bJaeg2X23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ;o;6,49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~^`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M12.>eg,6>x2ah;o3288KA?2AIxfC2gfX_8zQ,1wA9wFej288LBM@vZb,abfX_ozNwIScUTfS2g;6>x4a1;o2248zA,EIKf@2gfX_gzT@_M8Z4bJaeg2X23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ;o;6,49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx~^`0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M12UfX_iM,6>x4a1;o2248zA,EIRfW2gfX_gzT@_M8Z4bJaeg2X23Ag02AVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ;o,gC0n12LMx0aH4o1gqN69o24gRSMxY1s4Ev64^`0GQhym0x4dtI8v0n1a7Nx~0y4gym2J4tscHv6pjW1Z4?Fenj_0480_LZb=6?M,w1cf11egzyC>xY;o320oKw1080U4?1@e7_8vyNUvZb6011W;60Uw6bE.20e9Tx_QIo047E;o420oKw1080Uyu7_iNw.uw,1wi81yW04>3xRUvZb6011W2?8jw?60U4?1Wao327Mw081e=6{o7ze.]Fw88v0k0DQaC0CxZFwc8vf3_2@xgo8JZ55Fwvtj_33w?8LFwL?uao3ynQ806LF80i0jIP__QL8__ZbNf__iY3__QKY__ZbKf__iXj__QKM__ZbHf__iWz__QKA__ZbEf__iVP__QKo__ZbBf__iV3__QKc__Zbyf__iUj__QK0__Zbvf__iTz__QJQ__Zbsf__iSP__QJE__Zbpf__iS3__QJs__Zbmf__iRj__QJg__Zb>1cfcNcgzyC>xY4?1@97_8vxM024U4?1Wao327Mw081e=0J{79y[t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M=t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug;1QqmRBs3EwsClxp21BsD9LszEw9nc,1FrDpxr6BA86VRrmlOqmcwqmVApnwwpCZO86BKp6lUpmgwon9OonAW82lP}BsPEwrCZQ865K865OsC5V=1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM]pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA:2lIr6ga;pSlQgR1lt6BJpg}7hFrmlMnSpKtz5x]1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO]1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw}1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M]9j0NdCNIu?Bc3xU:2kMe7wJ9j0NdCNIu:1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt[gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw}4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM=2>821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw=lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ]4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK:4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:82>86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI{2>821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ]4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK[imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM,1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw=imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK]19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK[t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt:7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ:pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng-01:w;c;wwXzJ88eUXi23KeQwwXzJ0hI3eQ:7;sdT__T;30TL__x;43A__Zg.?Aev__Zw1?3wWL__j08?d3S__@4>?ofv__Rw;g=5Wkw04u4416MM101g;o:fv__Xg:gwB10486gh:M;@dP__QM1[O;4g;QTL__u0k,152k40CMms14ev0pw8hwXg0FA7DgchgnVi2Fs9gFE6gpU2ggI2lVs9gpE6gpU20ALngtF2TA4e04w6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnVxBMB2Cwp1Dw9nRQ7qgtV13w191A7vTtPrStx13J02BMCo29A7Cwqr1pM4Dgeu0FY14k5@idvqTBmn2pE6Dw91RQ7qgtV13w191A7vTtPrStx13J02C0yp1VI5D0it0VY14k5@;x;101?3EUL__h0c,13DM523I01gwB1046u0Aap1Qat0Q8hgnVsSk7tgtV11A513w11TQ4eM06p1VQ3Dwav0h51vAaq1A6r1kas109E2JB1SA7rgtN1Tk7uggU.gp1gtZ32QvpgtF1SQ7sgtR1TA46gkep1VE6CMms19Q3Dw8hgnU?7;2o.?Ien__R03;hwWM0N51vAer1k6s146t0Q6v0nCu0B_rgtN1Tk7ugJZ13w121A543H03CMms19Q3DM4hgnVLSQ7sgtR1TQ8a3w131A512Qyr1pM4Dgev0kwaSQ7sgtR1TQ4e04c6gk4b;d:M2?2cWf__Y0I,183L014k5@Dgeu0FY10Foa3w161A7vTJR42TIa3w161A7vTJR32M0s;h08?4jQ__@4:4we8151vB8e04c6gg//////////////////////////////////////////////////////////////////////////////!!!!!!!!!!!!!!!!!!!!!!!!!!!!]w1s[g5M}1zZ.}g{h>[M{818[d{3gO[6g{8_g4]1I{2=q{13Z.]7=8{fn@_SY:Y04[5{3w6[1w{M>[E{hM8[b{1w=M=?8}8=0c[k=s{5M[3U3w=07]B34[3?1M-1M{E2g[w{Q0k[9{1w{_L__rM;3o2[f___SY]g[3M__ZL:808[@v__rM:R!!!!=,7Y2!!!!!!!!!!!!!!!!!!!!!!!!!!$C38}28d[9wO[I3g[Mdw}fwQ[g3k}1Edg}b0R)2ocw}ewR[C38[gdw}9wO[m3o}2Edw}9wO[Q3o[odM!?2ocw}50T[C38}1UdM}cwT[g3k!,C38[oe[9wO[g3w}28e[9wO[Q3w[weg}9wO(od=B{g{g.8]7wV)3EcM{B{g[1w.8]9wV)2UcM{B{g[30.8]bwV)2EcM{B{g=>8]dwV)17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA;8;4]1?17gig1cS4N040m[g1o[8;4]1?17gig1cS4N020i[j18[8;4]1?17gig1cS4N03gO[i38[8;4]1?17gig1cS4N040m[z1s[8;4]1?17gig1cS4N07gN[t34[8;4]1?17gig1cS4N07gN[t34[8;4]1?17gig1cS4N04Mi[n18[8;4]1?17gig1cS4N04wO[m38!*M010cw1#M020f01#M030302#M0403w6#M050808#M060dw8#M0702w9#M080fwe#M09,i#M0a060i#M0b03gO#M0c060O#M0d020W#M0e06gW#M0f?zZ.%M.013Z.%M0h01zZ.%M0i023Z.%M0j?3_.%M0k:w%M0l0101>%M0m0103>%M0n!,M0o03w7>-01;103N_M&d:C0a040m(f:C0a0a0m(y:C0a010n(U:g0m0103>}g[14:g.013Z.-1H:C0a080n)1T:g0f?zZ.&0103N_M*2m:C0a090n[j04}2B:C0a0e0o[u0k}3f:C0a0b0x[k0c}3v:C0a,B[Y0I}3J:g0m0203>]1=9.,g0m0303>[g[r.,g0m0307>]2=I.,g0l0101>]k=X.,g0l0601>]m{1b.,g0l0c01>]e{1r.,g0l,2>]k{1G.?103N_M*1Q.,g0e0cgY$103N_M*22.:a060k)2L.:a0e0k)3l.:a080l)3Z.:a060j(x>:a040k)16>:9,i)1D>,C0b03gO)1J>:a080j)2i>:a020l)2S>:a080N)39>:a0e0l)3V>:a0c0j(h0M:a0a0j(S0M:a080i)1y0M:a0a0k)1Y0M:a0a0i)2w0M:a040l)3f0M,g0h01zZ.-3s0M:a,k(a1]a0e0j(G1]a0c0l)1d1]a0a0l)1O1]a020k)2n1]a,l)2Z1]a0c0i)3r1;g0i023Z.-3A1]a020m(91g:a0c0k(J1g:a060l)1k1g:a040j)1Q1g:a060i)2y1g:d020W)2R1g,g0l0103>-311g:a020j)3C1g:a,j(91w,g0j?1_>-0f1w:a0e0i(L1w:a,m)1i1w,C09020i)1o1w:a080k)221w?4C$1C1g?4#2k1w?4C$2C1w?8!x1w?4#321w?8C$3s1w?4C$3R1w?4g0l0802>]c=81M?4C0a0f0M[x=s1M?4C#K1M?4C#b0M?4#1G1w?4!_1M?4C$1f1M?4g0l0502>]c{1x1M?4C$1Q0M?4#1Y1M?4C$2p1M?4g$2G1M?4C#f>?4C0a060u[h0c}1o>?8#2@1M?4C#s1,4#3e1M?4C$3F1M?4C$3V1M?4C#e2,4C#w2,4C$31.?4!N2,4C$2A>?4#132,4C$1l2,4g0l0b02>]c{1E2,8#222,4C$3f1,4#2u2,4g0l0e02>]c{2F1,4#2M2,4C!oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv03<<5xbD1It5ZzomNIbBZvoTxxnSpFrC5IqnFBg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbC9FrChvon9OonBvtC5Oqm5yr6k0c3<0Mcm4Ks6NQnSdxr6MKpSlQsDlPomtBg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbC9FrChvtC5OnSZOnS5OsC5V03<<5xbD1It5ZzomNIbDdQsCdEsA10hQN9gAdvcyUNdM<<0NpiVMr7hvoS5Ir2VvnStJrSVvsThxsDhvnM1vpCBKqg<<0NoiVMr7hvoS5Ir2VPt79IpmV.4tcik93nP8Kcjs0c3<0Mcm4Ks6NQnSdxr6MKrm5HplZytmBIt6BKnS5OpTo0nRZDr6BKqRZgj5hOpndLr7pB03<<5xbD1It5ZzomNIbBZvsSVMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03<<5xbD1It5ZzomNIbDxCsClB03<<5xbD1It5ZzomNIbDdQsCdJs410hQN9gAdvcyUNdM<<0NoiVMr7hvoS5Ir2Vzr6ZzqRZDpnhQqmRBg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbDxJomNIrSc0c3<0Mcm4Ks6NQnSdxr6MKpD9Bomh.4tcik93nP8Kcjs0c3<0Mcm4Ks6NQnSdxr6MKnRZBsD9KrRZIrSdxt6BLrA10hQN9gAdvcyUNdM1vnShPrRZEomVAr6k0c3<0Mcm4Ks6NQnSdxr6MKnRZMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03<<5xbD1It5ZzomNIbC9FrChvtC5Oqm5yr6k0c3<0Mcm4Ks6NQnSdxr6MKs7lQsQ10hQN9gAdvcyUNdM<<0NoiVMr7hvoS5Ir2VJpmRzs7B.4tcik93nP8Kcjs0c3<0Mcm4Ks6NQnSdxr6MKpClOsCZOg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbC9FrChvondPrSdvtC5Oqm5yr6k0c3<0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3<0Mcm4Ks6NQnSdxr6MKsThOoT1Vg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbCpLs6lKg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbDdQsClOsCZOg417j4B2gRYObz4T03<<5xbD1It5ZzomNIbCpFrChvtC5Oqm5yr6k0c3<0Mcm4Ks6NQnSdxr6MKnRZFsSZzczdvsThOt6ZIg417j4B2gRYObzcU05ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM<<0NoiVMr7hvoS5Ir2VCoSNLsSl.4tcik93nP8Kcjs0c3<0Mcm4Ks6NQnSdxr6MKs6ZIr410hQN9gAdvcyUNdM0Kl4Z3bw<<0NoiVMr7hvoS5Ir2VytmBIt6BKnSlOsCZO03<<5xbD1It5ZzomNIbDdQonh.4tcik93nP8KcPc0nSBKqng0c3<0Mcm4Ks6NQnSdxr6MKrm5HplZKpntvon9OonBvtC5Oqm5yr6k0rmlJoT1Vg4tcik93nP8Kcjs0sThOr6lKg4tcik93nP8Kcjs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06pzr6ZPpk17j4B2gRYObz4T06pLs6lKg4tcik93nP8Kcjs0s6ZIr417j4B2gRYObz4T07hFrmlMnSxxsSxvsThOtmdQ05Zvs79FrDhCqmlBpj4Oe417j4B2gRYObzcO05ZvsSVMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80sThAqmV0hQN9gAdvcyUNdM1Pt79BsD9LsA17j4B2gRYObz4T07dQonh0hQN9gAdvcyUPcM1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1Pt79zq790hQN9gAdvcyUNdM1Pt79zs7B0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0pSlQgR1lt6BJplZPt79RoTg0pClOsCZOg4tcik93nP8Kcjs?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!!-01I;7:w[38.}cw1[9&g*K;ZL__rM8{Y04}3M.}3M=M{8*e:I;2{302[c08[81{g;3;2=o{4:3:w{U1w}3w6[hM8(4(18;____rM8{w>}202[5o=M{2=8{lg,fX__SY2{dw8[S>}1g=g;1;2*6g;4:w{E2g}2w9[Q0k[3=w{6{1K;1;48{@0U}3U3w{3{M,1g;8{1w{u:4;6=0i{18}1s*8*7U;1;1w[1w4w}60i[R1Y)2*24:g;o{d38[Qcw}2g*4*yw;4;2{60O[o38}301M)4*98;1:w{wew}20W[h&g(2w:g;8{p3E}1Aew}6g2(4*Gw;U;3=zZ.]2fQ[8*2=8{bo;f:M{g_g4]13Z[2&w{2{32:g;c{6fQ1}o_g[w*8*PM;o;3{23Z.]8fQ}3w.[g{2=g{dw;1:M=_M4}3_[k&01[2{1P;2:c=?2]1g_M}101(8=w{Tg;4;3{101>]4041{w)4*ec;8:M{g0M8]103.]a.)1*3E:g,3&g0M4]2U*1=4{Yg;s+3w7>]g0c1}w.)1&4;2#604.[M[q;m:w{6=9:M$1w404]c88(1*4g;c#8xA1}7.(g)'
;;

'riscv64')
b64=$'37902 18952\nmd5sum:dce3507e59b4f127651af2157cf4865f\nsha256sum:b510c29db778b527171903626399b10fda7d0c27eef5fa28f08605e199f77309\n000000000000000000000000000000000000000000000000000000000000000\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n0gpLn5M1RzPSfxoIrlNs\n0eMvwg1fU5M1RzXCfeMs\n00000000000000000000\n0hJn5M3RzXCf1oKrRNs\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n00\n0h:s14;1M4g;7\n011cTzo\034vQlchw810g[0c0YM01{1[x3:1g.4?e?804?7?r?c?704>3zc#.pw(4}g>k#]2saw;9MG]1]1>1w.f0J:Y3Q;3Mfg;f04:20A]4]8>6>22U:8fw:w@:E04;2w0g:w]1,g<w]2}8:A]2g]1]1gVnhA1>5wE:m2w;1oa:3M]f}4]57Bt6g6##,1}kKlQp0g.3Mbg;f0Z:Y3Q:g0w;102]g]4>5,c.17jBk0tYEys6euhc2XshZzKds5iyREks;M.2c>1>1w.118h409xg2<2c>D>N1LJmGG3zf7aTQtTGhltbG9neFOxd6BR#=?3?E0s1c+e8>g$4I>h#4>w$94>g$4U1.i$6o>g$7s>i$2w1.g$bw>i$54>g$dI>i$bY>i$co>i$5A>i$6M>i$401.i$cQ>g$f,i$8w>i$5w1.i$1g1.g$7E1.i$641.g$5E1.i$9Y>i$3s>y$74>i$5Y>i$1Q>w$7c1.i$4o>i$ak1.g#01.g$cg1.h01g0k48:M]7Y1.i?E0ry:14]ds1.h01g0848:M]ao>i?E0_1s;2e0g;b41.h01g0w48:M]9c1.h01g0I48:M}1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1MrSNI07dQp6BK07xJomNIrSc0pD9Bomg0pClOsCZO07xCsClB07dQong0pCZMpmU0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06pzr6ZPpg1yqmVAnTpxsBZLsBZxsD9xug1Pt79zq780sThOr6lK07dQsCdMug1yqmVAnTpxsCBxoCNB06RBrmdMug1CqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr01yqmVAnS5PsSZznTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcU04tcik93nP8KcPc0hQN9gAdvcyUOdM;g02?4?g02?4?w01?8?g02?8?w02?c?w01?g?w02?4?w01?8?w02?8?w01?8?w01?4?g01?4?g01?4>1?c0Wg4?1}K96m1w?103P0g?4>behBwo.c0_w4?1>27Apo6.2?A2:Y3Q:3]foj:@3Q:3]bUj]3U:3[@:Y4]3]f0w:@4]3]e0y]44:3]f0w:244:3}wz:444:3]8wA:644:3]50z:844:3]9wz:a44:3]c0z:c44:3}wA:g44:3]f0w:i44:3]40A:k44:3]f0w:m44:3]6wA:o44:3]f0w:q44:3]b0A:s44:3[B:u44:3]f0w:w44:3]2wB:y44:3]70B:C44:3]f0w:E44:3]awB:G44:3]f0w:I44:3]d0B:K44:3]20C:M44:3]9wz:Q44:3]f0w:S44:3]70C:U44:3]f0w:W44:3]9wC:Y44:3]e0C:@44:3]f0w]48:3]2wD:248:3]7wD:448:3]f0w:848:3]70y:a48:3]48r:e48:3]f1]g48:3]d0D:k48:3]40y:m48:3]48r:q48:3]411:s48:3]f0D:w48:3]10y:y48:3]48r:C48:3]9x1:E48:3]10E:I48:3[y:K48:3]48r:O48:3]d11:Q48:3]30E:I3Y:2,M{K3Y:2>1=M3Y:2>8M{O3Y:2>9g{Q3Y:2>9M{S3Y:2>6M{U3Y:2>7w{W3Y:2>a=04]5,w{24]5>1g{44]5>1w{64]5>1M{84]5>2=a4]5>2g{c4]5>2w{e4]5>2M{g4]5>3=i4]5>3g{k4]5>3w{m4]5>9w{o4]5>3M{q4]5>4=s4]5>4g{u4]5>4w{w4]5>4M{y4]5>5=A4]5>5g{C4]5>5w{E4]5>5M{G4]5>6=I4]5>6g{K4]5>6w{M4]5>7=O4]5>7g{Q4]5>7M{S4]5>8=U4]5>8g{W4]5>8w{BPc?3c3MQ43LwfE4Md3_pe20@wjkNc0wXa206s03w0nfw.PUeVSs33w0j>5PU.c@zKpD0MU04M.1s@.3fwXCpMce01c>nfw.PWeVms33w0j>5PU.c@3KlD0MU04M.1s@.3fEXApMce01c>nfw.PUeV6s33w0j>5PU.c@zKdD0MU04M.1s@.3fwXzpMce01c>nfw.PWeUCs33w0j>5PU.c@3K9D0MU04M.1s@.3fEXxpMce01c>nfw.PUeUms33w0j>5PU.c@zK1D0MU04M.1s@.3fwXwpMce01c>nfw.PWeTSs33w0j>5PU.c@3JZD0MU04M.1s@.3fEXupMce01c>nfw.PUeTCs33w0j>5PU.c@zJRD0MU04M.1s@.3fwXtpMce01c>nfw.PWeT6s33w0j>5PU.c@3JND0MU04M.1s@.3fEXrpMce01c>nfw.PUeSSs33w0j>5PU.c@zJFD0MU04M.1s@.3fwXqpMce01c>nfw.PWeSms33w0j>5PU.c@3JBD0MU04M.1s@.3fEXopMce01c>ndg?4Mk5ZVsT?2jxUvSoUyD09sT?23JQv3Ase2xUa05Pk?1c5Vvindg?AUlBZ8CdAZsRgfShLFm5xpD5BPs?8eT1YehMUa7wE2ndM?wYsDYFTDgh46V9sT?23JYv0Assndg?4MmBEEanX_0v@q9wxksndM?8MPTXA41wE22w76_BPs?8eD1@@lOVd7ZvYlNyWm5Pk?1c5VuS3Nwk06Zu708k5Jo@jZ_sfywuGBVN7Ko_zBcn@4YnT_Ua0JUqUXpe61zane.AUx8WM584Mc041d@602rlNw0eMX0gjd@Tw0jZNs0eMvwgbf7NM6rRNs0toYZzNf@5M0rlNs0eMX0gjd@Tw2jtNs0KMvMg3d7NM4rlNs0Zo@VzMmbCZsn03I7U40j_xs0to@VzPI7M46rRNs0toYZzUmb6Rsn0bI7Y43RzNd@5M0ZzXI7M44rlNs0ZoYZzOewW?5a948UNFEZEl75Ps?2cCZ@0VLR5NEL6CXsHFxLneVtbxlLRuZod71g0GyqW4CUsT_ja46Us709Dz0Qsl06cr1O0ndM.Ot7TpsT?2jxYvsjuKTxHzJAUo6cFsR?2jxins0koj1g0g4Twm09Jn5w0X2|01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2|09dT5M2X1_10cQs7)*&0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZFsT?2jx@vh1kuoMMeTxQ1z3wsexku25M56xkkE03XAX_1_RmdrE0W3l@40xoJzxwseBPs?8eThVJ1pgeW1M3LY7@_GEC5iCc11hFq@mbNpKRGWjuFYIIj2lDeJOsyx9e7lP85jg8pQEp1pEl5jEky7jWpX_0_MhcdfhI1iVsX?2jyMLa5MM?1cczdGGz0TdwXubgcnfmElCxIW5wFsPxzM1aELexMf71M251Pd99M4P2qA3UNDS_Ja6gmq5hkW5X_1vLaGcqvlixu_MLYyGyQW5oVwb2K_M_X5zywEcCs0zE6g1oME444FX2DPGr4FJ8P0A0qVM3DjKp4VFHCAeqKFWnEmGuSRxwE0n1M?4MsDQyeQVQ3RLgM85Nk?1c59pTLY3@TGEFpOpsT?23JWubgmk3Kws0X_3vHWG9jslq@mbNpKRGWola8rszJ8J1BMs?9e7NYQZLVsl?2jxqmpiEnLY1@@aEF5Nk5BX_1_HaG9fslq@mbNpKRGWo5aOrTLY3@DoUwa0K_MLWs8golbX_0_JaG55Nk?1c5NpPLY5@ziDIaveFIiCSxJRa5X_1vK2STkEnLYd@T@run5g?AUlBANsl.j1mmiX_1_JOGa7sl1pu_MTWmGyucm1upixu_M7Xkn5g?4Ml5BK_MnVW5i_SZiDIaveFIiCTlLhsl.j1qmfX_2_D8lbRrnLY3@v2465i@_MLWIGxIG55Nk?1c5Fp3LYb@qSrlz1gkonn5a@2W9AMmM1qbw9LNeZ8rAaEiOyu_MLVSGx1D98EnLY1@w8Fk3h_n_AMvg1mc5ZM9axu_MTVU51u_MvVPaxu_M7V@Gxia51CiCoe9QgDBexG9Vom4JJ5rIIUG4g1e56w1iYe_MTVCyxlq6aEG51e_M7VHiCye02w0Cxu_MnVGj2Ln_X_3vBRq6FEkGxaaqX_0vC5a58U0a0e_MvVw51u_M7Vrixu_MLVyGx2a5X_0_BMk5X_3vBaa5X_1_BWGaiEnLYf@l1gnLY9@jOEnLY3@maEBixu_MLUUyxu_MnUUCxu_M_UFpOhNl4_s713TzAoKxMMbAX_2_zicw1g0Gx2M0lEkFhK_MLVyypSealM63NMs0Ausog9c7809z6vs45Nk?1c5xobmxu_MvUs1hgCEFEkn5g?4Ml5xe_MnUo1hqpw1Cg2uK9GUDh2uq9Vom62w0pA0DGCo4W7OEqyuk9VlEqCxu9GUDhxotmWGEnexAG69EnLYb@kUrsCxu_MfUoZYnm_0km2w0RNxKVi@ER7oYSD5abGFKraUAX@xktzTqscw6m3hMg0Auc1h8R70kBz1vkmx0yCxgB5X_1vySDBJWv486pDAUtDKHvSk@ejxLpYwxv6qrqnINvT0Ht63M2jxwoAvpsc2nRlIUDp0FS7Co@@Cu_MH_IGyD7xOCoatXt73M2jxMsAIUrS0KFBaDqP1_s2HFq@BHamPFpz3MgclLqj2w415Mo?1c6xDOj1g04lEnLYb@7REkyxg56X_0vw6c12g8n1w?4Mq6uFc5?jexyq5X_2vxqq5iEk1hK_MX_RmpfpwJCgmqv9VIDFixl9Wdm62w0540kC42aq52knLYc_@3tQc2g55bKjLY0_OguTaqgFTJQsf09e71OiPyvA2qCqGtG9BvlmP1_s2IFC@CrqpX_2fXOGa8t7LY0_N247LYa_ZGEkn1g?4Ml5se_MP@NmpbpA5CDOuglaZC1ixl9Wdm62w1s5.j1klGX_3fWwlaVruSxhs5.j1qlLX_2L_LpwlCiSp1pFYDBixl9Wdm62w0eV1g63hMA0UVA7W059Ar_LY4_G247LYe_SGEkn1g?4Mm5pR6_tn6axibxOLw6VqrYX_0L@gcV1g0Gx9s5?2jxolGiEnLYe_YosSn1g?AUm5qAG5X_3L@WG4fsmn1g?AUlBr4G5X_3f@GG4oM853Fs5?2jxilKiEnLY8_VGEhtXo973ktzg_sAoUPD6wB75Mk?1c5Fl1zCKs026i3hMk0yusn1g?4MlBjVsn?23JSv8c01c?b2fKjLYd@goM055El4Bq22hMR7oQHT4CebVMM9hNs5.j1klcoVvD?xAwQs506e71Nan5M?wXtDN3?wkk@Ve_M_UNVYq9C4MA10kG55Mo?1c6FCCj1g03X_3LVQG5X_2fWj6w0Amyxu_MDZiGx2a5X_1LRWFw2Ch6uiq5VDh9ooa0OEkn1g?4MkBpe_MHZe5hf6_wAsdhSd4ZNxzy@si2ksn1g?4Mn5gSeqVM08p8d71g29VNs5.j1ol20koI?b4X_2vx27NEAoj2g41iEkn1w?4Mr6opc5?bLY8_viEnLY2_xmrs8p0cV1063hMk?Qs90b7L5Mk?1c5hjVz2wsIBNs?8eT1XsM0855PLg@Ve_Mr_Zz6wkSECqj2g41jEkn1w?4Mo6n9c5?fLY4_qPElaxg56X_2LQGpVdrsn1g?4MkBke_MHYu5h36_UMU7X7ST5Mk?1c5hjzVJi9DAAoj2g41iEkn1w?4Mq6m9c5?nLYc_liEnLY6_nXrk8p0cV1063hMk?Qs906ef1Nrz30vABNs?8eTFWQM04M0PLg2MzXAX_3LZmcu1iMypV96AMA10kW55Mo?1c6pBej1g05X_2LQ9ST26g3egg1wQs5?d72g2xO@ce1@M1hyM0PLg2Ne_MX_5z7wkEEAqj2g41jEkn1w?4Mo6jVc5?bLYc_c9rsn1g?4MlBiu_MXXG5h86Z5Mk?1c5pknLYe@Vxki1Jhs5.j1ukGnvsn9M.Ot7jpsD?2jxYtcjuKTxHzJAUo6cFsB?2jxilc0koj1g0g4Twm09Jn5w0X2|01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2|09dT5M2X1_10cQs7)*&0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZFsD?2jx@t11kuoMMeTxQ3z5Mvm5_v__Nc7FR4zJet0KrIn1g?4Mn57ech1@wn9M.Os7fVsD?2jxUs@uvuTxHzJAUo6cFsB?2jxukZ0koj1g0g4Twm09Jn5w0X2|01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2|09dT5M2X1_10cQs7)*&0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZz6_5Os.cDxPen9M?AUs7cNDXJUqUXpe61zan9g?AUlBcw564Mk041dU5w2rlNo0eMw0gjdUS?jZNs0eMvwgbf71M6rRNs0toYZzNfU5M0rlNs0eMw0gjdUS02jtNs0KMvMg3d71M4rlNs0Zo@VzMmbCZsn03I7U40j@1s0to@VzPI7046rRNs0toYZzUmb6Rsn0bI7Y43RzNdU5M0ZzXI7044rlNs0ZoYZzVz11iqh1ucrFLqlJqpVxkjNLA4hxkkn9g.PlBZMrAX_1fHol55Ok.cRVvjLY6@Ixkkn9g.Pk5Y@_MzWK5hhsB.3dqnOX_2LGG9w0kl10oa]bg:1Oow;7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis}7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA,t6BJpn0W879Bomgwpn9OrT8W82lP>qmVSomNFp21KtmRBsCBz86BKp6lU86pLsy1FrChBu6lA865OsC5Vey0BsM<9ncW86VLt21xry1xsD9xug}pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp<Br6NA2w.6tBt4dglnhFrmk;1QqmRBs5ZCrDoNog<t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw<t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE:t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs<2kMcjpIr7w09j0Uu<Bc3xUbikMcjpIr7w,lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng;4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U;`0Et6BJpn1vq65Pq20D9O0D9OAI[w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU}5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt<13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi!>19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI,20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?`0Et6BJpn1voT9zcP8w9Osw9OsFb}w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt<13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi!;4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI>lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw<imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw;7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng<t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng>1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt,6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ09icyxeisYII16McXf,o.2wW___l>8XI__ZE>Fe____g>OYv__o04?eHO___o0g?5Lz__O02:4}3uB8?nM10hIc0w0g>6>4jH___K]8w>I>7KP__No3>gwXM0li818A6Awy10FcaB0Ol3Fsi0O81Bx2o59AmCxw2Cdp2S4bpgJF62I52O4b9gJ92QQbkgJl4RQ8e048b0A2m49wkChqq653mSdDqp9ogC1ip5FEoq0HmgJx2SkbqgwJgRJzpSw8WBx2o59AmCxx2RAbogJB2Sw?q>bw.2EXL__zw4.163B12Awxey0i91Fcawg82e0H8gI52Okbihdd23w122Qal3AGk30fw?H1gIx2R4blgIB2QAbjgwU0gwJ22Ix2R4b1hJd2QArlgIB23w122Rwe0c78OtbjRdk0t>2g1?3aX___K04.123K02hE42B0Ney0i91F88AME2x9ke0Aj8gI52OkbigJd2RkjkgwU0gwXw0E42y0i91F88AMGk309wO4b9gJ92QQgaMkjkgwU0gwJgy0i91F88AMFg2I52O4b9gJ92QQjkgwU0gwI0h>9M1.aYv__b0k.123F01iEw4Awy10EA60M812I52O4bihcB23w122MakAMFIQM9I2Fcap0JqAMFAQMd@0FcagJc07>eg1?3KZv__h,123x1cwg82cc543w~~~~~~~~~~~~~~~~~~#-g:3F0g;1A]Y3Q:r}w]6w:3Ufg;1M]2]3R_LZL,2w2:1g:101w:o]q08:a]1g2:2M]o}c]Y3Y:2]d02:5}7]1s]E0U:7]ew8:2]282]A]6]3@__ZL,aw8:____rM,1]f3__SY,l0w;3V__ZL,3k~##08fw~#.3__________M}s14;1M4g;7/////////0h~~~~~~##,1~1~1~1#=4t3gPEwa4teliAwcjgKcyUN838MczgMej4O82xipmgwi65Q834Qbz8KciQPag11pg.79FsSdS?5r>1105sDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc?8>4<1?17gig1cS4N070j:s1c:8>4<1?17gig1cS4N070j]xg:8>4<1?17gig1cS4N0b8w:Iy]8>4<1?17gig1cS4N0b8w:Iy##c?g.w%c?w0E0w%c?M1E0w%c010101w%c01g1k2$c01w2E2$c01M3E2$c0202w3w%c02g1M4g%c02w1M4M%c02M2U8$c0301oa$c03g2oa$c03w3Mfg%c03M3Ufg%c04.fw%c04g08fw%c04w2EfM%c04M3MfM%c0503Mg$c05g3wgw%c05w#?c05M#?c0603Uhw-g>g0YvY^3g>802w1M4M+8w<2w1M4M+3M>802w2i4M+tM>802w2@4M+zg>405g3wgw:4]Cg>403M3Ufg+M,802w3S4M+P,403w3Mfg%g0YvY^WM>802w3U4M;eU]8w<2w3U4M+@w>802w3C5:1o3:904.802w2a6g;bw1:d04.802w126M;2M5:gw4.405g3Egw:g]nw4.405g3Mgw]4:s04.405g3Mhw:w]wg4.40503Mg:5}A04.405010gg;5w]E04.40502ogg;3w]I04.40503ggg;5}LM4.g0YvY^Og4.403g2oaw%g0YvY^RM4.40YvZM4g+Yg4.404.fw+_w4.40YvY8fw+1M8,301oa-6w8.40503wgw+9w8.40Yv@EfM+f08?1#iw8?14$mM8?2#tM8?1#xg8?140501ggw;3}C08?18$Hg8?1802w1K8:4g]Mg8?1#NM8?18$UM8?1#@M8?18$3gc?1405?wgw;3}7Mc?1#9Mc?18$egc?18$iMc?18$ngc?1802w3Y5M;8U1:rMc?18$w0c?18$A0c?18$Ggc?1#JMc?18$Qwc?18$Vwc?18$@wc?1#3wg?18$7wg?1#W0c?18$c0g?1405020gw;3}gMg?18$lgg?28$rMg?18$w0g?18$Awg?2#H0g?18$Lwg?18$Pwg?1#Swg?140502Mgw;3}X0g?1#06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP02hUsDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nR1ijQd5h5lihlZcikVbgkt5nRh1gAN5nM1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB07dQp6BKg4tcik93nP8Kczs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80t6BJpn1voT9zcP9vsThOtmdQ06tBt79RsS5Dpk17j4B2gRYObz8T07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8T06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07dQsCdEsA17j4B2gRYObz8T07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0rmlJoT1Vg4tcik93nP8Kczs0sThOr6lKg4tcik93nP8Kczs0sThOoT1Vg4tcik93nP8Kczs0oCBKp5ZSon9vrT9von9OonA0pD9Bomh0hQN9gAdvcyUOdM1Pt65Qg4tcik93nP8KcPc0oSNLoSJvpSlQt6BJpk17j4B2gRYObz8T069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0sThOpn9OrT90hQN9gAdvcyUOdM1PrD1OqmVQpA17j4B2gRYObz8T069FrChvon9OonBvtC5Oqm5yr6k0s7lQsQ17j4B2gRYObz8T06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CoSNLsSl0hQN9gAdvcyUOdM1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8T06pLs6lKg4tcik93nP8Kczs0pClOsCZOg4tcik93nP8Kczs0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79zrn10hQN9gAdvcyUOdM1MrSNIg4tcik93nP8Kczs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?Kt6lUt?KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bD9FsSdSbC5Qt79FoDlQpnc0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~#1I>7,w[w]2:9^g(K>ZL__rM8]a08:E0w;3M}M]8(e,I>2]6w2:q08;3o0M:g>2>2}o]4,3,w:101w;406:508-4-18>____rM8]l0w;1k2:58}M]2}8]lg.fX__SY2]aw8:G0w;1[g>1>2(6g>4,w:3E2:ew8:K0k:3}w]6]1K>1>48]E0U;2w3w;d02]M.1c>8]1w]sM>4>6]70h:s14}w+4}g]7w>1>1w:1M4M;70j:gwQ-8-1@,g>8]K2:2U8:a07-8(xw>4>2]5wE:m2w:Y(1(9g>1,w:2oa:9wE:108-w-2u>3w>c]Y3Q;3Mbg:w(8}w]Gw>Y>3]fwZ:@2Q:8(2}8]bo>1,M}fw]K:2^w-33>1w>c]23U:8bw;a01:1}8]1}P,4>3]aw_:G2Y;18(2}8]d4>1,M:3MfM;f0L}4-w]2]3q,g>c]Y4:3Mc:f01-8(U,w>3]e12:U38:o1-2(ek>1>c(e0O:bw(4}g:3K,M?s^0ecM;6o(1^04.s{fx6:t3c;2g(1^4>2#wQ:W0w:q>e,w]6}9,M%3Mf}5-1(4g>c$Y44:m0g-g+'
;;

's390x')
b64=$'54048 27024\nmd5sum:c85393a8f9c4a8f5acf8b8a627420fbc\nsha256sum:573eded3c343e5b0b7df24fd3932cfefe26d4e13eb564a8a57cb366caacbf1b7\n0@jhiMjkhZ8dxvSB2HlHeSUwO4NF45Xlo47AECtNsxg1n4Zz1CPp@wYZoUQ83vkjr9xmp6KEMfRy@nGapsDI6JHkvmTtVeLQRblhwZe5NNST46hGI23OYXBNi8i@gtU9JAMHvH5YLuuUbgugLNSh3JK8cDDsKajwRuAuBZbpy\n0O825HBl1ioLOS6PzbNCwNEBrZawkCzydJZwXYeEpZZlcmWeXQpFLDDo3iLqHMErj3o3iLp117FwQrJDYqqYlSs_Jgrtib8SiZrmE@yxQpd@edz2N4_vYBbVKtZLzHXL@huTLAdwI8Xl_JgrtEDja@\n0gJswrUmPvqV9BJLI7vx6bt7tUrjQJjNRe92qdSP@1_qwSWiQEWrVtm@3nPsXXsbSZYxBrZawKaUuxhXIiKK3bore9M91GDH3zo_swtDxgk\n0A6GLwIg4cAc88p412RPcMctVqEaj5_t3nP9gSDFqzhKSvOJpUx6SC2UQ4HvFk4ZS9nnFd74rtfmZfJdIC5oeHlhPGeY\n07jkKP3yoJQtTNnqbkCcQTPP@ZhcpmmMSsoiJ@BgyXWUWLOVy7NI1FnJ6M6BuU88Zc7R3YhnqSJhZ1NIoma5pj3oYC8\n0aUDvguuIudz2Nakp3K43mRGfDFGmGzGRksVDt9THMjr9xlPT1q3Xry389G_IXo3JK8ctb7iCBCPfhsKJ\n0lNerpcaMX6fO9DlGEVM2rpcaMJv_FXngPP4ISpWbmZWK7smWeXWOLgIEaXhqABOPqwjc37ulKMJ7\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0hQN9gAdvcyUO\n0000000000\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n0g.41_4d4ecg4\034vQlchw820g].301o>1)g;69g,01?3w01M1?1Q07,4>5&]0hE;16w;1<g>o<1dO;5T8;nsw;52:Aw;4,02>1w<4Tw;nu;1tU:7]s]2,g>4:sw;1O:78:2g:9]4p7jBk,g<14n;4hs;h5M:f]Y]hAtelh>1w&&>46hQVl8>4;jsw<1tO;5T8:zw;2e]1>1>1g>3hQVl01ioAAtMDPOsuLcyYWUu3NoSavpq]c>x,g>q?8k9g4h84]x>9lHJ6YjNz8eGtQvvOyVt5qCseBuytmAQEg&[M?2g<14o[3z4&168w&g8&2w4&5r4w*1l4w*3e4w*514w*1V4w*204&4F4&1z4w*1r4&1P4w*5Q4w*2n4w&18&1E4w*3l4&374w*3N4w*1J4g*264w*5p4w*414&5y4&2K4w*5f4w&I8&6v4&4l4&6@4g?5w<69]3>5V4w?2M<33g:5w.7h4g?5w<68g:3>2R4w?2M<20M;1wg.6H4g?5w<69M:3>6d4g?5w<6aw:3?nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0pCZMpmU0u6Rxr6NLoM1MrSNI07dQong0sThAqmU0pD9Bomg0pClOsCZO07xCsClB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO06RBrmdMug1yqmVAnTpxsCBxoCNB06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvon9OonBvtC5Oqm5yr6k0oCBKp5ZxsTdLoRZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01QqmRBs5ZEondEnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPe017j4B2gRYObzcP04tcik93nP8Kcjs0hQN9gAdvcyUQ04tcik93nP8Kcw;4?w01?4?M02?801?2?4?g02?4?w02?8?g05?4?w06?8?w03?4?g02?8?g01?4?g01?4?g01?4?g05.1UM.1,01FqhK,o.7J>40qmArc>5.1@>106BF6n>1>wc>g3mBF5,c.8e>40RFqh8>2.26].1tO]c;5t;1tQ]c;5o;1tS]c;ntw<1wU]c;fpo<1wW]c;fR8<1wY]c;fpo<1w@]c;fTo<1x]0c;gbM<1x2]c;fXU<1x4]c;gjg<1x6]c;g0g<1x8]c;g4o<1xc]c;fpo<1xe]c;g7w<1xg]c;fpo<1xi]c;g9M<1xk]c;fpo<1xm]c;ge8<1xo]c;gj;1xq]c;fpo<1xs]c;glw<1xu]c;gpE<1xy]c;fpo<1xA]c;gt8<1xC]c;fpo<1xE]c;gvo<1xG]c;gA8<1xI]c;gjg<1xM]c;fpo<1xO]c;gF;1xQ]c;fpo<1xS]c;gHw<1xU]c;gM;1xW]c;fpo<1xY]c;gQ8<1x@]c;gUU<1y]0c;fpo<1y4]c;fKU<1y6]c;aj;1ya]c;oe;1yc]c;g@8<1yg]c;fI8<1yi]c;aj;1ym]c;oj;1yo]c;g_U<1ys]c;fFo<1yu]c;aj;1yy]c;oow<1yA]c;h1M<1yE]c;fEE<1yG]c;aj;1yK]c;os;1yM]c;h3E<1vK,c>a+1vM,g>a+1vO>24>a+1vQ>2c>a+1vS>18>a+1vU>1s>a+1vW>2k>a+1vY>1U>a+1v@>2o>a+1w,08>b+1w2,c>b+1w4,k>b+1w6,o>b+1w8,s>b+1wa,w>b+1wc,A>b+1we,E>b+1wg,I>b+1wi,M>b+1wk,Q>b+1wm,U>b+1wo,Y>b+1wq>1,b+1ws>14>b+1wu>2g>b+1ww>1c>b+1wy>1g>b+1wA>1k>b+1wC>1o>b+1wE>1w>b+1wG>1A>b+1wI>1E>b+1wK>1I>b+1wM>1M>b+1wO>1Q>b+1wQ>1Y>b+1wS>2,b]3Hr_0M02iV1?vF_L_oecgY.9c3>DeI0g.Dk@cg4.1bA2016Dx?33u7zgf4g?jHr_3g?g7Z.UN3Me?AM1.2sxQwvMc108UN0g4?41_47?s01M304.9Qjz41>g7YgQgUN0g3?kMfj/_B,c0g.Deecg4.10vN3h3z410c01j0Zf/Zk>oM1.2sIUN|0M05c3Q/_Ng.3304.9O3z41>g7YgQgUN0g3?kMfj/@R>ic0g.D5ecg4.10vN3h3z410c01j0Zf/Wk.1wM1.2s8UN|0M05c3Q/_Bg.7z04.9LPz41>g7YgQgUN0g3?kMfj/@5>Ac0g.CYecg4.10vN3h3z410c01j0Zf/Tk.2EM1.2rAUN|0M05c3Q/_pg.c304.9Jzz41>g7YgQgUN0g3?kMfj/Zl>Sc0g.CPecg4.10vN3h3z410c01j0Zf/Qk.3MM1.2r0UN|0M05c3Q/_dg.gz04.9Hjz41>g7YgQgUN0g3?kMfj/YB.18c0g.CGecg4.10vN3h3z410c01j0Zf/Nk.4UM1.2qsUN|0M05c3Q/_1g.l304.9F3z41>g7YgQgUN0g3?kMfj/XR.1qc0g.Cxecg4.10vN3h3z410c01j0Zf/Kk.60M1.2pUUN|0M05c3Q/@Rg.pz04.9CPz41>g7YgQgUN0g3?kMfj/X5.1Ic0g.Coecg4.10vN3h3z410c01j0Zf/Hk.78M1.2pkUN|0M05c3Q/@Fg.u304.9Azz41>g7YgQgUN0g3?kMfj/Wl.1@c0g.Cfecg4.10vN3h3z410c01j0Zf/Ek.8gM1.2oMUN|0M05c3Q/@tg.yz04.9yjz41>g7YgQgUN0g3?kMfj/VB.2gc0g.C6ecg4.10vN3h3z410c01j0Zf/Bk.9oM1.2ocUN|0M05c3Q/@hg.D304.9w3z41>g7YgQgUN0g3?kMfj/UR.2y]0M1.2rEM2.2rBX1802E1AN1w?2lnX1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.2rgM2.2rdKgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.9kHI6?707P08.9Hg7Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.9GnzYfZw_T6l0b?FTg05s0g.B3@cg4>Gu4?z08.91v0Vv/vj0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>S@M1.2pTUR0g.iFUg0jKN80380vc0D/__Q43g02V5w1iFQ4?qtQ02LHh?1?Pz03.92DeM025MnI83qZ0BBo0x08X0kwfPxnUR0/@g5R3I9jqZ0BBo8x08X20EfPxnKho0kGt7_@j09/__@V5w0yIYQ0Qwv@UO0M?2gFPI?hsBX28SLg9pm28g2eMB83YUlXAm05bIcf_7o6iDZf_BVM3jY306VQ3jU306VS3jQ306VN3jM306VP3jI306VR3jE306VT3jA306VM3jw3w6VO3js3w6VQ3jo3w6VS3jk3w6VN3jg3w6VP3jc3w6VR3j83w6VT3j43w6VU3j03w6VW3iY3w6VY3iU3w6V@3iQ3w6VV3iM3w6VX3iI3w6VZ3iE3w6V_3iA3w6VM0g230eVQ0g630eVM3iw306VQ3is306VS0ga30eVN0ge30eVS3io306VN3ik306VP0gi30eVR0gm30eVP3ig306VR3ic306VT0gq30eVM0gu3weVT3i8306VM3i43w6VO0gy3weVQ0gC3weVO3i03w6VQ3hY3w6VS0gG3weVN0gK3weVS3hU3w6VN3hQ3w6VP0gO3weVR0gS3weVP3hM3w6VR3hI3w6VT0gW3weVU0g@3weVT3hE3w6VU3hA3w6VW0h23weVY0h63weVW3hw3w6VY3hs3w6V@0ha3weVV0he3weVX0hi3weVZ0hm3weV_0hq3weVM0hu30eVQ0hy30eVS0hC30eVN0hG30eVP0hK30eVR0hO30eVT0hS30eVM0hW3weVO0h@3weVQ0i23weVS0i63weVN0ia3weVP0ie3weVR0ii3weVT0im3weVU0iq3weVW0iu3weVY0iy3weV@3ho3w6VV3hk3w6VX3hg3w6VZ3hc3w6V_3h83w6VM3h4306VQ3h0306VS3gY306VN3gU306VP3gQ306VR3gM306VT3gI306VM3gE3w6VO3gA3w6VQ3gw3w6VS3gs3w6VN3go3w6VP3gk3w6VR3gg3w6VT3gc3w6VU3g83w6VW3g43w6VY3g03w6V@0iC3weVV0iG3weVX0iK3weVZ0iO3weV_0iS3weVM0iW30eVQ0i@30eVS0j230eVN0j630eVP0ja30eVR0je30eVT0ji30eVM0jm3weVO0jq3weVQ0ju3weVS0jy3weVN0jC3weVP0jG3weVR0jK3weVT0jO3weVU0jS3weVW0jW3weVY0j@3weVkMg.1F_j@cgs71MvHr_0M02j0Q.3tSV103LU_3@KfZNF@L_Y620U01wEe08Kgg0IHf108ePMg2ABiQw0au401SV1?HM3.178Men/McKgg0wKME0Mw0vakK?70Vv/7aV102yX2w2Vg1YFTw?avQ0sOl0201FTj_UY0g.AoKcw4.4GtQ0onD0dfMc0rD8dfwc0rDgdfgc0rDodf0c0rD4deMc0rDcdewc0rDkdegc0rDsde0c0rD0ddMe0rD8ddwe0rDgddge0rDodd0e0rD4dcMe0rDcdcwe0rDkdcge0rDsdc0e0rDwdbMe0rDEdbwe0rDMdbge0rDUdb0e0rDAdaMe0rDIdawe0rDQdage0rDYda0e0rD0108c0XD810oc0XD0d9Mc0rD8d9wc0rDg10Ec0XDo10Uc0XDgd9gc0rDod90c0rD4118c0XDc11oc0XD4d8Mc0rDcd8wc0rDk11Ec0XDs11Uc0XDkd8gc0rDsd80c0rD0128e0XD812oe0XD0d7Me0rD8d7we0rDg12Ee0XDo12Ue0XDgd7ge0rDod70e0rD4138e0XDc13oe0XD4d6Me0rDcd6we0rDk13Ee0XDs13Ue0XDkd6ge0rDsd60e0rDw148e0XDE14oe0XDM14Ee0XDU14Ue0XDA158e0XDI15oe0XDQ15Ee0XDY15Ue0XD0168c0XD816oc0XDg16Ec0XDo16Uc0XD4178c0XDc17oc0XDk17Ec0XDs17Uc0XD0188e0XD818oe0XDg18Ee0XDo18Ue0XD4198e0XDc19oe0XDk19Ee0XDs19Ue0XDwd5Me0rDEd5we0rDMd5ge0rDUd50e0rDAd4Me0rDId4we0rDQd4ge0rDYd40e0rD0d3Mc0rD8d3wc0rDgd3gc0rDod30c0rD4d2Mc0rDcd2wc0rDkd2gc0rDsd20c0rD0d1Me0rD8d1we0rDgd1ge0rDod10e0rD4d0Me0rDcd0we0rDkd0ge0rDsd?e0rDw1a8e0XDE1aoe0XDM1aEe0XDU1aUe0XDA1b8e0XDI1boe0XDQ1bEe0XDY1bUe0XD01c8c0XD81coc0XDg1cEc0XDo1cUc0XD41d8c0XDc1doc0XDk1dEc0XDs1dUc0XD01e8e0XD81eoe0XDg1eEe0XDo1eUe0XD41f8e0XDc1foe0XDk1fEe0XDs1fUe0XBj1>708.9dLz42>aDx03KFjU?qt9?3zcf2w02h18f2wFPA?s3B/WJeMI?s0vF41YauDt?egj3MGc0w.g0c3B/X1hxOX2w14g1@N4w?24OFiU?ue0g.1c3B/WFHA40abIa04u07ODu?1M6XbYFPAFVw?c1Jx28z9rA405yV1?GFkU?qsV?70Vv__@FOV102OX2w0uw1YMe.2i8UN3w.2FUg0EXAm02CV101bKgg0ewTxKgg0mxyiggKw0eMHfHY0lqu402DIa?q0nPIa?d0DPzca.911ka01Ko80o@dwR.3ed0k.Aatr?6Vww1AUS3k.cU@1g?2gFRI?rC206Xzodg.PI1v@Pw6jHKM02?Pz45.93z0501092Vww0mUN3k.cUO1g0w2gUS1g0M2gFRI01bC2?7z0dg.OVww0wUO3k.cKo80oKdwR.3auT_ZWV101oKgg0aGle?6Deg01Men/EBKgg0IKMC_UM0vbA402z0Vv__@sIoIKMC03g0vHA402H0Vv__@tbIu01o07WPPg1oX5w01g1Yk91g0bfd07HIu?607Pzo7.2iV5?Hq83Ne6ywYk3Hr_5U?g7_I?/XpYgb.zVavQ_MX04f__@R_46M?8ZODZfZpKgg0aI3B/VEuNU02?vI3B/Wm@cw8.5auU?70Vv__@veV1?OM2>YVMen/AHKhg0aSy0YjxEEf50WS_Nu?41_WV1?EMen/FYF_j_THA402z0Vv__@DmDZf@CM3>XFM2>XBMen/AGKgg0wKME01M0vakK?70Vv__@p2V102yX2r@XM1YKgg0ac3B/WlI0w.eYWuU?70Vv__@eWDZf_3M2>X4FXw?s3B/UVavQ_XD0Vv__@v_z82.1j0Vv__@pCV1?XKgg0gGuU?708.3I30Vv__@cSDZf@y1Ms71Ms71MvIa04A07PHr_0M02jzYfZg_T6V101yKgg0tbA40beDeg1rMen/CPKgg0EKME0b80vasp?3IdzO_05mDx03WFOA03XA902fD0C.3uD6M0gVO?c021FUg03es1o0101Gsr013D8?M086Dtf_UVM801M0xgl0w0rC4042V8012Ku8w5qsA0dnzwk_M_T7zC6/T6lnp?FTg0uXDFo9HIag010dD0Vv__@g2V1?SKgg0wHA40d91qo?Kgg0is3B/UAV80o011wa01FNA?eMUfbY0lqu40beDWg0fKgA0U@teE040dWsr013Dp40M086Dx?cVQ6w0k06FNI04etAg3?wqtQ__zD9w0702510e01Kog0gHAw04WVUy0gFOg0zKexj_3_srA402H0Vv__@bLz8f2w02iV102iKgg0eed0H/sqtF?30Vv__@4PzmF/T6i05?X8QYLM1lFUg0Casp?@V2g0oVN7g.TFSI04esN43?wqu408XD5J?g0qDZf_SFVA?eOHfbY0lqu404@Dig0fKgA0iKvkI?8dWur013D_t0M3E6Dx?cVZCM04w6FVI04evZQ30ewqtQ__zDnM0712518401Kog0xrAw08iVUy2iFOg0aKcFz_7_ss3B/Unus0I01w1@s0I01w9@sw02?wusi?s08uMg026wt@s18.fXA404uV1?OKgg09KJLYe?1c3Q/UDWsF?@DZfYkFQA03WvQ_X@DWg0fF_j_mWsF.7_KPrfbY0ls3n>3@sd8.fWvr?6DZ?7VQQw.eFZI04etdI.1KtAg3?wqtQ__nDJw070251fi?VQIM._F_j_MWsp?@DZfZSVPc01M0xgi0g0rC40eeV803xKu8woGsA__7z9K_N_T70Vv__Z_nDkd?o0vD0d?o2uV102iVTlg8021VWs01M0xXa?sq1TVREw._UP3ME?4FNA?ePzfbY0lqu405_zgf2w?iDag0fKgA0bKt2g?8dWsr013Dp40M3E6Dx?aUW3ME?4VQ6w04w6F_j_Y@s6?s48k5w806Vx01gKi?kHDy81qD9?VUO5vYvZNMen/uHUU3ME?4Kgg0EKsgw01E1@sMw01w9@sN420ewusj?s48uMj0hKwt@sh8?8fWtF?3IyPO_05mDx04cFNA03XA901zDwr?23uDqM0gVWy0c0W1FUg0b@u6I0181GvQ__qDag0fF_j_IKNtfbY0ls1n>3@tl8.fWtr?6DZ?7VMmg?weFRI04es5Q?81Ksw030ewqtQ__nDow071251xp?VMq.w_F_j_s@sW?s48k50406Vx03zKi?UrDy86iD9034UOrLYvZNMen/s_VY2M06w7Kgg0kHA408bDXc0w3E7D8b?o2vD3w07127I0w28E7vDM5?23@V1?JMen/rQUO3ME?4Men/rKKgg0as3B/SquME06o0v5zg82yDQg10FTg0kGvh?iDx012VkzMG.Men/umKgg0oKlco>44MYayV1?GFQA02I3B/TuecMYaw01eMW01K0p9k0c02Dt?mme1w0ePE018yvHA403aV101nKgg0ibA402D0Vv__ZUXHr_3w?g7_HA403H08.35L0Vv__ZAaDag?WS_MU?41_X08.36mV1?VMen/oQFOA?avQ_@iV101DKgg0mbA404GV1?VMen/uRF_j_RXA402D0Vv__ZEXI9L@o07ODag?F_j_O@NHfbY0ls1D>3@v6k?8fWtH?7DBH?20rDKp0M3E6Dx?9VVq.weFSI04avQ__fDKM0712515E?VVIg?w_F_j_nasp?@DZfY2U@3ME?4X4UYLM1lM4s>fVNgw?w_FQI?ucwYa?1etk8?81KtRk30ewqu4?DDla?20WDiM0gF_j_Yes7?s48k5kE03Dk5?23@DZfX31Ms71Ms71Ms71Ms7WT_Me?AU_3@kfZNX281ewd@X2M0Ng5@UX0M2?4Bg2M0eOU>hKME0kg3vGtV?11cf3wFOA?I3B/RT@MC0bM0vKd0Yew01c0u8cirFs0tURfTPXC6?h1Ef4wWQg0fM0aKgg0eHA4023z0f3w?jHk?5?SV2g1gWNk01w0dKgA05s1u8cirFuIh?c03s1tURfTPXA8012VV51kWN401w0dKgA09uIy?s02HA902h1wi?FOD__Y3B/SPhyyX2o0N01@UQ3N8?4UO3Nc?4WNg01g0dW@801g0dKgA05bA90ebH0g06?THfw06?SV2g01KgA0fKJg?c03rA805jHgM03?THlg06?SV2012UR3Na?8WOg01w0dKgw0kKdgYjw02bA805zIK02M07P0g.2UaDeg10gi3MEc3B/Si44MYa2V1?HFQA?c3B/RT@NU01w0vc1>brasV042V101ogi3MUc3B/Sc44MYe2V1?DFQA?c3B/RNXAk02HHv_7E?g7_GuV?2Dug?gj3MUasF?b0Vv__ZirIafZa07V1Ef4wFOA?bA403H0Vv__ZAHI9w1Z07Xzkf4w?jzcf4M?jH9g05?THgM05?SV2g0BKgA0g@Ii?o03uK4?o03rA901aV2g24WM4?M0dKgw01uJo?c03uLw?o03rA805fzUf4E?zHdg06?SV203zU@3Ne?8Kgg0eHA408WDav__Men/oc6abIafZ207X0Vv__Zrnz82.1iDG?1Men/ldKgg0cI0w.aSY3B/QxrAk02HHv_7E?g7_I0w.aIquE?70Vv__Z7uDZf_OKgg0ds0w.aRI3B/QvrAk02HHv_7E?g7_KdMc1?19k0s03Iu>4qDZfWVMen/lWUO0w.kFWw?s3B/R4HA403b08.2Fb0Vv__Z4GDZf_51MvHr_0M02j0Q.21DzYfY0_T51cf2wMen/m9UP0w.4Kgg0EI0g.aCGs8?2V1?zIBQ04Gsk__WDx02LM4>GjKgg0kX9t04mD5f_@Iy80I8CM?aaI?uXbw0qg1@M6>GnKgg0wX9t06yD5f_@Iy80I8CM?aaI?uXbw0Gw1@Mb>GrKgg0UX9t0bWD5f_@Iy80I8CM?aaI?uXbo0zw1@m03MEeM20r83vKM80js3vKM60h02vKcME0w01c0w.9K9k0c02VUD0zM5XbYFPAM5S48ycBUR3MG?AVkPMF.gk3MG44MYaj0Vv__ZXTI9w1207Xzof2E?jzkf2A01p18f2MM4>G1FPA0kc3B/QVA4wYb30Vv__Z66DZ010m33MEeMO0cE3vKMU08g3vKMS0bY2vKcgE0w01c0w.9tFk0402VUD0xM5XbYFPAM5S48ycBUR3MG?Agk3MGasV?30Vv__ZTXIa03107WDK?1Kgg0aI3B/PUbAk02LHr_4M?g7_HA403Hz8f2w01j0Vv/rooIHA402H0Vv__YYOV5?HWS_Nc?41_X08.2xiDK?1Men/duF_j_SlwwYa3I8w4D0TXIa03B0TXI9w2?DXzUa08?j08.2iel0e?Ku9MbKlcYaw?at9?11cf2EMen/sNX2r_Jw1@UR3MG?mgi3MIc1>9ZqsV0230Vv__Z5R18f2MMen/foF_j_J@dwE1?1ecwE0w014d0o02l02?FTg0jqt10f@Dx03LM2>zHMeXbYFPAMeS48ycBU@3MG?Agk3MGasV?30Vv__ZLvI9LZY07Xzkf2E?h18f2MM4>CTFPA0cc3B/Q8Q4MYb2V1?CFQA?c3B/PKGvQ_TD08.2bSDZfZbM2>BlFXw?s3B/OSWvQ_Rr08.2aWDZfXWM2>yFF_j_yGt10f@DxfYPF_j_KedgYaw0144wYb30g.2o2Deg0MMen/fIgi3MIc3B/PpWvQ_Qrz4a0g?jz8a08?iV1021gQ0g09k0802Dx08rFQ40_Wu4_ID0rILODej0rogy8Onzof2E02jBjf2A?11gf2Egj3MFc3B/SxeMC_MA0vKdwYaw01edgYag05A4wYb30g.2kyDeg1gMen/eJgj3MIbA402yDig?Men/d4F_j_0@e0E1?1ecwE0w014c0w02l02?FUg1UWs10f@DxfYtVkPMG.FQA?44MYaz0Vv__ZAPI9LXh07Xzkf2E01p18f2MM4>AgFPA08c3B/Pu44MYb2V1?EFQA?c3B/P3WvQ_IX08.2dKDK?1Men/8RF_j@Ic0w.8KWuU?70Vv__YyKDZfWCM8.1GSUO2>iFTg1xus0Q_0M1KswQ@0M1Kt0QZ0M1KtwQY0M1KsgQX0M1KsMQW0M1KtgQV0M1KtMQU0M1Ks0QT0U1KswQS0U1Kt0QR0U1KtwQQ0U1KsgQP0U1KsMQO0U1KtgQN0U1KtMQM0U1Ku0QL0U1KuwQK0U1Kv0QJ0U1KvwQI0U1KugQH0U1KuMQG0U1KvgQF0U1KvMQE0U1Ks0w0wM3Ksww1wM3Ks0QD0M1KswQC0M1Kt0w2wM3Ktww3wM3Kt0QB0M1KtwQA0M1Ksgw4wM3KsMw5wM3KsgQz0M1KsMQy0M1Ktgw6wM3KtMw7wM3KtgQx0M1KtMQw0M1Ks0w8wU3Ksww9wU3Ks0Qv0U1KswQu0U1Kt0wawU3KtwwbwU3Kt0Qt0U1KtwQs0U1KsgwcwU3KsMwdwU3KsgQr0U1KsMQq0U1KtgwewU3KtMwfwU3KtgQp0U1KtMQo0U1Ku0wgwU3KuwwhwU3Kv0wiwU3KvwwjwU3KugwkwU3KuMwlwU3KvgwmwU3KvMwnwU3Ks0wowM3KswwpwM3Kt0wqwM3KtwwrwM3KsgwswM3KsMwtwM3KtgwuwM3KtMwvwM3Ks0wwwU3KswwxwU3Kt0wywU3KtwwzwU3KsgwAwU3KsMwBwU3KtgwCwU3KtMwDwU3Ku0Qn0U1KuwQm0U1Kv0Ql0U1KvwQk0U1KugQj0U1KuMQi0U1KvgQh0U1KvMQg0U1Ks0Qf0M1KswQe0M1Kt0Qd0M1KtwQc0M1KsgQb0M1KsMQa0M1KtgQ90M1KtMQ80M1Ks0Q70U1KswQ60U1Kt0Q50U1KtwQ40U1KsgQ30U1KsMQ20U1KtgQ10U1KtMQ?U1Ku0wEwU3KuwwFwU3Kv0wGwU3KvwwHwU3KugwIwU3KuMwJwU3KvgwKwU3KvMwLwU3Ks0wMwM3KswwNwM3Kt0wOwM3KtwwPwM3KsgwQwM3KsMwRwM3KtgwSwM3KtMwTwM3Ks0wUwU3KswwVwU3Kt0wWwU3KtwwXwU3KsgwYwU3KsMwZwU3Ktgw@wU3KtMw_wU3Klcw>s0w.rb@cg8>GtQ_iv?f__YGv42M?6OiDZfQvFQ40_Wu4_Cf08.1B@DZfTAFM40_Wu4_BH08.1BqDZfUs1Ms71Ms71Ms71@LLY7?9cgE.nAufM_S3_sqsV?70Vv__YuD4a.5TWDeg01Men/7xN2w?1tCFPA?s3B/NSsgE.noGsV?70Vv__Yt6Dag?W@_N4?41_U71Ms71Ms71@JLY3?9ecgY7w01avX_S3z4f.2j0M.5OTzgf4g?jHr_3g?g7Z;bgbLzv338Wxmwnv6OQ2XUSPpDEKN65aK5RE6M8GrOKkKJ0S1sTn1FdkTBsF8ZBDLXSZYxPaKIaakXejc2iQEWqFLaVjTHKuNkuOPTYMJv_FHJ5GiJDmmJN0TMJCdZwXYatD9C7go1rTimB7jjVKtZKw2K9URMTiXAU4wRgV0Xf2zSmu__xyHCBxq__j5CPfhow8mKr_3SFMpwoXOx412RO1LxrdZHACmS@Mt@4oJQtTxJfiRf7kUA9ETrfU7ZG3rFbizFLBRrUdvdPLJMLrTO6lLQG2UHxW57KNaWUcJxIUD0A6GuIedzZO1Su51g1n4VJAMH3Io_8CtmGzD09JAMH2R_@DJt3fciPpDEJrTGUtNrEXLHaZ2OwHJ5GinbdG1cMctVmX2Qs38w8mKlk59y_borecL6q36ylLQG1iqe8STS3LMWxDTRkNrEXLhCC@utwdaZGL2xJcdwdaZA44uC3hKSvNFHNnpP@R1JR8IzpbRJqzWa7hATUUScb4jZ_OkLCVTS@eLK_V5Xu@gS2MzJn@R1JSytcHU13quBFDTkHcZS9nno1BpYIpr3pNrCI6V_0fAQi72afi7w7Oq6A6MLXA3IYbAMD_DgE0HytZ1VWNUScb4FhAeUgdrmE@uCFqGeHlhPCtQDuL1dIC5nfs5EfJK8cwCH@PJweSUwNQItaqmrcZ5OWQ3o6TLlMXMbFIHlXu@gUFSsCoId2o8IvnGbhnqbkB86@5IXBCR0Deouivk0lNf2s2gqG@2N0gOgMwxAg4bncP0NTBGwFcnZQdvcB3quBGd6Xp_aRDy4rqobzgiJ@BgjToBtuAQshJQZrQ@QSOolwWJl7eEXM0tdiXce9yThTv5tEJioPjvffXR4NBpr3pNxaTWl2bLHzG_bC8v6M6BuQr0qlXwwzQMvkfN5tHqR7Q76NxoElBcdzOow1evSEdKMxJfiShp6OnVCds0nw7Oq8f0fAQBwCEzK4eC1xNIom91HqR7V@_VanEKdgPtJN1A07rsgqoQy2YXZkgayZLv8toq4MhMm4tGXpCbjQE0HyunMm82cocSraN2@AA8rjQJlqPN2ffKFmpKbSB3OrpcaNhTw0WOdthwb_gohoOS6PzhtZsttPm3s@HQjRpdrmE@AaOC6PrKYDmHbPVg3M3Vd5b1dh7QwS5_qkaJmIXry38j6AgnJlwguiypT5O505sjSc6rdDW3PRzzgwdZhdIC5pAqWz0_mbVuEFBOuMqSJhZrtTAW_jkJl63QUn77rsgp6GM8fbPKn58xbV1TwCSj2J@InOZVXwJ1V2_7p4eSUwOutOUFe3lWhWnQJC81ST46n1GZ8_FoWkRDCilEM>1T1P2mXwVxb9A9krGQ2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh!^`0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa%0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD#$0jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y~0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6W.1,reQ2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh!^`0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa%0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD#$0jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y~0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6Wbg1Oow?t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M?t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug?t6BJpn0W879Bomgwpn9OrT8W82lP06BKtC5IqmgwrDlJpn9FoO1FrChBu21CrT8wqmVApnxBp21xsD9xujEw9nc09ncW86VLt21xry1xsD9xug?pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc0pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA.Br6NA2w1Dpnh3k5lQqmRB?1QqmRBs5ZCrDoNog1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq.t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0NdCNIu?Bc3xU.Bc3xUbikMcjpIr7w?5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ?4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1vq65Pq20D9O0D9OAI.w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU?5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt04dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI.w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU?4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK?1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng?t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng?pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng>4r0PI>U>1L__Qog.1k/lh>73__ZLk>Of__Uug.5g/AR>qP__@NQ.1_>1g,0nFi?5U3w4r30@w0g<1w>s/ha>XM0h0Ad4ga22IR22M>1k>ef__RcM.q804q63Esdy0O92UEayMCc28Q7zwqf1l0eW0dcC1qp5gc5jwHfPITcOYH9Ocv6StweE0522M9E2I_ePsPbOID8NYrpS0Ww0k8b>x>93__ZI4.6101cxwW73owcygKa2EI9z0yd1UU6zMl63J020M8o2I_ePsPbOID8NYoeE0562RweE076NYz9OILcPsXfhwXg0EoexMS838AbywGb2oM8zgue1EY50MaG2I_ePsPbOID8NYoeE0522REaPYXdPcLaOsz7NwWw0k8b,5w.4o/wz>KU0hEsdy0O92UEayMCc28Q7zwqf1koeQ0g30oUaPYXdPcLaOsz73G01gwI2UwHfPITcOYH9OcseE0522SUaPYXdPcLaOsz73G01gwI,j>nj__@cw.7Bw16xwW73owcygKa2EI9z0yd1UU6zMlc3G030M662I_ePsPbOID8NYoeE0522SoaPYXdPcLaOsz7NwWw0k8b<w.1Nf__WD>1o04Oe1EY5hwX?w94PYUeE04&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;1ng;5o;1tS]1:uc:3;14o]Q;Nc]p;nsw:6M:8:1E<1tQ]s]w,r__@Zg;7M]k;5S]6:z]2w;8y]I:6]3;nW]0w;aw:1g:1M:n;3Dw:1M;yE]w;5Q]9:1w,r/_w;x8,6/_Y]g>1L/M;1_E,r/@g:R&&&(,01tU&&&&]hxw<16C;4so;hVw<186;4yo;ihw<19C;4Eo;iFw<1b6;4Ko;j1w<1cC;4Qo;jpw<1e6;4Wo;jNw<1fC;50o;k9w<1h6;56o;kxw<1iC;5co;kVw<3Sm;fR8;ZBw<3ZS;gbM;_Lw<44Q;g0g<10hw+fpo<10u;3Sm;g9M;ZBw<43y;gj:ZBw<45o;gpE+3Sm;gt8;ZBw<47S;gA8<11d-fpo<12A;3Sm;gHw<13:3Sm;gQ8<13zw<3Sm-@Xw<2AM,g]?1wU;4fy-@Mw<2AM,g]?1xc;4f@-@Bw<2AM,g]?1xy;4gs-@yw<2AM,g]?1xM;4gW]17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA;8>4>g17gig1cS4N:1k:5g,8>4>g17gig1cS4N:14o;4kw>8>4>g17gig1cS4N:34M;ckM>8>4>g17gig1cS4N:1k:5u,8>4>g17gig1cS4N:34M;cj,8>4>g17gig1cS4N:34M;cj,8>4>g17gig1cS4N:158;4lo>8>4>g17gig1cS4N:35c;clE&:M.g;78=M.w;7M=M.M;8M=M?1:no=M?1g;vW=M?1w;x8=M?1M;yE=M?2:VU=M?2g<14o=M?2w<15o=M?2M<1k+M?3;34M=M?3g<35w=M?3w<4hs=M?3M<4io=M?4;5T8=M?4g<5Tg=M?4w<5To=M?4M<5Tw=M?5;5@w=M?5g<6-M?5w<63w=M?5M<6bg=M?6*M?6g<6rE{1103_Yg(>d0w?2M<1k{0f0w?2M<1kM{y0w?2M<1m{0U0g?5M<6bg]4.140g?4g<5Tg[1H0w?2M<1ng[1T0g?4;5T8{0103_Yg(.2m0w?2M<1nw:XM.2B0w?2M<1Cw;1Ew.3f0w?2M<2p]KU.3v0w?2M<2AM;1Vo.3J0g?5M<6bo]g.490g?5M<6bw;1,4r0g?5M<6rw]w.4I0g?5w<63w:5>4X0g?5w<64M:5w.5b0g?5w<668:3w.5r0g?5w<67]5>5G103_Yg(.5Q0g?3M<4pY{0103_Yg(.620w?3;34M[680g?4w<5To[6l0g3_Yg<5Tw[6u>3w<4hs[6N0g?5w<6bg[6Z0g3_Yg<5@w[7j0w?2g<14o[7p4&7D8w*808&8s4&eJ4w*8G4w*8W4w*9b4w*9A4w*9R4g?5w<69]3>a84w?2M<33g:5w.as4&ay4&aW4g?5w<68g:3>bc4w*br4&bz4w*bP4w*c24w*cl4w?2M<20M;1wg.cD8&cS4w*d64&dk4w*dB4w*e04g*eg4w*eH4w*e@4&fi4&fA4g?5w<69M:3>fT4w*g84w*gs8&gS4&h24g?5w<6aw:3>hk4(,0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ06pFrChvtC5Oqm5yr6k0nRZzu65vpCBKomNFuCl}05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kcw1JpmRzs7B}06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1Cpn9OrT9}07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07hFrmlMnSxxsSxvsThOtmdQ071Lr6N}07xJomNIrSc0pD9Bomh}071Rt7d}07dQsClOsCZOg4tcik93nP8Kcw1yqmVAnTpxsBZLsBZxsD9xug1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1Pt79zq79}05ZvqndLoP8PnTdQsDhLr417j4B2gRYObzcU07dQp6BKg4tcik93nP8Kcw1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcw1PrD1OqmVQpA17j4B2gRYObzg0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kcw1DpnhOtndxpSl}05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP&&&>r>1M:2:sw;1O]A)1{bC/_o]w;7M:v]f,c{w[3w>b]8;2c:8M:Ww>4,w:8:1w.1,0M:2;1tw;5S:8y(g[i6/_Y]w;vW;1_E:jw>c{8]w.5lL/@]8;8i:x8:6,4,g:8[1A>1]2;2aw;8G:ng,M[2]o>rw>g:gw;VU;3Dw;2E,c>l]w:6>7w>1]o;h6;14o:3U)4[1P,g:6;4lw;hm:ew)1]w>vw>4:1w<1k:5g:sc)1{8g>1]o;Nc;34M:2E)4[2a,g:2;cm:No;1bW)2{Aw>4]w<4hs;h5M:f(g[a,1]8<14C;4io:uw)8[2G>3w:3;nsw<1dO]8)2]8>Jw>Y]M<5Tg;jt]2(w:2>c8>1]c<1tS;4To]w)8[3f>1w:3;nu;1dU:7,1{2]g>S,4]M<5@w;jW]o(w:2>dQ>1]c<1w:5]0e(8[3C,g:3;oe;1gU:7M)2{X,w]M<6bg;kJ:46(w[f4>1:3-5bg:2U)1]4.3W>1M+pKw<1j]4w)1{0g>8&l2:8K>1I>U]w:6,A>3&5Po;16w)1{h,M*1xg:4g(g]'
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
