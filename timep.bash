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
b64=$'45168 22584\nmd5sum:207fad133e9b73245277e6ff6aa3dc2a\nsha256sum:0ed593e1d63b58db29a64cb873d649c5092f3f4df8c738ba6de9a9f5ce08058e\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n0000000000000000000000000000000000000000\n000000000000000000000000000000000000000\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n04Poj4\n000000\n00000\n0000\n000\n26d\n1M\n00\n__\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\034vQlchw810g=?c0fw01+1=bxg=,4?e?a04?7w0t?4<5$}_hc}3Z4M{g{g<g;8=w{2[3s5M}dMn{1{1<1w,cwZ[O4Q}38jg}6w5[M0A{4{8<6<U3Q}3wjg}e1d[M04}3?g[w{1;g,.0w}702[s08[A{2g{1=4<1<80R[w3k}20dg}3=c=8{5fBt6g4<w3k}20dg}80R[c=M=w{kelQp0g,2Mdg}b0R[I3k}1k{5g{1{1hVnhA1w!+,g{5bBt6g4<O3Q}38jg}cxd[e08[U0w[4{1<1g<3<hQVl07ZMtlxpVxeLJUFfQUKi9eIflh48YMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q,Yvg03_9jFd?1E;eDw//_OkOjg?q04,3FQf//YBaAQ?6w2<Ws3//_9i9d?1E0M,eCM//_Okqjg?q0g,3FEf//YB4AQ?6w5<Wp3//_9gFd?1E1w,eC0//_Ok2jg?q0s,3Fsf//YB@AM?6w8<Wm3//_9v9c?1E2g,eBg//_OnGj,q0E,3Fgf//YBUAM?6wb<Wj3//_9tFc?1E3<eAw//_Onij,q0Q,3F4f//YBOAM?6we<Wg3//_9s9c?1E3M,eDM_L/_OmWj,q1<3FUfX/_YBIAM?6wh<Wt3@//9qFc?1E4w,eD0_L/_Omyj,q1c,3FIfX/_YBCAM?6wk<Wq3@//9p9c?1E5g,eCg_L/_Omaj,q1o,3FwfX/_YBwAM?6wn<Wn3@//9nFc?1E6<eBw_L/_OlOj,q1A,3FkfX/QydfsBe?18zgn2jw?i3DUt1l8yMkCiM?i8n0t0D_U0Yvw;333N@:4ydfpBe?18zjmijw?i2D@i8DMic7KfQz1@0d80sp8QvVQ54yb1hlb?18xs1Q2f_wpwYvh,MMYvw;3P3NXWw3RBjw,7kHlky3fv9a<i8DBt0N8zjTCi,W4D//Epf/_Yo5fkU,5tMMYv0ccf7U:YMYu@KBT//3N@:8I5mB8?4y9Qon0t4S9@4y5Og@4pw4?fvgi07Ni8QZf4U?6pCbwYvx}pCoK3N@4:1C3NZ4,fJxp8wYo1csb1W0wfJJ8P19t8ev5RWvvgMSoftJJ8zgnXjg?grwwwXzJgrA4<pA4frJ1C3SYBQyY?6p13SXFi8Sg?g?6ofsJcvpwZMQw1C3T3J?Yvw;1C3S_4pwZLP6of_Kl8wY0gpw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf18et0fxjv//71uRg,1<yvx8xsAfxpH@/_3A8I5SB,8n03Ukl0g?i8Q5OQM?6oftJK@88eUXrY4<pwZL9qkK?1C3SXmpwZKXQydA?4?1C3Tbj7Sofsd80pwZMXg0f7U:pwZLN6ofrYNC3_XBi8f046ofSYdC3Tbh0mofe432pw_LMmofrYxC3Tbg0mofSYJC3Px`01pw_rOSofe43apw_LO6ofrY5C3Tbh0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px0OCofXY4fak3Mi3Dg3UkT//NMmZjM,g,4y3fplb<t073kP703W98zhl6_v/xs1Q7Xw1<3W98zhlk0M?wu4?1?i8Q59_T/Qwfhd18yhlsiM?mYdCbwYvx}glt1lA5lglhli8DRLBI,1ji8DXi8fI6ex2@/_i8n0t1m@ng,4y9TQC9NuwJ@/_ijD5sy18wYgoi8DKi8Dvct9rnk5sglR1nA5vWmTX/Yf7Qg?4O9WkMFW4wFSkC9NQydgfZ8znA1ioDei8B490zE1_L/QO9_QC9NezY@L/i8Duj8DOj8DDi8A49ewq@/_i8Is94f613g0ioRR0kybl2g8i8DvW03X/Z2NAgX_M1cyuvEYLD/Qy5M7gRi8Is94y9WAO9VP79i8DuWfDW/ZcyuvEovH/Qy3N1x8ytZrnk5sglR1nA5vWkLW/Yf7M1cyuvEsfH/@L1pCoK3N@4}f7M11lA5lglhlkQy1X201?23_McfzUw1?23_M5@aQybrwwNM81Z?183QjEhj7Aw_Y3thFcySoggo0Y901c3QjwWMJC3NZ4,NXkkNV4ydt2hgLM8,3EFfD/Un03UnI<i8Jc95xczrgAA<4yUP_tjUWmrN218qlMAk4123M18Z@B8MvA_ic7W1QwFOAw1QQO9ZH///W5XW/Z1ysq5M0@5cM4?4xFx2iw<g48f04xFz2ig<g48f04w3z2io<i071i0ec9aw,180tB8xuQfxdM,18znMA4bV;cs18zhlBaw?i8BY90zEf_D/Qybt2g8i8DLWebZ/ZdxuhQabV;i8RY9518ytANM4yd5jcG?3E4LD/Qydt2hgj8DDWbnZ/Z8wsgw0g?h8DMmRR1n45tglX3pF1czrgAA<37_j8DSW9XV/@5M0@5Bw,4xFx2iw<g48f04xFD2ig<g48f04w3D2io<i073i0es9aw,3F@_X/Sof7Qg?4ydfpAz,NMewi@f/grU1<WUlCbwYvx}i8Dei8QZBOA?370W4_U/_Fpv/_SoK3N@4:3EO_v/UIUW2jV/Z8zjRJ8M?i8D6cs3EM_v/@KLAeyHZ/_yPzE1fD/QydfiQF?18ysoNMeyzZ/_WU@gi8Dhi8ni3UjH<ZZsNMeIzpCoK3N@4}f7M3O3PzMf0p8wY01yvZ8es4fxbc,18zhg6w@87tu98zl08i3DhsyRCpyUf7Ug:6pCbwYvx}3NY0YAwfef5Y5Lx8yt18wY88i3Dhs@N8esxPpAydk07O3PzMf0p8esFPlQydk0bO3PzMv0o1i3DasQt8zl03YwYUY7M60AwVODcTi8Rg1f8fef1Y1wd8esFP9Qydk0nO3PzMv0o4i3DasNt8zl06YwYUY7M61kwVODc7YwYUY7M61EDUZZ333NZ?4ydkgx8et4fwSL//HW8DUMSof7Qg?45nglp1lk5klky9_ld8wuP8<i8BQ9118ylgA680_bg@5xg,81_0g1Rv@wK@L/ct98znMAa4yU:4,2@0g,4y9h2gEW5XT/@5M7UbZAgAbw4fxrg1?18zngAc4ydftED?3E_Lr/UB490O5M0@4X04?4yb1ud2?2_,104yb04y912jEKLr/QC9N4y5M0@4DM4?ct490M1<WPF8zjmm9M?i8DLW1nT/Z8yggAi8n03UjM0g?LM,g3EvLr/QC9N4y5M0@4Lw4?ct490M;ibQB8Oa4V9POOQkNXkC_IM4<1,f7M18yMMAKw,g2@0g,4O9V@yWZv/ioD6i8n0t79cyMTXhg?jon9t2V4yuZcyv9cyup1_Z5bzgMQgoD5j8Dw3Xogi8f?kwNRkAfH@Z8es5RXuKH3NY0cs0fEAOd3nTT/@5M7gvK04<fEAOd3oLZ/@1Ug?4018zgluZ/_j0Z4O4O93pd5?3HCV18yPMAW2vR/Zcyut1ysu5M7l0W6zR/@bh2gcxs0fxaw,18yQgA44y5M7g3h8AEi8J491x8xs1Q0Qy9a4y1Ncw,14yvxrnk5sglR1nA5vM@wEZv/yRgA38nit67EC_j/UIUWfjR/Z8zjRu9w?i8D6cs3EA_j/Q6_0g,eKVi8I5j44?bY,40i8I0i8A49ewzZv/NQgA304,19ysh8xs0fxqn@/Z8zjQ49w?cs3Ekvj/@KYi8IY9eymZf/WVh8yPMAW8LQ/_FiL/_QyddtwB?18zjTf9g?W5fR/Z8yggAi8n0t26_,10ez0Zf/ioD4i8n03Ula_L/i8IY9exbZf/WVF8zjSO7M?WeTP/_Flv/_@zjY/_yPzEbfn/Qy9XAydfs8v?18ys8NMez8Y/_Wj3/_Yf7M11l5lji8fIs4ydt2ggWcXQ/Z8zjl@9g?j8Iwi8D5j8DDW5DQ/@5M0@4gg4?4yddmMB?1cyuvEgLj/UD3xs0fxcw,18zjlv9g?j8DDW2DQ/@9MUn03Uhf0g?i8QRkyk?4O9V@wgZf/yse5M0@57w4?8J49123@0cfzRA3,fx4I2?18zjTj9,w_w2th98yTQ8i8Q5MOg?80_04wfhfx8K2kz8EjADfbbi8Rk91z7h2gk;4ydt2gki8B491zEj_P/Un03Umb<j8J491ybj2gki8RY920NM4yd5voA?2@k<ex6Y/_i8RY923EPfb/@JUpyUf7Ug:8J49123@0cfzVc1,fx0Q1?18zjQZ9,w_w2th98yTQ8i8Q5big?80_04wfhfx8K2kz8EjADfbbi8Rk91wNZAy9h2goWcjX/@5M0@4H08?bI1<WNcf7Qg?8JY9118yuXExfz/UD3i8DLWaHO/Z8wYhMytxrnk5sMMYvw;1cyup8zjQz9,cs3E5_b/@KV3NZ4?2bh2ggw_w33UYX0w?3UiJ0g?i8QZDic?8fU0Dkii8JZ24yd1oQz?20fM183QjUct98zngA6ct491w;W2LX/@5M0@5p//UJc91x8znMA8bUw<cs18zhnd8M?W2vO/Z8znMA8eyJYv/Wlr/_Yf7Ug:4Obph18yTQ8gg@S12i0fM0fxo8,18zjQq8M?xc0fxfE1?18K2kz8EjADfbbcvp8zlgA64y9h2goWb3W/@5M0@5XfX/Qybj2goi8RY9218zhly8M?cs2@c<4y9v2g8WarN/Z8yTgA24O9V@x9ZL/Wtb@/Yf7Q?i8QZ6hQ?370W0bN/_FEvX/MYvh,xc0fx77@/_Fwf/_MYv04Obph18yTQ8gg@S12i0fM0fx581?24M0@4JvT/SoK3N@4:18K2kz8EjADfbbi8Rk91x8zngA5ct491g;i8B491zE@LD/Un03UkS_L/j8J491ybj2gki8RY920NM4yd5q4y?2@k<4y9v2g8WePM/Z8yTgA24O9V@yfZv/Whz@/ZCbwYvx}j8JB44ybvgx13Xo4980_?@4Sw,8j03Uhj_L/pF0NQAydt2goNQgA6;3EvfD/Un03UmU_v/yQMA64ydv2gwLy;NM4yd5hUy?18ynMA2exPYf/i8JQ90xcyuvE5Ln/@Cv_v/A4ydfiAs,NMeziX/_Wn7Z/Yf7Qg?4ydfv4r,NMeyWX/_WlDZ/Yf7Qg?4ybj2goi8RY9218zhna8g?cs2@c<ewjYf/i8RY923ECu/_@B2_v/3NZ?4ydfi0x?24M0@5IvX/@wIY/_WinZ/Yf7U:i8QZ024?8j03Ukx//WZVCpyUf7Ug}Yvg018w@M8i8IZdjM?bU1<W9LM/Z8yPQcf,Lw4,3EyL3/QybfucX?2@0g,exVYf/i8IZSzI?bU1<W6zM/YNM4y3N0z30fcf7LF8w@M8i8f42cc|||!!!!!!(3<7M<4<6<44w4g0C408:7M,28,346@RqGEecYsLvhTuylPGsEjhFtg$?7E<g^eA<i^1;w^dI<g^4o1,i^1Y1,i^1A1,i%Q1,h^bE<i^2o1,i^dg<i^9M<g^d8<i^5k<i^a8<g^6I<g^3Y1,i%4<w%w1,i^7c<i^5Q<g^8w<g%c1,i^2Q1,g^1c1,i^cw<i^2M<w^fE<i^4o<y^741,g^901,h01s0w58[M{4I1,i?g0E1c}1f{ac1,h01s0g58[M{7Q1,h01s0M58[M{5Y1,h01s?5c[M=1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1Pt79OoSxO069FrChvtC5Oqm5yr6k0u6Rxr6NLoM1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC069RqmNQqmVvpn9OrT80nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw.rSNI07dQong0sThAqmU0pCZMpmU0pD9Bomg0pClOsCZO06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8Kcjg0hQN9gAdvcyUPcM17j4B2gRYObz4T04tcik93nP8KcyUR;g02?4?g02?8?w02?c?w02?4?w02?4?g02?401?5?4?g02?4?w02?4?w02?4?g01?4?g01}1?g0Jg4?1=B96m1w?1g2_0g?4<behBwo,g0Ow4?1<2nApo6,30dk1,g<thFF2g,w3w0g}cxd[2=g1g}d1d[2{3g1[dxd[2{3ojg}e1g[2{>[exg[2{1gbM}f1g[2{>[fxg[2{1UbM[1h[2{3Uc{xh[2{30bM}11h[2=8c[1xh[2=Mc[21h[2{1Uc[41h[2{>[4xh[2{2Mc[51h[2{>[5xh[2{3oc[61h[2{>[6xh[2=wcg}71h[2{.cg}7xh[2{>[81h[2{2ocg}8xh[2{3wcg}a1h[2{>[axh[2=ocw}b1h[2{>[bxh[2{10cw}c1h[2{2gcw}cxh[2=8c[e1h[2{>[exh[2{3wcw}f1h[2{>[fxh[2=8cM[1i[2{1gcM[xi[2{>[11i[2{2ocM}1xi[2{3EcM}21i[2{>[41i[2{3qd[4xi[2=w3M}5xi[2{3wk[61i[2=jdg}81i[2{3ed[8xi[2=w3M}9xi[2{10kg}a1i[2=Ldg}c1i[2{32d[cxi[2=w3M}dxi[2{2wkg}e1i[2{1cdg[1j[2{2Td{xj[2=w3M}1xj[2{3wkg}21j[2{10d[a1f[1w<c+axf[1w<w+b1f[1w,1Y+bxf[1w,24+c1f[1w,18+cxf[1w,28+d1f[1w,1I+dxf[1w,1Q+e1f[1w,2c+01g[.<4+0xg[.<8+11g[.<g+1xg[.<k+21g[.<o+2xg[.<s+31g[.<A+3xg[.<E+41g[.<I+4xg[.<M+51g[.<Q+5xg[.<U+61g[.<Y+6xg[.,1+071g[.,14+7xg[.,1c+81g[.,1g+8xg[.,1k+91g[.,1o+9xg[.,1s+a1g[.,1w+axg[.,1A+b1g[.,1E+bxg[.,.+c1g[.,1Q+cxg[.,1U+6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD=1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ}13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO.sCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK[imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi.ondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb=0820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK=1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng:gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU;imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb:w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi.ondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM{820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng:gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU}19py0YlA5ify1FsO.sCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO.sCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK=19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U:4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU}1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt06tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM0Br6NA02lIr6ga02Q0sC80t6BJpn0W86ZRt21Lpy1JpmRLsDA0t6BJpn0W879Bomgwpn9OrT8W82lP06tBt4dglnhFrmk0t6BJpn1vpCVScm40t6BJpn1voT9zcP80t6BJpn1vq65Pq01QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0Uu?Bc3xUbikMcjpIr7w0t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt07hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng+?4<2;M<g<w<1g,4telg01?701;A=w0.0g<3=4r0PJk<2g<3d/ZM<sc/_Vw,3MQf/H<63i/_8<sdf/OM1?2gRv/t04?93m/@80g?sdD/Zw1?3MTv/408[k=5Wkw01u1016MM72901,A<7<8zc/@M0g<UghwUoiwYbtMy?3YqeOEP928;4<4g,3gPL/vM4[o<m<3Pg/ZC0g<cL0gUgwM9S3ww0o<7g,2gQv/0w4,123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6igUUwMt73B1z2wUUigUMggUEgwUwgwUogwUggwU8iwI2yMEee4gec44ea48e848e648e448e24wb04g,3o<fdb/NY2<gwUgzw923xyd0Q8e88M4ggUExwl13z231AseQ083cM4a3z143yx13y123xx23x123wx32M,1;w0g?5dj/_E{j<3g1<Rv/Tg8,123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6h0UUwMt73E020Y412wUUh0UMggUEgwUwgwUogwUggwU8ggI<Q<x04?93n/ZN1<48e48M2ggUoxwd13y2314geA043ww4a3y133xx13x123wx82M,1g,2Y0g?SdL/QY;h0Ug0AEe2|!!!!!!!!!!!!!!!!!!%040k}3g1[dxd{g[2R0g[M{B08[d{f0j[6g[38jg}1I{2=q{d1d[7=8{fn@_SY:2{5{9wz[1w{U8{E{X04[b{1w=M[3EjM[8{s08[k=s{5M[3MaM[s{82o[8{d05[2g{o{fX/SY;Q2k}3/_ZL:4{Yf/rM<249g}fD/SY;dg!!!!!=0e1d$co2[Rw8}3C0w}fo2[1wc[m0M}2o3[dwc}160M}5o3[pwc}1S0M}8o3[Bwc}2C0M}bo3[Nwc}3m0M}eo3[Zwc[61[1o4[9wg[S1[4o4[lwg$xzg}1gbM}8oQ[u2Y}3Uc[c0L[23{Mc[7wM!xzg}2Mc[8oQ[S3[>[20N[s34}>[9wN[U34$xzg[ocw}8oQ[g38}2gcw[wM$8oQ[U38}>{wP[k3c}>[9wP[W3c}>!dEQ[80Y[1{e1g[4Pk#3ed[20f{g[10kg}2YR!Mzg[w3M[4{E54}1cdg#bsQ[80Y[1{e1h[g3g-4t3gPEwa4teliAwcjkKcyUN838MczkMe30U82xipmgwi65Q834Rbz8KciQNag<w<g:4?4t19]0o0g}1w1{w<g:4?4t19]0B08}2G0w[w<g:4?4t19]0Y1c}3U4M[w<g:4?4t19]0o0g[p1g[w<g:4?4t19]0XNc}3L4M[w<g:4?4t19]0XNc}3L4M[w<g:4?4t19]0Gw8}2L0w[w<g:4?4t19]0@1c}3Z4M!4<40f7_*0Q<2?g0o0g)Y<2?g0A0g-28<2?g0Q0g-3w<101w0g5c[1{4g<10180Q4Q-6I<2?g040k-7s<10140O4Q&40f7_*9o<2?g080k}1_0g}ak<101w0w5s[4{c4<101w0w5c{1[dc<2?g0E0o}1C0g}eg<101w0o5c[8{fk<2?g0g0I}3W=w1,2?g040w[20g}2Q1,2?g080A[v0w}3Q1,2?g0g0M}3t0w}6s1,2?g080Y}1N1[7k1,101s0U5[1g{8g1,101s0g54}1o{9g1,101s0E54[U{ag1,101s0U54}1g{bc1,40f7_*bQ1,101?S3s&40f7_*cI1,2?k0Y1c-d41,101c0S4Q-dU1,101g0U4Q-es1:Y0I3k-fE1,101s0c5c)o2,101o0W4Y-dU<2?80B08-.2,g^2E2,i^4s2,w^6c2,g^742,i^882,i^9k2,i^as2,h^bA2,i^d82,h01s0w58[M{ek2,i?g0E1c}1f{fA2,i^1g3,i%M3,g^183,i^2s3,i^3I3,g^5c3,h01s0g58[M{6k3,g^6Q3,i^803,w^8Y3,i^9Y3,i^b43,g^bY3,g^dc3,i^eg3,g^fo3,h01s0M58[M=A4,i^1I4,i^344,w^4I4,i^604,y^7I4,g^8s4,h01s?5c[M=1zsDhypmtFrBcKrM1Apn9BpSBPt6lOnThJnSdIrSVBsM1vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrCBQ07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1voT9zcP9vq7tvu3wS069FrChvtC5OnSZOnS5OsC5VbCdLrDdQs79Ls2UMbCBPsC4Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?t6BJpn1voDlFr7hFrw1QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv06pFrChvtC5Oqm5yr6k0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8Kdg1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw.tnhPg4tcik93nP8KcyUR06pBsD9LsA17j4B2gRYObz8Kdg1CsClxp417j4B2gRYObz8Kdg1Pt6hFrA17j4B2gRYObz8Kdg1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0t6BJpn1voT9zcP9vsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?pCdIrTdBg4tcik93nP8KcyUR07xCsClB07dKs79FrDhCg4tcik93nP8KcyUR07dQsD9zq790hQN9gAdvcyUObzk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1Pt79zrn10hQN9gAdvcyUObzk0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP06RBrmdMuk17j4B2gRYObz4Q069FrChvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg.rSNIg4tcik93nP8KcyUR06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CrT1BrA17j4B2gRYObz8Kdg1DpnhOtndxpSl0hQN9gAdvcyUObzk0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79BsD9LsA17j4B2gRYObz8Kdg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8Kdg1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt,bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCBKqng0bDhBu7g0bCpFrCA0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KsCZAonhx02VKrThBbCtKtiVMsCZMpn9Qug0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt?KpSZQbD1It?Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM!!=01I<7;w[.0w}702[9*g(K;g<o{B08}2k0w}1I(4(xg<4<6{b02[I08}2M0g-4=g{3g<1<1w[1w1[604[zMY-2*W;g<o{Y1c}3M4M[Q(4(g<fr/SY2=0w{2{U=s{2(4E<b;w{U8[3ww[o0c[8;g<w{6{1i;M<8{C2c}2o8M}eM1)1(mw,f/_SY2{8gB[x2k}18=s=w{2{6s,3@/ZL0w[3g9g}d0B[k=8;g<w)1S<1;8{82o[w9w}d05[.{8{1w{w;g,12{f0H[Y2I}.0w[s<m<2=o{8E<1;w[1wbw}60K[80s-1(2i<.<8{w3k}20dg}3*8(Fg<4<2{b0R[I3k}1k(1(bc<1;w{8dw[wS[R04)w)2Z<3w<c{O4Q}38fg[w(8=w{Og<Y<3{d1d[Q3Q[8(2=8{dk<1;M[3ojg}dwZ[2*w)3y<1w<c{U4Q}3wfg}c01[2=8{1=WM<4<3{a1f[E3Y}18(2=8{f;1;M[3EjM}ew_[W*w{2{3V;g<c{U5[3wg[502)w(_M<w<3{41j[c4c}181)8*g1,1<c(313[bw(4=g{d0g?.+y7s}1wgM}201)4*g<8^w4g}1U1w}.<y<2=o=A<3^fxa[Cgg)4(h;M&2hjM}2c1)1('
;;

'aarch64')
b64=$'145454 72728\nmd5sum:f22cc6f034a7ec73067d57ba5531bd4e\nsha256sum:9e4c2a85e78b780c1eef640dd7db816a7bd96ec3206ec6316ea81652df40bf2d\n0497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n00000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n0g8\n000\n0g\n00\n````````````````````````````````\n04}c.}M1}3\034vQlchw81.+0c0JM01-1{dwk.+4?e?704?7g0s?4<5`{A2Q]2gbg+g]g<o>30_g]c3Z.:MfQ1]w1g]4w9+1]2<1w>dzZ}SfQ1:3o_g4:c01}M04}8{g<4<O04]38.]cw1}9{A{g[kelQp.>30aw]c0G}M2E]1A[6g[1[1hVnhA1w``;g[5bBt6g4<MfQ]30_g4:c3Z.:g08]1?w}4[1<1g<3<hQVl082KgU9@brocmqDMoKi64lX7JblJ:c<y;g<o<gi0h02og0w:y<9g>cgrXlGGwUPNOZZ7tW9neFOxd6BR`+0c02g2w4!c05w3w?8(0sM>18!uw>1`4<2`X<1`hw>28!Kw>18!9w4?18!@w>18!c04?18!4M4?18!D<1`Ew>1`0M4?18!qM>1`3g4?14!UM>18!lg>18`g>2`204?18!ng>1`k04?18!O<18!ig4?18!6g4?18!y<1`dM4?1`b<2`_<18!Qw>18!uM4?1`7M4?18!Cw4?1405w1g0w8:3{lg4?1802M3w8w]5g[Hg4?1405w0w0w8:3{xM4?1405w2?w8:3{qg4?1405w2M0w8:3+5ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO07dKs79FrDhC071Lr6M0sThxt01Pt6hFrw1CrT1Brw1CsClxp01Cpn9OrT80pSlQonlUtC5I06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUNdM+w01?40.02?8?w02?8?w01?4?w01?8?w02?4?M01?8?w02?80.01?4?w02?4?w01?40.01?4<1?80LM4?1{IV6m1w>M39.?4<9uhBwo>80R04]30_g4]c4}w1c]38_g4]c4}b1c]3g_g4]c4}QfQ1:3w?8]c4}@2c]3E?8]c4}c2k]3M?8]c4}@2c]3U?8]c4}m2k{g8]c4}S2o}8,]c4}E2k}g,]c4}W2k}o,]c4}42o}w,]c4}m2o}M,]c4}@2c}U,]c4}A2o]10,]c4}@2c]18,]c4}K2o]1g,]c4}@2c]1o,]c4[2s]1w,]c4}k2s]1E,]c4}@2c]1M,]c4}u2s]1U,]c4}M2s]2g,]c4}@2c]2o,]c4}@2s]2w,]c4}@2c]2E,]c4}82w]2M,]c4}s2w]2U,]c4}W2k]3g,]c4}@2c]3o,]c4}M2w]3w,]c4}@2c]3E,]c4}W2w]3M,]c4}c2A]3U,]c4}@2c{w8]c4}u2A}80w8]c4}O2A}g0w8]c4}@2c}w0w8]c4}M2g}E0w8]c4}o1M}U0w8]c4}U?2:1?w8]c4}82E]1g0w8]c4}A2g]1o0w8]c4}o1M]1E0w8]c4}c042:1M0w8]c4}g2E]2?w8]c4}o2g]280w8]c4}o1M]2o0w8]c4}A042:2w0w8]c4}o2E]2M0w8]c4}k2g]2U0w8]c4}o1M]380w8]c4}Q042:3g0w8]c4}w2E]2w_M4]44>5-2E_M4]44>7-2M_M4]44>y-2U_M4]44>A-30_M4]44>h-38_M4]44>k-3g_M4]44>B-3o_M4]44>t-3w_M4]44>C*8]84>3)8?8]84>4)g?8]84>6)o?8]84>7)w?8]84>8)E?8]84>9)M?8]84>a)U?8]84>b-1>8]84>c-18?8]84>d-1g?8]84>e-1o?8]84>f-1w?8]84>g-1E?8]84>i-1M?8]84>j-1U?8]84>k-2>8]84>l-28?8]84>m-2g?8]84>n-2o?8]84>o-2w?8]84>p-2E?8]84>q-2M?8]84>r-2U?8]84>s-3>8]84>u-38?8]84>v-3g?8]84>w-3o?8]84>x)_8Mfl_nK_GvQ3095Z?2k_nL1GbYz0Zn?R_m;f1XLWDM?3g4vV7@h3yfV4w0x_m7O03RhYw0Zkv80flY>Y142gfAg0w2h808vRL>f0h1A3V4280Ai027ZrM?3M4gF0@h12094w0x_mY>Y14egfAgow2h808vRL>f0h4A3V4880Ai027ZrM?3M4hp0@h2y094w0x_mY>Y14qgfAgMw2h808vRL>f0h7A3V4e80Ai027ZrM?3M4i90@h020p4w0x_mY>Y14CgfAg8w6h808vRL>f0haA3V4481Ai027ZrM?3M4iV0@h1y0p4w0x_mY>Y14OgfAgww6h808vRL>f0hdA3V4a81Ai027ZrM?3M4jF0@h320p4w0x_mY>Y14@gfAgUw6h808vRL>f0hgA3V4082Ai027ZrM?3M4kp0@h0y0F4w0x_mY>Y15agfAggwah808vRL>f0hjA3V4682Ai027ZrM?3M4l90@h220F4w0x_mY>Y15mgfAgEwah808vRL>f0hmA3V4c82Ai027ZrM?3M4lV0@h3y0F4w0x_mY>Y15ygfAg0weh808vRL>f0hpA3V4283Ai027ZrM?3M4mF0@h120V4w0x_mY>Y15KgfAgoweh808vRK>d?V4vVg>JcD__Nv?R_m7O03RhYw0Zkv80flU>Y0202V7x?3M8o0bAjY?eL>1kUg?Q27gh_Bx?2QY0c1Gw027Zr?R_mU>Y0202V7x?3M8o0bAi4?cIy_7_jggO1yO7Ygpf1?2QUw?Q4bIh_By?2QY0c2Gw027Zr?R_mfOc3RvRXLGDZ0M2hYMI0@vc?f1wwAIVg040d@>d?R4vVw>Je>d0.3uhrv__BZz__Vsw081io88bevcbgfDZuYaELOc3Rs03nZov80flnOg3RtL__Nsv80fl7O03RhYw0Zkv80fl7O03RhYw0ZnB?3MFc0bAqfMgHA30w0QMw40Jan02V4A?abUMc1GG9?97x0O0Go1h0e<kE0742ig7xwK04wgkGv?fHgv__le038iH?R_m1w?I0c?b0@101fTqP2fpM404Z_Gc8ZwQ?Aoh~0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCVW184YvM04WW7X_Ri@Y0aZNf__5_RXKWDZ0M2hYRc1Gvg30aHT6M3VZMc1GC4bw590__@nU>Jfc30aGx2U1iU0ckGzL__Vt_0w3H0M40le435WHw0NiGZNJ0@g80w5bPkQ6F_nL5G3X__Ns101fbow8kOQ04097RmMaFdwg0Qu871aAz__@nZgc0GK0DgfAw__@nUyd0@u435aHQ0M2GU0clGKL@_Vvy8Q3Vogo0Au035aG_qy8UUwcmGKn@_VuvqzoUU0clGKr@_Vv0.2QUwcnGK435aE3081iU0clGzj__Vvw0NmG_LX_B_srgfDw0NiGZlJ2GvdjgqDZuYmE@fX_5@035qHW_L@nYv__5_RXGGDZ0M2h7MM0soMd05jPkM6FZNI0@hY4077d1g1kcMh0@hg0wd9y0A0VnM?snciDVEv301N8gk0l3g8gfDxgMahw090ehY?75?81iB1avCIL@_Vuw1?QUkc3Ag?w5bx8M3V0L__BO0d03ny5QSF0Qy8QK0jjGDz0q3OUid0@k8k0VI020er5M04yM?w1bT_L@nV0c0aE0403gc__@n?10KtH@_Vvx0M2G<I0103F6G_L@nYRd1Gig0w5bT6Q3VU0c4aLRXRGz?R_m4M20Qxg0wdbxgMahg020kGv@_Vuw@_YRV0J9Gu3VDJ9wqHPO0Qy8QG1QQ_bz0q3Ow1zAYK530V50v42r0fN7AMbYwII?80iBMw3CZj@_VvA0M0GMfL_du0njqA1i8ziUMJeGu41Ef80506roM01CSc?EJz01ubQMg0J08?b12M0Wh.y0QK130p7AgM2VUys0@oX@_VvxgM6hU0cjGCj__VvAgQ2VJ080Je8DgfDz0NuGU4c2Ag48wdbAgM2Vw_X_B@530F7w0NiGmv__B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRw>b0.0Shp_X_BOg0w5a___YnZNJ0@u0312HPkQ6F_nLmGc03nZrx0MeG<I03w3F7AgM2VI_X_B@h3gbDT6Q3VU0c4aLdjgqDZuZqEM0dvRH3@_Vs?42VvLX_B@430aE>2M0c0dAkX@_VvT6Q3V9020kLdjgqCA__Yn7O03Ru0382Fv303Nygc0l2og0d63083i7O03RhYw0Zkv80flN6xzKek30WFz402h04z46BY?@Jy__ZknM05WWA105gAq6kUEMg0Ag10N1Fv?fH2g40l2dEoPyB202h04336HY?KJy?1k8mxBe010MhHw0O0GM0dvRwk0wdbL__Yn_nKMGvQ3097PkM6FYMc0GLlr0GDToMeF@Tc5GvM30qE?40VUzs0@h@Q07512w1ko0p0eg0a03ny?3Mgs0bAk3MgHD01g0R0M?I<b0@101fvqP2fpM404YvGc8Z84?Ai5~0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCUq184YfM?WW7X_RhuY0aZkY0bAm0agLB04g2Q8M30QK3z0p42081i8g20QKc_0fA5_L@n7M?smQ?5jw_Q1VM0U0dNc?b1P0w@hU0cjGK430F4g_L@nZMc0aI.03jx?3g8u17@i?Ed8R043V@vT_B_I30aFw4g2QdM20kLBH1aAd>kU0cjGw4?b0x80@hUfT_B_k30aG04w2Q802wQKPZ_VvX0M2Gw0Y0J1s0w5bVqMiFISi4QBe4If9WdE3iAVPjYKc35qHw0NKGZw?Y1w?90y0a3i8g20QJr22V40_L@n68ceAvA30aFjvLDO5020kxEwMfb?w2QMMF2@gc50bjw0NgGUwcpGK436WFw03_mowcpy_g302Hx0NKG81h0e1c04YFPvxGrfM02WU7__Rjz0NmGU0crGy80Ed8x083iV_T_B_A30aG0_v@RU0clGLLZ_VvS0M0GU0crGxo303mL_v@n5Mk0d5M?bik0M2VU3t0@u090bgj?3VU0cmaLBHhaDPkQ6FZlJ2GvtzgWDXsQmF_nLgGc03nZo?E3iz_T_BMc?90v07DOoU0vAmcgC9H32wbVQL__5VzZ_Vsn1g0QRLT_BM0.bAS081iE_T_B@430aE>2M0e.AnfZ_VvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRK035qFZ_v@nR___5@4?d0xU4vV802wQzs0w58R043VyLT_B_I30aG?M2Q@mI4Gp___Ns?E3iqfT_BM8?90v07DOgE0eAg4?90ww1@h0122CC0a0LBK__YnU0clGCrZ_Vvn__YnU0cjGw4?b0x80@hpvT_B_k30aG?w2Q802wQD7Z_VvX0M2G0fT_Ju035qFp_v@n<I3o0w580w12hgvT_BY___NvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw>b0S081i040fAjjZ_Vv2__YnzLT_BM0.bAS081im_T_B@830aHx0NeG<I>494G_v@nKf__5_RXJGDZ0M2hUgc1Avdj0qDR4M3Vt_T_BNg.fDR0M2G.?I2504p7w0NiGpvT_BM0a03jw0NiG.?I2604p5w_v@nYMc0aG0503jw0NiG.?I2504F5q_v@nYMc0aG0a03jw0NiG.?I2404V5k_v@nYMc0ay0903nwgQ2V7MM0soMp05h04M1k7Mw0su4g05iw1A3V.?I2403V42040VnM?si?w9Gzp8jiUyc1Ake4Ifbx4M6hwVPjYLZ70bB3vLDOUOs0@sT@_Vs01?RV2t0@g8?b3zhQ2VgE0kAg4awdbwgM6h_vP_B@130p4H_v@n8w?5e13gbAv301NH0M0la0805gv201NUgI0la06gfA1?2M8g0fAg8.3Bv?1N8020CGdAxdby8M6hgUiMYw40wda3DdfOgTXVYKcD0fCK_L@n?M0d3c0w5bw0NmGXLP_B_kjgfDw0NcGYRd1GvRXOGz?R_mU4d0Ku435qHO_v@nYMc0aK035qHz_f@nZhd0@u034OHPkQ6F_nLaGc03nZrx0NiG<I3c0w580M1ehLvP_B@D__NvwgQ2V7MM0smMg05jw301k7Mw0so4705iw1A3V.?I2403V42040VnM?si?w9Hx8M6h0w20QLZb0bC4_L@nUfH_dudbgbA2?2MgC0kAg44wdbwgM6hJvP_B@130p7z_f@nSL__5W3igaA1040Vww90eu4403k>2M>fAk8s03izp8jiUyc1Ake4If81083iwVPjYAd@@vbz9M3Vq_X_BY3T_Pnz9Q3VV4c1Au031aE11E3i0w?I490597A7M3VCLP_B@4vgfDw0NiGsfT_BXX__Ns>2M>fAqr__Ns>2McM20kw304p5__f@nG___5M>b<@hvL__5M>b<@hOv__5QbP_Pjs__YnUOt0@g8?b12g1ih.q0QK130p60_f@nU4c1AqXY_VuB__YnE9p0Gg4.3Cy040V.s0d6bJ_Pizp8jiUyc1Ake4Ifbx4M6hwVPjYKkv0fB3vLDO_Qs0KucD0fAS_L@n8f7_dugDgfDwgM6hUQt0Kg4awd82?2MgE0kAmrY_Vvw7Q3VUkc1AjPZ_Vua__YnEd90Gg4.3C20A0V.M0dcbP_Pjx8M6h0w20QLZb0bAx_L@nweX_dudbgbDAgM6hU0c4Gw44wd82?2MgC0kAugv0fBg_f@nUhZ0@u035aEC_v@ntf__5M>90P081i040jAjzY_VtA__Yn<A3c0w580w1ahc_P_BR___Ns>2g>fAgbV_Pny?3ggs0bAk3MgHA01w0R0M?A<90@101fvqP2fpM404YvGc8Z84?Ai50494v80fl7O03RuovfAXW1PZL_UuYjIqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrA4vfAVq1PZL8pOZjzEseCV07PVemws_rM2sLkUq73FKmNY@jBE7fSZXDXReuxYWrxE4wjM_?3HEvL_l5XM0HRkM0Khw0F2@i3C_Xk?E3i0_P_B@b___0v07DOgE0eAu7___0ww1@h0122CE0a0LAD__Yn<A>3V42ZfYRUw?Q4702V50Y4aVEfT_dgc?9<2ge.0jTuIMzSm101f6qz2fi1?94xg12h8hYUjzg7fSYVxXpe8pOTjzgsd6W07zxeB0o_rM2sJQUk73hKANUUjFg6fSZPDHtet1UQrF8ue4Wk1zZLkFWTjBgud6Wh7zxeB0o_rP6uJQUQ7zhKA1UUjFg6fSYgDHte51UQrEsue4Wk1zZLVVOTjLgsd6Wl7zxeB0o_rXmuJQWQ7zhK50i1f1Y?uKx@_Zkmf02Lr___Nvy?3ggs0bAk3MgHBwZ_YR0M?A<90@101fvqP2fpM404YvGc8Z84?Ai50497x7PVe@ws_r_@7L4UxDbReexMWrA0vfAVq1PZL09OZjxEseCV67PVemws_rYqsLkXq73FKhhY@jBE7fS@BDbReKxMWrAgvfAVq1PZLx9OZjFEseCV37PVemws_rSesLkVW73FKgxY@jBE7fSZ2DbRemxMWrBIvfAVq1PZLuV@ZjDEveCUq184Y7M01WW7X_Rid__YnU>I03Mh_DZuX@F8g20kLQ3097z@_@nU>I03Eh_Ax081iT_L_B@>b?S4vV8g20kJLX_Vvw?2M0dN7@i40w5bn@_@n?20kLRXMqz?R_mfOc3RvRXLWDZ0M2h_nL1GbYz0Zn?R_m;6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP:1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g;9mNIp0E<J[79y}t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M{t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug<1QqmRBs3EwsClxp21BsD9LszEw9nc>1Dpnh3k5lQqmRB}t6BJpn1vpCVScm4:7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8:7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq}7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD]Bc34Sr6NU02kMe7w;9j0Uu2QBc34Sr6NU;5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ]13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK}imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb+820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK{1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng:gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU;imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb:w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM[820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng:gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU]19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK{19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U:4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU]1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ;t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng<1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt]1;w<c<wwXzJ88eUXi23KeQwwXzJ0hI3eSg<b;ez__TM<MWf__A<6PE__@A<Mez__YM>3wWf__U<ejF___Q<UeH__Pg1>wXv__G04?a3J__@Y.?Ef7__Tg2>w@f__H08}g{5Wkw04u1U16MMv01;o<vev__P{4<2M>2oV___f{A<g<c3D__Zg;44JggUwDgiu0Qaj0AXuTtce044J<4<6w>3IV___2{g<v<fzD__Y4.]3M>2g<Wez___M;ggVgDgGu2kaj29g7gFs4k0HuTtvjR0U.gJ4Bwml1BYaRJl2TJTnQZge044b?1M<Q<ajF__YY0w>44eU0atb9UHh9gFAOF1BOpGRdd2RQbuTgU.gXw0FcGB2Cn9FQIDyJSRQbkQQ7uTgU.gXw0FQIDyJ5AOGkapsCggHngJjjgtXt3w112QsaRQbkQQ7uTgU.gJ8RQbkQM>1<14.?seL__U{J<5w1?3sW___0.>113E02Di2u7Qaj7Fgth9ksBxKn6FwpCNqs5g9l2FEnChx12QOq5VAotgHqSknuTtLsRZzlRJfk3w112RfqSkruTtLsRZzlRJfk3w113E02ANWk7pksBxKn6FwpChyq5VImD1mt89UvgZDqipEnChx1StFaChyq5QfpSB6p69EngtHphJXtSZPnSdnmQZge044ew0aj7FgtBhOm6VsqC1Cr5FMlDi2u7Pg<g0w?9e___U06<ggWw0pQkDxd4ANak4pkg0BoaTJTlQZge044biwHuTtnjR0U.gI07<4w2?1IZv__l;133x2t0FU1ktXt3w/////////////////////////////////////////////////////////////////////////////////////`````````````+?80j}b1c]3g_g4]4[LM4}c[a.}3g[Q8M]1A[MfQ1]r{w[6w}38_g4:1M[2[3R_LZL;f01}1g}3g1g}o[a08}a[dY1}2M[o{c[WfY1]2[a02}5{7[1s+U}7[308}2[3g1g}A[6[3@__ZL]8}____rM;1[f3__SY;I0s]3V__ZL;3k````+3o_g4`````<c.}M1}3||||||||04}c.}@2c}M9g]fwz}m2k]3o9w]a0B}W2k}g9w]5wC*3U8M]90C}@2c]2U9w]fwz[2s]1g9M]fwz}u2s]309M`?3U8M]fwD}@2c}wa}70E}W2k`>@2c]30a}fwz}W2w}Mag]fwz}u2A]38ag]fwz*309}60s[g}3w?8:20G*2g9}60s[g[M,:40G*1w9}60s[g}2g,:60G*1g9}60s[g}3g,:80G*17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA<8<4:1?=0a0i}J18}8<4:1?=0a.}I1[8<4:1?=03gz}g2c}8<4:1?=0c0i}y1c}8<4:1?=03gz}d2c}8<4:1?=03gz}d2c}8<4:1?=0b.}L1[8<4:1?=040z}j2c`^M010cw1!M020f01!M0302w2!M040d05!M050b07!M06>8!M070308!M08>e!M090a.!M0a0c.!M0b0a0i!M0c03gz!M0d050z!M0e0c0G!M0f02wH!M.0c3Z.$M0h0czZ.$M0i0d3Z.$M0j0dzZ.$M0k09z_.$M0l0ez_.$M0m0e>w$M0n0e020w$M0o`>M0p?w70w(01<103N_M%8]b0a0i&b;w0b0a0i}5{8]90a.&8]c03gz&o<103N_M%8]90b.&8]c040z&v<103N_M%8]b0c0i&H;w0b0c0i&J;w0b0f0i*1}i0d3Z.(13;w0b02Mj*1p;g0n0e020w]g}1}h0czZ.(1B;g0h0czZ.(2c;w0b080j*1}g0c3Z.(2o;g.0c3Z.(1}f03MH*1}n0e020w%0103N_M%8]b0a0j*2T;w0b0a0j}104]36;w0b0agk}_[1}d050z*3H;w0b0a0l}f08]3X;w0b0e0n}w{e.>w0b060o{g}U.>w0b060s}w0o]1}d0a0G*1}n0f020w(16.>g0n0f020w:1[1y.>g0n>30w}g]1Q.>g0n>70w:2[1}m0e>w(25.>g0m0e>w:k[2k.>g0m03010w:m[2A.>g0m09010w:e[2Q.>g0m0d010w:k[1}f0a0H*33.?103N_M^1}f08MJ*3d.>g0f08MJ#103N_M^3r.>w0c03gz*3x.>g0i0d3Z.(3K.>g3N_ZzZ.(3T.;e0c0G&a0w>g0m0e020w(0m0w>g3N_Vz_.(0I0w>w090a.&8]a0c.&O0w?4w#140w?4!1i0w?8!1K0w?4!1Y0w?8w#2m0w?4w#2L0w?4g0m05020w:c[320w?4w0b0e0y}l[3m0w?4w#3H0w?4w#3_0w?4w!h0M?4w!y0M?4`E0M?4!1?M?4w#1g0M?4g0m02020w:c[1y0M?4!1G0M?4g#1X0M?4w#2f0M?4w#2y0M?8!2N0M?4w#310M?4!3f0M?4w#3v0M?4w#3Q0M?4w!61>4w!n1>4`H1>4`Z1>4g0m08020w:c[1g1>8!3J0w?4w#1G1>4w#261>4!2i1>4g0m0b020w:c[2A1>4w`oT9QqiVL02hU06dxr6NvtSlxqRZCrw1zsDhKbCY0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc096g0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1yqmVAnTpxsBZLsBZxsD9xuiVzrSVPt71OrT0Kc2VFsT9xbz?pSlQgR1lt6BJplZJomBK07hFrmlMnSdOoPcOnSxTnS5Org1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0rmlJoT1Vg4tcik93nP8Kcjs0pCBKp5ZSon9Fom9Ipg1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1vnSdUolZCqmVxr6BWpk17j4B2gRYObz4T06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01DpnhxtnxSomN0hQN9gAdvcyUNdM1PrD1OqmVQpA17j4B2gRYObz4T06pzr6ZPpk17j4B2gRYObz4T06pLs6lKg4tcik93nP8Kcjs0u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0s6ZIr417j4B2gRYObz4T07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0sThAqmV0hQN9gAdvcyUNdM1Pt79BsD9LsA17j4B2gRYObz4T07dQsD9zq790hQN9gAdvcyUNdM1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt01Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP```+1I<7;w}38.]cw1}9%g^K<ZL__rM8[Y04]3M.]3w{M[8^e;I<2[2w2}a08]2E0M}g<3<2{o[4;3;w}3g1g]d05}TM4&4&18<____rM8[I0s]2M1M]4U{M[2{8[lg>fX__SY2+8{w}M{g<1<2^6g<4;w[M2}308}Q0k}3{w[6[1K<1<48+U[3w]a02[M>1k<8[1w[u;4<6[a.}E1[s^1^7c<1<1w}304}c.}U04*1^1@;g<o[E18]2w4w]9gg&w^x;4<6[3gz}d2c}o^1^8E<1;w}1g8M]50z}s0s*1^2i;g<8[M2E]30aw]6g^4^E;4<2[2wH}a2I]1E0w*2^aE<e;M}30_g4:c3Z}2%w[2[2S<3M<c[OfQ1:38_g}w^8{w[Mw<4<3[d3Z.:QfQ}8^2^cY<6;M}3o_g4:dzZ}M04}4{w[4[3o;g<c[CfY1:2o_M]5%8{w[Tg<4<3[ez_.:WfY]3U^2{8[eo<1;M}3w?8:e>g}8*1^3I<2;c[U082:3w0w4:2w4&g^Yg<4<M^U081]K%g[1[fE<7)81M8:103.:804&g^1;w!M104:e0a}6M>5;8[1w[2g<c!40Y1:2S1^g&14<3!coj.:404&4&'
;;

'armv7')
b64=$'35286 17644\nmd5sum:6bc420cedb38c61c85254d53b871c80b\nsha256sum:a7c9f42649e3640c6bb3650b2db3ba17324e7e7f6ddc19f2ee1949b2be879c72\n0j2ec48a3xK1ReUW8MEe41\n04@c188byEP2wUg4M8N\n00000000000000000\n000000000000000\n01fzEP2wUggM8N\n00000000000000\n0hQN9gAdvcyUQ\n0000000000000\n00000000000\n0000000000\n000000000\n04@ezca3x\n00000000\n0000000\n000000\n00000\n0000\n0z4\n000\n05M\n01s\n0g\n04\n00\n01\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n0w.eM8.3I2:X\034vQlchw41,*0c0a.1)3g:2cg[g?jg08.602w07.r0>!.1o8w.m28:k=40,:1gL:kbM4052Y10802.2c1w.1w=g02}82Y.20L,0wbM40U}e[6}1[g:3Q}Z}fg}A}9[g}4}kulQp!(1w:1}1iVnhA52Y.1gL,0kbM40X}eM}4[g}g}k[M:4telg29ADbHroD7ygnSP4dUGlz7G30HqMc}x[g}k}V3?w[24}A}N1LJmGG3zf7bTQtTEBsWDa4Qqnk!)e08)M09{2sc>=c0503i#g}fM4&4w:4o%28}g#w}sM%4}2o1&18:1l#i}wg%4w}M1&18:3b#i}y#4}fg%1}1z#i}mM%4}6w%18:16,&i}DM%4w}4%2}1K#i}Lg%4}aY%14:2e#i}9>&4w:e#1}2E#i}bg4&4}bk%18}q,&i}b#8}5Y1&1}2g,.j341?w}h?g0iM4.cgp.2g}4w0b0ac1:Qcg406}1405?Z,.p341?w}h?g0qM4.7MN,0o}4g0k.1vnStJrSVvsThxsDhvnM1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1CrT1Brw1Urm5Ir6Zz071Lr6M0pD9Bomg0sThxt?ytmBIt6BKnSlOsCZO06pBsD9Lsw1UpD9Bpg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO06pzr6ZPpg1Pt6hFrw1Pt79OoSxO069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn.s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ07hFrmlMnSpKtz5xnTdQsDlzt?QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS>tcik93nP8KcPc0hQN9gAdvcyUNdM17j4B2gRYObzg*4.w020>0,02.8.w03.80,?.80,02.8.w?0,0,02.8.w?.80,02.80,?0>0,?0>0,?.c0Jg4.1(IV6m1w.102_,0>}9uhBwo:c0Ow4.1[kqmAd:20dk1+52Y1<}obM4;:1ML,0n}D3?<:2wc>;:agM,0n}G3?<:2Ic>;:b0M,0n}J3?<:2Uc>;:bMM,0n}N3?<:38c>;:cMM,0n}Q3?<:3kc>;:dwM,0n}T3?<:3wc>;:egM,0n}W3?<:3Mc>;:fgM,0n}@3?<:3Yc>;[N,0n}1341<}ccg4;:10N,0n}5341<}ocg4;:1MN,0n}8341<}Acg4;:2wN,0n}b341<}Qcg4;:3wN,0n}g341<:14cg4;:4MN,0n}k341<:1ocg4;:5MN,0n}p341<:1Ecg4;:70N,0n}t341<:1Ycg4;:80N,0n}y341<:2ccg4;:7wM,0l1g.v3??k6.20c>05i4.8gM,0l8M.y3??kk.2cc>05hs.90M,0l9:B3??kv.2oc>05ik:MM,0m0M0>3??o4:kc>05wk.1wM,0m1M.73??o8:wc>05wA.2gM,0m2w.a3??ob:Ic>05wM.30M,0m3g.d3??oe:Uc>05wY.3MM,0m4:g3??oh.14c>05x80>wM,0m4M.j3??ok.1gc>05xk.5gM,0m5w.m3??oo0<c>05xA.60M,0m6w.p3??or.1Ec>05xM.6MM,0m7g.s3??ou.1Qc>05y}x0buBn.3H282ZW0jwbuk4U9_B3K2fU0zMLKk49M4.cqfUxbaze84ZXPB0cqfUxbazebYZHPB0cqfUxbazebQZHPB0cqfUxbazebIZHPB0cqfUxbazebAZHPB0cqfUxbazebsZHPB0cqfUxbazebkZHPB0cqfUxbazebcZHPB0cqfUxbazeb4ZHPB0cqfUxbazeaYZHPB0cqfUxbazeaQZHPB0cqfUxbazeaIZHPB0cqfUxbazeaAZHPB0cqfUxbazeasZHPB0cqfUxbazeakZHPB0cqfUxbazeacZHPB0cqfUxbazea4ZHPB0cqfUxbaze9YZHPB0cqfUxbaze9QZHPB0cqfUxbaze9IZHPB0cqfUxbaze9AZHPB0cqfUxbaze9sZHPB0cqfUxbaze9kZHPB0cqfUxbaze9cZHPB0cqfUxbaze94ZHPB0cqfUxbaze8YZHPB0cqfUxbaze8QZHPB[1gMD@kk89_B0P2fU08wA@s.5bz7LYL0tr__@GE9g40y}2M0D@kIc9_Bb22vVg.z@03c8_w.1jUg8wz@0u_OY1632vVgcMAKs.5fz7LYL0hf_b@4k9M4>2s107gB,1Y}e02vVjwMD@k.8_w0P2fU.Mg@2z7W3xa22vVkchwu314b3x0y2fU1X_bM4oc9_B0P2iVM.k@cu_OY14_YLUtgC,3g9w4092k109g:1cc9_Bj22vVgcMz@.cdfB0y2fU:k@cu_OYh440JWjgMD@k3c9bD.1jUM8:EE09_B.2fU7r__@La___H0i2wUNwMD@k3c8_w0233Vh20Luy49w40W2g107w:3w8M40h2o10d3__@E[440JWu3wD@keU8_w0c2uVg.nech:a.1iUM30Ue4gwbQ8N02vVg8wwu:8_w0h11Uw4wgK81cf7B330zU7cMX@o3co3w132jVg80ku4IN2fwZ___6wM0Ue4gwbTE84c8UXxdjKeIca3x,0sUMgM8N?$?$?$?$?$?$??fz0s2cUGcMEe44c2cg,NsUMgMHKnz__Yq0s2wUN0MD@k3c8_w0c23VsH__@Eo9w40Z2k1>0B,3MjOTF033gVk13D@lQQ4Tybg1jUMh0z@.ka3x212dVgMwzukb:a91evVgk0Ee4148_w9L__WM20keaW:a,ywUPv__@I0o53yHM.2w2wEed2.3G0j3gVg.k@fM__YqX1avVg4gz@.897B.1iUO4.1Ew0MzzK0ReUW8MEe41?bz03]>-03]>-03]>-03]>-03]>-03]>-03]>>@c188byEP2wUg0M8N?35bz132xVuf__NE18a3zo3avVgcMz@.88fBm3avVgcMz@>99fB.1iUPA:E1Ea3z022wUN.zu8a4a3x1220Vh0wzumQEsTx@vX_WM.kecP.3qJz7tUg4>@cM:a53avVg48Eec3c9jD082jVvb@_@I0o53ye:2yl30KfAn0Dz072wU_2hD@nMIp_B2p2fU0KMz@0yh4zzYBJcUMiwzuk8ca3x0iywUM4gEec60a3xVfX_WM2wke8H:a13ipVgs0Ee4.5fz1x2wUgIME>a8a3x1bi91jf_b@6PMg3z072wUg4ghK8aU87w0j3NVgd09e>da3xD3kzU9hcxu0e057x1l23Ufv__NHz___Gr26vVg8wz@>98fBMv__WC1hD@ko48Ty1l2fU0k0Ee7g_L_H0a1gUyY:EQcp_B,ywUMcMBes0w9fBKLX_WM1wke81Ea0jNL__6yw1D@k.8_wCvX_WNI.eE80a3x1a2tVpX@_@I0A53y1w2wUgI.1Gz_L_H.1qUNs:E8c9TB.1jUM1MwNkcc9TB.1jU_10MN490a3xtd2dUL2fLuyn_L_H.1qUMw:GO_L_H.2gVqj@_@I>a3xK02vVg.z@1Y_L_H0p2wU_3__@E80a3xIvX_W_f__@E80a3xHLX_W@j__@Gg49_B1g2wUg4gz@1S_L_H081gUwo:E12a3zx_X_WM1wkeak__Yq202wUq7@_@La___Go02vVg.z@1A_L_HVL__WFb@_@I.93BxfX_WM0wEe5409_B1h2wUg.z@1r_L_HTv__WDMz,1g3w.M2g1030A,0A9>0z}b0z,24_v__0fT__Swc.243:a0M.90b.1A2M.r0I.f17buA0k53y2d1dUzk:E1sa3xmN2wUUf@_@I0o53y1g.2BQgEec50a3xvLX_WM.kec.5oh1g.ew0wEec74a3x1g2wUgzgzubMhXTEo_X_WwmghK06g43w,29UAT@_@I0wa3x102wUkH@_@I0Ea3z1h2wUg1gEe498a3x0k14Uww0Ee4T_L_H122wUg4gxK850a3x2q38VPb@_@I80a3x1a35VNv@_@Ia053x3w.2w,Eec58a3xNj@wUgggzuk80a3x072dVkT@_@I80a3x9_X_WMk0Ee48Q8TyY4uZW2f@_@E8Q8TyY8uZW0w0Ee4y_L_HXv__WL1fbuA3053zRd1dUBI.cE1053z072wQMugEd46.3q172hVg0MR@k.5fz072w0Mc0kec0Aa0jmM.2Ay0zu820a3z212wUgn@_@I.53ze:6Jct1ed08wjzj32tVm8gguf3jW3xAhf3U4w0Dul3gSjw3O10UYhLEe6ggKrwy52dUwkgEe4.e3zaLX_WM1gke99:qg184UUMwDum8U9TB3N10UY8_Ee6u8ufwAc2tVpg0Dums8ufw022iUc0_E@>89bw0P2CU:l@cL:a9b6vVgywzu8bI8_wY23dUk,Eecb8a3x2w2wUgb@_@Ia4a3x1M2wUo3__@I.5Dz2:2A,Eecb8a3x202wUg10zuk4o8TBZ_T_WMwgEe490a3xtv__WMk0Ee7kQ8TyY8@ZW8xgzu854a3x.2wU_PZ_@I.53z8M.6A0O1eecg9TBy02tVgYMgef4rW3xA4fCU9,Dumk89TBAkfCU090Be32rWrwMf__WDM0D@k.8_wGvT_WM5gEefB___Gr02vVg.z@2D_v_H1g2wUtjgzubMzXTE292hVg0MSuk.5fz092w0VX__@Hb_v_H.2gVrTZ_@I>a3xd02vVg.z@2l_v_HWL__WIfZ_@I.93BJvT_WM,Ee4o09_B.2fU8TZ_@Ly___G@0A.fg8.142g.U0w.ag8.3Mg2TFrd1dUwwgzua__v_HT1evVg1wAek0ka3x0h2fU0o0Ee5T_v_H.1gUQc:H>V_B1w2wUg4gz@1N_v_H>1gUyI:GI4V_B1w2wUg4gz@1H_v_H>1gUAk:Go4V_B1w2wUg4gz@1B_v_H>1gUzE.1E8c9TB0M1jUXI.cG5:a0w1jUTE.1E409nB033gVg.k@dw0VY5.2f:MEeffuV_J422dUwMgzu84uUTJ332dViz@_@I.53z6M.6J0xPu7M8cTxc2evVhxwzu9g4a3z1w2wUgMMDuk288_wv_T_WMo0Ee5H_v_H5g.WwwMDuk305fzmg.Ozo:E205fzk:2Lg2D@k.8_wIP@fUJ0wM@4>a3zY27dUh0wzu8c_L_H.1gUVo:E1ga3z0M.WwkgEe4809TB9___WM10Ee450a3xg_T_WMg0Ee5IQ8TyY82ZWag2D@k64a3x.2fU2HZ_@LL___G232tVgc0k@d_.3aow.2w80k@cZ:q102lVg0MQek.5fzs0av1g.zM.8a3z412dUx0wzunH_v_H.1gUZX__NFk8F_B662dUy,Eec60a3x432tVg8wz@14_v_H1w2wUj3Z_@Lq___Gwg2lWg0MQek08dvB.1jUOo.1E.5bzDM.2xg2D@k.8_wtTKvXg,Eecg88Ty17KdXt7Z_@I.53zNf__6J0xPu7M8cTxX26vVhxwzu860a3xc12wUM8wz@0F_v_H1x2wUgs0Ee6D_L_HLL__Wwg0Buk0cd3B.1jUXM1DMk.8Y0GL__WHg1D@k.8_wWvP_WWX__@GE0p_B.2fU8r__@Gw0p_B.2fUcf__@E.5bzDL__2JD__@G109nF033gVg0wR@k.5fzhM.2w.kKdV__Ya032wUQBXD@Qg88Ty312dUwhXzuQcc8TBELT_WM.keel__YqQ27dUv0wPu548p_B662dUwo0Ee5g4a3z332tVg8wz@3V_f_H1x2wUgs0Ee5T_L_HzL__WE40BuA0cd3B023nVg.k@cB:a.1iUVP__ME08a3z412dUx0wzum8_v_H.1gUTL__NHE89_B662dUwo0Ee4w4a3z432tVg8wz@3x_f_H1x2wUgs0Ee5v_L_HtL__WI.D@k.8_wF_P_WSP__@GQ09_B.2fUafY_@JE___GQ27dUv0wPu6w89_B662dUz,Eec60a3x0y2fUcTY_@I60a3xKvP_WSf__@E.5bzzg.2Dw0D@k.8_wRL__Ww.kKdo:aq02vVg.z@2Q___G0f0wUOkz8EjADfbbJ0w.ag8.2U2:P0w0>07.2E2:P0o.fg7.1?w.J0s.dM5.1?M.v0k.7w6.1w1g.l0k.906:E1w.O0k.8M5.3g1g.5,}4:86w40t1A106wp,0MY___i1A10bgo,2E6>0sfb__Uwo,3Q5M40W1s10b3N__YU?_B.2fU.MAek.5fz8w.6y~?bz0j]>-0j]>-0j]>-0j]>-0j]>-0j]>-0j]>`?35bz132wVuf__NE18a3zO30vVgcMz@.88fBQ30vVgcMz@>99fB.1iUZMw7Mk288Y?2i31gf__@HE?_B.2fU.MAek.5fz8w.6y~?bz0j]>-0j]>-0j]>-0j]>-0j]>-0j]>-0j]>`?35bz132wVuf__NE18a3zu34vVgcMz@.88fBw34vVgcMz@>99fB.1iUUMx7Mk288Y?2i31tf@_@Go0h_B.2fU.MAek.5fz8w.6y~?bz0j]>-0j]>-0j]>-0j]>-0j]>-0j]>-0j]>`?35bz132wVuf__NE18a3za38vVgcMz@.88fBc38vVgcMz@>99fB.1iUPMy7Mk288Y?2i31qf@_@Egg2TFs42vVn0MD@k4g8_w0P2kVMzgju814a3z0M2wUggMzuki_f_Hl32vVg4gEec3c9jD0M2wUggMzukc_f_Hg32vVg4gEec3c9jD0M2wUggMzuk6_f_Hb32vVg4gEec3c9jD0M2wUggMzuk0_f_H.2wUMzgzu8gwbTEa1o109w:2g}w}8g}8g2TF282ZW3Q:1[2M:4[g}g}2o:1[dg:4[3}g[o:1[5}4[e}g[Q:1[9g:4[i}g}2w:1{w:4[o}g[A:1[2w:4#2Q:1Oow.t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M}1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc.7hFrmlMey1LtngwrSowrmlJrT9V[7hFrmlMey1Opm5A86lOsCZOey0BsM:6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM.pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP06tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp{Br6NA2w:6tBt4dglnhFrmk.7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP80t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE.1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c.7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc34Sr6NU02kMe7w[9j0Uu2QBc34Sr6NU[5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ0>dLrn1Rt6kwgR93cP8womVA84pelyQNoi0EdzgF86ZC83NCqmNBfy1xrCgwrTlQs7lQ865Pey0YoT9zcP8@bjNCrDoNojU0>BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zrSRyqmVBp21Pt79FrCswqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI[4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK[5ljgkt5ey1QqmRBs5ZzsCcPcy0YhABchnMJfy1rf5p1kzVt>dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK[4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM[820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U0>BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK.1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng13rSRMtnhB84pelyQNoi0Sd2Ryqngwq65Pq21Lpy0YpCBIpjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw.imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM:1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng.kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw}19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U0imowf5p1kBZjhkN6fy1FsO1xr7dL86tFtClKb21xsTdFpSVP87dBr6owgR1l87hFrmkwa6VL86dEqmNAsClKai1QrO1Qq65Q87pxsCBxoCNBbw.t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt07hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ[t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng}1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt03Q:1[2M:4[g}g}2o:1[dg:4[3}g[o:1[5}4[e}g[Q:1[9g:4[i}g}2w:1{w:4[o}g[A:1[2w:4////////#6wb}2M.72Y10>:2R,.3}e08:d}l1E.1A}kbM406M}g}q}62Y1?M}4}ZvX_rNw1:5}H0c:o:1c,.2w:dY1:b}4[c[c>.w:dw}k}4g:1s}82:4g:1w6:i}Y>.1c}8}_L__rZw5.3___ZL,:f3__S@c1g.@L__rPk!!!{82Y1*0X||||||||0w.eM8.3I2!!!71I.aws:s6M.P1M.1wu:k7g.B1U0;t.2w7g=1Mr.3k7g.71I.fwt:s6M0,1U.90u:s6M.K1U.fMu+71I.3gv:s6M.m1Y.agv.2k7w=1Mr.3Q7M.71I.1Mw.1A8:71I.aww.3Q8:71I=107:11c:4:2sc>0i24+k7:11c:4:34c>0p24=3E6M.11c:4:3Mc>0x24=3s6M.11c:4}ccg40F24=17gQcW82x7jBkF834Obz8Kci0Oc38Ocj4Oci0EkClA84xxt20NcyUObz4Jd2A,j}1xpm5yqg?9w}kTbk4?wE7ggw12g8a11845>l0hs36>p0hE27>y,08}2{1.17gig1cS4N>wa.1I2w.2[w{g.hQ4A0jdxcg3w2:W0w:w}8{40>t19>Poj40l1E.5wq:8}2{1.17gig1cS4N06Ma.1I2M.2[w{g.hQ4A0jdxcg1k6w.l1E:w}8{40>t19>Poj40l1E.5gq:8}2{1.17gig1cS4N0ew8.3I2:2[w{g.hQ4A0jdxcg1o6w.n1E!*0Z(30>{1w1)M02{1c,+c.M{H0c+30,{8M5)M05{3o1g+c?w{60o+3.s=w8)M08{3w2)c02g{X0w+3.E{4wa)M0b{1k6w+c03=n1E+3.Q{5gy)M0e=kbM4=c03M{62Y1=3?=1ML,=M0h=wbM4=c>w=3?=3?c{9MM,=M0k{2kcg4=c05g!3?o!0M0n{2wdg4=c06.1#40f7_2}4wa*b.I:182w+802M0o}p0E*I02}e08*9.w:1k6w(3.r#40f7_2}ew8*9.w:1o6w(3.y#40f7_6}5Mq*d02U:1s6w+403g08}r0E*I,}6Ma)w0b?w:2w2w(2M08}I0E*I,w:b0a)w0b?w:3M2w(2M0o}72Y1)1402{b*b05k[2M+802M0o}l0I*I0qM:9gN,?[g0l?w}obM4)4?T}62Y1=1?.2}6wb*b09U:1E2M+802M0o}52Y1(Y0Gw:1gL,=g0f?w:2kcg4)5g!40f7_2}70b*b0cA:1M2M.@[802M0o}n0M*I06}eMq*d.w:1E3*2M3o}q0M.8M3:2.I06}bwf*b.w:3Q3M(2M02,.Z0Y.fM}2.I09M4.f,:k0w:w0b?w:3M4w(2M08}11c*I0dM4:gj.3?w:w0b?w:3M5w(2M08}x1s*I06}40q*b?w:2ocg4)5g15,.C3410,}1?k0og4.9MN,.1}g0l07c1.2sdg4?[405g0o}D3?)1g0x>.9MM,0E[g0k09c1.34c>0b[40502z,.Y3??M}1?g0IM4:MN,0E[g0k0c81%g0YvYo}N24*Q0bw:cgx)g0d?w:1k8w(3w3c,.l28+1.U!103N_ZE1.1k6w+80303w,.72Y1=1?40Xg4.20L,=g3N__o1.2kcg4=405.20w:3?=10f7_608.e08)w09.w:3I2*2w0o}_0w*E02{9*a?U2&1[I0w&i}fg8&8w:5o2&2}1O0w&g}Ngc&4w:802&18:2g0w&i}Eg8&4w:bE2&18:3b0w.j341?w}h?g0Tw8.cgp.2g}4w0b0f82&1}3U0w&g}40c&4w:1Y3:Qcg406}1405.N0M&g}egc&4w:4A3&18:1o0M&i}qMc&8}7E3&18:2a0M&g}C0c&4g:aw3&18:330M&i}Rwc&4}eE3&18:3X0M&g}3gg&4w:1Y4.1Acg406}1405.O1%i}hwg&8}6>&1}1I1:v341?w}h?g.6dOt6AKrM0Aog1zomNInTtBomJvpCU096g0oT9QryVL06dOt69BpSBKkOVL065Ir5ZFrn1IqmlAnSpyqnhP06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru?zrSRMr6lQpmgKc?vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz.oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nSpFrCA0nRZAsSZvq65Kp6NB05Z4mkV1jkB305Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt?CqmVAnTpxsCBxoCNB07dQsCdJs417j4B2gRYObzg0nRZzu65vpCBKomNFuCl^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kd?Cpn9OrT9^06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1JpmRzs7B^07hFrmlMnSdOoPcOnTdQsDlzt?PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB071Lr6N^07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0pD9Bomh^071Rt7d^07dQsClOsCZOg4tcik93nP8Kd?vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1Pt6hFrA17j4B2gRYObzg0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObzg0sSVMsCBKt6p^069FrChvon9OonBvtC5Oqm5yr6k0pCdIrTdBg4tcik93nP8Kd?JomJBnS9RqmNQqmVvon9Dtw1Pt79OoSxOg4tcik93nP8Kd?QqmRBs5ZCrDoNolZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kd?vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ:KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp.KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIbChVrw0KsClIbD1It.KqmVFt.Kt6lUt.KpCBKqg0KsCZAonhx02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt.Kp65Qog0KoDdP02VzrSRJpmVQ02V1kAQKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc!!!=1I}7[w:fg:3Q}9#1(K}ZL__rM8}o,.6>.3g}3(g}4}e[I}2}j>0>M1.1w0w.1[c}4}4}4[3[w:aM3.2I0M.TM4%g+18}____rM8:2c1g.z0k0>M}3(8}2}lg:fX__SY2}S0k.dw5.1[1[4}4)6g}9[w:1w6:o1w.Y>:c)1[w:1J}2g:48}82:20w.dw}3}4M}g}8}tw}4}6}U0w.e08:c#4)74}1}1w:eM8.3I2:m>&1[g:1Y[g}o:182w.i0E:Mg%w)ww}4}6}l1E.5gq:8#4)8w}1[w:5Mq0<6w.@0s&1)2g[g}8:1k8w.l28:g#g)Cw}U}3}52Y1?gL:4#4}1}ao}f[M:1wL,0obM.1#1[g:2O[g}c}sbM4072Y:g#g)LM}o}3}82Y1020L.3w}1(4}2}cw}1[M[M,.c:D#1[g:3d[g}c:2sc>0D3:fw#g)QM}w}3}B34109gN:c1%4)dw}1}c)2kcg.bw#g}4:3x[M.s*Mz4.34#4)Yg}s)E3k10fgN.3w#4(4}2%3kcw.c0w.1E:1w}1}1[9[M%13I.7U4%4)4g}c%88_:7,&1+'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'147120 73560\nmd5sum:c013f03a42653b40b1312b3c3fd18023\nsha256sum:117ec3defefe04226ea435d59796a5b095f915b654ba5d3f87fef344faaeee41\n0GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0g4tcik93nP8Kcjs\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0Mc3\n0000\n000\n00\n################################\n0epBmLDSplEhZ1wwd4\034vQlchw810g[?c05g01{1[5wo0g:w.4?e?704?7?r?4>5#[q3w:1Ee[?g:g>o>8_g]zZ0g;2fQ1;3E1g:10a[01:2>1w.23Z]8fQ1:w_g4;e01]U04]8[g>4>O04:380g:cw1]9[A[g}kelQp0g>gdw:10S]43o:14}4g}1}1hVnhA1w##<g}5bBt6g4>2fQ]8_g4:zZ0g;@08:3U0w]4}1>1g>3>hQVl?r3lotLdsxCpfkivelGXhdedRpM;c>x<g>o>gi0h02og0w;x>9>cgrXlGGwUPNOZZ7tW9neFOxd6BR#[?c02g2w4$c05g3M?8=?sM.19w%uw.1#4>2#_w.1#hw.29w%Kw.19w%fM4?19w%8w4?19w%D>1#Ew.1#a04?19w%304?19w%qM.1#Qw.19w%704?14$Zg.19w%lg.19w$g.2#ew4?19w%ng.1#nM4?19w%O>19w%m04?19w%bg4?19w%y>1#hw4?1#b>2#V>19w%Mw4?1#cM4?19w%yg4?1405g1w0w8;3[Hw4?19w2w10bg:8g}D04?1405g0M0w8;3[tw4?1405g2g0w8;3[p04?1405g3?w8;3[05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0nRZPrD1OqmVQpCBBpmkNczw0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO05Zvs79FrDhCqmlBpj4Oe01Pt6hFrw1CrT1Brw1MrSNI06pOpm5A06pBsD9Lsw1Pt65Q06pzr6ZPpg1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1Dpnh3k5lQqmRBnTdQsDlzt01QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn?omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8KcPc0hQN9gAdvcyUPcw17j4B2gRYObz4T[02?4?g01?8?w02?8?g01?8?M01?c?w02?8?g04?4?w02?8?w01?4?g02?4?w01?4?g01?4>1?c0Pw4?1[IV6m1w?103o0g?4>bahBwo.c0UM4?1>2nApo6.20eU1]2fQ1:m}80l]4fQ1:m}10l]6fQ1:m}1zZ0g;Y?2:m}4wL]@?2:m}80M[42:m}4wL]2042:m}awM]4042:m}2wO]6042:m}f0M]8042:m}3wN]a042:m}60N]c042:m}awN]g042:m}4wL]i042:m}e0N]k042:m}4wL]m042:m[wO]o042:m}4wL]q042:m}50O]s042:m}a0O]u042:m}4wL]w042:m}cwO]y042:m}10P]E042:m}4wL]G042:m}4wP]I042:m}4wL]K042:m}70P]M042:m}c0P]O042:m}3wN]U042:m}4wL]W042:m}10Q]Y042:m}4wL]@042:m}3wQ[82:m}80Q]2082:m}4wL]4082:m}cwQ]6082:m}1wR]8082:m}4wL]c082:m}10M]e082:m}40x]i082:m}f.w;k082:m}70R]o082:m}e0L]q082:m}40x]u082:m}4010w;w082:m}90R]A082:m}b0L]C082:m}40x]G082:m}a010w;I082:m}b0R]M082:m}a0L]O082:m}40x]S082:m}e010w;U082:m}d0R]2fY1:C>5=4fY1:C>1g{6fY1:C>7g{8fY1:C>1M{afY1:C>4g{cfY1:C>9g{efY1:C>9=gfY1:C>8g{ifY1:C>8M{4?2:l<M{6?2:l>1=8?2:l>1w{a?2:l>1M{c?2:l>2=e?2:l>2g{g?2:l>2w{i?2:l>2M{k?2:l>3=m?2:l>3g{o?2:l>3w{q?2:l>3M{s?2:l>4=u?2:l>4w{w?2:l>4M{y?2:l>5=A?2:l>5g{C?2:l>5w{E?2:l>5M{G?2:l>6=I?2:l>6g{K?2:l>6w{M?2:l>6M{O?2:l>7=Q?2:l>7w{S?2:l>7M{U?2:l>8#o047Uy862Wqo3ynQw181e*080j3N0rA8UFw88v1.vyh_O7U>o0y?Kw?a0L303@grT__QIo047Es?xe1.uyC0MxY8020jw<o047Uc862Wqo3ynQw181e*1w0gvyUwobFFwe9vi04w4U*6011@dy1wKCC0UBZ80i0jw*o047U8862Wqo3ynQw181e*1w0gvxowobFFwe9vi04w4U*6011@3y1wKCC0UBZ80i0jw*o047Uw862Wqo3ynQw181e*1w0gvwowobFFwe9vi04w4U*6011@b21wKCC0UBZ80i0jw*o047Ui862Wqo3ynQw181e*1w0gvyowobFFwe9vi04w4U*6011@e21wKCC0UBZ80i0jw*o047Uo862Wqo3ynQw181e*1w0gvwEwobFFwe9vi04w4U*6011@521wKCC0UBZ80i0jw*o047Uq862Wqo3ynQw181e*1w0gvx0wobFFwe9vi04w4U*6011@c21wKCC0UBZ80i0jw*o047UO862Wqo3ynQw181e*1w0gvzgwobFFwe9vi04w4U*6011@7y1wKCC0UBZ80i0jw*o047UG862Wqo3ynQw181e*1w0gvwgwobFFwe9vi04w4U*6011@a21wKCC0UBZ80i0jw*o047Us862Wqo3ynQw181e*1w0gvygwobFFwe9vi04w4U*0w1cfc1Ggzw.1w>of23ozzMwO8V01wFv2?wAQ.1w4822Wg?b2Mw089dFw88v1.vzx_O7UFwe9vhw0gvwx181e6011W2?8jwg?7EFwc8v2?w4U?49w0w1cf61Ggzw.1w>of23ozzMwU8Uk223v7gux7NQ3EhYBg64v2?wAQ.1w6822Wg?b2Mw089dFw88v1.vzx_O7UFwe9vhw0gvwx181e6011W2?8jwg?7EFwc8v2?w4U.1w?12o080j3PMqk8U>of238EA.AI8022jao227Mg?7UUvYx@>60ww2bF.Fb1g0wA7__S8Y67Vze5nZ_QIo047EZvX_iO?8jw1020V>o1.uzMwOapFwc8v2?w4U.1w>o.gC0204MYw6B2e23__QI.1w0w1cf71Fgzw.1w08gywg.6?xc8U.9b5g0wA4?2kIh022gqo3GnPU66FY__@4e>6>1w?12o04098Q@MAtlu58FvqwlanAkiypZ4?FwnwWanRUiOFZUfY0gLx88TQw06dU8020jLX_gzT@_M8Z0btaev2S23Ag02oVz0c149Bmw7R?40VCkpwvoM3h16C0QBZ?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A.1w08gyAuj@_QI-49w0w1cf21EgzyC0wxYQfZ1@_3_MvJU8UlY@f_x@RI0w3xUaXFYu1J@v1.vyx_O7UIvH_iNw0guxV6TZY7022glQ0w3xUYYd_CvH_iNw0gux063ZYf020gnzjh7ZUYYd_?2wefTW_QIo047Eo?xe1.uzg_Q7HYf_1W_z_UuKC0MxY8020jw.6.49wkfy@v50ofTQU067Xg021@M40pjz__SAXi02x@Ow0Evww027VjvL_iNw0guww027Fu1JZv7xb8TQV@_Zb6011W2w0EuxUYYh_?30eTwrv7NUWWd_802x@fDX_QIo047E802xW040DPxUUUd_HyDtvTzrpn_t@_Zb6011WaXpT7ZUWWd_XvD_iNw0guw?2cIo022gnzjhnZUUUh_?30e7zHETYd@_Zb6011W7zHETY1@LZb6011W7zzwT_R@vZb6011W3w0ouJ?87Hi02xWS?8jwg?7EQfZ1W_3_MuLU_@7HFwc8v2?w4U?49wueKzvRTW_QIo047ECf__iM}1w0o<gC0204MYw6p2eao227M3?cI4?1@57@8vxE0E510g23bV01wvKo0q7XE071@Ww1UvJM0pR0203AWM?fUA?8AL202ug.U3I?20Vu4IZvq02wA7M024V0w1we7xb97RUiPNZ7vz_iNw0guw.cIn062gfw0guBjUO0ZN2?fv?UuyBCMxxP_sFogU02nAf.ZAAwGvk12267iegxZtLVavm?wjz__S0Ut3UFvl18iDQkkyxZu4I@vmnW_QIo047E.3b6w1wA1w0c7Es02xW0Y0g3RE0e7Eu?1Wg?fON0gAFxQz7avd8FiDQkeIpY55b6v1h2NDMkYIpYQ062gvX_EzMM0k4Vu05xA02MFjxUkQdZg020e701gvC?q7UnvH_iNw0guxM0k7FufLzvTxjh7QN_vZb.Zb7w18o5s0o91w06xW4?w3xUYYp_s04xAnzzwTYB@LZb6011W7zzx7ZUWWd__vP_iT018o6g0o7HC06xWW01MuKE0u7HI04xe1.uyQ1OdZFwc8v2?w4U.1w?12o.U3I?20V0w1we7xbfnTM024Vu4IAvnxbf7T5ZLZb6011W>OOI_E91o021e.o3xM0o7UivD_iNw0guw.cIb062g6?8uBM0c7E3M10fmw0UuxU?7F__Zwe412iC5M0o7EQAAGvt8NiDQkeyBZ558Fvhh2anRUiPVZ0vD_iNw0guw.cIEfW2gr7U_QIo047E0w1zWcnU_QIo047Eu1JAvfX_ozPwHScUAvr_iNw0guyg0o7HC06xWW01MuKE0u7H0g0wer018jyQ1OdZ4?1Wao327Mw081e_LZyfa2LoPxpZLZb6011W04083Do__Zb>o.gC2g0o7HC06xWW01MuKE0u7HI04xebg78TQg?7EFwc8v2?w4U.1w>o.gC1M0m6g_LZyf7wPN7M8I6cU8vv_iNw0guy8_LZb?12o1?9eBUiPRZ.Fyg?2iNk_o90EfX_iM.6.49wQvv_iNw0guw206fEVvv_iNw0guxU6ShY_LZyfc2LoPww__Zb[601>w1cf41zgzyC0wxYSfZx@@3_wvJU8VJY@f_x@Y3_0vJU6TZYu2KYvcz_8vLE_W7X4?1@b7@8vw?2e9Q_YFeg?2iNc0891_L@2f7zXUTYoI8gUXvr_iNw0guxV6TBYS0i2gg40o3OVZLZb6011W7ArvnNg18916011@0w1UvE>X8051@Q01MvJE0g180g0zyg?2iOM_U9<o024gE4.1w08gyeg?2yPc0890_LZ2fvX_0zQ0JQEVYbo8eh?ajCc0M4gClq0vk?g3CphC1Zz0d44qo3inQn12LMx0aH4o1gqN69o24gRSMxY1s4Ev64&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx!0y4gym2J4tscHv6pjW1Z4?Fenj_0481020V>o0248F4.1w48wyWg?aiPc0o910g0weg?E3w202BV0g20ef?ojzM027V7vj_iNw0guw.cIT061gfo08q4102BNQ062gg.60Ew2bF0g1wf04?3I?2DHjvn_iNw0guxV6TRYY0a2ghw0gvw80u7W8051@Q01MvIyxc0_YIIwfg01U3UB8ZVzV9MFoui3ZTEe03VVIM7Tow?g3JUOOp_0g2wf040w3xUWWd_evf_iNw0guxV6TZYF022gg.60gy8bF.Ibag1wA6C0UBZ8013uTzXVnZUWWh_8gi0jxw0guw10eBP__Ytev__fPBU6TFY7022gg?aiM?3S9ueKEvTzOanTiKsB_Af@2gkbUWnKC0OBZ0g0Eynx32DQ2?wV0w1aynzOanTiKiBZu4F9vtaVOn_w_M12ucICvM40E3M1080UueKzvVDO_QIo047EuhJ_v6j_wA1UOOd_Nvf_iNw0guw.cIu1J_v7zHETYg0o90rvf_iNw0guw?1wIx062gg?eOM80891?1rAM?f2Pk0o91?3s@Mw1UuEw0k7HJ0vzvQ01MuJg0i4U4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LYyfg.62gByAV?2we040w3zM064U48wy@g4083A202BVY?x@knO_QIo047E.3b2P@wk7@_@8_o021e12M_PJU@@d_Nvj_iNw0guw.cIu1JUvew0wA4.1wa80yWg40o3M?2DHovf_iNw0guxV6TRY1062ghw0gvw80u7W0g?eO01gvJ?s7X4fX_i_X_8zQ.1wA9oFenxbb7Qgy2bVjfX_iS7O_QIo047E.ob6w0wA6hY_Zb6011W040U3I206fEEvf_iNw0guxU6ShY_LZyf8yMoPxJYvZb6011W0w1UuEw0k7Hg071WR018jyQ1@d_4?1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081eucIzvSDN_QIo047EAf__iTzb8TZpYvZb6011W7j@_QL@_U8YufLzvNyMx3yxYLZb6011W7ArunNQ08910g1wf6TO_QIo047EuhJZv2jZwA1UOOd_6v7_iNw0guz@_S8Y0g3weT2MoPz5YfZb6011W6j__QI80u7G8051WQ01MuJg0i4UJ0vzvN.uz0_M7HOfYxWZz_ouLw_U7HWf@xW_z_UuKC0MxY8020jLX_ozM10e0X8b1ze7nM_QIo047E5f__iSDO_QIo047E0w1zW7TO_QIo047EufLAvM40U3JU6SlY_LZyf52MoPx1YfZb6011We3@_QI[o09;1w?12o080j3P0nk8UFw88vez_EvLM_Y7X@f_x@N.vwh_O7UL021edTN_QIo047E_L@2fa2Mx3w?cfHu1JZv205O7L03OwI30e0g205ynz03OAI?e0g9DS07Op9G1Zz0cw4.g3A6qa0h1ww045tJ0f063a0hb0ioggM5011I0w0gpM07vf__9PBUe2BZZ0cFvhhaaDSKi6hYHAw@vl18oTM.cIO0a2gs0fa2P@_U8YIb24eeM1w40w1oBUM0YFbe01w42pZw1YCiqwvoM381.40V1Cyw4go8011nrg3M1wOw4jM4C44c1g0gr08046s01TP__OsVu3wFvvg3anQkiyFZHAzAvWV8fDRgifZ_.vbaM1wA703OwI_L@2fe2Mx3zc0E1080m9uc0faiP?E10Cvo0v9ACE7Sc0O0g?10egpEE1462?glSQ0Y0ocE17A19x130k046M2011D?tY__YDenwUanTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM?7OOc0E91M0YEbfX_wzMgIogU70a0g205ynz03OAI40a0g9DS07Op9G1Zz0cw4.g3A6qa0h1ww045tJ0f063a0hy0qoggM5011I0w0gpM08vf__a3BUg2BZZ0cFvhhaaDSKieh_HAw@vl18_TY?1YIR062gbM08o43?AIQ0q1giM5wA42?AI_LZyf12MoPws0890201ZW.8UA.AI3022gfX_ozMgI6cU8Egwfvbbg3TAD4Fx9icFogU0inA?40VI02xebw0wjyM027VK011Aj7U_QI.cID0i2gg40U3JUWWd_tuX_iNw0guzM024UJ0vzvN.uzE_W7HYf_1W_z_UuKC0MxY8020jw.6>1w?12o7zPMT_.7V6uX_iNw0guz.7Fu1J_v.7ONs_E90L?xwgc02iPU0U51R0a2gg802iP@_S8Y4b1ze1g0wA0807TE.zyg?2iM418918Egwfvbbg3TAD4Fx9icFogU0inCM0a4U?20eb?8vBVZ_Zb.3b4P_wA2M0c7Eo031e_X_EzNwIqkUuff3vP?w3ydX_Zb6011W7zPMTZxX_Zb6011W3g?4w?49wuff3vY.vBFXvZb6011Wc.uA.cIgfS2gbU0ouxUWWh_Rvf_iTwrvTNUWWd_ouT_iNw0guzM024UJ0vzvN.uzE_W7HYf_1W_z_UuKC0MxY8020jw.6.49wuff3vMTJ_QIo047Eu1J_v.7OMQ_E91_LZyf7zPN7Z0ImcU0g3weQDI_QIo047EyfX_iM.6>1w?12o7zPMT_.7VOuP_iNw0guz.7Fu1J_v.7ONY_o90L?xwgc02iPg1851I0e2gg802iP@_S8Y4b1ze1M0wA0807TE.zyg?2iMc0890_LZyf12MoPw?20V?2web?wjyM026hcvr_iM.OM4_E90I031w6?MjL@_W8Yqb6Be7zPMTYw080UhuX_iNw0guxUYYd_6uX_iNw0guzI_LZb>o>6.49w401|0pwHh5nrg3M1wOw4rPXC40w040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hDfKog3?g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc811Y@Vx0g024e4?vzz.7VJuL_iNw0guz.7FyfL_iM?gC0g040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hHfKog2?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16c@Vx0c01|0pwHh5nrg3M1wMw46PXC41?8gUg01@ec.vARW_Zb6011Wc.uBU6TZYtfL_iMw0vuwg05TF.3yg?aEA.wIfwoFli01wA>AI_LZyf12MoPxc1o918Egwfvbb03T?47VV9M8oikzam4e?BVI02xe.w3yM027VCvj_iY?guA.cIqfO2gb?Muxw0c4X_L@yfc?gvBwIqkUuff3vP?w3yBXfZb6011Wc?guBUYYh_u5d3vnDL_QJ8_vZb401|0pwHh5nrg3M1wOw4gjXC40w040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hVfGog3?g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc8134@Fx0g024e4?vzz.7V7uH_iNw0guz.7Fu1J_vcPW_QI.1w?12ofX_ozM10e0XMb1ze5nF_QIo047EBfL_iM?2iMk_891XfX_iM.6>1w?12ofX_ozMgI6cU@fL_iX?UuyU0c60o031e_X_EzNMIqkUuff3vR?w3yFW_Zb6011W7zPMTZZW_Zb6011W53Y_QI807TE4?ZWg.UA?4C9.8b3U6iBmU0o91.abe3WwA4yx40ZYII0fs?8vDAD0xx9idaogU02DA>VI02xebw0wjyM047VK?1AgDP_QL?27F.3bdzWwA2M0e7EK031w6?MjL@_W8YM?x@n2NFjxUYYd_k020e17H_QIo047EM?xWnzPN7ZUiOdZVuT_iXjX_QI807TE4?ZWg.UA?4C9.8b3U6iBkY0E91.ab5PYwA4?40V?2wec?8vCM084UI011AonO_QL?27F.3b5jWwA2M0c60o031e_X_EzP?27Vqb6Be7zPMTYw080UAuH_iNw0guz?27Fuff4vTxb8TRBXvZbdfL_iN?g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE15w@px0801|0pwHh5nrg3M1wOw4k3VC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320g8fCog4?x3x?7UU3uz_iNw0guxU6TZYcfD_iM.6>1w?12ofX_ozM10e0X8b5ze4nD_QIo047ExfD_i_X_ozM10e0XYb1ze2TD_QIo047ErfD_iM?2yP@_S8Y4b1ze4z@wA>1w08h2wg.6?x28V.abdw0wA3@_Q8Z_LY2fg2TizDMJwwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg.6>1w?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A.1w08gyAg.60gy2bF.Fb7jVwA3@_O8Z>o92majAgy2bVofD_iM?2yP@_S8Y4b1zecjZwA>1w08h2wg.6?x28V.abbz_wA3@_Q8Z_LY2fg2TizDMJwwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg.6>1w?12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gK3@_QI.1w08h2wg.6?x28V.abdj@wA3@_Q8Z_LY2fg2TizDMJwwV4?FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg.6.49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx!&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh?ajBQ_M120fX_iM}1w0c.80j3P0kk8UFw88v>60Mw6bE0g20e1.vzx_O7UUuf_iNw0guw.1we81yW040w3zdU_Zb6011W>610w6bE0g20ebDz_QIo047E>o4y0oKw1080UFuf_iNw0guww024U?1we1.uyC0MxY8020jw}1w]60EQw4;ao227M509Z2Fw9Evqo327PM_MLEk62bvhhqo7Tk_MMU?2bWobM07yC0UBZ201HWi04w4Xc__ZbOf__iYj__QL0__ZbLf__iXz__QKQ__ZbIf__iWP__QKE__ZbFf__iW3__QKs__ZbCf__iVj__QKg__Zbzf__iUz__QK4__Zbwf__iTP__QJU__Zbtf__iT3__QJI__Zbqf__iSj__QI204MYA512eao227Mg?7UAvYx@7?8jwg?7EFwc8v2?w4U=1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM;pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA<2lIr6ga>bg]1Oow:7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis[7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA<t6BJpn0W879Bomgwpn9OrT8W82lP>pSlQgR1lt6BJpg:7hFrmlMnSpKtz5x;1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO;1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw:1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M;9j0NdCNIu?Bc3xU<2kMe7wJ9j0NdCNIu<1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM.1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK;19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK]t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt;1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt<7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ<pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng:g>8>3>88eUXi23KeQwwXzJ88eUXg4r0PJ<1M.83v__ZM>Qe3__Ug.1MUL__P>b3B__YM0g?ceL___M1.MZ___d08?c3T__Zo>4[1uB8017x10hIc0g0k>6>63T__@w<489gg121A4g>c<zv__Zc0g:4g.14>he3__VM1>i0B109E6Dwav0kgeo151vB0a3w151A7vTJF32Qer1k6s14et0SIaSQ7sgtR13w151A7vTJF22S>2c>De7__Q03>hwWM0N51vAes146t0Q6u0A6v0g9i2JN1Tk7ugtZ13w131A532S_sgtR1TA7vgwEe04c6gk4bi9M4Dgeu0FY1ggHsgtR1TA7vggU0gMp1h0I.38>Y>7zA__ZU1g.4k9gg2r1pM4gVY1C0x63J02Cgut0N51vB8aBMB2Cwp1Dw912M9nBMB1Cwp1Dw82iZt1SAbuggU0i0p1TZTsSZDoggXg0Fw8Cgur1pM4Dgev0h51vC6n2kaq1A6u0BvngtF1TA4e04A6gt_tTdLpS44eQ0an2pw8Cguq1FI5D0it0VU2DM4hgnV8RZHulps9Cwqu0A7ngtF1TA4e04A6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnU>Q>L04?2PF__Y03>4weY04hgnWt0VU2DM42BwEe04o6gt_uTkgbuMEe04o6gt_uTkcb01M.3Q0g?Zfj__Ug<i0Uw4k5@kwU0gMp1////////////////////////////////////////////////////////////////////////////////#####################-w1k]g5g:1zZ0g:g]3e0g]M}M1}d}70K]6g}8_g4;1I}2[q}13Z0g;7[8}fn@_SY<Y04]5}bw5]1w}E0w]E}@g4]b}1w[M[?8:8}y08]k[s}5M}g3w[07;V2Q]3?1M=01M]102}w}Q0k]9}1w}_L__rM;2]f___SY;g]3M__ZL<b87]@v__rM<R####[.7Y2#########################:4wL]w3]18bM:awM]a38:3Mc]3wN]o34:2Ecg-i2Y:3wcg:4wL]238:18bM:50O]E38:18bM:cwO]43c#.i2Y:18cM:4wL]s3c:30cM:3wN#.4wL]43g:18bM:3wQ]w3g:18bM:cwQ]63k:18bM-43]108g]4}Y?2;1Mdg-U2Y:108g]4}g042;2gdg-I2Y:108g]4}E042;2Mdg-E2Y:108g]4}U042;3gdg-hQd3ey0EhQVlai0NdiUObz4wcz0Odj0Uc3wwa59Bp218ongwcjkKcyUNbj4F>2>1:g?hQ4A0jdxcg105]40k]2>1:g?hQ4A0jdxcg304]eMg]2>1:g?hQ4A0jdxcg1Mbw:8gK]2>1:g?hQ4A0jdxcg105]8Ml]2>1:g?hQ4A0jdxcg34bg:cgJ]2>1:g?hQ4A0jdxcg34bg:cgJ]2>1:g?hQ4A0jdxcg3I4]fMg]2>1:g?hQ4A0jdxcg24bw:9gK#(c?g380g%c?w3M0g%c?M0E0w%c0102U1g%c01g2O1M%c01w?2$c01M102$c02?g3w%c02g2w4$c02w?4g%c02M1Mbw%c0302wbw%c03g0gdw%c03w1kdw%c03M08_g4^c04?g_g4^c04g0o_g4^c04w0w_g4^c04M?_M4^c05<8^c05g3M?8^c05w3M0w8^c05M#?c06?o1M8-g>g0YvY*3g>9w2w105)3M>9w2w2w5)8w>9w2w0g5g-e<405w3M0w8:4}h<404?g_g4=?qM>9w2w205g-tM>403M08_g4^g0YvY*Bw>9w2w2g5g:4M1]Fg>9w2w3w5w:9M1]Ow>9w2w206]403]Sw>9w2w306M:7w5]104.9w2w108g}c]4w4.405w.M8:g}bw4.405w0g0M8]4]g04.405w0g1M8:w}kg4.405g3M?8;5[o04.405g1?g8;5w}s04.405g2w0g8;3w}w04.405g3w0g8;5[zM4.g0YvY*Cg4.403w1Ae$g0YvY*FM4<2w2w4w-R04<2w0w4M-@w4<2w2w4M-8w8<2g2w4)gM8.9w2M1Mbw-ig8<2w104M-rg8<2w3gbg-w08<2w?5)I08<2w0w4w-O08<2w?4w-Xg8<2w?4g-6gc<2w3w4w-cMc<2w0w4g-lMc<2w1w4M-xwc.404g0o_g4=?AMc<2w204w-Mgc<2w104w-Ugc<2w3w4M-10g<2w304M-agg<2w304g-jMg<2w1w4w-t0g<2w104g-Awg.404w0w_g4=?CMg<2w?4M-LMg<2w204M-Vwg<2w3w4g-1wk<3g0gdw-6gk.405g3M0w8=?9gk<2w2w4g-iwk<2w204g-rgk.404M?vM8=?sMk<2w1w4g-AMk<2w0w5)Jwk.9w2g304)L0k<2w304w-Vwk?19w%@0g?1#@0k?2#xgk?1#50o?29w%bwo?19w%hMo?1405g1w0w8;3[mwo?19w2w10bg:8g}rwo?19w%w0o?19w%Mw8?1#Pwk?1#Ago?19w%Ego?1405g0M0w8;3[IMo?19w%aMc?1#Pwo?19w%WMo?14$_0o?19w%40s?19w%d08?2#8Ms?19w%QMc?1#cMs?19w%gMs?19w%m0s?19w%qws?19w%Vw4?1#mM8?1#uMs?1405g2g0w8;3[zws?2#G0s?19w%xwg?1#N0s?1405g3?w8;3[Rws?19w$6dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0c3,0Mcm4Ks6NQnSdxr6MKnRZzu65vpCBKomNFuCl+0c3,0Mcm4Ks6NQnSdxr6MKoCBKp5ZxsD9xulZSon9Fom9Ipg,,0NoiVMr7hvoS5Ir2VDpnhOtndxpSl+0c3,0McmkKs6NQnSdxr6MKnRZDrmZKnTdQon9QnRY0nSpFrCA0c3,0Mcm4Ks6NQnSdxr6MKrm5HplZytmBIt6BKnS5OpTo0nRZDr6BKqRZgj5hOpndLr7pB03,,5xbD1It5ZzomNIbBZvsSVMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbDxCsClB03,,5xbD1It5ZzomNIbDdQsCdJs410hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2Vzr6ZzqRZDpnhQqmRBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbDxJomNIrSc0c3,0Mcm4Ks6NQnSdxr6MKpD9Bomh+0c3,0Mcm4Ks6NQnSdxr6MKnRZBsD9KrRZIrSdxt6BLrA10hQN9gAdvcyUNdM1vnShPrRZEomVAr6k0c3,0Mcm4Ks6NQnSdxr6MKnRZMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbC9FrChvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKs7lQsQ10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VJpmRzs7B+0c3,0Mcm4Ks6NQnSdxr6MKsThOsCdEsA10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VCpn9OrT9+0c3,0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3,0Mcm4Ks6NQnSdxr6MKpCZMpmV+0c3,0Mcm4Ks6NQnSdxr6MKsThOpn9OrT9+0c3,0Mcm4Ks6NQnSdxr6MKpCBKp5ZSon9Fom9Ipg1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0c3,0Mcm4Ks6NQnSdxr6MKpCdIrTdBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbD1Lr6N+0bBhfgOU0c3,0Mcm4Ks6NQnSdxr6MKoDlFr7hFrBZBsD9Lsw,,0NoiVMr7hvoS5Ir2VPt65Qg417j4B2gRYObzcP05ZFrCBQ03,,5xbD1It5ZzomNIbCRxqSlvrClTnS5OsC5VnTpxsCBxoCNB06RBrmdMuk17j4B2gRYObz4T05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpk17j4B2gRYObz4T06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01CoSNLsSl0hQN9gAdvcyUNdM1CrT1BrA17j4B2gRYObz4T071Lr6N0hQN9gAdvcyUNdM1QqmRBs5ZEondEnTdQsDlzt01vnT1OqmVQpCBBpmkNczx0hQN9gAdvcyUPcw1vnTdKs79FrDhCqmlBpj4Oe417j4B2gRYObzcO07dQp6BKg4tcik93nP8Kcjs0sThOpn9OrT90hQN9gAdvcyUNdM1Pt79OoSxOg4tcik93nP8Kcjs0sThxt417j4B2gRYObzcP071Rt7d0hQN9gAdvcyUNdM1DpnhOtndxpSl0hQN9gAdvcyUNdM1Pt79zrn10hQN9gAdvcyUNdM1CsClxp417j4B2gRYObz4T07hFrmlMnSpKtz5xnTdQsDlzt01vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUNdM1Dpnh3k5lQqmRBnTdQsDlzt01Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP###[6M>s>2}cw1]O04]A(1(2U.3S__ZL0w]3M0g:f01]e[3[w(U>2M>8}a08]E0w:903]1<c>8}1w}g<c>2}bw5]K0k:3V0g)g)4w.3___ZL0w]2O1M:b87]j[3[8[w]1l>_L__rM8[0w}2]4[1<4>8(p<g>2}408]g0w:3g1g]c}2[o}6U>4>gw}g3w:10e]y08]3>5<w}6}1U<g>o}E1]2w4]5M(w(vw>4>6[0h}14:1M7g-8(8g>1>1w]1Mbw:70K]9*g)2a<g>8}E2U:2wbw:707)g(Aw>4>2}10S]43o:14(1(a<1<w]1kdw:5gS]508)g)2G>3w>c}2fQ1:8_g]w(8[w}Jw>Y>3}13Z0g;4fQ]8(2[8}c8>1<M}o_g4;1zZ]2*w)3f>1w>c}8fQ1:w_g:e01]1[8}1[S<4>3[3_0g:fY:1g*04]8}7c>8<M[?8;53_]W*w}2}3t<g>c}Y?2;3M?4]2)g(UM>w>3}f020w;Y081:E1)4(ew>1>c(f020g;bw(4[g]3N>1M{60s2:w0M4;201)4*g>8$g0g1:E2M:1E.1k>2[o[A>3$6wf0g;W0s)4(h<M%1g5M4:s1)1('
;;

'riscv64')
b64=$'37502 18752\nmd5sum:72e0fb743cbc6ff52958ac838daad8c9\nsha256sum:1d2f4aa0c490185afa5fb470bfc55cc391c26d60c73e62c5843642ceb12c022e\n0OnScOs31vuCBzsT8Os31vuCBCpmVzpmAOs31vuCRJtmMNs31vuC5xrmYNs31vuC5IsDdzcn\n000000000000000000000000000000000000000000000000000000000000000\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n0gpLn5M1RzPSfxoIrlNs\n0eMvwg1fU5M1RzXCfeMs\n00000000000000000000\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n0hJn5M3RzXCf1oKrRNs*&\n05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k\034vQlchw81.{0c0YM01=1[412]1g>4?e?804?7?r?c?704,Vz8!pw(4[g,k!;349M:cgD}1}1,1w>f0J]Y3Q:3Mfg:cw4]U0w}4}8,6,22U]8fw]w@]E04:2w.]w}1<g;w}2[8]A}2g}1}1gVnhA1,9wB]C2k:2o9g:3M}f[4}57Bt6g6!#?1[kKlQp.>3Mbg:f0Z]Y3Q]g0w:102}g}4,5<c>17jBk0C8AYnmuRunqCv2_Chk7iM_WEVmk;M>1Y,1,1w>1181409x02;1Y,y,N1LJmGG3zf7bTQtTEBsWDa4Qqnk!}M0a0c0h-33,4$1b,4g$1,8$2h,4#b.?4w%1C,4$1T,4w%3B,4$2C,4w%1h,4$2Y,4w%1p,4w%1I,4w%3Z,4w%2K,4$28,4w$l.?4w%3h,4#T.?4w$u.?4#n.?4w%2v,4w$T,8w%1N,4w%1v,4w$t,8#M.?4w%16,4w%1y.?4$21.?4g0k02x2]c[Y.?4w0a0fwt]h}2k.?4g0k0fx1]c}1K.?4g0k05x2]c}1g.?4g0k08x2]c{nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB|0nRZzu65vpCBKomNFuCk0s6ZIr01Pt6hFrw1Urm5Ir6Zz06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q06pLs6lK05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0sThOsCdEsw1yqmVAnTpxsCBxoCNB06RBrmdMug1CqmVAnTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcP04tcik93nP8Kczs:4?w01?4?w01?80.02?4?w02?c?w01?8?w01?80.02?8?w02?80.02?80.01?40.01?4,1?80Fw4?1[IV6m1w>M2M.?4,8uhBwo>80KM4:3Mfg]c}hx8:3Ufg]c}3x8}fw]c[3U:38g}c}u1U:3gg}c}82]3og}c}u1U:3wg}c}i2]3Eg}c}O24:3Mg}c}A2]3Ug}c}S2[gg]c[24]8gg]c}i24]ogg]c}u1U]wgg]c}w24]Egg]c}u1U]Mgg]c}G24]Ugg]c}u1U:1.g]c}Y24:18gg]c}g28:1ggg]c}u1U:1ogg]c}q28:1wgg]c}I28:1Mgg]c}u1U:1Ugg]c}W28:2.g]c}u1U:28gg]c}42c:2ggg]c}o2c:2ogg]c}S2]2Egg]c}u1U:2Mgg]c}I2c:2Ugg]c}u1U:3.g]c}S2c:38gg]c}82g:3ggg]c}u1U:3ogg]c}q2g:3wgg]c}K2g:3Egg]c}u1U:3Ugg]c}I1Y}gw]c}Kxw]ggw]c}O4}ogw]c}42k]Egw]c}w1Y]Mgw]c}Kxw:1.w]c}644:18gw]c}c2k:1ogw]c}k1Y:1wgw]c}Kxw:1Mgw]c}s44:1Ugw]c}k2k:28gw]c}g1Y:2ggw]c}Kxw:2wgw]c}G44:2Egw]c}s2k:2MfM]8,3=2UfM]8,4=30fM]8,v=38fM]8,x=3gfM]8,y=3ofM]8,o=3wfM]8,r=3EfM]8,z+.}k,2+8g}k,5+gg}k,6+og}k,7+wg}k,8+Eg}k,9+Mg}k,a+Ug}k,b=1.}k,c=18g}k,d=1gg}k,e=1og}k,f=1wg}k,g=1Eg}k,h=1Mg}k,i=1Ug}k,j=2.}k,k=28g}k,l=2gg}k,m=2og}k,n=2wg}k,p=2Eg}k,q=2Mg}k,s=2Ug}k,t=3.}k,u=2ncM?cMf3gge@0_Uj0QfZAU83_xdj4M23IE80pM0e01s@>3fwXZpMce01c,nfw>PWe_6s33w0j,5PU>c@3LND0MU04M>1s@>3fEXXpMce01c,nfw>PUe@Ss33w0j,5PU>c@zLFD0MU04M>1s@>3fwXWpMce01c,nfw>PWe@ms33w0j,5PU>c@3LBD0MU04M>1s@>3fEXUpMce01c,nfw>PUe@6s33w0j,5PU>c@zLtD0MU04M>1s@>3fwXTpMce01c,nfw>PWeZCs33w0j,5PU>c@3LpD0MU04M>1s@>3fEXRpMce01c,nfw>PUeZms33w0j,5PU>c@zLhD0MU04M>1s@>3fwXQpMce01c,nfw>PWeYSs33w0j,5PU>c@3LdD0MU04M>1s@>3fEXOpMce01c,nfw>PUeYCs33w0j,5PU>c@zL5D0MU04M>1s@>3fwXNpMce01c,ndg?4Mm53VsT?2jxMsfoUyD09sT?23JQvuAse2xUa05Pk?1c5pgSndg?AUnB38CdAZsRgfShLFm5xpD5BPs?8eT1ZWhMUa7wE2ndM?wYuD2FTDgh46V9sT?23JYvrAssndg?4MmBLoanX_0v@q9wxksndM?8M3T2441wE22w76_BPs?8eDxMulOVd7ZvYlNyWm5Pk?1c5pgq3Nwk06Zu708k5Jo@jZ_sfywuGBVN7Ko_zBcn@4YnT_Ua0JUqUXpe61zane>AUz80M584Mc041d@602rlNw0eMX.jd@Tw0jZNs0eMvwgbf7NM6rRNs0toYZzNf@5M0rlNs0eMX.jd@Tw2jtNs0KMvMg3d7NM4rlNs0Zo@VzMmbCZsn03I7U40j_xs0to@VzPI7M46rRNs0toYZzUmb6Rsn0bI7Y43RzNd@5M0ZzXI7M44rlNs0ZoYZzOewW?5a948UNFEZEl75Ps?2cGZ_wVLR5NEL6CXsHFxLneVtbxlLRuZod71g0GyqW4CUsT_ja46Us709Dz0Qsl06cr1O0ndM>Ov7ZpsT?2jxQvRjuKTxHzJAUo6cFsR?2jxqnQ0koj1g.4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs7/0KMvMgfmf4Twn03SfKMs.hJn5M3RzPSfCc459F45UNKCZFsT?2jxSvG1kuoMMeTxQ1z3wsexku25M56xkkE03XAX_1_RCdrE0W3l@40xoJzxwseBPs?8eThXp1pgeW1M3LY7_4GEC5iCc11hFq@mbNpKRGWjuFYIIj2lDeJOsyx9e7lP85jg8pQEp1pEl5jEky7jWpX_0_MNcdfhI1iVsX?2jyULy5MM?1cczdGGz0TdwXubgcnfmElCxIW5wFsPxzM1aELexMf71M251Pd99M4P2qA3UNDS_Ja6gmq5hkW5X_1vLGGcqvlixu_MLYCGyQW5oVwb2K_M_XpzywEcCs0zE6g1oME444FX2DPGr4FJ8P0A0qVM3DjKp4VFHCAeqKFWnEmGuSRxwE0n1M?4MsDQyeQVQ3RLgM85Nk?1c5Fp3LY3@VGEFpOpsT?23JWuCgmk3Kws0X_3vJaG9jslq@mbNpKRGWola8rszJ8J1BMs?9e7NYQZLVsl?2jximdiEnLY1@_aEF5Nk5BX_1_IqG9fslq@mbNpKRGWo5aOrTLY3@IoUwa0K_MLWM8golbX_0_JqG55Nk?1c5hp3LY5@EiDIaveFIiCSxJRa5X_1vKiSTkEnLYd@U@run5g?AUnBxxsl>j1um5X_1_K2Ga7sl1pu_MTWGGyucm1upixu_M7Xon5g?4Mn5yu_MnWe5i_SZiDIaveFIiCTlLhsl>j1im3X_2_EolbRrnLY3@A2465i@_MLWMGxIG55Nk?1c59ojLYb@vSrkVskXIHECj1r059Lg6_aG4X_1vEND98Lyj1t05aEgCxu_MnW9zqWg.DjyscW59Enyqq9Q0koxormQkKwP2Fh0iL0P2ol04Mkq05rAX_2vEaG7iEmj2LD_fEDLYb@vGEuCxla6iEm@x4GqX_2_DRq68M0a09c55?Cxu_MLVWCCye02w1axu_M_Vk5NkW6FEm1hAG5X_0vF4G5X_2_BQ9Q0DB2qG9GUD3yqiq5EDgxopmOiEnLY1@oQrYdsorKkLGdhSfbFNiyWGrCOK9e_El7oZKD381BwQs4097z0kidhM59oMfR5Eg8FEk9hu_MDVFVUruDN21CpVe7pXGTZBfzAUrSv88nNCCSBXcnZMaThwY0AUo697Sn30BZlre9SgatxVCfLFDLYf@daEFxUsFC2DuThMY0AUs79be6ZwbGpiFSIMvT0GWmLFqOBIWmoMQ435rSAME10pc5?hmxhs6>j1CpUX_3_Btq58EnLY3_FoM090Fc5?jexxs6>j1EpS9EnLYf@jFElaxu_Mf@tmpfpwJCgmqv9VIDFixl9Wdm62w0540kC42aq52knLY5@e7tQc2g55bKjLY9@4guTaqgFTJQsf09e71OiPyvA2qCqGtG9BvlmP1_s2IFC@CrqpX_0vwyGact7LY9@3247LY3@cGEkn1g?4Mn5re_Mj_ZmpbpA5CDOuglaZC1ixl9Wdm62w1s5>j1slCX_1f_glaVruSxhs5>j1ilIX_0_zvpwlCiSp1pFYDBixl9Wdm62w0eV1g63hMA0UVI7W059Ar_LYc_Y247LY7@5GEkn1g?4Mk5p56_tn6axibxOLw6VqrYX_2_xMcV1g0Gx9s5?2jxglDiEnLY7@bosSn1g?AUk5pQG5X_1_yGG4fsmn1g?AUnBq4G5X_1vyqG4oM853Fs5?2jxqlGiEnLY1@8GEhtXo973ktzjfsAoULD6wB75Mk?1c5Fl5zCKs026i3hMk0yusn1g?4MlBk9sn?23J@v4c01c?b2fKjLY5@uoMY558l4Bq22hMR7oQDT4CebVMM9hNs5>j1kldoVvD?xAwQs506e61Nan5M?wXvDM3?wkk@Ve_MvVFVYq9C4MA10kG55Mo?1c69Cqj1g03X_1LZAG5X_0f@36w0Amyxu_MTZiGx2a5X_3LWqFw2Ch6uiq5VDh9ooa0OEkn1g?4MmBoe_Mb@q5hf6_wAsdhSddZNxzz@si2ksn1g?4Mn5h6eqVM08p8d71g29VNs5>j1ol30koI?b4X_0vAy7NEAoj2g41iEkn1w?4Mp6nFc5?bLY0_KiEnLYa_Lmrs8p0cV1063hMk?Qs90aDL5Mk?1c5hjZz0MsKBNs?8eTxXcM0855PLg@Ve_M_UNz4MkUECqj2g41jEkn1w?4Mq6m9c5?fLYc_EPElaxu_M7XOCujST5Mk?1c5NkPLY4_qxkgVL@cf1@N5LNs5>j1mkVMrQypV964MA10kG55Mo?1c69Bmj1g05X_1LV4G5X_0fVLmR26g3egg1wQs5?d72g1zygsoUMQ7V9sn?23JQuGc01c0cXQ0I8@Ve_MDUdz60kK8CuihFc9.5exhs6>j1wpgAMk01u_MjZ_exkG5X_2vIGpVmrQ8p0cV1063hMk?Qs90aDfUME7X056b03eZ0b4X_3L_Ccj1iGyhFc9.5exhs6>j1wpbAMk?K_MPZHexkG5X_0vHGpVKrkn1g?4Mn5he_MjYO5h3SZ5Mk?1c5Nk3LY4_bxkgZJhs5>j1skGlvcn9M>OsDsFsD?2jxWtNjuKTxHzJAUo6cFsB?2jxglN0koj1g.4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs7/0KMvMgfmf4Twn03SfKMs.hJn5M3RzPSfCc459F45UNKCZFsD?2jxYtC1kuoMMeTxQ3z7wvk5_v__Nc71RUzJet0Ircn1g?4MmB7ecn1@on9M>OvDoVsD?2jxStzuvuTxHzJAUo6cFsB?2jxsly0koj1g.4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs7/0KMvMgfmf4Twn03SfKMs.hJn5M3RzPSfCc459F45UNKCZz6_5Os>cDpRyn9M?AUvDlNDXJUqUXpe61zan9g?AUl5lM564Mk041dU5w2rlNo0eMw.jdUS?jZNs0eMvwgbf71M6rRNs0toYZzNfU5M0rlNs0eMw.jdUS02jtNs0KMvMg3d71M4rlNs0Zo@VzMmbCZsn03I7U40j@1s0to@VzPI7046rRNs0toYZzUmb6Rsn0bI7Y43RzNdU5M0ZzXI7044rlNs0ZoYZzVz11iqh1ucrFLqlJqpVxkjFJA4hxkkn9g>Pn57wrAX_2LKEl55Ok>cRhhPLYc@Vxkkn9g>PlB6K_MXXy5hhsB>3dgkqX_0fKa9w0kl10oa;2Q}sC8:1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?7hFrmlMey1LtngwrSowrmlJrT9V<7hFrmlMey1Opm5A86lOsCZOey0BsM>6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP;1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g<9mNIp0E>1Dpnh3k5lQqmRB]t6BJpn1vpCVScm4;7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8;7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq]7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD:Bc34Sr6NU02kMe7w<9j0Uu2QBc34Sr6NU<5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb{820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK[1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK[19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ<t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng,1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt02kz8EjADfbb0hI3ePM,6,IeP__Rg>2uXv__q,bjM___Q,rL7__Qw1>yY___M04?63U__Y80w:1{TFi?5Y.4r30804,1w>1kXf__Xw]28,b,2XJ__Ym0M>48eY05ky0i91F88wgaj2FgcBgWn4wcy0pogC1ip5FEo0FzmgJx2SkbqhwH1gIx2OkbigJd2R4blhdt23w122M90Bx2o59AmCxxgRJzpSCim49wkChqq66waRAbogJB2SA8bkdroStE2eFogC1ip5FEogJp2S4bpgJE?5,2U,Ke___XE<gwV.FcaiEA6wg9ey0heO4b1hJd2Okge048eg842y0i91FcagFgchF88iFke0BgaO4bigJh2Rkb1gJd4Ok8e048b07g,c.?7L3__Xg1,gwXw0Aq10FgcjEw4ygqi29ca0Eil3w90O4b1gIB2QAbjgJl4R48e048eU0a10Ew4ygqi29caB0M2ocx2OkbigJd42I54R48e048bk8w4ygqi29cak0H1gIx2OkbigJd4R48e048b04g>24.?mL7__PU5,gwWg0kG81988wga91wc2.H1gIx2QAj9gwU.wI2B9caqJc2r9carddsAMFIQMe?FcagJc?1M>3c.?kfr__Qg<gwUgj8420z31h0U``````````````````````````````````]g]2C.:1A}Y3Q]r[w}6w]3Ufg:1M}2}3R_LZL<2w2]1g]301g]o}o08]a}co1]2M}o[c}Y3Y]2}5w2]5[7}1s}K0Q]7{8]2[g2}A}6}3@__ZL<d07]____rM<1}f3__SY<xws:3V__ZL<3k`!%8fw`!3__________M[41}g4]1.]41}g4]1.]41}g4]1.]41}g4]1.]41}g4]1.]41}g4]1.]41}g4]1.]41}g4]1.]41``````!!4`4`4`4!{0hQd3ey0EhQVlai0Nd2UObz4wcz0Od30Vcj8wa59Bp218ongwcjgKcyUNbjcF045B,sCBPoTo?lI,440lOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M?w,g;4?4t1904Poj40M14:304g]w,g;4?4t1904Poj40M14:1i4w]w,g;4?4t1904Poj40f1U]Y7w]w,g;4?4t1904Poj40f1U]Y7w!^0M01>2$M0202w2$M030602$M040c05$M0508o7$M060d07$M07>8$M080bwd$M0901.$M0a0c0h$M0b040u$M0c09wB$M0d0dwB$M0e0f0Z$M0f0fwZ$M.>@$M0h?w@$M0i0aw_$M0j0f0_$M0k0cx#M0l0bx2$M0m!M0n!M0o0d16)1,103N_M^d<w0a0c0h)y:a0c0h)f<w0a0e8h-1T<w0a?Ui-2d<g0l0bx2}g]2p<g0f0fwZ-3;w0a04oi-3c<g0e0f0Z%103N_M(3H<w0a04wi]Xw}y:a04wi-3W<w0a03oj]5wc]A.>w0a04Mm]Kw]19.>w0a?on]J04:1p.>w0a0bEo]fwk:1D.>g0l0c12]1}23.>g0l0cx2[g:2l.>g0l0cx6]2}2C.>g0k0cx}k}2R.>g0k01x1]m}35.>g0k0711]e}3l.>g0k0ax1]k}3A.?103N_M(3K.>g0d0c0D%103N_M(3Y.>g3N_N.)m0w>g.>@)z0w>g3N_Mw@)I0w<c09wB)_0w>g0k0bx2-1b0w>g3N_Ww_-1x0w?4$1L0w?4g%2?w?8$2s0w?4$2G0w?4g0k02x2]c}2Z0w?4w%3i0w?4w0a0fwt]h}3C0w?4$3I0w?4w$80M?4#w0M?4w$P0M?4g0k0fx1]c}150M?4$1d0M?4w%1v0M?4w%1M0M?4w%2?M?4w%2p0M?4$2D0M?4w%2X0M?4w%3f0M?4$3z0M?4w%3P0M?4$2Z0M?4w$51>4g0k05x2]c[o1>4w$G1>8w%141>4w%1l1>4w%1D1>8$211>4w%2j1>4w%2z1>4$2L1>4g0k08x2]c{oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc097xOtzoQqj9MclZJcD0MnS4Os35vpz9McBZAcD~0M05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?oCBKp5ZSon9vrT9von9OonAKoSZKsThMsCZMbz0KqndOoiUM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nR1ijQd5h5lihlZcikVbgkt5nRh1gAN5nM1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB07dQp6BKg4tcik93nP8Kczs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80t6BJpn1voT9zcP9vsThOtmdQ06tBt79RsS5Dpk17j4B2gRYObz8T07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8T06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07dQsD9zq790hQN9gAdvcyUOdM1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz06RBrmdMuk17j4B2gRYObz8T06pOpm5Ag4tcik93nP8Kczs0sThxt417j4B2gRYObzcP06dIrSdHnStBt7hFrml0hQN9gAdvcyUOdM1yqmVAnTpxsCBxoCNB07dQsClOsCZOg4tcik93nP8Kczs0sSVMsCBKt6p0hQN9gAdvcyUOdM1yqmVAnS5OsC5VnTpxsCBxoCNB071Rt7d0hQN9gAdvcyUOdM1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kczs0nRZzu65vpCBKomNFuCl0hQN9gAdvcyUOdM1CrT1BrA17j4B2gRYObz8T06pBsD9LsA17j4B2gRYObz8T|0sThOoSRMg4tcik93nP8Kczs0s6ZIr417j4B2gRYObz8T065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ>KsTBJt65y02VPt79Qom80bDdEsThOt65y02VKrThBbCtKtiVytmBIp2RFp?KpSVRbCxxsSw0bChVrDdVrg0Kp7BKsThO02VDrDkKtClOsSBLrw0KpSVRbDpBsDdFrSVvsw0KsClIoiVAumU0bD9Br64Ks6NQ02VQpnxQ02VOrShxt640bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KsCBPoToKonhQsCBytnhBsM0KpSVRbC9RqmNAbC5Qt79FoDlQpnc`$r,1M,8{8[w:2g(4(bw>fr__SY2}2w2]a08]U[c}2(3w,b<w]1w0w:602]o0c]4<w,w}6}1;M,8}M0k:301g:co1)1(i,f___SY2}8o7]xws:18[c[w}2}5k>3@__ZL0w]3g1M:d07]c[4<g,w)1A,1<8{w}2]bw5}M}8}1w}rw,g>12}bwd]K0Q:1o0w]c,j,2[o}7c,1,1w}g4]1.]I04-1[4}1U<g,o}M14:304g:7Mc)2(vw,4,2}40u]g1U:1o1M-2(8o,1<w]2o9g:9wB]f^g)2k<g,8}S2k:3o9g:eM1)8(Dw,U,3}f0Z]Y2Q]8(2[8}aE,f<M]3Ufg:fwJ]2^w}2}2S<g,c[3U}bw]w(8(MM,o,3[w@]22U:2w.]g}2[g}cM,1<M]2EfM:awL]i^w}2}3h<g,c}Y3Y:3MbM:dw(8[w}Sw,4,3}cx}O3]3M.-2(e<8<M]2Ugw:bwO]6.)w)3B<g>3(2Ucw:2U(1[4}Xw,c?7^0Vz8:1C^g^1>7=3ghw:4MP]A^g(1<w%3wcM:8w8]6w>3A,8}1w}2g,c$q3M:311(g)14,3$2B1]5w4)4)'
;;

's390x')
b64=$'53856 26928\nmd5sum:7e98e2d220f5185bf424850dca489a2f\nsha256sum:1f009cfe351c266ee40710e1d82dd7e77881dbc2ffbdbbc358fd04b6168fdaa3\n0xqVLYfqD1C1zLa4g4bn86@5ITSKiprrX1TUhyThTu6QZbkYtjygCztI_wvSEdKAJaeC@nlLwRYTe@T2ZLv8pm_iEbyK7EkuX4HHwOS6Pys2gqFWMUSfT87pUk5\n0QHSgghWod6Xp_6CL5tDfXk6TkyOdALmRGfEEt6jvzzoMIhfT_9i@rDvrUW@X_AnJXV3ob2eRvXk6Tq9QOLw4dFWmCvtiIPToBttw6lDONBIdD5KqMrDY\n0yFLaViWQ3o5Pts6ARjulOAzSmu_LrTO7cGWMEFjIVcM9bizFGCYHBfuKVX5hXbfvP2R_@CKQmFaStpqT43v2SoTS3LMFSsCot1w5Lt9qktdfCVTSW\n0wYLeVsky4LA7u2rpcaTWNvbTDK2Q7AbYtAgXry39VTbyAUdnF7FviSow7rsgps6HQz@BzFjmup9mz\n0gJsPc37umG2ANvTgRYOkdFWmEQrJDYHmu8hJFwKd1aTWl1ftylRWjhN6TjRLjXjr9xm3GRksWzL\n0GbSZYxRxEj171ohSHJCoJfiw2K9Vv1ow8NwPpIH4bWigxJfiRlHf48Y@WBpCULqkf9JAMH57u\n000000000000000000000000000000\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\034vQlchw820g}?301o>1)g;67M,01?3w01M1?1Q07,4>5^]fXM;_L;1<g>o<1dO;4T8;jsw;4Y:A8;4,02>1w<4Tw;ju;1dU:7]s]2,g>4:sw;1O:78:2g:9]4p7jBk,g;ZP;3Tc;fsM:f]Y]hAtelh>1w^^?46hQVl8>4;jsw<1dO;4T8:zw;2e]1>1>1g>3hQVl03kNkyygzWU0cTBwGqm6kJdDx0Hr]c>v,g>q?8g9g0h84]v>8BHJ6YjNz8eGtQvvOVMWlW9Rqjix^;c.A;gc{ux^hy8&42^Zh^R18*10N8&sN8&Kx8*17N8&D1^Ex&12h8&qN&16h8*1fN8&X18^i&13x8&nh&14N4&SN8&Qx8&y1&1bh&19x8&lh8&O18&b2&1qx&1yh4?1o<1ia]M.1h18.I;Gw:1o.1D14?1o<1h@]M.1tx4?1o<1im]M.1m14?1o<1iy]M05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB07dQsD9zq780oCBKp5ZSon9Fom9Ipg1Urm5Ir6Zz06RBrmdMug1CqmVAnTpxsCBxoCNB069FrChvon9OonBvtC5Oqm5yr6k0u6pOpmk0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06pLs6lK071Lr6M0sThxt01Pt6hFrw1CsClxp01Cpn9OrT80pCdIrTdB06RxqSlvoDlFr7hFrBZxsCtS071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcP04tcik93nP8Kcjs0hQN9gAdvcyUQ04tcik93nP8Kcw;4?w01?4?M02?801?2?4?g02?4?w02?8?g05?4?w02?c?g01?8?w02?4?g01?4?g01?4]g04.1Hw.1,01FqhIM>k.6U>40qmAps>4.1MM.10dqmAk,M.sU>g3mBF4w>8.7o}?4T8]M;kw;4Tg]M;kc;4To]M<1dS;538]M;THw<53g]M;UN;53o]M;THw<53w]M;UW;53E]M;Wbw<53M]M;Vc;53U]M;WFw<54}M;Vtw<548]M;VK;54o]M;THw<54w]M;VWw<54E]M;THw<54M]M;W3w<54U]M;THw<55}M;Wl;558]M;WEw<55g]M;THw<55o]M;WOw<55w]M;X3;55M]M;THw<55U]M;Xh;56}M;THw<568]M;Xq;56g]M;XJ;56o]M;WFw<56E]M;THw<56M]M;Y0w<56U]M;THw<57}M;Yaw<578]M;Ysw<57g]M;THw<57o]M;YJ;57w]M;Z:57E]M;THw<57U]M;Uo;58}M;yY;58g]M<1gO;58o]M;Zl;58E]M;Ud;58M]M;yY;59}M<1h6;598]M;Zs;59o]M;U2;59w]M;yY;59M]M<1hs;59U]M;Zzw<5a8]M;T_;5ag]M;yY;5aw]M<1hG;5aE]M;ZH;4@U,M>E+4_,1,E+4_8>7M>E+4_g>8g>E+4_o>4w>E+4_w>5g>E+4_E>8w>E+4_M>7g>E+4_U>8M>E+5<w>I+508,M>I+50g>1g>I+50o>1w>I+50w>1M>I+50E>2,I+50M>2g>I+50U>2w>I+51,2M>I+518>3,I+51g>3g>I+51o>3w>I+51w>3M>I+51E>4,I+51M>4g>I+51U>4M>I+52,5,I+528>5w>I+52g>5M>I+52o>6,I+52w>6g>I+52E>6w>I+52M>6M>I+52U>7,I+53,7w>I]eJLY3?9bA401@D@_ZwUN3M.AMc.1@KM1.1_7UN0g.4Kg804qu4?cdUud0Yh?1eJLYd?10vQ?3z4f0U02j04.7Vni1_0M40zz410g?g7Ygs01M070c0g.vKecg4.10vN3h3z410c01j0Zf/@k,M1.1@IUN0g.41_4d4ecg40M05c3Q/_Rg.1z04.7W3z41>g7YgQgUN0g3?kMfj/_5>cc0g.vBecg4.10vN3h3z410c01j0Zf/Xk.18M1.1@8UN0g.41_4d4ecg40M05c3Q/_Fg.6304.7TPz41>g7YgQgUN0g3?kMfj/@l>uc0g.vsecg4.10vN3h3z410c01j0Zf/Uk.2gM1.1ZAUN0g.41_4d4ecg40M05c3Q/_tg.az04.7Rzz41>g7YgQgUN0g3?kMfj/ZB>Mc0g.vjecg4.10vN3h3z410c01j0Zf/Rk.3oM1.1Z0UN0g.41_4d4ecg40M05c3Q/_hg.f304.7Pjz41>g7YgQgUN0g3?kMfj/YR.12c0g.vaecg4.10vN3h3z410c01j0Zf/Ok.4wM1.1YsUN0g.41_4d4ecg40M05c3Q/_5g.jz04.7N3z41>g7YgQgUN0g3?kMfj/Y5.1kc0g.v1ecg4.10vN3h3z410c01j0Zf/Lk.5EM1.1XUUN0g.41_4d4ecg40M05c3Q/@Vg.o304.7KPz41>g7YgQgUN0g3?kMfj/Xl.1Cc0g.uUecg4.10vN3h3z410c01j0Zf/Ik.6MM1.1XkUN0g.41_4d4ecg40M05c3Q/@Jg.sz04.7Izz41>g7YgQgUN0g3?kMfj/WB.1Uc0g.uLecg4.10vN3h3z410c01j0Zf/Fk.7UM1.1WMUN0g.41_4d4ecg40M05c3Q/@xg.x304.7Gjz41>g7YgQgUN0g3?kMfj/VR.2ac0g.uCecg4.10vN3h3z410c01j0Zf/Ck.90M1.1@4M2.1@1X1802E1AN1w?1T_X1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.1ZIM2.1ZFKgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.7vbI6?707P08.7R07Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.7Q7zYfZw_T6l0b?FTg05s0g.tJ@cg4>Gu4?z08.7b_0Vv/yz0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>I@M1.1YjUR0g.iFUg0jKN80380vc0D/__Q43g02V5w1iFQ4?qtQ02LHh?1?Pz03.92DeM025MnI83qZ0BBo0x08X0kwfPxnUR0/@g5R3I9jqZ0BBo8x08X20EfPxnKho0kGt7_@j09/__@V5w0yIYQ0Qwv@UO0M?2gFPI?hsBX28SLg9pm28g2eMB83YUlXAm05bIcf_7o6iDZf_BVM3jY306VQ3jU306VS3jQ306VN3jM306VP3jI306VR3jE306VT3jA306VM3jw3w6VO3js3w6VQ3jo3w6VS3jk3w6VN3jg3w6VP3jc3w6VR3j83w6VT3j43w6VU3j03w6VW3iY3w6VY3iU3w6V@3iQ3w6VV3iM3w6VX3iI3w6VZ3iE3w6V_3iA3w6VM0g230eVQ0g630eVM3iw306VQ3is306VS0ga30eVN0ge30eVS3io306VN3ik306VP0gi30eVR0gm30eVP3ig306VR3ic306VT0gq30eVM0gu3weVT3i8306VM3i43w6VO0gy3weVQ0gC3weVO3i03w6VQ3hY3w6VS0gG3weVN0gK3weVS3hU3w6VN3hQ3w6VP0gO3weVR0gS3weVP3hM3w6VR3hI3w6VT0gW3weVU0g@3weVT3hE3w6VU3hA3w6VW0h23weVY0h63weVW3hw3w6VY3hs3w6V@0ha3weVV0he3weVX0hi3weVZ0hm3weV_0hq3weVM0hu30eVQ0hy30eVS0hC30eVN0hG30eVP0hK30eVR0hO30eVT0hS30eVM0hW3weVO0h@3weVQ0i23weVS0i63weVN0ia3weVP0ie3weVR0ii3weVT0im3weVU0iq3weVW0iu3weVY0iy3weV@3ho3w6VV3hk3w6VX3hg3w6VZ3hc3w6V_3h83w6VM3h4306VQ3h0306VS3gY306VN3gU306VP3gQ306VR3gM306VT3gI306VM3gE3w6VO3gA3w6VQ3gw3w6VS3gs3w6VN3go3w6VP3gk3w6VR3gg3w6VT3gc3w6VU3g83w6VW3g43w6VY3g03w6V@0iC3weVV0iG3weVX0iK3weVZ0iO3weV_0iS3weVM0iW30eVQ0i@30eVS0j230eVN0j630eVP0ja30eVR0je30eVT0ji30eVM0jm3weVO0jq3weVQ0ju3weVS0jy3weVN0jC3weVP0jG3weVR0jK3weVT0jO3weVU0jS3weVW0jW3weVY0j@3weVkMg.1F_j@cgs71MvHr_0M02iV103LU_3_mfZNF@L_@620U02PMg23Kgg0EGsV05L0Vv/mXIa?f07OV102OFPA0nrA402H0Vv/mbIIw0hg6mPPg0Uq83MEbA402GDig?WS_MS?4Mfj/PNKuCMAHDFE8LIa?10dD0Vv/9uV101yKgg0as3B/YAbA404yV101OKgg0eHA402r0Vv/2l166?Aw0g044MI07zg9/T6V1?DMen/MnUPB/ZNAw0M0bA402r0Vv__@XTIa?t07OPPg18Kgg0dXA402qDmg?Men/PvKgg09I3B/YaCy0Ya2V1?DWS_MS?4Mfj/MwKgg09I3B/YaWvQ_@471Ms71Ms71Ms71MvHv_0U02jzYfVg_T7I8w4S0TXIb0310nXzI308?il0b?Xbw.16X2w1g0d@FTA?44MYe2Dag02Men/LjX2o0K01@UQ3MW?4M1UwN9KBM1Tzk_vfKoo0146wYi3Hh?_?GV1?WKgg08ec0Ye?1eJg?k03rA9053H5g06?SV2g0lM5UwN9KBWN4?M0dM5Tzk_vfKgw04bDAk5jH4g06?SV2g0BWO801M0aKgA09461802Dav__Men/Ox6abI9w3?7Xzgf4w?jz8f4M?jH5?5?THUw05?SV2g0kKgA0UKI1?o03uI@?o03rA9?6V2g0@WR.M0dKgw0leJ3?c03uJl?o03rA804bzkf4E?zH9?6?SV201iUR3Ne?8Kgw0meOU0aM0vasV04118f2wM4>VxMen/Mcgj3MEbA402L0Vv/InIu?m07ODeg10Kgg0m44wYe30g.3AL0Vv__@_p1cf3wKgg09Y3B/@HXAk02HHv_7E?g7_GuV?2Dug?gj3MUasF?b0Vv__@NXIafZe07V1Ef4wFOA?bA403H0Vv/2bI9w1Z07Xzkf4w?jzcf4M?jH9g05?THgM05?SV2g0BKgA0g@Ii?o03uK4?o03rA901aV2g24WM4?M0dKgw01uJo?c03uLw?o03rA805fzUf4E?zHdg06?SV203zU@3Ne?8Kgg0eHA408WDav__Men/LA6abIafZ607X0Vv__@TTz82.1iDG?1Men/J5Kgg0cI0w.dMI3B/WvrAk02HHv_7E?g7_I0w.dCauE?70Vv__@C@DZf_OKgg0ds0w.dLs3B/WtrAk02HHv_7E?g7_KdMc1?19k0s03Iu>4qDZfWZMen/J2UO0w.kFWw?s3B/X2HA403b08.3nD0Vv__@AaDZf_51Ms71Ms71Ms71@JLY3?9c3g.9lrA40e_zYfWU_T6DW__Mo83w062wU0yV102OIY40wXf10ailbi?FUg07rA402L0c.3nj0Vv__@zyV1022X2w3201YFiU?s3B/WDHA40abIa0bB07ODu.F_g1P9k0806Dtf_zM1.1HSUO0g.iFTg1xus0Q_0M1KswQ@0M1Kt0QZ0M1KtwQY0M1KsgQX0M1KsMQW0M1KtgQV0M1KtMQU0M1Ks0QT0U1KswQS0U1Kt0QR0U1KtwQQ0U1KsgQP0U1KsMQO0U1KtgQN0U1KtMQM0U1Ku0QL0U1KuwQK0U1Kv0QJ0U1KvwQI0U1KugQH0U1KuMQG0U1KvgQF0U1KvMQE0U1Ks040wM3Ksw41wM3Ks0QD0M1KswQC0M1Kt042wM3Ktw43wM3Kt0QB0M1KtwQA0M1Ksg44wM3KsM45wM3KsgQz0M1KsMQy0M1Ktg46wM3KtM47wM3KtgQx0M1KtMQw0M1Ks048wU3Ksw49wU3Ks0Qv0U1KswQu0U1Kt04awU3Ktw4bwU3Kt0Qt0U1KtwQs0U1Ksg4cwU3KsM4dwU3KsgQr0U1KsMQq0U1Ktg4ewU3KtM4fwU3KtgQp0U1KtMQo0U1Ku04gwU3Kuw4hwU3Kv04iwU3Kvw4jwU3Kug4kwU3KuM4lwU3Kvg4mwU3KvM4nwU3Ks04owM3Ksw4pwM3Kt04qwM3Ktw4rwM3Ksg4swM3KsM4twM3Ktg4uwM3KtM4vwM3Ks04wwU3Ksw4xwU3Kt04ywU3Ktw4zwU3Ksg4AwU3KsM4BwU3Ktg4CwU3KtM4DwU3Ku0Qn0U1KuwQm0U1Kv0Ql0U1KvwQk0U1KugQj0U1KuMQi0U1KvgQh0U1KvMQg0U1Ks0Qf0M1KswQe0M1Kt0Qd0M1KtwQc0M1KsgQb0M1KsMQa0M1KtgQ90M1KtMQ80M1Ks0Q70U1KswQ60U1Kt0Q50U1KtwQ40U1KsgQ30U1KsMQ20U1KtgQ10U1KtMQ?U1Ku04EwU3Kuw4FwU3Kv04GwU3Kvw4HwU3Kug4IwU3KuM4JwU3Kvg4KwU3KvM4LwU3Ks04MwM3Ksw4NwM3Kt04OwM3Ktw4PwM3Ksg4QwM3KsM4RwM3Ktg4SwM3KtM4TwM3Ks04UwU3Ksw4VwU3Kt04WwU3Ktw4XwU3Ksg4YwU3KsM4ZwU3Ktg4@wU3KtM4_wU3Klc4>s0w.rr@cg8>Gu40eWBfw01FQA?ecMYa?944wYa2Deg01Men/zwX2M01M1@Ag7MFWtQ?V1cf2EM2>KIMen/Ax67bIa04h07X4i.5ZaBbw01UU1>4Men/ziKgg0EKME0hU0vatU?70rILODeiDC.M6S48ycBKgg0mbA402GBjw01FPA?s3B/UObA40bbIa01W07P0U.6NPz4e>aDx02zKho0arA404KV1?W3u6V101q69912W?X2I@LM1lFUg0auME01E1veME?Q2vecME.A45gE06Vww1zUS3k.cUQ1g?2gFRI?rC206jzodg.PzU5.92DmM01Ko80rKdwR.3eM5_Xe0peKX?803ecgk.Aec0k040AbC201rz4dg.Pz8502093zo503092DmM04Ko8?uc0R.3bC2023z8dg.OVww1yUS3k.cFXv_THA405yV1?GFkU?qsV?70Vv__@56V102OX2r_z01YKgg0ac3B/TZNyOX2o0d01@Kgg0aI3B/T_KNU05w0vHfd05zIm?507NgA5?IYQ0uKNU?o0vedws.9bAk02JEwf4Uqa3NgeJLYnw010v@M03/BvN0I?1FUF_j_3I0g/VlYgr.qsavQ_RCV1?GMen/vdX7w0801@Men/xnUO0w.kFXw?s3B/U7XA403b08.2Kn0Vv__ZRuV5?Hq83Ne6ywYk3Hr_5U?g7_HA402z0Vv__@7yDZf_uKgg0ac3B/UsqvQ_Wr0c.2Fn08.2F70Vv__ZRqV1022X2w0701YFiU?s3B/TLbA40abI9LXL07OV1?EMen/xiM2>GvFXw?s3B/T6GvQ_Yf08.2D2DK?1Men/sgF_j_Ks3B/T@@cw8.5c3B/TNrA403KV1012FXw?s0w.arc3B/S@qvQ_W871Ms71Ms71@JLY3?9c3g.84ufM_M3_sk4MYa30Vv__@0nzc2>iV102yM1>FPFMw?bA402eOng0iFNj__Gu40a_0g.2COV101jIBQ0hqsk__WO8w2Myr.EGM01XIK01F07X0o.2D2V1023IBQ0qask__WO8w2Myr.EGM01XIK02G07X0I.2DiV103zIBQ0LGsk__WO8w2Myr.EGM01XIJw2e07Vo0f2wX081H0d@X0w1dgd@X0o13w9@UP2w2?4M2>DABg0M0bDys2f0nILODej0nogy8Onzkf2E02jBjf2A?11gf2Egj3MFc3B/YfuMC0480vKdwYaw01edgYag05A4wYb30g.2BGDeg1gMen/tygi3MIc3B/T3qvQ041ocf2wX380O0d@X3w0x0d@X3o0Lg9@UN2w2?4M2>CyBg0g0bDys270nILODej0nogy8Onzkf2E02h1gf2EFPA?c3B/X_KME0bY0vGuU?6V1?GMen/qcKhg0a@JLYj?10v@Kgg0eKcwYa?5c3B/WrxyOKgg0aI3B/SubAk02LHr_4M?g7_I0w.9XquU?70Vv__ZwGDZf_pm23MEeMy0i43vKME0e43vKMC07U2vKfwE0w01c0w.9jVk0U02VUD0KVkPMG.FQA?44MYaz0Vv__@X7I9L@S07Xzkf2E01p18f2MM4>DeFPA08c3B/SSk4wYb30Vv__ZEiDZf@TUS2w4?4UO2w2?4gQ1w09k0802Dt01bFQ40_Wu40eD08.2hv0XILODej0Xogy8OnzUf2E02h1gf2EFPA?c3B/Xt@MC_TM0vKdgYaw0144wYb30g.2p2Deg0MMen/qvgj3MIbA402r0Vv__@lyDZfZXM2>zHF_j_js0w.9cauU?70Vv__ZoCDZfZoM2>zsF_j@_c0w.8RWvQ_UODgg3_FUj_dqvQ_XHzkf2E?h18f2MM4>BrFPA0cc3B/SqA4wYb30Vv__ZxmDZfZ8UN2w4?4UO2w2?4Kgg0wkd0402l02?FUg25Wt10f@DxfXbM6XbYFPAM6S48ycBUS3MG?AVkPMF.gk3MG44MYaj0Vv__@MrI9LYb07Xzof2E?jzkf2A01p18f2MM4>AzFPA0kc3B/SaQ4MYb2V1?EMen/zAF_j_1@e0E1?1ecwE0w014c0w02l02?FUg1Uqs10f@DxfYxVkPMG.FQA?44MYaz0Vv__@J3I9LXl07Xzkf2E01p18f2MM4>zJFPA08c3B/R@44MYb2V1?EMen/yNF_j@Rc0w.8KGuU?70Vv__ZeuDZfWSM2>yqFXw?s3B/QTqvQ_GP0w.5t3z88.1aDt065VM3jY306VO3jU306VQ3jQ306VS3jM306VN3jI306VP3jE306VR3jA306VT3jw306VM3js3w6VO3jo3w6VQ3jk3w6VS3jg3w6VN3jc3w6VP3j83w6VR3j43w6VT3j03w6VU3iY3w6VW3iU3w6VY3iQ3w6V@3iM3w6VV3iI3w6VX3iE3w6VZ3iA3w6V_3iw3w6VM20230eVO20630eVM3is306VO3io306VQ20a30eVS20e30eVQ3ik306VS3ig306VN20i30eVP20m30eVN3ic306VP3i8306VR20q30eVT20u30eVR3i4306VT3i0306VM20y3weVO20C3weVM3hY3w6VO3hU3w6VQ20G3weVS20K3weVQ3hQ3w6VS3hM3w6VN20O3weVP20S3weVN3hI3w6VP3hE3w6VR20W3weVT20@3weVR3hA3w6VT3hw3w6VU2123weVW2163weVY21a3weV@21e3weVV21i3weVX21m3weVZ21q3weV_21u3weVM21y30eVO21C30eVQ21G30eVS21K30eVN21O30eVP21S30eVR21W30eVT21@30eVM2223weVO2263weVQ22a3weVS22e3weVN22i3weVP22m3weVR22q3weVT22u3weVU3hs3w6VW3ho3w6VY3hk3w6V@3hg3w6VV3hc3w6VX3h83w6VZ3h43w6V_3h03w6VM3gY306VO3gU306VQ3gQ306VS3gM306VN3gI306VP3gE306VR3gA306VT3gw306VM3gs3w6VO3go3w6VQ3gk3w6VS3gg3w6VN3gc3w6VP3g83w6VR3g43w6VT3g03w6VU22y3weVW22C3weVY22G3weV@22K3weVV22O3weVX22S3weVZ22W3weV_22@3weVM23230eVO23630eVQ23a30eVS23e30eVN23i30eVP23m30eVR23q30eVT23u30eVM23y3weVO23C3weVQ23G3weVS23K3weVN23O3weVP23S3weVR23W3weVT23@3weVkO>1M2.1p9UN0w.2FTjZbs?/R9sgb.mfGvQ_imDgg3_FUj@oY0w.6AqvQ_uyD0g3_FUj@mI0w.6yavQ_xU71Ms71MvHX_1M02j4a.4HDzYfZw_T6Deg01Men/hZN2w?1aCFPA?s3B/QtsgE.izGsV?70Vv__Z6T4a.4EGDeg01Men/hBFOA?eLLYh?10v@1Ms71Ms71MvHr_0M02jz4f1U?iD@_ZwUN3M.AMc.19lUQ3N4?4WS_MQ?41_g<2Q2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh0gJswrUmPvqV9BJLI7vx6bt7tUrjQJjNRe92qdSP@1_qwSWiQEWrVtm@3nPsXXsbSZYxBrZawKaUuxhXIiKK3bore9M91GDH3zo_swtDxgk0lNerpcaMX6fO9DlGEVM2rpcaMJv_FXngPP4ISpWbmZWK7smWeXWOLgIEaXhqABOPqwjc37ulKMJ70O825HBl1ioLOS6PzbNCwNEBrZawkCzydJZwXYeEpZZlcmWeXQpFLDDo3iLqHMErj3o3iLp117FwQrJDYqqYlSs_Jgrtib8SiZrmE@yxQpd@edz2N4_vYBbVKtZLzHXL@huTLAdwI8Xl_JgrtEDja@0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa0aUDvguuIudz2Nakp3K43mRGfDFGmGzGRksVDt9THMjr9xlPT1q3Xry389G_IXo3JK8ctb7iCBCPfhsKJ0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD0A6GLwIg4cAc88p412RPcMctVqEaj5_t3nP9gSDFqzhKSvOJpUx6SC2UQ4HvFk4ZS9nnFd74rtfmZfJdIC5oeHlhPGeY07jkKP3yoJQtTNnqbkCcQTPP@ZhcpmmMSsoiJ@BgyXWUWLOVy7NI1FnJ6M6BuU88Zc7R3YhnqSJhZ1NIoma5pj3oYC80jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y0@jhiMjkhZ8dxvSB2HlHeSUwO4NF45Xlo47AECtNsxg1n4Zz1CPp@wYZoUQ83vkjr9xmp6KEMfRy@nGapsDI6JHkvmTtVeLQRblhwZe5NNST46hGI23OYXBNi8i@gtU9JAMHvH5YLuuUbgugLNSh3JK8cDDsKajwRuAuBZbpy0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6WJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h$01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKw.g>6PJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h$01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKCtBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP06tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc09mNIp.9mNIp0E0bg1Oow?t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M?t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug?t6BJpn0W879Bomgwpn9OrT8W82lP06tBt4dglnhFrmk?7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP80t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE?1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc34Sr6NU02kMe7w?2kMe7wJ9j0NdCNIu.lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng?gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM?20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw?lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ0gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1voT9zcP8w9Osw9OsFb?w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt04dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb01lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw?imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK04BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU?7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt?1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt?1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?4r0PI>U>1L__RIg.1k/qx>73__ZKA>Nf__TFg.4w/B9>nz__@OQ.1O>1g,0nFi?5U3w4r30@w0g<1w>s/mq>XM0h0Ad4ga22IR22M>1g>ef__SwM.4k04q63Esdy0O92UEayMCc28Q7zwqf1kEeO098C1k2hwHfPITcOYH9Ocv6S0Ww0kob0FMaPYXdPcLaOsz7NJweE0562M>1o>zf__SJw.bC04q73owcygKa2EI9z0yd1UU6zMl63J040M662I_ePsPbOID8NMWw0k8b0K8aPYXdPcLaOsz73G01gwJK2I_ePsPbOID8NMWw0k8b,5g.3E/tr.1Ew0hEoexMS838AbywGb2oM8zgue1EY5k0XE0QOo5FAl0Mle2I_ePsPbOID8NYrpS0Ww0k8b0CwaPYXdPcLaOsz7NJDo3G01gwI.1c.1gf__UWg.ua04q63Esdy0O92UEayMCc28Q7zwqf1kMeE0c30ooaPYXdPcLaOsz7NwWw0k8bpwHfPITcOYH9Ocv63G01gwI,02>6g/GV>5w0j8U6zMl63I020AjfPwWw0g|||||}1i:53;1dS]1:qU:3;10M]Q;GU]p;jsw:6M:8:1E<1dQ]s]w,r__@Zg;7M]k;5y]6:yw:2w;7y]I:6]3;jW}w;9o:1g:1M:n;3tw:1M;w8]w;5Q]9:1w,r/_w;uU,6/_Y]g>1L/M;1SE,r/@g:R^^^(.1dU^^^^,0gDw<12@;4dU;g_w<14u;4jU;hnw<15@;4pU;hLw<17u;4vU;i7w<18@;4BU;ivw<1au;4HU;iTw<1b@;4NU;jfw<1du;4TU;jDw<3uK;ecg;THw<3zE;eyU;Vc;3GC;eno;VK-dWU;VWw<3uK;ewU;THw<3Fk;eG8;THw<3Ha;eMM+3uK;eQg;THw<3JE;eXg;WFw+dWU;Y0w<3uK;f2E;Ysw<3uK;fbg;Z:3uK-Uo;2bM,g}01gO;3Rk-Ud;2bM,g}01h6;3RM-U2;2bM,g}01hs;3Se-T_;2bM,g}01hG;3SI]17gQcW82x7jBkF834Rbz8Kci0Oc38Rc3wMe20EkClA84xxt20NdiUObz4JciA;8>4>g17gig1cS4N:1eM;4X,8>4>g17gig1cS4N:10M;46,8>4>g17gig1cS4N:2Hw;aLM>8>4>g17gig1cS4N:1eM;59,8>4>g17gig1cS4N:2Hw;aK,8>4>g17gig1cS4N:2Hw;aK,8>4>g17gig1cS4N:11w;46U>8>4>g17gig1cS4N:2HY;aME^;M.g;78=M.w;7M=M.M;8E=M?1:m8=M?1g;tG=M?1w;uU=M?1M;w8=M?2:To=M?2g<10M=M?2w<11M=M?2M<1eM=M?3;2Hw=M?3g<2Ig=M?3w<3Tc=M?3M<3U8=M?4;4T8=M?4g<4Tg=M?4w<4To=M?4M<4Tw=M?5;4@w=M?5g<5-M?5w<538=M?5M<5aU=M?6*M?6g<5rg{1103_Yg(>d0w?2M<1eM{f0w?2M<1fw{y0w?2M<1gM{U0g?5M<5aU]4.140g?4g<4Tg[1H0w?2M<1i{1T0g?4;4T8{0103_Yg(.2m0w?2M<1ig:XM.2B0w?2M<1xg:hg.3a0w?2M<1BM:Ko.3q0w?2M<1Nw;1Ew.440w?2M<2bM;1UE.4i0g?5M<5b}g.4K0g?5M<5b8;1,5?g?5M<5r8]w.5h0g?5w<538:5>5w0g?5w<54o:5w.5M0g?5w<55M:3w.6?g?5w<56E:5>6f103_Yg(.6p0g?3M<3@U{0103_Yg(.6D0w?3;2Hw[6J0g?4w<4To[6W0g3_Yg<4Tw[73>3w<3Tc[7m0g?5w<5aU[7y0g3_Yg<4@w[7U0w?2g<10M[7@4&8c8w*8B8&914&ek4w*9f4w*9v4w*9M4w*a94w*aq4g?5w<58E:3>aJ4w?2M<2G]5w.b14&b74&bv4g?5w<57U:3>bN4w*c04&c84w*co4w*cD4w*cW8&d94w*dp4&dD4g*dT4w*ei4w*eB4&eV4&fb4g?5w<59o:3>fu4w*fL4w*g14w*gl8&gL4&gX4g?5w<5a8:3?oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1yqmVAnTpxsBZLsBZxsD9xuiVzrSVPt71OrT0Kc2VFsT9xbz?pSlQgR1lt6BJplZJomBK07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01CqmVAnTpxsCBxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcw1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0oDlFr7hFrBZBsD9Lsw1CrT1BrA17j4B2gRYObz80rmlJoT1Vg4tcik93nP8Kcw1zr6ZzqRZDpnhQqmRBg4tcik93nP8Kcjs0pClOsCZOg4tcik93nP8Kcw1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01UpD9Bpg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1QqmRBs5ZEondEnTdQsDlzt01MrSNIg4tcik93nP8Kcw1Urm5Ir6Zz06pOpm5Ag4tcik93nP8Kcw1MtnhPg4tcik93nP8Kcw1Pt79BsD9LsA17j4B2gRYObz80nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0sThAqmV0hQN9gAdvcyUO05Zvpn9OrCZvr6ZzonhFrSV0hQN9gAdvcyUO07dKs79FrDhCg4tcik93nP8Kd01yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CoSNLsSl0hQN9gAdvcyUO07dQsD9zq790hQN9gAdvcyUO06tBt79RsS5Dpk17j4B2gRYObz80nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1xp6hvoDlFr7hFrw1Dpnh3k5lQqmRBnTdQsDlzt.bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP^^^,r>1M:2:sw;1O]A)1{bC/_o]w;7M:v]e,c{w[3w>b]8;2a:8E:S,4,w:8:1w.1,0M:2;1ow;5y:7y(g[i6/_Y]w;tG;1SE:i,c{8]w.5lL/@]8;7K:uU:5,4,g:8[1A>1]2;20w;82:ng,M[2]o>rw>g:gw;To;3tw;2m,c>l]w:6>7w>1]o;gc;10M:3U)4[1P,g:6;47:gs:d(1]w>vw>4:1w<1eM;4X:nc)1{8g>1]o;GU;2Hw:2E)4[2a,g:2;aN:H4;1aY)2{Aw>4]w<3Tc;fsM:f(g[a,1]8;@2;3U8:rg)8[2G>3w:3;jsw<1dO]8)2]8>Jw>Y]M<4Tg;jt]2(w:2>c8>1]c<1dS;4To]w)8[3f>1w:3;ju;1dU:7,1{2]g>S,4]M<4@w;jW]o(w:2>dQ>1]c<1g:5}cw)8[3C,g:3;kcw<1gO:7M)2{X,w]M<5aU;kHw;46(w[f4>1:3-5aU:2U)1]4.3W>1M+lJ;1iW:4w)1{0g>8&l0w;8y>1I>V]w:6,A>3&5Og;14Q)1{h,M*1wTg;4g(g]'
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
