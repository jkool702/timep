#!/usr/bin/env bash

if shopt extglob &>/dev/null; then
    timep_extglobState='-s'
else
    timep_extglobState='-u'
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
    #    5) accurate cpu time measrements require the use of a loadable builtin. currently, this is supported on x86_64, aarch64, armv7, ppc64le, s390x, and riscv. timep will try to use /proc/stat when this loadable builtin is not available, but the quality of the timing result will be significantly worse.
    #
    # NOTES:
    #    1. timep attempts to find the raw source code for functions being profiled, but in some instances (example: functions defined via `. <(...)` or functions defined in terminal when history is off) this isnt possible...In these cases,  `declare -f <func>` will be treated as the source, and the line numbers may not correspond exactly to the line numbers in the original code. Commamds are, however, still ordered correctly.
    #    2. To define a custom TMPDIR (other than /dev/shm/.timep.XXXXXX), pass `TIMEP_TMPDIR` as an environment variable. e.g., TIMEP_TMPDIR=/path/to/tmpdir timep [...]
    #    3. timep uses a loadable builtin to get accurate cpu time measureements. This loadable builtin's .so file is included in this timep.bash file as a compressed base64-encoded string. When timep.bash is sourced, this .so file will automatically be extracted and the loadable builtin will be enabled automatically.
    #
    # KNOWN LIMITATIONS / BUGS: timep handles virtually every aspect of the bash execution model, but there are a few edge cases where, due to the limitations of trap-based profiling, the output is slightly off.
    #    1. In some deeply nested chains of combined subshells + background forks with multiple subshells + forks before the 1st command in the sequence, some commands may have an incorrect nesting level. That said, commands should still be grouped together roughly correctly, and will still have accurate timing info.
    #    2. the times for tcommands that set traps is inflated. This is becausetimep overloads the trap command with a function to allow user-set traps to coexist with the traps used by timep, and the time you see is the time it takes the overloaded trap function to run.
    #
    ################################################################################################################################################################
(

    local timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT=1

    # check that basic requirements to run timep are met
    # to disable this check, call timep via 'timep_DISABLE_CHECKS=1 timep <...>'
    [[ ${timep_DISABLE_CHECKS} ]] || { [[ -f /proc/self/stat ]] && (( BASH_VERSINFO[0]>= 5 )) && [[ "$(uname)" == 'Linux' ]]; } || { printf '\n\nERROR: timep requires a Linux system with mounted procfs and bash 5+. ABORTING!\n\n' >&2; return 1; }

    local -a missingA=(sed grep sort uniq perl cat chmod rm mkdir mv)
    for nn in "${missingA[@]}"; do
        type -p "$nn" &>/dev/null || { printf '\n\nERROR: timep requires %s. Please install it (or add it to your PATH if already installed) before running timep. ABORTING!\n\n' "$nn" >&2; return 1; }
    done

    unset missingA

    shopt -s extglob

    local IFS IFS0 nn nn0 nn1 jj kk kk0 kk1 kkd a a0 b u logPathCur nCPU nWorker nWorkerMax REPLY timep_coprocSrc timep_DEBUG_FLAG timep_DEBUG_IDS_FLAG timep_DEBUG_TRAP_STR_0 timep_DEBUG_TRAP_STR_1 timep_deleteFlag timep_EXIT_TRAP_STR timep_fd_done timep_LOCK_FD timep_fd_logID  timep_flameGraphPath timep_LOG_NUM timep_noOutFlag timep_outType timep_PPID timep_PTY_FD_TEST timep_PTY_FLAG timep_PTY_PATH timep_RETURN_TRAP_STR timep_runCmd timep_runCmdPath timep_runSetupSrc timep_runVarsSrc timep_runMainSrc timep_wtimeALL timep_wTimeCur timep_runType timep_timeFlag timep_TITLE timep_TTY_NR timep_TTY_NR_TEST timep_CLOCK_GETTIME_FLAG timep_TITLE timep_funcName timep_wtimeALL timep_ctimeALL spacerN spacerN0 headerTXT a00 p1w p1c logPathCur jj0 a0 t n wTime cTime wTimeP cTimeP logCurTmp clktck svgCombineInd titlePad subtitlePad logHeader logCurTmp lineOrig tw pw tc pc cnt nd cind cmd wTime0 cTime0 d6 depthCur timep_flameGraphFlag trapAddCur timep_SIGNAL_RELAY_TRAP_STR
    local -gx timep_TMPDIR timep_TMPDIR0 timep_FD0 timep_FD1 timep_FD2 fd_sleep timep_CPU_TIME_MULT timep_LOG_NESTING_CUR timep_LOG_NESTING_MAX timep_WTIME_CORRECTION timep_CTIME_CORRECTION timep_WTIME_DONE timep_CTIME_DONE logOut logOutL logOutLL
    local -a pAll_PID timep_outTypeA kkNeed kkNeed0 timep_LOG_DELETE_CUR timep_setupFuncFlags flameGraphLogA
    local -agx timep_LOG_NAME timep_LOG_NESTING timep_LOG_NESTING_IND

    SECONDS=0
    _timep_SETUP

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
            --setup|--extract)  _timep_setup; [[ "${1}" == '--extract-scripts' ]] && { \cp "${timep_TMPDIR0}/lib/${USER}-${EUID}"/{timep.so,timep_flamegraph.pl} "${PWD}"; printf '\nThe extracted "timep.so" and "timep_flamegraph.pl" files have been extracted to "${timep_TMPDIR0}/lib/%s-%s"\n' "${USER}" "${EUID}"; }; return 0  ;;
            --setup=*|--extract=*)  mapfile -t -d ',' timep_setupFuncFlags <<<"${1#*=}"; _timep_setup "${timep_setupFuncFlags[@]}"; [[ "${1}" == '--extract-scripts' ]] &&  { \cp "${timep_TMPDIR0}/lib/${USER}-${EUID}"/{timep.so,timep_flamegraph.pl} "${PWD}";  printf '\nThe extracted "timep.so" and "timep_flamegraph.pl" files have been extracted to "${timep_TMPDIR0}/lib/%s-%s"\n' "${USER}" "${EUID}"; }; return 0  ;;
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

    timep_TMPDIR="${timep_TMPDIR0}/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
    until ! [[ -d "$timep_TMPDIR" ]]; do
        timep_TMPDIR="${timep_TMPDIR0}/timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
    done

    mkdir -p "${timep_TMPDIR}"/.log/.{starttimes,endtimes,runtimes,selftimes,times,hash}
    mkdir -p "${timep_TMPDIR}"/{profiles,.needs_merge,.pid_used}
    mkdir -p "${timep_TMPDIR}/.worker/delete"
    printf '%s\n' '0' >"${timep_TMPDIR}/.log/.count.bg_pid"

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
    if (( ${#BASH_SOURCE[@]} < timep_BASH_SOURCE_N[${timep_FNEST_CUR}] )) || { (( ${#BASH_SOURCE[@]} == timep_BASH_SOURCE_N[${timep_FNEST_CUR}] )) && ! ${timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]}; }; then
        unset "timep_FNEST[-1]" "timep_NEXEC_A[-1]" "timep_NEXEC_HASH_A[-1]" "timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]" "timep_NPIPE[${timep_FNEST_CUR}]" "timep_STARTTIME[${timep_FNEST_CUR}]" "timep_LINENO[${timep_FNEST_CUR}]" "timep_LINENO_OFFSET[${timep_FNEST_CUR}]" "timep_BASH_SOURCE_N[${timep_FNEST_CUR}]" "timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]"
        timep_FUNCNAME_STR="${timep_FUNCNAME_STR%.*}"
        timep_NEXEC_0="${timep_NEXEC_0%.*}"
        timep_FNEST_CUR="${timep_FNEST[-1]}"
        timep_NEXEC_CUR="${timep_NEXEC_A[-1]}"
        timep_NEXEC_HASH_CUR="${timep_NEXEC_HASH_A[-1]}"
    elif (( ${#BASH_SOURCE[@]} == timep_BASH_SOURCE_N[${timep_FNEST_CUR}] )) && ${timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]}; then
        timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]=false
    fi
}
${timep_IS_BG_FUNC_FLAG[${timep_FNEST_CUR}]} && {
    timep_BASH_COMMAND_PREV_0="<< (FUNCTION): ${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]} (&) >>"
    printf '"'"'1\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s\n'"'"' "${timep_STARTTIME[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV_0}" "${timep_BASHPID_STR}" "${timep_NEXEC_N_0}" "${timep_NEXEC_0}" "${timep_NEXEC_CUR}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
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
        timep_BASH_COMMAND_CUR="${timep_BASH_COMMAND_CUR@Q}"
    else
        timep_BASH_COMMAND_CUR="${BASH_COMMAND@Q}"
    fi
    timep_FUNCNAME_N="${#FUNCNAME[@]}"
    : "${timep_FUNCNAME_N:=0}"
    [[ "${timep_LAST_CMD_WORD[${timep_FNEST_CUR}]}" == '"'"'set'"'"' ]] && [[ "${timep_BASH_COMMAND_CUR}" == *'"'"'set -'"'"'*m* ]] && echo 1 > "${timep_TMPDIR}/.log/.disableSignalRelay"
    [[ "${FUNCNAME[0]}" == "trap" ]] && ! ${timep_SKIP_DEBUG_FLAG} && {
        timep_SKIP_DEBUG_NEXT_FLAG=true
    }
    ${timep_SKIP_DEBUG_FLAG} || {
        timep_NPIPE[${timep_FNEST_CUR}]=${timep_NPIPE0}
        if (( 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} > 10#0${timep_END_CTIME_SELF} )); then
            timep_STARTTIME[${timep_FNEST_CUR}]="${timep_STARTTIME[${timep_FNEST_CUR}]%$'"'"'\t'"'"'*}"$'"'"'\t'"'"'"0"
            timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]=0
        fi
        if [[ "${timep_LAST_CMD_WORD[${timep_FNEST_CUR}]}" == '"'"'wait'"'"' ]]; then
            (( timep_END_CTIME = 10#0${timep_STARTTIME[${timep_FNEST_CUR:-0}]#*$'"'"'\t'"'"'} + 10#0${timep_END_CTIME_SELF} - 10#0${timep_START_CTIME_SELF_A[${timep_FNEST_CUR:-0}]} ))
        fi
        timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"
        timep_IS_BG_FLAG=false
        timep_IS_SUBSHELL_FLAG=false
        if (( timep_FNEST_CUR >= ${timep_FUNCNAME_N} )); then
            timep_IS_FUNC_FLAG=false
        else
            timep_IS_FUNC_FLAG=true
            timep_FNEST+=("${timep_FUNCNAME_N}")
            timep_IS_BG_FUNC_FLAG[${timep_FUNCNAME_N}]=false
        fi
        if ${timep_SIMPLEFORK_NEXT_FLAG}; then
            timep_SIMPLEFORK_NEXT_FLAG=false
            timep_SIMPLEFORK_CUR_FLAG=true
        else
            timep_SIMPLEFORK_CUR_FLAG=false
        fi
        if (( timep_BASH_SUBSHELL_PREV == BASH_SUBSHELL )); then
            if (( timep_BG_PID_PREV == $! )); then
                ${timep_IS_FUNC_FLAG} && timep_NO_PRINT_FLAG=true
            else
                timep_IS_BG_FLAG=true
            fi
            (( timep_BASHPID_PREV == BASHPID )) || printf '%s\t%s\n' "${timep_BASHPID_PREV}" "${BASHPID}" >>"${timep_TMPDIR}/.corrections.pid"
        else
            timep_IS_SUBSHELL_FLAG=true
            printf '"'"'%s\n'"'"' "${timep_ENDTIME}" >>"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_HASH_CUR}.${timep_NEXEC_CUR}"
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
            ${timep_IS_FUNC_FLAG_1} && { timep_IS_FUNC_FLAG_1=false; [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 19 )); }
        elif [[ "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]}" == " (F) "* ]]; then
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]# (F) }"
            timep_IS_BG_FLAG=false
            timep_CMD_TYPE="FUNCTION (P)"
        elif ${timep_IS_BG_FLAG}; then
            timep_CMD_TYPE="SIMPLE FORK"
        elif ${timep_IS_FUNC_FLAG_1}; then
            timep_CMD_TYPE="FUNCTION (C)"
            timep_IS_FUNC_FLAG_1=false
            [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 9 ))
        else
            timep_CMD_TYPE="NORMAL COMMAND"
        fi
        ${timep_IS_SUBSHELL_FLAG} && ${timep_IS_BG_FLAG} && ${timep_IS_FUNC_FLAG} && {
            builtin trap - EXIT
            timep_IS_BG_FUNC_FLAG[${timep_FUNCNAME_N}]=true
            timep_BASH_SUBSHELL_PREV_0="${timep_BASH_SUBSHELL_PREV}"
            timep_NEXEC_N_0="${timep_NEXEC_N}"
        }
        ${timep_IS_BG_FLAG} && ! ${timep_IS_SUBSHELL_FLAG} && declare -F "${timep_LAST_CMD_WORD[${timep_FNEST_CUR}]}" &>/dev/null && ! { [[ "${timep_LAST_CMD_WORD[${timep_FNEST_CUR}]}" == '"'"'trap'"'"' ]] || [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || ${timep_IS_FUNC_FLAG}; } && {
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]=""
            timep_CMD_TYPE="FUNCTION (P)"
            timep_NO_PRINT_FLAG=true
        }
        ${timep_LINENO_INIT_FLAG} && {
            : "${timep_FNEST_CUR:=${timep_FUNCNAME_N}}"
            timep_LINENO[${timep_FNEST_CUR}]="${LINENO}"
            timep_IS_BG_FUNC_FLAG[${timep_FNEST_CUR}]=false
            timep_LINENO_INIT_FLAG=false
            [[ ${timep_LINENO_OFFSET[${timep_FNEST_CUR}]} ]] || (( timep_LINENO_OFFSET[${timep_FNEST_CUR}] = LINENO + 4 ))
            timep_NPIDWRAP=0
            [[ "${timep_NEXEC_0}" == *':CHILD:'* ]] || timep_NEXEC_0="{${timep_NPIDWRAP}-${BASHPID}}"
            timep_NEXEC_A[${timep_FNEST_CUR}]=0
            timep_FNEST[${timep_FNEST_CUR}]="${timep_FUNCNAME_N}"
            timep_hash - '"'"'timep_NEXEC_HASH_CUR'"'"' <<<"${timep_NEXEC_0}"
            echo "${timep_NEXEC_0}" >"${timep_TMPDIR}/.log/.hash/log.${timep_NEXEC_HASH_CUR}"
            echo "${timep_NEXEC_HASH_CUR} --> ${timep_NEXEC_0}" >>"${timep_TMPDIR}/run.log.txt"
            timep_NEXEC_HASH_A[${timep_FNEST_CUR}]="${timep_NEXEC_HASH_CUR}"
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
echo "NEW DEBUG TRAP ($BASHPID_$BASH_SUBSHELL): COMMAND TYPE IS $timep_CMD_TYPE -- CMD IS ${BASH_COMMAND}" >>"${timep_TMPDIR}/run.log.txt"
        if ${timep_IS_SUBSHELL_FLAG}; then
echo "IN IS_SUBSHELL BRANCH" >>"${timep_TMPDIR}/run.log.txt"
            timep_NPIPE[${timep_FNEST_CUR}]=1
            timep_NPIDWRAP_PREV_0="${timep_NPIDWRAP}"
            ((BASHPID < timep_BASHPID_PREV)) && ((timep_NPIDWRAP++))
            ((timep_BASH_SUBSHELL_DIFF = BASH_SUBSHELL - timep_BASH_SUBSHELL_PREV))
            timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE}): ${timep_BASHPID_PREV} >>"
            ((timep_NEXEC_N++))
            timep_PARENT_PGID="$timep_CHILD_PGID"
            timep_PARENT_TPID="$timep_CHILD_TPID"
            timep_BASHPID_ADD=()
            timep_BASHPID_ADD_CUR="${BASHPID}"
            timep_ADD_BG_PID_COUNTER_FLAG=false
            ((timep_BASH_SUBSHELL_DIFF--))
            timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}"
            ${timep_IS_BG_FLAG} && { [[ -f "${timep_TMPDIR}/.pid_used/${timep_BASHPID_ADD_CUR}" ]] || (( timep_BASHPID_ADD_CUR < timep_BASHPID_PREV )); } && timep_ADD_BG_PID_COUNTER_FLAG=true
            : >"${timep_TMPDIR}/.pid_used/${timep_BASHPID_ADD_CUR%\-*}"
            while ((timep_BASH_SUBSHELL_DIFF > 0)); do
                ((timep_BASH_SUBSHELL_DIFF--))
                IFS='"'"' '"'"' read -r _ timep_PCOMM _ timep_BASHPID_ADD_CUR _ </proc/${timep_BASHPID_ADD_CUR}/stat
                if (( timep_BASHPID_ADD_CUR == timep_BASHPID_PREV )) || (( timep_BASHPID_ADD_CUR <= 1 )); then
                    ((timep_BASH_SUBSHELL_DIFF++))
                    break
                else
                   ${timep_IS_BG_FLAG} && { [[ -f "${timep_TMPDIR}/.pid_used/${timep_BASHPID_ADD_CUR}" ]] || (( timep_BASHPID_ADD_CUR < timep_BASHPID_PREV )); } && timep_ADD_BG_PID_COUNTER_FLAG=true
                   timep_BASHPID_ADD[${timep_BASH_SUBSHELL_DIFF}]="${timep_BASHPID_ADD_CUR}"
                fi
            done
            timep_KK="${timep_BASH_SUBSHELL_DIFF}"
            timep_NPIDWRAP="${timep_NPIDWRAP_PREV_0}"
            ((timep_NEXEC_N++))
            if ${timep_ADD_BG_PID_COUNTER_FLAG}; then
                read -r -u "${timep_LOCK_FD}" _
                read -r timep_BG_PID_COUNTER <"${timep_TMPDIR}/.log/.count.bg_pid"
                ((timep_BG_PID_COUNTER++))
                printf '"'"'%s\n'"'"' "${timep_BG_PID_COUNTER}" >"${timep_TMPDIR}/.log/.count.bg_pid"
                timep_BG_PID_COUNTER="-${timep_BG_PID_COUNTER}"
                printf '"'"'\n'"'"' >&${timep_LOCK_FD}
            else
                timep_BG_PID_COUNTER='"''"'
            fi
            while ((timep_KK < ${#timep_BASHPID_ADD[@]})); do
                : >"${timep_TMPDIR}/.pid_used/${timep_BASHPID_PREV%\-*}"
                (( ${timep_BASHPID_ADD[${timep_KK}]%%-*} < ${timep_BASHPID_PREV%%-*} )) && ((timep_NPIDWRAP++))
                timep_BASHPID_PREV="${timep_BASHPID_ADD[${timep_KK}]}${timep_BG_PID_COUNTER}"
                timep_BASH_COMMAND_PREV_0="<< (${timep_CMD_TYPE}): ${timep_BASHPID_PREV} >>"
                timep_hash - '"'"'timep_NEXEC_HASH_CUR'"'"' <<<"${timep_NEXEC_0}.${timep_NEXEC_CUR}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"
                echo "${timep_NEXEC_0}.${timep_NEXEC_CUR}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}" >"${timep_TMPDIR}/.log/.hash/log.${timep_NEXEC_HASH_CUR}"
echo "${timep_NEXEC_HASH_CUR} --> ${timep_NEXEC_0}" >>"${timep_TMPDIR}/run.log.txt"
                [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}.init_s" ]] || printf '"'"'1\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_CUR}" "${timep_NPIDWRAP}" "${timep_BASHPID_PREV}" "${timep_LINENO_0}" "${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}.init_s"
                timep_BASHPID_STR+=".${timep_BASHPID_PREV}"
                timep_NEXEC_0+=".${timep_NEXEC_CUR}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}"
                timep_NEXEC_A+=(0)
                timep_NEXEC_CUR=0
                ((timep_BASH_SUBSHELL_PREV++))
                ((timep_KK++))
            done
            timep_BASHPID_PREV="${BASHPID}"
            timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"
            timep_NEXEC_HASH_A[-1]="${timep_NEXEC_HASH_CUR}"
            ((timep_NEXEC_N++))
            ${timep_IS_BG_FUNC_FLAG[${timep_FUNCNAME_N}]} || printf '"'"'1\t%s\t+\t%s\tF:%s %s\tS:%s %s\tN:%s %s.0\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_END_CTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_LINENO_0}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_CUR@Q} ${timep_IS_BG_INDICATOR}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}.init_c"
            timep_SUBSHELL_INIT_FLAG=true
        elif ${timep_SUBSHELL_INIT_FLAG}; then
            [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}.init_c" ]] && : >"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}.init_c"
            timep_SUBSHELL_INIT_FLAG=false
        fi
        ${timep_IS_SUBSHELL_FLAG} || [[ -z ${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]} ]] || {
echo "IN WRITE NORMAL COMMAND BRANCH" >>"${timep_TMPDIR}/run.log.txt"
            ${timep_SIMPLEFORK_CUR_FLAG} && ((BASHPID < $!)) && {
                timep_IS_BG_FLAG=true
                timep_CMD_TYPE="SIMPLE FORK *"
            }
            ${timep_IS_BG_FLAG} && [[ -z ${timep_IS_BG_INDICATOR} ]] && timep_IS_BG_INDICATOR='"'"'(&)'"'"'
            [[ -s "${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_HASH_CUR}.${timep_NEXEC_CUR}" ]] && {
                {
                    while IFS=$'"'"'\t'"'"' read -r -u ${timep_FD_ENDTIME} timep_END_TIME0 timep_END_CTIME0; do
                        (( 10#0${timep_END_TIME0//[^0-9]/} < 10#0${timep_END_TIME//[^0-9]/} )) && (( 10#0${timep_END_TIME0//[^0-9]/} > 10#0${timep_STARTTIME[${timep_FNEST_CUR}]%$'"'"'\t'"'"'*} )) && {
                            timep_END_TIME="${timep_END_TIME0}"
                            timep_END_CTIME="${timep_END_CTIME0}"
                        }
                    done
                    timep_ENDTIME="${timep_END_TIME}"$'"'"'\t'"'"'"${timep_END_CTIME}"
                } {timep_FD_ENDTIME}<"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_HASH_CUR}.${timep_NEXEC_CUR}"
                exec {timep_FD_ENDTIME}>&-
            }
            ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s %s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-1}" "${timep_STARTTIME[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR:-${timep_FUNCNAME_N}}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_CUR}" "${timep_LINENO[${timep_FNEST_CUR:-${timep_FUNCNAME_N}}]:-${timep_LINENO_0}}" "'"$(${timep_DEBUG_IDS_FLAG} && printf '%s' '{PP0: ${timep_PARENT_PGID0} PT0: ${timep_PARENT_TPID0}   PP: ${timep_PARENT_PGID} PT: ${timep_PARENT_TPID}   CP: ${timep_CHILD_PGID} CT: ${timep_CHILD_TPID}}')"'${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]@Q}" "${timep_IS_BG_INDICATOR}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
            ((timep_NEXEC_A[-1]++))
            ((timep_NEXEC_CUR++))
            ((timep_NEXEC_N++))
        }
        if ${timep_IS_FUNC_FLAG}; then
echo "IN IS_FUNC_FLAG BRANCH" >>"${timep_TMPDIR}/run.log.txt"
            timep_FUNCNAME_STR+=".${FUNCNAME[0]}"
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"
            timep_NEXEC_A+=(0)
            timep_NEXEC_CUR=0
            ((timep_NEXEC_N++))
            [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || {
                if ${timep_IS_BG_FUNC_FLAG[${timep_FUNCNAME_N}]}; then
                    timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR}"
                else
                    timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]=" (F) << (FUNCTION): ${timep_BASH_COMMAND_CUR} >>"
                fi
            }
            timep_NPIPE[${timep_FUNCNAME_N}]="1"
            timep_FNEST_CUR="${timep_FUNCNAME_N}"
            timep_BASH_SOURCE_N[${timep_FNEST_CUR}]="${#BASH_SOURCE[@]}"
            timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]=false
            timep_hash - '"'"'timep_NEXEC_HASH_CUR'"'"' <<<"${timep_NEXEC_0}"
            echo "${timep_NEXEC_0}" >"${timep_TMPDIR}/.log/.hash/log.${timep_NEXEC_HASH_CUR}"
echo "${timep_NEXEC_HASH_CUR} --> ${timep_NEXEC_0}" >>"${timep_TMPDIR}/run.log.txt"
            timep_NEXEC_HASH_A+=("${timep_NEXEC_HASH_CUR}")
            timep_IS_FUNC_FLAG_1=true
        elif (( ${#BASH_SOURCE[@]} > timep_BASH_SOURCE_N[${timep_FNEST_CUR}] )); then
            timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]=true
        fi
        if (( timep_LINENO_0 < 0 )) && [[ "${timep_BASH_COMMAND_CUR}" == "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]% \(\?\)}" ]]; then
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR} "'"'"'(?)'"'"'
        else
            timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${timep_BASH_COMMAND_CUR}"
        fi
        timep_LAST_CMD_WORD[${timep_FNEST_CUR}]="${BASH_COMMAND%% *}"
        timep_LINENO[${timep_FNEST_CUR}]="${timep_LINENO_0}"
        timep_BG_PID_PREV="$!"
        timep_BASHPID_PREV="$BASHPID"
        timep_NO_PRINT_FLAG=false
        ${timep_SKIP_DEBUG_NEXT_FLAG} && {
            timep_SKIP_DEBUG_NEXT_FLAG=false
            timep_SKIP_DEBUG_FLAG=true
        }
       '"${timep_START_CTIME_STR}"'
        (( timep_START_TIME = 10#${EPOCHREALTIME//[^0-9]/} ))
        timep_STARTTIME[${timep_FNEST_CUR}]="${timep_START_TIME}"$'"'"'\t'"'"'"${timep_START_CTIME}"
        timep_START_CTIME_SELF_A[${timep_FNEST_CUR}]="${timep_START_CTIME_SELF}"
    }
    ${timep_TRAP_OPTS:+set -}${timep_TRAP_OPTS}
'

    # overload the trap builtin to allow the use of custom EXIT/RETURN/DEBUG traps

    export -p -f trap &>/dev/null && export -n -f trap

        { printf 'declare -g timep_SIGNAL_RELAY_TRAP_STR='"'"'%s'"'"'\n\ndeclare -g timep_EXIT_TRAP_STR='"'"'%s'"'"'\n\ndeclare -g timep_RETURN_TRAP_STR='"'"'%s'"'"'\n\ndeclare -g timep_DEBUG_TRAP_STR_0='"'"'%s'"'"'\n\ndeclare -g timep_DEBUG_TRAP_STR_1='"'"'%s'"'"'\n\n%s\n\n' "${timep_SIGNAL_RELAY_TRAP_STR//"'"/"'"'"'"'"'"'"'"}" "${timep_EXIT_TRAP_STR//"'"/"'"'"'"'"'"'"'"}"  "${timep_RETURN_TRAP_STR//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_0//"'"/"'"'"'"'"'"'"'"}" "${timep_DEBUG_TRAP_STR_1//"'"/"'"'"'"'"'"'"'"}" 'trap() {
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
            [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]] || {
                trapStrQ="@TRAP (${trapType}): ${trapStr}"
                trapStrQ="${trapStrQ//$'"'"'\n'"'"'/'"'"'$'"'"'"'"'"'"'"'"'\n'"'"'"'"'"'"}"
                trapStrQ="${trapStrQ//$'"'"'\t'"'"'/'"'"'$'"'"'"'"'"'"'"'"'\t'"'"'"'"'"'"}"
                trapStrQ="${trapStrQ//\;/\\\;}"
            }
            case "${trapType}" in
                EXIT)
                    if [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap "${timep_EXIT_TRAP_STR}" EXIT
                    else
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ@Q}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false
'"'"'"${timep_EXIT_TRAP_STR}" EXIT
                    fi
                ;;
                RETURN)

                    if [[ -z "${trapStr}" ]] || [[ "${trapStr}" == '"'"'-'"'"' ]]; then
                        builtin trap "${timep_RETURN_TRAP_STR}" RETURN
                    else
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ@Q}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
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
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ@Q}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
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
                        builtin trap '"'"'timep_SKIP_DEBUG_FLAG=true
echo '"'"'"${trapStrQ@Q}"'"'"' >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_HASH_CUR}"
'"'"'"${trapStr0}"'"'"'
timep_SKIP_DEBUG_FLAG=false'"'"' "${trapType}"
                    fi
                ;;
            esac
        done
    }
    export -f trap
'; } >"${timep_TMPDIR}/functions.bash"

        # setup a string with the command to run
        case "${timep_runType}" in
            s)
                shift 1
                timep_runCmd="$(<"${timep_runCmdPath}")"
                timep_runCmd="${timep_runCmd//builtin trap /trap }"
                if [[ "${timep_runCmd}" == '#!'* ]]; then
                    timep_runMainSrc="${timep_runCmd%%$'\n'*}"$'\n'
                    timep_runCmd="${timep_runCmd#*$'\n'}"
                else
                    timep_runMainSrc='#!'"${BASH}"$'\n'
                fi
            ;;
            c)
                printf -v timep_runCmd '%s\n' "${@}"
                timep_runCmd="${timep_runCmd//builtin trap /trap }"

                # start of wrapper code
                timep_runMainSrc='#!'"${BASH}"$'\n'
            ;;
            f)
                timep_funcName="${1}"
                shift 1
                _timep_getFuncSrc -r "${timep_funcName}" >>"${timep_TMPDIR}/functions.bash"

                printf -v timep_runCmd '%s "${@}"\n' "${timep_funcName}"
                [[ -t 0 ]] || timep_runCmd+=" <&0"

                # start of wrapper code
                timep_runMainSrc='#!'"${BASH}"$'\n'
            ;;
        esac

    timep_runVarsSrc='
declare -g timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD  timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_SUBSHELL_INIT_NEXT_FLAG timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BASHPID_STR_0 timep_BG_PID_COUNTER timep_LINENO_0 timep_START_UTIME0 timep_START_STIME0 timep_END_TIME timep_END_CTIME timep_START_CTIME_SELF timep_END_CTIME_SELF timep_END_UTIME timep_END_STIME timep_END_UTIME0 timep_END_STIME0 timep_pidCur timep_BASH_COMMAND_CUR timep_FUNCNAME_N timep_LINENO_INIT_FLAG timep_TRAP_OPTS timep_NEXEC_HASH_CUR timep_NEXEC_END timep_START_TIME timep_START_UTIME timep_START_STIME timep_BG_FUNC_RETURN_TRAP_FLAG 
declare -ga timep_BASH_COMMAND_PREV timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_LINENO_OFFSET timep_LINENO_OFFSET_PREV timep_BASHPID_ADD timep_STARTTIME timep_START_CTIME_SELF_A timep_pidA timep_NEXEC_HASH_A timep_AVAILABLE_BUILTINS timep_LAST_CMD_WORD timep_IS_BG_FUNC_FLAG timep_BASH_SOURCE_N timep_IS_SOURCE_FLAG timep_FNEST
declare -gx timep_TMPDIR timep_NEXEC_0 timep_NEXEC_CUR timep_LOCK_FD timep_NPIDWRAP timep_FNEST_CUR
: "${timep_FNEST_CUR:=0}"
: "${timep_FNEST[$timep_FNEST_CUR]:='"''"'}" "${timep_NEXEC_A[$timep_FNEST_CUR]:='"''"'}" "${timep_NEXEC_HASH_A[$timep_FNEST_CUR]:='"''"'}"
'

    timep_runSetupSrc='
        : & 2>/dev/null

        _timep_SETUP

echo "IN BASH_ENV SETUP" >>"${timep_TMPDIR}/run.log.txt"
        echo "$!" >"${timep_TMPDIR}/.log/.last_bg_pid"
        exec {timep_LOCK_FD}<><(:)
        printf '"'"'\n'"'"' >&${timep_LOCK_FD}

        read -r _ _ _ _ timep_PARENT_PGID _ _ timep_PARENT_TPID _ </proc/${BASHPID}/stat
        timep_CHILD_PGID="$timep_PARENT_PGID"
        timep_CHILD_TPID="$timep_PARENT_TPID"

        timep_FNEST=("${#FUNCNAME[@]}")
        timep_FNEST_CUR="${#FUNCNAME[@]}"

        mapfile -t timep_AVAILABLE_BUILTINS < <(enable -p | grep -E '"'"'((getCPUtime)|timep_((crc32)|(fnv1a)|(hash)))'"'"')
        (( ${#timep_AVAILABLE_BUILTINS[@]} >=  4 )) || enable -f "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash || _timep_SETUP
        unset "timep_AVAILABLE_BUILTINS"

        timep_BASHPID_PREV="$BASHPID"
        timep_BG_PID_PREV="$!"
        timep_BG_PID_COUNTER='"''"'
        timep_BASH_SUBSHELL_PREV="$BASH_SUBSHELL"
        timep_NEXEC_N=0
        timep_NEXEC_CUR=0
        timep_NPIDWRAP=0
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
        timep_BG_FUNC_RETURN_TRAP_FLAG=false

        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]='"''"'
        timep_NPIPE[${timep_FNEST_CUR}]='"'"'0'"'"'
        timep_STARTTIME[${timep_FNEST_CUR}]="${EPOCHREALTIME}"
        timep_BASH_SOURCE_N[${timep_FNEST_CUR}]="${#BASH_SOURCE[@]}"
        timep_IS_SOURCE_FLAG[${timep_FNEST_CUR}]=false
'
        for nn in INT TERM QUIT HUP; do
            printf -v trapAddCur '%s' "${timep_SIGNAL_RELAY_TRAP_STR//\%s/${nn}}"
            timep_runSetupSrc+=$'\n'"builtin trap '${trapAddCur//"'"/"'"'"'"'"'"'"'"}' SIG${nn}"$'\n'
        done

        timep_runSetupSrc+='

        builtin trap "${timep_RETURN_TRAP_STR}" RETURN
        builtin trap "${timep_EXIT_TRAP_STR}" EXIT
        '


    timep_runMainSrc='set -mT
. "${timep_TMPDIR}/vars.bash"
: "${timep_FNEST_CUR:=0}"
: "${timep_FNEST[$timep_FNEST_CUR]:='"''"'}" "${timep_NEXEC_A[$timep_FNEST_CUR]:='"''"'}" "${timep_NEXEC_HASH_A[$timep_FNEST_CUR]:='"''"'}"
[[ -x "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep.so" ]] || _timep_SETUP
enable -f "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash
timep_NPIDWRAP=0
timep_NEXEC_0="{${timep_NPIDWRAP}-${BASHPID}}"
timep_NEXEC_A[$timep_FNEST_CUR]=0
timep_FNEST[$timep_FNEST_CUR]='"'"'main'"'"'
timep_hash - '"'"'timep_NEXEC_HASH_CUR'"'"' <<<"${timep_NEXEC_0}"
echo "${timep_NEXEC_0}" >"${timep_TMPDIR}/.log/.hash/log.${timep_NEXEC_HASH_CUR}"
echo "${timep_NEXEC_HASH_CUR} --> ${timep_NEXEC_0}" >>"${timep_TMPDIR}/run.log.txt"
timep_NEXEC_HASH_A=("${timep_NEXEC_HASH_CUR}")
. "${timep_TMPDIR}/functions.bash";
export BASH_ENV="${timep_TMPDIR}/env.bash"
. "${timep_TMPDIR}/setup.bash"
echo "${EPOCHREALTIME//[^0-9]/}" >"${timep_TMPDIR}/.log/.final.start.wtime"
builtin trap "${timep_DEBUG_TRAP_STR_0}${timep_DEBUG_TRAP_STR_1}" DEBUG
'

    ${timep_timeFlag} && timep_runMainSrc+='
    time {
'
        timep_runMainSrc+='
{
    '"${timep_runCmd}"'
} 0<&${timep_FD0} 1>&${timep_FD1} 2>&${timep_FD2}
'
    ${timep_timeFlag} && timep_runMainSrc+='
} 1>&${timep_FD2}
'

    timep_runMainSrc+='
builtin trap - DEBUG EXIT RETURN SIGTERM SIGQUIT SIGHUP SIGINT;
exec {timep_LOCK_FD}>&-
echo "${EPOCHREALTIME//[^0-9]/}" >"${timep_TMPDIR}/.log/.final.end.wtime"
'"${timep_END_CTIME_STR}"'
echo "${timep_END_CTIME//[^0-9]/}" >"${timep_TMPDIR}/.log/.final.end.ctime"
'

#    [[ "${timep_runType}" == 'f' ]] && {
#        timep_runMainSrc+=$'\n\n''}'$'\n\n''timep_runFunc "${@}"'
#        [[ -t 0 ]] && timep_runMainSrc+=' <&0'
#        timep_runMainSrc+=$'\n\n'
#    }

    # save script/function (with added debug trap) in new script file and make it executable
    #[[ "${timep_runType}" == 'f' ]] || 
    _timep_getFuncSrc -q -r "${timep_TMPDIR}/main.bash" >>"${timep_TMPDIR}/functions.bash"
    #declare -f timep >>"${timep_TMPDIR}/functions.bash"
    declare -f _timep_SETUP >>"${timep_TMPDIR}/functions.bash"
    echo "${timep_runSetupSrc}" >"${timep_TMPDIR}/setup.bash"
    echo "${timep_runVarsSrc}" >"${timep_TMPDIR}/vars.bash"
    echo "${timep_runMainSrc}" >"${timep_TMPDIR}/main.bash"
    chmod +x "${timep_TMPDIR}/main.bash"

    cat <<EOF >"${timep_TMPDIR}/env.bash"

builtin trap - DEBUG EXIT RETURN
set -mT
. "\${timep_TMPDIR}/vars.bash"
: "\${timep_FNEST_CUR:=\${#FUNCNAME[@]}}"
: "\${timep_FNEST[\$timep_FNEST_CUR]:='"''"'}" "\${timep_NEXEC_A[\$timep_FNEST_CUR]:='"''"'}" "\${timep_NEXEC_HASH_A[\$timep_FNEST_CUR]:='"''"'}"
[[ -x "\${timep_TMPDIR0}/lib/\${USER}-\${EUID}/timep.so" ]] || _timep_SETUP
enable -f "\${timep_TMPDIR0}/lib/\${USER}-\${EUID}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash
timep_NEXEC_0+=".\${timep_NEXEC_CUR}:CHILD:{\${timep_NPIDWRAP}-\${BASHPID}}"
timep_NEXEC_A[\$timep_FNEST_CUR]=0
timep_NEXEC_CUR=0
timep_hash - timep_NEXEC_HASH_CUR <<<"\${timep_NEXEC_0}"
echo "\${timep_NEXEC_0}" >"\${timep_TMPDIR}/.log/.hash/\${timep_NEXEC_HASH_CUR}"
timep_NEXEC_HASH_A+=("\${timep_NEXEC_HASH_CUR}")
. "\${timep_TMPDIR}/functions.bash"
export BASH_ENV="\${timep_TMPDIR}/env.bash"
. "\${timep_TMPDIR}/setup.bash"
${timep_END_CTIME_STR}
timep_BASH_COMMAND_PREV_0="<< (CHILD): \${BASHPID} >>"
printf '1\t%s\t%s\t-\t-\tF:%s %s\tS:%s %s\tN:%s %s\t%s\t::\t%s\n' "\${EPOCHREALTIME//./}" "\${timep_END_CTIME}" "\${timep_FNEST_CUR:-\${timep_FUNCNAME_N}}" "\${timep_FUNCNAME_STR}" "\${timep_BASH_SUBSHELL}" "\${timep_BASHPID_STR}" "\${timep_NEXEC_N}" "\${timep_NEXEC_0}" "\${LINENO}" "\${timep_BASH_COMMAND_PREV_0@Q}" >>"\${timep_TMPDIR}/.log/log.\${timep_NEXEC_HASH_CUR}.init_s"
echo "\${timep_NEXEC_HASH_CUR} --> \${timep_NEXEC_0}" >>"\${timep_TMPDIR}/run.log.txt"
builtin trap "\${timep_DEBUG_TRAP_STR_0}\${timep_DEBUG_TRAP_STR_1}" DEBUG
EOF




    printf '\ntimep_TMPDIR = %s\n\n' "${timep_TMPDIR}" >&2

    export timep_TMPDIR="${timep_TMPDIR}"
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

    timep_WTIME_START="${EPOCHREALTIME//[^0-9]/}"

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
          "${BASH}" -m -O extglob -o functrace "${timep_TMPDIR}/main.bash" "${@}"
        else
           "${BASH}" -m -O extglob -o functrace "${timep_TMPDIR}/main.bash" "${@}" <&0
        fi
    fi

    timep_WTIME_DONE="${EPOCHREALTIME//[^0-9]/}"
    eval "${timep_END_CTIME_STR}"
    timep_CIME_DONE="${timep_END_CTIME//[^0-9]/}"

    printf '\n\nThe %s being time profiled has finished running!\ntimep will now process the logged timing data.\ntimep will save the time profiles it generates in "%s" (+%s)\n\n' "$({ [[ "${timep_runType}" == 's' ]] && echo 'script'; } || { [[ "${timep_runType}" == 'f' ]] &&  echo 'function'; } || echo 'commands')" "${timep_TMPDIR}/profiles" "${SECONDS}" >&2
    unset IFS

    # DEBUG OUTPUT - print log contents
    ${timep_DEBUG_FLAG} && {
        mapfile -t timep_LOG_A < <(printf '%s\n' "${timep_TMPDIR}"/.log/log* | sort -V)
        for nn in "${timep_LOG_A[@]}"; do
            printf '\n\n------------------------------------------------------------------\n%s\n\n' "$nn"; sort -n -k2 <"$nn";
        done >&2
    }

    for nn in "${timep_TMPDIR}"/.log/log.*.init_c; do
        [[ -s "$nn" ]] && ! [[ -s "${nn%.init_c}" ]] && mv "$nn" "${nn%.init_c}" || \rm -f "${nn}"
    done

    for nn in "${timep_TMPDIR}"/.log/log.*.init_s; do
        [[ -s "$nn" ]] && {
            nn0="${nn##*\/}"
            IFS= read -r nn1 <"${timep_TMPDIR}/.log/.hash/${nn0%.init_s}"
            timep_hash - 'nn2' <<<"${nn1%.*}"
            IFS= read -r <"${nn}"
            echo "${REPLY}" >>"${timep_TMPDIR}/.log/log.${nn2}"
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

    # get final end times
    [[ -f "${timep_TMPDIR}/.log/.final.start.wtime" ]] && read -r timep_WTIME_START <"${timep_TMPDIR}/.log/.final.start.wtime"
    [[ -f "${timep_TMPDIR}/.log/.final.end.wtime" ]] && read -r timep_WTIME_DONE <"${timep_TMPDIR}/.log/.final.end.wtime"
    [[ -f "${timep_TMPDIR}/.log/.final.end.ctime" ]] && read -r timep_CTIME_DONE <"${timep_TMPDIR}/.log/.final.end.ctime"
   
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

    for w in {1..9}; do
        read -r -u ${fd_sleep} -t "0.0${w}" _
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

declare -p | grep -E '^declare -[^ ]+ ((logCur)|(log_tmp)|(kk)|(kk1)|(nn)|(r)|(wTimeTotal)|(cTimeTotal)|(inPipeFlag)|(lineno1)|(nPipe)|(startWTime)|(endWTime)|(startCTime)|(endCTime)|(wTime)|(cTime)|(wTimeP)|(wTime0)|(cTime0)|(cTimeP)|(func)|(pid)|(nexec)|(lineno)|(cmd)|(t0)|(t1)|(log_tmp)|(linenoUniq)|(merge_init_flag)|(log_dupe_flag)|(spacerN)|(lineU)|(logMergeAll)|(fg0)|(ns)|(nf)|()|(nPipeNextIgnoreFlag)|(IFS0)|(count0)|(nPipe0)|(cmd0)|(d6)|(logA)|(nPipeA)|(startWTimeA)|(endWTimeA)|(wTimeA)|(wTimeTA)|(startCTimeA)|(endCTimeA)|(cTimeA)|(cTimeTA)|(funcA)|(pidA)|(nexecA)|(linenoA)|(cmdA)|(mergeA)|(isPipeA)|(logMergeA)|(linenoUniqA)|(lineUA)|(timeUA)|(sA)|(fA)|(eA)|(fgA)|(normalCmdFlagA)|(linenoUniqLineA)|(linenoUniqCountA)|(linenoUniqWTimeA)|(linenoUniqWTimeTA)|(linenoUniqCTimeA)|(linenoUniqCTimeTA)|(IFS0)|(nn)|(jj)|(kk)|(kk0)|(kk1)|(kkd)|(a)|(a0)|(b)|(u)|(logPathCur)|(nCPU)|(nWorker)|(nWorkerMax)|(REPLY)|(timep_coprocSrc)|(timep_DEBUG_FLAG)|(timep_DEBUG_IDS_FLAG)|(timep_deleteFlag)|(timep_fd_done)|(timep_LOCK_FD)|(timep_fd_logID)|(timep_flameGraphFlag)|(timep_flameGraphPath)|(timep_LOG_NUM)|(timep_noOutFlag)|(timep_outType)|(timep_PPID)|(timep_PTY_FD_TEST)|(timep_PTY_FLAG)|(timep_PTY_PATH)|(timep_wtimeALL)|(timep_wTimeCur)|(timep_WTIME_DONE)|(timep_timeFlag)|(timep_TITLE)|(timep_CLOCK_GETTIME_FLAG)|(timep_WTIME_CORRECTION)|(timep_CTIME_CORRECTION)|(timep_TMPDIR)|(timep_FD0)|(timep_FD1)|(timep_FD2)|(timep_CPU_TIME_MULT)|(pAll_PID)|(timep_outTypeA)|(kkNeed)|(kkNeed0)|(timep_LOG_NAME)|(timep_LOG_NESTING)|(timep_LOG_NESTING_IND)|(LOG_NESTING_CUR)|(timep_LOG_NESTING_MAX)|(BASH_COMMAND)|(FUNCNAME)|(nRetry)|(nWorker)|(timep_)|(Time)|(.+A))=' | sed -E s/'^declare \-[^ ]+ '//

}

shopt -s extglob

_timep_PROCESS_LOG() {

    local logCur log_tmp kk kk1 kkLast lineno1 nn inPipeFlag nPipe startWTime endWTime startCTime endCTime wTime cTime wTime0 cTime0  func pid nexec lineno cmd t0 t1 log_tmp linenoUniq log_dupe_flag spacerN logMergeAll fg0 ns nf nPipeNextIgnoreFlag IFS IFS0 nPipe0 cmd0 cmd00 d6 wTimeTotal cTimeTotal wTimeP cTimeP nlogA logDepth keyCur mergeInd kkOut jj firstFlag fgStartTime wt ct startWTime0 endWTimeChild wTimeSelfTotal wTimeSelfChild
    local -a logA logA_time logA_time_files nPipeA wTimeTA cTimeTA funcA pidA nexecA linenoA cmdA mergeA mergeA0 isPipeA isTrapA logMergeA linenoUniqA sA fA eA fgA normalCmdFlagA isBackgroundForkFlagA startWTimeA endWTimeA startCTimeA endCTimeA wTimeA cTimeA wTimePA cTimePA linenoUniqMapA linenoUniqLineA linenoUniqCountA linenoUniqWTimeA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA linenoUniqWTimeTA linenoUniqCTimeA linenoUniqCTimeTA linenoUniqCmdA wTimeOutCurA wTimeOutCurTA cTimeOutCurA cTimeOutCurTA countOutCurA nestDiagramOutCurA linenoOutCurA cmdIndexOutCurA cmdOutCurA isMergeIndicatorA mergeCurA mergeCurA0 cmdIndexA linenoUniqNestDiagramA linenoUniqCmdIndexA linenoUniqLinenoA inPipeFlagA
    local -A linenoUniqMapAA

    [[ ${timep_POSTPROC_DEBUG_FLAG} ]] && ${timep_POSTPROC_DEBUG_FLAG} && {
        trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2' ERR
        set -xv
    }

    logCur="${timep_LOG_NAME[${1}]}"

    [[ -e "${logCur}" ]] || return 1

    [[ -f "${logCur}.out" ]] && \rm "${logCur}.out"
    [[ -f "${logCur}.out.combined" ]] && \rm "${logCur}.out.combined"

    inPipeFlag=false
    nPipeNextIgnoreFlag=false

    wTimeTotal=0
    cTimeTotal=0
    wTimeSelfTotal=0

    # get current log nesting depth
    read -r logDepth <"${timep_TMPDIR}/.log/.hash/${logCur##*\/}"
    logDepth="${logDepth//[^.]/}"
    logDepth="${#logDepth}"

    # load current log (sorted by NEXEC) into array
    mapfile -t logA <"${logCur}" 

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

    nlogA="${#logA[@]}"

    IFS=$'\t' read -r _ startWTime0 _ <<<"${logA[0]}"

   # loop through lines in reverse order
    for (( kk=nlogA-1; kk>=0; kk-- )); do

        [[ -z ${logA[$kk]//[ $'\t']/} ]] && { unset "logA[$kk]"; continue; }

        # read log fields into variables
        IFS=$'\t' read -r nPipe startWTime startCTime endWTime endCTime func pid nexec lineno _ cmd <<<"${logA[$kk]}"
        nPipeA[$kk]="${nPipe}"
        startWTimeA[$kk]="${startWTime}"
        endWTimeA[$kk]="${endWTime}"
        startCTimeA[$kk]="${startCTime}"
        endCTimeA[$kk]="${endCTime}"
#        if  [[ "${timep_runType}" == 'f' ]]; then
#            funcA[$kk]="${func/main.timep_runFunc/main}"
#        else
            funcA[$kk]="${func}"
#        fi
        pidA[$kk]="${pid}"
        nexecA[$kk]="${nexec}"

        # get nexec hash
        timep_hash - 'nexecHash' <<<"${nexecA[$kk]#* }"
        nexecHashA[$kk]="${nexecHash}"

        # update earliest start time for this log if needed
        (( startWTime >= startWTime0 )) || [[ ${startWTime0} ]] || startWTime0="${startWTime}"

        # unquote the cmd string
        if [[ "${cmd}" == '@TRAP ('*'): '* ]]; then
            cmd="${cmd@Q}"
            cmd="${cmd@Q}"
            isTrapA[$kk]=true

            if (( kk > 1 )); then
                IFS=$'\t' read -r _ _ _ _ _ _ _ _ lineno _ <<<"${logA[$((kk-1))]}"
                lineno="-${lineno}"
            else
                lineno="-1"
            fi
        else
            isTrapA[$kk]=false
        fi

        linenoA[$kk]="${lineno}"

        [[ "${cmd%' >>'}" == *"'"' ('[\?\^\&\!]')' ]] && cmd="${cmd%*([[:space:]])"'"*}${cmd##**([[:space:]])"'"}'"

        [[ "${cmd}" == '<< ('*'): '*' >>' ]] && cmd="${cmd@Q}"

        cmd="${cmd//"'\\''"/"'"'"'"'"'"'"'"}"
        read -r -d '' cmd < <(eval "printf '%s\0' ${cmd}")
        cmd="${cmd//$'\n'/\$"'"\\n"'"}"
        cmd="${cmd//$'\t'/\$"'"\\t"'"}"
        cmd="${cmd#"'"}"
        cmd="${cmd%"'"}"
        cmd="${cmd//"'\\''"/"'"}"
        [[ "${cmd%' >>'}" == *"'"' ('[\&\?\!\^]')' ]] && cmd="${cmd%"'"*}${cmd##*"'"}"

        cmdA[$kk]="${cmd}"

        # deal with issue where for (( ...; ...; ... )) loops inherit previous nPipe
        if ${nPipeNextIgnoreFlag}; then
            nPipe=1
            nPipeA[$kk]=1
            nPipeNextIgnoreFlag=false
            inPipeFlag=false
            inPipeFlagA[$kk]=false
        elif (( 10#0${nPipeA[$kk]//[^0-9]/} > 1 )) && (( kk > 0 )) && ! ${isTrapA[$kk]} && [[ "${cmdA[$kk]//"'"/}" == '(('*[\<\>\=]*'))' ]]; then
            (( kk1 = kk - 1 ))
            IFS=$'\t' read -r nPipe0 _ _ _ _ _ _ _ _ _ cmd0 <<<"${logA[$kk1]}"
            (( nPipe0 > 1 )) && {
                read -r -d '' cmd0 < <(eval "printf '%s\0' ${cmd0}")
                cmd0="${cmd0#@([[:print:]])}"
                cmd0="${cmd0%@([[:print:]])*([[:space:]])}"
                [[ "${cmd0//[\\"'"]/}" == '(('*\=*'))' ]] && {
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
            mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecHashA[$kk]}"

            # read in the endtime + runtime from the log
            # [[ "${cmdA[$kk]//"'"/}" == '<< (BACKGROUND FORK): '*' >>' ]] || {
            #    if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecHashA[$kk]}"; then
            #        IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecHashA[$kk]}"
            #        [[ ${wTime//[^0-9]/} ]] && wTimeA[$kk]="${wTime}"
            #        [[ ${cTime//[^0-9]/} ]] && cTimeA[$kk]="${cTime}"
            #    fi
            #  }
            isBackgroundForkFlagA[$kk]=false
            if [[ "${cmdA[$kk]//"'"/}" == '<< (FUNCTION): '*' >>' ]]; then
                cmd="${cmdA[$kk]#<< \(FUNCTION\): }"
                cmd="${cmd%' >>'}"
                cmd="${cmd#"'"}"
                cmd="${cmd%"'"}"
                cmd="${cmd//"'\\''"/"'"}"
                cmdA[$kk]='<< (FUNCTION): '"${funcA[$kk]#* }.${cmd}"' >>'

            elif [[ "${cmdA[$kk]//"'"/}" == '<< (SUBSHELL): '*' >>' ]] && (( kk < nlogA - 1 )) && _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.endtimes/log.${nexecHashA[$kk]}"; then
                # sanity check - ensure the childs logs last wall-clock end time is before the next commands start time
                IFS=$'\t' read -r endWTimeChild _ <"${timep_TMPDIR}/.log/.endtimes/log.${nexecHashA[$kk]}"
                (( 10#0${startWTimeA[$((kk+1))]//[^0-9]/} < 10#0${endWTimeChild//[^0-9]/} )) && (( 10#0${endWTimeChild//[^0-9]/} > 0 )) && cmdA[$kk]="${cmdA[$kk]/\(SUBSHELL\)/\(BACKGROUND FORK\)}"

                # for background forks, assume the end time is the start time of the 1st command in the child process or the start of the next command in te parent (whichever is earlier)minus 1 microsecond
            elif [[ "${cmdA[$kk]//"'"/}" == '<< (BACKGROUND FORK): '*' >>' ]] && [[ "${endWTime}" == '-' ]]; then
                isBackgroundForkFlagA[$kk]=true
                if (( kk < nlogA - 1 )) && [[ ${startWTimeA[$((kk+1))]//[^0-9]/} ]] && (( 10#0${startWTimeA[$((kk+1))]//[^0-9]/} > 10#0${startWTimeA[$kk]//[^0-9]/} )); then
                     (( endWTime = ${startWTimeA[$((kk+1))]//[^0-9]/} - 1 ))
                     endWTimeA[$kk]="${endWTime}"
                fi
                if _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.starttimes/log.${nexecHashA[$kk]}"; then
                    IFS=$'\t' read -r endWTime <"${timep_TMPDIR}/.log/.starttimes/log.${nexecHashA[$kk]}" && (( endWTime - 1 > 10#0${startWTimeA[$kk]//[^0-9]/} )) && { [[ "${endWTimeA[$kk]}" == '-' ]] || (( endWTime - 1 < endWTimeA[$kk] )); } && (( endWTimeA[$kk] = endWTime - 1 ))
                fi
                [[ "${endWTimeA[$kk]}" == '-' ]] || (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} ))
            fi

            # get child run/cpu time to set as time for the merge command
            _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.runtimes/log.${nexecHashA[$kk]}" && {
                IFS=$'\t' read -r wTime cTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecHashA[$kk]}"

                # save wall clock time. if endtime is "-" use it + start time to compute the endtime
                (( 10#0${wTime//[^0-9]} > 0 )) && {
                    wTimeA[$kk]="${wTime}"
                    [[ "${endWTimeA[$kk]}" == '-' ]] && {
                        (( endWTime = 10#0${startWTime//[^0-9]/} + 10#0${wTime//[^0-9]/} ))
                        # if endtimes are reasonable save them
                        [[ ${endWTime} ]] && ! [[ "${endWTime}" == '-' ]] && (( endWTime > startWTime )) && endWTimeA[$kk]="${endWTime}"
                    }
                }

                # save cpu time. if endtime is "-"" use it + start time to compute the endtime
                (( 10#0${cTime//[^0-9]} > 0 )) && {
                    cTimeA[$kk]="${cTime}"
                    [[ "${endCTimeA[$kk]}" == '-' ]] && {
                        (( endCTime = 10#0${startCTime//[^0-9]/} + 10#0${cTime//[^0-9]/} ))
                        [[ ${endCTime} ]] && ! [[ "${endCTime}" == '-' ]] && (( endCTime > startCTime )) && endCTimeA[$kk]="${endCTime}"
                    }
                }
            }

        else
            normalCmdFlagA[$kk]=true
            isMergeIndicatorA[$kk]=false
            isBackgroundForkFlagA[$kk]=false
        fi

        # see if we still need to merge up the endtime/runtime from the child log
        [[ "${endWTimeA[$kk]}" == '-' ]] && {

            # if we still dont have a endtime but we have a runtime, assume endtime is starttime + runtime
            (( startWTimeA[$kk] > 0 )) && (( 10#0${wTimeA[$kk]//[^0-9]/} > 0 )) && (( endWTimeA[$kk] = 10#0${startWTimeA[$kk]//[^0-9]/} + 10#0${wTimeA[$kk]//[^0-9]/} ))
            (( startCTimeA[$kk] > 0 )) && (( 10#0${cTimeA[$kk]//[^0-9]/} > 0 )) && (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${cTimeA[$kk]//[^0-9]/} ))

            # if we still dont have a valid end cpu time then assume it took as much cpu time as it took wall-clock time
            ${timep_CLOCK_GETTIME_FLAG} && if { [[ -z ${endCTimeA[$kk]} ]] || [[ "${endCTimeA[$kk]}" == '-' ]]; } &&  [[ ${endWTimeA[$kk]} ]] && ! [[ "${endWTimeA[$kk]}" == '-' ]]; then
                cTimeA[$kk]="${wTimeA[$kk]}"
                (( endCTimeA[$kk] = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} ))
            fi
        }

        # single-command command/process substitutions dont get a endtime logged (uses endWTime='+' as indicator), since they wont trigger a EXIT trap
        # figure out the most reasonable endtime for these lines by looking at starttimes for the parent, then grandparent, etc.
        # to get the closest timestamp that is greater than the starttime for this command and use that as the endtime
        [[ "${endWTimeA[$kk]}" == '+' ]] && {
            (( ${#logA_time[@]} > 0 )) || {
                if [[ -f "${timep_TMPDIR}/.log/.times/${logCur##*\/}" ]]; then
                    logA_time_files=("${timep_TMPDIR}/.log/.times/${logCur##*\/}")
                elif [[ -f "${timep_TMPDIR}/.log/${logCur##*\/}" ]]; then
                    _timep_GET_TIMES "${timep_TMPDIR}/.log/${logCur##*\/}"
                    logA_time_files=("${timep_TMPDIR}/.log/.times/${logCur##*\/}")
                else
                    logA_time_files=()
                fi
                read -r log_tmp <"${timep_TMPDIR}/.log/.hash/${logCur##*\/}"

                while [[ ${log_tmp} ]]; do
                    log_tmp="${log_tmp%.*}"
                    timep_hash - 'log_tmp_hash' <<<"${log_tmp}"

                    if [[ -f "${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}" ]]; then
                        logA_time_files+=("${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}")
                    elif [[ -f "${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}" ]]; then
                        _timep_GET_TIMES "${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}"
                        logA_time_files+=("${timep_TMPDIR}/.log/.times/${logCur##*\/}")
                    fi

                    [[ -f "${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}" ]] && logA_time_files+=("${timep_TMPDIR}/.log/.times/log.${log_tmp_hash}")
                    [[ ${log_tmp//[^.]/} ]] || break
                done

                if (( ${#logA_time_files[@]} > 0 )); then
                    mapfile -t logA_time < <(cat "${logA_time_files[@]}" | sort -g)
                else
                    logA_time=()
                fi
            }

            endWTime=0
            for kk1 in "${!logA_time[@]}"; do
                (( logA_time[$kk1] > startWTimeA[$kk] )) && {
                    endWTime="${logA_time[$kk1]}"
                    break
                }
            done

            # if we still dont have a valid end time, use the global timep endtime
            (( endWTime > startWTimeA[$kk] )) || endWTime="${timep_WTIME_DONE}"

            endWTimeA[$kk]="${endWTime}"

            # get missing cpu time by assuming cpu time and wall time are identical (or, when apppriopiate, ther final ending CTIME)
            (( endCTime = 10#0${startCTimeA[$kk]//[^0-9]/} + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/}  ))
            (( timep_CTIME_DONE > startCTimeA[$kk] )) && (( timep_CTIME_DONE < endCTime )) && endCTime="${timep_CTIME_DONE}"
            endCTimeA[$kk]="${endCTime}"
        }

        [[ "${nPipeA[$kk]//[0-9]}" ]] && nPipeA[$kk]=1

        # merge pipelines commands upward into previous line cmdA
        if ${inPipeFlag} && ! ${isTrapA[$kk]} && (( kk < nlogA )); then
            # we are in a pipeline, but not at the last element
            # override nPipeA and endWTimeA based on the values from the next command and append next command to current cmdA (with `|` in between)
            # note that this makes the $kk corresponding to the 1st pipeline element the one we will log
            (( kk1 = kk + 1 ))
            (( nPipeA[$kk] = nPipeA[$kk1] - 1 ))
            (( isPipeA[$kk] = isPipeA[$kk1] + 1 ))
            [[ ${endWTimeA[$kk1]} ]] && endWTimeA[$kk]="${endWTimeA[$kk1]}"
            [[ ${endCTimeA[$kk1]} ]] && endCTimeA[$kk]="${endCTimeA[$kk1]}"
            ${isMergeIndicatorA[$kk1]} && { isMergeIndicatorA[$kk]=true; mergeA[$kk]+="${mergeA[$kk]:+$'\n'}${mergeA[$kk1]}"; }
            cmdA[$kk]+=" | ${cmdA[$kk1]// \(\&\)/}"
            (( nPipeA[$kk] == 1 )) && inPipeFlag=false
        elif (( 10#0${nPipeA[$kk]//[^0-9]/} > 1 )) && ! ${isTrapA[$kk]} ; then
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

        # compute run wall-clock time from start/end timestamps
        [[ -z ${wTimeA[$kk]//[^0-9]/} ]] && [[ ${endWTimeA[$kk]//[^0-9]/} ]] && [[ ${startWTimeA[$kk]//[^0-9]/} ]]  && {
            if [[ ${startWTimeA[$kk]//[^0-9]/} ]] && (( 10#0${endWTimeA[$kk]//[^0-9]/} > 10#0${startWTimeA[$kk]//[^0-9]/} + ( timep_WTIME_CORRECTION << 1 ) )); then
                # normal case - use end - start - correction
                (( wTimeA[$kk] = 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} - timep_WTIME_CORRECTION ))
            elif [[ ${startWTimeA[$kk]//[^0-9]/} ]] && (( 10#0${endWTimeA[$kk]//[^0-9]/} >= 10#0${startWTimeA[$kk]//[^0-9]/} )); then
                # case where end - start is less than double the correction. Compromise and use (end - start)/2
                 (( wTimeA[$kk] = 1 + ( 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} ) >> 1 ))
            fi
        }

        # compute run cpu time from start/end timestamps
        [[ -z ${cTimeA[$kk]//[^0-9]/} ]] && [[ ${endCTimeA[$kk]//[^0-9]/} ]] && [[ ${startCTimeA[$kk]//[^0-9]/} ]]  && {
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
                startCTimeA[$kk]=0
            fi
        }

        # add times to total wall/cpu time sums
        if (( 10#0${wTimeA[$kk]//[^0-9]/} >= 1 )); then
            # add wall-clock time to total run time sum, unless in pipeline
            ${inPipeFlag} || (( wTimeTotal = wTimeTotal + wTimeA[$kk] ))
        else
             wTimeA[$kk]=1
             ((wTimeTotal++))
        fi
        if (( 10#0${cTimeA[$kk]//[^0-9]/} >= 1 )); then
            # add CPU time to total CPU time sum, unless in pipeline
            ${inPipeFlag} || (( cTimeTotal = cTimeTotal + cTimeA[$kk] ))
        else
            cTimeA[$kk]=1
            ((cTimeTotal++))
        fi

        # add current time to self time sum
        # for background forks to get the total time we need the time taken by the child AND the time it takes the parent to fork the command
        if ${isBackgroundForkFlagA[$kk]}; then
            # current line is a background fork. add time spent in the parent to actually fork the command to both self time and total time
            (( 10#0${endWTimeA[$kk]//[^0-9]/} > 10#0${startWTimeA[$kk]//[^0-9]/} )) && {
                (( wTimeTotal = wTimeTotal + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} ))
                #(( wTimeSelfTotal = wTimeSelfTotal + 10#0${endWTimeA[$kk]//[^0-9]/} - 10#0${startWTimeA[$kk]//[^0-9]/} ))
            }
            (( 10#0${endCTimeA[$kk]//[^0-9]/} > 10#0${startCTimeA[$kk]//[^0-9]/} )) && (( cTimeTotal = cTimeTotal + 10#0${endCTimeA[$kk]//[^0-9]/} - 10#0${startCTimeA[$kk]//[^0-9]/} ))

        elif ${isMergeIndicatorA[$kk]}; then
            # current line is a merge indicator (but not a background fork). add child self time.
            _timep_FILE_EXISTS "${timep_TMPDIR}/.log/.selftimes/log.${nexecHashA[$kk]}" && read -r wTimeSelfChild <"${timep_TMPDIR}/.log/.selftimes/log.${nexecHashA[$kk]}" && (( 10#0${wTimeSelfChild} > 0 )) && (( wTimeSelfTotal = wTimeSelfTotal + 10#0${wTimeSelfChild} ))
        
        else 
            # current line is a standard command. add wall-clock run time
            if (( 10#0${wTimeA[$kk]//[^0-9]/} >= 1 )); then
                ${inPipeFlag} || (( wTimeSelfTotal = wTimeSelfTotal + 10#0${wTimeA[$kk]//[^0-9]/} ))
            elif (( wTimeA[$kk] == 1 )); then
                 ((wTimeSelfTotal++))
            fi
        fi

       ${timep_flameGraphFlag} && ${normalCmdFlagA[$kk]} && ! ${inPipeFlag} && {
           [[ "${startWTimeA[$kk]}" == [0-9]* ]] && [[ -z ${startWTimeA[$kk]//[^0-9]/} ]] && fgStartTime="${startWTimeA[$kk]}"
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
unset "IFS0"
(( ${#eA[@]} > 0 )) && unset "eA[-1]"
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
    (( wTimeSelfTotal = wTimeSelfTotal >= 1 ? wTimeSelfTotal : 1 ))

    # write starttime and runtime and final endtime to .{start,end,run}time file
    printf '%s\t%s\n' "${endWTimeA[-1]}" "${endCTimeA[-1]}" >"${logCur%\/.log\/*}/.log/.endtimes/${logCur##*\/}"
    printf '%s\t%s\n' "${wTimeTotal}" "${cTimeTotal}" >"${logCur%\/.log\/*}/.log/.runtimes/${logCur##*\/}"
    printf '%s\n' "${startWTime0}" >"${logCur%\/.log\/*}/.log/.starttimes/${logCur##*\/}"
    printf '%s\n' "${wTimeSelfTotal}" >"${logCur%\/.log\/*}/.log/.selftimes/${logCur##*\/}"

    # add nesting depth to LINENO's and compute runtime as % of total at this depth and get list of unique lineno's + write out flamegraph stack
    kk1=0
    for kk in "${!logA[@]}"; do

        ${inPipeFlagA[$kk]} && continue

        #  write out flamegraph stack trace line for standard commands
        cmd0="${cmdA[$kk]//\;/\,}"
        cmd0="${cmd0::256}"
        ${normalCmdFlagA[$kk]} && printf '%s%s\t%s\t%s\n' "${fg0}" "${cmd0@Q}" "${wTimeA[$kk]}" "${cTimeA[$kk]}" >>"${logCur%\/*}/out.flamegraph.full.${logDepth}.${fgStartTime}"

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

        printf -v wt '%5.3d' "${wTimePA[$kk]//[^0-9]/}"
        wTimePA[$kk]="${wt:0:3}.${wt:3}"

        printf -v ct '%5.3d' "${cTimePA[$kk]//[^0-9]/}"
        cTimePA[$kk]="${ct:0:3}.${ct:3}"

        # record current nesting depth total time
        wTimeTA[$kk]="${wTimeTotal}"
        cTimeTA[$kk]="${cTimeTotal}"


        if ${isMergeIndicatorA[$kk]}; then
            # cmd0 forms the command part of the merge key
            # remove pid from subshell / bg fork merege indicator to alliow subshells to be merged
            if [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] > 1 )); then
                cmd00="${cmdA[$kk]//<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
                cmd00="${cmd00//<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"
                cmd00="${cmd00//<< \(FUNCTION\): * >>/<< (FUNCTION) >>}"
                cmd00="${cmd00//<< \(CHILD\): *([0-9\-]) >>/<< (CHILD) >>}"
            else
                cmd00="${cmdA[$kk]/#<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
                cmd00="${cmd00/#<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"
                cmd00="${cmd00/#<< \(FUNCTION\): * >>/<< (FUNCTION) >>}"
                cmd00="${cmd00/#<< \(CHILD\): *([0-9\-]) >>/<< (CHILD) >>}"
            fi

            timep_hash - 'cmd0' <<<"${cmd00}"

            # merge up log into kk index vars
            mergeA[$kk]="${mergeA[$kk]//+($'\n')/$'\n'}"
            mergeA[$kk]="${mergeA[$kk]#$'\n'}"
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
                [[ ${mergeCurA[$mergeInd]//[^ $'\t']/} ]] || continue
                IFS=$'\t' read -r tw pw tc pc cnt nd lno cind cmd <<<"${mergeCurA[$mergeInd]/$'\t\t'/$'\t'x$'\t'}"
                { [[ $tw ]] && [[ $pw ]]; } || continue

                # hotfix - check if cmd is empty and if cind has non-numeric chars
                # if so, then cind has the command and should be added to the merge key instead of cmd
                [[ -z ${cmd} ]] && [[ -z ${nd//?(\-)+([0-9]).+([0-9])/} ]] && [[ -z ${lno//+([0-9])\:*( )/} ]] && {
                    cmd="${cind}"
                    cind="${lno}"
                    lno="$nd"
                    nd="x"
                }

                wTimeA[$kk]+=$'\n'"${tw:-1}"
                wTimeTA[$kk]+=$'\n'"${pw:-0}"
                cTimeA[$kk]+=$'\n'"${tc:-1}"
                cTimeTA[$kk]+=$'\n'"${pc:-0}"
                countA[$kk]+=$'\n'"${cnt:-1}"
                linenoA[$kk]+=$'\n'"${lno:-0.0}"
                cmdIndexA[$kk]+=$'\n'"${cind:-0:}        "
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


                # quote and add to merge key
                timep_crc32 - 'cmd00' <<<"${cmd}"
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
        #(( logDepth == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n│'

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
        #(( logDepth <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n│'

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
    for kk in "${!wTimeOutCurA[@]}"; do
        #[[ -z ${isPipeA[$kk]} ]] || (( nPipeA[$kk] == 1 )) || continue

        # add line to log
        #(( kk == 0  )) || printf '\n\n'

        #(( linenoUniqCountA[${linenoUniqA[$kk]}] = linenoUniqCountA[${linenoUniqA[$kk]}] ))

        [[ "${nestDiagramOutCurA[$kk]}" == 'x' ]] && (( logDepth == 0 )) && printf '\n'

        cmd="${cmdOutCurA[$kk]/#<< \(SUBSHELL\): *([0-9\-]) >>/<< (SUBSHELL) >>}"
        cmd="${cmd/#<< \(BACKGROUND FORK\): *([0-9\-]) >>/<< (BACKGROUND FORK) >>}"
        cmd="${cmd/#<< \(CHILD\): *([0-9\-]) >>/<< (CHILD) >>}"

        # write line

        printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "${wTimeOutCurA[$kk]}" "${wTimeOutCurTA[$kk]}" "${cTimeOutCurA[$kk]}" "${cTimeOutCurTA[$kk]}" "${countOutCurA[$kk]}" "${nestDiagramOutCurA[$kk]//x/}" "${linenoOutCurA[$kk]}" "${cmdIndexOutCurA[$kk]}" "${cmd}"

        printf '%s\n' "${timep_TMPDIR}/.needs_merge/${logCur##*\/}" >"${timep_TMPDIR}/.worker/delete/${timep_WORKER_PID}"
        printf '%s\n' "${timep_TMPDIR}/.log/.times/${logCur##*\/}" >>"${timep_TMPDIR}/.worker/delete/${timep_WORKER_PID}"

        (( kk == kkLast )) && break

    done | grep -vE '^[[:space:]]+:[[:space:]]+$' >"${logCur}.out.combined"

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

_timep_GET_TIMES() {
    # produces a list of wall-clock timestamps for a given log and saves it under .log/.times

    local -a logA tStartA tEndA
    local logCur log_tmp_hash log_tmp_hash0 curTries maxTries

    if [[ -z "${1//[0-9]/}" ]] && [[ -f "${timep_LOG_NAME[${1}]}" ]]; then
        logCur="${timep_LOG_NAME[${1}]}"
    elif [[ -f "${1}" ]]; then
        logCur="${1}"
    else
        return 1
    fi

    # pre process current log (integrate + collapse @TRAP indicators, sort by NEXEC) and save, then load into logA
    # copy original raw log into .raw
    \cp -f "${logCur}" "${logCur}.raw"

    curTries=0
    maxTries=16

    # collapse any back-to-back @TRAP indicator lines iunto a single line
    timep_hash "$logCur" log_tmp_hash0
    while true; do
        \mv -f "${logCur}" "${logCur}.tmp"
        sed -zE 's/(^|\n)(@TRAP \([^\n]+\)[^\n]*)\n(@TRAP \([^\n]+\))/\1\2; \3/g' <"${logCur}.tmp" >"${logCur}"
        timep_hash "$logCur" log_tmp_hash
        if [[ "${log_tmp_hash}" == "${log_tmp_hash0}" ]] || (( curTries > maxTries )); then
            break
        else
            log_tmp_hash0="${log_tmp_hash}"
            ((curTries++))
        fi
    done

    \mv -f "${logCur}" "${logCur}.tmp"

    # move @TRAP lines into the cmd of ther next line, then sort by NEXEC
    sed -zE 's/^[0-9]+/1/; s/\n\n+/\n/g; s/\n([^\n]+[ \t]+\:\:[ \t'"'"']+<< \([^\n]+\)\: [^\n]* >>[^\n]*)/'$'\034''\1/g; s/((^|\n)@TRAP \([^\)]+\)\: [^'$'\034'']+)('$'\034''[^\n]+)\n/\3\n\1\n/g; s/'$'\034''/\n/g; s/^@TRAP/'$'\035''\n@TRAP/; s/\n(@TRAP \([^\)\:\n]+\)\: [^\n]*)\n([^\n]+[ \t]+\:\:[ \t]+)[^\n]*/\n\2\1/g; s/^'$'\035''\n//' <"${logCur}.tmp" | grep -vE '1'$'\t''[0-9]+\.[0-9]+'$'\t\t''F:0' | sort -V -k11,11 >"${logCur}"

    \rm "${logCur}.tmp"

    mapfile -t logA <"${logCur}" 

    logA=("${logA[@]#*$'\t'}")
    tStartA=("${logA[@]%%$'\t'*}")
    logA=("${logA[@]#*$'\t'}")
    logA=("${logA[@]#*$'\t'}")
    tEndA=("${logA[@]%%$'\t'*}")

    unset "logA"

#    printf '%s\n' "${tStartA[@]}" "${tEndA[@]}" | grep -vE '^[ \t+\-]*$' | sort -g > "${timep_TMPDIR}/.log/.times/${logCur##*\/}"
    printf '%s\n' "${tStartA[@]}" | grep -vE '[^0-9]' | sort -g > "${timep_TMPDIR}/.log/.times/${logCur##*\/}"

    return 0
}

# # # # # # # # # # # # # # # # POST PROCESSING BEGINS HERE # # # # # # # # # # # # # # # #

# # # # STEP 1: PROCESS LOGS, STARTING AT THE DEEPEST NESTING LVL AND MOVING UPWARDS
#       Logs for each nesting level are processed in parallel, but all logs from
#       a given nesting lvl must finish before moving on to the next nesting lvl

    # get log names
    mapfile -t timep_LOG_NAME < <(find "${timep_TMPDIR}/.log" -maxdepth 1 -name 'log.*' | grep -vE '\.((init_[cs])|(out(\.combined)?)|(raw))$' | sort -V)

    # get nesting lvl for each log
    timep_LOG_NESTING=()
    for kk in "${!timep_LOG_NAME[@]}"; do
        read -r nn1 <"${timep_TMPDIR}/.log/.hash/${timep_LOG_NAME[$kk]##*\/}";
        nn0="${nn1//[^\.]/}";
        timep_LOG_NESTING[${#nn0}]+="${timep_LOG_NAME[${kk}]}"$'\n'
    done

    (( timep_LOG_NESTING_MAX = ${#timep_LOG_NESTING[@]} - 1 ))

    printf '\nCHECKING FOR ORPHANED LOGS\n'
            for (( nest1=timep_LOG_NESTING_MAX; nest1>0; nest1-- )); do
                (( nest0 = nest1 - 1 ))

                mapfile -t logCurA <<<"${timep_LOG_NESTING[${nest1}]%$'\n'}"

                for path1 in "${logCurA[@]}"; do
                    [[ ${path1} ]] || continue
                    # get path/nexec/hash of child log (from last iterations deeper nesting lvl) and parent log ( from current iteration / nesting lvl)
                    hash1="${path1##*\/log.}"
                    [[ -s "${timep_TMPDIR}/.log/.hash/log.${hash1}" ]] || continue
                    IFS='' read -r  nexec1 <"${timep_TMPDIR}/.log/.hash/log.${hash1}"
                    nexec0="${nexec1%.*}"
                    timep_hash - hash0 <<<"${nexec0}"
                    path0="${timep_TMPDIR}/.log/log.${hash0}"
                    #declare -p nest1 path1 hash1 nexec1 nexec0 hash0 path0 nest0 >&2

                    # confirm the parent log has a line containing the child logs nexec
                    { [[ -s "${path0}" ]] && grep -F ' '"${nexec1}"$'\t' "${path0}" | grep -qE '<< \(.*\): .* >>'; } || sed -E 's/^.*\t\:\:\t'[\\"'"']*//' <"${path1}"  | grep -qE '^trap' || {

                        # child nexec not fouund in parent log. build a synthetic <<(BACKGROUND FORK): ___ >> line by (slightly) modifying the 1st log line in the child
                        IFS=$'\t' read -r nPipe startWTime startCTime _ _ func pid nexec lineno _ < <(sort -V -k11,11 <"${path1}" | grep -E '.+' | grep -vE '^@TRAP' | head -n 1)
                        IFS=$'\t' read -r _ _ _ endWTime endCTime _< <(sort -V -k11,11 <"${path1}" | grep -E '.+' | grep -vE '^@TRAP' | tail -n 1)
                        #declare -p nPipe startWTime startCTime func pid nexec lineno >&2
                        ((startWTime--))
                        ((startCTime--))
                        [[ ${endWTime//[^0-9]/} ]] && ((endWTime++))
                        [[ ${endCTime//[^0-9]/} ]] && ((endCTime++))
                        pidN="${pid%% *}"
                        pidN="${pidN#S\:}"
                        ((pidN--))
                        pid="${pid#* }"
                        pidNN="${pid##*.}"
                        pid="${pid%.*}"
                        pid="S:${pidN} ${pid}"
                        nexec="${nexec%% *} ${nexec1}"

                        # add indicator line to parent log
                        printf '\n\nWARNING: ORPHAN LOG DETRECTED -- LOG: log.%s --> log.%s ( NEXEC = %s ) \n\n         TIMEP WILL ATTEMPT TO FIX AUTOMATICALLY\n\n' "${hash1}" "${hash0}" "${nexec1}" >&2
                        [[ $'\n'"${timep_LOG_NESTING[${nest0}]}" == *$'\n'"${path0}"$'\n'* ]] || timep_LOG_NESTING[${nest0}]+="${path0}"$'\n'
                        printf '\n1\t%s\t%s\t%s\t%s\t%s\t%s\t%s %s\t%s\t::\t<< (BACKGROUND FORK): %s >>\n\n' "${startWTime}" "${startCTime}" "${endWTime}" "${endCTime}"  "${func}" "${pid}" "${nexec%% *}" "${nexec1}" "${lineno}" "${pidNN}"  >>"${path0}"
                        printf '%s\n' "${nexec0}" >"${timep_TMPDIR}/.log/.hash/log.${hash0}"
                    }
                done
                read -r -u "${fd_sleep}" -t 0.01 _ || :
            done

    # sort logs in nesting order
    mapfile -t timep_LOG_NAME < <(for kk in "${!timep_LOG_NESTING[@]}"; do sort -uV <<<"${timep_LOG_NESTING[$kk]%$'\n'}"; done)

    # get indicies for each nesting lvl
    mapfile -t timep_LOG_NESTING_IND < <(jj0=0; for kk in "${!timep_LOG_NESTING[@]}"; do mapfile -t A <<<"${timep_LOG_NESTING[$kk]%$'\n'}"; printf '%s\n' "${jj0}"; (( jj0 += ${#A[@]} )); done)

    # use up to num_cpu / 2 + 1 workers
    nCPU="$( { type -p nproc &>/dev/null && nproc; } || grep -cE '^processor.*: ' /proc/cpuinfo; )"
    printf '\nDETECTED %s CPUs\n' "${nCPU}" >&2
    [[ $nCPU ]] || (( nCPU > 0 )) || nCPU=1
    (( nWorkerMax = ( 1 + nCPU ) >> 1 ))
    (( nWorkerMax > ${#timep_LOG_NAME[@]} )) && nWorkerMax=${#timep_LOG_NAME[@]}
    nWorkerMax0=${nWorkerMax}

    timep_LOG_NUM="${#timep_LOG_NAME[@]}"

    # open anonymous pipes for IPC
    exec {timep_fd_logID}<><(:)
    exec {timep_fd_done}<><(:)
    exec {timep_LOCK_FD}<><(:)

    # initialize read lock
    printf '\n' >&${timep_LOCK_FD}

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
while true; do
'
${timep_deleteFlag} && timep_coprocSrc+='    : >"${timep_TMPDIR}/.worker/delete/${BASHPID}"
'
timep_coprocSrc+='    read -r -u "${timep_LOCK_FD}" _
    read -r -u "${timep_fd_logID}" logID
    printf '"'"'\n'"'"' >&${timep_LOCK_FD}
    [[ ${logID} ]] || break
    case "${logID}" in
        \:*)
            logID="${logID#\:}"
            debugFlag=true
        ;;
        *)
            debugFlag=false
        ;;
    esac
    printf '"'"'%s\n'"'"' "${logID}" >"${timep_TMPDIR}/.worker/${BASHPID}"
    if "${debugFlag}"; then
        timep_POSTPROC_DEBUG_FLAG=true timep_WORKER_PID="${BASHPID}" _timep_PROCESS_LOG "${logID}" 2>&${timep_FD2}
    else
        timep_WORKER_PID="${BASHPID}" _timep_PROCESS_LOG "${logID}" 2>&${timep_FD2}
    fi
    exitStatus=$?
    [[ -s "${timep_TMPDIR}/.worker/delete/${BASHPID}" ]] && {
        mapfile -t timep_LOG_DELETE_CUR <"${timep_TMPDIR}/.worker/delete/${BASHPID}"
        (( ${#timep_LOG_DELETE_CUR[@]} > 0 )) && \rm -f "${timep_LOG_DELETE_CUR[@]}"
    }
    if (( exitStatus == 0 )); then
        printf '"'"'%s\n'"'"' "${logID}" >&${timep_fd_done}
    else
        printf -- '"'"'-%s\n'"'"' "${logID}" >&${timep_fd_done}
    fi
    : >"${timep_TMPDIR}/.worker/${BASHPID}"
done
\rm -f "${timep_TMPDIR}/.worker/${BASHPID}"
'

    # loop through logs from deepest nested upwards and run each through post processing function

    # export helper functions
    export -f _timep_EPOCHREALTIME_DIFF
    export -f _timep_EPOCHREALTIME_SUM
    export -f _timep_PERCENT_AVG
    export -f _timep_FILE_EXISTS
    export -f _timep_NUM_RUNNING
    export -f _timep_PROCESS_LOG
    export -f _timep_DEBUG_PRINTVARS
    export -f _timep_GET_TIMES

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # set traps to kill workers on SIGINT / EXIT
    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"' EXIT
    trap 'kill -15 "${pAll_PID[@]}"; sleep 1; kill -9 "${pAll_PID[@]}"; trap - SIGINT; kill -INT ${BASHPID}' INT

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    printf '\n\nEXTRACTING TIMES\n'

    nID=0
    indA=()
    for (( kk=timep_LOG_NUM-1; kk>=0; kk-- )); do
        indA[$nID]+=" ${kk} "
        ((nID++))
        (( nID == nWorkerMax0 )) && nID=0
    done

    pAll_PID=()
    for (( nID=0; nID<nWorkerMax0; nID++)); do
        eval "{
            for kk in ${indA[$nID]}; do
                _timep_GET_TIMES "\$kk"
            done
        } &"
        pAll_PID+=($!)
    done
    wait "${pAll_PID[@]}"

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    printf '\n\n\nBEGINNING MAIN LOG PROCESSING LOOP\n'

    # initialize variables
    (( kk = timep_LOG_NUM - 1 ))
    jj=0
    nWorker=1
    kkNeed=( $(eval "printf '%s ' {0..${kk}}") )
    nRetryMax0=20
    nFailedMax0=30
    nActive=0
    kkNeedCurLast=()

    export timep_LOG_NESTING_MAX="${timep_LOG_NESTING_MAX}"

    # spawn coproc workers
    eval '{ coproc p0 {
'"${timep_coprocSrc}"'
} 2>&${timep_FD2}
} 2>/dev/null
pAll_PID=("${p0_PID}")'

    # BEGIN LOOP OVER NESTING LVL (DEEPEST TO SHALLOWEST)

    for (( timep_LOG_NESTING_CUR=${#timep_LOG_NESTING_IND[@]}-1; timep_LOG_NESTING_CUR>=0; timep_LOG_NESTING_CUR-- )); do
        export timep_LOG_NESTING_CUR="${timep_LOG_NESTING_CUR}"

        # get lowest log index for this nesting lvl
        kkMin="${timep_LOG_NESTING_IND[${timep_LOG_NESTING_CUR}]}"

        (( kkDiff = kk - kkMin + 1 ))

        kkNeedCur=("${kkNeed[@]:${kkMin}}")

        # write ID's of logs to process (for current nesting lvl) to work queue pipe
        # writer is a background process to prevent deadlock
        {
            for kk1 in "${kkNeedCur[@]}"; do
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
        needsCheckFlag=true

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
                        read -r -u "${fd_sleep}" -t 0.01 _ || :
                        printf '%s: %s\n' "$kkErr" "${timep_LOG_NAME[$kkErr]}" >&2
                    done
                    printf '\nABORTING!' >&2
                    _timep_DEBUG_PRINTVARS
                    return 3
                }
            fi
        done

        # delete logs we are done with
        if (( timep_LOG_NESTING_CUR < timep_LOG_NESTING_MAX )) && ${timep_deleteFlag} && (( ${#kkNeedCurLast[@]} > 0 )); then
            for kkDel in "${kkNeedCurLast[@]}"; do
                [[ -f "${timep_LOG_NAME[$kkDel]}.out" ]] && \rm -f "${timep_LOG_NAME[$kkDel]}.out"
                [[ -f "${timep_LOG_NAME[$kkDel]}.out.combined" ]] && \rm -f "${timep_LOG_NAME[$kkDel]}.out.combined"
            done
        fi

        kkNeedCurLast=("${kkNeedCur[@]}")
        timep_LOG_NESTING_LAST="${timep_LOG_NESTING_CUR}"

        read -r -u "${fd_sleep}" -t 0.1 _ || :
    done

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
    exec {timep_LOCK_FD}>&-

    read -r -u "${fd_sleep}" -t 0.01 _ || :
    #trap 'echo "ERROR @ ($LINENO): $BASH_COMMAND" >&2; _timep_DEBUG_PRINTVARS >&2' ERR

    if [[ -f "${timep_LOG_NESTING[0]%$'\n'}" ]]; then
        timep_LOG_MAIN="${timep_LOG_NESTING[0]%$'\n'}"
    elif [[ -f "${timep_LOG_NESTING[1]%$'\n'}" ]]; then
        timep_LOG_MAIN="${timep_LOG_NESTING[1]%$'\n'}"
    fi

    # add in any logs that didnt get merged all thge way up to the top lvl. this way at least they arent entirely missing...
#    [[ -f "${timep_TMPDIR}/.log/.hash/${timep_LOG_MAIN##*\/}" ]] && \rm "${timep_TMPDIR}/.log/.hash/${timep_LOG_MAIN##*\/}"
#    for nn in "${timep_TMPDIR}"/.log/.hash/*; do
#        printf '\n\n%s\n' "$(<"${nn}")" >>"${timep_TMPDIR}/.log/.hash/${timep_LOG_NAME[$kk]##*\/}"
#    done

    printf '\n\nFINALIZING OUTPUTS\n' >&2
    printf '\nGETTING TOTAL TIMES (+%s)\n' "${SECONDS}" >&2
    printf '\n\n' >>"${timep_LOG_MAIN}.out"
    printf '\n\n' >>"${timep_LOG_MAIN}.out.combined"

    for nn in "${timep_TMPDIR}"/.log/.runtimes/log.*; do
        IFS=$'\t' read -r timep_wTimeCur timep_cTimeCur <"${nn}"
        read -r timep_wTimeSelfTotalCur <"${timep_TMPDIR}/.log/.selftimes/${nn##*\/}"

        printf -v timep_wTimeCur '%0.7d' "${timep_wTimeCur}"
        (( d6 = ${#timep_wTimeCur} - 6 ))
        printf -v timep_wTimeCur '%s.%s' "${timep_wTimeCur:0:${d6}}" "${timep_wTimeCur:${d6}}"

        printf -v timep_cTimeCur '%0.7d' "${timep_cTimeCur}"
        (( d6 = ${#timep_cTimeCur} - 6 ))
        printf -v timep_cTimeCur '%s.%s' "${timep_cTimeCur:0:${d6}}" "${timep_cTimeCur:${d6}}"

        printf -v timep_wTimeSelfTotalCur '%0.7d' "${timep_wTimeSelfTotalCur}"
        (( d6 = ${#timep_wTimeSelfTotalCur} - 6 ))
        printf -v timep_wTimeSelfTotalCur '%s.%s' "${timep_wTimeSelfTotalCur:0:${d6}}" "${timep_wTimeSelfTotalCur:${d6}}"

        printf -v logFooter '\n\nWALL CLOCK TIME: %ss\nTOTAL RUN TIME:  %ss\nTOTAL CPU TIME:  %ss\n' "${timep_wTimeSelfTotalCur}" "${timep_wTimeCur}" "${timep_cTimeCur}"

        printf '%s\n' "${logFooter}" >>"${nn//\/.log\/.runtimes\//\/.log\/}.out"
        printf '%s\n' "${logFooter}" >>"${nn//\/.log\/.runtimes\//\/.log\/}.out.combined"
    done

    read -r -u "${fd_sleep}" -t 0.01 _ || :

    # if '--flame' flag given create flamegraphs
    ${timep_flameGraphFlag} && {
        {
            # reverse flamegraph input so it starts at the parent and ends at the depest child
            printf '\nREORDERING FLAMEGRAPH INPUTS (+%s)\n' "${SECONDS}"  >&2
            mapfile -t -d '' flameGraphLogA < <(printf '%s\0' "${timep_TMPDIR}"/.log/out.flamegraph.full.* | sort -zV)
            for nn in "${flameGraphLogA[@]}"; do
                cat "$nn" >>"${timep_TMPDIR}/.log/out.flamegraph.full"
            done

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

            printf '\nGENERATING FLAMEGRAPHS (+%s)\n' "${SECONDS}"  >&2

            # FUTURE TO-DO: investigate the possiblity of making each frame's height non-uniform and instead based on another (3rd) orthogonal data source

            { [[ ${timep_flameGraphPath} ]] && [[ -e ${timep_flameGraphPath} ]]; } || if type -p "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep_flamegraph.pl" &>/dev/null; then
                timep_flameGraphPath="${timep_TMPDIR0}/lib/${USER}-${EUID}/timep_flamegraph.pl"
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

                export -f _timep_COMBINE_FLAMEGRAPH
                {
                    # dual-stack flamegraphs
                    printf '\nGENERATING (4x) DUAL-STACK FLAMEGRAPHS\n\n' >&2
                    {
                        svgCombineInd=0
                        _timep_COMBINE_FLAMEGRAPH --type="f" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    {
                        svgCombineInd=1
                        _timep_COMBINE_FLAMEGRAPH --type="F" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    {
                        svgCombineInd=2
                        _timep_COMBINE_FLAMEGRAPH --type="w" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.folded.svg"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    {
                        svgCombineInd=3
                        _timep_COMBINE_FLAMEGRAPH --type="c" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.full.R.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    wait

                    # quad-stack flamegraphs
                    printf '\nGENERATING (2x) QUAD-STACK FLAMEGRAPHS\n\n' >&2
                    {
                        svgCombineInd=4
                        _timep_COMBINE_FLAMEGRAPH --type="fF" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.folded.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.full.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    {
                        svgCombineInd=5
                       _timep_COMBINE_FLAMEGRAPH --type="wc"  "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.wall.svg" "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.cpu.svg" >"${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.R.svg" 2>&${fg_fd2}
                        printf '\rFLAMEGRAPH #%s COMPLETE! (+%s)\n' "${svgCombineInd}" "${SECONDS}"  >&2
                    } &
                    wait

                } {fg_fd2}>&2

                exec {fg_fd2}>&-

                type -p ln &>/dev/null && {
                    ln "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.svg" "${timep_TMPDIR}/profiles/flamegraph.ALL.svg"
                    ln "${timep_TMPDIR}/profiles/flamegraphs/flamegraph.ALL.R.svg" "${timep_TMPDIR}/profiles/flamegraph.ALL.R.svg"
                }

                printf '...DONE!\n' >&2
            }
        } &
        timep_flamegraphPID="$!"
    }

    read -r -u "${fd_sleep}" -t 0.01 _ || :

     # copy out.profiles, removing unneeded extra bit on last line of profile (but before the "TOTAL RUNTIME" line
    sed -zE 's/\n\│  ([^\n]+)\n│(\n\n+WALL CLOCK TIME)/\n\└─ \1\2/' <"${timep_LOG_MAIN}.out" >"${timep_TMPDIR}/profiles/out.profile.full"
    sed -zE 's/\n\n\n+/\n\x00/g; s/\n\n/\n/g; s/(\n([0-9]+\t){5})\t/\1/g' <"${timep_LOG_MAIN}.out.combined"  >"${timep_TMPDIR}/profiles/out.profile";

    # get total runtime
    IFS=$'\t' read -r timep_wtimeALL timep_ctimeALL <"${timep_TMPDIR}/.log/.runtimes/${timep_LOG_MAIN##*/}"
    ((timep_wtimeALL = 10#0${timep_wtimeALL//[^0-9]/}))
    ((timep_ctimeALL = 10#0${timep_ctimeALL//[^0-9]/}))

    printf -v timep_wtimeALL0 '%0.7d' "${timep_wtimeALL}"
    (( d6 = ${#timep_wtimeALL0} - 6 ))
    printf -v timep_wtimeALL0 '%s.%s' "${timep_wtimeALL0:0:${d6}}" "${timep_wtimeALL0:${d6}}"
    printf -v timep_ctimeALL0 '%0.7d'  "${timep_ctimeALL}"
    (( d6 = ${#timep_ctimeALL0} - 6 ))
    printf -v timep_ctimeALL0 '%s.%s' "${timep_ctimeALL0:0:${d6}}" "${timep_ctimeALL0:${d6}}"

    read -r timep_wtimeSelfALL <"${timep_TMPDIR}/.log/.selftimes/${timep_LOG_MAIN##*/}"
    ((timep_wtimeSelfALL = 10#0${timep_wtimeSelfALL//[^0-9]/}))

    (( timep_wtimeSelfALL > timep_WTIME_DONE - timep_WTIME_START )) && (( timep_wtimeSelfALL = timep_WTIME_DONE - timep_WTIME_START ))
    (( timep_wtimeSelfALL > timep_wtimeALL )) && timep_wtimeSelfALL="${timep_wtimeALL}"

    printf -v timep_wtimeSelfALL0 '%0.7d' "${timep_wtimeSelfALL}"
    (( d6 = ${#timep_wtimeSelfALL0} - 6 ))
    printf -v timep_wtimeSelfALL0 '%s.%s' "${timep_wtimeSelfALL0:0:${d6}}" "${timep_wtimeSelfALL0:${d6}}"

    printf -v logFooter '\n\nWALL CLOCK TIME: %ss\nTOTAL RUN TIME:  %ss\nTOTAL CPU TIME:  %ss\n' "${timep_wtimeSelfALL0}" "${timep_wtimeALL0}" "${timep_ctimeALL0}"
    spacerN=16

    # add another percentage showing "percent of total runtime" to final outputs
    printf '\nGENERATING FINAL PROFILE OUTPUTS (+%s)\n' "${SECONDS}"  >&2

    (( spacerN0 = spacerN > 16 ? spacerN - 16 : 0 ))
    (( spacerNN = spacerN - 1 ))

    logPathCur="${timep_TMPDIR}/profiles/out.profile"

        # split lines into start, time, percent, endr
        logHeader="$(printf -v headerTXT 'LINE_DEPTH_CMD_%'"${spacerN0}"'.s\tCOMBINED_WALL-CLOCK_TIME_____     COMBINED_CPU_TIME____________   \tCOMMAND_____________________________' ''
            printf '%s\nline.depth.cmd:%'"${spacerN0}"'.s\t( time | total %% | cur depth %% )  ( time | total %% | cur depth %% )   \t(count) <command>\n%s\n\n' "${headerTXT//_/ }" '' "${headerTXT//[^$'\t']/_}")"
        #logFooter="$(sed -E s/'\x00'// <"${logPathCur}" |  grep -E '^TOTAL')"
        logCurTmp="$( {

             while IFS='' read -r lineOrig; do
                [[ ${lineOrig// /} ]] || continue
                IFS=$'\t' read -r tw Tw tc Tc cnt nd lno cind cmd <<<"${lineOrig}"
                nd="${nd//x/}"
                { [[ $tw ]] && [[ $Tw ]] && [[ $tc ]] && [[ $Tc ]] && [[ $cnt ]]; } || {
                    # this is a blank/seperator line. re-print it unmodified
                    printf '%s\n' "${lineOrig}"
                    continue
                }

                # hotfix - check if cmd is empty and if cind has non-numeric chars
                # if so, then cind has the command and should be added to the merge key instead of cmd
                [[ -z ${cmd} ]] && [[ -z ${nd//?(\-)+([0-9]).+([0-9])/} ]] && [[ -z ${lno//+([0-9])\:*( )/} ]] && {
                    cmd="${cind}"
                    cind="${lno}"
                    lno="$nd"
                    nd=""
                }
                #declare -p tw Tw tc Tc cnt nd lno cind cmd >&2

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

                depthCur="${lno#*.}"
                depthCur="${depthCur//[^0-9]/}"
                : "${depthCur:=0}"
                (( depthCur < 0 )) && depthCur=0

                #(( ${lno%.*} < 0 )) && lno="0.${depthCur}"

                a0="${lno}.${cind%%:*}:"

                a00="${nd}${nd:+ }${a0%%?( )?(-)?("'")[0-9\.]*}";

                #[[ "${timep_runType}" == 'f' ]] && {
                #    a00="${a00#*+([─├│└])+( )}"
                    [[ "${a0}" == [├└]─* ]] && a00="${a00#[├└]─}"
                #}

                a000="${a0##*([^0-9\.\-])}"

                (( spacerN0 = spacerN - ${#a000} ))

                #{ echo; declare -p tw Tw tc Tc cnt nd lno cind cmd a0 a00 a000 spacerN0; echo; } >&2

                #[[ "${timep_runType}" == 'f' ]] && {
                #    [[ ${a00} ]] || printf '│\n'$'\034'
                #}

                #if  { { [[ "${timep_runType}" == 'f' ]] && (( depthCur <= 1 )); } || (( depthCur == 0 )); } 
                if (( depthCur == 0 )) && { [[ ${pw##*( )} == '0.00' ]] || [[ "${pw##*( )}" == "${p1w##*( )}" ]]; } &&  { [[ ${pc##*( )} == '0.00' ]] || [[ "${pc##*( )}" == "${p1c##*( )}" ]]; }; then
                    printf '%s%'"${spacerN0}"'.0s \t( %ss |%s%% )            ( %ss |%s%% )             \t(%sx)\t%s%s\n' "${a0}" '' "${tw}"  "${pw}" "${tc}" "${pc}" "${cnt}" "${a00}" "${cmd}"
                else
                    printf '%s%'"${spacerN0}"'.0s \t( %ss |%s%% |%s%% )   ( %ss |%s%% |%s%% )    \t(%sx)\t%s%s\n' "${a0}" '' "${tw}" "${p1w}" "${pw}" "${tc}" "${p1c}" "${pc}" "${cnt}" "${a00}" "${cmd}"
                fi

            done <"${logPathCur}"
        } | sed -zE 's/\nWALL CLOCK TIME\: .*$/\n\n/; s/[ \t]*\n/\n/g')"

        # resort the final output by lineno. keep records together by using sort -z and adding NULs between records. for functions temporairly relocate the box drawing characters to the endof the line, then sort, then move them back.
        #if [[ "${timep_runType}" == 'f' ]]; then
        #    mapfile -t -d '' logOut < <(sed -E s/'^([^0-9][^0-9]?[^0-9]?)(.*)?$/\2'$'\034''\1/; s/^[^0-9 ]{,3}$/\x00/' <<<"${logCurTmp%%$'\n'TOTAL RUN*}" | sort -z -V -k1,1 | sed -E 's/^[^0-9 ]{,3}$/│/; s/^(.*)'$'\034''(.*)$/\2\1/; s/^\└─/│ /; ' | sed -zE 's/\n. ([^\n]+)\n.$/\n└─\1/; s/^.\n//; s/\n.\n/\n/')
        #else
        #    mapfile -t -d '' logOut < <(sed -zE 's/\n\n([0-9]+\.[0-9]+\.[0-9]+:)/'$'\x00''\1/g' <<<"${logCurTmp%%$'\n'TOTAL RUN TIME:*}"  | sort -z -V -k1,1 | sed -zE 's/\n\n/\n\n\x00/g')
        #fi
        mapfile -t -d '' logOut < <(sed -zE 's/^[ \t\n]*//; s/\n[ \t]*\n(\[0-9]+\.[0-9]+\.[0-9]+:)/\x00\1/g; s/((^\n?)|(\n\n))\-([^\n]+)/\1\4'$'\035''-/g; s/('$'\035''-)(\n\n)/\1\x00\2/g' <<<"${logCurTmp}" | sort -z -V -k1,1 | sed -zE 's/^/\n\n\x00/g; s/\n([^\n]+)'$'\035''\-\n/\n\-\1\n/g')

        logOutL=("${logOut[@]%%\.*}")
        logOutLL=("${logOutL[@]:1}")
        for (( kk=0; kk<${#logOut[@]}-2; kk++ )); do
            [[ "${logOutL[$kk]}" == "${logOutLL[$kk]}" ]] || logOut[$kk]+=$'\n'
        done
        logOut[-1]=$'\n\n'"${logOut[-1]}"

        logOutF0="$({
            echo "${logHeader}";
            #if [[ "${timep_runType}" == 'f' ]]; then
            #    printf '%s' "${logOut[@]}" #| sed -zE 's/\n\n/\n\x00/g; s/^(.*)'$'\034''([^'$'\034'']+)$/\2\1\n/g'
            #else
                printf '%s' "${logOut[@]#$'\n'}"
            #fi
            printf '\n%s\n' "${logFooter}"
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
        # combine blocks from the same line number
        # for functions - add in space between top lvl commands inside the function
        {
            #if [[ "${timep_runType}" == 'f' ]]; then
            #    sed -zE 's/\(\&\)[ \t]*(\n([^\n]*[^\(][^\^][^\)\n][ \t]*\n)*[^\n]*)[ \t]*\(\^\)[ \t]*/\1/g' <<<"${logOutF}" | sed -E 's/^( *)([├│└][ ─]*)*//; s/^(-?[0-9\.]+: *) \t[ \t]*(\([^\)]+\)[ \t]+\([^\)]+\)[ \t]+)(\([0-9\+x\)[ \t]+.*)$/\1\2\3/; s/^│[ \t]*$//' | sed -zE 's/\n([ \t]*\n)+/\x00/g' | { read -r -d '' line; printf '%s\n' "${line}"; ln0="${line%%.*}"; while IFS='' read -r -d '' line; do ln1="${line%%.*}"; [[ "$ln0" == "$ln1" ]] || printf '\n'; { [[ "${line}" == WALL* ]] || [[ "${line}" == TOTAL* ]]; } && printf '\n'; ln0="${ln1}"; printf '%s\n' "${line}"; done; } | { lll=false; while IFS='' read -r l; do ll="${l#*\)*\)*\)    }"; if [[ "$ll" == '<<'* ]] || [[ "$ll" == '│   <<'* ]]; then ${lll} && echo '@@@@@'; lll=true; echo; else lll=false; fi; echo "$l"; done; } | sed -zE s/'\n@@@@@\n'/\n/g
            #else
                sed -zE 's/\(\&\)[ \t]*(\n([^\n]*[^\(][^\^][^\)\n][ \t]*\n)*[^\n]*)[ \t]*\(\^\)[ \t]*/\1/g' <<<"${logOutF}" | sed -E 's/^( *)([├│└][ ─]*)*//; s/^(-?[0-9\.]+: *) \t[ \t]*(\([^\)]+\)[ \t]+\([^\)]+\)[ \t]+)(\([0-9\+x\)[ \t]+.*)$/\1\2\3/; s/^│[ \t]*$//' | sed -zE 's/\n([ \t]*\n)+/\x00/g' | { read -r -d '' line; printf '%s\n' "${line}"; ln0="${line%%.*}"; while IFS='' read -r -d '' line; do ln1="${line%%.*}"; [[ "$ln0" == "$ln1" ]] || printf '\n'; { [[ "${line}" == WALL* ]] || [[ "${line}" == TOTAL* ]]; } && printf '\n'; ln0="${ln1}"; printf '%s\n' "${line}"; done; } | sed -zE s/'\n\n([0-9\-])/\x00\1/g' | sort -n -t. -z -k1,1 | { read -r -d '' l; if [[ "${l}" == [0-9\-]* ]]; then l0="${l%%.*}"; else l0=''; fi; echo "$l"; while read -r -d '' l; do if [[ "${l}" == [0-9\-]* ]]; then l1="${l%%.*}"; else l1=''; fi; { [[ $l0 ]] && [[ $l1 ]] && [[ "$l0" == "$l1" ]]; } || echo; echo "$l"; l0="$l1"; done; }
            echo "${logFooter}"
        } | sed -zE 's/^\n*//; s/\n\n\n+/\n\n/g; s/\(\&\)[ \t]*(\n([^\n]*[^\(][^\^][^\)\n][ \t]*\n)*[^\n]*)[ \t]*\(\^\)[ \t]*/\1/g; s/\(\^\)[ \t]*\n/\n/g' >"${logPathCur}"

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

    done <"${logPathCur}"
    printf '\n%s\n' "${logFooter}")"

    echo "${logCurTmp}" >"${logPathCur}"

    # If there are corrections add the .corrections.pid file into the profiles folder
    [[ -s "${timep_TMPDIR}/.corrections.pid" ]] && \cp "${timep_TMPDIR}/.corrections.pid" "${timep_TMPDIR}/profiles"

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

    # wait for flamegraphs to finish being created (if needed)
    ${timep_flameGraphFlag} && {
        [[ -d "/proc/${timep_flamegraphPID}" ]] && printf '\n\nTHE TIME PROFILES FOR THE PROFILED CODE HAVE BEEN CREATED SUCESSFULLY!!!!\nWAITING FOR THE PROCESS THAT CREATES THE FLAMEGRAPHS TO FINISH RUNNING...\n\n' >&2
        wait "${timep_flamegraphPID}"
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

_timep_GET_TMPDIR0() {
# figure out where to setup a tmpdir to use (prefferably on a ramdisk/tmpfs)

    local -gx timep_TMPDIR0

    [[ ${timep_TMPDIR0} ]] && [[ -d "${timep_TMPDIR0}" ]] && return 0

    if [[ ${TIMEP_TMPDIR} ]]; then
        timep_TMPDIR0="${TIMEP_TMPDIR%\/*}"
        export -n TIMEP_TMPDIR
        unset TIMEP_TMPDIR
        mkdir --mode=1777 -p "${timep_TMPDIR0}"
    else
         timep_TMPDIR0=''
    fi

    # try /dev/shm
    [[ -z "${timep_TMPDIR0}" ]] && [[ -d /dev/shm ]] && {
        timep_TMPDIR0="/dev/shm/.timep"
        mkdir --mode=1777 -p "${timep_TMPDIR0}" &>/dev/null && return 0 || timep_TMPDIR0=''
    }

    # try $TMPDIR, if set
    [[ -z "${timep_TMPDIR0}" ]] && [[ "${TMPDIR}" ]] && {
        timep_TMPDIR0="${TMPDIR}/.timep"
        mkdir --mode=1777 -p "${timep_TMPDIR0}" &>/dev/null && return 0 || timep_TMPDIR0=''
    }

    # try /tmp
    [[ "${timep_TMPDIR0}" ]] || {
        timep_TMPDIR0="/tmp/.timep"
        mkdir --mode=1777 -p "${timep_TMPDIR0}" &>/dev/null && return 0 || timep_TMPDIR0=''
    }

    # try $PWD
    [[ "${timep_TMPDIR0}" ]] || {
        timep_TMPDIR0="${PWD}/.timep"
        mkdir --mode=1777 -p "${timep_TMPDIR0}" &>/dev/null && return 0 || timep_TMPDIR0=''
    }

    # ABORT if we couldnt get a writable TMPDIR
     [[ "${timep_TMPDIR0}" ]] || {
         printf '\nERROR: could not create a tmpdir under /dev/shm nor /tmp nor PWD (%s). \nPlease ensure you have requisite write permissions in one of these directories. ABORTING\n\n' "${PWD}"
         return 1
    }
}

_timep_SETUP() {
    local -a filePathA
    local ARCH t tt k kk timep_git_branch outDir filePath fileCur downloadFlag localFlag gotFlamegraphFlag gotLoadableFlag b b0 doneFlag extglobState

    { [[ ${timep_TMPDIR0} ]] && [[ -d "${timep_TMPDIR0}" ]]; } || _timep_GET_TMPDIR0

    if shopt extglob &>/dev/null; then
        extglobState='-s'
    else
        extglobState='-u'
    fi
    shopt -s extglob

    [[ "${FUNCNAME[1]}" == 'timep' ]] || local timep_flameGraphPath

    downloadFlag=false
    localFlag=false

    forceFlag=false
    outDir="${timep_TMPDIR0}/lib/${USER}-${EUID}"

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
    mkdir --mode=1777 -p "${timep_TMPDIR0}"
    mkdir --mode=1777 -p "${timep_TMPDIR0}/lib"
    mkdir --mode=700 -p "${outDir}"

    # add to PATH and BASH_LOADABLES_PATH
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH//\:${outDir}?(\/):/:}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH#${outDir}?(\/)?(:)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH%?(\:)${outDir}?(\/)}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}${BASH_LOADABLES_PATH:+:}${outDir}"
    BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH//+(\:)/\:}"
    export BASH_LOADABLES_PATH="${BASH_LOADABLES_PATH}"

    PATH="${PATH//\:${outDir}?(\/):/:}"
    PATH="${PATH#${outDir}?(\/)?(:)}"
    PATH="${PATH%?(\:)${outDir}?(\/)}"
    PATH="${PATH}${PATH:+:}${outDir}"
    PATH="${PATH//+(\:)/\:}"
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

    ! ${forceFlag} && ${gotLoadableFlag} || { enable -a getCPUtime &>/dev/null && enable -a timep_crc32 &>/dev/null && enable -a timep_fnv1a &>/dev/null && enable -a timep_hash &>/dev/null && gotLoadableFlag=true; }

    if ${forceFlag} || ! { ${gotFlamegraphFlag} && ${gotLoadableFlag}; }; then
        # use the versions built into theis time.bash file

        # note: this base64 binary blob is generatred by using _timep_base64_to_file  on the arch-specific compiled shared .so file for the builtin.
        # passing this blob to the stdin of _timep_base64_to_file <path> will restore the original .so file (needed for the loadable builtin to get cpu time with getCPUtime) at <path>.
        # the .so file, source code and compile instructions are all available in the "timep" repo on github (https://github.com/jkool702/timep) at LOADABLES/SRC/timep.c.
        # The compiled .so file that this binary blob re-creates is avaiilable in the repo at LIB/LOADABLES/BIN/$ARCH/timep.so. timep_flamegraph is available at LIB/timep_flamegraph.so.
        # Note: these base64 blobs have been compressed. The information needed to decompress them is built into the start of the blob, as are the sha256 and md5 checksums for the original .so file

        { ! ${forceFlag} && ${gotLoadableFlag}; } || BASH_ENV='' "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

        { ! ${forceFlag} && ${gotFlamegraphFlag}; } || BASH_ENV='' "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"
        chmod +x "${outDir}"/timep{.so,_flamegraph.pl}

        enable -f "${outDir}/timep.so" getCPUtime timep_crc32 timep_fnv1a timep_hash
    fi

     shopt ${extglobState} extglob
     return 0
}


_timep_base64_to_file() {
    local b b0 b1 k kk fd0 fd1 out0 out outC outN outF outB outFile nnSum noVerifyFlag doneFlag IFS extglobState
    local -a compressV compressI outA
    local -x LC_ALL=C

    # parse options
    if shopt extglob &>/dev/null; then
        extglobState='-s'
    else
        extglobState='-u'
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

    { (( ${#FUNCNAME[@]} > 1 )) && [[ "${FUNCNAME[1]}" == 'timep' ]]; } || shopt ${extglobState} extglob
}


_timep_file_to_base64() {

    local nn kk kk0 k1 k2 out out0 outF outN v1 v2 nnSum hexProg quoteFlag noCompressFlag IFS IFS0

    local -a charmap compressI compressV outA nnSumA
    local -x LC_ALL=C

    if shopt extglob &>/dev/null; then
        extglobState='-s'
    else
        extglobState='-u'
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

_timep_GET_TMPDIR0

mkdir --mode=1777 -p "${timep_TMPDIR0}"
mkdir --mode=1777 -p "${timep_TMPDIR0}/lib"
mkdir --mode=700 -p "${timep_TMPDIR0}/lib/${USER}-${EUID}"

[[ -f "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash" ]] && chmod +w "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"
[[ -f "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash" ]] && chmod +w "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

cat<<'EEEOOOFFF' >"${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"
#!/usr/bin/env bash

# regenerate timep_flamegraph.pl
printf '%s' $'#!/usr/bin/perl -w\n\nuse strict;\n\nuse Getopt::Long;\n\nuse open qw(:std :utf8);\n\nmy $encoding;\nmy $fonttype = "Verdana";\nmy $imagewidth = 1200;          # max width, pixels\nmy $frameheight = 16;           # max height is dynamic\nmy $fontsize = 12;              # base text size\nmy $fontwidth = 0.59;           # avg width relative to fontsize\nmy $minwidth = 0.1;             # min function width, pixels or percentage of time\nmy $nametype = "Function:";     # what are the names in the data?\nmy $countname = "samples";      # what are the counts in the data?\nmy $colors = "hot";             # color theme\nmy $bgcolors = "";              # background color theme\nmy $nameattrfile;               # file holding function attributes\nmy $timemax;                    # (override the) sum of the counts\nmy $factor = 1;                 # factor to scale counts by\nmy $hash = 0;                   # color by function name\nmy $rand = 0;                   # color randomly\nmy $palette = 0;                # if we use consistent palettes (default off)\nmy %palette_map;                # palette map hash\nmy $pal_file = "palette.map";   # palette map file name\nmy $stackreverse = 0;           # reverse stack order, switching merge end\nmy $inverted = 0;               # icicle graph\nmy $flamechart = 0;             # produce a flame chart (sort by time, do not merge stacks)\nmy $negate = 0;                 # switch differential hues\nmy $colortime;                                  # maps primary (v1) color channel to index defined in the stack traces\nmy $titletext = "";             # centered heading\nmy $titledefault = "Flame Graph";       # overwritten by --title\nmy $titleinverted = "Icicle Graph";     #   "    "\nmy $searchcolor = "rgb(230,0,230)";     # color for search highlighting\nmy $notestext = "";             # embedded notes in SVG\nmy $subtitletext = "";          # second level title (optional)\nmy $help = 0;\n\nsub usage {\n        die <<USAGE_END;\nUSAGE: $0 [options] infile > outfile.svg\\n\n        --title TEXT     # change title text\n        --subtitle TEXT  # second level title (optional)\n        --width NUM      # width of image (default 1200)\n        --height NUM     # height of each frame (default 16)\n        --minwidth NUM   # omit smaller functions. In pixels or use "%" for\n        --fonttype FONT  # font type (default "Verdana")\n        --fontsize NUM   # font size (default 12)\n        --countname TEXT # count type label (default "samples")\n        --nametype TEXT  # name type label (default "Function:")\n        --colors PALETTE # set color palette. choices are: hot (default), mem,\n        --bgcolors COLOR # set background colors. gradient choices are yellow\n        --hash           # colors are keyed by function name hash\n        --random         # colors are randomly generated\n        --time           # colors are determined from sample counts (time spent per-function)\n        --cp             # use consistent palette (palette.map)\n        --reverse        # generate stack-reversed flame graph\n        --inverted       # icicle graph\n        --flamechart     # produce a flame chart (sort by time, do not merge stacks)\n        --negate         # switch differential hues (blue<->red)\n        --notes TEXT     # add notes comment in SVG (for debugging)\n        --help           # this message\n\n        eg,\n        $0 --title="Flame Graph: malloc()" trace.txt > graph.svg\nUSAGE_END\n}\n\nGetOptions(\n        \'fonttype=s\'  => \\$fonttype,\n        \'width=i\'     => \\$imagewidth,\n        \'height=i\'    => \\$frameheight,\n        \'encoding=s\'  => \\$encoding,\n        \'fontsize=f\'  => \\$fontsize,\n        \'fontwidth=f\' => \\$fontwidth,\n        \'minwidth=s\'  => \\$minwidth,\n        \'title=s\'     => \\$titletext,\n        \'subtitle=s\'  => \\$subtitletext,\n        \'nametype=s\'  => \\$nametype,\n        \'countname=s\' => \\$countname,\n        \'nameattr=s\'  => \\$nameattrfile,\n        \'total=s\'     => \\$timemax,\n        \'factor=f\'    => \\$factor,\n        \'colors=s\'    => \\$colors,\n        \'bgcolors=s\'  => \\$bgcolors,\n        \'hash\'        => \\$hash,\n        \'random\'      => \\$rand,\n        \'cp\'          => \\$palette,\n        \'reverse\'     => \\$stackreverse,\n        \'inverted\'    => \\$inverted,\n        \'flamechart\'  => \\$flamechart,\n        \'negate\'      => \\$negate,\n        \'time\'        => \\$colortime,\n        \'notes=s\'     => \\$notestext,\n        \'help\'        => \\$help,\n) or usage();\n$help && usage();\n\nmy $ypad1 = $fontsize * 3;      # pad top, include title\nmy $ypad2 = $fontsize * 2 + 10; # pad bottom, include labels\nmy $ypad3 = $fontsize * 2;      # pad top, include subtitle (optional)\nmy $xpad = 10;                  # pad lefm and right\nmy $framepad = 1;                               # vertical padding for frames\nmy $depthmax = 0;\nmy %Events;\nmy %nameattr;\n\nif ($flamechart && $titletext eq "") {\n        $titletext = "Flame Chart";\n}\n\nif ($titletext eq "") {\n        unless ($inverted) {\n                $titletext = $titledefault;\n        } else {\n                $titletext = $titleinverted;\n        }\n}\n\nif ($nameattrfile) {\n        open my $attrfh, $nameattrfile or die "Can\'t read $nameattrfile: $!\\n";\n        while (<$attrfh>) {\n                chomp;\n                my ($funcname, $attrstr) = split /\\t/, $_, 2;\n                die "Invalid format in $nameattrfile" unless defined $attrstr;\n                $nameattr{$funcname} = { map { split /=/, $_, 2 } split /\\t/, $attrstr };\n        }\n}\n\nif ($notestext =~ /[<>]/) {\n        die "Notes string can\'t contain < or >"\n}\n\nmy $minwidth_f;\nif ($minwidth =~ /^([0-9.]+)%?$/) {\n        $minwidth_f = $1;\n} else {\n        warn "Value \'$minwidth\' is invalid for minwidth, expected a float.\\n";\n        usage();\n}\n\nif ($bgcolors eq "") {\n        if ($colors eq "mem") {\n                $bgcolors = "green";\n        } elsif ($colors =~ /^(io|wakeup|chain)$/) {\n                $bgcolors = "blue";\n        } elsif ($colors =~ /^(red|green|blue|aqua|yellow|purple|orange)$/) {\n                $bgcolors = "grey";\n        } else {\n                $bgcolors = "yellow";\n        }\n}\nmy ($bgcolor1, $bgcolor2);\nif ($bgcolors eq "yellow") {\n        $bgcolor1 = "#eeeeee";       # background color gradient start\n        $bgcolor2 = "#eeeeb0";       # background color gradient stop\n} elsif ($bgcolors eq "blue") {\n        $bgcolor1 = "#eeeeee"; $bgcolor2 = "#e0e0ff";\n} elsif ($bgcolors eq "green") {\n        $bgcolor1 = "#eef2ee"; $bgcolor2 = "#e0ffe0";\n} elsif ($bgcolors eq "grey") {\n        $bgcolor1 = "#f8f8f8"; $bgcolor2 = "#e8e8e8";\n} elsif ($bgcolors =~ /^#......$/) {\n        $bgcolor1 = $bgcolor2 = $bgcolors;\n} else {\n        die "Unrecognized bgcolor option \\"$bgcolors\\""\n}\n\n{ package SVG;\n        sub new {\n                my $class = shift;\n                my $self = {};\n                bless ($self, $class);\n                return $self;\n        }\n\n        sub header {\n                my ($self, $w, $h) = @_;\n                my $enc_attr = \'\';\n                if (defined $encoding) {\n                        $enc_attr = qq{ encoding="$encoding"};\n                }\n                $self->{svg} .= <<SVG;\n<?xml version="1.0"$enc_attr standalone="no"?>\n<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">\n<svg version="1.1" width="$w" height="$h" onload="init(evt)" viewBox="0 0 $w $h" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">\n<!-- Flame graph stack visualization. See https://github.com/brendangregg/FlameGraph for latest version, and http://www.brendangregg.com/flamegraphs.html for examples. -->\n<!-- NOTES: $notestext -->\nSVG\n        }\n\n        sub include {\n                my ($self, $content) = @_;\n                $self->{svg} .= $content;\n        }\n\n        sub colorAllocate {\n                my ($self, $r, $g, $b) = @_;\n                return "rgb($r,$g,$b)";\n        }\n\n        sub group_start {\n                my ($self, $attr) = @_;\n\n                my @g_attr = map {\n                        exists $attr->{$_} ? sprintf(qq/$_="%s"/, $attr->{$_}) : ()\n                } qw(id class);\n                push @g_attr, $attr->{g_extra} if $attr->{g_extra};\n                if ($attr->{href}) {\n                        my @a_attr;\n                        push @a_attr, sprintf qq/xlink:href="%s"/, $attr->{href} if $attr->{href};\n                        push @a_attr, sprintf qq/target="%s"/, $attr->{target} || "_top";\n                        push @a_attr, $attr->{a_extra}                           if $attr->{a_extra};\n                        $self->{svg} .= sprintf qq/<a %s>\\n/, join(\' \', (@a_attr, @g_attr));\n                } else {\n                        $self->{svg} .= sprintf qq/<g %s>\\n/, join(\' \', @g_attr);\n                }\n\n                $self->{svg} .= sprintf qq/<title>%s<\\/title>/, $attr->{title}\n                        if $attr->{title}; # should be first element within g container\n        }\n\n        sub group_end {\n                my ($self, $attr) = @_;\n                $self->{svg} .= $attr->{href} ? qq/<\\/a>\\n/ : qq/<\\/g>\\n/;\n        }\n\n        sub filledRectangle {\n                my ($self, $x1, $y1, $x2, $y2, $fill, $extra) = @_;\n                $x1 = sprintf "%0.1f", $x1;\n                $x2 = sprintf "%0.1f", $x2;\n                my $w = sprintf "%0.1f", $x2 - $x1;\n                my $h = sprintf "%0.1f", $y2 - $y1;\n                $extra = defined $extra ? $extra : "";\n                $self->{svg} .= qq/<rect x="$x1" y="$y1" width="$w" height="$h" fill="$fill" $extra \\/>\\n/;\n        }\n\n        sub stringTTF {\n                my ($self, $id, $x, $y, $str, $extra) = @_;\n                $x = sprintf "%0.2f", $x;\n                $id =  defined $id ? qq/id="$id"/ : "";\n                $extra ||= "";\n                $self->{svg} .= qq/<text $id x="$x" y="$y" $extra>$str<\\/text>\\n/;\n        }\n\n        sub svg {\n                my $self = shift;\n                return "$self->{svg}</svg>\\n";\n        }\n        1;\n}\n\nsub namehash {\n        my $name = shift;\n        my $vector = 0;\n        my $weight = 1;\n        my $max = 1;\n        my $mod = 10;\n        $name =~ s/.(.*?)`//;\n        foreach my $c (split //, $name) {\n                my $i = (ord $c) % $mod;\n                $vector += ($i / ($mod++ - 1)) * $weight;\n                $max += 1 * $weight;\n                $weight *= 0.70;\n                last if $mod > 12;\n        }\n        return (1 - $vector / $max)\n}\n\nsub sum_namehash {\n  my $name = shift;\n  return unpack("%32W*", $name);\n}\n\nsub random_namehash {\n        my $name = shift;\n        my $hash = sum_namehash($name);\n        srand($hash);\n        return rand(1)\n}\n\n\nmy $sum_wall;\nmy $sum_cpu;\nmy $max_wall;\nmy $max_cpu;\nmy $n_samples;\n\nsub color_timep {\n  my ($type, $name, $count_wall, $ind_wall, $count_cpu, $ind_cpu) = @_;\n  my ($saturation, $intensity, $i2, $s, $type0);\n  my ($r, $g, $b);\n\n  if (defined $count_cpu) {\n      if (defined $sum_wall & defined $sum_cpu && $sum_cpu > 0) {\n          $count_cpu = ($sum_wall * $count_cpu / $sum_cpu);\n\t  $max_cpu = ($sum_wall * $max_cpu / $sum_cpu);\n      } elsif (defined $max_cpu && $max_cpu > 0) {\n\t  $count_cpu = $count_cpu * $max_wall / $max_cpu;\n          $max_cpu = $max_wall;\n      }\n  }\n\n    if ($type eq "timep") {\n            if (defined $ind_wall && $ind_wall >= 0 && defined $n_samples && $n_samples > 0 ) {\n                    $intensity = $ind_wall / (2 * $n_samples);       \n            } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_wall / $max_wall) ** 2) ** 2));\n            }\n            if (defined $count_cpu && $count_cpu > 0) {\n                            $saturation  = 1 - (1 / (1 + ($count_cpu / $count_wall)) ** 2);\n            } else {\n                    $saturation = 1\n            }\n            $type0 = "time";\n    } elsif (defined $count_cpu && $count_cpu > 0 && $type eq "timepr") {\n           if (defined $ind_cpu && $ind_cpu >= 0 && defined $n_samples && $n_samples > 0 ) {\n                   $intensity = $ind_cpu / (2 * $n_samples);       \n           } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_cpu / $max_cpu) ** 2) ** 2));\n           }\n           if (defined $count_wall && $count_cpu > 0) {\n                           $saturation = 1 - (1 / (2 + ($count_cpu / $count_wall)) ** 2);\n           } else {\n                   $saturation = 1\n           }\n           $type0 = "time";\n   } else {\n           if (defined $ind_wall && $ind_wall >= 0 && defined $n_samples && $n_samples > 0 ) {\n                   $intensity = $ind_wall / (2 * $n_samples);       \n           } else {\n                   $intensity  = (4 / 3) * (1 - (1 / (1 + ($count_wall / $max_wall) ** 2) ** 2));\n           }\n           $saturation = 1;  \n           $type0 = "time";\n   }\n  \n  $intensity  = 1 if $intensity > 1;\n  $intensity  = 0 if $intensity < 0;\n  $saturation = 1 if $saturation > 1;\n  $saturation = 0 if $saturation < 0;\n\n  $saturation  = (4 / 3) * (1 - (1 / (1 + ($saturation ** 2)) ** 2));\n\n  if ($colors =~ /^timep/) {\n    if ($name =~ m:_\\[f\\]$:) { \n      $type0 = "function";\n    } elsif ($name =~ m:_\\[s\\]$:) {\n      $type0 = "subshell";\n    } else {\n      $type0 = "time";\n    }\n  }\n\n  if ($type0 eq "time") {\n    $i2 = $intensity ** 2;\n    $r = ((255 * ($intensity + sqrt($intensity)) / 2) * $saturation + 212 * (1 - $saturation));\n    $g = ((255 * (1 - ((1 - 2 * $intensity) ** 2)) * (1 - $i2)) * $saturation + 212 * (1 - $saturation));\n    $b = ((255 * (1 - $intensity) * (1 - $i2) * (1 - ($intensity * $i2))) * $saturation + 212 * (1 - $saturation));\n    $s = $saturation * (1 + 255 / ($r + $g + $b)) / 2;\n    $s = 1 if $s > 1;\n    $r = int($r);\n    $g = int($g * $s + 212 * (1 - $s));\n    $b = int($b);\n  } else {\n        $saturation = (1 / 3) + ($saturation / 4);\n        if ($type0 eq "function") {\n                  $r = ((155 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $g = ((55 + int(25 * $intensity)) * $saturation + 255 * (1 - $saturation));\n\t    \t  $b = ((200 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n        } elsif ($type0 eq "subshell") {\n                  $r = ((200 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $g = ((55 + int(25 * $intensity)) * $saturation + 255 * (1 - $saturation));\n                  $b = ((155 + int(55 * $intensity)) * $saturation + 255 * (1 - $saturation));\n        }\n  }\n\n  return "rgb($r,$g,$b)";\n}\n\nsub color {\n        my ($type, $hash, $name, $ind) = @_;\n        my ($v1, $v2, $v3);\n\n        if ($hash) {\n                $v1 = namehash($name);\n                $v2 = $v3 = namehash(scalar reverse $name);\n        } elsif ($rand) {\n                $v1 = rand(1);\n                $v2 = rand(1);\n                $v3 = rand(1);\n        } else {\n                $v1 = random_namehash($name);\n                $v2 = random_namehash($name);\n                $v3 = random_namehash($name);\n        }\n\n        if ($colortime && defined $ind && $ind >= 0 && $n_samples > 0) {\n            $v1 = 2 * $ind / $n_samples;\n        } \n\n        if (defined $type and $type eq "hot") {\n                my $r = 205 + int(50 * $v3);\n                my $g = 0 + int(230 * $v1);\n                my $b = 0 + int(55 * $v2);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "mem") {\n                my $r = 0;\n                my $g = 190 + int(50 * $v2);\n                my $b = 0 + int(210 * $v1);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "io") {\n                my $r = 80 + int(60 * $v1);\n                my $g = $r;\n                my $b = 190 + int(55 * $v2);\n                return "rgb($r,$g,$b)";\n        }\n\n        if (defined $type and $type eq "java") {\n                if ($name =~ m:_\\[j\\]$:) {      # jit annotation\n                        $type = "green";\n                } elsif ($name =~ m:_\\[i\\]$:) { # inline annotation\n                        $type = "aqua";\n                } elsif ($name =~ m:^L?(java|javax|jdk|net|org|com|io|sun)/:) { # Java\n                        $type = "green";\n                } elsif ($name =~ /:::/) {      # Java, typical perf-map-agent method separator\n                        $type = "green";\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:_\\[k\\]$:) { # kernel annotation\n                        $type = "orange";\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "perl") {\n                if ($name =~ /::/) {            # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:Perl: or $name =~ m:\\.pl:) {        # Perl\n                        $type = "green";\n                } elsif ($name =~ m:_\\[k\\]$:) { # kernel\n                        $type = "orange";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "js") {\n                if ($name =~ m:_\\[j\\]$:) {      # jit annotation\n                        if ($name =~ m:/:) {\n                                $type = "green";        # source\n                        } else {\n                                $type = "aqua";         # builtin\n                        }\n                } elsif ($name =~ /::/) {       # C++\n                        $type = "yellow";\n                } elsif ($name =~ m:/.*\\.js:) { # JavaScript (match "/" in path)\n                        $type = "green";\n                } elsif ($name =~ m/:/) {       # JavaScript (match ":" in builtin)\n                        $type = "aqua";\n                } elsif ($name =~ m/^ $/) {     # Missing symbol\n                        $type = "green";\n                } elsif ($name =~ m:_\\[k\\]:) {  # kernel\n                        $type = "orange";\n                } else {                        # system\n                        $type = "red";\n                }\n        }\n        if (defined $type and $type eq "wakeup") {\n                $type = "aqua";\n        }\n        if (defined $type and $type eq "chain") {\n                if ($name =~ m:_\\[w\\]:) {       # waker\n                        $type = "aqua"\n                } else {                        # off-CPU\n                        $type = "blue";\n                }\n        }\n\n        if (defined $type and $type eq "red") {\n                my $r = 200 + int(55 * $v1);\n                my $x = 50 + int(80 * $v1);\n                return "rgb($r,$x,$x)";\n        }\n        if (defined $type and $type eq "green") {\n                my $g = 200 + int(55 * $v1);\n                my $x = 50 + int(60 * $v1);\n                return "rgb($x,$g,$x)";\n        }\n        if (defined $type and $type eq "blue") {\n                my $b = 205 + int(50 * $v1);\n                my $x = 80 + int(60 * $v1);\n                return "rgb($x,$x,$b)";\n        }\n        if (defined $type and $type eq "yellow") {\n                my $x = 175 + int(55 * $v1);\n                my $b = 50 + int(20 * $v1);\n                return "rgb($x,$x,$b)";\n        }\n        if (defined $type and $type eq "purple") {\n                my $x = 190 + int(65 * $v1);\n                my $g = 80 + int(60 * $v1);\n                return "rgb($x,$g,$x)";\n        }\n        if (defined $type and $type eq "aqua") {\n                my $r = 50 + int(60 * $v1);\n                my $g = 165 + int(55 * $v1);\n                my $b = 165 + int(55 * $v1);\n                return "rgb($r,$g,$b)";\n        }\n        if (defined $type and $type eq "orange") {\n                my $r = 190 + int(65 * $v1);\n                my $g = 90 + int(65 * $v1);\n                return "rgb($r,$g,0)";\n        }\n\n        return "rgb(0,0,0)";\n}\n\nsub color_scale {\n        my ($value, $max) = @_;\n        my ($r, $g, $b) = (255, 255, 255);\n        $value = -$value if $negate;\n        if ($value > 0) {\n                $g = $b = int(210 * ($max - $value) / $max);\n        } elsif ($value < 0) {\n                $r = $g = int(210 * ($max + $value) / $max);\n        }\n        return "rgb($r,$g,$b)";\n}\n\nsub color_map {\n        my ($colors, $func) = @_;\n        if (exists $palette_map{$func}) {\n                return $palette_map{$func};\n        } else {\n                $palette_map{$func} = color($colors, $hash, $func);\n                return $palette_map{$func};\n        }\n}\n\nsub write_palette {\n        open(FILE, ">$pal_file");\n        foreach my $key (sort keys %palette_map) {\n                print FILE $key."->".$palette_map{$key}."\\n";\n        }\n        close(FILE);\n}\n\nsub read_palette {\n        if (-e $pal_file) {\n        open(FILE, $pal_file) or die "can\'t open file $pal_file: $!";\n        while ( my $line = <FILE>) {\n                chomp($line);\n                (my $key, my $value) = split("->",$line);\n                $palette_map{$key}=$value;\n        }\n        close(FILE)\n        }\n}\n\nmy %Node;       # Hash of merged frame data\nmy %Tmp;\n\nsub flow {\n        my ($last, $this, $v, $d, $iw, $id) = @_;\n\n        my $len_a = @$last - 1;\n        my $len_b = @$this - 1;\n\n        my $i = 0;\n        my $len_same;\n        for (; $i <= $len_a; $i++) {\n                last if $i > $len_b;\n                last if $last->[$i] ne $this->[$i];\n        }\n        $len_same = $i;\n\n        for ($i = $len_a; $i >= $len_same; $i--) {\n                my $k = "$last->[$i];$i";\n                $Node{"$k;$v"}->{stime} = delete $Tmp{$k}->{stime};\n                if (defined $Tmp{$k}->{delta}) {\n                        $Node{"$k;$v"}->{delta} = delete $Tmp{$k}->{delta};\n                }\n                if (defined $Tmp{$k}->{ctime}) {\n                        $Node{"$k;$v"}->{ctime} = delete $Tmp{$k}->{ctime};\n                }\n                if (defined $Tmp{$k}->{indwall}) {\n                        $Node{"$k;$v"}->{indwall} = delete $Tmp{$k}->{indwall};\n                }\n                if (defined $Tmp{$k}->{indcpu}) {\n                        $Node{"$k;$v"}->{indcpu} = delete $Tmp{$k}->{indcpu};\n                }\n                delete $Tmp{$k};\n        }\n\n        for ($i = $len_same; $i <= $len_b; $i++) {\n                my $k = "$this->[$i];$i";\n                $Tmp{$k}->{stime} = $v;\n\n      if (defined $d) {\n      \t      if ($colors =~ /^timep/) {\n\t\t      $Tmp{$k}->{ctime} = $d;\n      \t      } else {\n      \t\t      $Tmp{$k}->{delta} += $i == $len_b ? $d : 0;\n      \t      }\n      }\n      if (defined $iw) {\n      \t      $Tmp{$k}->{indwall} = $iw;\n      }\n      if (defined $id) {\n        $Tmp{$k}->{indcpu} = $id;\n      }\n  \n  }\n  return $this;\n}\n\nmy @Data;\nmy @SortedData;\nmy $last = [];\nmy $time = 0;\nmy $delta = undef;\nmy $indwall = undef;\nmy $indcpu = undef;\nmy $ignored = 0;\nmy $line;\nmy $maxwall = 0;\nmy $maxdelta = 1;\nmy $sumwall = 0;\nmy $sumcpu = 0;\nmy $nsamples = 0;\n\nif ($colors =~ /^timep/) {\n    $maxdelta = 0;\n}\n\nforeach (<>) {\n        chomp;\n        $line = $_;\n    \tif ($stackreverse) {\n\t\tmy ($stack, $samples);\n\t\tmy $samples2 = undef;\n                ($stack, $samples) = (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\t\tif ($stack =~ /^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/) {\n\t\t\t$samples2 = $samples;\n                \t($stack, $samples) = $stack =~ (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\t\t}\n                if (defined $samples2) {\n                        unshift @Data, join(";", reverse split(";", $stack)) . " $samples $samples2";\n                } else {\n                        unshift @Data, join(";", reverse split(";", $stack)) . " $samples";\n                }\n        } else {\n                unshift @Data, $line;\n        }       \n}\n\nif ($flamechart) {\n        @SortedData = reverse @Data;\n} else {\n        @SortedData = sort @Data;\n}\n\nforeach (@SortedData) {\n        chomp;\n\tmy ($stack, $samples);\n\tmy $indwall = undef;\n\tmy $samples2 = undef;\n\tmy $indcupu = undef;\n\t($stack, $samples) = (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\n\tif ($stack =~ /^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/) {\n\t\t$samples2 = $samples;\n\t\t($stack, $samples) = $stack =~ (/^(.*)\\s+(\\d+(?::?\\d*?)?)\\s*?$/);\t\t\n\t\tif ($samples2 =~ /^(\\d+):(\\d+)$/) {\n\t\t\t($samples2, $indcpu) = $samples2 =~ (/^(\\d+):(\\d+)$/)\n\t\t}\n\t}\n\tif ($samples =~ /^(\\d+):(\\d+)$/) {\n\t\t($samples, $indwall) = $samples =~ (/^(\\d+):(\\d+)$/)\n\t}\n\tunless (defined $samples and defined $stack) {\n\t\t++$ignored;\n                  next;\n        }\n\n        $delta = undef;\n        if (defined $samples2) {\n            if ($colors =~ /^timep/) {\n\t\t    $delta = $samples2;\n\t    } else {\n\t\t    \n\t\t    $delta = $samples2 - $samples;\n    \t    }\n\t    $maxdelta = abs($delta) if abs($delta) > $maxdelta;\n\t    $sumcpu += $samples2;\n    }\n    \n    $maxwall = $samples if $samples > $maxwall;\n    $sumwall += $samples;\n    $nsamples += 1;\n    \n        if ($colors eq "chain") {\n                my @parts = split ";--;", $stack;\n                my @newparts = ();\n                $stack = shift @parts;\n                $stack .= ";--;";\n                foreach my $part (@parts) {\n                        $part =~ s/;/_[w];/g;\n                        $part .= "_[w]";\n                        push @newparts, $part;\n                }\n                $stack .= join ";--;", @parts;\n        }\n\n        $last = flow($last, [ \'\', split ";", $stack ], $time, $delta, $indwall, $indcpu);\n\n        if ($colors eq "timep") {\n                $time += $samples;\n        } elsif (defined $samples2) {\n                $time += $samples2;\n        } else {\n                $time += $samples;\n        }\n}\nflow($last, [], $time, $delta, $indwall, $indcpu);\n\nif ($colortime) {\n    (defined $indwall) or warn "Coloring by sample count / time requires running the input stack traces through \'stackcollapse-time.bash\'. Standard function-name-based coloring ill be used.\\n";\n    ($colors !~ /^time/) and (defined $indwall and defined $delta) and warn "Coloring by sample count / time is not supported when using the delta between two input sample counts / times.\\nIf the 2nd input is an intependent sample count / time measurement, use \'--color=timep\' instead.\\n"\n}\n\nif ($countname eq "samples") {\n        warn "Stack count is low ($time). Did something go wrong?\\n" if $time < 100;\n}\n\nwarn "Ignored $ignored lines with invalid format\\n" if $ignored;\nunless ($time) {\n        warn "ERROR: No stack counts found\\n";\n        my $im = SVG->new();\n        my $imageheight = $fontsize * 5;\n        $im->header($imagewidth, $imageheight);\n        $im->stringTTF(undef, int($imagewidth / 2), $fontsize * 2,\n            "ERROR: No valid input provided to flamegraph.pl.");\n        print $im->svg;\n        exit 2;\n}\nif ($timemax and $timemax < $time) {\n        warn "Specified --total $timemax is less than actual total $time, so ignored\\n"\n        if $timemax/$time > 0.02; # only warn is significant (e.g., not rounding etc)\n        undef $timemax;\n}\n$timemax ||= $time;\n$max_wall ||= $maxwall;\n$max_cpu ||= $maxdelta;\n$sum_wall ||= $sumwall;\n$sum_cpu ||= $sumcpu;\n$n_samples ||= $nsamples;\n\nmy $widthpertime = ($imagewidth - 2 * $xpad) / $timemax;\n\nmy $minwidth_time;\nif ($minwidth =~ /%$/) {\n        $minwidth_time = $timemax * $minwidth_f / 100;\n} else {\n        $minwidth_time = $minwidth_f / $widthpertime;\n}\n\nwhile (my ($id, $node) = each %Node) {\n        my ($func, $depth, $etime) = split ";", $id;\n        my $stime = $node->{stime};\n        die "missing start for $id" if not defined $stime;\n\n        if (($etime-$stime) < $minwidth_time) {\n                delete $Node{$id};\n                next;\n        }\n        $depthmax = $depth if $depth > $depthmax;\n}\n\nmy $imageheight = (($depthmax + 1) * $frameheight) + $ypad1 + $ypad2;\n$imageheight += $ypad3 if $subtitletext ne "";\nmy $titlesize = $fontsize + 5;\nmy $im = SVG->new();\nmy ($black, $vdgrey, $dgrey) = (\n        $im->colorAllocate(0, 0, 0),\n        $im->colorAllocate(160, 160, 160),\n        $im->colorAllocate(200, 200, 200),\n    );\n$im->header($imagewidth, $imageheight);\nmy $inc = <<INC;\n<defs>\n        <linearGradient id="background" y1="0" y2="1" x1="0" x2="0" >\n                <stop stop-color="$bgcolor1" offset="5%" />\n                <stop stop-color="$bgcolor2" offset="95%" />\n        </linearGradient>\n</defs>\n<style type="text/css">\n        text { font-family:$fonttype; font-size:${fontsize}px; fill:$black; }\n        .hide { display:none; }\n        .parent { opacity:0.5; }\n</style>\n<script type="text/ecmascript">\n<![CDATA[\n        "use strict";\n        var details, searchbtn, unzoombtn, matchedtxt, svg, searching, currentSearchTerm, ignorecase, ignorecaseBtn;\n        function init(evt) {\n                details = document.getElementById("details").firstChild;\n                searchbtn = document.getElementById("search");\n                ignorecaseBtn = document.getElementById("ignorecase");\n                unzoombtn = document.getElementById("unzoom");\n                matchedtxt = document.getElementById("matched");\n                svg = document.getElementsByTagName("svg")[0];\n                searching = 0;\n                currentSearchTerm = null;\n\n                // use GET parameters to restore a flamegraphs state.\n                var params = get_params();\n                if (params.x && params.y)\n                        zoom(find_group(document.querySelector(\'[x="\' + params.x + \'"][y="\' + params.y + \'"]\')));\n                if (params.s) search(params.s);\n        }\n\n        // event listeners\n        window.addEventListener("click", function(e) {\n                var target = find_group(e.target);\n                if (target) {\n                        if (target.nodeName == "a") {\n                                if (e.ctrlKey === false) return;\n                                e.preventDefault();\n                        }\n                        if (target.classList.contains("parent")) unzoom(true);\n                        zoom(target);\n                        if (!document.querySelector(\'.parent\')) {\n                                // we have basically done a clearzoom so clear the url\n                                var params = get_params();\n                                if (params.x) delete params.x;\n                                if (params.y) delete params.y;\n                                history.replaceState(null, null, parse_params(params));\n                                unzoombtn.classList.add("hide");\n                                return;\n                        }\n\n                        // set parameters for zoom state\n                        var el = target.querySelector("rect");\n                        if (el && el.attributes && el.attributes.y && el.attributes._orig_x) {\n                                var params = get_params()\n                                params.x = el.attributes._orig_x.value;\n                                params.y = el.attributes.y.value;\n                                history.replaceState(null, null, parse_params(params));\n                        }\n                }\n                else if (e.target.id == "unzoom") clearzoom();\n                else if (e.target.id == "search") search_prompt();\n                else if (e.target.id == "ignorecase") toggle_ignorecase();\n        }, false)\n\n        // mouse-over for info\n        // show\n        window.addEventListener("mouseover", function(e) {\n                var target = find_group(e.target);\n                if (target) details.nodeValue = "$nametype " + g_to_text(target);\n        }, false)\n\n        // clear\n        window.addEventListener("mouseout", function(e) {\n                var target = find_group(e.target);\n                if (target) details.nodeValue = \' \';\n        }, false)\n\n        // ctrl-F for search\n        // ctrl-I to toggle case-sensitive search\n        window.addEventListener("keydown",function (e) {\n                if (e.keyCode === 114 || (e.ctrlKey && e.keyCode === 70)) {\n                        e.preventDefault();\n                        search_prompt();\n                }\n                else if (e.ctrlKey && e.keyCode === 73) {\n                        e.preventDefault();\n                        toggle_ignorecase();\n                }\n        }, false)\n\n        // functions\n        function get_params() {\n                var params = {};\n                var paramsarr = window.location.search.substr(1).split(\'&\');\n                for (var i = 0; i < paramsarr.length; ++i) {\n                        var tmp = paramsarr[i].split("=");\n                        if (!tmp[0] || !tmp[1]) continue;\n                        params[tmp[0]]  = decodeURIComponent(tmp[1]);\n                }\n                return params;\n        }\n        function parse_params(params) {\n                var uri = "?";\n                for (var key in params) {\n                        uri += key + \'=\' + encodeURIComponent(params[key]) + \'&\';\n                }\n                if (uri.slice(-1) == "&")\n                        uri = uri.substring(0, uri.length - 1);\n                if (uri == \'?\')\n                        uri = window.location.href.split(\'?\')[0];\n                return uri;\n        }\n        function find_child(node, selector) {\n                var children = node.querySelectorAll(selector);\n                if (children.length) return children[0];\n        }\n        function find_group(node) {\n                var parent = node.parentElement;\n                if (!parent) return;\n                if (parent.id == "frames") return node;\n                return find_group(parent);\n        }\n        function orig_save(e, attr, val) {\n                if (e.attributes["_orig_" + attr] != undefined) return;\n                if (e.attributes[attr] == undefined) return;\n                if (val == undefined) val = e.attributes[attr].value;\n                e.setAttribute("_orig_" + attr, val);\n        }\n        function orig_load(e, attr) {\n                if (e.attributes["_orig_"+attr] == undefined) return;\n                e.attributes[attr].value = e.attributes["_orig_" + attr].value;\n                e.removeAttribute("_orig_"+attr);\n        }\n        function g_to_text(e) {\n                var text = find_child(e, "title").firstChild.nodeValue;\n                return (text)\n        }\n        function g_to_func(e) {\n                var func = g_to_text(e);\n                // if there\'s any manipulation we want to do to the function\n                // name before it\'s searched, do it here before returning.\n                return (func);\n        }\n        function update_text(e) {\n                var r = find_child(e, "rect");\n                var t = find_child(e, "text");\n                var w = parseFloat(r.attributes.width.value) -3;\n                var txt = find_child(e, "title").textContent.replace(/\\\\([^(]*\\\\)\\$/,"");\n                t.attributes.x.value = parseFloat(r.attributes.x.value) + 3;\n\n                // Smaller than this size won\'t fit anything\n                if (w < 2 * $fontsize * $fontwidth) {\n                        t.textContent = "";\n                        return;\n                }\n\n                t.textContent = txt;\n                var sl = t.getSubStringLength(0, txt.length);\n                // check if only whitespace or if we can fit the entire string into width w\n                if (/^ *\\$/.test(txt) || sl < w)\n                        return;\n\n                // this isn\'t perfect, but gives a good starting point\n                // and avoids calling getSubStringLength too often\n                var start = Math.floor((w/sl) * txt.length);\n                for (var x = start; x > 0; x = x-2) {\n                        if (t.getSubStringLength(0, x + 2) <= w) {\n                                t.textContent = txt.substring(0, x) + "..";\n                                return;\n                        }\n                }\n                t.textContent = "";\n        }\n\n        // zoom\n        function zoom_reset(e) {\n                if (e.attributes != undefined) {\n                        orig_load(e, "x");\n                        orig_load(e, "width");\n                }\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_reset(c[i]);\n                }\n        }\n        function zoom_child(e, x, ratio) {\n                if (e.attributes != undefined) {\n                        if (e.attributes.x != undefined) {\n                                orig_save(e, "x");\n                                e.attributes.x.value = (parseFloat(e.attributes.x.value) - x - $xpad) * ratio + $xpad;\n                                if (e.tagName == "text")\n                                        e.attributes.x.value = find_child(e.parentNode, "rect[x]").attributes.x.value + 3;\n                        }\n                        if (e.attributes.width != undefined) {\n                                orig_save(e, "width");\n                                e.attributes.width.value = parseFloat(e.attributes.width.value) * ratio;\n                        }\n                }\n\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_child(c[i], x - $xpad, ratio);\n                }\n        }\n        function zoom_parent(e) {\n                if (e.attributes) {\n                        if (e.attributes.x != undefined) {\n                                orig_save(e, "x");\n                                e.attributes.x.value = $xpad;\n                        }\n                        if (e.attributes.width != undefined) {\n                                orig_save(e, "width");\n                                e.attributes.width.value = parseInt(svg.width.baseVal.value) - ($xpad * 2);\n                        }\n                }\n                if (e.childNodes == undefined) return;\n                for (var i = 0, c = e.childNodes; i < c.length; i++) {\n                        zoom_parent(c[i]);\n                }\n        }\n        function zoom(node) {\n                var attr = find_child(node, "rect").attributes;\n                var width = parseFloat(attr.width.value);\n                var xmin = parseFloat(attr.x.value);\n                var xmax = parseFloat(xmin + width);\n                var ymin = parseFloat(attr.y.value);\n                var ratio = (svg.width.baseVal.value - 2 * $xpad) / width;\n\n                // XXX: Workaround for JavaScript float issues (fix me)\n                var fudge = 0.0001;\n\n                unzoombtn.classList.remove("hide");\n\n                var el = document.getElementById("frames").children;\n                for (var i = 0; i < el.length; i++) {\n                        var e = el[i];\n                        var a = find_child(e, "rect").attributes;\n                        var ex = parseFloat(a.x.value);\n                        var ew = parseFloat(a.width.value);\n                        var upstack;\n                        // Is it an ancestor\n                        if ($inverted == 0) {\n                                upstack = parseFloat(a.y.value) > ymin;\n                        } else {\n                                upstack = parseFloat(a.y.value) < ymin;\n                        }\n                        if (upstack) {\n                                // Direct ancestor\n                                if (ex <= xmin && (ex+ew+fudge) >= xmax) {\n                                        e.classList.add("parent");\n                                        zoom_parent(e);\n                                        update_text(e);\n                                }\n                                // not in current path\n                                else\n                                        e.classList.add("hide");\n                        }\n                        // Children maybe\n                        else {\n                                // no common path\n                                if (ex < xmin || ex + fudge >= xmax) {\n                                        e.classList.add("hide");\n                                }\n                                else {\n                                        zoom_child(e, xmin, ratio);\n                                        update_text(e);\n                                }\n                        }\n                }\n                search();\n        }\n        function unzoom(dont_update_text) {\n                unzoombtn.classList.add("hide");\n                var el = document.getElementById("frames").children;\n                for(var i = 0; i < el.length; i++) {\n                        el[i].classList.remove("parent");\n                        el[i].classList.remove("hide");\n                        zoom_reset(el[i]);\n                        if(!dont_update_text) update_text(el[i]);\n                }\n                search();\n        }\n        function clearzoom() {\n                unzoom();\n\n                // remove zoom state\n                var params = get_params();\n                if (params.x) delete params.x;\n                if (params.y) delete params.y;\n                history.replaceState(null, null, parse_params(params));\n        }\n\n        // search\n        function toggle_ignorecase() {\n                ignorecase = !ignorecase;\n                if (ignorecase) {\n                        ignorecaseBtn.classList.add("show");\n                } else {\n                        ignorecaseBtn.classList.remove("show");\n                }\n                reset_search();\n                search();\n        }\n        function reset_search() {\n                var el = document.querySelectorAll("#frames rect");\n                for (var i = 0; i < el.length; i++) {\n                        orig_load(el[i], "fill")\n                }\n                var params = get_params();\n                delete params.s;\n                history.replaceState(null, null, parse_params(params));\n        }\n        function search_prompt() {\n                if (!searching) {\n                        var term = prompt("Enter a search term (regexp " +\n                            "allowed, eg: ^ext4_)"\n                            + (ignorecase ? ", ignoring case" : "")\n                            + "\\\\nPress Ctrl-i to toggle case sensitivity", "");\n                        if (term != null) search(term);\n                } else {\n                        reset_search();\n                        searching = 0;\n                        currentSearchTerm = null;\n                        searchbtn.classList.remove("show");\n                        searchbtn.firstChild.nodeValue = "Search"\n                        matchedtxt.classList.add("hide");\n                        matchedtxt.firstChild.nodeValue = ""\n                }\n        }\n        function search(term) {\n                if (term) currentSearchTerm = term;\n                if (currentSearchTerm === null) return;\n\n                var re = new RegExp(currentSearchTerm, ignorecase ? \'i\' : \'\');\n                var el = document.getElementById("frames").children;\n                var matches = new Object();\n                var maxwidth = 0;\n                for (var i = 0; i < el.length; i++) {\n                        var e = el[i];\n                        var func = g_to_func(e);\n                        var rect = find_child(e, "rect");\n                        if (func == null || rect == null)\n                                continue;\n\n                        // Save max width. Only works as we have a root frame\n                        var w = parseFloat(rect.attributes.width.value);\n                        if (w > maxwidth)\n                                maxwidth = w;\n\n                        if (func.match(re)) {\n                                // highlight\n                                var x = parseFloat(rect.attributes.x.value);\n                                orig_save(rect, "fill");\n                                rect.attributes.fill.value = "$searchcolor";\n\n                                // remember matches\n                                if (matches[x] == undefined) {\n                                        matches[x] = w;\n                                } else {\n                                        if (w > matches[x]) {\n                                                // overwrite with parent\n                                                matches[x] = w;\n                                        }\n                                }\n                                searching = 1;\n                        }\n                }\n                if (!searching)\n                        return;\n                var params = get_params();\n                params.s = currentSearchTerm;\n                history.replaceState(null, null, parse_params(params));\n\n                searchbtn.classList.add("show");\n                searchbtn.firstChild.nodeValue = "Reset Search";\n\n                // calculate percent matched, excluding vertical overlap\n                var count = 0;\n                var lastx = -1;\n                var lastw = 0;\n                var keys = Array();\n                for (k in matches) {\n                        if (matches.hasOwnProperty(k))\n                                keys.push(k);\n                }\n                // sort the matched frames by their x location\n                // ascending, then width descending\n                keys.sort(function(a, b){\n                        return a - b;\n                });\n                // Step through frames saving only the biggest bottom-up frames\n                // thanks to the sort order. This relies on the tree property\n                // where children are always smaller than their parents.\n                var fudge = 0.0001;     // JavaScript floating point\n                for (var k in keys) {\n                        var x = parseFloat(keys[k]);\n                        var w = matches[keys[k]];\n                        if (x >= lastx + lastw - fudge) {\n                                count += w;\n                                lastx = x;\n                                lastw = w;\n                        }\n                }\n                // display matched percent\n                matchedtxt.classList.remove("hide");\n                var pct = 100 * count / maxwidth;\n                if (pct != 100) pct = pct.toFixed(1)\n                matchedtxt.firstChild.nodeValue = "Matched: " + pct + "%";\n        }\n]]>\n</script>\nINC\n$im->include($inc);\n$im->filledRectangle(0, 0, $imagewidth, $imageheight, \'url(#background)\');\n$im->stringTTF("title", int($imagewidth / 2), $fontsize * 2, $titletext);\n$im->stringTTF("subtitle", int($imagewidth / 2), $fontsize * 4, $subtitletext) if $subtitletext ne "";\n$im->stringTTF("details", $xpad, $imageheight - ($ypad2 / 2), " ");\n$im->stringTTF("unzoom", $xpad, $fontsize * 2, "Reset Zoom", \'class="hide"\');\n$im->stringTTF("search", $imagewidth - $xpad - 100, $fontsize * 2, "Search");\n$im->stringTTF("ignorecase", $imagewidth - $xpad - 16, $fontsize * 2, "ic");\n$im->stringTTF("matched", $imagewidth - $xpad - 100, $imageheight - ($ypad2 / 2), " ");\n\nif ($palette) {\n        read_palette();\n}\n\n$im->group_start({id => "frames"});\nwhile (my ($id, $node) = each %Node) {\n        my ($func, $depth, $etime) = split ";", $id;\n        my $stime = $node->{stime};\n\tmy $ctime = $node->{ctime};\n        my $delta = $node->{delta};\n        my $indwall = $node->{indwall};\n        my $indcpu = $node->{indcpu};\n\n        $etime = $timemax if $func eq "" and $depth == 0;\n\n        my $x1 = $xpad + $stime * $widthpertime;\n        my $x2 = $xpad + $etime * $widthpertime;\n        my ($y1, $y2);\n        unless ($inverted) {\n                $y1 = $imageheight - $ypad2 - ($depth + 1) * $frameheight + $framepad;\n                $y2 = $imageheight - $ypad2 - $depth * $frameheight;\n        } else {\n                $y1 = $ypad1 + $depth * $frameheight;\n                $y2 = $ypad1 + ($depth + 1) * $frameheight - $framepad;\n        }\n\n        my $samples = sprintf "%.0f", ($etime - $stime) * $factor;\n        (my $samples_txt = $samples)\n                =~ s/(^[-+]?\\d+?(?=(?>(?:\\d{3})+)(?!\\d))|\\G\\d{3}(?=\\d))/$1,/g;\n\n        my $info;\n        my $samples2 = undef;\n        my $iwall = undef;\n        my $icpu = undef;\n\n        if ($func eq "" and $depth == 0) {\n                $info = "all ($samples_txt $countname, 100%)";\n        } else {\n                my $pct = sprintf "%.2f", ((100 * $samples) / ($timemax * $factor));\n                my $escaped_func = $func;\n                $escaped_func =~ s/&/&amp;/g;\n                $escaped_func =~ s/</&lt;/g;\n                $escaped_func =~ s/>/&gt;/g;\n                $escaped_func =~ s/"/&quot;/g;\n                $escaped_func =~ s/_\\[[kwij]\\]$//;      # strip any annotation\n\n                if (defined $indwall) {\n                        $iwall = sprintf "%.0f", $indwall;\n                }\n                if (defined $indcpu) {\n                        $icpu = sprintf "%.0f", $indcpu;\n                }\n\t        if ($colors =~ /^timep/) {\n                        $samples2 = sprintf "%.0f", $ctime * $factor;\n                        $info = "$escaped_func ($samples_txt $countname, $pct%)";\n\t\t} else {\n\t\t\tunless (defined $delta) {\n\t\t\t\t$info = "$escaped_func ($samples_txt $countname, $pct%)";\n\t\t\t} else {\n\t\t\t\tmy $d = $negate ? -$delta : $delta;\n\t\t\t\tmy $deltapct = sprintf "%.2f", ((100 * $d) / ($timemax * $factor));\n\t\t\t\t$deltapct = $d > 0 ? "+$deltapct" : $deltapct;\n\t\t\t\t$info = "$escaped_func ($samples_txt $countname, $pct%; $deltapct%)";\n\t\t\t}\n\t\t}\n\t}\n\n        my $nameattr = { %{ $nameattr{$func}||{} } }; # shallow clone\n        $nameattr->{title}       ||= $info;\n        $im->group_start($nameattr);\n\n        my $color;\n        if ($colors =~ /^time/) {\n                $color = color_timep($colors, $func, $samples, $iwall, $samples2, $icpu);\n        } elsif ($func eq "--") {\n                $color = $vdgrey;\n        } elsif ($func eq "-") {\n                $color = $dgrey;\n        } elsif (defined $delta) {\n                $color = color_scale($delta, $maxdelta);\n        } elsif ($palette) {\n                $color = color_map($colors, $func);\n        } else {\n                $color = color($colors, $hash, $func, $iwall);\n        }\n        $im->filledRectangle($x1, $y1, $x2, $y2, $color, \'rx="2" ry="2"\');\n\n        my $chars = int( ($x2 - $x1) / ($fontsize * $fontwidth));\n        my $text = "";\n        if ($chars >= 3) { # room for one char plus two dots\n                $func =~ s/_\\[[kwij]\\]$//;      # strip any annotation\n                $text = substr $func, 0, $chars;\n                substr($text, -2, 2) = ".." if $chars < length $func;\n                $text =~ s/&/&amp;/g;\n                $text =~ s/</&lt;/g;\n                $text =~ s/>/&gt;/g;\n        }\n        $im->stringTTF(undef, $x1 + 3, 3 + ($y1 + $y2) / 2, $text);\n\n        $im->group_end($nameattr);\n}\n$im->group_end();\n\nprint $im->svg;\n\nif ($palette) {\n        write_palette();\n}' >"${timep_TMPDIR0}/lib/${USER}-${EUID}/timep_flamegraph.pl"

    chmod +x "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep_flamegraph.pl"
EEEOOOFFF

chmod 500 "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep_flamegraph.pl.bash"

printf '#!/usr/bin/env bash\n\nshopt -s extglob\n\n' >"${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"
declare -f _timep_base64_to_file >>"${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"
cat<<'EEEOOOFFF' >>"${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

# regenerate timep.so

ARCH="$(uname -m)"

supportedArchFlag=true

case "${ARCH}" in

######## BEGIN BASE64 ENCODED TIMEP.SO FILES ########
# +++++++++++++++++++++++++++++++++++++++++++++++++ #

'x86_64')
b64=$'45552 22776\nmd5sum:f7788ab1b09cf0a514690452ca828336\nsha256sum:b91e67e0c7dd2dae435e19bb98e39249e4feab1f407f86026d36f7abf7c08882\n05C3ZLbpwYUgcFC3@_8pwZLMmofsJ41pw_rMSofe432pw_LMmofrYxC3Tbg\n0OCofXYxC3S_1pwZOQg5C3ZL3pwYUgc9C3@_1pwZLO6ofsJ\n0000000000000000000000000000000000000000\n01pw_rOSofe43apw_LO6ofrY5C3Tbh\n00000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0hQN9gAdvcyUObzk\n000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n18\n00\n__\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\034vQlchw810g[?c0fw01{1[7xh[>4?e?a04?7w0t?4,5$:Phk:3d5g}g}g,g<8[w}2]3A6g:egp}1}1,1w>cwZ]O4Q:38jg:8w5]U0A}4}8,6,U3Q:3wjg:e1d]M04:3?g]w}1<g>1M0w:702]s08]A}2g}1[4,1,40T]g3s:10dM:3[c[8}5fBt6g4,g3s:10dM:40T]c[M[w}kelQp0g>1MdM:70T]s3s:1k}5g}1}1hVnhA1w!=?g}5bBt6g4,O3Q:38jg:cxd]e08]U0w]4}1,1g,3,hQVl0fVd4BEUv_JhRiqX2iWVbVMGnecfYMYu@Ay3X0x8yMktjg?i8n0t0b_Q4y3N0z30fYReAQ?fYBf4Q>Yvg03_9jFd?1E<eDw//_OkOjg?q04>3FQf//YBaAQ?6w2,Ws3//_9i9d?1E0M>eCM//_Okqjg?q0g>3FEf//YB4AQ?6w5,Wp3//_9gFd?1E1w>eC0//_Ok2jg?q0s>3Fsf//YB@AM?6w8,Wm3//_9v9c?1E2g>eBg//_OnGj>q0E>3Fgf//YBUAM?6wb,Wj3//_9tFc?1E3,eAw//_Onij>q0Q>3F4f//YBOAM?6we,Wg3//_9s9c?1E3M>eDM_L/_OmWj>q1,3FUfX/_YBIAM?6wh,Wt3@//9qFc?1E4w>eD0_L/_Omyj>q1c>3FIfX/_YBCAM?6wk,Wq3@//9p9c?1E5g>eCg_L/_Omaj>q1o>3FwfX/_YBwAM?6wn,Wn3@//9nFc?1E6,eBw_L/_OlOj>q1A>3FkfX/_YBqAM?6wq,Wk3@//9m9c?1E6M>eAM_L/_Olqj>q1M>3F8fX/_YBkAM?6wt,Wh3@//9kFc?1E7w>eA0_L/*4ydfoBe?.zgm2jw?i3DUt1l8yMn6iw?i8n0t0D_U0Yvw<333N@;4ydflBe?.zjlijw?i2D@i8DMic7KfQz1@0d80sp8QvVQ54yb1rla?.xs1Q2f_wpwYvh>MMYvw<3P3NXWw3QBjw>7kHlky3fp9a,i8DBt0N8zjS6i>W2D//Epf/_Yo5_kQ>5tMMYv0ccf7U;YMYu@KBT//3N@;8I56B8?4y9Qon0t4S9@4y5Og@4pw4?fvgi07Ni8QZ_4Q?6pCbwYvx:pCoK3N@4;1C3NZ4>fJxp8wYo1csb1W0wfJJ8P19t8ev5RWvvgMSoftJJ8zgmXjg?grwwwXzJgrA4,pA4frJ1C3SYBcz4?6p13SXFi8Sg?g?6ofsJcvpwZMQw1C3T3J?Yvw<1C3S_4pwZLP6of_Kl8wY0gpw_rMSofsJ41pwYUgc9C3@_1pwZLO6ofsJ#0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px`01pw_rOSofe43apw_LMgYFgf.et0fxjv//71qRg>1,yvx8xsAfxpH@/_3A8I5CB>8n03Ukl0g?i8Q5yQM?6oftJK@88eUXrY4,pwZL9gkM?1C3SXmpwZKXQydA?4?1C3Tbj7Sofsd80pwZMXg0f7U;pwZLN6ofrYNC3_XBi8f046ofSYdC3Tbh0mofe432pw_LMmofrYxC3Tbg0mofSYJC3Px`#0mofSYdC3Px0MCofXY5C3S_8pwZOQ~0mofSYJC3Px0OCofXY4fak3Mi3Dg3UkT//NMlZjM>g>4y3fllb,t073kP703W98zhl6_v/xs1Q7Xw1,3W98zhkA,wu4?1?i8Q59_T/Qwfhd.yhksiM?mYdCbwYvx:i8Dhi8ni3UjX,ZZsNMeIPpCoK3N@4;1CpyUf7Ug:Yvx:YwYUY3M6i8f?oD_i3D13UiP,i8Qk1Efy1Tnyi8Rg24wVQn8JpCoK3N@4;1CpyUf7Ug:Yv0f983PzNv1rUi8Dgi8f224wVQnfIi3D8sSp8zl01YwYUY3M6i3DasRt8zl02YwYUY7M60kwVODd7i8Rg0_8fef1Y1w98esFPdQydk0jO3PzMv0o3i3DasOt8zl05YwYUY7M614wVODcni8Rg1L8fef1Y1wl8esFP1_8fef1Y1wq9@fvgMMYvg0.zl48i3Dh3UdH//W@y9@cdC3NZ4?11lQ5mgll1l5l8yvRji87IO,4y9t2ggi8Bk91y0fOQfxok>20vM40tn_EjLT/P7ii8RY92x8K;1,Lw4>.ykgAaexu@L/xs1@2_p492U13UmQ0g?i8RQ93.zjTj9g?WeXV/@9h2gcxs0fxeM1?.yMmzhg?LM>g.yM.yggAW9HV/Z9ysh8xs0fx9Y1?37h2gc0g>eIWi8QRzOk?4y9X@wl@L/i8A494y5M0@4Y04?bY>40W5XV/Z9ysh8xs0fxbU1?37h2gc<4yZ9icyxeisYIJ5cuR9LXc1<g?3NY0i8Ic9bE>40Lw4>1cyuvEyLz/QC9NAy5M7hOj8IdSQw?4S5OngKh8DLj8DOj8DCgv_hiUQcd469NkO9U0@S44y3M058ctl93W_Li3D1tuTHGMYv03703W9czgSt@L/xs1Q7Xw1,3W9czgRX_v/wu4?1?i8Q5vLH/QMfhcxcygRPi>WVKgi8IY9ezTZ/_j8DDgoD7xs1Rgexo@f/yQgA38n03UiE,i8J491.xs1Q0Qi9a4ybh2goi8n0t0d8yix8wsj8,h8DUmRR1n45tglV1nYfE6fz/UJk90O5QDhxW5LT/@beezQ@f/i8QZlOg?4y9Nz70W5fT/Z1LM4>3HKkyb1gN4?2_>104yb04y912jE0_z/Yt490M1,ioD4i8n03UmB_L/i8QZ_ic?370W17T/_HL4ybf2jEpLv/@Kki8IY9exrZ/_WkH/_Z8zjnh8M?i8QZO2c?exj@f/i8A494y5M7gxLM>g3EEfv/QC9N4y5M0@5iLX/Qybf2jE6_v/@Kqi8QZOyg?eyJZL/Wln//EA_r/UIUW2PU/Z8yuV8zjTq9>i8D2cs3Eyfr/@AM//3NY0i8n_3Uhn0w?glt1lA5lgoDlglh9yvi@mM>5lji8DXi8fIaezmZL/i8D5i8n0t0Z8yt_EJLr/U1Y0_Ztt3ZcyuvEF_r/Qydu07E_Lr/QO9VAy9N@wPZL/i8f4a4i9WAy9TQy9NBJtglN1nk5ugl_F9_v/MYvw<19yuZ8wYk1iiDvioR_0uyZZL/i8Duj8DWioD6i8D7WePS/Z3Nwg@04y9X@w_ZL/i8Rg_Qy9NQy912h8ylgA2eyaZL/i8Jk90x8yuV8yst8ysfEJ_r/Qyb32hcyvv6h0L_0ew6ZL/i8RU0uxtZL/j8DSi8D7W9bR/Z8ytZ9ysvEV_n/Qydu07EfLr/Qy9TAy9N@xPZv/j8DDi8D5WczR/Z8znw1W1_S/Zcyup8ysvElfn/QO9ZQC9NezpZv/i8DvWd7R/Zcyv_E2vn/Qy9NQy5M0@4Pg>8J7aax03Umi,G0hQpAz7h2go<ezMZf/i8RQ91yW2w>4y9XYs;4y9M@wlZL/i8D6i8J491x8euxQ2E0U07k5wPIytmV8yuUNM4ydfiEz?3ELvj/Qy3N2wNM5JtglN1nk5ugl_33NZ?4O9_AydfsAx>NMeynZf/cs.wYgEmRR1n45tglV1nYdC3NZ4?.wYgEhoDEj8Dxi8DGmQO9_BR1n45tglV1n@AxZL/A4i9WkO9UAO9_@yiZv/WXJcyv_E2fn/Qy9NQy5M0@57//QO9_Aydfk8x>NMewHZf/WV9C3N@4:NMcdCpyUf7Ug;6qgglp1lk5klld8wuMw0g?w_Y33U@g0g?w_Y1vyJ8ySU8cs20vg?i0Z4W4kNV8f_0Tkqj8JC4460f2g0j0Z4UeIbpwYvh>cuR5cuh8zngAkbY2,W0jQ/@5M0@5Z,4ybj2hoj8SQ99,.Kc_Tk@eBCYgwi6Bs9510gwY0ifvFic7VfQz1@wt8asF80tdcyvq///@zKZf/goD6xs0fxjc1?.qogAE,4123M.qoMAA,4123M.0UMAC,4w1Mkw3z2iE,i07pi8nJ3Ujs,i8RY91.zhlU8>LA<NM4y9v2g8Wb_P/Z8yTgA237ii8DLWf3P/ZdxuhQaHV<i8RY95.ytANM4yd5jQw?3EAff/P7ii8RQ951cyuvEMvf/Qy1N201?14yv1rnk5sglR1nIdC3NZ4?1czrgAA,37_j8DSW2rQ/@5M0@5zw>4xFx2iw,g48f04xFD2ig,g48f04w3D2io,i073i0es9aw>3FY_X/Sof7Qg?4ydfvAw>NMexqYL/grU1,WU5CA4y9PAydfqcv>NMezfYL/WmD/_ZCbwYvx:W1LO/@beeyQY/_i8QZRi>4y9Nz70W1fO/_HJV3E@_7/UIUW9jP/Z8zjQV7M?i8D6cs3EY_7/@KnA45klld8w@NMi8RQ913EfLf/QyddjEv?1cyO.yslcyuvEGvb/Un03Uh10g?i8QRa1Y?4O9V@yiYL/yse5M0@4O,4yddhIv?1cyuvEuvb/UD3xs0fx4Y1?.zjke7M?j8DDW63O/@9MUn03Uku0g?yQgA48fU0M@fogc>@4iM8?4ydfjMu?23@09R4Aybvgx8zgkI7w?w3Y0i0Z4@4yU9icyxeisYIJ8zlgA6ct491g<i8RQ91h8ykgA6ey_Z/_xs0fxoI>1cyQgA68Jc91h8znMA8370i8QlIxU?bVg,WarN/Z8znMA8ewcYv/WTxCbwYvx:yQgA48fU0M@fAM4>@43g4?4ydfqot?23@09R4Aybvgx8zgmm7g?w3Y0i0Z4@4yU9icyxeisYIJ8zlgA637Si8B491zEdfv/Un03UiQ0w?KM4>3H4MYvh>yTMA44y9XKxA_f/ysd8yu_E2L7/Qy3N729S5JtglP33N@;4O9VAydftYt>NMex7Yf/WXAf7Qg?8J49123@0cfzQc2>fxaQ1?.zjQ67g?w_w2th98yTQ8i8Q5ZxM?80_04wfhfwNQAydt2goNQgA6<3EC_r/Un03UlD//yQMA64ydv2gwLy<NM4yd5oAt?3Ex_3/Qydv2gwWeTL/_FlL/_MYvx:j8JB44ybvgx13Xo4980_?@5ww>4ydfocs?24M0@40w8?4yU9icyxeisYIINZAydl2goi8B491zE8fr/Un03UnI_L/i8Jc91x8znMA84yd5hUt>NMbUM,i8BY90zE1L3/Qybt2g8ct9cyuvEd_3/@Dg_L/pF.zjQh7w?cs3EcK/_@Cx_L/3NZ4?24M0@4svX/@C0//3NY0j8JB44ybvgx13Xo4980_?@4mw4?8j03UiR_v/pyUf7Ug;4yU9icyxeisYIJ8zlgA64ydt2gkNQgA5<.ykgA6exGZv/xs0fxjr@/ZcyQgA68Jc91h8znMA8370i8QlnhM?bVg,i8BY90zEje/_Qybt2g8ct9cyuvEvu/_@Am_L/3N@4;1cySkgi8JZ244fJwgAw3Y03Ujy,xc0fx5f@/ZCA37ii8RQ91z7h2go<ezIZf/xs0fxrzZ/@bj2goi8RY922@8,370i8QlSxI?4y9v2g8WdfK/Z8yTgA237ij8DDW0jL/_FDvT/MYvw<.zjQp7g?cs3E@KT/@BF_v/3NZ4?.zjTx7>cs3EUKT/@Bh_v/3NZ4?.yQMA64ydv2gwi8QlvxI?370Lz,3Eq@X/Qydv2gwWd7J/_FeLT/MYvg0.zjS16w?xc0fxqD@/_EJf7/@At_v/3N@;4ydfm4q?24M0@56v/_@Lu3N@;4y3X0x8yPRBew?Lw4>3E2@/_QybfjMW?2@0g>ezWXL/i8IZ4PE?bU1,WeDK/Z8yPQaew?Lw4>3ESeX/P70i8f42cc0YMYu@Ay3X0x8wYg8MM||!!!!!!!!!!!!!!!!!!!!!!!03,8M,4,6,44x4g0C508;8M>2s>346@RqGEecYsHvhTuF5lQKEBsWDa4Qqnk$]Yg>1%xw>.^4,2%E,1%Rg>.^yg4?.^ug>.^sM>.^nM>14^jM4?.^Hw>.^Pw>.^NM>.^qg4?.^w,1%pM4?.^dM4?1%pg>1%ww4?.%g>2%mw>.^Ww>.^T,1%_M>.^8M4?1%lg>.^s04?1%rg>.^ng4?.^b,2%BM>.^hw>28^J04?1%3M4?1%QM4?1405M2wkw:3[zw4?.0101M5g:4Y}Vw4?1405M1wkw:3[Jg>.0101w3]6c2]M04?1405M3wkw:3[Ew4?1405M0wkM:3[05ZvpSRLrBZPt65Ot5Zv05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFB071Lr6M0sThxt01Pt6hFrw1Urm5Ir6Zz06pLs6lK06pOpm5A06pBsD9Lsw1UpD9Bpg1vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0sThOoT1V069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvondPrSdvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUNd017j4B2gRYObzcP04tcik93nP8Kcjs+,1?8?g01?8?w02?8?w03?8?w02?8?g02?4?g02?401?5?401w01?8?g02?8?g02?8?g01?4?g01?4?g01:1?k0@04?1[K96m1w?1w020w?4,9ihBwo>k03g8?1,2PApo6>401w2>g,BV6m1w>M0z0w?4,7kqqgA>80bw8:38jg]w}s0k:3gjg]w}c0k:3ojg]w}S4Q}kg]w}gz}8kg]w}638]gkg]w}gz}okg]w}g38]wkg]w}M3c]Ekg]w}y38]Mkg]w}Q38]Ukg]w}@38:10kg]w}g3c:1wkg]w}gz]1Ekg]w}u3c:1Mkg]w}gz]1Ukg]w}E3c:20kg]w}gz]28kg]w}W3c:2gkg]w}e3g:2okg]w}gz]2wkg]w}o3g:2Ekg]w}G3g:30kg]w}gz]38kg]w}U3g:3gkg]w}gz]3okg]w}23k:3wkg]w}m3k:3Ekg]w}Q38}kw]w}gz}8kw]w}G3k]gkw]w}gz}okw]w}Q3k]wkw]w}63o]Ekw]w}gz}Mkw]w}o3o]Ukw]w}I3o:10kw]w}gz]1wkw]w}pz]1Ekw]w}Y1]1Ukw]w[54:20kw]w}DP]2wkw]w}mz]2Ekw]w}Y1]2Ukw]w}o54:30kw]w}KP]3wkw]w}jz]3Ekw]w}Y1]3Ukw]w}M54}kM]w}S3}wkM]w}gP}EkM]w}Y1}UkM]w[58:10kM]w}23s:2wjM]o,3{2EjM]o,9{2MjM]o,z{2UjM]o,B{30jM]o,k{38jM]o,D{3gjM]o,u{3ojM]o,w{3wjM]o,E=0k}s,1=8k}s,2=gk}s,4=ok}s,5=wk}s,6=Ek}s,7=Mk}s,8=Uk}s,a{10k}s,b{.k}s,c{1gk}s,d{1ok}s,e{1wk}s,f{1Ek}s,g{1Mk}s,h{1Uk}s,i{20k}s,j{28k}s,C{2gk}s,l{2ok}s,m{2wk}s,n{2Ek}s,o{2Mk}s,p{2Uk}s,q{30k}s,r{38k}s,s{3gk}s,t{3ok}s,v{3wk}s,w{3Ek}s,x{3Mk}s,y=J079y07hFrmlMey1LtngwrSowrmlJrT9V07hFrmlMey1Opm5A86lOsCZOey0BsM1ComBIpmgwt6YwoT9BonhB865OsC5Vey0BsM0BsPEwrCZQ865K865OsC5V06tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM0Br6NA02lIr6ga06tBt4dglnhFrmk0t6BJpn1vpCVScm40t6BJpn1voT9zcP80t6BJpn1vq65Pq01QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0Uu?Bc3xUbikMcjpIr7w0t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt07hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ0t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng,1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD[1QqmRBs3EwpC5Fr6lA87hL86ZMpmUw9OlP9PEw9nc?6BKtC5IqmgwrDlJpn9FoO1FrChBu21CrT8wqmVApnxBp21xsD9xujEw9nc;6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP?1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK;19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK]pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng=?1<w,c,4,8<k>17jBk?g01M0g,9[8?s04<M}16McXl<A>10O/_s,13e/@o,Ac/_WM<Qv/O,13i/_s,Ydj/OM1?1wR/_S04?83p/Yw0w>dX/Rw2]5[1uB8?nwg0hIc1Myg0g?9,1M>38OL/?8,e44oe64Ef2Ts8w?_6zIGcOgy<1,14,scT/TY1]6,5w>3sPL/pw4,3bM4e48c2twU801,1Q,cd3/ME1]j,8w,IQv/Tg8>123x2f0A8e68U3gwUwzgh23yyc1k4ec8o6h0UUwMt73E020Y412wUUh0UMggUEgwUwgwUogwUggwU8ggI>2E,S,bPj/Zz0w>4Ie48Y2gwUozwd23y2d14kea8M5igUMxwp13zy31Qseo7Ma3zxaMMUMgsoea4bc3y12PgUogIUe44bf3wxc2Md70gEee4cec44ea48e848e648e448e24kblMEee44ec44ea48e848e648e448e24sbh0Eee4H33z14NwUEgIMe84bd3xx2PwUggIYe24ob0A0e2cf6PcTePM?h,8g1?20Rv/7M8>123x2e0A8e68Q3gwUwz0h13yy61k4ec8c6hMXg0wcT0gEec4gea44e848e648e448e24sb,d,cM1?1oR/_ugg>123x2c0A4e68o3ggUwwMh43F010U812wUwgMUoggUggwU8i0I,k,108?a3r/Zf<4ge409a3ww|![>s0k]M1g:dxd}g]3U0g]M}B08]d}c0l]6g]38jg:1I}2[q}d1d]7[8}fn@_SY;2}5}1wA]1w]108}E}ew8]b}1w[M]3EjM]8}W08]k[s}5M]3ob}s}22s]8}d05]2g}o}fX/SY<G2o:3/_ZL;4}Yf/rM,1i9w:fD/SY<dg!!!!![0e1d$co2]Rw8:3C0w:fo2]1wc]m0M:2o3]dwc:160M:5o3]pwc:1S0M:8o3]Bwc:2C0M:bo3]Nwc:3m0M:eo3]Zwc]61]1o4]9wg]S1]4o4]lwg:1C1]7o4]xwg:2m1]ao4-12c]1wO]gz]10cw:c0P]y38:3gcw:fwO]g3c$[12c]7wP]gz]2wcM:48M]W3c]Ud]48M]o3g:2Ed$12c]e0Q]gz}8dg:5wR]Q38$gz]2Edg:48M]Q3k]odw:48M]o3o:2Mdw:48M!pz]3M4}4[54:2vc!5EM]Y1}1}61h]KP!1ec]f0g}g]30kg:dwM!gP]3M4}4[58]8dM-hQd3ey0EhQVlai0NdiUObz4wcz0Odj4Mcz8wa59Bp2.ongwcjkKcyUNbjcF,2,1:g?hQ4A0jdxcg301]c04]2,1:g?hQ4A0jdxcg2k0w:aE2]2,1:g?hQ4A0jdxcg305g:cwl]2,1:g?hQ4A0jdxcg301]7A5]2,1:g?hQ4A0jdxcg2_5g:bYl]2,1:g?hQ4A0jdxcg2_5g:bYl]2,1:g?hQ4A0jdxcg2G0w:aY2]2,1:g?hQ4A0jdxcg385g:cQl!0g,g0YvY*3g,8010301)3M,80103M1)8w,801?M1g-e<40601wkM]4}h<404w3gjg-qM,80101M1g-tM,404g38jg&g0YvY*Bw,8010201g:7Y1]Fg,40602wlM]g}Mg,40602wkM}4]QM,801>1M:6o1]V<406020kM]w}Zg,80101M2}E1]204>8010202g:dQ2]cw4>80103g3w:1Y2]gw4>80103M4]7A4]k04>405M?kg:5[nM4>405M1wkg:5w}rM4>405M30kg:3w}vM4>405M?kw:5[zw4>g0YvY*C04>40403weg&g0YvY*Fw4>801g305g-H04>404M3ojg-Kg4>40503wjg-Mw4<3M1MdM-Rg4>405M1gkM-Ug4>405w3EjM-Tw,8?w2k0w-ZM4?1%1g8?.^8w8?2%fw8?1%j08?.^nM8?.^s08?.^wM8?.^Bg8?14^FM8?.^M08?1405M2wkw:3[QM8?.0101M5g:4Y}VM8?.^@w8?.^3gc?.^a0c?.^80c?1%9wc?.^eMc?1%kMc?1405M1wkw:3[pgc?1%rgc?.^w0c?.0101w3]6c2]Awc?2%Egc?.^Igc?.^MMc?1%Qgc?.^X0c?1%?g?.^4gg?1%8Mg?1405M3wkw:3[dwg?.^i0g?.^nwg?2%u0g?.^zgg?28^G0g?1%J0g?1405M0wkM:3[Nwg?1%06dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP05Zvp6ZvpSNLoC5InShQrT9PnS5Ru01zrSRMr6lQpmgKc01vnShLnStIrS9xr5ZAt6ZOsRZxtnxvpCBKqlZxsD9xulZBrDhOug1CsC5JplZAtmRJug1vnSpOomRBnShRrmRVnSBKqnhvon9OonBvpmVQsDA0t6BJpn1voT9zcP9vsTs0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBKqng0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZzsCcPcBZEtRZUe3o0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB05Zvpn9OrCZvr6ZzonhFrSV+0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT80sThOoT1Vg4tcik93nP8KcyUR071Rt7d+0pClOsCZOg4tcik93nP8KcyUR06pOpm5Ag4tcik93nP8KcyUR07dQp6BKg4tcik93nP8KcyUR06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1QqmRBs5ZzsCcPcBZPt79RoTg0sSlQtn1voDlFr7hFrBZQqmRBs01CoSNLsSl+0sThOr6lKg4tcik93nP8KcyUR07dQsCdEsA17j4B2gRYObz8Kdg1UpD9Bpg1PrD1OqmVQpA17j4B2gRYObz8Kdg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1QqmRBs5ZEondEnTdQsDlzt01Urm5Ir6Zz07dQsCdJs417j4B2gRYObz8Kdg1yqmVAnTpxsBZLsBZxsD9xug1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0rmlJoT1Vg4tcik93nP8Kcjg0oCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01yqmVAnS5OsC5VnTpxsCBxoCNB071Lr6N+0rm5HplZytmBIt6BKnS5OpTo0t6BJpn1vpCVScm5vsThOtmdQ06pLs6lKg4tcik93nP8KcyUR06tBt79RsS5Dpk17j4B2gRYObz8Kdg1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB07dQsClOsCZOg4tcik93nP8KcyUR05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KcyUR065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ069FrChvondPrSdvtC5Oqm5yr6k?2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq?Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bD9Lp65Qog0KrCZQpiVDrDkKs79Ls6lOt7A0bClEnSpOomRBnSxAsw0KpmxvpD9xrmk0bCBKqnhvon9OonA0bCpFrCBvon9OonA0bChxt64KsClIbD9L02VAumVxrmBz02VDrTg0bCtLt2VMr7g0bChxt640bC9PsM0KoSZJrmlKt?KpSVRbC9RqmNAbC5Qt79FoDlQpnc!![1I,7<w]1M0w:702]9*g(K<g,o}B08:2k0w:1I(4(xg,4,6}b02]I08[w-4[g}3g,1,1w]301]c04]_N)2*W<g,o}M1k:305g]Q(4(g,fr/SY2[0w}2}Y[s}2(4E,b<w]108]40w]S0c]8<g,w}6}1i<M,8}62g]o9]3E2)1(mw>f/_SY2}58C]kyo:1i[s[w}2}6s>3@/ZL0w]2E9w:awC]o[8<g,w)1S,1<8}22s]89M:d05]1M}8}1w}w<g>12}dwI]S2M:3E0w]s,m,2[o}8E,1<w]30bM:c0L]w0s-1(2i,1M,8}g3s:10dM:3*8(Fg,4,2}70T]s3s:1k(1(bc,1<w]38dM:cwT]708)w)2Z,3w,c}O4Q:38fg]w(8[w}Og,Y,3}d1d]Q3Q]8(2[8}dk,1<M]3ojg:dwZ]2*w)3y,1w,c}U4Q:3wfg:c01]2[8}1[WM,4,3}a1f]E3Y:.(2[8}f<1<M]3EjM:ew_]404)w}2}3V<g,c[54}gg:502)w(_M,w,3}61j]k4c:.1)8*g1>1,c(513]bw(4[g}d0g?1M{G7s:20gM:201)4*g,8^E4g:3o1w:1M,x,2[o[A,3^7xb]Swg)4(h<M&1ik]2c1)1('
;;

'aarch64')
b64=$'145872 72936\nmd5sum:e41cbc2ffe40fcf13f0f56b58f8e1ecf\nsha256sum:3f3d74b244970882d624ca755cac494856c9ee5bc839226c3c2213cdc2f2ca5a\n0497C7PVe@ws_r_@7L4X6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCV17PVemws_rO6sLkUW73FKg1Y@jBE7fSY\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n0000000000000000\n000000000000000\n00000000000000\n00000000000\n17gig1cS4N\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n000\n0g\n00\n````````````````````````````````\n0i]818]w4w:2\034vQlchw81.=0c0JM01+1[awl.=4?e?704?7g0s?4,5`[j34:1ccg=g:g,o>30_g:c3Z.;MfQ1;1g1g:7w9=1:2,1w>dzZ]SfQ1;3o_g4;c01]M04]8[g,4,O04:38.:cw1]9[A[g}kelQp.>1gbw:50K]k2U:1A}6g}1}1hVnhA1w``<g}5bBt6g4,MfQ:30_g4;c3Z.;g08:1?w]4}1,1g,3,hQVl?9ZXZjQ@Y6UafcNVKgom3vKaw7H;c,C<g,o,gi4h02ok0w;C,aw>cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg`(M09>i!M0m01010w)3Q,4w#3X,4!3o,4w!g,8!2G,4!16,8w#1p.?4w#26,4w#1N.?4w#2U,4w#1J,4w#2<4!11.?4!1l,4w#1B,4!1v,4g#2x,4w!1,8!1q,4w#3C,4`9.?4w#2j.?4w#1D.?4w#2c.?4w#1P,4w!J.?4!3h,4w#1W.?4!3v,4w!I,8!1P.?4w#2g,4w#2@.?4`p.?4!1V,4w#3t.?4g0m08020w;c}2o.?4w0b>C]l}3M.?4g0m05020w;c}2_,4w0b0e0q]h08:3a.?4g0m0b020w;c}2I.?4g0m0e020w;c=nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0s6ZIr01Pt65Q07dQp6BK07xJomNIrSc0pCZMpmU0pD9Bomg0pClOsCZO07xCsClB06tBt65Ru7pxr01vnSlOsCVLnSNLoS5QqmZK07dQsClOsCZO069RqmNQqmVvpn9OrT80pCdIrTdB069FrChvtC5OnSZOnS5OsC5V07dQsCdEsw1Pt79IpmU0sThOoT1V069FrChvtC5Oqm5yr6k0rmlJoT1V06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvondPrSdvtC5Oqm5yr6k0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn?s7lQsM1PpnhRs5ZytmBIt6BKnThFrmlM06tBt4dglnhFrmlvsThOtmdQ065Ap5ZytmBIt6BK07hFrmlMnSpKtz5xnTdQsDlzt01QqmRBs5ZzsCcPcBZPt79RoTg0t6BJpn1vq65Pq5ZPt79RoTg0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObz4T=2?4?w01?4?w02?8?w02?80.01?80.02?80.03?401?2?8?w02?4?w01?80.02?80.01?80.01?40.01?4,1?c?w8?1[K96m1w?1?c0w?4,behBwo>c05M8?1,2nApo6>20282]MfQ1:31]40l]OfQ1:31]eMk]QfQ1:31]d3Z.;4042:31]awC]6042:31]bwE]8042:31]awC]a042:31]e0E]c042:31]60G]e042:31]2wF]g042:31]70F]i042:31]9wF]k042:31]e0F]o042:31]awC]q042:31]1wG]s042:31]awC]u042:31]40G]w042:31]awC]y042:31]8wG]A042:31]dwG]C042:31]awC]E042:31[H]G042:31]4wH]M042:31]awC]O042:31]80H]Q042:31]awC]S042:31]awH]U042:31]fwH]W042:31]70F[82:31]awC]2082:31]4wI]4082:31]awC]6082:31]70I]8082:31]bwI]a082:31]awC]c082:31[J]e082:31]50J]g082:31]awC]k082:31]4wE]m082:31]6Mv]q082:31]1010w;s082:31]awJ]w082:31]1wE]y082:31]6Mv]C082:31]6010w;E082:31]cwJ]I082:31]ewD]K082:31]6Mv]O082:31]c010w;Q082:31]ewJ]U082:31]dwD]W082:31]6Mv]@082:31[20w]c2:31}wK]EfY1:11>1w+GfY1:11>2-IfY1:11>9w+KfY1:11>a-MfY1:11>4w+OfY1:11>5-QfY1:11>aw+SfY1:11>8-UfY1:11>aM(2:21,M+2?2:21>1-4?2:21>1g+6?2:21>1M+8?2:21>2-a?2:21>2g+c?2:21>2w+e?2:21>2M+g?2:21>3-i?2:21>3g+k?2:21>3w+m?2:21>3M+o?2:21>4-q?2:21>4g+s?2:21>4M+u?2:21>ag+w?2:21>5-y?2:21>5g+A?2:21>5w+C?2:21>5M+E?2:21>6-G?2:21>6g+I?2:21>6w+K?2:21>6M+M?2:21>7-O?2:21>7g+Q?2:21>7w+S?2:21>7M+U?2:21>8g+W?2:21>8w+Y?2:21>8M+@?2:21>9(42:21>9g+fOc3RvRXLWDZ0M2hBg?BfRXMqy_8MflM0dvRw,3MuX@FY>Q17@h_AgUz@h808vRxYw0Zkv80fl7O03Rv>f0h0A3V4080Ai027ZrM?3M4gp0@h0y094w0x_mY>Y14agfAggw2h808vRL>f0h3A3V4680Ai027ZrM?3M4h90@h22094w0x_mY>Y14mgfAgEw2h808vRL>f0h6A3V4c80Ai027ZrM?3M4hV0@h3y094w0x_mY>Y14ygfAg0w6h808vRL>f0h9A3V4281Ai027ZrM?3M4iF0@h120p4w0x_mY>Y14KgfAgow6h808vRL>f0hcA3V4881Ai027ZrM?3M4jp0@h2y0p4w0x_mY>Y14WgfAgMw6h808vRL>f0hfA3V4e81Ai027ZrM?3M4k90@h020F4w0x_mY>Y156gfAg8wah808vRL>f0hiA3V4482Ai027ZrM?3M4kV0@h1y0F4w0x_mY>Y15igfAgwwah808vRL>f0hlA3V4a82Ai027ZrM?3M4lF0@h320F4w0x_mY>Y15ugfAgUwah808vRL>f0hoA3V4083Ai027ZrM?3M4mp0@h0y0V4w0x_mY>Y15GgfAggweh808vRL>f0hrA3V4683Ai027ZrM?3M4n90@h220V4w0x_mY>Y15SgfAgEweh808vRL>f0huA3V4c83Ai027ZrM?3M4nV0@h3y0V4w0x_mY>Y162gfAg0wih808vRw^3w?3g0eh7@k>biR__YnM0dvRxYw0Zkv80fl7O03Ru>f0.0OhUg?Y250394_?3HM>le4?d0xQ4vVog?Jf030qE?x_mM0dvRK>f0.0OhUg?Y250394x?3b8LN_QQ4cwoIx_46jMg?Je8?d12X4vVow?Jf030GE?x_mM0dvRzYz0ZnZuXWF_gc0Avcb0fDP?3Mo49cek0103vw?3g0dh7@o>bjw?3g040TAlD__Vvo__@n8020kC1233DP2Q3V_nL2GbYz0Zn?R_m7O03RlYA0Znr__Yn7O03RhYw0Zkv80fl7O03RhYw0Zkv80flVg?Yai0396z84eV0M80dc810biBw0Oh9?2y@c30qGyg02hUgcwaC0kg3w>5a01N0AA1Uobw1845aDM03WQ7__Rjw0O4GM0dvRwo?b03?2Mfwg0jZSgMPSs101fvUP3fod?964g12hVxY@jLE7fS__xXNeNFOZjJEseCV57PVemws_rWmsLkWW73FKh1Y@jBE7fS@4DbReCxMWrAcvfAVq1PZLoVOZjDEseCV27PVemws_rQasLkVq73FKghY@jBE7fSYxDbReexMWrA0vfAVq1PZL09OZjxEseCVr7PVemws_rTKvLkVW7PFKuwi1f7Y01eKx@_ZkLy03Lsj__Nvw0O0GnMM0YmA305gC403hwM20QxYw0Zkv80flN6xzKek30WFz402h04z46BY?@Jy__ZknM05WWA105gAq6kUEMg0Ag10N1Fv?fH2g40l2dEoPyB202h04336HY?KJy?1k8mxBe010MhHw0O0GM0dvRwk0wdbL__Yn_nKMGvQ3097PkM6FYMc0GLlr0GDToMeF@Tc5GvM30qE?40VUzs0@h@Q07512w1ko0p0eg0a03ny?3Mgo0cAk0wgXD01g0R0M?I,b0@101fvp33fpM404YvzccZ84?Ai5~0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCUq184YfM?WW7X_Rhu80eZkU0cAm0agLB04g2Q8M30QK3z0p42081i8g20QKc_0fD1_L@n7M?smQ?5jw_Q1VM0U0dNc?b1PMxChU0cjGK430F7c_L@nZMc0aI.03jx?3g8u17@i?Ed8R043VJvX_B_I30aFw4g2QdM20kLBH1aAd>kU0cjGw4?b0xU1ChDfX_B_k30aG04w2Q802wQGz@_VvX0M2Gw0Y0J1s0w5bVqMiFISi4QBe4If9WdE3iAVPjYKc35qHw0NKGZw?Y1w?90y0a3i8g20QJq23970_L@n68clAvA30aFjvLDO5020kxEwMfb?w2QMMF2@gc50bjw0NgGUwcpGK436WFw03_mowcpy_g302Hx0NKG81h0e1c04YFPvxGrfM02WU7__Rjz0NmGU0crGy80Ed8x083iF_X_B_A30aG0_v@RU0clGIv@_VvS0M0GU0crGxo303lH_L@n5Mk0d5M?bik0M2VU3t0@u090bgj?3VU0cmaLBHhaDPkQ6FZlJ2GvtzgWDXsQmF_nLgGc03nZo?E3ii_X_BMc?90v07DOoV0pAmcgC9H32wbVQL__5Rj@_Vsn1g0QDLX_BM0.bAS081in_X_B@430aE>2M0a0rAi_@_VvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRK035qEV_L@nR___5@4?d0xU4vV802wQzs0w58R043VhLX_B_I30aG?M2Q@mI4Gp___Ns?E3i9fX_BM8?90v07DOgE0lAg4?90wA1Ch0122CC0a0LBK__YnU0clGyb@_Vvn__YnU0cjGw4?b0xU1Ch8vX_B_k30aG?w2Q802wQyT@_VvX0M2G0fT_Ju035qEl_L@n,I3o0w58.1Kh_vT_BY___NvVqQiFU0cmaLdjgqDRmQaFZSd3GvJPhqDZuZ2EM0dvRw>b0S081i>qAv3Z_Vv2__YnlLX_BM0.bAS081i5_X_B@830aHx0NeG,I0306F7C_v@nKf__5@0h0bjZuXGF_gc0Avdj0qDP0M2GZlI2Gvk30qFx2U1iZSc3Gvw30yEO_L@nZ0c0GK>bjw0NeGQLT_BS0208I0Y5YU7Tg1su0105jw0NmGPfT_BM04097S_v@nUgclGyP@_Vvy0NwGUgc0GLlrgGDw0NeGZSd3GvdjgqDZuYqE0fX_5U824YLy9M3Vg.0AuzZ_VvS0M2GUyt0@u434WGj1w2hH_T_B@8DgfDw0NeGTSEyebfZ_Vsk103hTvT_B@434WHP0M2GUwckGGnZ_Vvw0NqGvSEQeaHZ_Vs0102hRfT_B@435GEa_L@nZMc0GK034WGz_v@n0.0AsTZ_Vvx0NeG0_X_B_g30aHw0NmGDfT_BM040976_v@nUgclGLPZ_VvR0M2GU0cmGHnZ_Vvw0NeGI_T_B@035WGd_v@nU0o0J04EgbD1130TogcgdLYL0fDT_v@nYMc0GA81w5bxoM6hU0ckGDY20bD9_v@nUyZ0@lY05eL>1kgw10eo8?3lx0A2VfUw0ss4305jx0NiG,I020795Z_v@n?20QLdjgqDRmQaFZSd3GvRXNGz?R_m,Ie435WE.1Shs_T_BM?wdbPkQ6FZlJ2GvtzgWDZuYqEM0dvRKg362Hz0NmGUwckGK435WHPkQ6FZlJ2GvtzgWDZuYqERfT_5@430aHz0NwGUwclGK035WGP_v@nXv__5@035WFY_v@n0fD_Ju435WE>2M>sAlvZ_VvA__Yn?20QI03nZrZuWGF_gc0AhYc077I3g1kYRc1Gvsr0fAv101NPgk0l3c4gfAk083iow90elY?75P4F@q7MM0si4505gQ243VUkc2Ao02g3Av?1Ng020kFgiDVF6_v@nE.0de530V4?81iUic0@o7Z_Vu03g0RUxtdGgd8ydbw4QWFUM6wYK4zgfB250er?w3CNs018I?80itLT_B@g302G01?QA_T_BM0.bBl_v@nUgc0Gw>b?E1Wh9vT_B_djgqAA081iZNJ0@u0312HZuZqEM0dvRxc0wd8k083iUkc2Ak?w58y_v@nEfL_dugbiqDw@pXio6GYYwd8ydawtdfOUM6wYE0oVfbxgMehg7N0CM3YhVc2_8bb?204Fs80VJj_v@nV0c0aI3X_Pnw5QSF0ky8QKcbjGDx0q3O01g1CSc?pJz?aboM0nyPc50bg5?2MFi0vAu831qE1283iU4c1Auh30bDB9M3V2fT_B@530p7w0NeG0w20kyjZ_VvAgQ2VR080Je8DgfDz0NuGU4c2Ag48wdbAgM2V_fP_B@530F7w0NiG0w20kxzZ_VvAgQ2VZNJ0@u0312HPkQ6F_nLmGc03nZo>2M0a0tAt_Y_VsA081iLf__5_srgfDw0MgGYRd1GvRXRGz?R_mUgc3Gw>b0.1@hV4c0KjvZ_VvAgQ2VZNJ0@u0312HPkQ6F_nLmGc03nZoQ_v@n?10KvrY_Vvx0M2G,I?w7F76_f@nZNJ0@ig0w5bPkQ6FEv__5_RXJGDZ0M2hUgc1Avdj0qDR4M3V6fT_BNg.fDR0M2G.?I25w7V7w0NiG0LT_BM0a03jw0NiG.?I26w7V7Z_f@nYMc0aG0503jw0NiG.?I25w897T_f@nYMc0aG0a03jw0NiG.?I24w8p7N_f@nYMc0ay0903nwgQ2V7MM0suMp05hw4M1k7Mw0sg4h05iw1A3V.?A2706p42040VnM?si?w9Gzp8jiUyc1Ake4Ifbx4M6hwVPjYLZ70bB3vLDOUOs0@qHZ_Vs01?RV2t0@g8?93zhQ2VgG0yAg4awdbwgM6hBLP_B@130p78_f@n8w?5e13gbAv301NP0M0la0805gv201N.M0la06gfA1?2g8s0pAg8.3Bv?1N8020CGdAxdby8M6hgUiMYw40wda3DdfOgTXVYKcD0fCb_v@n80M0d3c0w5bw0NmGx_P_B_kjgfDw0NcGYRd1GvRXOGz?R_mU4d0Ku435qEg__@nYMc0aK035qFY_f@nZhd0@u034OHPkQ6F_nLaGc03nZrx0NiG,A3c0w580U26hlLP_B@D__NvwgQ2V7MM0ssMg05gw3g1k7Mw0sq4705iw1A3V.?A2706p42040VnM?si?w9Hx8M6h0w20QLZb0bBx_v@nUfH_dudbgbA2?2ggE0yAg44wdbwgM6hjLP_B@130p60_f@nSL__5W3igaA1040Vww90eg4503k>2g0c0pAs8s03izp8jiUyc1Ake4If81083iwVPjYAd@@vbz9M3VifT_BY3T_Pnz9Q3VV4c1Au031aE11E3i0w?A49w8F7A7M3Vc_P_B@4vgfDw0NiG0w20kA_Y_VuZ__Yn,A0306p6B__Yn,A3c0w580U1@h5_P_BWH__Ns>2g0c0pAnT__Ns>2g0c0pAsz__NsyY_YQS___5@cDgfA2?2ggC0yAg46wdbwgM6h6fP_B@130p5a_f@nFf__5W2mgaA1040VEw10ek4703h2XvYQESi4QK8z0p53xb3OUhc1AoesQ_bB7M3VgTXVYLZ70bDz9M3V4LT_BM3N_PnA9Q3VU4c1Aud7gbA12E3i0w?A4aw8F7@@_@nU1Z0@u530p42081i6LP_BUz__NuwQA2F.10eo82g3Dx2M0QwLf_de4z0p42083i_QI0KvPY_Vt0XLYRUQJ0Kuh30p7w0MiG.i0Qw8?912w2ahV1Y0@uvX_Vvx7Q3VU0ckGw80w583_f@nsv__5M>90P081i060xAsXX_Vtx__Yn,A3c0w580E22hOvL_BRP__Ns>2g0c0pAsbU_Pny?3ggo0cAk0wgXD01g0R0M?A,90@101fvp33fpM404YvzccZ84?Ai5~0DbRe6xMWrBIvfAVq1PZLuV@ZjDEveCUq184YfM?WW7X_Rhu80eZl80cAo0agLA0VL@R?a0QFLX_Vvy___M7M1VYAa05p7x___M890pAg.wFG02wbV9L__5M>9?M1Ch8Lj_du8?d11w0Ohg213Kq3Z_Pk3?2g,A3w404ZTAccZBwg0jNCcMPQwg02h8k.AhYw0Zkv80fl7O03Ri4ve4UQ1PZLeouSjy6sJQUQ73hKw1UUjFg6fSY0Dbte51MQrFcue4Wk1zZLsVWTjDgud6Wi7zxeB0o_rRauJQVk7zhKAhUUjFg6fSYNDHted1UQrF0ue4Wk1zZL49WTjxgud6W77zxeB0o_r@usJQXQ73hKBhUUjFg6fS@RDHteJ1UQrxg4wjMv?7HEvL_l5ww0XSY__YnUw?Q460395084eV0fv_dgc?9,2gfwg0jTSgMPSs101f7UP3fi1?94xg12hUhY@jLE7fS__xXNe8pOZjzEseCV07PVemws_rM2sLkUq73FKhxY@jBE7fS_6DbReSxMWrAkvfAVq1PZLFpOZjHEseCV47PVemws_rUisLkWq73FKgNY@jBE7fSZzDbReuxMWrA8vfAVq1PZLgFOZjBEseCVr7PVemws_rTKvLkVW7PFK6wi1f1Y?uKx@_ZkyL__5NYw0Znw?2M0f17@vRXLWAx081i_gc0AofX_Vvw?2M0ex7@i40w59_@_@nU>I03oh_Ax081iu_L_B@>b?T4vV8g20kDvX_Vs?81i_nL1Gc03nZo_8Mfl_nK_GvQ3097ZuY6ELOc3Rs03nZo<bg]1Oow:7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis[7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA<t6BJpn0W879Bomgwpn9OrT8W82lP,pC5Fr6lA87hL86dOpm5Qpi1xsD9xujEw9nc:1FrDpxr6BA86VRrmlOqmcwqmVApnwwpCZO86BKp6lUpmgwon9OonAW82lP:BsPEwrCZQ865K865OsC5V[1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM;pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA<2lIr6ga,pSlQgR1lt6BJpg:7hFrmlMnSpKtz5x;1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO;1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw:1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M;9j0NdCNIu?Bc3xU<2kMe7wJ9j0NdCNIu<1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt]gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw:4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM[20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw[lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ;4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK<4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM<820w86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw?lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK]imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw[imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK;19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK]t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt;1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt<7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ<pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng(1<w,c,wwXzJ88eUXi23KeQwwXzJ0hI3eSg,b,cer__TM>1wVL__A,9PC__@A,Yer__YM,gV___U,1jE___Q,Aez__Mw1?2gXf__M04?djK__YI0w?7f7__W02?2MZ___S08]g[5Wkw04u1U16MMv01<o,Hen__P[4,2M>38Vv__f[A,g,f3B__Zg<44JggUwDgiu0Qaj0AXuTtce044J,4,6w,sVL__2[g,v,2zC__Y4.:1,2g,6ev__TM}J,ag>20V___0.>113E02Di2u7Qaj7Fgth9ksBxKn6FwpCNqs5g9l2FEnChx12QOq5VAotgHqSknuTtLsRZzlRJfk3w112RfqSkruTtLsRZzlRJfk3w113E02ANWk7pksBxKn6FwpChyq5VImD1mt89UvgZDqipEnChx1StFaChyq5QfpSB6p69EngtHphJXtSZPnSdnmQZge044ew0aj7FgtBhOm6VsqC1Cr5FMlDi2u7Sw>1s.?OeH__Qg2,gwVwDgOu2Qaj2Fg9gFk8Bwt3BMqo1lsaTJTnSdnmQZge044b0AMaTJTnSdnmQZge044bigHuTtvoRtrjR0U.gJ82JXtRZzlRJfk3w112QUe0dfkRtrnSdTu07,38.?EeP__Qw2,ggXw0FQIDyJ4B2CjaA6n9CHkQQbngJXt3w113K02AOGkapsCDiOuaTDngJjjgtXt3w113K02DiOuaQmjaFgFBOp12Jt2Rdd1TJQe044bhMHngJjjgtXt3w112QzngJjj,d,3M2?1QXL__A0o>113G01Dhiu4Qij4FghBh02lwHuTtnjR0U.gJa2JXtRtfk3w112M0s,t08?d3Q__Zk<4ce49Q2Dw5hTJQe///////////////////////////////////////////////////////////////////////////////////````````````````````````````=?40l]X1g:3g_g4:4[w8]c=i]3g]1k9w:1A}MfQ1:r[w}6w]38_g4;1M}2}3R_LZL<f01]1g]1g1w]o}c08]a}2Q2]2M}o[c}WfY1:2}1w3]5[7}1s}W0U]7}1w9]2}3g1g]A}6}3@__ZL<dw8]____rM<1}f3__SY<vww:3V__ZL<3k````=3o_g4`````,2||||||||||0i]818]w4w*G2o:2Ua]awC]U2w:1waw:2wF]s2A:2oag:e0F*2E9w:1wG]G2o:10aw:awC]y2E:3oaw:awC}2I:18aM`?2E9w:80H]G2o:2EaM:fwH]s2A`>G2o:18b]awC]s2M:2Ub]awC}2Q:1gbg:awC*18a]6Mv}g}g.8;awJ&oa]6Mv}g]1w.8;cwJ*3E9M:6Mv}g]30.8;ewJ*3o9M:6Mv}g=w8:wK*17gQcW82x7jBkF834Rbz8Kci0Oc38Rcj0Ocy0EkClA84xxt20NdiUObz4JcOA,8,4;1?{060k]t1g]8,4;1?{>i]418]8,4;1?{05gC]o2o]8,4;1?{080k]i1k]8,4;1?{05gC]l2o]8,4;1?{05gC]l2o]8,4;1?{010i]718]8,4;1?{060C]r2o`^M010cw1!M020f01!M030302!M040506!M0507U8!M060dw8!M0701w9!M080ewe!M09>i!M0a020i!M0b060k!M0c05gC!M0d070C!M0e050K!M0f0bwK!M.0c3Z.$M0h0czZ.$M0i0d3Z.$M0j0dzZ.$M0k09z_.$M0l0ez_.$M0m01010w$M0n01030w$M0o`>M0p03w70w(1,103N_M%8:b060k&b<w0b060k]5[8:9>i&8:c05gC&o,103N_M%8:9010i&8:c060C&v,103N_M%8:b080k&H<w0b080k&J<w0b0b0k*1]i0d3Z.)13<w0b0eMk*1p<g0n01030w:g]1]h0czZ.)1B<g0h0czZ.)2c<w0b040l*1]g0c3Z.)2o<g.0c3Z.)1]f0cMK*1]n01030w%0103N_M%8:b060l*2T<w0b060l]104:36<w0b06gm]v}1]d070C*3p<w0b0e0m[g]3.>w0b02gt]i08]j.>w0b06Mv]A0o:1]d030K*1]n02030w(x.>g0n02030w;1[Z.>g0n03030w]g:1f.>g0n03070w;2}1]m01010w)1w.>g0m01010w;k}1L.>g0m06010w;m}1_.>g0m0c010w;e}2f.>g0m>20w;k}1]f030L*2u.?103N_M^1]f04wN*2E.>g0f04wN#103N_M^2S.>w0c05gC*2Y.>g0i0d3Z.)39.>g3N_ZzZ.)3i.<e050K*3B.>g0m01030w)3N.>g3N_Vz_.(70w>w09>i&8:a020i&d0w?4w!v0w?4`J0w?4w!_0w?8!1r0w?4!1F0w?8w#230w?4w#2s0w?4g0m08020w;c}2L0w?4w0b>C]l}330w?4w#3o0w?4w#3I0w?4w#3@0w?4w!f0M?4`l0M?4`J0M?4w!Z0M?4g0m05020w;c}1f0M?4!1n0M?4g#1E0M?4w#1Y0M?4w0b0e0q]h08:2e0M?8!2t0M?4w#2J0M?4!2X0M?4w#3m0M?4w#3C0M?4w#3X0M?4w!d1>4w!u1>4`O1>4w#141>4!1m1>4w#1E1>4g0m0b020w;c}1X1>8!3q0w?4w#2l1>4w#2N1>4!2Z1>4g0m0e020w;c}3f1>4!3z1>4w`oT9QqiVL02hU06dxr6NvtSlxqRZCrw1zsDhKbCY0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc096g0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzsCcPcBZEtRZxsCQ0t6BJpn1voSZJs7lQplZzsCcPcBZxrChvpCVScm4KoSZKsThMsCZMbz?pSlQgR1lt6BJplZJomBK07hFrmlMnS9RqmNQqmU0t6BJpn1voT9zcP9vt65yr6lvqmVFt5ZArSVB07hFrmlMnSdOoPcOnThxoCNB07hFrmlMnSdOoPcOnSBJs6M0t6BJpn1vq65Pq5ZArSc0t6BJpn1voT9zcP9vp6Zz07hFrmlMnSpKtz5xnShLoM1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vpCBKqg1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1vqmVFt01JpmRzs7B0hQN9gAdvcyUNdM1CqmVAnTpxsCBxoCNB07dQsCNBrA17j4B2gRYObz4T05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06tBt65Ru7pxr417j4B2gRYObz4T07dKs79FrDhCg4tcik93nP8Kcjs0pCdIrTdBg4tcik93nP8Kcjs0pCZMpmV0hQN9gAdvcyUNdM1UpD9Bpg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1MrSNIg4tcik93nP8Kcjs0t6BJpn1vq65Pq5ZPt79RoTg0u6Rxr6NLoM1Pt6hFrA17j4B2gRYObz4T07dQsClOsCZOg4tcik93nP8Kcjs0oCBKp5ZSon9vrT9von9OonA0nRZDrmZKnTdQon9QnRY0sThxt417j4B2gRYObzcP069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0s7lQsQ17j4B2gRYObz4T06tBt79RsS5Dpk17j4B2gRYObz4T07dQsCdJs417j4B2gRYObz4T06pOpm5Ag4tcik93nP8Kcjs0oCBKp5ZxsD9xulZSon9Fom9Ipg1Pt79zq790hQN9gAdvcyUNdM1JomJBnS9RqmNQqmVvon9Dtw1Pt79zs7B0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg1Cpn9OrT90hQN9gAdvcyUNdM?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP```=?r,1M,8}O04:38.:2g^4^bw>fr__SY2}f01]Y04]Y[c}2^3w,b<w}M0w:302]8.]4<M,w}6}1;M,8}k0o:1g1w:2Q2&1^i,f___SY2}7U8]vww:1o[c[w}2}5k>3@__ZL0w]3o2]dw8]g[4<g,w&1A,1<8}60A]o2g:d05}M}8}1w}rw,g>12}ewe]W0U]o0M]c,l,2[o}7w,1,1w[4w}i]7%g&1P<g,o}818]w4w:302&g^vw,4,6}60k]o1g:3Q4g*8^8g,1,1w]1k9w:5gC]6%g&2a<g,8}s2o:1M9w:e07&g^Aw,4,2}50K]k2U:1A^1^a<1<w]2Ubw:bwK]B08&w&2G,3w,c}MfQ1;30_g]w^8[w}Jw,Y,3}czZ.;OfQ]8^2[8}c8,1<M]3g_g4;d3Z]2%w&3f,1w,c}SfQ1;3o_g:c01]1[8}1[S<4,3}9z_.;CfY:1g^2[8}dQ,1<M]3E_M4;ez_]804&w}2}3C<g,c}4042:g.4]2&g^X<w,3}1030w;40c1:E1&4^f4,1,c^103.;bw^4[g]3W,1M+e0s2;1?M4;201&4%g,8!o.1;102M:1I>1f,2[o[A,3!a0f.;Zgg&4^h<M#2l504;101&1^'
;;

'armv7')
b64=$'35616 17808\nmd5sum:8e45087123b286b0a25837cc25265192\nsha256sum:9b4508f67bece63891f7d2a897d7ecbb5fca7fb9ab8f0c48a50fa85cacde9651\n19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui\nq81c8UMgwEe6U7kXzEz2wUg4\n000000000000000\n0jUWcMEe44c2cg\n00000000000000\n0jUWcMEe41c2cg\n0hQN9gAdvcyUQ\n0000000000000\n000000000000\n00000000000\n01fzEP2wUg\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n2M2g\n000\n01s\n05M\n0g\n00\n01\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n09.:.I\034vQlchw41>*c0a.1+3g]Mgg]g?jg08.602w07.r.4!]3A9;V2g;k{40>;1gL;kbM4052Y109g2.2w1w.1w{g02]82Y.20L>0wbM40U]e}6]1}g;3Q]Z]fg]A]9}g]4]kulQp!*1w;1]1iVnhA52Y.1gL>0kbM40X]eM]4}g]g]k}M;4telg0ITMNm1MZdE7a6kBhcAgljxFXutMc]B}w]o]gy0202kl4g[B]ag;cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg!(F0A=3.A[b0M>{M0k0f4$1]1V>&i]hw$8w;fY$18]g!w]sM$4]6?&18;1l!i]wg$4w;4o1&18;3G!i]y!4]2U1&1]1z!i]mM$4]dk$18;1E!i]w04&4w;9Y$18]1!w]rw$4w;dM$1]3e!i]NM$4w;aY$14;2e!i]nw4&4w;1E1&1]2E!i]pM4&4]5g1&18]I!w]Cg4&4}o1&1]3a>.o341?w]h?g0xg4.fgr.2g]4w0b0dQ1.18cg406]140502R]Z1;1M2;i.I0JM4.7wN>0o]4g0k0ak1.2gcg406]1405;nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A07dQong0oDlFr7hFrBZBsD9Lsw1Cpn9OrT80u6pOpmk0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1CoSNLsSk0sThAqmU0oCBKp5ZSon9vrT9von9OonA0sThOoSxO07dQsCNBrw1Pt79zs7A0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1Pt79QrSM0oCBKp5ZxsTdLoRZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB07dKs79FrDhC06RxqSlvoDlFr7hFrBZxsCtS07dQsCdJs?MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn.omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt?QqmRBs5ZEondEnTdQsDlzt?Iqm9zbDdLbzo0hQN9gAdvcyUPcM17j4B2gRYObz4T04tcik93nP8Kd*g02.8.w?.4.w02.8.M02.40>02.4.w02.8.w?0>0>02.8.w02.80>02.4.w?.40>?.40>?.40>?.c0XM4.1-IV6m1w.103V>.4]9uhBwo;c?08.1}kqmAd;2.Y2=52Y1<]obM4,;1ML>0n]I3?<;2Qc04,;bwM>0n]L3?<;30c04,;cgM>0n]O3?<;3cc04,;d0M>0n]S3?<;3sc04,;e0M>0n]V3?<;3Ec04,;eMM>0n]Y3?<;3Qc04,;fwM>0n]_3?<]4cg4,]wN>0n]3341<]gcg4,;1gN>0n]6341<]wcg4,;2gN>0n]a341<]Icg4,;30N>0n]d341<]Ucg4,;3MN>0n]g341<;18cg4,;4MN>0n]l341<;1ocg4,;60N>0n]p341<;1Icg4,;70N>0n]u341<;1Ycg4,;8gN>0n]y341<;2gcg4,;9gN>0n]D341<;2wcg4,;8MM>0l1g.A3??k7.2kc0405ik.9wM>0l9M.D3??km.2wc0405hI.agM>0lag.G3??ky.2Ic0405iE;MM>0m0M.43??o4;kc0405wk.1wM>0m1w.73??o8;wc0405wA.2gM>0m2w.a3??ob;Ic0405wM.30M>0m3g.d3??oe;Uc0405wY.3MM>0m4;g3??oh.14c0405x8.4wM>0m4M.j3??ok.1gc0405xk.5gM>0ma;m3??om0<c0405xs.60M>0m6;p3??op.1Ec0405xE.6MM>0m7;s3??ot.1Qc0405xU.7wM>0m7M.v3??ow.20c0405y4.8gM>0m8M.y3??oA;8g2TFpw.WMy0Luw4U2TB1e2vVgXwz@08YbXBg2o1.36z@8iOEPygfqYVg36z@8iOEPyefqYVg36z@8iOEPycfqYVg36z@8iOEPyafqYVg36z@8iOEPy8fqYVg36z@8iOEPy6fqYVg36z@8iOEPy4fqYVg36z@8iOEPy2fqYVg36z@8iOEPy0fqYVg36z@8iOEPy@fmYVg36z@8iOEPyYfmYVg36z@8iOEPyWfmYVg36z@8iOEPyUfmYVg36z@8iOEPySfmYVg36z@8iOEPyQfmYVg36z@8iOEPyOfmYVg36z@8iOEPyMfmYVg36z@8iOEPyKfmYVg36z@8iOEPyIfmYVg36z@8iOEPyGfmYVg36z@8iOEPyEfmYVg36z@8iOEPyCfmYVg36z@8iOEPyAfmYVg36z@8iOEPyyfmYVg36z@8iOEPywfmYVg36z@8iOEPyufmYVg36z@8iOEPysfmYVg36z@8iOEPyqfmYVg36z@8iOEPyofmYVg36z@8iOEPymfmYVg36z@8iOEPykfmYVg36z@8iOEPyifmYVg}kc9_B522vVgcMz@0289fD.1iUNX_bM7g___GG2g109M]I09_Bb32vViMwD@k.8_w0P2fU;k@4288_w7LYL0hwMD@k3c9bD.1jUNX_bM4j_O_xa2o102gC>1Q9040A]3w0D@kUc9_B.2fU0cMz@.c4fwEN@wUiwwD@l34o7wMh2MUg8wz@0u_OY1632vVgcMAKs.5fz7LYL0hf_b@7E9g40V2k102gA>2E]j32vVkMwD@k3c8_w033jVg8wz@;5fz7LYL4h10buAQc9_B0P2iVM.k@c2;aa02vVg.z@1D___HOL__WM4wEecoc9_B0P2fU.wM@kgwbTEC2k10ewz>2c]U28105wB>3g___G}110buDwU9_B3K2fU030DKk.5Pz4g.2w.kKc0Me3x482Z2cg0D@k2887w.2fU04ggu8184by0j3NVgMM8@1Pce_C0P60U>MA@k2057xbcgzUfv__NEc0e3x482ZW2132eeUjkXzH32wUg407ec4c2cg>#>#>#>#>#>#>0jUM70zeazca3x130z404cnec4caXBU___6w70Eecgc9_B0P2fU030w@na___Gb2k1.wB>1k9040Y4YJWg0MQel>V_Btd1dUyQ0k@c4g8_w052wUgwgzukc88TB2M.2ygjD@k50a3x0h2fU1H__@I0w53yKw.2w48EecH___H061gUGY;E0Ea3zgw.Ww4MQek.5fzYf__6KMiD@k148_w022hVg.kKcx;q80c8UXwdjKeyca3x>0iUM0M8N?)0M8N?)0M8N?)0M8N?)0M8N?)0M8N?)0M8N??fz0i22UGcMEe40c2cg>NiUMgMEunz__Yq0i2wUS0OD@k3c8_w0223VlwOD@k3c8_w12ijVg.kKcV;a0q2wUM0wEecg08Ty2x2wUggwwekg88TBJa7dUuT@_@I.53zcM.SHoNTu41?fzc;2xgOD@k12a3z0P2kVM20A@nC_L_H061gUzw;EBgMbzV5M9UM1MEefMAp_BYb6vVgCgz@0bI8_w8Ah8U_9rjec4E8TB232wUg4EEec14a3z1w2wUtL@_@I0E53yaM.2wgQCuk70a3x.1jUMogEe4bca?2y2wUgiQygkP_O_xIY40UM1MEe4144ry2K21U04MYuk3g2jw13iwUpMR8@2kj8nw3w1hUglgw@3T__YqU___WCMxD@k288_w12i3Vs7__@Fwkp_B612dUwlgz@050a3xOLX_WM2wke8L;ad36vVg48Eec3c9jD082jVqX@_@I0o53y0q2w4Yr__NEE0p_B.2fU8T@_@Ir.3G202wUgiwDumi_L_H091gUwo0Ee4b;qB_X_WM.mKcn;a232tVg.k@c0s8cl332tVg.k@fMgcch2g2wUnjgzubMzXTEy_X_WM.mKc8;aILX_WM.Aemr_L_H?2wUrw0D@k.8_wsfX_WM6gEefM___G202wUr7@_@LP___G202wUqX@_@LA___GA12vVgk0Ee4148_wqLX_WM20ke86;a>ywUTL@_@I0o53yBf__6ww0Ee6x_L_HOL__WC.D@k.8_wmfX_W@r__@Gi_L_H.2gVnL@_@I08a3xh02vVgkgEe4.8_wj_X_WZT__@FY8w40w0Y.dgz>148M40e2c10a]348w40xfT__M3Z__@o3g.J0Q.5wd.303;B0M.9Mc.3MhOTF041gUx3gju9E;a0m2wUlIgEec2sa3xsfX_WM1gke85;a102wUmD@_@I.8jw0j1gVlQ0k@cb;a1w2wUmf@_@I1083yhLX_WMogEe57_L_H1O2wUg>Ee440a3x4d2dUL17Luxm_L_G1915U040yu8X_L_H0a2wUM20Ee444a3x2i2wUg5gxu8F_L_H1g2wUgCwOetd_L_H0p10Uz3@_@I>a3x2i2wUgkgEe4w_L_H2q34VMw0Ee54_L_H>20Uyv@_@I84a3xafX_WM1gEe440a3xfvX_WM40we8w_L_H112wUi7@_@I0Aa3x1w2wUjr@_@I1083y6vX_WMogEe4q_L_H062wUgw0Ee4b_L_H102wUgD@_@I50a3xWvT_WM.kecK;a532gVk204@8v;q1.jUNs;Ecw8TBafX_WM10Ee4a8a3z2g2wUgMgzu80w8jBU_T_WMMMDuk905fx1g.2w0MQ@k.5fz0w.6w0MBeky05fz4w.6E.D@k94a3x.2fUdDZ_@I.a3z4d2dUL27LuxE09_B1h2wUg.z@3i_v_H.2wU_v__@E6ca3x2i2wUgkgEe40s8TB7fX_W_7__@E08a3xY63dUgk0Ee72fW3x1_X_W@L__@E50a3xR_T_WM.kefc__Yq502vVgkgEe4.8_wLfT_W@z__@EM2M0>0I.a0a.3MjOTF0M1gUZjgju9t.3a>1gUM1MEdc7Aa3h1w.SwhMAuk0cdvB.1jUM1ME0c3053z092w4RQ;F8w8Ty0w2wUMwgEe6N_v_H.1gUPE.1Hj7gjzg284UQMMDuly447zMQ@wUp4jM@1809TBgQdAU0Ywgef4rW3xA4bCU8xgzu854a3x.3wUZ_Z_@I0k53yiM.6A0i1eec89TBye2tVgYggef2fW3xDy7zU930Dumk09TBD27zU.wAK30fWfw122iU0cMFK;5vzcg.2yOND@k8E8Ty2X2fUf0wPu504a3z2O2wUgE0Ee6W_v_H1i2wUgEgEe470a3xEvT_WM.muc9;a2O2wUk>Eec80a3x042dVghwzumK_v_H1i2wUgwgEe490a3xBvT_WMk0Ee7kQ8TyY8@ZW8xgzu854a3x.2wUW_Z_@I.53z8M.6A0O1eecg9TBy02tVgYMgef4rW3xA4fCU9>Dumk89TBAkfCU090Be32rWrwLL__WDM0D@k.8_wk_T_WM5gEefB___Gr02vVg.z@1h_v_H1g2wUtjgzubMzXTE292hVg0MSuk.5fz092w0VP__@G1_v_H.2gVmHZ_@I04a3xd02vVg.z@0__v_HWL__WDDZ_@I.93BoLT_WM>Ee4o09_B.2fU3vZ_@Ly___Gp0E.5w9.2E2g.h0A;w9.3MgiTFqd1dUwwgzu9R_v_HV1evVg1wAek0ka3x0h2fU0o0Ee4u_v_H.1gUQc;H84V_B1w2wUg4gz@0o_v_H041gUyI;GQ4V_B1w2wUg4gz@0i_v_H041gUAk;Gw4V_B1w2wUg4gz@0c_v_H041gUzE.1E8c9TB0M1jUXU.cG6;a0w1jUTI.1E409nB033gVg.k@dE0VY5.2f;MEefhuV_J422dUwMgzu84uUTJ332dVtXZ_@I.53z6M.6J0xPu7M8cTxe2evVhxwzu9g4a3z1w2wUgMMDuk288_wdvT_WMo0Ee4o_v_H5g.WwwMDuk305fzmw.Ozo;E205fzkg.2LM2D@k.8_wJj@fUJ0wM@404a3zY27dUh0wzub2_v_H.1gUVA;E1ga3z0M.WwkgEe4809TB9v__WM10Ee450a3xXvP_WMg0Ee5EQ8TyY86ZWaM2D@k64a3x.2fUdjY_@LL___G232tVgc0k@e2.3ap;2w80k@c@;q102lVg0MQek.5fzu0av1g.zM.8a3z412dUx0wzumx_v_H.1gUZX__NFs8F_B662dUy>Eec60a3x432tVg8wz@3W_f_H1w2wUtTY_@Lq___Gwg2lWg0MQek08dvB.1jUOs.1E.5bzEg.2xM2D@k.8_wunKvXg>Eecg88Ty17KdXovZ_@I0w53yNf__6whXDuTU8p_B662dUz>Eec60a3x07KdXg8wz@3v_f_H222wUgogEe470a3xNLP_WXT__@E409nB033gVg.k@f.pY5.2f0aD__@GU0p_B.2fU9bY_@KJ___GH06vVg.z@25___GF06vVg.z@32___G.1iUVT__MHo___Gwg2lWg0MQek08dvB.1jUQA;E.5bzuf__2w0MEedauV_J422dUwMgzu84uUTJ332dVlvZ_@I0w53yBf__6whXDuRc8p_B662dUwo0Ee5g4a3z07KdXgMMDuk288_wHLP_WMwwEe464a3x1M2wUpnY_@Kc___Gwg2lWg0MQek08dvB.1jUOo;E.5bzCL__2w0wEecg48Ty422dVjPZ_@I0w53yuv__6KwwD@koo8Ty1w2wUi>Eecgc9TB0y2fU9nY_@I88a3x1x2wUgs0Ee5Y_f_Hs___WHM0D@k.8_wjLP_WSD__@GM09_B.2fU4HY_@JB___GQ27dUv0wPu6s89_B662dUz>Eec60a3x0y2fU83Y_@I60a3xo_P_WS3__@E.5bzz;2Dg0D@k.8_wRv__Ww.kKdn;ap02vVg.z@2O___G9icyxeisYIIo2g.20A.1M9;M2g.i0s;M9.3k1w.m0w.4w6;o2;V0k.ag7.2?g.S0o.6g5.1o1g.Y0o.8g6;w1w.V0k.2w6;g1;_0c.eMn>1o5M40j1s1.3O__YI5M40C1o108Mm>10Yv__r1o10dwl>3c5g40wf3__Pw07@k.8_w032gVg.k@cy;`04Kc1c2cg>%>%>%>%>%>%>0jUM4wwKazca3x0j0z404ckKc4ca3BU___6w4wEef8c1_B0P2fU.ww@ngc1_B0P2fU>AA@k.5bzT20v1g8wzM0498c50v__WKw07@k.8_w032gVg.k@cy;`04Kc1c2cg>%>%>%>%>%>%>0jUM4wwKazca3x0j0z404ckKc4ca3BU___6w4wEedUch_B0P2fU.ww@m0ch_B0P2fU>AA@k.5bzz24v1g8wzM0498c5QvX_WFw17@k.8_w032gVg.k@cy;`04Kc1c2cg>%>%>%>%>%>%>0jUM4wwKazca3x0j0z404ckKc4ca3BU___6w4wEecEcx_B0P2fU.ww@kMcx_B0P2fU>AA@k.5bzf28v1g8wzM0498c5EvX_Wx10buBMg9_Bs32vVgh0z@03c9jD2d1dUw4gEec30a3x132dVsfX_@Jkc9_B0h2wUMcMBes30a3x132dVrTX_@J0c9_B0h2wUMcMBes30a3x132dVrvX_@IIc9_B0h2wUMcMBes30a3x132dVr7X_@I.a3z2d2dUx20LuzU4M40H]ag;2k]C}x0buA8wbTEfg;4}b]g]1]1}9w;4}R]g}c;1}1w;4}k]g}U;1}3g;4}B]g]18;1}a]4}2]g]1w;1}2g;4}a]g!bg;79y.1QqmRBs3EwpC5Fr6lA87hL86ZMpmUwr6BQpn9xr21CqmNB82sKbOQD}7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM.t6BJpn0W86ZRt21Lpy1JpmRLsDA}t6BJpn0W879Bomgwpn9OrT8W82lP]pC5Fr6lA87hL86dOpm5Qpi1xsD9xujEw9nc.6BKtC5IqmgwrDlJpn9FoO1FrChBu21CrT8wqmVApnxBp21xsD9xujEw9nc09ncW86VLt21xry1xsD9xug]1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c.6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g}9mNIp0E;1Dpnh3k5lQqmRB.1QqmRBs5ZCrDoNog1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO07hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq;t6BJpn1vq65Pq3Ewt6ZL86RxrDAwon9DtmRBrDhP.1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs09j0NdCNIu.Bc3xU}2kMe7wJ9j0NdCNIu}1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt.13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@.19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb}~0Et6BJpn1vq65Pq20D9O0D9OAI}20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw]1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng13rSRMtnhB84digPcO82x9hkl5ai1Lpy0YhABchjUK85lPpi0DbiswrT8wpmRMt7Awt6YwsClxp21CsCZJ87dQp6BKbw]19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa3wwq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI}20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK.~0Et6BJpn1voT9zcP8w9Osw9OsFb]20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw.lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ>SZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU.4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ecjowq6lU86hFpSBQsOAwqncwsThLsClA86BK87hEongwtC5Oqm5yr6kI]lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ.59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK04BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU.7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt}7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ}pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng0Z]g}I;1}4]4}C]g]3k;1[M;4}6]g]1g;1}3w;4}d]g]2k;1}4w;4}E]g}8;1}6]4}9]g}E;1///////!!!!!!!!!;6wc]3;72Y1.4;3L>.3]ag9;d]x1M.1A]kbM406M]g]q]62Y1?M]4]ZvX_rNw1;5]1>;o;1k>.2w;1A2;b]4}c}c04.w}1;k]4g;1s;2A2;4g;bg6;i]Y04.1c]8]_L__rTg6.3___ZL>;f3__SYu1w.@L__rPk!!!*82Y1*I0A.b|0A.b|0A.b|0A.b|0A.b|0A.b|0A.b|0A.b|0A.b|0A.b|0A.b09!!!}1c7g.d1Y.4Mt.1o7M.F2;a0v;w8g.W1Y.2Mw=j1Q.60w.1c7g.x2;4Mt.3c8;724.4Mt.148g.y24{1c7g.M24.4Mt.3A8g.c28.20x=j1Q.80y.1c7g.G28.f0y.1c7g.d2c.80z.1c7g{cMu;I5g;g;b0M>3k8M{a0u;I5g;g;dwM>3M8M{7gu;I5g;g]gN>>9=6wu;I5g;g;20N>0M9=4t3gPEwa4teliAwcj8KcyUN838Mcz8Ncj8N82xipmgwi65Q834Obz8KciQQag11c]65Bom9F.4C]1jsJgg062wt120490wE44wgk0hk15Mco0hA16w8s0i81.w]8[4.4t1904Poj40i0I.6Mb;8]2[1.17gig1cS4N0ag9.2I2g.2}w[g.hQ4A0jdxcg247;y1M;w]8[4.4t1904Poj40r0I.6Mc;8]2[1.17gig1cS4N08gs.247;2}w[g.hQ4A0jdxcg247;x1M;w]8[4.4t1904Poj40H0A.b09;8]2[1.17gig1cS4N08ws.2c7!$3Q-c0>[604=3.8[5g1+M03{41+c?{7wo=3.k[7g6+M06[2Q1w=c?M[F0w=3.w[ag9+M09[:=c02w[i0I=3.I[8gs+M0c[2c7+c03g[U2g=3.U[1gL>{M0f{obM4{c04{72Y1{3?4[20L>{M0i=c04{c04M[I3?{3?g[awN>{M0l!;c05w!.3<[bgR>{M0o.4!g0YvY8]i0I(I02M;4wb+w0b?w;1A2M-2M08]F0A(A02]8gs(c?I!g0YvY8]H0A(A02]8ws(c028!g0YvYo]z1M(Q0bw;8Ms+g0d.w;1I2M-2M1}r0I=2.I06]a0b(b.w;2M2M-2M12]I0I=2.I06]f0b(b?w]sbM4+4g08[M(I0lg}c+w0b?w;1k3(2M1H]G341.4]1?k06]1wL>+g07s]obM4{404.8]q0M(I0Dw;6wc+w0b?w]kbM4+3M2G]52Y1{1.Y06]awN>+l!;g0YvY8]s0M(I0Og;70c.3U}w0b?w;1s3g-2M0o]71Q(Q02]6wd(b0dw;1E3g.z0c;802M0o]K1*I02]fgg(b?w]44M-2M08]41c(I.w4.10j;s0w;w0b?w]o5g-2M08]b1k(I04w4.2Ml.381w;w0b?w]w6g-2M08]J1A(I06]70s(b?w;2Icg4+5g0w>.H3410>]1?k0f04.b0N>.1]g0l04U1.2Mdg4?}405g0o]I3?+1g0nM4.b0M>0E}g0k06U1.3oc040b}405?@>.1341?M]1?g0zw4.20N>0E}g0k09Q1$g0YvYo]k2g(Q0bw;50A+g0d?w;3w9(3w2D>.U2g=1.U!.103N_Xk1.247+80302X>.72Y1{1?40O04.20L>{g3N_Z41.2Ecg4{40503t>;3?{10f7_YM4.ag9+w09.w;:-2w0o]M0A(E02]cg9(a0fA1&1}70w&i]608&8w;342&18;120w&w]nw8&4]fo3&18;1I0w&i]v08&4w;8Q2&18;2C0w&i]JM8.60N>0o]4g0k0cE2.3Q6M.A]1802M3u0w&g]V08&4]fM2&18]b0M.i341?w]h?g07gc&4]2k3&18]S0M&i]hwc&4w;5k3&18;1E0M.Z1;1M2;i.I0uwc&8]8A3&18;2p0M&g]FMc&4w;bw3&18;390M&h]Sgc&4w;fg3&18]71$g]6Mg&4w;2M4&1}@1;u341?w]h?g0kgg&4w;6k4&2]1_1$g]yMg.90N>0o]4g0k09Q4&1[oT9QqiVL02hx06dxr6NvtSlxqRZCrw0Ap?zsDhKbCY0oT9QoClDqmVjbCY0omNInSBJs6NFpmhvpC9Ft7c0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc?Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr?QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnRhdgRZ5jAhvnM1vhQNfgA5cnQZ6hBd5l5Zkgk9chlY0nSBKqng0pCBKp5ZSon9Fom9Ipg1Pt79zrn1^05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kd?Pt79QrSN^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kd?Cpn9OrT9^06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1JpmRzs7B^07hFrmlMnSdOoPcOnTdQsDlzt?PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB071Lr6N^07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0sThOoT1Vg4tcik93nP8Kd?CsClxp417j4B2gRYObzg0s7lQsQ17j4B2gRYObzg0sThOpn9OrT9^069FrChvtC5OnSZOnS5OsC5V05ZvpSRLrBZPt65Ot5Zv07dQonh0hQN9gAdvcyUPcM1yqmVAnTpxsCBxoCNB07dQsCNBrA17j4B2gRYObzg0sThOoSxOg4tcik93nP8Kd?Pt6hFrA17j4B2gRYObzg0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObzg0sSVMsCBKt6p^069FrChvon9OonBvtC5Oqm5yr6k0pCdIrTdBg4tcik93nP8Kd?JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pSlQsDlPomtBg4tcik93nP8Kd?vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB065Ap5ZytmBIt6BK06tBt4dglnhFrmlvsThOtmdQ069FrChvondPrSdvtC5Oqm5yr6k.2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq.Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VFrCBQ02VQpnxQ02VCqmVF02VOrShxt640bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VAonhx02VysTc0bCdLrmRBrDg0bA5ijiVxt7hOqm9Rt6lP02VDrDkKoDlFr6gKonhQsCBytnhBsM!!!+6M]s]2]Z]fg]A!4+2U;3S__ZL0w;1w1;o>.f}c+1}g]U]2M]8;1k>.l04.b02;4}M]g]g]g}c]2]1>;g4;p0w&1+4w;3___ZL0w;1U6;u1w.lw]c-w]8;1l]_L__rM8;1Q1w.t0o.4}4}g]g+p}A]2]J0o.bg6.3M>;M+4]2]6Q]9]gw;ag8.2A2}4;c]j]1}w;1S}g]o;2A2g.F0A;M!g+sg]4]6]I0A.b09.2k>&4]1]7M]1]1w;4wb.182M.f14&2+22}g]o;247;x1M;w!g+y}4]2]z1M.8Ms.1k2$4+9}1}w;e0A.3w9;1!1+2q]3w]c]kbM4052Y;g!g]4]Fw]Y]3]62Y1?wL;4!4]1]b8]1}M;1ML>0sbM.1!1+2_]1w]c]wbM4082Y.e}4-g]8]O}4]3}3?;M.2M!4]1]cQ]1}M;b0M>2Mc;@!1+3j]2}c;2Ecg40G34;M4$g+S}4]M+awN;K!1}g;e4]3.1M-3mcg.cg!g=3N]1M=2Qdg40238.e!>-g]8$ewO.2g2;6w;64]4]4}A]3$1UeM.Igg$g+h}M$ak]s1$4+'
;;

'i686')
b64=$'22968 11484\nmd5sum:654de60fd2c6d1125bbe936ab6f70212\nsha256sum:dfc79c40456f42167ffda27b50bb6e1e18b2f2923147815100f7be20b7d3d316\n00000000000000000000\n000000000000000000\n0000000000000000\n000000000000000\n00000000000000\n0000000000000\n0hQN9gAdvcyUM\n000000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n07xCsClB\n04Poj4\n000000\n0AweA\n00000\n0983F\n0000\n000\n00\n0g\n04\n01\n0w\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n_____\034vQlchw41,&c<M.)3g:Ia-3g08<a02w07w0t<4~c1M<30s;k}4:g}g:4:1;8g8<242;1{g;1:Z1U<fgK<3Qbw<z><9.;6}1:8}7M;2Y:L<3w:U}o:4:1:7g1<1Q,<t><2g:A:1}g:4:@1k<fwl<3U5g<a:2w:4:1:5fBt6jU5g<@1k<fwl;E:a}g:4:kelQp20m;w5w<81o<3g:Q:1}g;1hVnhA~{06:4:5bBt6jQ7w<Z2U<fgK;c,<3>;g:1:1:1g:3:hQVl03yzF7Hb_atZjGNfWNEJXMOsc2WukUfI2ez_:wsdjbw<yUfQ____xs1Q0L_gwYg8mYc*f@P1:f@z2)3_EMM;1E}eDw|Wcg:q?;3FQf____@z5:6wg:Ws3|ENw;1E6:eCM|Wcs:q2:3FEf____@z8:6wE:Wp3|EOg;1Ec:eC0|WcE:q3w;3Fsf____@zb:6x}Wm3|EP:1Ei:eBg|WcQ:q5:3Fgf____@ze:6xo:Wj3|EPM;1Eo:eAw____yNMAMSqgpF1CA6qgpF1CAezA:ws8_bg<zoGc:zoac:esxQ7oK2Xf___Un0t1dlyum3X1hh_Z23N139MOWdt2o0MUSQ9w:3EF:872_OM<5m9VledyEM;2dwEM;23X,FO8D3MuwvMvI20tzh@7gkyVbU____xt9Q2EfI251h_Za3N12bnvP9MOWdJ2o}Afcf7LJlyuljW5f___@1MWsI<23X0i0KUM}tiybw_3___@5M7giw@Mczoc8____keyE_L__wYggW33____6wUM:1yRTYOsedt2o0YMYu@@Bn____yNgAMSqgA5lnW4M3<21NQQI<1mkU7I_:8fU0M@fUw4<8fU0nUJySE4csD7h2gk}81Z;fheC3@0dR7EJ2280U<Z5O8Bc91jH3OWdt2o0NQgA5{NXofI28DXzkgAs8B4921gqwbEYvT__Uf448n03Uke,<K4123M3Tr2hEyTgAr8D1Kdddox29Q_vKMvUvyt31@0oFY8SQ9aw;2p0s4hQUBc90y9n2gcw@M8yvJmqL_E8_X__UB49123N125M0@5z><8Kc9aM;2Ug48f0fuI9aw;29OY7X7M71K4123M0hQ_uI9b}1O8Kc9bg:hSEDbMvIv0swhSwd49?jl2gcxuQfx1w1<23X0O9@RadBZ3B__ZgkEBk93hGg8RQ94hmW7HZ__@3N1NG05plW5XZ__@bt2gAwYggxvpQaEfI3fZQ91z_t2go_TgAc6F0ySMAd5nEifT__Uf476E0llrEbfT__Uf448I49874_:5JunRT3zno?@M8zrgAI:5pG0ex6_v__wYggxs0fxtI;2Ug48f0fuI9aw;29MoK49aM;29QVA1Mrx,wY>tfTH2iM:ygMAylMA18D1yUgAJ}cc98Dj4RMA19A1Mh7jykMA28Bs90PFKfX__OWdJ2o}w@Mczos0Vf__yvJgW2_Y__@3N13712g1:yMgAwsjY:mRVvnsedJ2o}w@M4yvJik8S7Run__R3E3vP__Uf448I49874_:5JunRT3zngC0exz_f__w@Mc_P3EavP__RFpk8S78ej__R3EOLL__Uf44eKpbERQ9w3Ee_P__UfI3fYMW07Y__Zunl2dxXjB__ZgWabX__@3N13FrL___OWdJ2o}pF1nlBfEifP__U73D2A<8fI68R491hg_TgAbew1_f__yPy9NBydwZLB__Zqk5vEjLL__Uf448n0tiubh2gcyvbE3fT__UD7w@MclKxN@___wYgwyvxrnB_3bESQ9w:23X0ydw@rB__ZnLM4;1gW1LX__@3N13HP8SS}5fEOLL__U737yA<8fI46E1_XfY____WajX__@3N1wNM5L3yPMAMM1jw@M8W9_X__@1M_cE<23N0xrMM////~~~~~~~~~~~~~~~~~~~~~~~~!8:h}g:k:x1<w4g-2GwUPNEjhFtg~2@#i:4#8:8g$1:1L#i:lg$4w;ck$1:16#y:EM$4w:4$2:1S#g:rg$4w;98$18;2I#g:b#8:6c$18;3N#g:OM;d06;z:4w>0dY;1Ec;6:1405M<nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0oCBKp5ZSon9Fom9Ipg1ytmBIt6BKnSlOsCZO05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80rm5HplZytmBIt6BKnS5OpTo0sThOoSRM+07dBt7lMnS9RqmNQqmVvt6BJpn<pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0r6ByoOVPrOUS>tcik93nP8KciUP>tcik93nP8Kcjs^}w.<4<w03<4.<2<4<g02<8<g.<8<g.<4:1<c0_g;1*sNZF2g<1<7,<4:9uhBwo;c>M4<1}gqmAd;2.U1-Z2U;w;3Ubw<2:fMK;8:g3:w;14c;2:4wM;8:j3:w;1gc;2:5gM;8:m3:w;1sc;2:60M;8:q3:w;1Ic;2:7gM;8:u3:w;3wbM<1w8<egL;61M<W2Y;o9<3IbM<1wU<f0L;64w;3:s1;4c;1Mc;wM;71;33:s5;gc;1Mo<1gM;71M<63:s8;sc;1ME<20M;72M<93:sc;Ec;1MQ<2MM;73M<c3:sg<1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c<6tBt79RsS5Dpi0EgQx9j4hihkUF86pxqmNBp3Ew9nc0lld1hQkW86tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ<59Bt7lOry1EqmtEbn9BsSZItnhFrSUwgR1l87hFrmkwa6RFoT9LsSlzrSVAsOAwtndBp21yui1Qq6BP871OrSdBsTcwomVA065Ir21CqmVFsSxBp21zq6BIp21MsCZzpndPpncwomVA865Ir21Qq6lFsy1CqmVFsSxBp21ApndzpmVApmVQsOU}imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK>BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU<6tBt4dglnhFrmkwmPNmgl8@85IYlA5inRd5j4o@nlQ0pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP02lIr6g09mNIp0E0pSlQgR1lt6BJpg1QqmRBs3EwtmVHrCZTry1zrSRJomVA82sBsOs:4:6}k;17jBk<g.M,:1}w.M,:1}hI3eP}5:EeL__QM;20Xv__s:33M___<g<If3__Og2<3jYf__j08<1g*nFi<5Y2>r3,4y><2}s:jeL__@{3wx63wNa3MJQ17w0fNEXaz8A8AM1<1}2eT__Wo2:ggU8xg913wO70QMe48o4ggUkwMl63F020AweC09b3FM2gwWw[082ggWo0AceD0923G02j0Wg?9n3FM2gMWw0AseF0913Gw2hwWI0AkeI]g2gwWo0A4eD0913G02j0Wg0AseD0943G02h0WA0AgeG0923GM2hgWM0AweB0923Fw2ggWs0A4eE]02igEe54733x11NwUcgsse24753wh42QceC]M2gwWw[082pwWs0AAeE]02k0Ee54733x11NwUcgsse24753wh82QceB0933Fw2ggWs0AseE]02igEe54733x11NwUcgsse24753wh52QweD0923G02hwWs0A4eC0913FM2hMWw[09f3FM2gwWw0AoeD0913Fw2ggWs0AseE]0206:2g,<qeX__TE}ggU8xM913wO60Q4e48c4jwUEhgUIh0UMiwUIhMUEggUIggUMi0Uwl0UIggUMi0UggYce34763wx1NMU4igUwwMi60Us2gMUEhMUIhwUMi0Uw;A:Z><8jK__Yz}44e28c2jwUogwUshwUwi0U8gYce1;4:1M2<1_XL__1///~~~~~~~~~~~~~~&903<1<M<_2U;4;3Z:3:9w1;d:@0o<1A;3Qbw<6M:g:q:@2U<1M:4:ZvX_rM,;5:l14;o:A4;2w;2w1;b:4}c;3QbM;w;6w:k:4g;1s;2c4M<4g;egi;i:G:1c:8:_L__rWgi<3___ZL,;f3__SZY4w<@L__rN~~~~{bM&3m,<Vw4<fo1;6?<5w8<2o2;S?<hw8<5o2<1C?<tw8<8o2<2m?`Pxk<3gk<3e5g<n1g<agk<3e5g<W1g<3gl<3e5g{0cYl<1g1w;g;40M<285g{>t3gPEwa4teliAwcjkKciUN838MczkMdj8N82xipmgwi65Q834Rbz4KciQOag:w:8{4<4t19=0E08<a02;8:2{1<(09w1<2P,<2}w{g<hQ4A0jdxcg3U1w<1Ms;w:8{4<4t19=0I08<9A3;8:2{1<(0fs6<3T1w<2}w{g<hQ4A0jdxcg3T1w<ZMo;w:8{4<4t19=0IM4<bw1;8:2{1<(<s7;c1M~:4#g0YvYd:I08-2<g03M;f02)w>028;1<M-8.<U:w3:4:1.w0h:fwK)g0i06I;2g0M-8..T:Z2U-1.4!.03N_Vo;2w0M<Fw8;8.02C:k0o<7E:2<g0J:40M;E}g0n0cc#g0Yv_d:w1w-1.`103N_ZI;2w?<1}8.03N:@0o-2<k0ZM;9A3)w><Q1<3Ybw-4>M0q,;2Y-1.g08M4<20m*0f03o1<20c)405M12,<Z2Y-1.o0m><fc6)w>06U1<2o,-8<w1Q,%i:xg4%8:a41%1}L?%i:HM4%4w;cw1<3g1w<8M;18.03s,%g:Uw4%8w;fQ1%18:g?%w:7M8%4:2Q2%18;1<w%i:mM8%4:6Q2%2:27?%i:CM8%4:as2<1Ec;6:1405M<oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1Dpnh3k5lQqmRBnShLoM1zsDhBrChjbCY0nRZ6kA5dhlZ5jAhvnM1vnTwUdyVDpnhvs6dvt6xRrCIKoDw0nSpFrCA0nRZUe3oKpSlQnT1znThEtmVHbChU05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05Zvu3wSbCtBt5ZMoRZQq7lKqOVAqg1vqmVFt.Pt79zrn1^05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1PpnhRs5ZytmBIt6BKnThFrmlM+05ZvoTxxnSpFrC5IqnFBg4tcik93nP8KciUP07dQsClOsCZOg4tcik93nP8Kc.vnStJrSVvsThxsDhvnM1yqmVAnTpxsCBxoCNB07dKs79FrDhCg4tcik93nP8Kc.vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kc.JomJBnS9RqmNQqmVvon9Dtw1vilhdnT9BpSBPt6lOl4R3r6ZKplhxoCNB06tBt79RsS5Dpk17j4B2gRYObz<omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg<2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VFrCBQ02VQpnxQ02VCqmVF02VDrDkKq65Pq<Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmMKp7BK02VOpmMKs6NQ02VOrShxt640bCVLt6kKpSVRbD1OrT1BsDhV02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~~!.I:7}w;7g1<1Q,<9#1*K}g:o;2o,<C><2!g)wM:4:6:M><c.<3w#g:1:3g:1:1w;a02<2w?<lMg%4*W}g:o;3U1w<@0o<1g#g)g:fr__SY2}1}g;A:1M)4:1:4E:b}w;2gg;A4;c>;w:1:1:1:1i}M:8;1k4g<l14<2w1$4)mw;f___SY2:v18<7Mi;C:1M)2}w;6s;3@__ZL?;agi<2A4w<g}w:1:1)1S:2g:8;3A4w<V18<aw:7*g:8:vM:A;12:z1c<8Mj<1E:1M;1o:4:2:8w:1:cw;fgj<3Q4M;w8%1}4;2g:1M:8;3U5g<@1k<2w#g)EM:4:2:81o<20m;Q#4)b4:1}w;5gm<1k5w<c08%1)2X:3w:c;3Qbw<Z1U;g#g:4:NM:Y:3:@2U<fwu;4#4:1:dc:1}M;fMK<3Y7w<1#1)3w:1w:c}bM;1Y<e}8*g:8:Wg:4:3:U2Y<e0v;k#4:1:eU:1}M;fgL<3Q7M<g#1}g;3T}g:c;10c;g2;4#2*_g:w:3:w3;8?;4#1*81;1:c)208;bw#g:4:b,<1M-24c;I2;e!g*g:8$90x<3<w<7:1E:4:4}A:3$1g9;Kg8$g)h}M$2is<241$4)'
;;

'ppc64le')
b64=$'148062 74032\nmd5sum:88dd8ebf4023b596b797ec713e6cbadf\nsha256sum:293d796b767dcedaa1ce77d6ac9bdb500e17198093c80e42d0ae49ffb1afa5b8\n0GIhw51H4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv24\n0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYpBfE7Qg\n08x48BwHh7n3aTN5MgJY8g2Hh69o24gRSMxY1s4Ev64\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n00000000000000000000000\n0y4gym2J4tscHv4n12TMx\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n0000000000000000\n00000000000000\n0000000000\n000000000\n00000000\n0000000\n000000\n00000\n0000\n0Mc3\n000\n00\n0w\n################################\n04w4U*6\034vQlchw810g{.c05g01=1{30q0g]w>4.e.704.7.r.4<5#{Z3M]3Qf{.g]g<o<8_g}zZ0g:2fQ1]81w]30a{01]2<1w>23Z}8fQ1]w_g4:e01}U04}8{g<4<O04]380g]cw1}9{A{g[kelQp0g>1gew]50W}k3E]14[4g[1[1hVnhA1w##;g[5bBt6g4<2fQ}8_g4]zZ0g:@08]3U?}4[1<1g<3<hQVl0ccTuTZUZVh3l5DOuOxnsWezbnxk:c<B;g<o<gi4h02ok?:B<ag>cgrXlGGwUPNOJZ7tWAlniWylPGsEjhFtg#+0M09>i$M0l0101?+3G<4C%3N<4$3e<4C$g<8$2w<4$16<8C%1f0g.4C%2K<4C%1r<4C%1X<4#T0g.4$1F<4C%1V0g.4C%1x<4$1D0g.4C%1l<4g%2n<4C$1<8$21<4C%3s<4$3_<4C%2y0g.4C%1t0g.4C%2r0g.4C%1K<4C$z0g.4$37<4C%290g.4$3l<4C$I<8$26<4C$5?.4#f0g.4$1Q<4C%3c0g.4g0l0802?:c[3N0g.4C0a>N}x[3v0g.4g0l0502?:c[2R<4C0a060u}o0c]2V0g.4g0l0b02?:c[2D0g.4g0l0e02?:c{0nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0sThAqmU0pCZMpmU0u6Rxr6NLoM1MrSNI06pOpm5A06pBsD9Lsw1UpD9Bpg1Pt65Q05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO07dQsCNBrw1Pt79zs7A0oCBKp5ZSon9Fom9Ipg1JpmRzs7A0pCBKp5ZSon9Fom9Ipg1vnSBPrScOcRZPt79QrSM0oCBKp5ZxsTdLoRZSon9Fom9Ipg1yqmVAnS5OsC5VnTpxsCBxoCNB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB06dIrSdHnStBt7hFrmk0pSlQsDlPomtB05ZvsSVMsCBKt6pFpmlBcj8U05Zvs79FrDhCqmlBpj4Oe01JomJBnS9RqmNQqmVvon9Dtw1Pt79zrn.s7lQsM1Dpnh3k5lQqmRBnTdQsDlzt01QqmRBs5ZCrDoNolZPt79RoTg0t6BJpn1voT9zcP9vsThOtmdQ07hFrmlMnSxxsSxvsThOtmdQ07dBt7lMnS9RqmNQqmVvt6BJpn.omhAnS9RqmNQqmU0r6ByoOVPrOUS04tcik93nP8KcPw0hQN9gAdvcyUPcM17j4B2gRYObzcO04tcik93nP8Kcjs{08.g02.4.g02.8.w02.4.g02.c.g03.8.w01.g.g05.8.w02.8.g02.4.w01.8.g01.8.g01.4.g01.4<1.g04g8.1{K96m1w.1g0r?.4<behBwo>g09w8.1<2OApo6>30342>g<BV6m1w>w0Y?}zZ0g:5w}205M]13Z0g:5w[g5M]1zZ0g:5w[o_g4:101?:5w}2Ecw]1w1?:5w}2Ud}201?:5w}2Ecw]2w1?:5w}3wd}301?:5w}1wdw]3w1?:5w[Edg]401?:5w}1Mdg]4w1?:5w}2odg]501?:5w}3wdg]601?:5w}2Ecw]6w1?:5w[odw]701?:5w}2Ecw]7w1?:5w}10dw]801?:5w}2Ecw]8w1?:5w}28dw]901?:5w}3odw]9w1?:5w}2Ecw]a01?:5w{dM]aw1?:5w}18dM]c01?:5w}2Ecw]cw1?:5w}20dM]d01?:5w}2Ecw]dw1?:5w}2EdM]e01?:5w}3UdM]ew1?:5w}1Mdg[2?:5w}2Ecw}w2?:5w}18e}102?:5w}2Ecw]1w2?:5w}1Me}202?:5w}2Ue}2w2?:5w}2Ecw]302?:5w{eg]3w2?:5w}1geg]402?:5w}2Ecw]502?:5w}18d}5w2?:5w[g9g]6w2?:5w[g0g8:702?:5w}2Eeg]802?:5w[od}8w2?:5w[g9g]9w2?:5w}1w0g8:a02?:5w}38eg]b02?:5w}3EcM]bw2?:5w[g9g]cw2?:5w}3.g8:d02?:5w}3Eeg]e02?:5w}3ocM]ew2?:5w[g9g]fw2?:5w{?8}3?:5w[8ew}z_0g:9w>1g=13_0g:9w<o=1z_0g:9w>2=023_0g:9w<w=2z_0g:9w>18=33_0g:9w>2E=3z_0g:9w>2A=43_0g:9w>2k=4z_0g:9w>2s=1>w:5g<c=1w.w:5g<g=2>w:5g<k=2w.w:5g<s=3>w:5g<w=3w.w:5g<A=4>w:5g<E=4w.w:5g<I=5>w:5g<M=5w.w:5g<Q=6>w:5g<U=6w.w:5g<Y=7>w:5g>1=07w.w:5g>14=8>w:5g>1c=8w.w:5g>2w=9>w:5g>1g=9w.w:5g>1k=a>w:5g>1o=aw.w:5g>1s=b>w:5g>1w=bw.w:5g>1A=c>w:5g>1E=cw.w:5g>1I=d>w:5g>1M=dw.w:5g>1Q=e>w:5g>1U=ew.w:5g>1Y=f>w:5g>24=fw.w:5g>28+1?:5g>2c=?1?:5g>2g$6011@921wKCC0UBZ80i0jw*204MYU6N2eao227Mg.7UAvYx@<608w0bE.2wbMM0_A6Z__Zb6011W7.8jwg.7EFwc8v2.w4U;6011@ay1wKCC0UBZ80i0jw*o047Ue862Wqo3ynQw181e*1w0gvz8wobFFwe9vi|011@fy1wKCC0UBZ80i0jw*o047Ua862Wqo3ynQw181e*1w0gvxwwobFFwe9vi|011@421wKCC0UBZ80i0jw*o047U6862Wqo3ynQw181e*1w0gvy8wobFFwe9vi|011@221wKCC0UBZ80i0jw*o047UM862Wqo3ynQw181e*1w0gvxgwobFFwe9vi|011@a21wKCC0UBZ80i0jw*o047Uq862Wqo3ynQw181e*1w0gvw8wEbFFwe9vi|011@dy1wKCC0UBZ80i0jw*o047Uc862Wqo3ynQw181e*1w0gvxowobFFwe9vi|011@721wKCC0UBZ80i0jw*o047Ui862Wqo3ynQw181e*1w0gvzgwobFFwe9vi|011@022wKCC0UBZ80i0jw*o047UU862Wqo3ynQw181e*1w0gvzMwobFFwe9vi|011@821wKCC0UBZ80i0jw*o047UK862Wqo3ynQw181e*1w0gvwgwobFFwe9vi|011@b21wKCC0UBZ80i0jw*o047Uu862Wqo3ynQw181e*1w0gvyowobFFwe9vi|011@ey1wKCC0UBZ80i0jw*204MYM6x2e<6<1w48hye1248zA062BY8022jg>60gw8bF>Ib2.wASC?xY4.1@e7_8vyC0UBZ6011@244w4Uo047E8.xe1>uyC0MxY8020jw.gC0204MYo6x2e<6<1w48hye124wzxg88dYt1W4v7gex7Ol0ohY8022jg>60ow8bF>Ib2.wASC?xY4.1@e7_8vyC0UBZ6011@244w4Uo047E8.xe1>uyC0MxY8020jw>6>49w?1cff1Dgzw>1w48gyyg.2iMw089cFw88v1>vzx_O7U<o2208KA.2AI5022gv__ozMovCcU5vT_iNw0guzR_LZb8.xe04083A>1w4.1W1248FCC0MxY8020jw>6<1w.12o080j3O0pQ8U8f__iM>60204MYs6t2e<6?x2a1<o224Mzw>AIl022gg.9iN40891FweFvfwoqDP__UgU<o<6>49w0g0AzjX2hRlUkyBZG1kFuhha9DQg02C1u3EFvnxbaDTw_M12@4wzvi.oTww081e_LZ2fvX_0zR0KQEVcbI8eh.9zCc0M4gClq0vk.g3CphC1Zz0d44qo3inQ.49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx!&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh.ajBQ_M120g?eg>6?x2ahVfX_iM-gC0204MY86p2eao227Po_S7XUf@1@TwzCTPU_@7XMfY1@TwrvTNUaXNYOfYx@@z_EvIg.7UIvUx@>8UDj_OAV>9b4M?A7@_U8YufLzvTyPx3yd@_Zb6011W7ArunPo18910g1wf5DX_QIo047EuhJZv504wA4o047U207x@w>3Iw0k7Xg071@Sw104w102e9>9bb3_wA<1w88h2wg>6?x28V>abcM?A3@_Q8Z_LY2fk2XizAMKMwV4.FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vhs4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A>1w88gyAg>60My2bF>FbcM1wA41020V.2we080anA1080UY01xef.8vBZ@fZb6011W<OPs0o50Zw0xEg40an7g0o91<o2y08KA1060Y0g.eM.auLJ@vZb6011W7ArvnPM0E916011@?1UvEw0k7Xg071@Oa4M3_OOO0Z.7wfykzTCfAD2BxV8fTuwU0fDCP0vty.10eTzb9DY10a0Y0g20e7zHET@pZ_Zb6011W7ArvTOA0891<o328wKA.2MIF062gqo3ynQw04dXufLBvTzHF7Yx181e6011W040Wnf__NQV__Y_enwruDMs0891>Fb>foBUWWx_uf8FvtaVOn@g_U91gLzFuWo3anQ102y9u4cavg8023A204G9uf8FvtaVanRUiABZQHD9v@3_049UOOp_0g2wf04?3xUWWd_@vr_iNw0guxV6TZYpf@2g7zb8TZB@fZb6011W<ONU6TZYueKzvN01wA3JZ_Zb6011W>62O40o91>Xb??A4.5Kj>Ybdg1wA4.dPX207xWy01guKQ1@d_g071WR018jwg.7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2.w4X@_O8Z<o92oajA.a0U0g20ef.ojwMy2bV0g?eg80anDM027VFvr_iNw0guw>cIbfW1gvX_UzZw084Usbf_eTzXUT@5@vZb6011W<ONU6TxYW022gg>60Ew2bF0g1wf>auI1@fZb6011W7ArvnM40o916011@?1UvE1>X8051@Q01MvIg_LZb_LYyfg>62gC2AVu4IIvj288LBc_LZbUvr_iNw0guw.1wIq022gl7U_QIo047E0g3weM80o@xx@fZb6011W7wrp7P@_S8YWbdzecTR_QIo047E207xWy01guJ.s7Hk04xebg7UTYg.7EMfY1WYz_8uLo_S7HUf@1W@z_EuLU_@7HFwc8v2.w4VUOOd_Ovn_iNw0guyg__ZbucIzvXDR_QIo047EtfX_i_X_wzNU@@d_ube4e47T_QIo047EuhJVv7g?A41060Y3vv_iNw0guxV6TRY9fS2g7zb8TZVZvZb6011WfX_ozM10e0XQbdze2nR_QIo047Epf__iMw1UuEw0k7Hg071WR018jyQ1@d_4.1Wc3_0uL8_O7HSfZxW@3_wuLE_W7H@f_xWWo327Mw081e_LZyf040U3K0IScURvj_iNw0guwk__Zbavv_iNw0guw206fEfvv_iNw0guxU@@h_0g3weTwrpnP@_S8YIbdzea7Q_QIo047EUfX_iM[1w0A:6>49w?1cfa1wgzzU_@7XuhJ_v47_8vz.E91Fw88vb.MvJU8VVYy.x@RI?3yE0a7Xu2KVvd>vyFZvZb6011W7ArqnNUiPRZ8022gnzXUT_hZfZb6011W1gqvTP__Oe9ng09b5M?A5UYYd_Jvj_iNw0guw106cUOvn_iNw0guxUYYh_fvv_iNw0guxUOOl_u1JAv7zXUT_FZfZb6011Wd>uy8027HG02xWX.MuL.24U@f_xWWo327Mw081ekey_v9.gvKo067X0g1Bea.wvJM0a7Uqvn_iNw0guxM0a7EufLAvTwruTNlZLZb6011W7.Euw.20V0g2te7wzwTNU026ps021@aUFeTQhZfZb6011Wf__UPIBZvZb6011W7.wuxU@@l_u1JYv17S_QIo047Eu.xynzroTZUUVR_HLAYvtDP_QIo047E0g1zeeTQ_QIo047EudJAvS7S_QIo047Eu1JWv7zzwT@NY_Zb6011W040oPz5ZfZb6011W7zzx7YVZLZb6011W7wrvTNUYYd_yvf_iNw0guw106cUDvj_iNw0guxUYYh_4vr_iNw0guxU6TNYudJzvW7P_QIo047EueKzvVnP_QIo047Eudd3vMDP_QIo047E>zb4M1wA4E04e1g018sg01wA0404FNG022gg.83Bw027Vs.x@tDQ_QIo047E>wegE0E3xw084Uu1J@v7zXUTY.3WhSv7_iNw0guxw027FgfwFv1M?A4.2C9>9b1.wA>3W18w09bc.wA3@_S8YufLAvO2QoPwxYLZb6011W>o3zg.7Ey.xWV.guKo067HE021WWw0EuKM0c7HM.xeao327PU_@7H8020jw>6>49w_LZyf7zjh7ZgJ6cURv7_iNw0guzg.7Ey.xWV.guKo067HE021WWw0EuKM0c7HFwc8vc.8jw.60U@f_xWO.w4U>1w<o>gC1UOOt_uee6vTzXVnZUQQh_Evf_iNw0guxA__Zb.12o7wrp7NUOOp_uee5vTzjgTZxY_Zb6011W4j__QI.49wudd3v@TO_QIo047E>zbaz@wA3@_S8Yudd4vM2QoPxs__Zb{601M>w1cf41tgzyC?xY0M03b1>vxh_y7Uy0a1gg4?O@80m7XA061@Vw1EvKE0u7XA06tg?0VeI.3@9.29bMw0DA>e0X>wenxbf7SM0E91Y.xeg80o3xUiOhZu4IXvlTM_QIo047E>3b7M1wA3U047Fk@cwfsgw03TM0e7EFpI8os_Tam4e.BV3M.fp98aDR0gwxxQzA8vnr@iDRw084U__Zwe7g@anRgi4FZ558EvnxbfnQ5Y_Zb6011W<OO80o90o031W7.Euwf040Zq03xW7w.uA.3YIg49aot8NODPiakFZ53H6v1hiNDMkgIpY5eH6vc01wA7@_O8Zc051enw1op2w0s7XObgFenxjgTRUiOlZg020e701gvBUiPVZZvb_iNw0guxM0k7F.2we7zXUTZUkQhZnv3_iNw0guw.3MIu04xwjw?A5UWWp_uff5vT018p5.80UudJzvXnO_QIo047E.2we7zrp7ZUUUd_8v3_iNw0guxM0i61y05xWV01wuKo0q7HE071WXg78TSE0u7HI04xe1>uyC0MxY8020jw>6<1w.12o>U3I.20V?1we7xbf7TM024Vu4IAvnxbeTTBXLZb6011W<OOc_E91o021e>o3xM0o7UOv7_iNw0guw>cI7062g6.8uBM0c7E3M10fmw0UuxU.7F__Zwe412iC5M0o7EQAAGvt8NiDQkeyBZ558Fvhh2anRUiPRZwv7_iNw0guw>cIwfW2gj7N_QIo047E?1zW4nN_QIo047Eu1JAvfX_ozOEJ6cUIuX_iNw0guy80m7HA061WVw1EuKE0u7H0g?er018jyQ1OdZ4.1Wao327Mw081e_LZyf6yQoPxVXLZb6011W04083Do__Zb<o>gC1M0m6g_LZyf7wPN7PgJ6cUsu__iNw0guxM0i61y05xWV01wuKo0q7HG07xWX018jwg.7EJ0szvqo327Mw081e4.AWnxbf7Q.2C9>9b4jZwA2M_LZb<o>gC1xYfZb6011W080o@xRYfZb6011W7wrp7P@_S8Yybhze33__QI{o05>204MYY5B2eao227PE_W7XYf_1@_z_UvIg.7U4vYx@bM?jzJX_Zb6011WfX_wzPoJ8gU.33WTwrvnMw1sxXM0YEb0M3w4?1oBUM0YFb.3w42pZw1YCiqwvoM381>40V1Cyw4go8011nrg3M1wOw4iM4C44c1g0gr08046s01TP__OsVu3wFvvg3anQkiyFZHAxAvaV8fDRgi6dY>3bcw2wA703OwI_L@2feyQx3zI0o1080m9uc0faiPw0o10Cvo0v9ACE7Sc0O0g.10egpEE1462.glSQ0Y0ocE14Y19x130k046M2011D.tY__YDenwUanTQ0OBZ54EGvqV8V7@Ki3VZk4z_vM.7OOI0o91M0YEbfX_wzMoJogUP0a0g205ynz03OAIM0a0g9DS07Op9G1Zz0cw4>g3A6qa0h1ww045tJ0f063a0hX0ioggM5011I?0gpM07vf__9PBUe2BZZ0cFvhhaaDSKieh_HAw@vl18_TY.1YIz0a2gs0fa2P@_U8Yibm4e1M2w4?1oBUM0YFb102w42pZw1YCiqwvoM381>40V1Cyw4go8011nrg3M1wOw4o06C44c1g0gr08046s027P__OwVu40Fvvg3anQkiyFZHAzAvWV8fDRgifZ_>vbdg1wA2Y02610M09bc06wk4I1o91?09bfX_ozNMIScU7022g?0vuw.2e9>9b0M?A3@_S8Ysbdze2a483TOOQ0ZV9Naoikzam4e04BV.10er.EjyU084UI.x@rw0gp61YvZb>3b9M4wA410e0XueKzvQnI_QIo047EY.xebg7UTYg.7EWf@xW_3_MuLU_@7HFwc8v2.w4U>1w<o>gC1UYYd_M.1@uDH_QIo047EM.1WnwrvTM.1YInfW2gbM08o43.AI@0e1gtg2wA42.AI_LZyf72PoPwk0890201ZW>8UA>AI10i2gia483TOOQ0ZV9Naoikzam4e04BVI02xe>w3yM027VOv3_iM>ONc_U90I031W6.MjL@_W8YCbmBe7zPMTYM080UDuT_iNw0guxUYYd_suT_iNw0guwQ.18.12o7zPMT_>7VeuL_iNw0guz>7F>3b43ZwA2@067EueKAvQnV_QJU6TZYueKzvP7H_QIo047EY.xebg7UTYg.7EWf@xW_3_MuLU_@7HFwc8v2.w4U>1w.12o7zPMT_tWLZb6011W7wrvTM.1YIdfW2gvX_ozNUYYh_ublze040U3LVWvZb6011W8z@_QI>1w<o>gC1UYYd_M.1@pDG_QIo047EM.1WnwrvTM.1YIvfS2gbM08o43.AIM0i1grw3wA42.AI_LZyf72PoPws0890201ZW>8UA>AI3022gfX_ozNMIScU>weg.E3yM084UI.xAo7L_QI>cI1fW2gb.Mo1w0c4X_L@yfa2RFjxUYYd_8020e5nI_QIo047Euff3vODI_QIo047EXfX_iM>6<1w.12o1.g3CplHVZClq4vgo83h06oaQhlSQ0Y0ocE16Y@Vx08010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4pPXC40M040VClq@vpBmx7Q620Qg1C2J4ltJ0f06320gvfKog4.x3x.7UUM.1@onF_QIo047EM.1WozX_QI.49w4010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4qPXC4?040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hzfKog3.g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc811I@Vx0g024e4.vzz>7V1uD_iNw0guz>7Fu1J_v7jX_QI807TE401tWg>UA.2G9>8b3U6alkw0o9<9bfX_ozNMIScUf0m2gia483TOOM0ZM011@uis264B8OBx3w09ur.Ejw.80UI.x@uDJ_QL.47F>3b6zYwA2M0c7Eo031e_X_EzP.47VCbmBe7zPMTYM080UJuH_iNw0guz.47F.2we7zPN7ZUkQdZ7uz_iNw0gux0_vZb4010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4vPWC4?040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hTfGog3.g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc812Y@Fx0g024e4.vzz>7VVuv_iNw0guz>7Fu1J_vcjW_QL@_S8Y0g3we_yQoPw5V_Zb6011W9jX_QI>AI5fO2guP@_QI>1w<o>gC3@_S8YsbdzefzX_QKM0e7EK031w6.MjL@_W8YGbmBe7zPMTZg080UKuD_iNw0guxUYYd_zuD_iNw0guxg_fZb201ZW1.fuA>e9.19yg.22M@1AFlG062gg.2yPw@E918Eh0fvbb03T.27VV9M8oikziC4e.FV<er.EjyU084UI011@rw.p5pXfZbM.xWg>OPo@E90I03xWbw0Mo1w0c4X_L@yfc.8vCEJqkUuff3vR.w3wxWvZb6011Wc.8uA.a0Uuff4vTxb8TS9VLZb6011WaPX_QI807TE4.ZWg>UA.4C9>8b3U6iBkA0E91>ab5jYwA4.40V.2wec.8vCM084UI011AsTH_QL.27F>3b4PWwA2M0c60o031e_X_EzP.27VEbmBe7zPMTYw080UCuz_iNw0guxU__Zb4010epBmLDSplEhZ1wwd40pwHh5nrg3M1wOw4mzVC4?040VClq@vpBmx7Q620Qg1C2J4ltJ0f063a0hifCog3.g3CplHVZClq4vgo83h06oaQhlSQ0Y0oc810E@px0g024e4.vzzBVvZb6011W7wrvTMU@vZb.12ofX_ozM10e0Xmblze0nB_QIo047EBfD_i_X_ozM10e0XablzeeTA_QIo047EvfD_iM.2yP@_S8Ysbdze5z@wA<1w88h2wg>6?x28V>abdw?A3@_Q8Z_LY2fk2XizAMKMwV4.FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6<1w.12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gw4083A>1w88gyAg>60My2bF>Fb8jVwA3@_O8Z<o92oajAMy2bVsfD_iM.2yP@_S8YsbdzedPZwA<1w88h2wg>6?x28V>abbz_wA3@_Q8Z_LY2fk2XizAMKMwV4.FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6<1w.12o1s4a_24~0GQhym0x4dtI8v0n1a7Nx!&`02AVtfY0gK3@_QI>1w88h2wg>6?x28V>abdj@wA3@_Q8Z_LY2fk2XizAMKMwV4.FeoM30h2plE1Zg010epB6o7Sc0QghFwd9vg>6>49w5MgHY8g2GN60k6Ihym0x4dtI8v0n1a7Nx!&0aJ4oBw8h3nr27M5MixYog28h29oaQhRMOJYhs4bv240GQhym0x4dtI8v0n1a7Nx08x48BwHh7n3aTNCk@wvh.ajBQ_M120fX_iM[1w0c>80j3M0jA8UFw88v<60Mw6bE0g20e1>vzx_O7UEu7_iNw0guw>1we81yW04?3ydUvZb6011W<61?6bE0g20e7Dx_QIo047E<o4y0oKw1080Upu7_iNw0guww024U.1we1>uyC0MxY8020jw[1w}61EPw4:ao227M509Z2Fw9Evqo327PM_MLEk62bvhhqo7Tk_MMU.2bWobM07yC0UBZ201HWi04w4Xc__ZbOf__iYj__QL0__ZbLf__iXz__QKQ__ZbIf__iWP__QKE__ZbFf__iW3__QKs__ZbCf__iVj__QKg__Zbzf__iUz__QK4__Zbwf__iTP__QJU__Zbtf__iT3__QJI__Zbqf__iSj__QJw__Zbnf__iRz__QJk__Zbkf__iM80j3OYj48UFw88v1>vyh_O7Us.xe1>uyC0MxY8020jw{bg}1Oow]7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis{7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM.t6BJpn0W86ZRt21Lpy1JpmRLsDA;t6BJpn0W879Bomgwpn9OrT8W82lP<pC5Fr6lA87hL86dOpm5Qpi1xsD9xujEw9nc]1FrDpxr6BA86VRrmlOqmcwqmVApnwwpCZO86BKp6lUpmgwon9OonAW82lP]BsPEwrCZQ865K865OsC5V{1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c.6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM:pSlQsDlPomtB82x3i4Bch595jyAwpC5Fr6lAey0BsM0Br6NA;2lIr6ga<pSlQgR1lt6BJpg]7hFrmlMnSpKtz5x:1QqmRBs5ZCrDoNojEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSdOoPcO:1QqmRBs5ZzsCcPczEwt6ZL86RxrDAwon9DtmRBrDhP07hFrmlMnSxxsSw]1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c.7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M:9j0NdCNIu.Bc3xU;2kMe7wJ9j0NdCNIu;1lkQ57hjEwt6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt}gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw.imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;rThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw]4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM{2?821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw{lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ:4dLrn1Rt6kwgR93cP8wa4B5hkkF86ZC83N6ikN5fyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK;4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM;82?86ZQq6lOtSBPpi1Ft21FsO1MsCBKt6lA87hL87dQp6ZRt2U.4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZzsCcPcy0D9O0D9OAI[2?821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwoi1zsCcPcy1EondEbw.lld1hQkW87hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ:4dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK}imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wNdy1Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM>1lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng.kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw{imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK:19py0YlA5inRd5j4o@86BP865IsSYwpSBSpmUI865PsSBDrDcwsSlIpy13k5kwt6BJpi0ErCYwoSxFr6hOpmUF87hL87hEongwtC5Oqm5yr6kK}t6BJpn1vq65Pq20YpCBIpnMJfy1rf5p1kzVt:1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt;7hFrmlMnSpKtz5x83NCqmNBv2Q@85IYlA5ifBQ;pSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng+01;w<c<wwXzJ88eUXi23KeQwwXzJ0hI3eQ;7<gdT__T<2gTL__x<13A__Zg0g.sev__Zg1.30WL__i08.b3S__@.w.gfv__Rw<g{5Wkw04u4416MM101g<o<Ufr__Xg;gwB10486gh;M<OdP__QM1}O<4g<4TL__u0k>152k40CMms14ev0pw8hwXg0FA7DgchgnVi2Fs9gFE6gpU2ggI2lVs9gpE6gpU20ALngtF2TA4e04w6gt_tTdLpS44eQ0ao29A7CMms19Q3DM4hgnVxBMB2Cwp1Dw9nRQ7qgtV13w191A7vTtPrStx13J02BMCo29A7Cwqr1pM4Dgeu0FY14k5@idvqTBmn2pE6Dw91RQ7qgtV13w191A7vTtPrStx13J02C0yp1VI5D0it0VY14k5@<w<101.2UUL__o0c>13DM523I01gwB1046u0Aap1Qat0Q8hgnVs2JB1Tk7uggU0gwp1TQ4bgFE6gpI5gFM40CwaSk7qgtJ1T47tgtV13w111A51TQcbhZB1SA7rgtN1Tk7uggp1ggU0gJZ43I01Cguq1FI5D0it0VU2DM4hgnU0s<9g1.2kVv__k0c>163H034k5@gVI5gpM4gpQ3gpY1upU2nZJ1T47tgtV2TQ4e0486gkgeI0er1pM4Dgev0h51vC_rgtN1Tk7vgwEe04c6gk4bi9I5D0it0VY1i0HrgtN1Tk7vggU0gMp1ggI<Q<208.73E___M2M>4weY04hgnWt0VU2DM42BwEe04o6gt_uTkgbuMEe04o6gt_uTkcb01M>1.w.afj__Ug;i0Uw4k5@kwU0gMp1//////////////////////////////////////////////////////////////////////////////##########################w1s}g5M]1zZ0g]g[h?}M[818}d[4gO}6g[8_g4:1I[2{q[13Z0g:7{8[fn@_SY;Y04}5[3w6}1w[M?}E[hM8}b[1w{M{.8]8{0c}k{s[5M}3U3w{07:F34}3.1M+1M[E2g}w[Q0k}9[1w[_L__rM<3o2}f___SY:g}3M__ZL;808}@v__rM;R####{>7Y2##########################%G38]2Ud}awO}U3g]1wdw]2wR}s3k]2odg]e0R-2Ecw]1wS}G38]10dw]awO}y3o]3odw]awO[3s]18dM#.2Ecw]80T}G38]2EdM]fwT}s3k#>G38]18e}awO}s3w]2Ue}awO[3A]1geg]awO-18d}10B[g[g0g8:awV)od}10B[g}1w0g8:cwV-3EcM]10B[g}3.g8:ewV-3ocM]10B[g{?8]wW-17gQcW82x7jBkF834Rbz8Kci0Oc38Rcj0Ocy0EkClA84xxt20NdiUObz4JcOA<8<4:1.17gig1cS4N040m}g1o}8<4:1.17gig1cS4N020i}j18}8<4:1.17gig1cS4N04gO}m38}8<4:1.17gig1cS4N040m}z1s}8<4:1.17gig1cS4N08gN}x34}8<4:1.17gig1cS4N08gN}x34}8<4:1.17gig1cS4N04Mi}n18}8<4:1.17gig1cS4N05wO}q38#(M010cw1$M020f01$M030302$M0403w6$M050808$M060dw8$M0702w9$M080fwe$M09>i$M0a060i$M0b04gO$M0c070O$M0d050W$M0e09gW$M0f.zZ0g^M0g013Z0g^M0h01zZ0g^M0i023Z0g^M0j.3_0g^M0k;w^M0l0101?^M0m0103?^M0n#>M0o03w7?+01<103N_M*d;C0a040m)f;C0a0a0m)y;C0a010n)U;g0m0103?]g}14;g0g013Z0g+1H;C0a080n-1T;g0f.zZ0g*0103N_M(2m;C0a090n}j04]2B;C0a0e0o}u0k]3f;C0a0c0x}k0c]3v;C0a010B}Y0I]3J;g0m0203?:1{90g>g0m0303?}g}r0g>g0m0307?:2{I0g>g0l0101?:k{X0g>g0l0601?:m[1b0g>g0l0c01?:e[1r0g>g0l>2?:k[1G0g.103N_M(1Q0g>g0e0f0Y%103N_M(220g;a060k-2L0g;a0e0k-3l0g;a080l-3Z0g;a060j)x?;a040k-16?;9>i-1D?>C0b04gO-1J?;a080j-2i?;a020l-2S?;a090N-39?;a0e0l-3V?;a0c0j)h0M;a0a0j)S0M;a080i-1y0M;a0a0k-1Y0M;a0a0i-2w0M;a040l-3f0M>g0h01zZ0g+3s0M;a>k)a1:a0e0j)G1:a0c0l-1d1:a0a0l-1O1:a020k-2n1:a>l-2Z1:a0c0i-3r1<g0i023Z0g+3A1:a020m)91g;a0c0k)J1g;a060l-1k1g;a040j-1Q1g;a060i-2y1g;d050W-2R1g>g0l0103?+311g;a020j-3C1g;a>j)91w>g0j.1_?+0f1w;a0e0i)L1w;a>m-1i1w>C09020i-1o1w;a080k-221w.4C%1C1g.4$2k1w.4C%2C1w.8#x1w.4$321w.8C%3s1w.4C%3R1w.4g0l0802?:c{81M.4C0a>N}x{s1M.4C$K1M.4C$b0M.4$1G1w.4#_1M.4C%1f1M.4g0l0502?:c[1x1M.4C%1Q0M.4$1Y1M.4C%2p1M.4g%2G1M.4C$f?.4C0a060u}o0c]1o?.8$2@1M.4C$s1>4$3e1M.4C%3F1M.4C%3V1M.4C$e2>4C$w2>4C%310g.4#N2>4C%2A?.4$132>4C%1l2>4g0l0b02?:c[1E2>8$222>4C%3f1>4$2u2>4g0l0e02?:c[2F1>4$2M2>4C#oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv03,,5xbD1It5ZzomNIbBZvoTxxnSpFrC5IqnFBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbC9FrChvon9OonBvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKpSlQsDlPomtBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbC9FrChvtC5OnSZOnS5OsC5V03,,5xbD1It5ZzomNIbDdQsCdEsA10hQN9gAdvcyUNdM,,0NpiVMr7hvoS5Ir2VvnStJrSVvsThxsDhvnM1vpCBKqg,,0NoiVMr7hvoS5Ir2VPt79IpmV0g4tcik93nP8Kcjs0c3,0Mcm4Ks6NQnSdxr6MKrm5HplZytmBIt6BKnS5OpTo0nRZDr6BKqRZgj5hOpndLr7pB03,,5xbD1It5ZzomNIbBZvsSVMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbDxCsClB03,,5xbD1It5ZzomNIbDdQsCdJs410hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2Vzr6ZzqRZDpnhQqmRBg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbDxJomNIrSc0c3,0Mcm4Ks6NQnSdxr6MKpD9Bomh0g4tcik93nP8Kcjs0c3,0Mcm4Ks6NQnSdxr6MKnRZBsD9KrRZIrSdxt6BLrA10hQN9gAdvcyUNdM1vnShPrRZEomVAr6k0c3,0Mcm4Ks6NQnSdxr6MKnRZMsCBKt6pFpmlBcj8Ug417j4B2gRYObzcO03,,5xbD1It5ZzomNIbC9FrChvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKs7lQsQ10hQN9gAdvcyUNdM,,0NoiVMr7hvoS5Ir2VJpmRzs7B0g4tcik93nP8Kcjs0c3,0Mcm4Ks6NQnSdxr6MKpClOsCZOg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbC9FrChvondPrSdvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKomhAnS9RqmNQqmU0nQhpjA5dikc0c3,0Mcm4Ks6NQnSdxr6MKsThOoT1Vg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbCpLs6lKg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbDdQsClOsCZOg417j4B2gRYObz4T03,,5xbD1It5ZzomNIbCpFrChvtC5Oqm5yr6k0c3,0Mcm4Ks6NQnSdxr6MKnRZFsSZzczdvsThOt6ZIg417j4B2gRYObzcU05ZvhQVlnQl8nQpigkR5nQx4kw1vnRhdgRZ5jAhvnM,,0NoiVMr7hvoS5Ir2VCoSNLsSl0g4tcik93nP8Kcjs0c3,0Mcm4Ks6NQnSdxr6MKs6ZIr410hQN9gAdvcyUNdM0Kl4Z3bw,,0NoiVMr7hvoS5Ir2VytmBIt6BKnSlOsCZO03,,5xbD1It5ZzomNIbDdQonh0g4tcik93nP8KcPc0nSBKqng0c3,0Mcm4Ks6NQnSdxr6MKrm5HplZKpntvon9OonBvtC5Oqm5yr6k0rmlJoT1Vg4tcik93nP8Kcjs0sThOr6lKg4tcik93nP8Kcjs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05ZvoTxxnSpFrC5IqnFBg4tcik93nP8Kcjs0oSNLoSJvpSlQt6BJpk17j4B2gRYObz4T07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM06pzr6ZPpk17j4B2gRYObz4T06pLs6lKg4tcik93nP8Kcjs0s6ZIr417j4B2gRYObz4T07hFrmlMnSxxsSxvsThOtmdQ05Zvs79FrDhCqmlBpj4Oe417j4B2gRYObzcO05ZvsSVMsCBKt6pFpmlBcj8Ug4tcik93nP8KcP80sThAqmV0hQN9gAdvcyUNdM1Pt79BsD9LsA17j4B2gRYObz4T07dQonh0hQN9gAdvcyUPcM1vnSBPrScOcRZPt79QrSN0hQN9gAdvcyUPe01MtnhPg4tcik93nP8Kcjs0pSlQsDlPomtBg4tcik93nP8Kcjs0sThOoSRMg4tcik93nP8Kcjs0pD9Bomh0hQN9gAdvcyUNdM1Pt79zq790hQN9gAdvcyUNdM1Pt79zs7B0hQN9gAdvcyUNdM1QqmRBs5ZCrDoNolZPt79RoTg0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcjs0pSlQgR1lt6BJplZPt79RoTg0pClOsCZOg4tcik93nP8Kcjs.2VPumRQom80bDdQsDhxow0KsSxPt79Qom80bCVLt6kKpSVRbC9RqmNAbmBA02VDrDkKq65Pq.Kp7BKsTBJ02VAumVPt780bCtKtiVSpn9PqmZK02VDrDkKtClOsSBLrBZO02VOpmNxbChVrw0KsClIoiVMr7g0bCBKqng0bDhBu7g0bCpFrCA0bD9Lp65Qog0KpmxvpD9xrmlvq6hO02VBq5ZCsC5Jpg0KqmVFt5ZxsD9xug0KpCBKqlZxsD9xug0Kp65QoiVOpmMKsCY0bChVrC5Jqmc0bCtLt.Kp65Qog0KoDdP02VzrSRJpmVQ02VDrDkKoDlFr6gKonhQsCBytnhBsM###+01I<7;w}380g]cw1}9*g(K<ZL__rM8[Y04]3M0g]3M{M[8(e;I<2[302}c08}81[g<3<2{o[4;3;w[U1w]3w6}hM8)4)18<____rM8[w?]202}5o{M[2{8[lg>fX__SY2[dw8}S?]1g{g<1<2(6g<4;w[E2g]2w9}Q0k}3{w[6[1K<1<48[@0U]3U3w[3[M>1g<8[1w[u;4<6{0i[18]1s(8(7U<1<1w}1w4w]60i}V1Y-2(24;g<o[h38]14cw]2g(4(yw<4<2[70O}s38]3w1M-4(98<1;w}1gew]50W}h*g)2w;g<8[B3E]2kew]602)4(Gw<U<3{zZ0g:2fQ}8(2{8[bo<f;M[g_g4:13Z}2*w[2[32;g<c[6fQ1]o_g}w(8(PM<o<3[23Z0g:8fQ]3w0g}g[2{g[dw<1;M{_M4]3_}k*01}2[1P<2;c{.2:1g_M]101)8{w[Tg<4<3[101?:4041[w-4(ec<8;M[g0M8:1030g:a0g-1(3E;g>3*g0M4:2U(1{4[Yg<s=3w7?:g0c1]w0g-1*4<2$6040g}M}q<m;w[6{9;M%1w404:c88)1(4g<c$8xA1]70g)g-'
;;

'riscv64')
b64=$'37902 18952\nmd5sum:b2c14ad268eed2c8ab1677d4e2d65745\nsha256sum:4ea0cf0c582d98e0d92ab86ee5653f0478f12187bf37f5c78f0efa2cec45811c\n000000000000000000000000000000000000000000000000000000000000000\n0000000000000000000000000000\n069FrChvon9OonBvtC5Oqm5yr6k\n000000000000000000000000000\n00000000000000000000000000\n0000000000000000000000000\n000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n000000000000000\n00000000000000\n00000000000\n0000000000\n17gig1cS4N\n000000000\n00000000\n0000000\n000000\n00000\n0000\n1M4g\n000\n00\n0h]s14:>:7\n0t6BJpn1voT9zcP9vsThOtmdQ\034vQlchw810g=0c0YM01+1=x3]1g.4?e?804?7?r?c?704,3zc`0pw*4{g,k`:34aw:cgG}1}1,1w.f0J]Y3Q:3Mfg:f04]20A}4}8,6,22U]8fw]w@]E04:2w0g]w}1<g;w}2{8]A}2g}1}1gVnhA1,80E]w2w:20a]3M}f{4}57Bt6g6``01{kKlQp0g.3Mbg:f0Z]Y3Q]g0w:102}g}4,5<c.17jBk0RGisKZeGZAr1XQHxr1Lec35wTjQ;M.2c,1,1w.118h409xg2;2c,D,N1LJmGG3zf7aTQtTGhltbG9neFOxd6BR`-3?E0s1c)e8,g%4I,h$4,w%94,g%4U1.i%6o,g%7s,i%2w1.g%bw,i%54,g%dI,i%bY,i%co,i%5A,i%6M,i%401.i%cQ,g%f<i%8w,i%5w1.i%1g1.g%7E1.i%641.g%5E1.i%9Y,i%3s,y%74,i%5Y,i%1Q,w%7c1.i%4o,i%ak1.g#1.g%cg1.h01g0k48]M}7Y1.i?E0v2]14}ds1.h01g0848]M}ao,i?E0_1s:2s0g:b41.h01g0w48]M}9c1.h01g0I48]M{1vilhdnShBsClDqndQpn9kjkdIrSVBl65yr6k0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1vnSdUolZCqmVxr6BWpg1MrSNI07dQp6BK07xJomNIrSc0pD9Bomg0pClOsCZO07xCsClB07dQong0pCZMpmU0nRZBsD9KrRZIrSdxt6BLrw1Pt79BsD9Lsw1ytmBIt6BKnSlOsCZO06pzr6ZPpg1yqmVAnTpxsBZLsBZxsD9xug1Pt79zq780sThOr6lK07dQsCdMug1yqmVAnTpxsCBxoCNB06RBrmdMug1CqmVAnTpxsCBxoCNB05ZvqndLoP8PnTdQsDhLr01yqmVAnS5PsSZznTpxsCBxoCNB!0rm5HplZKpntvon9OonBvtC5Oqm5yr6k0oSNLoSJvpSlQt6BJpg1DpnhOtndxpSk0sSVMsCBKt6o0rm5HplZytmBIt6BKnS5OpTo0sThOoSRM071Rt7c0sSlQtn1voDlFr7hFrBZQqmRBs01Dpnh3k5lQqmRBnTdQsDlzt01xp6hvoDlFr7hFrw1QqmRBs5ZCrDoNolZPt79RoTg|07hFrmlMnSxxsSxvsThOtmdQ06NFoCcKsSYKdw17j4B2gRYObzcU04tcik93nP8KcPc0hQN9gAdvcyUOdM:g02?4?g02?4?w01?8?g02?8?w02?c?w01?g?w02?4?w01?8?w02?8?w01?8?w01?4?g01?4?g01?4,1?c0Wg4?1{K96m1w?103P0g?4,behBwo.c0_w4?1,27Apo6.2?A2]Y3Q]3}foj]@3Q]3}bUj}3U]3=@]Y4}3}fww]@4}3{wz}44]3}fww]244]3}30z]444]3}b0A]644]3}7wz]844]3}c0z]a44]3}ewz]c44]3}30A]g44]3}fww]i44]3}6wA]k44]3}fww]m44]3}90A]o44]3}fww]q44]3}dwA]s44]3}2wB]u44]3}fww]w44]3}50B]y44]3}9wB]C44]3}fww]E44]3}d0B]G44]3}fww]I44]3}fwB]K44]3}4wC]M44]3}c0z]Q44]3}fww]S44]3}9wC]U44]3}fww]W44]3}c0C]Y44]3{wD]@44]3}fww}48]3}50D]248]3}a0D]448]3}fww]848]3}9wy]a48]3}50r]e48]3}f1}g48]3}fwD]k48]3}6wy]m48]3}50r]q48]3}411]s48]3}1wE]w48]3}3wy]y48]3}50r]C48]3}9x1]E48]3}3wE]I48]3}2wy]K48]3}50r]O48]3}d11]Q48]3}5wE]I3Y]2<M+K3Y]2,1-M3Y]2,8M+O3Y]2,9g+Q3Y]2,9M+S3Y]2,6M+U3Y]2,7w+W3Y]2,a-04}5<w+24}5,1g+44}5,1w+64}5,1M+84}5,2-a4}5,2g+c4}5,2w+e4}5,2M+g4}5,3-i4}5,3g+k4}5,3w+m4}5,9w+o4}5,3M+q4}5,4-s4}5,4g+u4}5,4w+w4}5,4M+y4}5,5-A4}5,5g+C4}5,5w+E4}5,5M+G4}5,6-I4}5,6g+K4}5,6w+M4}5,7-O4}5,7g+Q4}5,7M+S4}5,8-U4}5,8g+W4}5,8w+BPc?3c3MQ43LwfE4Md3_pe20@wjkNc0wXa206s03w0nfw.PUeVSs33w0j,5PU.c@zKpD0MU04M.1s@.3fwXCpMce01c,nfw.PWeVms33w0j,5PU.c@3KlD0MU04M.1s@.3fEXApMce01c,nfw.PUeV6s33w0j,5PU.c@zKdD0MU04M.1s@.3fwXzpMce01c,nfw.PWeUCs33w0j,5PU.c@3K9D0MU04M.1s@.3fEXxpMce01c,nfw.PUeUms33w0j,5PU.c@zK1D0MU04M.1s@.3fwXwpMce01c,nfw.PWeTSs33w0j,5PU.c@3JZD0MU04M.1s@.3fEXupMce01c,nfw.PUeTCs33w0j,5PU.c@zJRD0MU04M.1s@.3fwXtpMce01c,nfw.PWeT6s33w0j,5PU.c@3JND0MU04M.1s@.3fEXrpMce01c,nfw.PUeSSs33w0j,5PU.c@zJFD0MU04M.1s@.3fwXqpMce01c,nfw.PWeSms33w0j,5PU.c@3JBD0MU04M.1s@.3fEXopMce01c,ndg?4Mk5ZVsT?2jxUvSoUyD09sT?23JQv3Ase2xUa05Pk?1c5Vvindg?AUlBZ8CdAZsRgfShLFm5xpD5BPs?8eT1YehMUa7wE2ndM?wYsDYFTDgh46V9sT?23JYv0Assndg?4MmBEEanX_0v@q9wxksndM?8MPTXA41wE22w76_BPs?8eD1@@lOVd7ZvYlNyWm5Pk?1c5VuS3Nwk06Zu708k5Jo@jZ_sfywuGBVN7Ko_zBcn@4YnT_Ua0JUqUXpe61zane.AUx8WM584Mc041d@602rlNw0eMX0gjd@Tw0jZNs0eMvwgbf7NM6rRNs0toYZzNf@5M0rlNs0eMX0gjd@Tw2jtNs0KMvMg3d7NM4rlNs0Zo@VzMmbCZsn03I7U40j_xs0to@VzPI7M46rRNs0toYZzUmb6Rsn0bI7Y43RzNd@5M0ZzXI7M44rlNs0ZoYZzOewW?5a948UNFEZEl75Ps?2cCZ@0VLR5NEL6CXsHFxLneVtbxlLRuZod71g0GyqW4CUsT_ja46Us709Dz0Qsl06cr1O0ndM.Ot7TpsT?2jxYvsjuKTxHzJAUo6cFsR?2jxins0koj1g0g4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs70hJn5M3RzXCf1oKrRNs0eMvwg1fU5M1RzXCfeMs0gpLn5M1RzPSfxoIrlNs0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZFsT?2jx@vh1kuoMMeTxQ1z3wsexku25M56xkkE03XAX_1_RmdrE0W3l@40xoJzxwseBPs?8eThVJ1pgeW1M3LY7@_GEC5iCc11hFq@mbNpKRGWjuFYIIj2lDeJOsyx9e7lP85jg8pQEp1pEl5jEky7jWpX_0_MhcdfhI1iVsX?2jyMLa5MM?1cczdGGz0TdwXubgcnfmElCxIW5wFsPxzM1aELexMf71M251Pd99M4P2qA3UNDS_Ja6gmq5hkW5X_1vLaGcqvlixu_MLYyGyQW5oVwb2K_M_X5zywEcCs0zE6g1oME444FX2DPGr4FJ8P0A0qVM3DjKp4VFHCAeqKFWnEmGuSRxwE0n1M?4MsDQyeQVQ3RLgM85Nk?1c5FpTLY3@TGEFpOpsT?23JWubgmk3Kws0X_3vHWG9jslq@mbNpKRGWola8rszJ8J1BMs?9e7NYQZLVsl?2jximqiEnLY1@@aEF5Nk5BX_1_HaG9fslq@mbNpKRGWo5aOrTLY3@DoUwa0K_MLWs8golbX_0_JaG55Nk?1c5hpTLY5@ziDIaveFIiCSxJRa5X_1vK2STkEnLYd@T@run5g?AUnBANsl.j1umiX_1_JOGa7sl1pu_MTWmGyucm1upixu_M7Xkn5g?4Mn5BK_MnVW5i_SZiDIaveFIiCTlLhsl.j1imgX_2_D8lbRrnLY3@v2465i@_MLWIGxIG55Nk?1c59p7LYb@qSrlz30konn5a@2W9AMmM1qbw9LNeZ8rAaEiOyu_MLVSGx1D98EnLY1@w8Fk3h_n_AMvg1mc5ZM9axu_MTVU51u_MvVPaxu_M7V@Gxia51CiCoe9QgDBexG9Vom4JJ5rIIUG4g1e56w1iYe_MTVCyxlq6aEG51e_M7VHiCye02w0Cxu_MnVGj2Ln_X_3vBRq6FEkGxaaqX_0vC5a58U0a0e_MvVw51u_M7Vrixu_MLVyGx2a5X_0_BMk5X_3vBaa5X_1_BWGaiEnLYf@l1gnLY9@jOEnLY3@maEBixu_MLUUyxu_MnUUCxu_M_UFpOhNl4_s713TzAoKxMMbAX_2_zicw1g0Gx2M0lEkFhK_MLVyypSealM63NMs0Ausog9c7809z6vs45Nk?1c51onmxu_MvUs1hgCEFEkn5g?4Mn5xK_MnUo1hqpw1Cg2uK9GUDh2uq9Vom62w0pA0DGCo4W7OEqyuk9VlEqCxu9GUDhxotmWGEnexAG69EnLYb@kUrsCxu_MfUoZYqq55Mk?1c5FnPLY3@1vrs1hoa03n66XBbWzktzPqskEKGCVIHyjLW5hSftFMO0pod7102hUM54zks1imc5Zhq42aq52knLY7@aqumTFYgwpCujxSuWJ_pjUVe6ZDO25YpFJFuP5_s2JQof09e61yhZBMM9vlmPytA2DoupzXWpX_3f@yGasu7apwFTJQsf09e71OiPxLo2WCkGtHc7ZMaKBHWmIFreBCcf10NmZFca0g4n1w?4MoCvFc5?hmxu_MTUrmxia50krLY2__oM490xs6.j1ypYAMk01cW69EnLYb@4FElaxg56X_0f_lpAZC2Sp1pFYDCOuBa5kDERooa?kg1iog8FEk9hu_MX_QdTgM90kkKVe_Mb_51XsFF2DuThMY0AUs79be9@g9GpGFSEClZlrc7ZMaOCrWpJFDLYa_KaEExQu_Mb_08gu_MP_OGxhs5.j1ulNX_3LWRpAJCgmqv9V1kHSo5a5kDERooa05Mk?1c5VmLLYe_F1kHBJXq55Mk?1c5hn7LYc_ZZC1mpbpA5CDOula5kDERooa?XA50od72g3zCgvE0kChL@_Mr@A8gu_M3_qGxhs5.j1ilFkrZRsoG58K7a@0rBFLPLY4_U0PA502G4BMk?9e59mNaxu_M3_NxPps5?2jxilIiEnLY0_XGEgZNps5?2jxglKiEnLYe_VGEhz0wkeBMk?9e5NmZaxu_MH_yGx5TJwAsdhSd3ZOhzzesq2ksn1g?4Ml5k6eqVM08p8d71g29VNs5.j1glfBNs?8eT1YEM04M?I8@Ve_M_UZz?kmxkilE8973ktziLsioULD30B75Mk?1c5VkJzB@s026i3hMk0oUs74Fsn?23JMv6c021hjXAX_0vz7DNECoj2g41iEkn1w?4Mp6qVc5?fLY0_DiEnLYa_Ecq02hqa5X_2vRaG48EnLY8_mGC0ap4pV9EnCt4BxwE3axhs5.j1slBX_3fQEl4Yr@2hMR7oQjT66ebVN89hNs5.j1ml3oVHD?xAwQs508DD5Mk?1c59k81hyM?IjLYb@38v6yhxc90g5axhs6.j1CpzAMk?K_MHZVaxu_Mj@1pJMxA0PA40od71g03hMA0IuYn1g?4MnBfmca1OOn5M?wXuDK3?wkneZ3XAX_2f_Ccq1jqypFc90g5exhs6.j1GptAMk?@_MrZDexkG50krLYc_hFDARJNs5.j1slhX_3fNEl4cr_z3wvIvrsn1g?4MnBd_CR8Cuihxc90g5axhs6.j1ypqAMk01u_MXZhaxu_MzZrJJgxA0PA40od71g03hMA0oUY75Kcc1@in5M?wXt7HP?j03eZ0b2fKjLY0_RoNU5b29DAAqj2g41jEkn1w?4Mo6lpc5?nLYc_fDrs8p0cV1063hMk?Qs90a7bUMU7X056b03eZ0b4X_0fYmcu1iyyhFc90g5exhs6.j1GpgAMk?K_MXYIBJNs5.j1glbX_0fKEl4wrQn1g?4Mk5h@_M3XC5h86R5Mk?1c5xiFtZNsD.39StcBOs?9e7VQJdWXu6KeSjxwoOBOk?9e5hkI1hxc5010ju1o0CRsm03I8044Pudw04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8044Pudw0ATsn0bI7Y40PhMs16Rsn0fmfKoY5yVLn5M0X1@104_wn07mfKoYX1M11CZsn07mffo@5yNJn5M2X1_10ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrSBOs?9e71Q45hVz30Xu7gecn1ZonZ___4Mv7k2eQVQ2VKNs5.j1mksUN47W1sD.39Os@BOs?9e7FPRVZXu6KeSjxwoOBOk?9e51jQ1hxc5010ju1o0CRsm03I8044Pudw04_sn03I7U42PNMs1CZsn07mffoYj@1s06Rsn03I8044Pudw0ATsn0bI7Y40PhMs16Rsn0fmfKoY5yVLn5M0X1@104_wn07mfKoYX1M11CZsn07mffo@5yNJn5M2X1_10ZoYju1s0fo@X1M116Rsn0fmffo@oMgkCAgnz6WrScrYn9M.OuDcFsD?2jxOsO6vKTxHzJAUo6cFsB?2jxokN0koj1g0g4Twm09Jn5w0X2011cTzo01fT5M0X1@10IYs70pLn5M1RzPSf4_wn01Jn5M0X2011cTzo09dT5M2X1_10cQs70hJn5M3RzXCf1oKrRNs0eMvwg1fU5M1RzXCfeMs0gpLn5M1RzPSfxoIrlNs0KMvMgfmf4Twn03SfKMs0ghJn5M3RzPSfCc459F45UNKCZFmRFDC5hf6@gh65hhsB.3donS1KjLY6@Ixkkn9g.Pk5Ze_MzWK5hhsB.3dinOX_2LGEl55Ok.cRNv7LYc@FEC01hk41wE0J}79y]t6BJpn0W86pxqmNBp21QrO1Ls6lK86NFt6lOomMwpCBIpi0DbyYJ9M{t6BJpn0W86pxqmNBp21QrO1Ls6lK82sBsOsW82lP?1QqmRBs3EwrTlQ86ZC86RBrmZOug,1QqmRBs3EwsClxp21BsD9LszEw9nc.1ComBIpmgwt6YwoT9BonhB865OsC5Vey0BsM:6BKtC5IqmgwrDlJpn9FoO1FrChBu21CrT8wqmVApnxBp21xsD9xujEw9nc;2lPey1KrTgwomUwon9OonA{6tBt4dglnhFrmkW87hLrO1JomVV865OpTlJpmVQsM?pSlQsDlPomtB82xjhkN6ai1ComBIpmgW82lP;1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g<9mNIp0E.1Dpnh3k5lQqmRB]t6BJpn1vpCVScm4;7hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP8;7hFrmlMnSdOoPcOey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1vq65Pq]7hFrmlMnSxxsSwW87hLrO1JomVV865OpTlJpmVQsM?t6BJpn0W87lKqSVLtSUwoSZJrm5Kp20D9ncD:Bc34Sr6NU02kMe7w<9j0Uu2QBc34Sr6NU<5ljgkt5ey1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ:13rSRMtnhB84digPcO865Kp216jBoJcm4wa3oQai1Lpy0YpCBIpjUwomVA86ZRt71Rt21xsPEwf6dOoPcOfyQYpCVScm4@?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSZJoCBKpmgwsThOqmVD86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb<1Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK]imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSxxsSww9Osw9OsFb=820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1EondEpncK{1lkQ57hjEwt6BJpn1voT9zcP8wf4p9j4lYbjUwmPNmgl8@ng;gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU<imowf5p1kzUwqncws79LtCBApmgwt6xB86dEpmdHsTlJ82wU86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb;w820wrThEpn9TqndB86BQ86BP871OqmVQpmgwt6YwsThArTlQbw?imowoCZQq20YhABchjUwomVA83Nmgl8@865Opi1MondPpmgwoncwpmRMt7Awa7hFrmlMnSdOoPcO82sD82sDaiM}820w86BKqnhFomNFuCkwt65yr6lP869Rt21ArO1KrTgwoSZJs7lQpi1x86dOoPcO86xxsSwK?1lkQ57hjEwt6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng;gSZJs7lQpi16jBoJcm4wdzgJoCBQ86xxsSwwrSowf6pFr6k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU:19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb,5ljgkt5ey1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt?1ipnhRsCUwq6BDq2ROpndLr7lQqmZK84dgli1QqmRB82xJqmdOrTdBoSZKp7cF87lPpmgwoDAwt6xFsO1MsCZzpndP865Kp01xr6MwpCBKqndEpmgwoSxFr6gws79LoSlPsSlP865Kp21xr6Mwt6xBqn8wpCBKqndEpmgwp6lPoSlKp6lKt7cK{19py0YlA5ify1FsO1DqnpBryMwondPqmtKsO1Qq6kwtC5Itmkwt6Ywt6xxt21Son9Fom9IpjIwrThEpn9TqndB871OqmVQsO1Ft2U;4BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU:1QqmRBs5ZEondE83NCqmNBv2Q@85IYlA5ifBQ;7hFrmlMnSdOoPcO83NCqmNBv2Q@85IYlA5ifBQ<t6BJpn1vpCVScm4wf6pFr6lYbjUwmPNmgl8@ng,1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt02kz8EjADfbb0hI3ePM,6,ueL__Rg.1CXf__q,7PL___Q,6f7__S01?3gYL__S04?fPT__Yw0w:1=TFi?5Y0g4r30804,1w,sW___Xw]28,b,frH__Ym0M.48eY05ky0i91F88wgaj2FgcBgWn4wcy0pogC1ip5FEo0FzmgJx2SkbqhwH1gIx2OkbigJd2R4blhdt23w122M90Bx2o59AmCxxgRJzpSCim49wkChqq66waRAbogJB2SA8bkdroStE2eFogC1ip5FEogJp2S4bpgJE?6w.2U,weX__VM1,hwVggF88jEw4ygqj2E420zwaO4b1gIB2QAjjgwU0gwJ2BgVaB0M3U?aMkb8gJh2Rkb9gJ92QQ8e048bgwH8gJh2MkrjgJ96Rkb9gwU0gwJC3w31OcDiQZjl07g,A0g?Ie___Xw1,gwXw0Aq10FgcjEw4ygqi29ca0Eil3w94O4b1gIB2QAbjgJl4R48e048eU0a10Ew4ygqi29caB0M2ocx2OkbigJd42I54R48e048bk8w4ygqi29cak0H1gIx2OkbigJd4R48e048b04g.2s0g?Yf3__OM5,gwWg0kG81988wga91wc20gH1gIx2QAj9gwU0gwI2B9cardc2r0Gj2CgbmFcapdc3vwaj2Abj01M.3A0g?Rfn__Qg<gwUgj8420z31h0U~~~~~~~~~~~~~~~~~`#g]3F0g:1A}Y3Q]r{w}6w]3Ufg:1M}2}3R_LZL<2w2]1g]101w]o}q08]a}1g2]2M}o{c}Y3Y]2}d02]5{7}1s}E0U]7}ew8]2}282}A}6}3@__ZL<aw8]____rM<1}f3__SY<l0w:3V__ZL<3k~`%8fw~`03__________M{s14:>:7/////////0h~~~~~~``01~1~1~1`=?4t3gPEwa4teliAwcjgKcyUN838MczgMej4O82xipmgwi65Q834Qbz8KciQPag11pg.79FsSdS?5r,1105sDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc?8,4;1?[070j]s1c]8,4;1?[070j}xg]8,4;1?[0c0w]M2}8,4;1?[0c0w]M2`^c?g.w^c?w0E0w^c?M1E0w^c010101w^c01g1k2%c01w2E2%c01M3E2%c0202w3w^c02g>^c02w1M4M^c02M308%c03020a%c03g30a%c03w3Mfg^c03M3Ufg^c04.fw^c04g08fw^c04w2EfM^c04M3MfM^c0503Mg%c05g3wgw^c05w`c05M`c0603Uhw(g,g0YvY&3g,802w1M4M)8w;2w1M4M)3M,802w2i4M)tM,802w2@4M)zg,405g3wgw]4}Cg,403M3Ufg)M<802w3S4M)P<403w3Mfg^g0YvY&WM,802w3U4M:eU}8w;2w3U4M)@w,802w3C5]1o3]904.802w2o6g:bw1]d04.802w1g6M:2M5]gw4.405g3Egw]g}nw4.405g3Mgw}4]s04.405g3Mhw]w}wg4.40503Mg]5{A04.405010gg:5w}E04.40502ogg:3w}I04.40503ggg:5{LM4.g0YvY&Og4.403g30aw^g0YvY&RM4.40YvZM4g)Yg4.404.fw)_w4.40YvY8fw)1M8<3020a(6w8.40503wgw)9w8.40Yv@EfM)f08?1$iw8?14%mM8?2$tM8?1$xg8?140501ggw:3{C08?18%Hg8?1802w1Y8]4g}Mg8?1$NM8?18%UM8?1$@M8?18%3gc?1405?wgw:3{7Mc?1$9Mc?18%egc?18%iMc?18%ngc?1802w3Y5M:9M1]rMc?18%w0c?18%A0c?18%Ggc?1$JMc?18%Qwc?18%Vwc?18%@wc?1$3wg?18%7wg?1$W0c?18%c0g?1405020gw:3{gMg?18%lgg?28%rMg?18%w0g?18%Awg?2$H0g?18%Lwg?18%Pwg?1$Swg?140502Mgw:3{X0g?1#6dOt69BpSBKkOVL06hBsClDqndQpn9vt6RvoSNLrClP02hUsDoSd6AOs35vrj9Mc5ZxcD0NnSoOs39vp39McBZzcD0MnTFFoTdOcD0MnTFFpClKoSlFcD0MnTFJrnlIcn0MnTFxomRLcn0MnTFxr79PoP5Mc01vnShLnStIrS9xr5ZAt6ZOsRZxtnw0oSZJs6NBt6lAbz?nRZArRZDr6ZyomNvp7hLsDdvonlUnSpFrCBvon9OonBvpmVQsDA0pD9xrmlvp7lJrnA0nRZCsC5JplZAtmRJulZFrCBQnS5OsC5VnSlKt79V07hFrmlMnSdOoPcOnTdT07hFrmlMnSdLrn1Rt6lvoT9zcP9vomVAnSpKtz5xbCdLrDdQs79Ls2UM06tBt4dglnhFrmlvrm5Frw1QqmRBs5ZytmBIt6BK07hFrmlMnSdOoPcOnThxoCNBnSBKqnhvp6ZKpg1QqmRBs5ZzsCcPcBZQom9Ipg1QqmRBs5ZzsCcPcBZFrn1I07hFrmlMnSxxsSxvp6Zz07hFrmlMnSdOoPcOnShLoM1QqmRBs5ZCrDoNolZArSc0pSlQgR1lt6BJplZArSc0oT9QpmVAkOVL05ZvhB91jklvhkV4nRY0nR1ijQd5h5lihlZcikVbgkt5nRh1gAN5nM1vnShPrRZEomVAr6k0nQhpjA5dikc0nRZ7jBlvhkxvhB91jklvi4hi05Zvl4R3nQleh5Zv05Z7j4Z2gkNvjQp6kQlknRh1gAN5nM1CqmVAnTpxsCBxoCNB07dQp6BKg4tcik93nP8Kczs0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB069RqmNQqmVvpn9OrT8|06tBt79RsS5Dpk17j4B2gRYObz8T07dBt7lMnS9RqmNQqmVvt6BJpn?u6pOpmk0nRZBsD9KrRZIrSdxt6BLrA17j4B2gRYObz8T06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07dQsCdEsA17j4B2gRYObz8T07hFrmlMnSxxsSxvsThOtmdQ07xJomNIrSc0rmlJoT1Vg4tcik93nP8Kczs0sThOr6lKg4tcik93nP8Kczs0sThOoT1Vg4tcik93nP8Kczs0oCBKp5ZSon9vrT9von9OonA0pD9Bomh0hQN9gAdvcyUOdM1Pt65Qg4tcik93nP8KcPc0oSNLoSJvpSlQt6BJpk17j4B2gRYObz8T069FrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZIg4tcik93nP8KcPw0sThOpn9OrT90hQN9gAdvcyUOdM1PrD1OqmVQpA17j4B2gRYObz8T!0s7lQsQ17j4B2gRYObz8T06RxqSlvoDlFr7hFrBZxsCtS07hFrmlMnSpKtz5xnTdQsDlzt01CoSNLsSl0hQN9gAdvcyUOdM1vnSdUolZCqmVxr6BWpk17j4B2gRYObz8T06pLs6lKg4tcik93nP8Kczs0pClOsCZOg4tcik93nP8Kczs0nQBkjlZOpmtFsThBsBhdgSNLrClkom9Ipg1Pt79zrn10hQN9gAdvcyUOdM1MrSNIg4tcik93nP8Kczs0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?Kt6lUt?KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bD9FsSdSbC5Qt79FoDlQpnc0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP~$1I,7<w=w}2]9&g*K,ZL__rM8}a08]E0w:3M{M}8*e<I,2}6w2]q08:3o0M]g,2,2{o}4<3<w]101w:406]508(4(18,____rM8}l0w:1k2]58{M}2{8}lg.fX__SY2}aw8]G0w:1=g,1,2*6g,4<w]3E2]ew8]K0k]3{w}6}1K,1,48}E0U:2w3w:d02}M.1c,8}1w}sM,4,6}70h]s14{w)4{g}7w,1,1w]1M4M:70j]k0Q(8(1@<g,8}M2]308]c07(8*xw,4,2}80E]w2w]Y*1*9g,1<w]30a]c0E]108(w(2u,3w,c}Y3Q:3Mbg]w*8{w}Gw,Y,3}fwZ]@2Q]8*2{8}bo,1<M{fw}K]2&w(33,1w,c}23U]8bw:a01]1{8}1{P<4,3}aw_]G2Y:18*2{8}d4,1<M]3MfM:f0L{4(w}2}3q<g,c}Y4]3Mc]f01(8*U<w,3}e12]U38]o1(2*ek,1,c*e0O]bw*4{g]3K<M?s&0ecM:6o*1&04.s+fx6]t3c:2g*1&4,2$wQ]W0w]q,e<w}6{9<M^3Mf{5(1*4g,c%Y44]m0g(g)'
;;

's390x')
b64=$'54048 27024\nmd5sum:496fef6bb4e058c225882ad024cc1dbe\nsha256sum:757e00c54159db70004e3344e6ca3ea629a4fb4dc1ea89bd1ec814e9cc803891\n0xqVLYfqD1C1zLa4g4bn86@5ITSKiprrX1TUhyThTu6QZbkYtjygCztI_wvSEdKAJaeC@nlLwRYTe@T2ZLv8pm_iEbyK7EkuX4HHwOS6Pys2gqFWMUSfT87pUk5\n0QHSgghWod6Xp_6CL5tDfXk6TkyOdALmRGfEEt6jvzzoMIhfT_9i@rDvrUW@X_AnJXV3ob2eRvXk6Tq9QOLw4dFWmCvtiIPToBttw6lDONBIdD5KqMrDY\n0yFLaViWQ3o5Pts6ARjulOAzSmu_LrTO7cGWMEFjIVcM9bizFGCYHBfuKVX5hXbfvP2R_@CKQmFaStpqT43v2SoTS3LMFSsCot1w5Lt9qktdfCVTSW\n0wYLeVsky4LA7u2rpcaTWNvbTDK2Q7AbYtAgXry39VTbyAUdnF7FviSow7rsgps6HQz@BzFjmup9mz\n0gJsPc37umG2ANvTgRYOkdFWmEQrJDYHmu8hJFwKd1aTWl1ftylRWjhN6TjRLjXjr9xm3GRksWzL\n0GbSZYxRxEj171ohSHJCoJfiw2K9Vv1ow8NwPpIH4bWigxJfiRlHf48Y@WBpCULqkf9JAMH57u\n00000000000000000000000000000\n0000000000000000000000000000\n000000000000000000000\n00000000000000000000\n0000000000000000000\n000000000000000000\n00000000000000000\n000000000000000\n00000000000000\n0hQN9gAdvcyUO\n0000000000\n41_4d4ecg4\n000000000\n00000000\n0000000\n00000\n0000\n000\n00\n___\n0KCOJnJXV3yDpOpyMQ9wyNZuEJ5tEJikwrUmPKmrk2sVxV9Zg1n4Y9M91GHUb41393226h$\034vQlchw820g}.301o>1(g;69g,01?3w01M1?1Q07,4>5^}0hI;16M;1<g>o<1dO;5T8;nsw;52:Aw;4,02>1w<4Tw;nu;1tU:7}s}2,g>4:sw;1O:78:2g:9}4p7jBk,g<14y;4i8;h8w:f}Y}hAtelh>1w^^>46hQVl8>4;jsw<1tO;5T8:zw;2e}1>1>1g>3hQVl0fy41wpt2F6PCWcH_hcI6zwE0K8Y}c>x,g>q?8k9g4h84}x>9lHJ6YjNz8eGtQvvOyVt5qCseBuytmAQEg^{M?2g<14o{3z4^168w^g8^2w4^5r4w&1l4w&3e4w&514w&1V4w&204^4F4^1z4w&1r4^1P4w&5Q4w&2n4w^18^1E4w&3l4^374w&3N4w&1J4g&264w&5p4w&414^5y4^2K4w&5f4w^I8^6v4^4l4^6@4g?5w<69}3>5V4w?2M<33w:5w.7h4g?5w<68g:3>2R4w?2M<20M;1xw.6H4g?5w<69M:3>6d4g?5w<6aw:3?nRZDrmZKnTdQon9QnRY0nQBkjlZApn9BpSBPt6lOl4R3r6ZKplhxoCNB05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0nRZzu65vpCBKomNFuCk0pCZMpmU0u6Rxr6NLoM1MrSNI07dQong0sThAqmU0pD9Bomg0pClOsCZO07xCsClB05Zvpn9OrCZvr6ZzonhFrSU0sThOpn9OrT80oDlFr7hFrBZBsD9Lsw1CoSNLsSk0oCBKp5ZSon9vrT9von9OonA0sThOoSxO06RBrmdMug1yqmVAnTpxsCBxoCNB06pFrChvtC5Oqm5yr6k0nRZFsSZzczdvsThOt6ZI069FrChvon9OonBvtC5Oqm5yr6k0oCBKp5ZxsTdLoRZSon9Fom9Ipg1JomJBnSVBtRZxsD9xulZSon9Fom9Ipg1zr6ZzqRZDpnhQqmRB06tBt79RsS5Dpg1PrD1OqmVQpw1JomJBnS9RqmNQqmVvon9Dtw1MtnhP07dBt7lMnS9RqmNQqmVvt6BJpn?pSlQgR1lt6BJplZPt79RoTg0omhAnS9RqmNQqmU0t6BJpn1vpCVScm5vsThOtmdQ07hFrmlMnSdOoPcOnTdQsDlzt01QqmRBs5ZEondEnTdQsDlzt01Iqm9zbDdLbzo0hQN9gAdvcyUPe017j4B2gRYObzcP04tcik93nP8Kcjs0hQN9gAdvcyUQ04tcik93nP8Kcw;4?w01?4?M02?801?2?4?g02?4?w02?8?g05?4?w06?8?w03?4?g02?8?g01?4?g01?4?g01?4?g05.1UM.1,01FqhK,o.7J>40qmArc>5.1@>106BF6n>1>wc>g3mBF5,c.8e>40RFqh8>2.26}.1tO}c;5t;1tQ}c;5o;1tS}c;ntw<1wU}c;fqo<1wW}c;fTU<1wY}c;fqo<1w@}c;fW8<1x}0c;gew<1x2}c;f@E<1x4}c;gm;1x6}c;g3;1x8}c;g78<1xc}c;fqo<1xe}c;gag<1xg}c;fqo<1xi}c;gcw<1xk}c;fqo<1xm}c;ggU<1xo}c;glM<1xq}c;fqo<1xs}c;gog<1xu}c;gso<1xy}c;fqo<1xA}c;gvU<1xC}c;fqo<1xE}c;gy8<1xG}c;gCU<1xI}c;gm;1xM}c;fqo<1xO}c;gHM<1xQ}c;fqo<1xS}c;gKg<1xU}c;gOM<1xW}c;fqo<1xY}c;gSU<1x@}c;gXE<1y}0c;fqo<1y4}c;fNE<1y6}c;ak;1ya}c;oe;1yc}c;h0U<1yg}c;fKU<1yi}c;ak;1ym}c;oj;1yo}c;h2E<1ys}c;fI8<1yu}c;ak;1yy}c;oow<1yA}c;h4w<1yE}c;fHo<1yG}c;ak;1yK}c;os;1yM}c;h6o<1vK,c>a-1vM,g>a-1vO>24>a-1vQ>2c>a-1vS>18>a-1vU>1s>a-1vW>2k>a-1vY>1U>a-1v@>2o>a-1w,08>b-1w2,c>b-1w4,k>b-1w6,o>b-1w8,s>b-1wa,w>b-1wc,A>b-1we,E>b-1wg,I>b-1wi,M>b-1wk,Q>b-1wm,U>b-1wo,Y>b-1wq>1,b-1ws>14>b-1wu>2g>b-1ww>1c>b-1wy>1g>b-1wA>1k>b-1wC>1o>b-1wE>1w>b-1wG>1A>b-1wI>1E>b-1wK>1I>b-1wM>1M>b-1wO>1Q>b-1wQ>1Y>b-1wS>2,b}3Hr_0M02iV1?vF_L_oecgY.9c3>DeI0g.Dk@cg4.1bA2016Dx?33u7zgf4g?jHr_3g?g7Z.UN3Me?AM1.2sxQwvMc108UN0g4?41_47?s01M304.9Qjz41>g7YgQgUN0g3?kMfj/_B,c0g.Deecg4.10vN3h3z410c01j0Zf/Zk>oM1.2sIUN0g.]0M05c3Q/_Ng.3304.9O3z41>g7YgQgUN0g3?kMfj/@R>ic0g.D5ecg4.10vN3h3z410c01j0Zf/Wk.1wM1.2s8UN0g.]0M05c3Q/_Bg.7z04.9LPz41>g7YgQgUN0g3?kMfj/@5>Ac0g.CYecg4.10vN3h3z410c01j0Zf/Tk.2EM1.2rAUN0g.]0M05c3Q/_pg.c304.9Jzz41>g7YgQgUN0g3?kMfj/Zl>Sc0g.CPecg4.10vN3h3z410c01j0Zf/Qk.3MM1.2r0UN0g.]0M05c3Q/_dg.gz04.9Hjz41>g7YgQgUN0g3?kMfj/YB.18c0g.CGecg4.10vN3h3z410c01j0Zf/Nk.4UM1.2qsUN0g.]0M05c3Q/_1g.l304.9F3z41>g7YgQgUN0g3?kMfj/XR.1qc0g.Cxecg4.10vN3h3z410c01j0Zf/Kk.60M1.2pUUN0g.]0M05c3Q/@Rg.pz04.9CPz41>g7YgQgUN0g3?kMfj/X5.1Ic0g.Coecg4.10vN3h3z410c01j0Zf/Hk.78M1.2pkUN0g.]0M05c3Q/@Fg.u304.9Azz41>g7YgQgUN0g3?kMfj/Wl.1@c0g.Cfecg4.10vN3h3z410c01j0Zf/Ek.8gM1.2oMUN0g.]0M05c3Q/@tg.yz04.9yjz41>g7YgQgUN0g3?kMfj/VB.2gc0g.C6ecg4.10vN3h3z410c01j0Zf/Bk.9oM1.2ocUN0g.]0M05c3Q/@hg.D304.9w3z41>g7YgQgUN0g3?kMfj/UR.2y}0M1.2rEM2.2rBX1802E1AN1w?2lnX1w0101Y1_47_ws71Ms71Ms71Ms71Ms7M1.2rgM2.2rdKgA04KI1?c02KIN03Y03bA8033HcM01?HIe?d07P46.9kHI6?707P08.9Hg7Ygv@1Ms71Ms71Ms71Ms71MvHL_1o02j0I.9GnzYfZw_T6l0b?FTg05s0g.B3@cg4>Gu4?z08.91v0Vv/vj0Vv/Wmi0r?WX_M@?41_U71Ms71Ms71Y3Q/_I0s71Ms71Ms71MuPMg0JMd>T6M1.2pTUR0g.iFUg0jKN80380vc0D/__Q43g02V5w1iFQ4?qtQ02LHh?1?Pz03.92DeM025MnI83qZ0BBo0x08X0kwfPxnUR0/@g5R3I9jqZ0BBo8x08X20EfPxnKho0kGt7_@j09/__@V5w0yIYQ0Qwv@UO0M?2gFPI?hsBX28SLg9pm28g2eMB83YUlXAm05bIcf_7o6iDZf_BVM3jY306VQ3jU306VS3jQ306VN3jM306VP3jI306VR3jE306VT3jA306VM3jw3w6VO3js3w6VQ3jo3w6VS3jk3w6VN3jg3w6VP3jc3w6VR3j83w6VT3j43w6VU3j03w6VW3iY3w6VY3iU3w6V@3iQ3w6VV3iM3w6VX3iI3w6VZ3iE3w6V_3iA3w6VM0g230eVQ0g630eVM3iw306VQ3is306VS0ga30eVN0ge30eVS3io306VN3ik306VP0gi30eVR0gm30eVP3ig306VR3ic306VT0gq30eVM0gu3weVT3i8306VM3i43w6VO0gy3weVQ0gC3weVO3i03w6VQ3hY3w6VS0gG3weVN0gK3weVS3hU3w6VN3hQ3w6VP0gO3weVR0gS3weVP3hM3w6VR3hI3w6VT0gW3weVU0g@3weVT3hE3w6VU3hA3w6VW0h23weVY0h63weVW3hw3w6VY3hs3w6V@0ha3weVV0he3weVX0hi3weVZ0hm3weV_0hq3weVM0hu30eVQ0hy30eVS0hC30eVN0hG30eVP0hK30eVR0hO30eVT0hS30eVM0hW3weVO0h@3weVQ0i23weVS0i63weVN0ia3weVP0ie3weVR0ii3weVT0im3weVU0iq3weVW0iu3weVY0iy3weV@3ho3w6VV3hk3w6VX3hg3w6VZ3hc3w6V_3h83w6VM3h4306VQ3h0306VS3gY306VN3gU306VP3gQ306VR3gM306VT3gI306VM3gE3w6VO3gA3w6VQ3gw3w6VS3gs3w6VN3go3w6VP3gk3w6VR3gg3w6VT3gc3w6VU3g83w6VW3g43w6VY3g03w6V@0iC3weVV0iG3weVX0iK3weVZ0iO3weV_0iS3weVM0iW30eVQ0i@30eVS0j230eVN0j630eVP0ja30eVR0je30eVT0ji30eVM0jm3weVO0jq3weVQ0ju3weVS0jy3weVN0jC3weVP0jG3weVR0jK3weVT0jO3weVU0jS3weVW0jW3weVY0j@3weVkMg.1F_j@cgs71MvHr_0M02j0Q.3umV103LU_3@KfZNF@L_Y620U01wEe08Kgg0IHf108ePMg2ABiQw0au401SV1?HM3.17gMen/McKgg0wKME0Mw0vakK?70Vv/7aV102yX2w2Vg1YFTw?avQ0sOl0201FTj_UY0g.AoKcw4.4GtQ0onD0dfMc0rD8dfwc0rDgdfgc0rDodf0c0rD4deMc0rDcdewc0rDkdegc0rDsde0c0rD0ddMe0rD8ddwe0rDgddge0rDodd0e0rD4dcMe0rDcdcwe0rDkdcge0rDsdc0e0rDwdbMe0rDEdbwe0rDMdbge0rDUdb0e0rDAdaMe0rDIdawe0rDQdage0rDYda0e0rD0108c0XD810oc0XD0d9Mc0rD8d9wc0rDg10Ec0XDo10Uc0XDgd9gc0rDod90c0rD4118c0XDc11oc0XD4d8Mc0rDcd8wc0rDk11Ec0XDs11Uc0XDkd8gc0rDsd80c0rD0128e0XD812oe0XD0d7Me0rD8d7we0rDg12Ee0XDo12Ue0XDgd7ge0rDod70e0rD4138e0XDc13oe0XD4d6Me0rDcd6we0rDk13Ee0XDs13Ue0XDkd6ge0rDsd60e0rDw148e0XDE14oe0XDM14Ee0XDU14Ue0XDA158e0XDI15oe0XDQ15Ee0XDY15Ue0XD0168c0XD816oc0XDg16Ec0XDo16Uc0XD4178c0XDc17oc0XDk17Ec0XDs17Uc0XD0188e0XD818oe0XDg18Ee0XDo18Ue0XD4198e0XDc19oe0XDk19Ee0XDs19Ue0XDwd5Me0rDEd5we0rDMd5ge0rDUd50e0rDAd4Me0rDId4we0rDQd4ge0rDYd40e0rD0d3Mc0rD8d3wc0rDgd3gc0rDod30c0rD4d2Mc0rDcd2wc0rDkd2gc0rDsd20c0rD0d1Me0rD8d1we0rDgd1ge0rDod10e0rD4d0Me0rDcd0we0rDkd0ge0rDsd?e0rDw1a8e0XDE1aoe0XDM1aEe0XDU1aUe0XDA1b8e0XDI1boe0XDQ1bEe0XDY1bUe0XD01c8c0XD81coc0XDg1cEc0XDo1cUc0XD41d8c0XDc1doc0XDk1dEc0XDs1dUc0XD01e8e0XD81eoe0XDg1eEe0XDo1eUe0XD41f8e0XDc1foe0XDk1fEe0XDs1fUe0XBj1>708.9dLz42>aDx03KFjU?qt9?3zcf2w02h18f2wFPA?s3B/WJeMI?s0vF41YauDt?egj3MGc0w.g2c3B/X1hxOX2w14g1@N4w?24OFiU?ue0g.1c3B/WFHA40abIa04u07ODu?1M6XbYFPAFVw?c1Jx28z9rA405yV1?GFkU?qsV?70Vv__@FOV102OX2w0uw1YMe.2i8UN3w.2FUg0EXAm02CV101bKgg0ewTxKgg0mxyiggKw0eMHfHY0lqu402DIa?q0nPIa?d0DPzca.911ka01Ko80o@dwR.3ed0k.Aatr?6Vww1AUS3k.cU@1g?2gFRI?rC206Xzodg.PI1v@Pw6jHKM02?Pz45.93z0501092Vww0mUN3k.cUO1g0w2gUS1g0M2gFRI01bC2?7z0dg.OVww0wUO3k.cKo80oKdwR.3auT_ZWV101oKgg0aGle?6Deg01Men/EBKgg0IKMC_UM0vbA402z0Vv__@sIoIKMC03g0vHA402H0Vv__@tbIu01o07WPPg1oX5w01g1Yk91g0bfd07HIu?607Pzo7.2iV5?Hq83Ne6ywYk3Hr_5U?g7_I?/XpYgb.zVavQ_MX04f__@R_46M?8ZODZfZpKgg0aI3B/VEuNU02?vI3B/Wm@cw8.5auU?70Vv__@veV1?OM2>Z1Men/AHKhg0aSy0YjxEEf50WS_Nu?41_WV1?EMen/FYF_j_THA402z0Vv__@DmDZf@CM3>XNM2>XJMen/AGKgg0wKME01M0vakK?70Vv__@p2V102yX2r@XM1YKgg0ac3B/WlI0w.e@WuU?70Vv__@eWDZf_3M2>XcFXw?s3B/UVavQ_XD0Vv__@v_z82.1j0Vv__@pCV1?XKgg0gGuU?708.3Iz0Vv__@cSDZf@y1Ms71Ms71MvIa04A07PHr_0M02jzYfZg_T6V101yKgg0tbA40beDeg1rMen/CPKgg0EKME0b80vasp?3IdzO_05mDx03WFOA03XA902fD0C.3uD6M0gVO?c021FUg03es1o0101Gsr013D8?M086Dtf_UVM801M0xgl0w0rC4042V8012Ku8w5qsA0dnzwk_M_T7zC6/T6lnp?FTg0uXDFo9HIag010dD0Vv__@g2V1?SKgg0wHA40d91qo?Kgg0is3B/UAV80o011wa01FNA?eMUfbY0lqu40beDWg0fKgA0U@teE040dWsr013Dp40M086Dx?cVQ6w0k06FNI04etAg3?wqtQ__zD9w0702510e01Kog0gHAw04WVUy0gFOg0zKexj_3_srA402H0Vv__@bLz8f2w02iV102iKgg0eed0H/sqtF?30Vv__@4PzmF/T6i05?X8QYLM1lFUg0Casp?@V2g0oVN7g.TFSI04esN43?wqu408XD5J?g0qDZf_SFVA?eOHfbY0lqu404@Dig0fKgA0iKvkI?8dWur013D_t0M3E6Dx?cVZCM04w6FVI04evZQ30ewqtQ__zDnM0712518401Kog0xrAw08iVUy2iFOg0aKcFz_7_ss3B/Unus0I01w1@s0I01w9@sw02?wusi?s08uMg026wt@s18.fXA404uV1?OKgg09KJLYe?1c3Q/UDWsF?@DZfYkFQA03WvQ_X@DWg0fF_j_mWsF.7_KPrfbY0ls3n>3@sd8.fWvr?6DZ?7VQQw.eFZI04etdI.1KtAg3?wqtQ__nDJw070251fi?VQIM._F_j_MWsp?@DZfZSVPc01M0xgi0g0rC40eeV803xKu8woGsA__7z9K_N_T70Vv__Z_nDkd?o0vD0d?o2uV102iVTlg8021VWs01M0xXa?sq1TVREw._UP3ME?4FNA?ePzfbY0lqu405_zgf2w?iDag0fKgA0bKt2g?8dWsr013Dp40M3E6Dx?aUW3ME?4VQ6w04w6F_j_Y@s6?s48k5w806Vx01gKi?kHDy81qD9?VUO5vYvZNMen/uHUU3ME?4Kgg0EKsgw01E1@sMw01w9@sN420ewusj?s48uMj0imwt@sh8?8fWtF?3IyPO_05mDx04mFNA03XA901zDwr?23uDqM0gVWy0c0W1FUg0b@u6I0181GvQ__qDag0fF_j_IKNtfbY0ls1n>3@tl8.fWtr?6DZ?7VMmg?weFRI04es5Q?81Ksw030ewqtQ__nDow071251xp?VMq.w_F_j_s@sW?s48k50406Vx03zKi?UrDy86iD903eUOrLYvZNMen/s_VY2M06w7Kgg0kHA408bDXc0w3E7D8b?o2vD3w07127I0w2iE7vDM5?23@V1?JMen/rQUO3ME?4Men/rKKgg0as3B/SquME06w0v5zg82yDQg10FTg0lavh?iDx012VkzMG.Men/umKgg0oKlco>44MYayV1?GFQA02I3B/TuecMYaw01eMW01K0p9k0c02Dt?mme1w0ePE018yvHA403aV101nKgg0ibA402D0Vv__ZUXHr_3w?g7_HA403H08.3770Vv__ZAaDag?WS_MU?41_X08.37KV1?VMen/oQFOA?eJLYe?10v@Kgg0pXA405yV101aKgg0es3B/TIWvQ_ZmV1?FMen/qcX2r_Bw1YM2>MQKgg0es3B/S4qsF?2DZf_tX6IYLM1lM6s>fVYpg?w_FSI?uumI?81KuVA30ewqu4?DDBE?20WDqM0gF_j_Y@uX?s48k4mw03DCN?23@DZfZiFNA03WvQ_LzzUf2w?jIjzO_05n0hM>_D52?23@DiM01UO3ME?4VRgw?w6VTlgc0W1FUg02utkE?83Gtb012DZf_MVMs01Mgxgliw0etgk?8fWvQ_HA71Ms71Ms71@J_Y3w09efM_B3_suMy0jE3vKMI0ck1vKeMc0w019k0I03IK>4rIa0540TWDug?gj3MUasF?b0Vv__ZtvI9w2Y07Xzgf3E?j07y34CWn07udjZY@Vxw04gq3N8eJ403Y02HA403GV1?wUM3MU?4WR?1g0dKgA0keIl?o03rA901n0ny34CWnH4g03?T0nudjZY@V2?gKuhgleIh?o03rA902nH8w07?GV2g0Ago4w0asF/0Vv__ZIkoEKMC0cg0vKd0Yi?1ecwYj?1eIk?k03uLy?k03rA901iV2g3yWM401w0dWPU01w0dKgA?rA903XHk?3?SV201kWQc?M0dWRk01w0dKgw0gKdgYiw02eIA?o03rA805bzkf4U?yV201oXbw0I01YM4>KgFPA0g44wYa30Vv__ZA11cf2wKgg0aWt9?30Vv__ZtvIu?o07P0g.2TGDeg10Kgg0m44wYe30Vv__Zyx1cf3wKgg09Wt9?30Vv__Zr@V5?GWT_NW?41_WDKg?FTA?44MYe2Dag02Men/kuX2z_iw1@gq3N8asF?2V1?WMen/p2X2o0vg1@UR3N8?4UP3Nc?4WOk01g0dWQc01g0dKgA09rA904fH4w06?THx?6?SV2g0iKgA0xeI1?c03rA8?nHm?3?THU?6?SV201jU@3Na?8WPk01w0dKgw0U@fwYjw02bA403GV102eFOD__Y3B/S11yyX2z_gw1@Men/mJUO0w.kFWw?s3B/RhrA403b08.2KD0Vv__Z7SV5?GWT_NW?41_X08.2H@DG?1Men/hLF_j_YHA403n08.2Kj0Vv__Z7mV5?GWT_NW?41_Xzs30g?il07?X7w.16F_j@Ks3B/RsKcw8.5auE?70Vv__ZgGV1?OM2>GwMen/h2F_j_Ngs7WS_Mc?AMd>wpU_3_0fZNgj3MEc3B/RwucM8.1bA40ab04.2GyD2.Kgg08X9t01aD5f_@FUg0HY1>aErA405eOng15FNj__H8y0b29I?2yH?7KOU06A0vI1w.aFrA408eOng1EFNj__H8y0b29I?2yH?7KOU0aE0vI2M.aGrA40eeOng2@FNj__H8y0b29I?2yH?7KOS08U0vBw0Ya3I0w6O0TXI204T0TXI1w4g0DXzca08?j08.2ryl03?Ku9M8Y1uO_asVc1tx28z9udgYaw09elcYag?450Yax1cf2AMen/uRX2o0gw1@US3MG?4UR3MF?mgi3MIc1>azWsV0530Vv__ZdV18f2MMen/hpF_g0g5wMYa3Icw3a0TXIe0240TXIdw2_0DXz4a08?j08.2nql01?Ku9M8s1uO_asVc1tx28z9udgYaw09450YayDeg?Men/tSX2w0Mg1@FXw?rA402H0Vv__YZyV5?HWS_Nc?41_WV1?WUO3ME?kMen/SS6baV1?GMen/f4Khg0a@JLYj?10v@M2>EyFXw?s3B/PlGvQ_ZBo8f2wX2819Md@X2w0Vgd@X2o0w09@U@2w2?4M2>AzBg3w0bDys2XBjf2E?2Dig?gj3MGc3B/TauMC_Xo0vKdgYaw05A4wYb30g.2weDeg0wMen/hlgi3MIc3B/PQavQ_Xvzoa0g?jz8a08?h3g6?Bg0w0atQ04SDgg3_FUg0XY0w.8WY3KO_asVc3Jx28z9ufwYaw09450YayDeg?Men/rLX2r_v01@UR3MG?4gi3MIc1>9NqsV0330Vv__Z1J1cf2MKgg09Gt9?30Vv__YXaDZfZVM2>yZF_j_iY0w.9oWuU?70Vv__YJeDZfZmM2>yKF_j@@I0w.8GqvQ_UGDgg3_FUj_cWvQ_Xzzkf2E?h18f2MM4>CeFPA0cc3B/PV44wYb30Vv__YR@DZfZ6UN2w4?4UO2w2?4Kgg0wkd0402l02?FUg26Wt10f@DxfX9M6XbYFPAM6S48ycBUS3MG?AVkPMF.gk3MG44MYaj0Vv__ZDPI9LY907Xzof2E?jzkf2A01p18f2MM4>BmFPA0kc3B/PFk4MYb2V1?EFQA?c3B/PfavQ_Mfzwa0g?jz8a08?h308?Bg0w0au40ueD0g3_FUj_7ulcYaw?at9?11cf2EMen/p4X2r@Qg1@UR3MG?mgi3MIc1>97GsV0230Vv__YT11cf2MKgg0aat9?30Vv__YMuDZfXeM2>zFFXw?s3B/ObqvQ_H308.2cCDK?1Men/8zF_j@FI2>qHKcww.4GtQ0onD0dfMc0rD8dfwc0rDgdfgc0rDodf0c0rD4deMc0rDcdewc0rDkdegc0rDsde0c0rD0ddMe0rD8ddwe0rDgddge0rDodd0e0rD4dcMe0rDcdcwe0rDkdcge0rDsdc0e0rDwdbMe0rDEdbwe0rDMdbge0rDUdb0e0rDAdaMe0rDIdawe0rDQdage0rDYda0e0rD0808c0XD880oc0XD0d9Mc0rD8d9wc0rDg80Ec0XDo80Uc0XDgd9gc0rDod90c0rD4818c0XDc81oc0XD4d8Mc0rDcd8wc0rDk81Ec0XDs81Uc0XDkd8gc0rDsd80c0rD0828e0XD882oe0XD0d7Me0rD8d7we0rDg82Ee0XDo82Ue0XDgd7ge0rDod70e0rD4838e0XDc83oe0XD4d6Me0rDcd6we0rDk83Ee0XDs83Ue0XDkd6ge0rDsd60e0rDw848e0XDE84oe0XDM84Ee0XDU84Ue0XDA858e0XDI85oe0XDQ85Ee0XDY85Ue0XD0868c0XD886oc0XDg86Ec0XDo86Uc0XD4878c0XDc87oc0XDk87Ec0XDs87Uc0XD0888e0XD888oe0XDg88Ee0XDo88Ue0XD4898e0XDc89oe0XDk89Ee0XDs89Ue0XDwd5Me0rDEd5we0rDMd5ge0rDUd50e0rDAd4Me0rDId4we0rDQd4ge0rDYd40e0rD0d3Mc0rD8d3wc0rDgd3gc0rDod30c0rD4d2Mc0rDcd2wc0rDkd2gc0rDsd20c0rD0d1Me0rD8d1we0rDgd1ge0rDod10e0rD4d0Me0rDcd0we0rDkd0ge0rDsd?e0rDw8a8e0XDE8aoe0XDM8aEe0XDU8aUe0XDA8b8e0XDI8boe0XDQ8bEe0XDY8bUe0XD08c8c0XD88coc0XDg8cEc0XDo8cUc0XD48d8c0XDc8doc0XDk8dEc0XDs8dUc0XD08e8e0XD88eoe0XDg8eEe0XDo8eUe0XD48f8e0XDc8foe0XDk8fEe0XDs8fUe0XBj8>708.6Ovz42>aDtfQDM03/avN0I?1IsF_jZ7Wt10f@DxfVzM2>pvF_jZVas10f@DxfVqM2>pmF_j@70s71Ms71Ms71MvHX_1M02j4a.5UDzYfZw_T6Deg01Men/7xN2w?1tSFPA?s3B/NSsgE.nnGsV?70Vv__Yt74a.5RGDeg01Men/79FOA?eLLYh?10v@1Ms71Ms71MvHr_0M02jz4f1U?iD@_ZwUN3M.AMc.1sBUQ3N4?4WS_MQ?41_g<2Q2XUTMMOeElE5TNIJ0K@dISpWbIhxiHxtq1I2aCYHBbHgdwndRMqjldVnaifppX@ZLv8sOHH2yBePAP0AJaeCGrOKkZWXDIl7IIZ_cbn_WqXhqAHpRBHsgdYbpzvoe_2DpOpxQ60mZQBFhQQ@rDvrE0HyudsdQKVe18dkegePMEZBDL_UoGVFomL_QNpIPQm825HC_MZGs6o6eYEh0gJswrUmPvqV9BJLI7vx6bt7tUrjQJjNRe92qdSP@1_qwSWiQEWrVtm@3nPsXXsbSZYxBrZawKaUuxhXIiKK3bore9M91GDH3zo_swtDxgk0lNerpcaMX6fO9DlGEVM2rpcaMJv_FXngPP4ISpWbmZWK7smWeXWOLgIEaXhqABOPqwjc37ulKMJ70O825HBl1ioLOS6PzbNCwNEBrZawkCzydJZwXYeEpZZlcmWeXQpFLDDo3iLqHMErj3o3iLp117FwQrJDYqqYlSs_Jgrtib8SiZrmE@yxQpd@edz2N4_vYBbVKtZLzHXL@huTLAdwI8Xl_JgrtEDja@0gSDFqpZRaPftylRS0pmvb6mMSsmVH1KvM3Vd4xMyzQxU1YCxF1Ib@V0Xf2Vc9_VQa0aUDvguuIudz2Nakp3K43mRGfDFGmGzGRksVDt9THMjr9xlPT1q3Xry389G_IXo3JK8ctb7iCBCPfhsKJ0S1JXRseY2WraRuTLAeatD9Cb3gC2b7RWyQlSyR9i1LxreVpJg9PC7ADR05sjMD0A6GLwIg4cAc88p412RPcMctVqEaj5_t3nP9gSDFqzhKSvOJpUx6SC2UQ4HvFk4ZS9nnFd74rtfmZfJdIC5oeHlhPGeY07jkKP3yoJQtTNnqbkCcQTPP@ZhcpmmMSsoiJ@BgyXWUWLOVy7NI1FnJ6M6BuU88Zc7R3YhnqSJhZ1NIoma5pj3oYC80jDZG3rI8rjQJAmhIB@pzn05U1YCy3M3Vd9o9G8Xx3Fwosr65ygqSJh@vL@iBWbzkcTrsgp01ST46Cd8wLe_l42ELrTO7m6xc4s5x7qKSpyQZa0aUDBY5y0z63dCOIgLF926QZblmIYgzPXGlCryZFgYCSj2IktU0eIznko2_Q64mcJxIUQnvn7nsRwTfGZ4ZmjmRGfF2IFxISXL9RGOY@k0Y0@jhiMjkhZ8dxvSB2HlHeSUwO4NF45Xlo47AECtNsxg1n4Zz1CPp@wYZoUQ83vkjr9xmp6KEMfRy@nGapsDI6JHkvmTtVeLQRblhwZe5NNST46hGI23OYXBNi8i@gtU9JAMHvH5YLuuUbgugLNSh3JK8cDDsKajwRuAuBZbpy0tJN1BMqLifWmeBdpVABqc,tMsMBKUeoiOp2l6WJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L|01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKw.g>6PJ0K@dYcczG5q1tYrbgbLzrdCuyX4okGUnmwr!0aUDzn3tbKjwi3l3A3IYafppX_@6aKqm5H_ZcmrcZ5y~05sjCSj2IeNzYypRqGes0CSj2Ibn_WuRQcYNbdCuyRLuHxT5KzK@IHQba2KQmF9sISE4P0NTBrIbhMcy0xqVlgkCbYJxIUOYpEcq9m_iE59EUzrvoe_3G6vvlj5KzKZ6qrVVS0QHSGYa6QMS`0@jh8s8EZ8u0v9Eqgr2_KgePMKj2v@t2w2K9TQ7DH7zoMIiB6gXx0RJqzVWqBGEWJl7epTitWY4SOolsZMmw@SUwO2qLXeS0Xry37iNQFFpIPQnbHgdwruZn3L|01QRbIMUCbt7tYlSyR9zddYY_Lkj6lBIdD64HvFk8K@KeHYKoxYr0qlXhI1FnK22fj1Zg_4lSJHkvgsr65yxmkMSf9y04V_qwSX26QZbp5Ar9vCoRM1u0v9EwY0@jim2qyeUgWo676NxoA6JHkvDX_AFuyUR3dST46g0tJN1Fzi8bPLRh%03H8RR60LZ1x5zbored5TRNRTdodPWLhflARJqzWgHaordKXOtqILfB0f0fAQkI4R4vi3onZFgGRqPJK8cxcqh1uRm11Va9Dsn8k0lNfoMpISvEffmed20TR4SOolChHGc3ZoLBWyCn9X1HqR7RJTujHZdiRkofjxsstJN1AqH#,7s7c9rK3C4ICgBhKyQ0sC8?7hFrmlMey1ComBIpmgwt6YwrT1Bry1IqnhBsC5I86pFr6kw9OULbis?7hFrmlMey1ComBIpmgwt6YwrT1Bry0D9ncDey0BsM?t6BJpn0W86ZRt21Lpy1JpmRLsDA?7hFrmlMey1Opm5A86lOsCZOey0BsM1ComBIpmgwt6YwoT9BonhB865OsC5Vey0BsM?qmVSomNFp21KtmRBsCBz86BKp6lU86pLsy1FrChBu6lA865OsC5Vey0BsM0BsPEwrCZQ865K865OsC5V?1Dpnh3k5lQqmRBey1QrSYwrm5Kui1xsCtRrmlKt7c?6tBt79RsS5Dpi0EkQlchyAwpC5Fr6lAey0BsM1DpnhOtndxpSkwa4d8ikN4kAleai1ComBIpmgW82lP02lIr6g?2lIr6ga06tBt4dglnhFrmk?7hFrmlMnSpKtz5x07hFrmlMnSpKtz5xey1QrSYwrm5Kui1xsCtRrmlKt7c0t6BJpn1voT9zcP80t6BJpn1voT9zcP8W87hLrO1JomVV865OpTlJpmVQsM1QqmRBs5ZEondE?1QqmRBs5ZEondEey1QrSYwrm5Kui1xsCtRrmlKt7c?7hFrmlMey1RrCJKrTtK86dLrmRxrCgw9OlP9M0Bc34Sr6NU02kMe7w?2kMe7wJ9j0NdCNIu.lld1hQkW87hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng?gSZJs7lQpi13kAcPcy1xrCgwhAVmbj5x82wSd2AwrSowf6pFr6k@865Kp21LtnhMtngwoncW83NzsCcPczUJf6pKtz5xfw?imowf5p1kzUwqncws79LtCBApmgwt6xB86dLrm9FrClA87dQsCBKpO1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?4BC869Lt6wwf4p9j4k@865Kp20YlA5ify1xsCkws65PsSlA865P86lJs7hV82xQqmRBs5ZEondE82sD82sDaiM?20w821FrCBQqm5IqnFB87hxoCNBsO1ytngwp6YwrCZQ86dLrn1Rt6kwq65Pq6lPbw?lld1hQkW87hFrmlMnSdOoPcO83N6ikN5v2Q@85IYlA5ifBQ0gSZJs7lQpi13kAcPcy0Eikl5hiAwrSowf4p9j4k@by1lsSkw9OQD86ZO86lJs7hV87hL879BomgwpD9Lri1Pt6hFryU?4BC83Nmgl8@86BP871OrTpFp6lA87hEpi1zq6lzqTdRri0Ee21Epnwwp6BDqnhPai1FsO1Pt6ZOpmgwqmUwt6xxt21Son9Fom9IpiM?20w821Lt6xBsDtFsSkwqngwqncws79FrDhBp21QrO1Pt6hLtngK?19py1yrThE83N6ikN5fy1xrCgwf5p1kzUwon9B871xsTdBp21xsO1Brn1Qui0Et6BJpn1voT9zcP8w9Osw9OsFb?w820wqmVFt6Bxr6BWpi1Qom9IpncwoDlQ86hL86VLt21zrSRMtnhB864woT9zcP8wq65Pq2U?5ljgkt5ey1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt04dLrn1Rt6kwhAVmbj5x83oQbm9Ft21EondE86ZC83NCqmNBfyUwlndB82sJ9O1Lsy1Brn1Qui1QrO1Opm5A86pOrSQwsThAqmUK?19py0YlA5ify1FsO1MsCZSqmhBp21Qq6kwoSxBoSJPtmQwa34S86xBu21AqmtFt7cF86BP87dQrT9Bp21Fry1Qq65Q87pxsCBxoCNBb01lkQ57hjEwpSlQgR1lt6BJpi1rf5p1kzUwmPNmgl9vkQlchzVtng?kClQtn9K86xFpSwJsClPrSNRt6BLry13k5kwt6BJpi0ErmBzsCZPpmdLrChPai1RsSlA869V87hEqncws79LoSlPsO1xrCg0omNI86pFrCBPq6lA86dEqmNA871OrSdBsTdBsO1xrCgwomNI87hEpmBO86pFrCBPq6lA86hBsSdBrChBrDhPbw?imowf5p1kzUwqncwpSBSpmUI865PsSBDrDcwt6xB87pxr7lB87hL87hEongwtC5Oqm5yr6kX86ZQq6lOtSBPpi1MsCBKt7cwqngK04BC83Nmgl9vkQlchzUwqncwomNPrO1DqnpBryMwondPqmtKsO1PpmNC84dgli1QqmRB82xKrO1zq6BIp79BryAwt6Ywt6xxt21Son9Fom9IpiU?7hFrmlMnSxxsSwwf6pFr6lYbjUwmPNmgl8@ng1QqmRBs5ZzsCcPcy0YpCBIpnMJfy1rf5p1kzVt?1QqmRBs5ZCrDoNoi0YpCBIpnMJfy1rf5p1kzVt?1Dpnh3k5lQqmRB85IYlA5ify1rf5p1kBZjhkN6fBRt,hI3eM.3M>6/hm>5z__Zko>tf__SWw.3c/xO>mj__@iU.1Mf__X5w.8g:1g,0nFi?5U3w4r30@w0g<1w>s/g@>XM0h0Ad4ga22IR22M>1k>ef__R9M.q804q63Esdy0O92UEayMCc28Q7zwqf1l0eW0dcC1qp5gc5jwHfPITcOYH9Ocv6StweE0522M9E2I_ePsPbOID8NYrpS0Ww0k8b>B>93__ZHk.6601cxwW73owcygKa2EI9z0yd1UU6zMl63J020M8o2I_ePsPbOID8NYoeE0562RweE076NYz9OILcPsXfhwXg0EoexMS838AbywGb2oM8zgue1EY50MaG2I_ePsPbOID8NYoeE0522REaPYXdPcLaOsz7NwWw0k8bmwHfPITcOYH9Ocv63G01gwI.1o.1af__U5M.bK04q73owcygKa2EI9z0yd1UU6zMl63J040M6e2I_ePsPbOID8NMWw0k8b0K8aPYXdPcLaOsz73G01gwJK2I_ePsPbOID8NMWw0k8b,4M.64/yY.1Vo0hEoexMS838AbywGb2oM8zgue1EY5j0Ww0Mc1xwHfPITcOYH9Ocv63G01gwJC2I_ePsPbOID8NYoeE0522M,08>tj__@F,m01czwqf1koeM082hc_e3G01^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^}1ng;5o;1tS}1:uc:3;14o}Q;Ng}p;nsw:6M:8:1E<1tQ}s}w,r__@Zg;7M}k;5S}6:z}2w;8y}I:6}3;nW}0w;aw:1g:1M:n;3Dw:1M;yE}w;5Q}9:1w,r/_w;x8,6/_Y}g>1L/M;1_E,r/@g:R^^^*,01tU^^^^}hxw<16C;4so;hVw<186;4yo;ihw<19C;4Eo;iFw<1b6;4Ko;j1w<1cC;4Qo;jpw<1e6;4Wo;jNw<1fC;50o;k9w<1h6;56o;kxw<1iC;5co;kVw<3SC;fTU;ZFw<3@y;gew;_Ww<45w;g3;10sw-fqo<10F;3SC;gcw;ZFw<44e;glM;ZFw<464;gso-3SC;gvU;ZFw<48y;gCU<11o)fqo<12L;3SC;gKg<13b;3SC;gSU<13Kw<3SC)_6w<2B,0g}?1wU;4ge)@Xw<2B,0g}?1xc;4gG)@Mw<2B,0g}?1xy;4h8)@Jw<2B,0g}?1xM;4hC}17gQcW82x7jBkF834Rbz8Kci0Oc38Rcj0Ocy0EkClA84xxt20NdiUObz4JcOA;8>4>g17gig1cS4N:1k:5g,8>4>g17gig1cS4N:14o;4kw>8>4>g17gig1cS4N:35:clM>8>4>g17gig1cS4N:1k:5u,8>4>g17gig1cS4N:35:ck,8>4>g17gig1cS4N:35:ck,8>4>g17gig1cS4N:158;4lo>8>4>g17gig1cS4N:35s;cmE^:M.g;78+M.w;7M+M.M;8M+M?1:no+M?1g;vW+M?1w;x8+M?1M;yE+M?2:VU+M?2g<14o+M?2w<15o+M?2M<1k-M?3;35-M?3g<35M+M?3w<4i8+M?3M<4j8+M?4;5T8+M?4g<5Tg+M?4w<5To+M?4M<5Tw+M?5;5@w+M?5g<6)M?5w<63w+M?5M<6bg+M?6&M?6g<6rE=1103_Yg*>d0w?2M<1k=0f0w?2M<1kM=y0w?2M<1m=0U0g?5M<6bg}4.140g?4g<5Tg{1H0w?2M<1ng{1T0g?4;5T8=0103_Yg*.2m0w?2M<1nw:XM.2B0w?2M<1Cw;1Ew.3f0w?2M<2pg:KU.3v0w?2M<2B:1Vo.3J0g?5M<6bo}g.490g?5M<6bw;1,4r0g?5M<6rw}w.4I0g?5w<63w:5>4X0g?5w<64M:5w.5b0g?5w<668:3w.5r0g?5w<67}5>5G103_Yg*.5Q0g?3M<4qY=0103_Yg*.620w?3;35=680g?4w<5To{6l0g3_Yg<5Tw{6u>3w<4i8{6N0g?5w<6bg{6Z0g3_Yg<5@w{7j0w?2g<14o{7p4^7D8w&808^8s4^eJ4w&8G4w&8W4w&9b4w&9A4w&9R4g?5w<69}3>a84w?2M<33w:5w.as4^ay4^aW4g?5w<68g:3>bc4w&br4^bz4w&bP4w&c24w&cl4w?2M<20M;1xw.cD8^cS4w&d64^dk4w&dB4w&e04g&eg4w&eH4w&e@4^fi4^fA4g?5w<69M:3>fT4w&g84w&gs8^gS4^h24g?5w<6aw:3>hk4*,0oT9QoClDqmVjbCY0p6lOpmtFsThBsBZQrlZzr6ZKpnc0nRZArRZDr6ZyomNvp7hLsDdvonlU06dLrn1IpnhBp2UM05Zvp6ZvpSNLoC5InShQrT9PnS5Ru5ZCqmVFnS5OsC5VnSlKt79V06pOomRBnShRrmRV05ZvpD9xrmlvp7lJrnBvqmVFt5ZxsD9xulZBrDhOug1QqmRBs5ZzsCcPcBZPtM1QqmRBs5ZzrSRMtnhBnSdOoPcOnS5Kp5ZCrDoNoiVzrSVPt71OrT0Kc01Dpnh3k5lQqmRBnSRxqmU0t6BJpn1voDlFr7hFrw1QqmRBs5ZzsCcPcBZQom9IplZFrCBQnShLrCk0t6BJpn1voT9zcP9vt65yr6k0t6BJpn1voT9zcP9vqmRMr01QqmRBs5ZEondEnShLoM1QqmRBs5ZzsCcPcBZArSc0t6BJpn1vpCVScm5vp6Zz06tBt4dglnhFrmlvp6Zz06dOt6lKp5cKrM1vnQpigkR5nQleh5Zv05ZCqmVF05Zvp7dLnSxxrChIpg1vh5BegkR9gM1vnQtellZ5i5Z6kA5dhlZ8h580nRZkjkdvhkV4nRY0nQtcjQ91j5ZfhApjhlhvl452j4lv05ZFrCBQ06pFrChvtC5Oqm5yr6k0nRZzu65vpCBKomNFuCl[05Z9l4Rvp6lOpmtFsThBsBhdgSNLrClkom9Ipg1ytmBIt6BKnSlOsCZO06pLs6lKg4tcik93nP8Kcw1JpmRzs7B[06dIrSdHnStBt7hFrml0hQN9gAdvcyUNdM1Cpn9OrT9[07hFrmlMnSdOoPcOnTdQsDlzt01PpnhRs5ZytmBIt6BKnThFrmlM07xCsClB06RxqSlvrClTnS5OsC5VnTpxsCBxoCNB07hFrmlMnSxxsSxvsThOtmdQ071Lr6N[07xJomNIrSc0pD9Bomh[071Rt7d[07dQsClOsCZOg4tcik93nP8Kcw1yqmVAnTpxsBZLsBZxsD9xug1vnStJrSVvsThxsDhvnM1Pt65Qg4tcik93nP8KcPc0oCBKp5ZSon9Fom9Ipg1Pt79zq79[05ZvqndLoP8PnTdQsDhLr417j4B2gRYObzcU07dQp6BKg4tcik93nP8Kcw1vnSlOsCVLnSNLoS5QqmZKg4tcik93nP8Kcw1PrD1OqmVQpA17j4B2gRYObzg0oCBKp5ZxsD9xulZSon9Fom9Ipg1JomJBnS9RqmNQqmVvon9Dtw1QqmRBs5ZCrDoNolZPt79RoTg0pCdIrTdBg4tcik93nP8Kcw1DpnhOtndxpSl[05Z9l4RvsClDqndQpn9kjkdIrSVBl65yr6k0omhAnS9RqmNQqmU0pSlQgR1lt6BJplZPt79RoTg0oCBKp5ZxsTdLoRZSon9Fom9Ipg?bDdVrnhxow0KsThOt65y02VPq7dQsDhxow0KrCZQpiVDrDkKoDlFr6gJqmg0bCtKtiVEondE02VAumVPumQ0bChVrDdQsw0KpSVRbDpBsDdFrSU0bCtKtiVSpn9PqmZKnT80bD9Br64Kp7BK02VOpmNxbD1It?KqmVFt?Kt6lUt?KpCBKqg0KsCZAonhx02VBq5ZCsC5JplZEp780bClEnSpOomRB02VFrCBQnS5OsC5V02VCqmVFnS5OsC5V02VAonhxbD9Br2VOrM0Kp7BKomRFoM0KpSZQ02VDrTgKs6NQ02VAonhx02VysTc0bCdLrmRBrDg0bCtKtiVytmBIp2Vxt7hOqm9Rt6lP^^^>r>1M:2:sw;1O}A(1=bC/_o}w;7M:v}f,c=w{3w>b}8;2c:8M:Ww>4,w:8:1w.1,0M:2;1tw;5S:8y*g{i6/_Y}w;vW;1_E:jw>c=8}w.5lL/@}8;8i:x8:6,4,g:8{1A>1}2;2aw;8G:ng,M{2}o>rw>g:gw;VU;3Dw;2E,c>l}w:6>7w>1}o;h6;14o:3U(4{1P,g:6;4lw;hm:ew(1}w>vw>4:1w<1k:5g:sg(1=8g>1}o;Ng;35}2E(4{2a,g:2;cn:Ns;1cm(2=Aw>4}w<4i8;h8w:f*g{a,1}8<14O;4j8:vw(8{2G>3w:3;nsw<1dO}8(2}8>Jw>Y}M<5Tg;jt}2*w:2>c8>1}c<1tS;4To}w(8{3f>1w:3;nu;1dU:7,1=2}g>S,4}M<5@w;jW}o*w:2>dQ>1}c<1w:5}0e*8{3C,g:3;oe;1gU:7M(2=X,w}M<6bg;kJ:46*w{f4>1:3)5bg:2U(1}4.3W>1M-pKw<1j}4w(1=0g>8^l2:8K>1I>U}w:6,A>3^5Po;16w(1=h,M&1xg:4g*g}'
;;

# ------------------------------------------------- #
######### END BASE64 ENCODED TIMEP.SO FILES #########

    *)  supportedArchFlag=false  ;;
esac

${supportedArchFlag} && {
    _timep_base64_to_file "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep.so" <<<"${b64}"
    chmod +x "${timep_TMPDIR0}/lib/${USER}-${EUID}/timep.so"
    unset b64
}

EEEOOOFFF

chmod 500 "${timep_TMPDIR0}/lib/${USER}-${EUID}/.restore-builtin__timep.so.bash"

_timep_SETUP --force

shopt ${timep_extglobState} extglob
unset timep_extglobState
