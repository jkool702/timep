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
b64=$'45360 22680\nmd5sum:c3518d190f815b662571e9a03da69f36\nsha256sum:749c1c69796c9986eacbd56647f4b7f0c89f941abcc2d05927f053be5dc4984c\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n0000000000000000000000000000000000000000\n000000000000000000000000000000000000000\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0hQN9gAdvcyUObzk\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n__\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\034vQlchw81.[?c0fw01{1[1xh[>4?e?a04?7w0t?4,5$:Dhg:2t5[g}g,g<8[w}2]2s6]9Mo}1}1,1w>cwZ]O4Q:38jg:6w5]M0A}4}8,6,U3Q:3wjg:e1d]M04:30.]w}1<g>1M0w:702]s08]A}2g}1[4,1,40S]g3o:10dw:3[c[8}5fBt6g4,g3o:10dw:40S]c[M[w}kelQp.>1Mdw:70S]s3o:1k}5g}1}1hVnhA1w!=0.}5bBt6g4,O3Q:38jg:cxd]e08]U0w]4}1,1g,3,hQVl0ermh@Pk0zupRnzAM_Xh@eoUlSWAYMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q>Yvg03_9jFd?1E<eDw//_OkOjg?q04>3FQf//YBaAQ?6w2,Ws3//_9i9d?1E0M>eCM//_Okqjg?q.>3FEf//YB4AQ?6w5,Wp3//_9gFd?1E1w>eC0//_Ok2jg?q0s>3Fsf//YB@AM?6w8,Wm3//_9v9c?1E2g>eBg//_OnGj>q0E>3Fgf//YBUAM?6wb,Wj3//_9tFc?1E3,eAw//_Onij>q0Q>3F4f//YBOAM?6we,Wg3//_9s9c?1E3M>eDM_L/_OmWj>q1,3FUfX/_YBIAM?6wh,Wt3@//9qFc?1E4w>eD0_L/_Omyj>q1c>3FIfX/_YBCAM?6wk,Wq3@//9p9c?1E5g>eCg_L/_Omaj>q1o>3FwfX/_YBwAM?6wn,Wn3@//9nFc?1E6,eBw_L/_OlOj>q1A>3FkfX/_YBqAM?6wq,Wk3@//9m9c?1E6M>eAM_L/i8QZGkU?4yd1q9e?18evxQ5kyb1gpb?18xs1Q2v_w3N@;ccf7U;i8QZukU?4yddn9e?18avV8yv18MuU_ic7U0Qw1NAzh_Dgki8I5ZkE?4y5M7g8_@1C3NZ4?333N@;fcf7LG0fkle,tiJli8cZQAE>18yulQ34ydfsp8?3Eev/_@xA//Nwktjw>lT33NY0MMYvw<3P3NXWWnv/_Yf7U;yMkWkw?i8Dhxs1QjoDUi8n93UhC.?ZZ180v58zjQsjw?pCoK3N@4;1CpyUf7Ug;6of7Qg>@S5Ay3Nw4NMI7E20@SQzc4BQwVYnnFZZ33pwZSSQyd1tJd?11K223KeR1Kgg>1CggZKQ6ofrOlOc>pA4frKB8zp?1>pwZOQNZC3T3i06ofseQ03N@;6ofrYhC3S_cpw_@Vky3M11C3ZL3pwZOQg5C3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ05C3ZLbpwYUgcFC3@_13OB0Y4wVQ0@5d//Ys5Pl,4>29@4y5Og@5CLX/YegyMmWk>xs0fxhk1?18zgmHj>pwZSSXUwwXzJLMg>1C3SYBhiY?6ofrJpC3SXLi8Sg0.?6ofsJcvpwZMQw1C3T3J?Yvw<1C3S_4pwZLP6of_Kl8wY.pw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf18et0fxjv//71pRf>1,i8cZtkI>1Q0sdjcs0fEAyd5krZ/@5M7gvK04,fEAyd5tg3?21Ug?4018zgkD_v/i0Z4Q4y95jNb?1rMSoK3N@4;11lQ5mgll1l5l8yvm@mM>5d8yvJ8w@MEW2bX/Z8xs1Q5rVt,i8DvioD4W0TX/Z9eshO84y3N2x8yuV8ytYNQBJtglN1nk5ugl_FjvL/MYvh>j8Dxj2Dwi2DpioD7i8R0_Qydug59ysV8ykgA2ezD@L/j8D_ioD5WdPW/Zcyv98ytVcyuZ8yggAWfHW/Z3NAgR?1cyPgAioRQ9058yRgA24O9Z@zu@L/gYp4fLY0j8DLWd3V/Z8xs0fxbs>3Sg2x0tm58NQgA6<3EM_D/QObf2h8zngA6bEa,NM;i8D3j8D_WbjW/Z8ysp8yQgA64AVNTgaw3w0tgm3eO9Rlkybd2h8zjSO9g?cs3Ey_D/@ItpwYvx:i8IQ94kNM379i8DGi8D7WfPW/Zcyu_ERfD/Qybf2h8wYgEmRR1n45tglV1n@CZ@v/3NZ4>NOky9WAO9X@xb@L/WYRC3N@4;1cyu_EOfD/@AY//3NY.lp1lk5klld8wuMw.?w_Y33U@8.?w_Y1vyJ8ySU8cs20vg?i0Z4W4kNV8f_0Tkqj8JC4460f2g0j0Z4UeIbpwYvh>cuR5cuh8zngAkbY2,W0jV/@5M0@5X,4ybj2hoj8SQ99,18Kc_Tk@eBCYgwi6Bs951.wY0ifvFic7VfQz1@wt8asF80tdcyvq///@ze@v/goD6xs0fxjc1?18qogAE,4123M18qoMAA,4123M180UMAC,4w1Mkw3z2iE,i07pi8nJ3Ujs,i8RY912@g,370i8Qlvig?4y9v2g8W9_U/Z8yTgA24y9X@xy_v/jonAt2y@g,4ydv2hgi8Dpcs18zhlb9>W7bU/Z8zngAk4O9V@wR_v/i874804?4i9Y5JtglN1nk5uMSqgj8SQ99<N_QO9ZKwe@v/xs0fxpo>18qogAE,4123M18qpMAA,4123M180VMAC,4w1MQw3D2iE,WvL@/ZC3NZ4?18zjT19>cs3EsLv/Q6@.>eK5pyUf7Ug;4y9PAydfqYz>NMeyLZ/_Wmn/_ZCbwYvx:W2LT/@beeyk@f/i8QZBig?4y9Nz70W2fT/_HHV3E2_v/UIUW7jU/Z8zjR58M?i8D6cs3E0_v/@KfA4y9Qky5Qw@4WM>fvncs3H8SpCbwYvx:3NY0YwYUY3M6i8f?oD_i3D13UiP,i8Qk1Efy1Tnyi8Rg24wVQn8JpCoK3N@4;1CpyUf7Ug:Yv0f983PzNv1rUi8Dgi8f224wVQnfIi3D8sSp8zl01YwYUY3M6i3DasRt8zl02YwYUY7M60kwVODd7i8Rg0_8fef1Y1w98esFPdQydk0jO3PzMv0o3i3DasOt8zl05YwYUY7M614wVODcni8Rg1L8fef1Y1wl8esFP1_8fef1Y1wq9@fvgMMYvg018zl48i3Dh3UdH//W@y9@cdC3NZ4?11lQ5mgll1l5l8yvRji87IO,4y9t2ggi8Bk91y0fOQfxok>20vM40tn_EHLD/P7ii8RY92x8K;1,Lw4>18ykgAaezeZL/xs1@2_p492U13UmQ.?i8RQ9318zjTO8g?W5XS/@9h2gcxs0fxeM1?18yMl3gw?LM>g18yM18yggAW1HS/Z9ysh8xs0fx9Y1?37h2gc.>eIWi8QRHy4?4y9X@y5ZL/i8A494y5M0@4Y04?bY>40WdXR/Z9ysh8xs0fxbU1?37h2gc<4yZ9icyxeisYIJ5cuR9LXc1<g?3NY0i8Ic9bE>40Lw4>1cyuvE6Ln/QC9NAy5M7hOj8IdmQk?4S5OngKh8DLj8DOj8DCgv_hiUQcd469NkO9U0@S44y3M058ctl93W_Li3D1tuTHGMYv03703W9czgTZZL/xs1Q7Xw1,3W9czgSb_v/wu4?1?i8Q5TLr/QMfhcxcygTPh>WVKgi8IY9ey7Zf/j8DDgoD7xs1Rgez8Zf/yQgA38n03UiE,i8J49118xs1Q0Qi9a4ybh2goi8n0t0d8yix8wsj8,h8DUmRR1n45tglV1nYfEyfj/UJk90O5QDhxWfLP/@beexAZv/i8QZty>4y9Nz70WffP/Z1LM4>3HKkyb1qN>2_>104yb04y912jEw_j/Yt490M1,ioD4i8n03UmB_L/i8QZ72>370Wb7P/_HL4ybf2jEZLf/@Kki8IY9ezHY/_WkH/_Z8zjnM7M?i8QZVNY?ez3Zf/i8A494y5M7gxLM>g3E8fj/QC9N4y5M0@5iLX/Qybf2jEG_f/@Kqi8QZSy>exdY/_Wln//Ec_f/UIUW9PQ/Z8yuV8zjTG8>i8D2cs3Eaff/@AM//3NY.lhlkQy3X718zngA4ew@Zf/i8QRBxY?4Ob84y9NkO9V@yVY/_xs0fx441?18zjm47M?j8DDWabP/@9MUn03Uj8,i8QRtNY?4O9V@y9Y/_yse5M0@4jM4?4yddmEv?1cyuvEsff/UD3xs0fxhU1?2bh2ggw_w33UZp0M?3Uhb0w?i8QZWNU?8fU0Dkii8JZ24yd1tIu?20fM183QjUibwB8Oa4V9POOQydl2goNQgA5<18zngA54y9h2goW4_Y/@5M0@5yM>4Obh2goyQMA54ydv2gwcs18zhke7M?LB,3EFLb/Qydv2gwW2PO/_Hu6oK3N@4;2bh2ggw_w33U@j.?3Ugd.?i8QZlhU?8fU0Dkii8JZ24yd1kku?20fM183QjUibwB8Oa4V9POOQydl2gocvp8ykgA6ez4@/_xs0fxaM2?2X.>eIj3NZ4?2bv2ggi8DKW8jU/@9MQy9X@waYL/i8f4s8DomRR1nccf7U;j8DCi8QZeNU?370W7vN/_HKgYvh>yQgA48fU0M@feM8>@4Hg4?4ydfrkt?23@09R4Aybvgx8zgmB7g?w3Y0i0Z4@37ii8RQ91z7h2go<ewH@/_xs0fxmv/_@bj2goi8RY922@8,370i8QlVhQ?ey7Yv/i8RY923E3v7/@Bm//3N@4;1cySkgi8JZ244fJwgAw3Y03Um2,i8QZcxQ?8j03UjW.?ibwB8Oa4V9POOP7Si8Rk91x8ykgA6eyM@L/xs0fxuP@/Z8yQMA64ydv2gwi8QluxQ?370Lz,18ynMA2ew6Yv/i8JQ90xcyuvEOvn/@Di_L/3NZ?4ydfk4u>NMexyYf/Wq7@/Yf7Qg?8j03UhN_L/Wo3/_Yf7M1cySkgi8JZ244fJwgAw3Y03Uhi.?xc0fxbnZ/ZCbwYvx:ibwB8Oa4V9POOQydl2goi8RQ91j7h2gk<4y9h2goWfHV/@5M0@5dLX/QObh2goyQMA54ydv2gwcs18zhmV7>LB,18ynMA2excYf/i8JQ90xcyuvE3_n/@Ao_L/pyUf7Ug;4Obph18yTQ8gg@S12i0fM0fxdE>24M0@4k_X/Sqgct98zngA6ct491w<W7PV/@5M0@5KfT/UJc91x8znMA8bUw,cs18zhkS7>i8BY90zEQ@/_Qybt2g8j8DDW9rQ/_FD_T/V18zjRh7g?cs3EcK/_@BN_v/3NZ4?18zjQp7g?cs3E6K/_@Bp_v/3NZ4?18yQMA64ydv2gwi8QlUxI?370Lz,3Es@/_Qydv2gwWfDK/_FgLT/MYvg018zjQU6M?xc0fxr7@/_EHfb/@AB_v/3N@;4ydfhwr?24M0@58v/_@LupCoK3N@4:f7Q?i8fI24ybfpkX?2@.>ewbYf/i8IZr3I?bU1,WfHL/Z8yPR3eM?Lw4>3EWu/_QybfjEX?2@.>ezoX/_cs18wYg8MM3P3NXWi8fI24y3N0z3|||!:3,8g,4,6,44w4g0C408;8g>2g>346@RqGEecYsLvhTuylPGsEjhFtg$?7E,g^8w,i^1<w^aA,g^6E1>i^4c1>i^3Q1>i^341>h^fQ,i^4E1>i^1s1>i^cI,g^1k1>i^5k,i^ek,g^6I,g^6c1>i%4,w^2M1>i^7c,i^5Q,g^9A,i^d4,g^2s1>i^541>g^3s1>i%I1>i^2M,w^1U1>i^4o,y^9k1>g^bs,g^bg1>h01s0w58]M}6Y1>i0..1g:1f}cs1>h01s.58]M}a41>h01s0M58]M}8c1>h01s?5c]M[1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1Pt79OoSxO069FrChvtC5Oqm5yr6k0u6Rxr6NLoM1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1vnSlOsCVLnSNLoS5QqmZK05ZvqndLoP8PnTdQsDhLr01ytmBIt6BKnSlOsCZO069FrChvondPrSdvtC5Oqm5yr6k0u6pOpmk0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1Pt79BsD9Lsw1MrSNI07dQong0sThAqmU0pCZMpmU0pD9Bomg0pClOsCZO06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUNd017j4B2gRYObzcP04tcik93nP8Kcjs+;g02?40.02?8?w02?c?w02?4?w02?40.02?401?5?401w01?80.02?80.02?80.01?40.01?40.01?k0Sg4?1[K96m1w?1w3z.?4,9ihBwo>k0Xw4?1,2PApo6>40fA1>g,BV6m1w>M040w?4,7kqqgA>803M8:38jg]w}c0k:3gjg]w}Y.:3ojg]w}S4Q:3wk}w}fyY:3Ek}w}634:3Mk}w}fyY:3Uk}w}g34}kg]w}M38]8kg]w}y34]gkg]w}Q34]okg]w}@34]wkg]w}g38:10kg]w}fyY:18kg]w}u38:1gkg]w}fyY:1okg]w}E38:1wkg]w}fyY:1Ekg]w}W38:1Mkg]w}e3c:1Ukg]w}fyY:20kg]w}o3c:28kg]w}G3c:2wkg]w}fyY:2Ekg]w}U3c:2Mkg]w}fyY:2Ukg]w}23g:30kg]w}m3g:38kg]w}Q34:3wkg]w}fyY:3Ekg]w}G3g:3Mkg]w}fyY:3Ukg]w}Q3g}kw]w}63k]8kw]w}fyY]gkw]w}o3k]okw]w}I3k]wkw]w}fyY:10kw]w}AyY:18kw]w}M0Y:1okw]w}U5]1wkw]w}OOY:20kw]w}xyY:28kw]w}M0Y:2okw]w}g54:2wkw]w}VOY:30kw]w}uyY:38kw]w}M0Y:3okw]w}E54:3wkw]w}13[kM]w}rOY]8kM]w}M0Y]okM]w}U54]wkM]w}23o:2wjM]o,3{2EjM]o,8{2MjM]o,x{2UjM]o,z{30jM]o,i{38jM]o,A{3gjM]o,s{3ojM]o,u{3wjM]o,B=0k}s,1=8k}s,2=gk}s,4=ok}s,5=wk}s,6=Ek}s,7=Mk}s,9=Uk}s,a{10k}s,b{18k}s,c{1gk}s,d{1ok}s,e{1wk}s,f{1Ek}s,g{1Mk}s,h{1Uk}s,j{20k}s,k{28k}s,l{2gk}s,m{2ok}s,n{2wk}s,o{2Ek}s,p{2Mk}s,q{2Uk}s,r{30k}s,t{38k}s,u{3gk}s,v{3ok}s,w{1yomgwon9OonAwsTlysSdOqn1Qey0BsM1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc09mNIp?Br6NA2w0J079y07hFrmlMey1LtngwrSowrmlJrT9V07hFrmlMey1Opm5A86lOsCZOey0BsM1Dpnh3k5lQqmRB07hFrmlMnSpKtz5x07hFrmlMnSdOoPcO07hFrmlMnSxxsSw0t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD02kMe7w09j0Uu2QBc34Sr6NU07hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt07hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ[6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb[0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK[1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt-4,2<M,g,w,1g>4telg01?701<A[w01M.,3[4r0PJk,2g>43c/ZM,QcX/Vw>1gQf/H,c3h/_8,kdf/OM1?1MRv/t04?73m/@8.?kdD/Zw1?3gTv/408]k[5Wkw01u1016MM72901>A,7,czb/_g.,UghwUoiwYbtMy?3YqeOEP928<4,4g,MPL/vM4]o,m,9Pf/ZC.,cL.UgwM9S3ww0o,7g>3MQf/zg4>123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6igUUwMt73C1z2wUUigUMggUEgwUwgwUogwUggwU8iwI2_0Eee44ec44ea48e848e648e448e24Eb04g>3o,7db/NY2,gwUgzw923xyd0Q8e88M4ggUExwl13z231AseQ083cM4a3z143yx13y123xx23x123wx32M>1<w.?Zdf/_E}j,3g1?3wRf/Tg8>123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6h0UUwMt73E020Y412wUUh0UMggUEgwUwgwUogwUggwU8ggI,Q,x04?73n/ZN1,48e48M2ggUoxwd13y2314geA043ww4a3y133xx13x123wx82M>1g>2Y.?KdL/QY<h0Ug0AEe2|!!!!!!!!!!!![0c0k:3M1]dxd}g]3p.]M}B08]d}90k]6g]38jg:1I}2[q}d1d]7[8}fn@_SY;2}5}cwz]1w}U8}E}6M8]b}1w[M]3EjM]8}E08]k[s}5M]1wb}s}A2o]8}d05]2g}o}fX/SY<c2o:3/_ZL;4}Yf/rM,3A9g:fD/SY<dg!!!!![0e1d$co2]Rw8:3C0w:fo2]1wc]m0M:2o3]dwc:160M:5o3]pwc:1S0M:8o3]Bwc:2C0M:bo3]Nwc:3m0M:eo3]Zwc]61]1o4]9wg]S1]4o4]lwg:1C1]7o4]fyY]ocg:3UL]g34:30cw:8wN]Q34:3Ucg:40O!fyY:1Ucw:3UL]E38]@bM:ewO]e3c]@bM:60P]G3c$fyY:3wcM:3UL]23g:1od]d0N$3UL]G3g]@bM:d0Q]63k]@bM:60R]I3k]@bM#98L]M0Y]1}e1g]OOY#26bM:c0f}g]10kg:esL!uyY:303M]4}E54]4c!6YL]M0Y]1}e1h]23o-4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag,w,g;4?4t1904Poj40w.:201}w,g;4?4t1904Poj40B08:2G0w]w,g;4?4t1904Poj40A1g:2o5}w,g;4?4t1904Poj40w.]V1g]w,g;4?4t1904Poj40zNg:2f5}w,g;4?4t1904Poj40zNg:2f5}w,g;4?4t1904Poj40Gw8:2L0w]w,g;4?4t1904Poj40C1g:2t5!04,40f7_*0Q,20.0w.)Y,20.0I.-28,20.0Y.-3w,101w.5c]1}4g,10180Q4Q-6I,20.0c0k-7s,10140O4Q&40f7_*9o,20..0k:1_.:ak,101w0w5s]4}c4,101w0w5c}1]dc,20.0M0o:1C.:eg,101w0o5c]8}fk,20.0U0I:3W[w1>20.0c0w:2d.:2Q1>20.0M0A]v0w:3Q1>20.0U0M:3t0w:6s1>20.0M0Y:1N1]7k1>101s0U5]1g}8g1>101s.54:1o}9g1>101s0E54]U}ag1>101s0U54:1g}bc1>40f7_*bQ1>101?C3w&40f7_*cI1>2?k0A1g-d41>101c0S4Q-dU1>101g0U4Q-es1;Y0s3o-fE1>101s0c5c)o2>101o0W4Y-dU,2?80B08-1M2>g^2E2>i^4s2>w^6c2>g^742>i^882>i^9k2>i^as2>h^bA2>i^d82>h01s0w58]M}ek2>i0..1g:1f}fA2>i^1g3>i%M3>g^183>i^2s3>i^3I3>g^5c3>h01s.58]M}6k3>g^6Q3>i^803>w^8Y3>i^9Y3>i^b43>g^bY3>i^dE3>g^eU3>i^fY3>g^144>h01s0M58]M}2g4>i^3o4>i^4M4>w^6o4>i^7I4>y^9o4>g^a84>h01s?5c]M}bg4>g%1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrCBQ07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1voT9zcP9vq7tvu3wS069FrChvtC5OnSZOnS5OsC5VbCdLrDdQs79Ls2UMbCBPsC4Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv06pFrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8Kdg1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1MtnhPg4tcik93nP8KcyUR06pBsD9LsA17j4B2gRYObz8Kdg1CsClxp417j4B2gRYObz8Kdg1Pt6hFrA17j4B2gRYObz8Kdg1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8KcyUR07xCsClB07dKs79FrDhCg4tcik93nP8KcyUR07dQsD9zq79+0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1Pt79zrn1+0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP06RBrmdMuk17j4B2gRYObz4Q069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0oCBKp5ZxsD9xulZSon9Fom9Ipg1MrSNIg4tcik93nP8KcyUR06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CrT1BrA17j4B2gRYObz8Kdg1DpnhOtndxpSl+0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79BsD9LsA17j4B2gRYObz8Kdg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8Kdg1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt01yqmVAnS5PsSZznTpxsCBxoCNB>KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KqmVFt?Kt6lUt?KpCBKqg0KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP!![>1I,7<w]1M0w:702]9*g(K<g,o}B08:2k0w:1I(4(xg,4,6}b02]I08:3g.-4[g}3g,1,1w]201]804]3N)2*W<g,o}A1g:2g5}Q(4(g,fr/SY2[0w}2}U[s}2(4E,b<w}U8]3ww]A0c]8<g,w}6}1i<M,8}O2c:388M:1I2)1(mw>f/_SY2}egB]V2k:1c[s[w}2}6s>3@/ZL0w}M9w:30C]o[8<g,w)1S,1<8}A2o:2g9w:d05]1M}8}1w}w<g>12}60I]o2M:2w0w]s,m,2[o}8E,1<w[bM}L]g0s-1(2i,1M,8}g3o:10dw:3*8(Fg,4,2}70S]s3o:1k(1(bc,1<w]38dw:cwS]R04)w)2Z,3w,c}O4Q:38fg]w(8[w}Og,Y,3}d1d]Q3Q]8(2[8}dk,1<M]3ojg:dwZ]2*w)3y,1w,c}U4Q:3wfg:c01]2[8}1[WM,4,3}a1f]E3Y:18(2[8}f<1<M]3EjM:ew_]@*w}2}3V<g,c}U5]3wg]502)w(_M,w,3}41j]c4c:181)8*g1>1,c(313]bw(4[g}d.?1M{y7s:1wgM:201)4*g,8^w4g:2E1w:1M,y,2[o[A,3^2xb]O.)4(h<M&3MjM:2c1)1('
;;

'aarch64')
b64=$'145680 72840\nmd5sum:ed46fbc8f183eaa11ea7f141a46cf916\nsha256sum:f21516b760b025cd177209dfb511f647ff896e0786c7e17a9b7c5852d90f94c0\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n042\n000\n31\n00\n````````````````````````````````\n0h}o14]1w4g]6\034vQlchw810g=0c0JM01+1{4wl0g=4?e?704?7g0s?4<5`]_2U]3Ybw=g]g<o>30_g]c3Z0g:MfQ1]M1g]5w9=1]2<1w>dzZ}SfQ1:3o_g4:c01}M04}8{g<4<O04]380g]cw1}9{A{g[kelQp0g<wb}20I}82M]1A[6g[1[1hVnhA1w`!?g[5bBt6g4<MfQ]30_g4:c3Z0g:g08]1?w}4[1<1g<3<hQVl06oUfRfvxaLwRRWc8yXjN7I6fEo4:c<A;g<o<gi0h02og0w:A<9M>cgrXlGGwUPNOZZ7tW9neFOxd6BR`[c02g104g$c05w3M?8)sM>18#uw>1!4<2!Gg>1!hw>28#_g>18#iw4?18#7w4?18#l04?18#dM4?18#JM>1!Vg>1!9M4?18#qM>1!cg4?14#5g4?18#lg>18!g>2!b04?18#ng>1!Cg>18#t04?18#2M4?18#rg4?18#fg4?18#Qg>1!mM4?1!b<2!804?18#y<18#DM4?1!Lg>1!gM4?18#Lw4?1405w1w0w8:3{ug4?1802M0w9}5g[Qg4?1405w0M0w8:3{GM4?1405w2g0w8:3{zg4?1405w3?w8:3=5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSU0nRZFsSZzczdvsThOt6ZI069RqmNQqmVvpn9OrT80u6pOpmk0oCBKp5ZxsTdLoRZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dQsClOsCZO07dKs79FrDhC071Lr6M0sThxt01Pt6hFrw1CrT1Brw1CsClxp01Cpn9OrT80pSlQonlUtC5I06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObz4T{8?g01?4?w02?8?w02?8?g01?8?g02?8?w01?c?g04?8?w02?8?g01?4?w02?4?g02?4?g01?4?g01?c0UM4?1{K96m1w?103J0g?4<behBwo>c0@04?1<2nApo6>2?c2}MfQ1].}40k}OfQ1].}eMj}QfQ1].}d3Z0g:Y?2].}50B}@?2].}8wC{42].}50B}2,].}b0C}4,].}30E}6,].}fwC}8,].}40D}a,].}6wD}c,].}b0D}g,].}50B}i,].}ewD}k,].}50B}m,].}10E}o,].}50B}q,].}5wE}s,].}awE}u,].}50B}w,].}d0E}y,].}1wF}E,].}50B}G,].}50F}I,].}50B}K,].}7wF}M,].}cwF}O,].}40D}U,].}50B}W,].}1wG}Y,].}50B}@,].}40G{82].}8wG}2082].}50B}4082].}d0G}6082].}20H}8082].}50B}c082].}1wC}e082].}a0t}i082].}f>w:k082].}7wH}o082].}ewB}q082].}a0t}u082].}4010w:w082].}9wH}A082].}bwB}C082].}a0t}G082].}a010w:I082].}bwH}M082].}awB}O082].}a0t}S082].}e010w:U082].}dwH}EfY1]11>1g+GfY1]11>1M+IfY1]11>9-KfY1]11>9w+MfY1]11>4g+OfY1]11>5-QfY1]11>9M+SfY1]11>7w+UfY1]11>a(2]21<M+2?2]21>1-4?2]21>1w+6?2]21>1M+8?2]21>2-a?2]21>2g+c?2]21>2w+e?2]21>2M+g?2]21>3-i?2]21>3g+k?2]21>3w+m?2]21>3M+o?2]21>4-q?2]21>4w+s?2]21>4M+u?2]21>5-w?2]21>5g+y?2]21>5w+A?2]21>5M+C?2]21>6-E?2]21>6g+G?2]21>6w+I?2]21>6M+K?2]21>7-M?2]21>7g+O?2]21>7M+Q?2]21>8-S?2]21>8g+U?2]21>8w+W?2]21>8M+fOc3RvRXLWDZ0M2hxg?BfRXMqy_8MflM0dvRw<3MuX@FY>Q17@h_AgUz@h808vRxYw0Zkv80fl7O03Rv>f0h0A3V4080Ai027ZrM?3M4gp0@h0y094w0x_mY>Y14agfAggw2h808vRL>f0h3A3V4680Ai027ZrM?3M4h90@h22094w0x_mY>Y14mgfAgEw2h808vRL>f0h6A3V4c80Ai027ZrM?3M4hV0@h3y094w0x_mY>Y14ygfAg0w6h808vRL>f0h9A3V4281Ai027ZrM?3M4iF0@h120p4w0x_mY>Y14KgfAgow6h808vRL>f0hcA3V4881Ai027ZrM?3M4jp0@h2y0p4w0x_mY>Y14WgfAgMw6h808vRL>f0hfA3V4e81Ai027ZrM?3M4k90@h020F4w0x_mY>Y156gfAg8wah808vRL>f0hiA3V4482Ai027ZrM?3M4kV0@h1y0F4w0x_mY>Y15igfAgwwah808vRL>f0hlA3V4a82Ai027ZrM?3M4lF0@h320F4w0x_mY>Y15ugfAgUwah808vRL>f0hoA3V4083Ai027ZrM?3M4mp0@h0y0V4w0x_mY>Y15GgfAggweh808vRL>f0hrA3V4683Ai027ZrM?3M4n90@h220V4w0x_mY>Y15SgfAgEweh808vRK>d?V4vVg>Jc7__Nv?R_m7O03RhYw0Zkv80flU>Y0302V7x?3M8s0bAjY?eL>1kUg?Q27gh_Bx?2QY0c1Gw027Zr?R_mU>Y0302V7x?3M8s0bAi4?cIy_7_jggO1yO7Ygpf1?2QUw?Q4bIh_By?2QY0c2Gw027Zr?R_mfOc3RvRXLGDZ0M2hYMI0@vc?f1wMAIVg040d@>d?R4vVw>Je>d?g3uhpv__BZz__Vsw081ioc8bevcbgfDZuYaELOc3Rs03nZov80flnOg3RtL__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnB?3MF?cAqc0gXA30w0QMw40Jak0394A?abUMc1GG9?97x0O0Go1h0e<kE0742ig7xwK04wgkGv?fHgv__le038iH?R_m1w?I0c?b0@101fTgj3fpM404Z_0ccZwQ?Aoh0497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCVW184YvM04WW7X_Ri@?eZNf__5_RXKGDZ0M2hYRc1Gvg30aHT6M3VZMc1GC4bw58U__@nU>Jfc30aGx2U1iU0ckGzf__Vt_0w3H0M40le435WHw0NiGZNJ0@g80w5bPkQ6F_nL6G3r__Ns101fbow8kOQ04097RmMaFdwg0Qu871aAr__@nZgc0GK0DgfAo__@nUyd0@u435aHQ0M2GU0clGKf@_Vvy8Q3Vogo0Au035aG_qy8UUwcmGJT@_VuvqzoUU0clGJX@_Vt01w2Q0ix0Kq43c3v_bM3Vfv__B_c30aF20o1iUmc1Au035aF_0w2V5___B@8LgfCv0wbHM>l480g3C2>Rog90Kj@807510M1kUgckGw>b?g1ahO_X_B@035qHB_L@nZNJ0@u035aHRmQaFYRd1GvRXNGzv_LYnUwcnGK435aE4081i0M20Qyr__Vvw0NmGSfX_B_srgfDw0NiGZlJ2GvdjgqDZuYqEQLX_5@430aHy0NuGU0clGwc0w585__@nY___5@035qHe_L@nPv__5_RXGGDZ0M2h7MM0soMd05jPkM6FZNI0@hY4077d1g1kcMh0@hg0wd9y0A0VnM?snciDVEv301N8gk0l3g8gfDxgMahw090ehY?75?81iB1avCF_@_Vuw1?QUkc3Ag?w5bx8M3VSLX_BO0d03ny5QSF0Qy8QK0jjGDz0q3OUid0@k8k0VI020er5M04yM?w1bf_L@nV0c0aE0403jA_L@n?10KqX@_Vvx0M2G<I02w4V5@_L@nYRd1Gig0w5bT6Q3VU0c4aLRXRGz?R_m4M20Qxg0wdbxgMahg020kDL@_Vuw@_YRV0J9Gu3VDJ9wqHPO0Qy8QG1QQ_bz0q3Ow1zAYK530V50v42r0fN7AMbYwII?80iBMw3CWP@_VvA0M0GMfL_du0njqA1i8ziUMJeGu41Ef80506roM01CSc?EJz01ubQMg0J08?b1281ih0gy0QK130p7AgM2VUys0@mb@_VvxgM6hU0cjGA3__VvAgQ2VJ080Je8DgfDz0NuGU4c2Ag48wdbAgM2Vl_X_B@530F7w0NiGdv__B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRw>b?E1ahe_X_BOg0w5a___YnZNJ0@u0.2HPkQ6F_nLmGc03nZrx0MeG<I010597AgM2Vy_X_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvREz@_Vs0,VkLX_B@430aE>2M020jAib@_VvT6Q3V9020kLdjgqCA__YnU0cwaBYc0f4F0M1k9x?Qoc0wdb4q6eUVgc3GCcg0940icgqnM03WSb__Rhv?nHGg40l2hEpjyz102h04346BY?@I90g1k8Sxzeak80940gccqLM02WS8?5gxq6kU04.6K0382H?R_m1g20QK___NvZuX2F_gc0Avdj0qDP0M2GZlI2Gvtz0WDXsMmF_0c1Gw?g3DydM3V7Xg0sk4a05hw1A0V?E0du8?f11?Ohg013Ks0503k3?2M<I3U404ZZ1ccZD0g0jNY0MPQwg02h8k0gAuovfAXW1PZL_UuYjIqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrA4vfAVq1PZL8pOZjzEseCV07PVemws_rM2sLkUq73FKmNY@jBE7fSZXDXReuxYWrxE4wjM_?3HEvL_l5U?XRj?Oho0F2@k0h0bgz0c3iUec1Ag80w58x083iUPY0@tTZ_Vsv?1Nrg?le3_g7D03w0T4M?I7dy597w0NeGUgc2AuzZ_VvT0M0GM1?de4?d0xU4vV802wQzk0gfDh_v@n@Mc0GC0h0bgT081i@mI4GgQ?1jw0NeG0g?I260596U_v@nZgc0GE0i0bgw0a3iNfT_B_I30aG03M2Q5M20kLBH1aCPp8jikUiMYDESwdajDdfOUMclGK036WHS?3M6>A280Ed8x083iRw8cAtPZ_VsowN6h@gc0GBd@@v8k081i6y30YI020bj32AbV0Mk0Je0352Hy0NCGUgcrGC?fZpy0NCbZ0c0aK436WEw540U4M0jODd@6FI_?bHwv__lec35qHw0NKG8w2wQy40wdb3_v@n@gc0GE3Z_Xnw0NmGS_T_B_o302Hw0NKG5wc0dovZ_Vsn1g0Qn>J9g30bDwdQ3VU0A0J1c?fDw0NoG@mJ4GvdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw02wd9D_v@n0M?A1Y0uv9zI2ihoN2oCIca0LDi__YnsfT_BNs503iO_v@n?10Kjo0w59X_v@nUgc0Gw>b?g1qhi_T_B_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_mU0clGBnZ_Vvn__YnUg?Q27wh_Aw0a3idM20kzk0gfBy_v@n@Mc0GE030bjVqMiFD___5M02wd90_v@n0w?A1Y0uv92w16h0g?A22M994048aqo0E2@mX__Nvw0NmGfLT_BZv__Nvw0NeG0g?I260594Z_v@nZgc0GE020bgw0a3iivT_B_I30aE0_v@RU0clGz7Z_Vs>2Mdw20kw3w5p4p_v@nP___5_BHhaDw0NoGYRd1GvlrgGDToQeF@Td5GvRXQaz?R_m<I3o0w580E1ih3fT_BYb__NtG_v@n?10Kjo0w58P_v@nUwc0GK434WE>2M060lAgbZ_VuU__Yn_nKSGvQ3097x0M6hYRc1Gvkj0fBj_v@n5010@vk30aE1?2M8q0mAu035aF1_v@n?E0de035aE1?2M8u0mAjPZ_VvP0M0GE0k0de035aE1?2M8q0nAjrZ_VvP0M0GE0E0de035aE1?2M8m0oAj3Z_VvP0M0G80A0du13gbAv301Nz1A0l40j05gv201NUh?la06gfA1?2M8m0kAg80g3Bv?1N8020CGdAxdby8M6hgUiMYK4j0p63DdfO_Qs0Kkd@@vbz9M3VPvX_BM0403nA9Q3V0w?Ied7gbB2U1Ch0gG0QK130p7l_f@nU4c1AgvZ_Vsy>kU4d0KhYc076I301kE0w0l1Y8077x2M1kE0p0@g4?b0xo1ih0w10elY?74w082qESi4QK8z0p53xb3O0g20QEesQ_93vLDOUOs0@qX@_Vs03?QcM20kK035qH6_f@nZhd0@u034OHPkQ6F_nLaGc03nZrwgQ2VUgclGLrZ_VvP0M0GU0clGHLY_VvR4Q3VU0cjaLdjgqDZuYGEM0dvRK435aE>2McM20kw0w6p6l_f@nWv__5@13gbAv301Nr1?le0c05gv201Nwgs0la06gfA1?2M8m0kAg80g3Bv?1N8020CK4z0p42083i_QI0Koj@_Vvw@LYRUQJ0Kg8?b12M1Ch0gi0QK130p6d_f@nU4c1Ar_Y_Vvq__YnEd90Gg40g3C20A0VUgg0dg>b?o1ihgxM0dadAxdby8M6hgUiMYw40wda3DdfOgTXVYKcD0fBH_L@nMfv_ducDgfDAgM6hU0c4Gw46wd82?2ggG0pAugv0fBO_f@nUhZ0@u035aFg_v@nLL__5M>9?o1ihFL__5M>90P081i020nAlvY_VuH__Yn<A01w595@__Yn<A01w5979__YngLf_ddP__Nvz9Q3V0w?A4aw6p411E3iU4c1AlzY_VvwgM6hyLP_BWn__NuwBA2F0g10eq80g3A11M0QoKT_dadAxdby8M6hgUiMYK4j0p63DdfOVhY0@kd@@vb_hM2VUOs0@jr@_VswYvYRV2t0@u130p7zhQ2V0gG0Qw8?912U1ChfLP_B@0vgfDxgM6h7fT_BUH__NuwQA2F0g10eo82g3A13?QMLf_de4z0p42083i_QI0Ki7@_Vu0XLYRUQJ0Kuh30p7w0MiG0gi0Qw8?912M1ChV1Y0@izY_Vvx7Q3VU0ckGwrZ_VtQ__Yn<A3c0w580E1yh4fP_BSj__Ns>2gcM20kw3w5V4b_f@nn___5M>9?o1ih0LD_du8?d11?Ohg013Kg0603k3?2g<A3U404ZZ1ccZD0g0jNY0MPQwg02h8k0gAhYw0Zkv80flVxY@jLE7fS__xXNeNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKghY@jBE7fSYxDbReexMWrA0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFK6wi1f3Y?eKx@_Zknw03Llg039602AbV8er_Jg02wdbr@_@nUL__Y1Y0uv92w16hUv__Y22M994048aqw0E2@iv__Ns>2g060kAgbQ_Pny?3ggg0cAk?gXCw_vYR0M?A<90U101ftMj3fpo404Yp0ccZ84?Ai50494x7Pxed0s_rPC7JAUxDbted1MQrE0ue4Wk1zZL09OTjxgsd6Wj7zxeB0o_rTeuJQVQ7zhKAxUUjFg6fSZiDHtel1UQrF4ue4Wk1zZLcpWTjzgud6Wg7zxeB0o_rN2uJQUk7zhKxNUUjFg6fS_DDbteZ1MQrFkue4Wk1zZLJpWTjHgud6Uk184Y7M01WW7X_Rho?eZL___5@8?d11?Ohg013Km3T_Pk3?2g<A3U404ZZ1ccZD0g0jNY0MPQwg02h8k0gAu4vfAXW1PZL_UuYjy6sLkUW73FKg1Y@jBE7fSY0DbRe6xMWrAovfAVq1PZLNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKmNY@jBE7fSZXDXReuxYWrxE4wjMv?7HEvL_l8T__Nvw?2M0f17@vRXLWAx081i_gc0Ar_X_Vvw?2M0ex7@i40w5aX@_@nU>I03oh_Ax081iJ_L_B@>b?T4vV8g20kHfX_Vs?81i_nL1Gc03nZo_8Mfl_nK_GvQ3097ZuY6ELOc3Rs03nZo;oC5A865OsC5V87dRoDdzsCBMt3Ew9nc0pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc:6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp:Br6NA2w>2Q[sC8]1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD{1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V;7hFrmlMey1Opm5A86lOsCZOey0BsM>6tBt4dglnhFrmk]1QqmRBs5ZCrDoNog:t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw:t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE}t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:2kMcjpIr7w09j0Uu:Bc3xUbikMcjpIr7w;lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng]4dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI;6ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U]~0Et6BJpn1vq65Pq20D9O0D9OAI=w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU{5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt:13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw<19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI;20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?~0Et6BJpn1voT9zcP8w9Osw9OsFb{w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt:13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw]4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI<lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ?59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU{4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw:imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw]7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng:t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng<1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt;6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ(g<8<3<88eUXi23KeQwwXzJ88eUXg4r0PJA<2M>63D__ZY<Aev__V<3cV___F<23E___c<gez__@<14Wv__Z<d3G__Z?g?3eT__Xg1?20Xv__O04?83N__@?w>fz__Xw2}4{1uB8017wu0hIc7M0g<6<dPC__YM[1;I<@er__PM[9<4;wV___k;11bk4e89Q4Dwd2AM9eTJTj3w11bg>1<1E<jev__Mw[4<7M>1oV___104]18<A<4zE__@c0g>44eo9QcDwJ2AMGk2kan1B0aTJTnQZge044bh9o7BgxM2JrlgJXtRZfk3w112QEaRJl2TJTnQZge044bs<dM>28Wv__f08>113K02DiOuaQikapcGgpsCqJjjgJt2TJQe044eU0ajaFgFBOqtb9UHtJt2Rdd1TJQe044eU0atb9UHhpcGB2Cn9A4aRQbkQQ7uTgU0ggJ72Jt2Rdd1TJQe044bidt2Rdc<g<k04?53H__ZQ[bg>1A0g?IeL__M04<ggW?FQwDxZ2ANWk7kil79orBNGo6pImD1k2lgGq5VAoggJcCxup67kaSJB5TJTrTdvoRtrjR0U0ggJjSJB6TJTrTdvoRtrjR0U0ggW?FcuB1Sl79orBNGo6pAoCxur5FMlDi2u7QfpSACq5VAogtDqiFAoCxt3StFhChyq5Q7qSkruTtLsRZzlRJfk3w113E02ANWk7pksBxKn6FwpCNqs5pQwDxYQ<708?fzK__@01w>44eE06t59Ujh9ciB16l409m2JXtRtfk3w112QEaTJTlQZge044b01M>1k0w?gfn__Rg;gMUgDgau0l7uTgU////////////////////////////////////////////////////////////////////////////``40k}X1c]3g_g4]4[UM4}c[40h}3g}1Q9}1A[MfQ1]r{w[6w}38_g4:1M[2[3R_LZL;f01}1g{1w}o[a08}a{U2}2M[o{c[WfY1]2[d02}5{7[1s[s0U}7[a08}2[3g1g}A[6[3@__ZL;608}____rM;1[f3__SY;3ww]3V__ZL;3k```!?3o_g4````(6|||||||||0h}o14]1w4g]50B}y2o]1g9g]b0C}c2w]3U9w]40D}q2s]2M9M(k2k]3E9M]50B}42w]1g9g]5wE}G2w]1g9g]d0E}62A`k2k]1gag]50B}u2A]38ag]40D`50B}62E]1g9g]40G}y2E]1g9g]d0G}82I]1g9g(62o]2w7g}4[Y?2:1UaM(W2k]2w7g}4[g,:2oaM(K2k]2w7g}4[E,:2UaM(G2k]2w7g}4[U,:3oaM(hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F<2<1]g?hQ4A0jdxcg1w4M]7gj}2<1]g?hQ4A0jdxcg104g]50h}2<1]g?hQ4A0jdxcg1Q9}80A}2<1]g?hQ4A0jdxcg204M]4wk}2<1]g?hQ4A0jdxcg1Q9}7gA}2<1]g?hQ4A0jdxcg1Q9}7gA}2<1]g?hQ4A0jdxcg1g4g]5Mh}2<1]g?hQ4A0jdxcg209}8MA`)c?g380g$c?w3M0g$c?M0E0w$c01>1w$c01g0e2#c01w1w2#c01M2w2#c0201M3w$c02g104g$c02w1w4g$c02M1w4M$c0301Q9#c03g2g9#c03w0wb#c03M28b#c04030_g4%c04g38_g4%c04w3g_g4%c04M3o_g4%c0502o_M4%c05g3E_M4%c05w3M?8%c05M3M0w8%c06`c06g0o1M8(g<g0YvY^2]2M1w4M(2M<802M1w4M]1g[2]2g104g(2]301Q9*6;g0YvY^2]2g1g4g(2]30209*7M<g0YvY^2]2M204M(aM<802M204M(bg<802M2M4M(g]4w3g_g4)gM<802M3I4M(mg<405M3M0w8]4[g]4g38_g4)pg<404g38_g4)z;802M105*g]4030_g4)C;404030_g4)g]3M2sb*g]5M3M0w8%g0YvY^2]2M1w5*JM<802M1w5[g1}g]3g2g9*Nw<802M1A5g]8M1}WM<802M3M5w]3M2}@M<802M0I6g]7g[3w4>802M2w6g[4}e04>802M2w7g]806}g]3g?b*g]5M>M8)hw4>405M>M8]g[ow4>405M0g0M8}4}t04>405M0g1M8]w[g]5w3M?8)xg4>405w3M?8:5{B04>405w1?g8:5w[F04>405w2w0g8:3w[J04>405w3w0g8:5{g]3M?bg(MM4>g0YvY^g]3M3Ubw(Pg4>403M3Ubw$g0YvY^SM4>80301Q9*Ug4>404w3g_g4)Xw4>40Yv_o_g4)ZM4;3w0wb*2w8>405w3M0w8)5w8>40Yv@o_M4)b08>802g104g(2]2w1w4g(cw8?18#h08?1!kw8?2!rw8?1!v08?28#Bw8?18#HM8?1405w1w0w8:3{Mw8?1802M0w9}5g[Rw8?18#WM8?18#_M8?18#4gc?18#8wc?1!a0c?1!g0c?18#k0c?1405w0M0w8:3{owc?1!qwc?14#uMc?18#zMc?18#Ewc?2!Igc?18#Mgc?1!PMc?18#Wwc?18#@wc?18#3Mg?18#8gg?18#cwg?1!hwg?1!m0g?1405w2g0w8:3{qMg?2!Xg8?18#xgg?18#Egg?1!Hgg?1405w3?w8:3{LMg?1!QMg?18!6dOt6AKrM0Au01zomNInTtBomJvpCU0oT9QryVL06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP02hA05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZzsCcPcBZEtRZxsCQ0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ06RBrmdMuk17j4B2gRYObz4T06pFrChvtC5Oqm5yr6k0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQonlUtC5Ig4tcik93nP8Kcjs0sSVMsCBKt6p0hQN9gAdvcyUNdM1CoSNLsSl0hQN9gAdvcyUNdM1CrT1BrA17j4B2gRYObz4T07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB071Lr6N0hQN9gAdvcyUNdM1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQp6BKg4tcik93nP8Kcjs0sThOpn9OrT90hQN9gAdvcyUNdM1Pt79OoSxOg4tcik93nP8Kcjs0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0s7lQsQ17j4B2gRYObz4T06tBt79RsS5Dpk17j4B2gRYObz4T07dQsCdJs417j4B2gRYObz4T06pOpm5Ag4tcik93nP8Kcjs0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg1Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP```<r<1M<8[O04]380g]2g&4&bw>fr__SY2[f01}Y04}U{c[2&3w<b;w[E0w]2w2}S0c}4;M<w[6[1:M<8=o[1w}U2*1&i<f___SY2{U8}3ww]1i{c{w[2[5k>3@__ZL0w}1w2}608}g{4;g<w*1A<1;8[E0w]2w2}d05[M[8[1w[rw<g>12[70e}s0U]3g0w}c<l<2{o[7w<1<1w}104g]40h}7^g*1P;g<o[o14]1w4g[2*g&vw<4<6[60j}o1c}k4g(8&8g<1<1w}1Q9}7gA}6^g*2a;g<8[A2g]2g9}907*g&Aw<4<2[20I}82M]1A&1&a;1;w}28b}8wI}t08*w*2G<3w<c[MfQ1:30_g}w&8{w[Jw<Y<3[czZ0g:OfQ}8&2{8[c8<1;M}3g_g4:d3Z}2^w*3f<1w<c[SfQ1:3o_g]c01}1{8[1{S;4<3[9z_0g:CfY]1g&2{8[dQ<1;M}3E_M4:ez_}204*w[2[3C;g<c[Y?2:3M?4}2*g&X;w<3[f020w:Y081]E1*4&f4<1<c&f020g:bw&4{g}3W<1M+60s2]w0M4:201*4^g<8#g0g1]g2M]1I>1g<2{o{A<3#50f0g:Vgg*4&h;M#R504:101*1&'
;;

'armv7')
b64=$'35502 17752\nmd5sum:98ddff82e0ebda71faf6d0b936ab2bd7\nsha256sum:f9744d050b83ff249c6c20666da5f5364e8d32163241818a0be56aada5fc926e\n000000000000000000000000000000000000000000000000000000000\nq81c8UMgwEe6U7kXzEz2wUg4\n000000000000000000\n000000000000000\n0jUM4wwKazca3x\n00000000000000\n0jUWcMEe41c2cg\n0hQN9gAdvcyUQ\n0000000000000\n04@ezca3x13\n00000000000\n0000000000\n0jUWcMEe4\n000000000\n00000000\n0000000\n000000\n00000\n0P2fU\n0000\n000\n01s\n0g\n04\n00\n0A?3M9<Y2g?f\n032gVg?k@cy<`.Kc1c2cg>^>^>^>^>^>^>$\034vQlchw41>)0c0a?1=3g<3Ug]g01jg08?602w07?r0.!01g8M?k2c<k[40><1gL<kbM4052Y108w2?2k1w?1w[g02;82Y?20L>0wbM40U;e]6;1]g<3Q;Z;fg;A;9]g;4;kulQp!=1w<1;1iVnhA52Y?1gL>0kbM40X;eM;4]g;g;k]M<4telg2r@8yTrU9_VhQNbg1Mu1CIbD4nQ0c;z]g;k;V301w]2c;C;N1LJmGG3zf7bTQtTEBsWDa4Qqnk!{309=M09}2Ac.[c0503i#g;mw4*4w<4o%28<3Q#i;4#8;7c%1;11>*i;lg%4w<84%18;D>*i;OM%4w<8w%1]f>*g;oM%4w<5I%1;1E#i;og4*4w<9Y%18;1#w;rw%4w<bQ%1;2L#h;zw%4w<3Y1*18<3X#g;G#4w<4w1*1;2R#i;dg4*4w<2M%2;1W>*g;U#4;aI1?1kcg406;140501C>?F1E?9]i?I0Lw4?3MN>0o;4g0k09w1?1Icg406;1405026>?x34101w;h01g?5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB06pLs6lK07xJomNIrSc0s6ZIr01CsClxp01Pt65Q069RqmNQqmVvpn9OrT80pClOsCZO07xCsClB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80pCdIrTdB07dQp6BK07dQsD9zq780oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1yqmVAnS5PsSZznTpxsCBxoCNB07dQsDhLr01yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs01MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01QqmRBs5ZEondEnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T.tcik93nP8Kd-1?8?w020.0>02?8?w03?80>01?80>02?8?w010>0>02?8?w01?80>02?80>010.0>010.0>01]g030d01<g=behBwo<g0Sw4?1;2nApo6<30ek1<g;56BF3g<w3M>[1gL>0n;62Y1,;sbM405M<agM>0n;G301,<2Ic.05M<b0M>0n;J301,<2Uc.05M<bMM>0n;M301,<34c.05M<cMM>0n;Q301,<3kc.05M<dwM>0n;T301,<3wc.05M<egM>0n;W301,<3Ic.05M<f0M>0n;@301,<3Yc.05M]N>0n;1341,;8cg405M;MN>0n;5341,;ocg405M<1MN>0n;8341,;Acg405M<2wN>0n;b341,;Mcg405M<3gN>0n;f341,<10cg405M<4wN>0n;j341,<1kcg405M<5wN>0n;o341,<1Acg405M<6MN>0n;s341,<1Ucg405M<7MN>0n;x341,<28cg405M<90N>0n;B341,<20c.05gk?8gM>0l1M?y30101kz?2cc.05ik?90M>0l5g?B30101ko?2oc.05io?9MM>0l8<E30101kD<cc.05wc?10M>0m1<530101o5<oc.05wo?1MM>0m2<830101o9<Ac.05wE?2wM>0m2M?b30101oc<Mc.05wQ?3gM>0m3w?e30101of<Yc.05x<40M>0m4g?h30101oi?18c.05xc0.MM>0m5<k30101ol?1kc.05xo?5wM>0m5M?n30101op?1wc.05xE?6gM>0m6M?q30101os?1Ic.05xQ?70M>0m7w?t30101ov?1Uc.05y4?7MM>0m8w?240JWlQ?eI8wbTE1e0JVgjwD@keU8_w2f2@VrgC>?NE_y4IGcUHjSLek0NE_y4IGcUGPSLek0NE_y4IGcUGjSLek0NE_y4IGcUFPSLek0NE_y4IGcUFjSLek0NE_y4IGcUEPSLek0NE_y4IGcUEjSLek0NE_y4IGcUDPSLek0NE_y4IGcUDjSLek0NE_y4IGcUCPSLek0NE_y4IGcUCjSLek0NE_y4IGcUBPSLek0NE_y4IGcUBjSLek0NE_y4IGcUAPSLek0NE_y4IGcUAjSLek0NE_y4IGcUzPSLek0NE_y4IGcUzjSLek0NE_y4IGcUyPSLek0NE_y4IGcUyjSLek0NE_y4IGcUxPSLek0NE_y4IGcUxjSLek0NE_y4IGcUwPSLek0NE_y4IGcUwjSLek0NE_y4IGcULPRLek0NE_y4IGcULjRLek0NE_y4IGcUKPRLek0NE_y4IGcUKjRLek0NE_y4IGcUJPRLek0NE_y4IGcUJjRLek]532vVhgwD@k3c8_w0y2jVM?kKcu_OY1Q___WA0B>2g;b02vViMMD@kI89_B?2fU0cMz@<5fx0y2fU1X_bM4oc9_B0P2iVM?k@cu_OY14_YLUrgC>2M9w4032k108g;U09_Be32vVg?z@03c8_w0313UacvEe4E89_BgN61Uc4gIe4288_w7LYL0hwMD@k3c9bD?1jUNX_bM4j_O_xt2o1070C>2Y9.0D;4MMD@lc89_B:?MQ@k288_w?1jUNX_bN4gg2TFd32vVgcMAKs?5fz0w?2yw0D@k?8_wsf__WYH__@I18a3z632vVgcMz@?8cfB482ZW2gC>209.0w;7wz>3A9g40Qf__Ww]gg2TFUe2vVgXwz@?M9XB0,UN4<E?5bz0c3wUh20Lgz409_B0y21U<z@01447y0i12Uw4MYukcc2fwsP3LVwcNwe.c9fB0w1hUiP48@3T__Yq303wUh20LuwwgMzzK4ReUWMMEe4101Pz130z4.(0z4.(0z4.(0z4.(0z4.(0z4.(0z4..@c1M8PyEP2wUggM8N0135Pz132KVuf__NE1Ma3z432vVgcMz@?M8fBOL__WHwB>2k9g40U2g10f1fbuA0cd3Bg4evVnjgju8J05fz142fU01gEe4848TB322dVgI<EA4V_B1g2wUg4gz@0z___H081gUHE<E12a3zdf__WM1wkeaL<a0a2wUQ8?eE1cd3B?1jU_3__NHI4F_B0h2fU?wAuk?5bz8g?6y032eeU3kXzEz2wUg4.Kc0c2cg>+0c2cg>+0c2cg>+0c2cg>+0c2cg>+0c2cg>+0c2cg>$030z4.ckKc4ca7BU___6w4wEedwcF_B:?ww@locF_B:>AA@k?5bzeg?2w6wEec08a3z402dUwEgEe44883B422dVrixPu7S_L_H?1gUPc?dGSctTx>0jUP;EkcF_B>ywUMcMBes0w9fBX_X_WM1wke8U<a9kc2U@hs2uc0sa3zY96vVv2ND@k9A8_w2X2fU294iefOmQPz1a2dVgwMEe41aa3z0h2wUMo0Ee7x_L_H0a1gUyI<E4d9DB1M2wUg?k@c64a3x2P2w>EwEe44J8A5c_YLUrf10ec0sa3x0h16UwHwwu01cf7B0Q0AU>QEe6sdifwB4O5U0U0ku45k8fwZ___6Kf__@FI8p_B0y2fU>Aw@n1___Go56vVhwgzu85k8_w1g2wUsT@_@I0E53ybM?2zgND@k12a3z0P2kVM20A@mT_L_H061gUw6wE1f6__Yqa06vVg?z@2m_L_H6M?Www0Ee44E9TBC_X_WM2gke860a3x2M?6G3@_@I?5Hz5M?2wwMDuk?5fz07235gMMDuk?5fzY4334gA0Ee5QQ8TyY8@ZW9j@_@I?5Hz2<2G_@_@I?93BEvX_WM>Ee6U09_B?2fU7D@_@I1Aa3zYf__Www0Ee6K_L_HY___Www0Ee6H_L_HVf__WF>D@k50a3x0h2fU7f@_@I0w53y1w?2w48Eee4_L_H061gUFj__NE80a3xDLX_WYH__@Fw09_B?2fU67@_@LC___Gz_X_WM?Aem1_L_H022wUkg0D@k54a3x?2fU5z@_@Lt___G52c10cwe?1w9.0Q2c10cgz>2k;k2c108jZ__Y0_v__U0M?fMc?2w3<20M?dMb?3A2M?Y4sJWg1gke8gQ4TykM?2w5MEe5r4a3zwfX_WM1wke85<anh2wUMk0Ee5X_L_H?1gUM?lx45<W022wUMsgEe450a3x4d2dUL17Luxw_L_G1p16U0p>e0108DyiLX_WM20Ee440a3xh_X_WM2wEec54a3x052wUgAwEe41g4jy202wUjj@_@I48a3x0h26Uwk0Ee49EczDb_X_WMw0Ee44EcnD4vX_WM?kecI<a532gVk1.@8a<a032wUMswEe454a3x032dVlL@_@I80a3x8_X_WMk0Ee4gQ8TyY4uZW1_@_@Ecg8TBe_X_WM1wEe4a8a3z1g2wUgMgzu8>8rB0LX_WMMMDuk305nx3<2w0MQ@k?5fz2g?6w0wBKky05bz1w?2w0wEe44c8TB072dVs0_Ee480a3xbfX_W@7__@Ew09_B1h2wUg?z@3N_v_HTf__Wx3gzubMxXTE202wUg7@_@Lf___GC0E?f1fbuA3053zRd1dUBI?cE1053z072wQMugEd46?3q172hVg0MR@k?5fz072w0Mc0kec0Aa0jmM?2Ay0zu820a3z212wUufZ_@I?53ze<6Jct1ed08wjzj32tVm8gguf3jW3xAhf3U4w0Dul3gSjw3O10UYhLEe6ggKrwy52dUwkgEe4?e3z2fX_WM1gke99<qg184UUMwDum8U9TB3N10UY8_Ee6u8ufwAc2tVpg0Dums8ufw022iUc0_E@.89bw0P2CU<l@cL<a9b6vVgywzu8bI8_wY23dUk>Eecb8a3x2w2wUu3Z_@Ia4a3x1M2wUm7__@I?5Dz2<2A>Eecb8a3x202wUg10zuk4o8TBRvT_WMwgEe490a3xlL__WMk0Ee7kQ8TyY8@ZW8xgzu854a3x?2wUZHZ_@I?53z8M?6A0O1eecg9TBy02tVgYMgef4rW3xA4fCU9>Dumk89TBAkfCU090Be32rWrwMf__WDM0D@k?8_wx_T_WM5gEefB___Gr02vVg?z@25_v_H1g2wUtjgzubMzXTE292hVg0MSuk?5fz092w0VX__@GF_v_H?2gVpLZ_@I.a3xd02vVg?z@1P_v_HWL__WG7Z_@I?93BA_T_WM>Ee4o09_B?2fU6LZ_@Ly___G30E<w9?1o2g?Z0w?bw8?3Mg2TFrd1dUwwgzuat_v_HS1evVg1wAek0ka3x0h2fU0o0Ee5i_v_H?1gUQc<GY4V_B1w2wUg4gz@1c_v_H.1gUyI<GE4V_B1w2wUg4gz@16_v_H.1gUAk<Gk4V_B1w2wUg4gz@10_v_H.1gUzE?1E8c9TB0M1jUXI?cG5<a0w1jUTE?1E409nB033gVg?k@ds0VY5?2f<MEefeuV_J422dUwMgzu84uUTJ332dVgD@_@I?53z6M?6J0xPu7M8cTxb2evVhxwzu9g4a3z1w2wUgMMDuk288_wnvT_WMo0Ee59_v_H5g?WwwMDuk305fzmg?Ozo<E205fzk<2L02D@k?8_wIz@fUJ0wM@4.a3zY27dUh0wzubJ_v_H?1gUVo<E1ga3z0M?WwkgEe4809TB9___WM10Ee450a3x8vT_WMg0Ee5IQ8TyY82ZWa02D@k64a3x?2fU0zZ_@LL___G232tVgc0k@d_?3aow?2w80k@cZ<q102lVg0MQek?5fzr0av1g?zM?8a3z412dUx0wzunc_v_H?1gUZX__NFg8F_B662dUy>Eec60a3x432tVg8wz@0y_v_H1w2wUgXZ_@Lq___Gwg2lWg0MQek08dvB?1jUOo?1E?5bzDw?2x02D@k?8_wtDKvXg>Eecg88Ty17KdXrbZ_@I?53zNf__6J0xPu7M8cTxW26vVhxwzu860a3xc12wUM8wz@07_v_H1x2wUgs0Ee68_L_HLL__Wwg0Buk0cd3B?1jUXw1DMk?8Y0GL__WH01D@k?8_wN_P_WWX__@GA0p_B?2fU8r__@Gs0p_B?2fUcf__@E?5bzDL__2JD__@G109nF033gVg0wR@k?5fzhM?2w?kKdV__Ya032wUQxXD@Qg88Ty312dUwhXzuQcc8TBw_T_WM?keel__YqQ27dUv0wPu508p_B662dUwo0Ee5g4a3z332tVg8wz@3n_f_H1x2wUgs0Ee5o_L_HzL__WE40BuA0cd3B023nVg?k@cB<a?1iUVP__ME08a3z412dUx0wzulF_v_H?1gUTL__NHA89_B662dUwo0Ee4w4a3z432tVg8wz@2__f_H1x2wUgs0Ee50_L_HtL__WHM0D@k?8_wxvP_WSP__@GM09_B?2fU87Y_@JE___GQ27dUv0wPu6s89_B662dUz>Eec60a3x0y2fUaLY_@I60a3xB_P_WSf__@E?5bzz<2Dg0D@k?8_wRL__Ww?kKdn<ap02vVg?z@2Q___G9icyxeisYIL82<K0w?cM8?3w2<f0s?bM8?381w?20w?3M6?381M?S0k?5g7?1U1g?z0o?5M5?1g1g?F0o?3M6?3s1g?E0k?eg5<g1<_0c?30p>2s6.0A1w10bzO__ZM6.0T1s10d0n>3UYv__I1s101Mn>>5M40ef7__Pw07@k?8_w|0j0z4.ckKc4ca3BU___6w4wEef8c1_B:?ww@ngc1_B:>AA@k?5bzT20v1g8wzM.98c51f__WKw07@k?8_w|0j0z4.ckKc4ca3BU___6w4wEedUch_B:?ww@m0ch_B:>AA@k?5bzz24v1g8wzM.98c5RfX_WFw17@k?8_w|0j0z4.ckKc4ca3BU___6w4wEecEcx_B:?ww@kMcx_B:>AA@k?5bzf28v1g8wzM.98c5FfX_Wx10buBMg9_Bs32vVgh0z@03c9jD2d1dUw4gEec30a3x132dVv7X_@Jkc9_B0h2wUMcMBes30a3x132dVuLX_@J0c9_B0h2wUMcMBes30a3x132dVunX_@IIc9_B0h2wUMcMBes30a3x132dVt_X_@I?a3z2d2dUx20Lux85g40E;9w<28;z]x0buA8wbTEfg<4]b;g;1;1]9w<4]R;g]c<1]1w<4]k;g]U<1]3g<4]B;g;18<1]a;4]2;g;1w<1]2g<4]a;g#bg<79y?1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD]7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA]t6BJpn0W879Bomgwpn9OrT8W82lP;oC5A865OsC5V87dRoDdzsCBMt3Ew9nc0pSlQgR1lt6BJpjEwt6ZL86RxrDAwon9DtmRBrDhP?1DpnhOtndxpSkwa5d5j4oF86pxqmNBp3Ew9nc0pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA]2lIr6ga;pSlQgR1lt6BJpg?t6BJpn1vpCVScm40t6BJpn1vpCVScm4W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZzsCcPcw1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw?7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD02kMcjpIr7w09j0Uu}Bc3xUbikMcjpIr7w]lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng0>SZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb}w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB86xxsSxBsOU]lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ>SZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb}w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM;w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt.dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK]4BC83Nmgl8@86BP86tFtClKb21xsTdFpSVP87hEpi1SomNRpi1QrO1Qq65Q87pxsCBxoCNBeO1Lt6xBsDtFsSkws79FrDhP86BQbw19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK?1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1voT9zcP8wf6pFr6lYbjUwmPNmgl8@ng;1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt]6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0fg<4]b;g;1;1]9w<4]R;g]c<1]1w<4]k;g]U<1]3g<4]B;g;18<1]a;4]2;g;1w<1]2g<4]a;g~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!!-d0b?1E2M?72Y10.<3g>?3;309<d;d1I?1A;kbM406M;g;q;62Y101M;4;ZvX_rNw1<5;P0c<o<1c>?2w<fE1<b;4]c]c.?w<ew;k;4g<1s<182<4g<5w6<i;Y.?1c;8;_L__rNw6?3___ZL><f3__S_61g?@L__rPk~82Y1)0f/////////0A?3M9!!%3Y6M?E1Q?fMr?347g0.1Y<Mu?2c7M?l1U?9wu{_1I?cMu?3Y6M?Y1U?fMr<U7M?y1Y?fMr?2M7M?Z1Y[3Y6M?b2<fMr?1g8<D2<8Mv{_1I?eMw?3Y6M?524?5Mx?3Y6M?E24?eMx?3Y6M[3wt?3E4M<g<agM>108w{Mt?3E4M<g<cMM>1s8w[e0s?3E4M<g<fwM>1Y8w[dgs?3E4M<g<1gN>2s8w[4t3gPEwa4teliAwcj8KcyUN838Mcz8Ncj8N82xipmgwi65Q834Obz8KciQQag11c;65Bom9F0.C;1jsJgg062wt12.90wE44wgk0hk15Mco0hA16w8s0i81?w;8}40.t19.Poj40I0E?dga<8;2}1?17gig1cS4N0309<U2g?2]w}g?hQ4A0jdxcg0Q6M?e1I<w;8}40.t19.Poj40R0E?dgb<8;2}1?17gig1cS4N03gr<Q6M?2]w}g?hQ4A0jdxcg0Q6M?d1I<w;8}40.t19.Poj40e0A?3M9<8;2}1?17gig1cS4N03wr<Y6M!-3Q-c0>}6.{3?8}4M1=M03}3c0M{c01[Nwk{3?k}1w6=M06}1o1w{c01M}i0w{3?w}309=M09[Y2g{c02w}I0E{3?I}3gr=M0c[Y6M{c03g}j2c{3?U}1gL>[M0f[obM4[c.[72Y1[3014}20L>[M0i{c.[c.M}F301[301g}9MN>[M0l!c05w#?3,}awR>[M0o0.#g0YvY8;I0E)I02M<b0a=w0b01w<3c2w-2M08;c0A)A02;3gr)c01I#g0YvY8;e0A)A02;3wr)c028#g0YvYo;f1I)Q0bw<3Mr=g0d?w<3k2w-2M1]R0E{2?I06]wb)b?w;o2M-2M12;60I{2?I06;5wb)b01w;sbM4=4g08;q0I)I0lg<6wb=w0b01w<2Y2M-2M1H;D3410.;101k06;1wL>=g07s;obM4[4.?8;Q0I)I0Dw<d0b=w0b01w;kbM4=3M2G;52Y1[1?Y06;9MN>=l!g0YvY8;S0I)I0Og<dwb?3U]w0b01w<343)2M0o;P1I)Q02;d0c)b0dw<3g3<z0c<802M0o;81)0I02;5Mg)b?810,4<u.<802M0o;Q14)I02;dgh)b02s1?3k4g?508<802M0o;R1c)I02;ewj)b03s1?3E4M?L0o<802M0o;Q1s)I02;6go)b01w;w6M-2M0o;E341=1k0hg4?a0N>.]g0l0641?2Acg4<g<405g1P>?F3k10>;101k06;agM>=k08g1?2Ac.0a]40502j>?P30102M;101g0EM4?fwM>0s]g0k0bc1<kcg40a]405032>*40f7_6;bMy)d02U<2Y8w{403g0o;j2c)U0P.0.Mz=g0e!g0Yv_q>?d1I{2?M0U.?1ML>[g0h0eQ1<wbM4[40Yv_S>?D341[101g?w8;M>[g3N_Nw2<M2g{802g08;f0A)E06;4M9)a?w<1g2g-2w0u0w*g;b08*4w<3Q2*28<1m0w*i;pM8*8;8c2*1;3m0M*i;Ag8*4w<a42*18<2O0w*i;OM8*4w<dM2?1kcg406;140503L0w?F1E?9]i?I?Mc*4]A3*1]x0M*i;c0c?3MN>0o;4g0k.83*1;1a0M*i;mwc*4w<6A3*18<1Y0M*w;yMc*4w<9I3*1;2F0M*h;Kgc*4w<dg3*18<3D0M*g;@Mc*4w;M4*1]u1%i;c>?6MN>0o;4g0k.c4*18<1n1%w;sgg*4;7Q4?24cg406;140502f1%g]6dOt6AKrM0Aog1zomNInTtBomJvpCU096g0oT9QryVL06dOt69BpSBKkOVL065Ir5ZFrn1IqmlAnSpyqnhP06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01CqmVAnTpxsCBxoCNB07dQsCdJs417j4B2gRYObzg0nRZzu65vpCBKomNFuCl&07dQsDhLr417j4B2gRYObzg0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80pCZMpmV&06pBsD9LsA17j4B2gRYObzg0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T06RBrmdMuk17j4B2gRYObzg0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0s6ZIr417j4B2gRYObzg0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1CsClxp417j4B2gRYObzg0s7lQsQ17j4B2gRYObzg0sThOpn9OrT9&05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB07dQp6BKg4tcik93nP8Kd01vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kd01PrD1OqmVQpA17j4B2gRYObzg0oCBKp5ZxsD9xulZSon9Fom9Ipg1CoSNLsSl&06RxqSlvoDlFr7hFrBZxsCtS07dQsD9zq79&07hFrmlMnSpKtz5xnTdQsDlzt01DpnhOtndxpSl&05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br2VAumU0bD9Br2VMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bChxt640bC9PsM0KoSZJrmlKt?Kgl9dbC5Qt79FoDlQpnc0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~1I;7]w<fg<3Q;9#1-K;ZL__rM8;o>?6.?3g;3-g;4;e]I;2;j.0.M1?2?w?1]c;4;4;4]3]w<cM3?3c0M?@w4%g{18;____rM8<361g?Nwk?5]3-8;2;lg<fX__SY2;60o?1w6?1]1]4;4=6g;9]w<5w6?1o1w?Y.<c=1]w<1J;2g<48<182<i0w?ew;3;4M;g;8;tw;4;6;c0A?309<c#4=74;1;1w<3M9<Y2g?s.*1]g<1Y]g;o<2M2w?I0E?8gg%w=ww;4;6;d1I?3gr<8#4=8w;1]w<3Mr<Y6M0.0w*1=2g]g;8<1c8M?j2c<g#g=Cw;U;3;52Y101gL<4#4;1;ao;f]M<1wL>0obM?1#1]g<2O]g;c;sbM4072Y<g#g=LM;o;3;82Y1020L?3w;1-4;2;cw;1]M]M>?c<F#1]g<3d]g;c<2Ac.0F3<fw#g=QM;w;3;D34109MN<c1%4=dw;1;c=2scg?bw#g;4<3x]M?s)Oz4?34#4=Yg;s=G3k10fMN?3w#4-4;2%3scw?s0w?1E<1y;1;1]9]M%j3I?ac4%4=4g;c%eY_<7>*1{'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'147566 73784\nmd5sum:b6bca7df2ff602aba95eba0ed76cd4f2\nsha256sum:d5fb39ac64ccd1c5aab49cfe64077bf9d087f4e0c667943ad3f0cb87cd278992\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0g4tcik93nP8Kcjs\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n0Mc3\n000\n0w\n00\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n0epBmLDSplEhZ1wwd4\034vQlchw810g{?c05g01=1{3wp0g]w>4?e?704?7?r?4<5!{43E}gew{0g]g<o<8_g}zZ0g:2fQ1:3U1g]20a{01]2<1w>23Z}8fQ1]w_g4:e01}U04}8{g<4<O04]380g]cw1}9{A{g[kelQp0g>2MdM]b0T}I3s]14[4g[1[1hVnhA1w!!;g[5bBt6g4<2fQ}8_g4]zZ0g:@08]3U.}4[1<1g<3<hQVl07Gu62c_cSxZc@FEMg@oXsOwDP2f:c<z;g<o<gi0h02og.:z<9w>cgrXlGGwUPNOZZ7tW9neFOxd6BR!{?c02g104g$c05g>g8-sM>19w$uw>1!4<2!Gg>1!hw>29w$_g>19w$oM4?19w$hw4?19w$OM>1!Vg>1!j04?19w$c04?19w$qM>1!5g4?19w$g04?14#9M4?19w$lg>19w#g>2!nw4?19w$ng>1!Cg>19w$wM4?19w$2M4?19w$v04?19w$kg4?19w$Qg>1!qw4?1!b<2!y<19w$Vw4?1!JM>1!lM4?19w$Hg4?1405g1M.8:3{Qw4?19w2w30bw]8g[M04?1405g10.8:3{Cw4?1405g2w.8:3{y04?1405g3g.8:3{05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSU0nRZFsSZzczdvsThOt6ZI069RqmNQqmVvpn9OrT80oCBKp5ZxsTdLoRZSon9Fom9Ipg1UpD9Bpg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U07dQsClOsCZO05Zvs79FrDhCqmlBpj4Oe01Pt6hFrw1CrT1Brw1MrSNI06pOpm5A06pBsD9Lsw1Pt65Q06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1Dpnh3k5lQqmRBnTdQsDlzt01QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs{w01?4?g02?80.02?4?g02?c?g03?80.02?401?1?k0.02?80.01?4?g02?4?g02?4?g01?4?g01?g0Yw4?1{K96m1w?1g3Y0g?4<behBwo>g01M8?1<2OApo6>30182>g<BV6m1w>w0t.}zZ0g:5w}1w5w]13Z0g:5w}3M5g]1zZ0g:5w[o_g4}1.:5w}3wc[w1.:5w[ocw]101.:5w}3wc}1w1.:5w}10cw]201.:5w}30cM]2w1.:5w}28cw]301.:5w}3gcw]3w1.:5w}3Ucw]401.:5w}10cM]501.:5w}3wc}5w1.:5w}1UcM]601.:5w}3wc}6w1.:5w}2wcM]701.:5w}3wc}7w1.:5w}3EcM]801.:5w[Ud}8w1.:5w}3wc}901.:5w}1wd}9w1.:5w}2Ed}b01.:5w}3wc}bw1.:5w}3wd}c01.:5w}3wc}cw1.:5w[8dg]d01.:5w}1odg]dw1.:5w}3gcw]f01.:5w}3wc}fw1.:5w}2Edg[2.:5w}3wc[w2.:5w}3gdg]102.:5w[odw]1w2.:5w}3wc}202.:5w}1wdw]2w2.:5w}2Mdw]302.:5w}3wc}402.:5w}2Ecg]4w2.:5w}308w]5w2.:5w{0g8:602.:5w[8dM]702.:5w}1Ucg]7w2.:5w}308w]8w2.:5w}1g0g8:902.:5w[EdM]a02.:5w}18cg]aw2.:5w}308w]bw2.:5w}2M0g8:c02.:5w}18dM]d02.:5w[Ucg]dw2.:5w}308w]ew2.:5w}3M0g8:f02.:5w}1EdM}z_0g:9w>1g=13_0g:9w<k=1z_0g:9w>1U=23_0g:9w<s=2z_0g:9w>14=33_0g:9w>2s=3z_0g:9w>2o=43_0g:9w>2c=4z_0g:9w>2k=1>w:5g<c=1w0.:5g<g=2>w:5g<o=2w0.:5g<s=3>w:5g<w=3w0.:5g<A=4>w:5g<E=4w0.:5g<I=5>w:5g<M=5w0.:5g<Q=6>w:5g<U=6w0.:5g<Y=7>w:5g>1=07w0.:5g>18=8>w:5g>1c=8w0.:5g>1g=9>w:5g>1k=9w0.:5g>1o=a>w:5g>1s=aw0.:5g>1w=b>w:5g>1A=bw0.:5g>1E=c>w:5g>1I=cw0.:5g>1M=d>w:5g>1Q=dw0.:5g>1Y=e>w:5g>2=0ew0.:5g>24=f>w:5g>28#6011@8y1wKCC0UBZ80i0jw&204MYE6R2eao227Mg?7UAvYx@<608w0bE?2wbMM0_A6Z__Zb6011W7?8jwg?7EFwc8v20.4U;6011@a21wKCC0UBZ80i0jw&o047Uc862Wqo3ynQw181e&1w0gvz.obFFwe9vi04w4U&6011@e21wKCC0UBZ80i0jw&o047U8862Wqo3ynQw181e&1w0gvxowobFFwe9vi04w4U&6011@3y1wKCC0UBZ80i0jw&o047Uw862Wqo3ynQw181e&1w0gvwowobFFwe9vi04w4U&6011@by1wKCC0UBZ80i0jw&o047Ui862Wqo3ynQw181e&1w0gvyowobFFwe9vi04w4U&6011@f21wKCC0UBZ80i0jw&o047Uo862Wqo3ynQw181e&1w0gvwEwobFFwe9vi04w4U&6011@521wKCC0UBZ80i0jw&o047Uq862Wqo3ynQw181e&1w0gvx.obFFwe9vi04w4U&6011@cy1wKCC0UBZ80i0jw&o047UW862Wqo3ynQw181e&1w0gvzgwobFFwe9vi04w4U&6011@dy1wKCC0UBZ80i0jw&o047Uu862Wqo3ynQw181e&1w0gvyMwobFFwe9vi04w4U&6011@121wKCC0UBZ80i0jw&o047UG862Wqo3ynQw181e&1w0gvxMwobFFwe9vi04w4U&6011@921wKCC0UBZ80i0jw&204MYU6B2e<6<1w08hye0248zA062BY8022jg>60gw8bF>Ib20.ASC.xY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1>uyC0MxY8020jw?gC0204MYw6B2e<6<1w08hye024wzxg88dYt1W4v7gex7Ol0ohY8022jg>60ow8bF>Ib20.ASC.xY4?1@e7_8vyC0UBZ6011@244w4Uo047E8?xe1>uyC0MxY8020jw>6>49w.1cf11Fgzw>1w08gyyg?2iMw089cFw88v1>vzx_O7U<o2208KA?2AI5022gv__ozMovCcUdvT_iNw0guzR_LZb8?xe04083A>1w4?1W0248FCC0MxY8020jw>6<1w?12o080j3Owq48U8f__iM>60204MYA6x2e<60gx2a1<o124Mzw>AIl022gg?9iN40891FweFvfwoqDP__UgU<o<6>49w0g0AzjX2hRlUkyBZG1kFuhha9DQg02C1u3EFvnxbaDTw_M12@4wzvi?oTww081e_LZ2fvX_0zSwK4EVAbw8eh?9zCc0M4gClq0vk?g3CphC1Zz0d44qo3inQ?49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx`^~0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M120g.eg>60gx2ahVfX_iM)gC0204MYg6t2eao227Pg_Q7XYf_1@TwzxnPU_@7XmM20e7wHKDNU6TVY4?1@47_8vyh@LZb6011W7ArvTMs0891ng20e7zPMTZV@LZb6011W40ofTMY0811udd4vTzPMTY?a0UTvH_iNw0guz?24U4?1Wd3_guLM_Y7H@f_xWWo327Mw081e<o>gC1g@bVYk1w_vow08vKo067X0g1Bef__qjKw087XG02x@Tw0EvxM027VavL_iNw0guxM027Fu1JZv7wrunNUiOdZ4vL_iNw0guxU0a7Euff4vM?M3JU6TNYueKzvT?EvzN@_Zb6011W7?Euw109YUuee3vWUFTnZUSSl_RvL_iNw0guyKStN_ueKzvYnV_QIo047E>zbfw.A4E02e1g?FsmM.A>c0Xo031@Q7X_QIo047E2w2we60.jxU6TZYuee3vM?TVe5@fZb6011W6?8uB0i3NY7022gg?aoA>AI4022g>fU4y?AIv022gfX_ozNUUUh_8b5zecTU_QIo047E7>i7zjhnY?e0U?30e7zzx7@h@LZb6011W7zb8TZB@vZb6011W7zzwTZp@vZb6011W8w08uKo067HE021WWw0EuL?24U4?1Wd3_guLM_Y7H@f_xWWo327Mw081e?12o7wrp7NUQQl_?30e7zb8TYh@LZb6011Wa3__QI?49wueKzvVTV_QIo047E0f__iM[1w0s;gC0204MY06l2eao227M3?cI4?1@57@8vxE0E510g23bV01wvKo0q7XE071@Ww1UvJM0pR0203AWM?fUA?8AL202ug>U3I?20Vu4IZvq02wA7M024V.1we7xb97RUiPNZnvv_iNw0guw>cIn062gfw0guBjUO0ZN2?fv?UuyBCMxxP_sFogU02nAf>ZAAwGvk12267iegxZtLVavm0.jz__S0Ut3UFvl18iDQkkyxZu4I@vsnV_QIo047E>3b6w1wA1w0c7Es02xW0Y0g3RE0e7Eu?1Wg?fON0gAFxQz7avd8FiDQkeIpY55b6v1h2NDMkYIpYQ062gvX_EzMM0k4Vu05xA9yNFjxUkQdZg020e701gvC?q7ULvD_iNw0guxM0k7FufLzvTxjh7Sh_fZb>Zb7w18o5s0o91w06xW40.3xUYYp_s04xAnzzwT@5@vZb6011W7zzx7ZUWWd_nvP_iT018o6g0o7HC06xWW01MuKE0u7HI04xe1>uyQ1OdZFwc8v20.4U>1w?12o>U3I?20V.1we7xbfnTM024Vu4IAvnxbf7Q5ZLZb6011W<OOI_E91o021e>o3xM0o7UGvz_iNw0guw>cIb062g6?8uBM0c7E3M10fmw0UuxU?7F__Zwe412iC5M0o7EQAAGvt8NiDQkeyBZ558Fvhh2anRUiPVZovz_iNw0guw>cIEfW2gh7U_QIo047E.1zW2nU_QIo047Eu1JAvfX_ozNUImcUQvn_iNw0guyg0o7HC06xWW01MuKE0u7H0g.er018jyQ1OdZ4?1Wao327Mw081e_LZyf3yNoPypZvZb6011W04083Do__Zb<o>gC2g0o7HC06xWW01MuKE0u7HI04xebg78TQg?7EFwc8v20.4U>1w<o>gC1M0m6g_LZyf7wPN7OwImcUovr_iNw0guy8_LZb?12o1?9eBUiPRZ>Fyg?2iNk_o90EfX_iM>6>49wcvv_iNw0guw206fEhvv_iNw0guxU6ShY_LZyf5yNoPww__Zb{601<w1cfc1xgzyC.xYSfZx@@3_wvJU8VJY@f_x@Y3_0vJU6TZYu2KYvcz_8vLE_W7X4?1@b7@8vw?2e9Q_YFeg?2iNc0891_L@2f7zXUT@MIogUbvr_iNw0guxV6TBYS0i2gg40o3PVZvZb6011W7ArvnNg18916011@.1UvE<X8051@Q01MvJE0g180g0zyg?2iOM_U9;o124gE4>1w48gyeg?2yPc0890_LZ2fvX_0zSwK4EVAbw8eh?ajCc0M4gClq0vk?g3CphC1Zz0d44qo3inQn12LMx0aH4o1gqN69o24gRSMxY1s4Ev64^~0GQhym0x4dtI8v0n1a7Nx`0y4gym2J4tscHv6pjW1Z4?Fenj_0481020V<o1248F4>1w88wyWg?aiPc0o910g.eg?E3w202BV0g20ef?ojzM027Vnvf_iNw0guw>cIT061gfo08q4102BNQ062gg>60Ew2bF0g1wf04?3I?2DHzvj_iNw0guxV6TRYY0a2ghw0gvw80u7W8051@Q01MvIyxc0_YIIwfg01U3UB8ZVzV9MFoui3ZTEe03VVIM7Tow?g3JUOOp_0g2wf04.3xUWWd_uvb_iNw0guxV6TZYF022gg>6.y8bF>Ibag1wA6C0UBZ8013uTzXVnZUWWh_8gi0jxw0guw10eBP__Ytev__fPBU6TFY7022gg?aiM?3S9ueKEvTzOanTiKsB_Af@2gkbUWnKC0OBZ0g0Eynx32DQ20.V.1aynzOanTiKiBZu4F9vtaVOn_w_M12ucICvM40E3M1080UueKzvZDN_QIo047EuhJ_v6j_wA1UOOd_1vf_iNw0guw>cIu1J_v7zHETYg0o90Hvb_iNw0guw?1wIx062gg?eOM80891?1rAM?f2Pk0o91?3s@Mw1UuEw0k7HJ0vzvQ01MuJg0i4U4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LYyfg>61MBOAV?2we04.3zM064U88wy@g4083A202BVY?x@onN_QIo047E>3b2P@wk7@_@8_o021eayN_PJU@@d_9vj_iNw0guw>cIu1JUvew.A4>1wa80yWg40o3M?2DHEvb_iNw0guxV6TRY1062ghw0gvw80u7W0g?eO01gvJ?s7X4fX_i_X_8zQ>1ws9sFenxbb7Qwy2bVjfX_iW7N_QIo047E>ob6w.A7NYLZb6011W040U3I206fE0vf_iNw0guxU6ShY_LZyf22OoPyJYfZb6011W.1UuEw0k7Hg071WR018jyQ1@d_4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081eucIzvWDM_QIo047EAf__iTzb8T@pYfZb6011W7j@_QL@_U8YufLzvX2Nx3zxYvZb6011W7ArunNQ08910g1wfaTN_QIo047EuhJZv2jZwA1UOOd_mv3_iNw0guz@_S8Y0g3weMyOoPw5YfZb6011W6j__QI80u7G8051WQ01MuJg0i4UJ0vzvN>uz0_M7HOfYxWZz_ouLw_U7HWf@xW_z_UuKC0MxY8020jLX_ozM10e0XKb5zebnL_QIo047E5f__iYDN_QIo047E.1zWdTN_QIo047EufLAvM40U3JU6SlY_LZyfeyNoPy1X_Zb6011We3@_QI{o09:1w?12o080j3N0n48UFw88vez_EvLM_Y7X@f_x@N>vwh_O7UL021e3TN_QIo047E_L@2f3yOx3w?cfHu1JZv205O7L03OwI30e0g205ynz03OAI?e0g9DS07Op9G1Zz0cw4>g3A6qa0h1ww045tJ0f063a0hb0ioggM5011I.0gpM07vf__9PBUe2BZZ0cFvhhaaDSKi6hYHAw@vl18oTM>cIO0a2gs0fa2P@_U8Yiba4eeM1w4.1oBUM0YFbe01w42pZw1YCiqwvoM381>40V1Cyw4go8011nrg3M1wOw4jM4C44c1g0gr08046s01TP__OsVu3wFvvg3anQkiyFZHAzAvWV8fDRgifZ_>vbaM1wA703OwI_L@2f7yOx3zc0E1080m9uc0faiP?E10Cvo0v9ACE7Sc0O0g?10egpEE1462?glSQ0Y0ocE17A19x130k046M2011D?tY__YDenwUanTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM?7OOc0E91M0YEbfX_wzOEIEgU70a0g205ynz03OAI40a0g9DS07Op9G1Zz0cw4>g3A6qa0h1ww045tJ0f063a0hy0qoggM5011I.0gpM08vf__a3BUg2BZZ0cFvhhaaDSKieh_HAw@vl18_TY?1YIR062gbM08o43?AIQ0q1giM5wA42?AI_LZyfayNoPws0890201ZW>8UA>AI3022gfX_ozOEImcU8Egwfvbbg3TAD4Fx9icFogU0inA?40VI02xebw.jyM027VK011Aj7U_QI>cID0i2gg40U3JUWWd_JuT_iNw0guzM024UJ0vzvN>uzE_W7HYf_1W_z_UuKC0MxY8020jw>6<1w?12o7zPMT_>7VmuT_iNw0guz>7Fu1J_v>7ONs_E90L?xwgc02iPU0U51R0a2gg802iP@_S8YGb5ze1g.A0807TE>zyg?2iM418918Egwfvbbg3TAD4Fx9icFogU0inCM0a4U?20eb?8vBVZ_Zb>3b4P_wA2M0c7Eo031e_X_EzPUIGkUuff3vP0.3zJXLZb6011W7zPMT_1XLZb6011W3g?4w?49wuff3vY>vCFXfZb6011Wc>uA>cIgfS2gbU0ouxUWWh_Rvf_iTwrvTNUWWd_EuP_iNw0guzM024UJ0vzvN>uzE_W7HYf_1W_z_UuKC0MxY8020jw>6>49wuff3vQTI_QIo047Eu1J_v>7OMQ_E91_LZyf7zPN7_oICcU0g3weUDH_QIo047EyfX_iM>6<1w?12o7zPMT_>7V2uP_iNw0guz>7Fu1J_v>7ONY_o90L?xwgc02iPg1851I0e2gg802iP@_S8YGb5ze1M.A0807TE>zyg?2iMc0890_LZyfayNoPw?20V?2web0.jyM026hcvr_iM>OM4_E90I031w6?MjL@_W8Y0beBe7zPMTYw080UFuT_iNw0guxUYYd_uuT_iNw0guzI_LZb<o<6>49w401|0pwHh5nrg3M1wOw4rPXC4.040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hDfKog3?g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc811Y@Vx0g024e4?vzz>7VZuH_iNw0guz>7FyfL_iM?gC0g040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hHfKog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16c@Vx0c01|0pwHh5nrg3M1wMw46PXC41?8gUg01@ec>vBRWLZb6011Wc>uBU6TZYtfL_iMw0vuwg05TF>3yg?aEA>wIfwoFli01wA<AI_LZyfayNoPxc1o918Egwfvbb03T?47VV9M8oikzam4e?BVI02xe>w3yM027VCvj_iY?guA>cIqfO2gb?Muxw0c4X_L@yfc?gvDUIGkUuff3vP0.3w5XfZb6011Wc?guBUYYh_u5d3vtDK_QJ8_vZb401|0pwHh5nrg3M1wOw4gjXC4.040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hVfGog3?g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc8134@Fx0g024e4?vzz>7VnuD_iNw0guz>7Fu1J_vcPW_QI>1w?12ofX_ozM10e0Xmb9ze9nE_QIo047EBfL_iM?2iMk_891XfX_iM>6<1w?12ofX_ozOEImcU@fL_iX?UuyU0c60o031e_X_EzM8IWkUuff3vR0.3w9W_Zb6011W7zPMT_tWLZb6011W53Y_QI807TE4?ZWg>UA?4C9>8b3U6iBmU0o91>abe3WwA4yx40ZYII0fs?8vDAD0xx9idaogU02DA<VI02xebw.jyM047VK?1AgDP_QL?27F>3bdzWwA2M0e7EK031w6?MjL@_W8YM?x@gyPFjxUYYd_k020e77G_QIo047EM?xWnzPN7ZUiOdZhuT_iXjX_QI807TE4?ZWg>UA?4C9>8b3U6iBkY0E91>ab5PYwA4?40V?2wec?8vCM084UI011AonO_QL?27F>3b5jWwA2M0c60o031e_X_EzP?27V0beBe7zPMTYw080UYuD_iNw0guz?27Fuff4vTxb8TT5XfZbdfL_iN?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE15w@px0801|0pwHh5nrg3M1wOw4k3VC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320g8fCog4?x3x?7UUjuv_iNw0guxU6TZYcfD_iM>6<1w?12ofX_ozM10e0XKb9ze8nC_QIo047ExfD_i_X_ozM10e0Xyb9ze6TC_QIo047ErfD_iM?2yP@_S8YGb5ze4z@wA<1w48h2wg>60gx28V>abdw.A3@_Q8Z_LY2fq2UizCgK.V4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6<1w?12o1s4a_240GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx`^0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg02AVtfY0gw4083A>1w48gyAg>6.y2bF>Fb7jVwA3@_O8Z<o72najAwy2bVofD_iM?2yP@_S8YGb5zecjZwA<1w48h2wg>60gx28V>abbz_wA3@_Q8Z_LY2fq2UizCgK.V4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6<1w?12o1s4a_240GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx`^0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg02AVtfY0gK3@_QI>1w48h2wg>60gx28V>abdj@wA3@_Q8Z_LY2fq2UizCgK.V4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6>49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx`^~0GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M120fX_iM[1w0c>80j3N0k48UFw88v<60Mw6bE0g20e1>vzx_O7U8uf_iNw0guw>1we81yW04.3wdU_Zb6011W<61.6bE0g20efDy_QIo047E<o4y0oKw1080UVub_iNw0guww024U?1we1>uyC0MxY8020jw[1w}62EQ04:ao227M509Z2Fw9Evqo327PM_MLEk62bvhhqo7Tk_MMU?2bWobM07yC0UBZ201HWi04w4Xc__ZbOf__iYj__QL0__ZbLf__iXz__QKQ__ZbIf__iWP__QKE__ZbFf__iW3__QKs__ZbCf__iVj__QKg__Zbzf__iUz__QK4__Zbwf__iTP__QJU__Zbtf__iT3__QJI__Zbqf__iSj__QJw__Zbnf__iM80j3M8jQ8UFw88v1>vyh_O7Us?xe1>uyC0MxY8020jw<1yomgwon9OonAwsTlysSdOqn1Qey0BsM1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM:pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA;2lIr6ga<bg}1Oow]7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis{7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA;t6BJpn0W879Bomgwpn9OrT8W82lP<pSlQgR1lt6BJpg]7hFrmlMnSpKtz5x:1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO:1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw]1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M:9j0NdCNIu?Bc3xU;2kMe7wJ9j0NdCNIu;1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt}gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw]4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM{2.821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw{lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ:4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK;4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;82.86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI[2.821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ:4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK}imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw{imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK:19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK}t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt:1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt;7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng-1;w<c<wwXzJ88eUXi23KeQwwXzJ0hI3eQ;7<MdX__T;gUf__x<53y___k<Aen__Pw1>gW___108?13T__YY.?Efv__Rw<g{5Wkw04u4416MM101g<o<gfv__Ww;gwB10486gh;M<idX__QM1}j<4g>24T___f08>182k40Cwqu0FY1h0X?h51vB0a3w151A7vTJF32Qep1Q6r1kes146t0M992JB1SQ7sgtR13w151A7vTJF22M1w<B<7jx__Z?M>4oeI0chgnV3D0h1Dgd1Dw91DM42kwHsgtR1TA7vggU0gMp1gMJLT47tgtV1TQ8a3w131A512Qys19Q3Dwav0k4aT47tgtV1TQ4e04c6gkgb<O<fw>1gVf__u0k>152k40CMms14ev0pw8hwXg0FA7DgchgnVi2Fs9gFE6gpU2ggI2lVs9gpE6gpU20ALngtF2TA4e04w6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnVxBMB2Cwp1Dw9nRQ7qgtV13w191A7vTtPrStx13J02BMCo29A7Cwqr1pM4Dgeu0FY14k5@idvqTBmn2pE6Dw91RQ7qgtV13w191A7vTtPrStx13J02C0yp1VI5D0it0VY14k5@<d<cg1>4Wv__?M>183L014k5@Dgeu0FY10Foa3w161A7vTJR42TIa3w161A7vTJR32M0s<_04?cPQ__@4;4we8151vB8e04c6gg///////////////////////////////////////////////////////////////////////////////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!$o1o]3M5g]1zZ0g]g}3O0g}M[o14}d[fwL}6g[8_g4:1I[2{q[13Z0g:7{8[fn@_SY;Y04}5[ew5}1w[E.}E[a08}b[1w{M{?8]8[K08}k{s[5M}203w{07:p2Y}3?1M=?1M}2M2[w[Q0k}9[1w[_L__rM<1w2}f___SY:g}3M__ZL;108}@v__rM;R!!!!{>7Y2!!!!!!!!!!!!!!!!!!!!!!!!!!?3wc}1wO}U3}10cw]c0P}y38]3gcw]fwO}g3c)e0M}u3c]3wc}a0P}U3}3EcM]3wQ}U3}1wd}awQ!>e0M}U3g]3wc[wR}m3k]3gcw!?3wc}awR}U3}3gdg]1wS}U3}1wdw]b0S}U3(awN}M28}1{01.:23s)7wN}M28}1[501.:a3s)4wN}M28}1[b01.:i3s)3wN}M28}1[f01.:q3s)4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag<w<g:4?4t1904Poj4081k}w5g}w<g:4?4t1904Poj40o14]2c4g}w<g:4?4t1904Poj40@2Y}cc[w<g:4?4t1904Poj4081k]1I5w}w<g:4?4t1904Poj40h2Y]14bM}w<g:4?4t1904Poj40h2Y]14bM}w<g:4?4t1904Poj40z14]2s4g}w<g:4?4t1904Poj4033[sc!*3?40O04$3?80Y04$3?c0a08$3?g0W0k$3?k04.$3?o0o.$3?s0I.$30..0U$3?A0g14$3?E0E14$3?I0@2Y$3?M083#3?Q0I3s$3?U0Z3s$3?Y02fQ1%301?4fQ1%301406fQ1%301808fQ1%301c?fY1%301g<2%301k>42%301o>c2%301s!?301w0a0s2)4<40f7_&0Q<2o0E081k(Y<2o0E.1k)28<2o0E0Y1k)3w<101o>c2]1[4g<101?4fQ1-6I<2o0E0o1o)7s<1?Y02fQ1%40f7_&9o<2o0E0s1o]1c0g]ak<2o0E0M1s}Y.]cE<2o0E?1E]1?M]dE<2o0E0g1Q]1U1g}g1>2o0E0M28[3}181>101o040c2]4[2U1>101o080c2}1}401>101o080s2]8[541>101k>42:1g[601>101k0k042:1o[701>101k0I042]U[801>101k0Y042:1g[8Y1>40f7_&9A1>1?U033E$40f7_&as1:E0o1c)dg1:E0U1c)fE1:E.1g)282:A0g14)4c2>2o0I0@2Y)4A2:E081g)6Q2:E0k2Y)802:E0U1g)b02:E0U18)cw2:E0M18)eQ2:E0M14)1A3:E0E1c)3c3:E0U14)5s3:E0g1g)8o3>101406fQ1-9c3:E0g1c)c43:E?1c)e43:E0M1g(g4:E0E1g)2A4:E.18)4Y4:E081c)7g4:E?1g)9E4:E?18)bw4>101808fQ1-c44:E0M1c)ek4:E0o1g(M5:E0E18)2M5:E0E14)5E5:Q0I3s)6Q5>101k>c2-7A5:E0o18)9U5:E0g18)c45>101c?7Y2-cs5:E0818)es5:E?1k(E6>2o0A0o14)106:E.1c)3E6>io$1U5>g#4M6>w#dA5>g#6w6>yo$886>io$9I6>h01k0s082]M[aU6>io0E0M2U]24[c86>io$dg6>io$c82>g#286>g#ek6>io$fk6>h01k0g082]M{s7>io$2I3>g#287>io$3Y7>h#507>io$6g7>io$3g2>w#7s7>io$dc3>g#8s7>io$a87>io$b87>io$cs7>io$dA7>io$eo1>g#5I2>g#eE7>h01k0E082]M[fQ7>w#1s8>io$aM4>g#3c8>h01k0Q082]M[8o4>g#4k8>io#1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT069FrChvtC5OnSZOnS5OsC5VbCdLrDdQs79Ls2UMbCBPsC4Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv03,,5xbD1It5ZzomNIbBZvoTxxnSpFrC5IqnFBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbC9FrChvon9OonBvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKpSlQsDlPomtBg417j4B2gRYObz4T03,,5BbD1It5ZzomNIbBZvpSRLrBZPt65Ot5Zv05ZCqmVF03,,5xbD1It5ZzomNIbCRxqSlvoDlFr7hFrBZxsCtS05ZvpSNFrCJvk4NksClPrSNSpg,,0NoiVMr7hvoS5Ir2VvnTdKs79FrDhCqmlBpj4Oe410hQN9gAdvcyUPcw,,0NoiVMr7hvoS5Ir2VUpD9Bpg,,0NoiVMr7hvoS5Ir2VPt79zrn1+0c3,0Mcm4Ks6NQnSdxr6MKoSNLoSJvpSlQt6BJpk10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VUrm5Ir6Zz03,,5xbD1It5ZzomNIbCpOpm5Ag417j4B2gRYObz4T03,,5xbD1It5ZzomNIbBZvpn9OrCZvr6ZzonhFrSV+0nRZAsSZvq65Kp6NB03,,5xbD1It5ZzomNIbBZvs79FrDhCqmlBpj4Oe410hQN9gAdvcyUPcw,,0NoiVMr7hvoS5Ir2VyqmVAnTpxsCBxoCNB03,,5xbD1It5ZzomNIbD1Rt7d+0c3,0Mcm4Ks6NQnSdxr6MKrmlJoT1Vg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbDdQsD9zq79+0c3,0Mcm4Ks6NQnSdxr6MKpClOsCZOg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbC9FrChvondPrSdvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3,0Mcm4Ks6NQnSdxr6MKpCZMpmV+0c3,0Mcm4Ks6NQnSdxr6MKsThOpn9OrT9+0c3,0Mcm4Ks6NQnSdxr6MKpCBKp5ZSon9Fom9Ipg,,0NoiVMr7hvoS5Ir2VvnSBPrScOcRZPt79QrSN0g4tcik93nP8KcPw0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv03,,5xbD1It5ZzomNIbCpzr6ZPpk10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VMrSNIg417j4B2gRYObz4T02VkjQcK03,,5xbD1It5ZzomNIbC9RqmNQqmVvpn9OrT80c3,0Mcm4Ks6NQnSdxr6MKsThxt410hQN9gAdvcyUPcM1vqmVFt0,,0NoiVMr7hvoS5Ir2VJomJBnSVBtRZxsD9xulZSon9Fom9Ipg1JpmRzs7B0hQN9gAdvcyUNdM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUNdM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1MrSNIg4tcik93nP8Kcjs0t6BJpn1vq65Pq5ZPt79RoTg0nRZMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80nRZPrD1OqmVQpCBBpmkNczx0hQN9gAdvcyUPcw1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0sThOsCdEsA17j4B2gRYObz4T07dQonh0hQN9gAdvcyUPcM1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0pSlQgR1lt6BJplZPt79RoTg0pClOsCZOg4tcik93nP8Kcjs?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!!{0r<1M<8[O04]380g]2g*4*bw>fr__SY2[f01}Y04}U{c[2*3w<b;w[E.]2w2}M0c}4;M<w[6[1:M<8[W0k]3E1g]2w2(1*i<f___SY2[108}4.]1g{c{w[2[5k>3@__ZL.}1w2}608}k{4;g<w(1A<1;8[I.]2M2}d05[M[8[1w[rw<g>12[80e}w0U]2U.}c<k<2{o[7w<1<1w}104g]40h}n*2*1@;g<o[E14]2w4g]5wu(w*x;4<6[fwL}@2Y}A*1*8E<1;w[wc}20M}A0s)1*2i;g<8[I3s]2MdM]4g*4*E;4<2[fgT}Z3s}s.)1*aE<e;M[8_g4]zZ}2&w[2[2S<3M<c[4fQ1]g_g}w*8{w[Mw<4<3[1zZ0g:6fQ}8*2*cY<6;M[w_g4:23Z}U04}4{w[4[3o;g<c{fY1}_M]5%g}w[sM<w<3{>w:kfY]3U*2{8[dQ<1;M{0g8}10g}8)1*3z<2;c{0c2[M4:2w4(g*W;4<M&0c1]K&g[1[f4<7=0E1M8:3030g:804(g*1;w$1g104:8wb}6w>5o<8[1w[2g<c#S0Y1:1n2*g(14<3#2Yo0g:1M4(4('
;;

'riscv64')
b64=$'37728 18864\nmd5sum:79f5e4817bdc3a79f3f2f7c64423a984\nsha256sum:80f7d4d626801cac23386948852d6798fa18afa117724c736aadbd614fd397f1\n000000000000000000000000000000000000000000000000000000000000000\n0000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n07mffo@5yNJn5M2X1_1\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n0fmfKoY5yVLn5M\n00000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n04]c.]M1]3\ngg\034vQlchw81.=0c0YM01-1{b12]1g>4?e?804?7?r?c?704,Zz8`0pw^4{g,k`:3Ya]fME}1}1,1w>f0J]Y3Q:3Mfg:dw4]Y0w}4}8,6,22U]8fw]w@]E04:2w.]w}1<g;w}2{8]A}2g}1}1gVnhA1,d0C]Q2o:3g9w:3M}f{4}57Bt6g6``01{kKlQp.>3Mbg:f0Z]Y3Q]g0w:102}g}4,5<c>17jBk0CtNR6vPnAdd7MIkSGnsZUMqJjYY;M>24,1,1w>1181409x02;24,A,N1LJmGG3zf7bTQtTEBsWDa4Qqnk`{M0a090i(33,4#1b,4g#1,8#2h,4!L.?4w$1C,4#1T,4w#9.?4#2C,4w$1h,4#2Y,4w$1p,4w$1I,4w#x.?4w$2K,4#3B,4w$28,4w#V.?4w$3R,4#1r.?4w$12.?4!X.?4w$2v,4w#T,8w$1N,4w$1v,4w#t,8#1k.?4w$16,4w$26.?4#3h,4#2B.?4g0k03x2]c}1w.?4w0a01Ev]h}2U.?4g0k?x2]c}2i.?4g0k06x2]c}1Q.?4g0k09x2]c=nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0s6ZIr01Pt6hFrw1Urm5Ir6Zz06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q06pLs6lK05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0sThOsCdEsw1yqmVAnTpxsCBxoCNB06RBrmdMug1CqmVAnTpxsCBxoCNB069FrChvondPrSdvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvon9OonBvtC5Oqm5yr6k0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcU04tcik93nP8KcPc0hQN9gAdvcyUOdM]4?w01?4?w01?80.02?4?w02?c?w010.?w02?4?w01?8?w02?8?w01?8?w01?40.01?40.01{4?M3a.?4}2UApo6>40dg1>g,IV6m1w>M3v.?4,8uhBwo>80Ww4:3Mfg]c}5xc:3Ufg]c}Tx8}fw]c{3U:3og}c}C1Y:3wg}c}m24:3Eg}c}C1Y:3Mg}c}w24:3Ug}c{2c}|]c}O24]8|]c}428]|g]c}e28]o|]c}w28]E|]c}C1Y]M|]c}K28]U|]c}C1Y:1.g]c}U28:18|]c}C1Y:1|g]c}a2c:1o|]c}u2c:1w|]c}C1Y:1E|]c}E2c:1M|]c}W2c:2.g]c}C1Y:28|]c}82g:2|g]c}C1Y:2o|]c}i2g:2w|]c}C2g:2E|]c}428:2U|]c}C1Y:3.g]c}W2g:38|]c}C1Y:3|g]c}42k:3o|]c}m2k:3w|]c}C1Y:3E|]c}E2k:3M|]c}Y2k:3U|]c}C1Y]8gw]c}W2}|w]c}T1A]wgw]c}S4}Egw]c}i2o]Ugw]c}K2]1.w]c}T1A:1|w]c}a44:1ogw]c}q2o:1Egw]c}y2]1Mgw]c}T1A:2.w]c}w44:28gw]c}y2o:2ogw]c}u2]2wgw]c}T1A:2Mgw]c}K44:2Ugw]c}G2o:2MfM]8,3-2UfM]8,4-30fM]8,x-38fM]8,z-3gfM]8,A-3ofM]8,p-3wfM]8,s-3EfM]8,B).}k,2)8g}k,5)|}k,6)og}k,7)wg}k,8)Eg}k,9)Mg}k,a)Ug}k,b-1.}k,c-18g}k,d-1|}k,e-1og}k,f-1wg}k,g-1Eg}k,h-1Mg}k,i-1Ug}k,j-2.}k,k-28g}k,l-2|}k,m-2og}k,n-2wg}k,o-2Eg}k,q-2Mg}k,r-2Ug}k,t-3.}k,u-38g}k,v-3|}k,w#9sP>P0Yd10XU3YNc3g_SjwwfP4Rcj08eOww1D?U05PU>c@3L9D0MU04M>1s@>3fEXNpMce01c,nfw>PUeYms33w0j,5PU>c@zL1D0MU04M>1s@>3fwXMpMce01c,nfw>PWeXSs33w0j,5PU>c@3KZD0MU04M>1s@>3fEXKpMce01c,nfw>PUeXCs33w0j,5PU>c@zKRD0MU04M>1s@>3fwXJpMce01c,nfw>PWeX6s33w0j,5PU>c@3KND0MU04M>1s@>3fEXHpMce01c,nfw>PUeWSs33w0j,5PU>c@zKFD0MU04M>1s@>3fwXGpMce01c,nfw>PWeWms33w0j,5PU>c@3KBD0MU04M>1s@>3fEXEpMce01c,nfw>PUeW6s33w0j,5PU>c@zKtD0MU04M>1s@>3fwXDpMce01c,nfw>PWeVCs33w0j,5PU>c@3KpD0MU04M>1s@>3fEXBpMce01c,nfw>PUeVms33w0j,5Pk?1c5xgendM?AUs70Se8FM2ndM?wXt7Qp73wEu2w1sR>j1mk1BPk?9e5Vg29zpfndk3ZArWlxompNpsT?23JMvhAse2xUa0BPs?8f7F_WtVQ4h1KindM?wXv7PF775Pk?1c5Fr22B@_M7_Cyo8l75Ps?2c0Z_N10oa0wE1NLVsT?23FUvXBsKjh_n_5soKBxsR>j1mnWwYo501LnxM251rmfA_vT3UE7GFushXCfUVj5_xf5Z_@2wbu6KeSjxwoOBPw?9e8Ofs1i1c3010jvxw0CRso03IeM44PvJU04_sn03I7U42PNYs1CZsn07mffoYj_xs06Rsn03IeM44PvJU0ATsn0bI7Y40PhYs16Rsn+0X1@104_Un07mfKoYX1Y11CZsn&0ZoYjvxs0fo@X1Y116Rsn0fmffoYzEew01iyh2ecqqfq5hNsT>zaLvIerZhsqbNFKTaWorRPKniUlrZnLm3hMk0aECKx9K7d_QOx1K71M2pUMd75g1z6Msw5Ps>cDN@CndM?AUt7WkTHJUqUXpe61zandg?AUmBW0564Mk041dU5w2rlNo0eMw.jdUS?jZNs0eMvwgbf71M6rRNs0toYZzNfU5M0rlNs0eMw.jdUS02jtNs0KMvMg3d71M4rlNs0Zo@VzMmbCZsn03I7U40j@1s0to@VzPI7046rRNs0toYZzUmb6Rsn0bI7Y43RzNdU5M0ZzXI7044rlNs0ZoYZzVz11iqh1ucrFLqndM?AUtDTwl7Ccc3JUt0oMU73El7wxs1hEl5a?@Ve_MvZlzmW0ewRvx08mboUo73FsT?23JQuFgmk3Kws0X_1_MGG9xkFz.kqmLByYmrJqKATGvbb4MBpPHsD8EijxRsO1kQ26ta6gmq5hkW58xQ@Cu_MfY4j3jQr0kKneM?AUKbRxsc>j38PqGEMdPoeTyQ35PRG5pErexoancUoY0iGbPEs3NMs0xgsPiis1cMCF0@cpZLXixA5Cxklexu_MnXOGz6DRkEnLYb_8GEJexmeo2MHLYf@QoUEa39D08W1A0mca111auMFYWCNaricM906Ks0VQXCheqqVF3CHGuBW5GDJJooa05Ms?1c79Z8zJet0ZrQc21sl>j1qmlX_0_JWGamsCndM?wXuDCk5B0XE70e_MTXaGykT5mLByYmrJqKC5iy6T8Xibgps7?2jxYvdfr@n5g?AUkBAAG5X_0vLyGahsl1pu_MvW@GyjT5mLByYmrJqKC1iICZX_0_GCe82wbLYb@G2465i@_MfXiGxhsl>j1kmlX_1vFAFX2DPGr4FJErtixu_MnXwJJRa5X_3vJ_CTBNk?9e5VoIn5g?4MnByK_MvXsGyxT5gmnLYd@EGEDz5wnCkEnLY1@R5Nk?1c5NoXLY5@xxkLZLkFX2DPGr4FJRrQn5g?4MkBye_MLV@5iZmRX_0_Ewx1xkLLYb@HaEraxhsl>j1im9X_2_DtCRnn5eZaW9AMmM1irYxKiGxe_MnW4pOqbwAMng1iG49EnLY5@woSKA?pAFC3exiq5EDDyt056om6NJ5bMcMGkg4HUcMC5g1c56w1mXe_MDVWGxQG5AMHV_PW9X_2_DqG7FElixAG5LEhaCK_MLVRmxyc02w2j1hg09EnLYb@sFFEzw0E0iEnLYf@jbsQslpfT1Mi5NQW60ku1hGq5X_2vH4G5X_0_BgpAgDA2uK9GFC2yuiq5UDhxojmW0KjLY9@k8O0502G4b?CxiB6X_2vDa9DoU7Q0Ef71M29XNx0AMsw0Cc9ZM2GxkW6wkpaxu_MvVRZJWq55Mk?1c5VnTLY7@durZaxu_M_V19JMRNxKVi@ER7oYKD5abGFKraUAX@xktzSWscw6m3hMg0Auc1h8R70kBz0_kmx0yCxgB5X_1_ATDxJWv486pDAUtDKHvSk@ejxLpYwxv6qrqnINvT0Ht63M2jxwoAvpsc2nRlIUDp0FS7Co@@Cu_MTUoGyC7xOCoatXt73M2jxMsAIUrS0KFBaDqP1_s2HFq@BHamPFpz3|clLqj2w41AMk015q55Mo?1c6NDDLYd@fREkyxu_M7@hz?A2AMk01cW65Mo?1c6VDsCxu_MTUSCxkG5X_0vUBpAZC2Sp1pFYDCOuBa5kDERooa?kg1iog8FEk9hu_MfUstTgM90kkKVe_Mr_R1XsFF2DuThMY0AUs79be9@g9GpGFSEClZlrc7ZMaOCrWpJFDLYe_WaEENQu_Mr_M8gu_M7UqGxhs5>j1ilKX_0L@5pAJCgmqv9V1kHSo5a5kDERooa05Mk?1c59mzLY2_S1kHBJXq55Mk?1c5xmTLY1@7ZC1mpbpA5CDOula5kDERooa?XA50od72g3zCMvE0kChL@_MH_k8gu_Mj_@Gxhs5>j1mlBkrZRsoG58K7a@0rBFLPLY9@10PA502G4BMk?9e5pmxaxu_MnUlxPps5?2jxmlEiEnLY5@4GEgZNps5?2jxklGiEnLY3@3GEhz0wkeBMk?9e51mNaxu_M_U6Gx5TJwAsdhSdcZOhzy@sq2ksn1g?4Mm5kmeqVM08p8d71g29VNs5>j1klgBNs?8eThYoM04M?I8@Ve_MfVBz3MkkxkilE8973ktzivsioULD30B75Mk?1c59kRzB@s026i3hMk0oUo74Fsn?23JQv2c021hjXAX_1vBnDNECoj2g41iEkn1w?4Mq6pVc5?fLY4_MiEnLYe_Ncq02hqa5X_3vRaG48EnLYc_yGC0ap4pV9EnCt4BxwE3axhs5>j1glyX_0fTUl4Yr@2hMR7oQTT66efVN89hNs5>j1ql4oVHD?xAwQs508DD5Mk?1c5pkc1hyM?IjLYf@c8v6yhxc9.5axhs6>j1GpvAMk?K_MX@taxu_Mz@BpJMxA0PA40od71g03hMA0GuYn1g?4MkBfSc31OWn5M?wXvDJ3?wkneZ3XAX_3vxScj1jyypFc9.5exhs6>j1KppAMk?@_MH@bexkG5X_3_JGpVfrsn1g?4MkBjK_MbZe5h3C_UMY7X4m_5Mk?1c5hjD1Li9DAAoj2g41iEkn1w?4Mq6lFc5?nLY4_uiEnLYe_vZrk8p0cV1063hMk?Qs906e91Nzz3gvABNs?8eTFWIM04M0PLg2MzXAX_1L_Cco1iUypV96AMA10kW55Mo?1c6pB6j1g05X_0LSsW5iEnLY7@JFDBpLgxA0PA40od71g03hMA0Gs_z2wvI0koI0cXQ0IjLYc_VoNc5aG96AMA10kW55Mo?1c6pAOj1g02X_2LRcW5iEnLYf@EFDCVJhs5>j1il6X_0LNol4frQn1g?4MkBgK_MbYi5h3SR5Mk?1c5FiFlYNsD>39MtxBOs?9e7xS1dWXu6KeSjxwoOBOk?9e5VlY1hxc5010ju1o0CRsm03I8044Pudw04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8044Pudw0ATsn0bI7Y40PhMs16Rsn+0X1@104_wn07mfKoYX1M11CZsn&0ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrSBOs?9e7FRk5hVz30Xu7gecu1ZgnZ___4MvDm2eQVQ2NINs5>j1oksUNs7VxsD>39YtiBOs?9e7hR9VZXu6KeSjxwoOBOk?9e5Fl41hxc5010ju1o0CRsm03I8044Pudw04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8044Pudw0ATsn0bI7Y40PhMs16Rsn+0X1@104_wn07mfKoYX1M11CZsn&0ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrScrYn9M>Ot7hVsD?2jxYt66vKTxHzJAUo6cFsB?2jxil60koj1g.4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs70hJn5M3RzXCf1oKrRNs0eMvwg1fU5M1RzXCfeMs.pLn5M1RzPSfxoIrlNs0KMvMgfmf4Twn03SfKMs.hJn5M3RzPSfCc459F45UNKCZFmRFDC5heCSgh65hhsB>3dqkc1KjLY8@Qxkkn9g>PkB2K_MHXe5hhsB>3dkk8X_3fIEl55Ok>cRVgvLYe@NEC01hk41wE>2Q}sC8:1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD{1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V<7hFrmlMey1Opm5A86lOsCZOey0BsM>69xp21xsD9xui1Ptm9PoT9Fs7gW82lP06tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP;1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g<9mNIp0E>1Dpnh3k5lQqmRB]t6BJpn1vpCVScm4;7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8;7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq]7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD:Bc34Sr6NU02kMe7w<9j0Uu2QBc34Sr6NU<5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb=820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK{1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK{19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ<t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng,1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt02kz8EjADfbb0hI3ePM,6,ieP__Rg,SXv__q,4PM___Q,mf7__Qw1>cY___M04?4HU__Y80w:1=TFi?5Y.4r30804,1w>3IW___Xw]28,b,crI__Ym0M>48eY05ky0i91F88wgaj2FgcBgWn4wcy0pogC1ip5FEo0FzmgJx2SkbqhwH1gIx2OkbigJd2R4blhdt23w122M90Bx2o59AmCxxgRJzpSCim49wkChqq66waRAbogJB2SA8bkdroStE2eFogC1ip5FEogJp2S4bpgJE?5,2U,ke___MM1,gwV|FcaiEA6wg9ey0heO4b1hJd2Okge048ek842y0i91FcagFgchF88iFke0BMaO4bigJh2Rkb1gJd4Ok8e048b07g,c.?2f3__Xg1,gwXw0Aq10FgcjEw4ygqi29ca0Eil3w90O4b1gIB2QAbjgJl4R48e048eU0a10Ew4ygqi29caB0M2ocx2OkbigJd42I54R48e048bk8w4ygqi29cak0H1gIx2OkbigJd4R48e048b04g>24.?hf7__PU5,gwWg0kG81988wga91wc2.H1gIx2QAj9gwU.wI2B9caqJc2r9carddsAMFIQMe?FcagJc?1M>3c.?eLr__Qg<gwUgj8420z31h0U~~~~~~~~~~~~~~~~~~~~~~~~~~~`<g]3a.:1A}Y3Q]r{w}6w]3Ufg:1M}2}3R_LZL<2w2]1g]3M1g]o}o08]a}fk1]2M}o{c}Y3Y]2}8w2]5{7}1s}c0U]7}7w8]2}102}A}6}3@__ZL<3w8]____rM<1}f3__SY<Vws:3V__ZL<3k~`#8fw~`03__________M{M1]3////////04]c.~~~~~~``01~1~1~1`=?4t3gPEwa4teliAwcjgKcyUN838MczgMej4O82xipmgwi65Q834Qbz8KciQPag11pg>79FsSdS?5r,1105sDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc?8,4;1?[090i]A18]8,4;1?[090i]8xc]8,4;1?[05Uv]nxY]8,4;1?[05Uv]nxY`%?c0.>w$c?w0E0w$c?M1w0w$c0103M1g$c01g3C1M$c01w0U2#c01M1U2#c02?M3w$c02g304#c02w2g4w$c02M1w7M$c0303g9w$c03g.9M$c03w3Mfg$c03M3Ufg$c04>fw$c04g08fw$c04w2EfM$c04M3MfM$c0503og#c05g38gw$c05w`c05M`c0603whw*g,g0YvY%3g,802w2g4w(8w;2w2g4w(3M,802w2O4w(tM,802w3u4w(zg,405g38gw]4}Cg,403M3Ufg(M<802w0m4M(P<403w3Mfg$g0YvY%WM,802w0o4M:eU}8w;2w0o4M(@w,802w065]1o3]904>802w0s5M]M1]ig4>802w0E6]bg1]mg4>802w3s6g:3U5]pM4>405g3|w]g}wM4>405g3ogw}4]Bg4>405g3ohw]w}Fw4>40503og]5{Jg4>405?E|:5w}Ng4>40502.g:3w}Rg4>40502U|:5{V04>g0YvY%Xw4>403g3Ua#g0YvY%_04>40Yv_04*5w8>404>fw(8M8>40YvY8fw(b08<303g9w(fM8>405038gw(iM8>40Yv@EfM(og8?1!rM8?14#w08?2!D08?1!Gw8?1405?Ugw:3{Lg8?18#Qw8?1802w0q7M:4g}Vw8?1!X08?18#20c?1!80c?18#cMc?1405?8gw:3{hgc?1!jgc?18#nMc?18#s0c?18#w0c?18#Cgc?1!FMc?18#Mwc?18#Rwc?18#Wwc?1!_wc?18#3wg?1!S0c?18#8.?140501Egw:3{cMg?18#h|?28#nMg?18#s.?18#wwg?2!D.?18#Hwg?18#Lwg?1!Owg?140502ogw:3{T.?1!06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP02hUsDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM069FrChvtC5OnSZOnS5OsC5VbCdLrDdQs79Ls2UMbCBPsC4Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZgkAZ3hkhlkAlvj4BeiQ57hlZkgk9chlY0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0pCBKp5ZSon9Fom9Ipg1Pt6hFrA17j4B2gRYObz8T05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO07hFrmlMnSdOoPcOnTdQsDlzt01DpnhOtndxpSl0hQN9gAdvcyUOdM1PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUOdM1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1Pt79OoSxOg4tcik93nP8Kczs0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1JpmRzs7B0hQN9gAdvcyUOdM1CsClxp417j4B2gRYObz8T07dQonh0hQN9gAdvcyUPcM1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kczs0oCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01Pt79BsD9LsA17j4B2gRYObz8T07dKs79FrDhCg4tcik93nP8Kczs0oCBKp5ZxsD9xulZSon9Fom9Ipg1MtnhPg4tcik93nP8Kczs0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pzr6ZPpk17j4B2gRYObz8T05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kczs0pCZMpmV0hQN9gAdvcyUOdM1Cpn9OrT90hQN9gAdvcyUOdM1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB07dQsCdJs417j4B2gRYObz8T071Lr6N0hQN9gAdvcyUOdM1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt01yqmVAnS5PsSZznTpxsCBxoCNB>KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VQpnxQ02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KsCBPoToKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc~!6M,s,2=2{8]A^1^2U>3S__ZL0w}E0w:2w2]e{3{w^U,2M,8}o08:1w0w:903]1<8,8}1w}g<c,2}f05]Y0k:3R.*g*4w>3___ZL0w]3C1M:eo7]j{3{8{w]1l,_L__rM8}e0w]U2]4{1<4,8^p<g,2}7w8]u0w:2U1g]c}2{o}6U,4,gw}M3w:30e]y08]3,4M,w}6}1P<g,o}M1]304]d01*g}1{u<4,6}90i]A18:3e3^w*7U,1<w]1w7M:60v]s0s*w*26<g,8}Q2o:3g9w:3M^4^B<4,2}10D]42s:3I.(2^9U,e<M]3Mfg:f0J]2%w}2}2G,3M,c}@3Q:3Ubg]w^8{w}Jw,4,3=@}2U]8^2^cc,6<M}8fw]wK]E04]4{w}4}3c<g,c}G3Y:2EbM:4w^8{w}Qg,4,3}f0_]Y2Y:3E^2{8}dE,1<M]3og]dwM]Y04*w*3w,2<c}O48:38cw:1w4*8^Vg,4,M^O38]K%g}1}eU,3?1M%foO]pw^4%.?1M-U4o:1scM:9%4%g,8#Y3c:2U2]1E,V,2{o{A,3#awY]Y.*4^h<M$2o|:1o1*1^'
;;

's390x')
b64=$'54078 27040\nmd5sum:24a93280d41c7c77ed20a6bed1decf00\nsha256sum:93c814bc8ef9b08d335d238f5590ca91f870d0b9d0fd28b501b6a632e76b0244\n0xqVLYfqD1C1zLa4g4bn86@5ITSKiprrX1TUhyThTu6QZbkYtjygCztI_wvSEdKAJaeC@nlLwRYTe@T2ZLv8pm_iEbyK7EkuX4HHwOS6Pys2gqFWMUSfT87pUk5\n0QHSgghWod6Xp_6CL5tDfXk6TkyOdALmRGfEEt6jvzzoMIhfT_9i@rDvrUW@X_AnJXV3ob2eRvXk6Tq9QOLw4dFWmCvtiIPToBttw6lDONBIdD5KqMrDY\n0yFLaViWQ3o5Pts6ARjulOAzSmu_LrTO7cGWMEFjIVcM9bizFGCYHBfuKVX5hXbfvP2R_@CKQmFaStpqT43v2SoTS3LMFSsCot1w5Lt9qktdfCVTSW\n0wYLeVsky4LA7u2rpcaTWNvbTDK2Q7AbYtAgXry39VTbyAUdnF7FviSow7rsgps6HQz@BzFjmup9mz\n0gJsPc37umG2ANvTgRYOkdFWmEQrJDYHmu8hJFwKd1aTWl1ftylRWjhN6TjRLjXjr9xm3GRksWzL\n0GbSZYxRxEj171ohSHJCoJfiw2K9Vv1ow8NwPpIH4bWigxJfiRlHf48Y@WBpCULqkf9JAMH57u\n0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h\n000000000000000000000000000000\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0000000000\n41_4d4ecg4\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\034vQlchw820g}.301o>1-g;69w,01?3w01M1?1Q07,4>5&}gig<119;1<g>o<1dO;5T8;nsw;5}Ao;4,02>1w<4Tw;nu;1tU:7}s}2,g>4:sw;1O:78:2g:9}4p7jBk,g;_d;3YQ;fPg:f}Y}hAtelh>1w&&?46hQVl8>4;jsw<1tO;5T8:zw;2e}1>1>1g>3hQVl?royhut2kQ2WfZFjbfbp4XfLt3F}c>x,g>q?8g9g0h84}x>95HJ6YjNz8eGtQvvOVMWlW9Rqjix&;c.A;gQ{ux&hy8*42&Gh*15N8(19N8*sN8*_h8(1gN8*ON&Vh*1bh8*qN*1fh8(1oN8(17x8&i*1cx8*nh&Ch8(1dN4*y18(15h8*Qh*1kh*1ix8*lh8(12N8*b2*1zx&JN*1Hh4?1o<1ye}M.1q18.I;HQ:1o.1M14?1o<1y2}M.1Cx4?1o<1yq}M.1v14?1o<1yC}M05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSU0nRZFsSZzczdvsThOt6ZI069RqmNQqmVvpn9OrT80oCBKp5ZxsTdLoRZSon9Fom9Ipg1UpD9Bpg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC07dQsClOsCZO06pLs6lK071Lr6M0sThxt01Pt6hFrw1CsClxp01Cpn9OrT80pCdIrTdB06RxqSlvoDlFr7hFrBZxsCtS071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcU04tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg0hQN9gAdvcyUO}4?w01?4?M02?801?2?4?g02?4?w02?8?g05?401w02?8?M01?4?w02?8?g01?4?g01?4?g01,g05.1Qw.1,01FqhK,o.7s>40qmArc>5.1VM.106BF6n>1>v8>g3mBF5,c.7Z>40RFqh8>2.21M}?1tO}c;5m;1tQ}c;5h;1tS}c;ntw<1wS}c;eho<1wU}c;eyM<1wW}c;eho<1wY}c;eB;1w@}c;eVo<1x}0c;eFw<1x2}c;f0U<1x4}c;eJU<1x6}c;eO;1xa}c;eho<1xc}c;eR8<1xe}c;eho<1xg}c;eTo<1xi}c;eho<1xk}c;eXM<1xm}c;f0E<1xo}c;eho<1xq}c;f38<1xs}c;f7g<1xw}c;eho<1xy}c;faM<1xA}c;eho<1xC}c;fd;1xE}c;fhM<1xG}c;f0U<1xK}c;eho<1xM}c;fmE<1xO}c;eho<1xQ}c;fp8<1xS}c;ftE<1xU}c;eho<1xW}c;fxM<1xY}c;fCw<1x@}c;eho<1y2}c;esw<1y4}c;94;1y8}c;odw<1ya}c;fHM<1ye}c;epM<1yg}c;94;1yk}c;oiw<1ym}c;fJw<1yq}c;en;1ys}c;94;1yw}c;oo;1yy}c;fLo<1yC}c;emg<1yE}c;94;1yI}c;orw<1yK}c;fNg<1vK,c>a+1vM,g>a+1vO>24>a+1vQ>2c>a+1vS>18>a+1vU>1o>a+1vW>2g>a+1vY>1U>a+1v@>2k>a+1w,08>b+1w2,c>b+1w4,k>b+1w6,o>b+1w8,s>b+1wa,w>b+1wc,A>b+1we,E>b+1wg,I>b+1wi,M>b+1wk,Q>b+1wm,U>b+1wo,Y>b+1wq>1,b+1ws>14>b+1wu>1c>b+1ww>1g>b+1wy>1k>b+1wA>1s>b+1wC>1w>b+1wE>1A>b+1wG>1E>b+1wI>1I>b+1wK>1M>b+1wM>1Q>b+1wO>1Y>b+1wQ>2,b}3Hr_0M02iV1?vF_L_oecgY.9c3>DnI0g.Dt@cg4.1bA2016Dx?33u7zgf4g?jHr_3g?g7Z.UN3Me?AM1.2t5QwvMc108UN0g4?41_47?s01M304.9Szz41>g7YgQgUN0g3?kMfj/_B,c0g.Dnecg4.10vN3h3z410c01j0Zf/Zk>oM1.2tgUN0g.]0M05c3Q/_Ng.3304.9Qjz41>g7YgQgUN0g3?kMfj/@R>ic0g.Deecg4.10vN3h3z410c01j0Zf/Wk.1wM1.2sIUN0g.]0M05c3Q/_Bg.7z04.9O3z41>g7YgQgUN0g3?kMfj/@5>Ac0g.D5ecg4.10vN3h3z410c01j0Zf/Tk.2EM1.2s8UN0g.]0M05c3Q/_pg.c304.9LPz41>g7YgQgUN0g3?kMfj/Zl>Sc0g.CYecg4.10vN3h3z410c01j0Zf/Qk.3MM1.2rAUN0g.]0M05c3Q/_dg.gz04.9Jzz41>g7YgQgUN0g3?kMfj/YB.18c0g.CPecg4.10vN3h3z410c01j0Zf/Nk.4UM1.2r0UN0g.]0M05c3Q/_1g.l304.9Hjz41>g7YgQgUN0g3?kMfj/XR.1qc0g.CGecg4.10vN3h3z410c01j0Zf/Kk.60M1.2qsUN0g.]0M05c3Q/@Rg.pz04.9F3z41>g7YgQgUN0g3?kMfj/X5.1Ic0g.Cxecg4.10vN3h3z410c01j0Zf/Hk.78M1.2pUUN0g.]0M05c3Q/@Fg.u304.9CPz41>g7YgQgUN0g3?kMfj/Wl.1@c0g.Coecg4.10vN3h3z410c01j0Zf/Ek.8gM1.2pkUN0g.]0M05c3Q/@tg.yz04.9Azz41>g7YgQgUN0g3?kMfj/VB.2gc0g.Cfecg4.10vN3h3z410c01j0Zf/Bk.9oM1.2oMUN0g.]0M05c3Q/@hg.D304.9NP08.9NDI4w0aw6j46.9o_I6?407M7Ygv@1Ms71Ms71Ms71Ms71Mv04.9Mj08.9M6V2g0iWM4?M0aWP40fM0cKgw0ceIP?402KMU?Q0vcgo.BwKMo?s0vc0w.CW0vN1_U71Ms71Ms71Ms71Ms71@K_Y5w09c2M.CSufM_S3_spk0I02Dt?lM1.2l7UN0g.2FUg02c0w.AjY3B/@2c3B/_Fp81I03HL_3U?g7_ws71Ms71Ms7Mfj/@M1Ms71Ms71Ms71Xf102T0Q.2Tr04.9GLzk1.1aDx01eX4w0cw1YM2v/__ggd?bAm05aDgg01FTg0a@J4?403ec0c.AasX?8n1uMwdHQ2mlw240zI1i0_e5vzk3/V0nkeMBdHQ2mlwy40zI82w_e5uV5w1iFQv_Vc0D/__XAm02aPPg3i1_Xz83.92DeM015OnI8zqZ0BBo8x08X2kwfPxnKho0kKMM_YtwpavQ_@nD0dfMc0rDgdfwc0rDodfgc0rD4df0c0rDcdeMc0rDkdewc0rDsdegc0rD0de0e0rD8ddMe0rDgddwe0rDoddge0rD4dd0e0rDcdcMe0rDkdcwe0rDsdcge0rDwdc0e0rDEdbMe0rDMdbwe0rDUdbge0rDAdb0e0rDIdaMe0rDQdawe0rDYdage0rD0108c0XDg10oc0XD0da0c0rDgd9Mc0rDo10Ec0XD410Uc0XDod9wc0rD4d9gc0rDc118c0XDk11oc0XDcd90c0rDkd8Mc0rDs11Ec0XD011Ue0XDsd8wc0rD0d8ge0rD8128e0XDg12oe0XD8d80e0rDgd7Me0rDo12Ee0XD412Ue0XDod7we0rD4d7ge0rDc138e0XDk13oe0XDcd70e0rDkd6Me0rDs13Ee0XDw13Ue0XDsd6we0rDwd6ge0rDE148e0XDM14oe0XDEd60e0rDMd5Me0rDU14Ee0XDA14Ue0XDI158e0XDQ15oe0XDY15Ee0XD015Uc0XDg168c0XDo16oc0XD416Ec0XDc16Uc0XDk178c0XDs17oc0XD017Ee0XD817Ue0XDg188e0XDo18oe0XD418Ee0XDc18Ue0XDk198e0XDs19oe0XDw19Ee0XDE19Ue0XDM1a8e0XDUd5we0rDAd5ge0rDId50e0rDQd4Me0rDYd4we0rD0d4gc0rDgd40c0rDod3Mc0rD4d3wc0rDcd3gc0rDkd30c0rDsd2Mc0rD0d2we0rD8d2ge0rDgd20e0rDod1Me0rD4d1we0rDcd1ge0rDkd10e0rDsd0Me0rDwd0we0rDEd0ge0rDMd?e0rDU1aoe0XDA1aEe0XDI1aUe0XDQ1b8e0XDY1boe0XD01bEc0XDg1bUc0XDo1c8c0XD41coc0XDc1cEc0XDk1cUc0XDs1d8c0XD01doe0XD81dEe0XDg1dUe0XDo1e8e0XD41eoe0XDc1eEe0XDk1eUe0XDs1f8e0XDw1foe0XDE1fEe0XDM1fUe0XBj1>6DZfUN1Ms71@JLY3?9bA40e_zYfZg_T6DW__Uo83w0bf108eV102OFPA0mY3B/ZnKME?Y0vbA406aDeg1tKgg0aY3B/ZkKNy0150prfd03xEwf2EKgg0aWt9?3Hr_3w?j0Zf/d6VWm2yKuCMBKMF?40Ss3B/YtXA407aV1?GMen/NMKgg0irA408aV1?XKgg09Y3B/Y1k4ps02i01?gj1w0ud0H/srA402z0Vv__@_vzeE/T6i03?Kgg09Y3B/XDuME05I0v95082KDt?LVkzME.Men/OMKgg0oKlco>at9?GV1?Egj3MEc3B/YAKd0Ya?1eO4?O0p9k0g02Dt?7m01w0eM602syvHA403z08.3MH0Vv__@UKDZ?dIYQ0ibA403yDqg?FRA?c3B/Y_HA402v0Vv__@ZBEwf2EKgg0aeJLYe?1c3Q/XPXfd04yV1?OFRA?bA402v0Vv/8iDZf_CKgg09Y3B/XPqvQ_WfHv_0U02jzYfVg_T7I8w4S0TXIb0310nXzI308?il0b?Xbw.16X2w1g0d@FTA?44MYe2Dag02Men/JXX2o0K01@UQ3MW?4M1UwN9KBM1Tzk_vfKoo0146wYi3Hh?_?GV1?WKgg08ec0Ye?1eJg?k03rA9053H5g06?SV2g0lM5UwN9KBWN4?M0dM5Tzk_vfKgw04bDAk5jH4g06?SV2g0BWO801M0aKgA09461802Dav__Men/Np6abI9w3?7Xzgf4w?jz8f4M?jH5?5?THUw05?SV2g0kKgA0UKI1?o03uI@?o03rA9?6V2g0@WR.M0dKgw0leJ3?c03uJl?o03rA804bzkf4E?zH9?6?SV201iUR3Ne?8Kgw0meOU0aM0vasV04118f2wM4>VJMen/L4gj3MEbA402L0Vv/ETIu?m07ODeg10Kgg0m44wYe30g.3Bv0Vv__@WV1cf3wKgg09Y3B/@tXAk02HHv_7E?g7_GuV?2Dug?gj3MUasF?b0Vv__@IrIafZe07V1Ef4wFOA?bA403H0Vv__@ZHI9w1Z07Xzkf4w?jzcf4M?jH9g05?THgM05?SV2g0BKgA0g@Ii?o03uK4?o03rA901aV2g24WM4?M0dKgw01uJo?c03uLw?o03rA805fzUf4E?zHdg06?SV203zU@3Ne?8Kgg0eHA408WDav__Men/Ks6abIafZ607X0Vv__@Pnz82.1iDG?1Men/HJKgg0cI0w.dPI3B/W9rAk02HHv_7E?g7_I0w.dFauE?70Vv__@xuDZf_OKgg0ds0w.dOs3B/W7rAk02HHv_7E?g7_KdMc1?19k0s03Iu>4qDZfWZMen/HWUO0w.kFWw?s3B/WIHA403b08.3on0Vv__@uGDZf_51Ms71Ms71Ms71@JLY3?9c3g.9lrA40e_zYfWU_T6DW__Mo83w062wU0yV102OIY40wXf10ailbi?FUg07rA402L0c.3o30Vv__@u2V1022X2w3201YFiU?s3B/WhHA40abIa0bB07ODu.F_g1P9k0806Dtf_zM1.29mUO0g.iFTg1xus0Q_0M1KswQ@0M1Kt0QZ0M1KtwQY0M1KsgQX0M1KsMQW0M1KtgQV0M1KtMQU0M1Ks0QT0U1KswQS0U1Kt0QR0U1KtwQQ0U1KsgQP0U1KsMQO0U1KtgQN0U1KtMQM0U1Ku0QL0U1KuwQK0U1Kv0QJ0U1KvwQI0U1KugQH0U1KuMQG0U1KvgQF0U1KvMQE0U1Ks040wM3Ksw41wM3Ks0QD0M1KswQC0M1Kt042wM3Ktw43wM3Kt0QB0M1KtwQA0M1Ksg44wM3KsM45wM3KsgQz0M1KsMQy0M1Ktg46wM3KtM47wM3KtgQx0M1KtMQw0M1Ks048wU3Ksw49wU3Ks0Qv0U1KswQu0U1Kt04awU3Ktw4bwU3Kt0Qt0U1KtwQs0U1Ksg4cwU3KsM4dwU3KsgQr0U1KsMQq0U1Ktg4ewU3KtM4fwU3KtgQp0U1KtMQo0U1Ku04gwU3Kuw4hwU3Kv04iwU3Kvw4jwU3Kug4kwU3KuM4lwU3Kvg4mwU3KvM4nwU3Ks04owM3Ksw4pwM3Kt04qwM3Ktw4rwM3Ksg4swM3KsM4twM3Ktg4uwM3KtM4vwM3Ks04wwU3Ksw4xwU3Kt04ywU3Ktw4zwU3Ksg4AwU3KsM4BwU3Ktg4CwU3KtM4DwU3Ku0Qn0U1KuwQm0U1Kv0Ql0U1KvwQk0U1KugQj0U1KuMQi0U1KvgQh0U1KvMQg0U1Ks0Qf0M1KswQe0M1Kt0Qd0M1KtwQc0M1KsgQb0M1KsMQa0M1KtgQ90M1KtMQ80M1Ks0Q70U1KswQ60U1Kt0Q50U1KtwQ40U1KsgQ30U1KsMQ20U1KtgQ10U1KtMQ?U1Ku04EwU3Kuw4FwU3Kv04GwU3Kvw4HwU3Kug4IwU3KuM4JwU3Kvg4KwU3KvM4LwU3Ks04MwM3Ksw4NwM3Kt04OwM3Ktw4PwM3Ksg4QwM3KsM4RwM3Ktg4SwM3KtM4TwM3Ks04UwU3Ksw4VwU3Kt04WwU3Ktw4XwU3Ksg4YwU3KsM4ZwU3Ktg4@wU3KtM4_wU3Klc4>s0w.yP@cg8>Gu40eWBfw01FQA?ecMYa?944wYa2Deg01Men/y8X2M01M1@Ag7MFWtQ?V1cf2EM2>KUMen/z967bIa04h07X4i.7OGBbw01UU1>4Men/xWKgg0EKME0hU0vatU?70rILODeiDC.M6S48ycBKgg0mbA402GBjw01FPA?s3B/UsbA40bbIa01W07P0U.8DPz4e>aDx02zKho0arA404KV1?W3u6V101q69912W?X2I@LM1lFUg0auME01E1veME?Q2vecME.A45gE06Vww1zUS3k.cUQ1g?2gFRI?rC206jzodg.PzU5.92DmM01Ko80rKdwR.3eM5_Xe0peKX?803ecgk.Aec0k040AbC201rz4dg.Pz8502093zo503092DmM04Ko8?uc0R.3bC2023z8dg.OVww1yUS3k.cFXv_THA405yV1?GFkU?qsV?70Vv__Z_CV102OX2r_z01YKgg0ac3B/TDNyOX2o0d01@Kgg0aI3B/TFKNU05w0vHfd05zIm?507NgA5?IYQ0uKNU?o0vedws.9bAk02JEwf4Uqa3NgeJLYnw010v@M03/ADN0I?27oF_j_3I0g/V7Ygr.xQavQ_RCV1?GMen/tRX7w0801@Men/wfUO0w.kFXw?s3B/TNXA403b08.2L70Vv__ZL@V5?Hq83Ne6ywYk3Hr_5U?g7_HA402z0Vv__@32DZf_uKgg0ac3B/UaqvQ_Wr0c.2G708.2FT0Vv__ZLWV1022X2w0701YFiU?s3B/TpbA40abI9LXL07OV1?EMen/waM2>GHFXw?s3B/SMGvQ_Yf08.2DODK?1Men/qUF_j_Ks3B/TI@cw8.5c3B/TrrA403KV1012FXw?s0w.auc3B/SEqvQ_W871Ms71Ms71@JLY3?9c3g.84ufM_M3_sk4MYa30Vv__ZXTzc2>iV102yM1>F_FMw?bA402eOng0iFNj__Gu40a_0g.2DyV101jIBQ0hqsk__WO8w2Myr.EGM01XIK01F07X0o.2DOV1023IBQ0qask__WO8w2Myr.EGM01XIK02G07X0I.2E2V103zIBQ0LGsk__WO8w2Myr.EGM01XIJw2e07Vo0f2wX081H0d@X0w1dgd@X0o13w9@UP2w2?4M2>DMBg0M0bDys2f0nILODej0nogy8Onzkf2E02jBjf2A?11gf2Egj3MFc3B/YfuMC0480vKdwYaw01edgYag05A4wYb30g.2CqDeg1gMen/sqgi3MIc3B/SJqvQ041ocf2wX380O0d@X3w0x0d@X3o0Lg9@UN2w2?4M2>CKBg0g0bDys270nILODej0nogy8Onzkf2E02h1gf2EFPA?c3B/X_KME0bY0vGuU?6V1?GMen/oQKhg0a@JLYj?10v@Kgg0eKcwYa?5c3B/WrxyOKgg0aI3B/S8bAk02LHr_4M?g7_I0w.9@quU?70Vv__ZraDZf_pm23MEeMy0i43vKME0e43vKMC07U2vKfwE0w01c0w.9mVk0U02VUD0KVkPMG.FQA?44MYaz0Vv__@X7I9L@S07Xzkf2E01p18f2MM4>DqFPA08c3B/SAk4wYb30Vv__ZyODZf@TUS2w4?4UO2w2?4gQ1w09k0802Dt01bFQ40_Wu40eD08.2if0XILODej0Xogy8OnzUf2E02h1gf2EFPA?c3B/Xt@MC_TM0vKdgYaw0144wYb30g.2pODeg0MMen/pngj3MIbA402r0Vv__@i2DZfZXM2>zTF_j_js0w.9fauU?70Vv__Zj6DZfZoM2>zEF_j@_c0w.8UWvQ_UODgg3_FUj_dqvQ_XHzkf2E?h18f2MM4>BDFPA0cc3B/S8A4wYb30Vv__ZrSDZfZ8UN2w4?4UO2w2?4Kgg0wkd0402l02?FUg25Wt10f@DxfXbM6XbYFPAM6S48ycBUS3MG?AVkPMF.gk3MG44MYaj0Vv__@MrI9LYb07Xzof2E?jzkf2A01p18f2MM4>ALFPA0kc3B/RUQ4MYb2V1?EMen/yIF_j_1@e0E1?1ecwE0w014c0w02l02?FUg1Uqs10f@DxfYxVkPMG.FQA?44MYaz0Vv__@J3I9LXl07Xzkf2E01p18f2MM4>zVFPA08c3B/RI44MYb2V1?EMen/xVF_j@Rc0w.8NGuU?70Vv__Z8@DZfWSM2>yCFXw?s3B/QxqvQ_GP0w.7j3z88.1aDt065VM3jY306VO3jU306VQ3jQ306VS3jM306VN3jI306VP3jE306VR3jA306VT3jw306VM3js3w6VO3jo3w6VQ3jk3w6VS3jg3w6VN3jc3w6VP3j83w6VR3j43w6VT3j03w6VU3iY3w6VW3iU3w6VY3iQ3w6V@3iM3w6VV3iI3w6VX3iE3w6VZ3iA3w6V_3iw3w6VM20230eVO20630eVM3is306VO3io306VQ20a30eVS20e30eVQ3ik306VS3ig306VN20i30eVP20m30eVN3ic306VP3i8306VR20q30eVT20u30eVR3i4306VT3i0306VM20y3weVO20C3weVM3hY3w6VO3hU3w6VQ20G3weVS20K3weVQ3hQ3w6VS3hM3w6VN20O3weVP20S3weVN3hI3w6VP3hE3w6VR20W3weVT20@3weVR3hA3w6VT3hw3w6VU2123weVW2163weVY21a3weV@21e3weVV21i3weVX21m3weVZ21q3weV_21u3weVM21y30eVO21C30eVQ21G30eVS21K30eVN21O30eVP21S30eVR21W30eVT21@30eVM2223weVO2263weVQ22a3weVS22e3weVN22i3weVP22m3weVR22q3weVT22u3weVU3hs3w6VW3ho3w6VY3hk3w6V@3hg3w6VV3hc3w6VX3h83w6VZ3h43w6V_3h03w6VM3gY306VO3gU306VQ3gQ306VS3gM306VN3gI306VP3gE306VR3gA306VT3gw306VM3gs3w6VO3go3w6VQ3gk3w6VS3gg3w6VN3gc3w6VP3g83w6VR3g43w6VT3g03w6VU22y3weVW22C3weVY22G3weV@22K3weVV22O3weVX22S3weVZ22W3weV_22@3weVM23230eVO23630eVQ23a30eVS23e30eVN23i30eVP23m30eVR23q30eVT23u30eVM23y3weVO23C3weVQ23G3weVS23K3weVN23O3weVP23S3weVR23W3weVT23@3weVkO>1M2.1SFUN0w.2FTjZbs?/QXsgb.tDGvQ_imDgg3_FUj@oY0w.6DqvQ_uyD0g3_FUj@mI0w.6BavQ_xU71Ms71MvHX_1M02j4a.6x7zYfZw_T6Deg01Men/gRN2w?1D@FPA?s3B/QbsgE.pVGsV?70Vv__Z2n4a.6uaDeg01Men/gtFOA?eLLYh?10v@1Ms71Ms71MvHr_0M02jz4f1U?iD@_ZwUN3M.AMc.1CJUQ3N4?4WS_MQ?41_g<2Q2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh0gJswrUmPvqV9BJLI7vx6bt7tUrjQJjNRe92qdSP@1_qwSWiQEWrVtm@3nPsXXsbSZYxBrZawKaUuxhXIiKK3bore9M91GDH3zo_swtDxgk0lNerpcaMX6fO9DlGEVM2rpcaMJv_FXngPP4ISpWbmZWK7smWeXWOLgIEaXhqABOPqwjc37ulKMJ70O825HBl1ioLOS6PzbNCwNEBrZawkCzydJZwXYeEpZZlcmWeXQpFLDDo3iLqHMErj3o3iLp117FwQrJDYqqYlSs_Jgrtib8SiZrmE@yxQpd@edz2N4_vYBbVKtZLzHXL@huTLAdwI8Xl_JgrtEDja@0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa0aUDvguuIudz2Nakp3K43mRGfDFGmGzGRksVDt9THMjr9xlPT1q3Xry389G_IXo3JK8ctb7iCBCPfhsKJ0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD0A6GLwIg4cAc88p412RPcMctVqEaj5_t3nP9gSDFqzhKSvOJpUx6SC2UQ4HvFk4ZS9nnFd74rtfmZfJdIC5oeHlhPGeY07jkKP3yoJQtTNnqbkCcQTPP@ZhcpmmMSsoiJ@BgyXWUWLOVy7NI1FnJ6M6BuU88Zc7R3YhnqSJhZ1NIoma5pj3oYC80jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y0@jhiMjkhZ8dxvSB2HlHeSUwO4NF45Xlo47AECtNsxg1n4Zz1CPp@wYZoUQ83vkjr9xmp6KEMfRy@nGapsDI6JHkvmTtVeLQRblhwZe5NNST46hGI23OYXBNi8i@gtU9JAMHvH5YLuuUbgugLNSh3JK8cDDsKajwRuAuBZbpy0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6WJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L^$01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKw.g>6PJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L^$01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKC9xp21xsD9xui1Ptm9PoT9Fs7gW82lP06tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP06tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp.9mNIp0E0bg1Oow?t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M?t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug?t6BJpn0W879Bomgwpn9OrT8W82lP06tBt4dglnhFrmk?7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP80t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE?1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc34Sr6NU02kMe7w?2kMe7wJ9j0NdCNIu.lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng?gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM?20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw?lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ0gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1voT9zcP8w9Osw9OsFb?w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt04dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb01lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw?imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK04BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU?7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt?1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt?1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?4r0PI>U>1L__RzM.1k/p_>73__ZKc>Nf__TDM.4w/B3>nz__@Os.1O>1g,0nFi?5U3w4r30@w0g<1w>s/lU>XM0h0Ad4ga22IR22M>1g>ef__Sog.6g04q63Esdy0O92UEayMCc28Q7zwqf1kEeQ098C1k2hwHfPITcOYH9Ocv6S0Ww0kob0LUaPYXdPcLaOsz7NJweE0562M>1o>zf__SI>bC04q73owcygKa2EI9z0yd1UU6zMl63J040M662I_ePsPbOID8NMWw0k8b0K8aPYXdPcLaOsz73G01gwJK2I_ePsPbOID8NMWw0k8b,5g.3E/tl.1Ew0hEoexMS838AbywGb2oM8zgue1EY5k0XE0QOo5FAl0Mle2I_ePsPbOID8NYrpS0Ww0k8b0CwaPYXdPcLaOsz7NJDo3G01gwI.1c.1gf__UUM.ua04q63Esdy0O92UEayMCc28Q7zwqf1kMeE0c30ooaPYXdPcLaOsz7NwWw0k8bpwHfPITcOYH9Ocv63G01gwI,02>6g/GP>5w0j8U6zMl63I020AjfPwWw0g||||&&&&&&&&&&&&&&&&}01lw;5h;1tS}1:t8:3;13g}Q;Ic}p;nsw:6M:8:1E<1tQ}s}w,r__@Zg;7M}k;5K}6:yw:2w;8h}I:6}3;nW}0w;a8:1g:1M:n;3Aw:1M;xU}w;5Q}9:1w,r/_w;wo,6/_Y}g>1L/M;1YE,r/@g:R&&&).1tU&&&&,0hfw<15u;4nU;hDw<16@;4tU;h_w<18u;4zU;inw<19@;4FU;iLw<1bu;4LU;j7w<1c@;4RU;jvw<1eu;4XU;jTw<1f@;51U;kfw<1hu;57U;V5w<3EI;eho;Wk;3Km;eFw;Y3w<3Hu;eO+03Am;eR8;V5w<3JS;eho;XL;3Ma;eho;Ycw<3NQ+0V5w<3OI;eho;YQ;3Qs;f0U+3Am;fmE;V5w<3Si;ftE;V5w<3Us;fCw;V5w+esw;Ag,4}.odw;@L+0epM;Ag,4}.oiw;@S+0en:Ag,4}.oo:@Zw+emg;Ag,4}.orw;_5}0hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F;2>1>40hQ4A0jdxcg:kA;1ig>2>1>40hQ4A0jdxcg:gQ;14,2>1>40hQ4A0jdxcg:Ic;2Nc>2>1>40hQ4A0jdxcg:kA;1lM>2>1>40hQ4A0jdxcg:Ic;2MM>2>1>40hQ4A0jdxcg:Ic;2MM>2>1>40hQ4A0jdxcg:h:14e>2>1>40hQ4A0jdxcg:Ij;2Nq&;c.4;1O=c.8;1Y=c.c;2a=c.g;5K=c.k;7Ow{0c.o;86=c.s;8u=c.w;ei=c.A;gQ=c.E;h4=c.I;kA=c.M;Ic=c.Q;Io=c.U;_d=c.Y;_s=c?1;1tO=c?14<1tQ=c?18<1tS=c?1c<1tU=c?1g<1vE=c?1k<1w+c?1o<1wS=c?1s<1yO=c?1w),0c?1A<1CU{0gg0__4)>3g8.I;kA{3M8.I;kM{8w8.I;l4{e04?1s<1yO}1>h04?14<1tQ{qM8.I;lo{tM4?1;1tO=g0__4)>Bw8.I;ls:eY>Fg8.I;pc:6g>Ow8.I;qM:bC>Sw8.I;tI:q8.1108.I;Ag:ua.14w4?1s<1yQ}4.1bw4?1s<1yS:g>1g04?1s<1CS}8.1kg4?1o<1wS:1g.1o04?1o<1xa:1o.1s04?1o<1xw}U.1w04?1o<1xK:1g.1zMg0__4).1Cg4.Y<118=g0__4).1FM8.M;Ic[1Hg4?18<1tS[1Kw40__4<1tU[1MM>U;_d[1Rw4?1o<1yO[1Uw40__4<1vE[1@08.A;gQ[1_x*2328(29i*2gh*3HN8(2jN8(2nN8(2s18(2yh8(2Cx4?1o<1ye}M.2Hh8.I;HQ:1o.2Mh*2NN*2TN4?1o<1y2}M.2Yh8(301*3218(3618(39N8(3ey*3ih8(3mh*3pN8(3wx4(3Ax8(3Hh8(3M1*3R1*3Vx4?1o<1yq}M.3@h8(42x8(4718(4c2*4ix*4lx4?1o<1yC}M.4q1),06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0pCBKp5ZSon9Fom9Ipg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz80nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80pCZMpmV0hQN9gAdvcyUO06RBrmdMuk17j4B2gRYObz80oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T06pBsD9LsA17j4B2gRYObz80t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0t6BJpn1vq65Pq5ZPt79RoTg0s6ZIr417j4B2gRYObz80u6Rxr6NLoM1CsClxp417j4B2gRYObz80s7lQsQ17j4B2gRYObz80sThOpn9OrT90hQN9gAdvcyUO05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr417j4B2gRYObzcU07dQp6BKg4tcik93nP8Kcw1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcw1PrD1OqmVQpA17j4B2gRYObzg0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kcw1Pt79OoSxOg4tcik93nP8Kcw1DpnhOtndxpSl0hQN9gAdvcyUO05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP&&&,06M>s}w;78:sw:9)g[2VL/S}8;1Y:7M:3w>3{8{U>2M:2:yw;2a:eg>1,8:2}o>g,c}w;mU;1rw;24g-4[4xL/_}8;7Ow;va:4M>3{2}8.1lr/_w:2;21w;86:1w>1,4:2{p,g}w;xU;27w;5Q,c{w:6>6U>4:48;ei:V8:Ew>3>5g:8:1w.1U,g:6;4d:gQ}@-1{sM>4:1w<14g;4h:3w)g:8>7U>1}o;kA;1ig;5W)g[24,g:6;b3:Ic}G-1{yw>4}w<2Nw;b6:iR)w[98>1}8;_d;3YQ:3M-4[2w,g:2;fT:_s:6Q-2{Gw>U}M<5T8;jsw:2)w:2>bo>f}c<1tQ;4Tg}w-8}w.32,g:3;ntw<1dS}8-2{PM>o}M<5Tw;ju:1M,g{w:4>dw>1}c<1vE;4@w:6)8}w.3t,g:3;o:1g}3o-2{Vw>4}M<63o;kdw;1Y)w[eM>8}c<1yO;5b8;11w-8[3N,g:M+1iO}K)g:1>@w>s+6rw;kLw;18)g{4>2*5go;2bw>r>eg:8:1w>9,M(1sQ:hY)g[4g>c*okM;14)4:'
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
