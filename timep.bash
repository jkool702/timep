#!/usr/bin/env bash

shopt -s extglob

timep() {
    ## TIME Profile - timep efficiently produces an accurate per-command execution time profile for shell scripts and functions using DEBUG, EXIT and RETURN traps.
    # timep logs command times+metadata hierarchically based on both function and subshell nesting depth, recreating the complete call-stack tree in its logs.
    #
    # USAGE:     timep [-s|-f|-c] [--] _______          --OR--
    #    [...] | timep [-s|-f|-c] [--] _______ | [...]
    #
    # TO DO: UPDATE "OUTPUT" SECTION DOCUMENTATION. THE BELOW SECTION APPLIES TO AN OLDER VERSION OF timep
    # OUTPUT:
    #    4 types of time profiles will be saved to disk in timep's tmpdir directory (a new directory under /dev/shm or /tmp or $PWD - printed to stderr at the end):
    #        time.ALL :                       the individual per-command run times for every command run under any pid. This is generated directly by the DEBUF trap as the code runs
    #        time.<pid>.<#>_<name> :          the individual per-command run times for a specific pid at some function nesting level <#>
    #        time.combined.<pid>.<#>_<name> : the combined time and run count for each unique command run by that pid. The <#>.<#> is $SHLVL.$BASH_SUBSHELL
    #        time.combined.ALL :              the time.combined.<pid>.<#>.<#> files from all pids combined into a single file.  This is printed to stderr at the end
    #
    # OUTPUT FORMAT:
    #    for time.ALL profiles:                [ $PID.${#FUNCNAME[@]} {$NAME} ]  $LINENO:  <run_time> sec  ( <start_time --> <end_time> ) <<--- { $BASH_CMD }
    #    for time.<pid>.<#>_<name> profiles:   $LINENO:  <run_time> sec  ( <start_time --> <end_time> )  <<--- { $BASH_CMD }
    #    for time.combined profiles:           $LINENO:  <total_run_time> sec  <<--- (<run_count>x) { $BASH_CMD }
    #        NOTE: All profiles except time.ALL will list $PID and $NAME and $SHLVL.$BASH_SUBSHELL at the top of the file
    #              and will end the file with + separate data from different PIDs with a NULL.
    #
    # FLAGS:
    #    Flags must be given before the command being profiled. if multiple -s/-f /-c flags are given, the last one is used.
    #    -s | --shell    : force timep to treat the code being profiled as a bash script
    #    -f | --function : force timep to treat the code being profiled as a bash function
    #    -c | --command  : force timep to treat the code being profiled as raw bash command[s]
    #    --              : stop arg parsing (allows propfiling something with the same name as a flag)
    #    DEFAULT: Attempt to detect type automatically. Detection roughly follows the following decision tree:
    #        1. if $1 matches a loaded function (tested via declare -F), then treat as a function
    #        2. if $1 is not a function but exists as a file in the filestystem that ut executable and containsa ascii text, then treat as a script
    #        3. if neither of the above are true, then treat as raw command[s]
    #
    # RUNTIME CONDITIONS/REQUIREMENTS:
    #    timep adds a several variables (all which start with "timep_") + function(s) to the runtime env of whatever is being profiled. The code being profiled must NOT modify these.
    #        FUNCTIONS:  _timep_*    trap
    #        VARIABLES:  timep_*
    #
    #    timep works by using DEBUG, EXIT and RETURN traps.
    #    To allow profiling bash code which *also* sets these traps, timep defines a `trap` function to overload the builtin `trap`. This function will incorporate the traps required by timep into the traps set by the bash code.
    #    For timep to work correctly, any EXIT/RETURN/DEBUG traps set by the code being profiled must NOT be set using `builtin trap` - the overloaded `trap` function must be used (i.e., just call `trap ...`)
    #
    #    for timep to properly reconstruct the true call-stack tree, job control (set -m) MUST be enabled.
    #    timep will automaticaly enable job control and, should the code being profiled disable it, timep will automatically re-enable it. Codes that require job control to be disabled cannot be profiled with timep.
    #
    # DEPENDENCIES:
    #    1) bash 5.0+ (required to support the $EPOCHREALTIME variable)
    #    2) sed, grep, sort, mkdir, tail, file*
    #    3) mounted proc filesystem at '/proc'
    #
    # NOTES:
    #    1. timep attempts to find the raw source code for functions being profiled, but in some instances (example: functions defined via `. <(...)` or functions defined in terminal when historyis off) this isnt possible.
    #         In these cases,  `declare -f <func>` will be treated as the source, and the line numbers may not correspond exactly to the line numbers in the original code. Commamds are, however, still ordered correctly.
    #    2. Any shell scripts called by the top-level script/function being profiled will NOT have their runtimes profiled, since the DEBUG trap doesnt propogate to sripts.
    #         To profile these, either source them (instead of calling them) or call them via `timep -s <script>`. However, shell functions that are called WILL automatically be profiled.
    #    3. To define a custom TMPDIR (other than /dev/shm/.timep.XXXXXX), pass `timep_TMPDIR` as an environment variable. e.g., timep_TMPDIR=/path/to/tmpdir timep codeToProfile
    #
    # DIFFERENCES IN HOW SCRIPTS AND FUNCTIONS ARE HANDLED
    #    If the command being profiled is a shell script, timep will create a new script file under
    #        $timep_TMPDIR that defines our DEBUG trap followed by the contents of the original script.
    #        this new script is called with any arguments passed on the timep commandline (if no flags: ${2}+).
    #    If the command being profiled is a shell function (or, in general, NOT a shell script), timep will create a new
    #        shell function (runFunc) that defines our DEBUG trap and then calls whatever commandline was passed to timep.
    #        this then gets saved to a file (main.bash) and sourced to make $LINENO give meaningful line numbers. runFunc is then called directly.
    #    The intent is to run scripts as scripts and functions as functions, so that things like $0 and $BASH_SOURCE work as expected.
    #    For both scripts and functions, if stdin is not a terminal then it is passed to the stdin of the code being profiled.
    #
    ################################################################################################################################################################

(

    # check that basic requirements to run timep are met
    # to disable this check, call timep via 'timep_DISABLE_CHECKS=1 timep <...>'
    [[ ${timep_DISABLE_CHECKS} ]] || { [[ -d /proc/self ]] && mount | grep -qE '^proc ' && (( BASH_VERSINFO[0]>= 5 )); } || { printf '\n\nERROR: timep requires a mounted procfs and bash 5+. ABORTING!\n\n' >&2; return 1; }

    shopt -s extglob

    local timep_runType timep_DEBUG_FLAG
    local -gx timep_TMPDIR

    if [[ ${timep_DEBUG} ]] && { [[ "${timep_DEBUG}" == '1' ]] || [[ "${timep_DEBUG}" == 'true' ]]; }; then
        timep_DEBUG_FLAG=true
    else
        timep_DEBUG_FLAG=false
    fi

    # parse flags
    while true; do
        case "${1}" in
            -s|--shell)  timep_runType=s  ;;
            -f|--function)  timep_runType=f  ;;
            -c|--command)  timep_runType=c  ;;
            --)  shift 1 && break  ;;
             *)  break  ;;
        esac
        shift 1
    done

    # figure out where to setup a tmpdir to use (prefferably on a ramdisk/tmpfs)
    [[ "${timep_TMPDIR}" ]] && mkdir -p "${timep_TMPDIR}"

    # try /dev/shm
    [[ -z "$timep_TMPDIR" ]] && [[ -d /dev/shm ]] && {
        timep_TMPDIR=/dev/shm/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/dev/shm/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $TMPDIR, if set
    [[ -z "$timep_TMPDIR" ]] && [[ "${TMPDIR}" ]] && {
        timep_TMPDIR="${TMPDIR}"/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="${TMPDIR}"/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try /tmp
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR=/tmp/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR=/tmp/.timep."$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # try $PWD
    [[ "$timep_TMPDIR" ]] || {
        timep_TMPDIR="$PWD/.timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        until ! [[ -d "$timep_TMPDIR" ]]; do
            timep_TMPDIR="$PWD/.timep.$(printf '%0.4X' "${RANDOM}" "${RANDOM}")"
        done
        mkdir -p "$timep_TMPDIR" &>/dev/null || timep_TMPDIR=''
    }

    # ABORT if we couldnt get a writable TMPDIR
     [[ "$timep_TMPDIR" ]] || {
         printf '\nERROR: could not create a tmpdir under /dev/shm nor /tmp nor PWD (%s). \nPlease ensure you have requisite write permissions in one of these directories. ABORTING\n\n' "${PWD}"
         return 1
    }

    mkdir -p "${timep_TMPDIR}"/.log/.{end,run}times

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
            mapfile -t -d '' cmd_rm < <(. /proc/self/fd/0 <<<"trap 'set +n; printf '\"'\"'%s\0'\"'\"' \"\${BASH_COMMAND}\"; set -n'; ${A[$mm]}" 2>/dev/null)
            for nn in "${cmd_rm[@]}"; do
                A[$mm]="${A[$mm]//"$nn"//}"
            done
            while [[ "${A[$mm]}" =~ ^[[:space:]]*\;+.*$ ]]; do
                A[$mm]="${A[$mm]#*\;}"
            done

            # find history line the function ends on by attempting to source (with set -n) progressively larger chunks of the history
            m=$(kk=1; IFS=$'\n'; set -n; until . /proc/self/fd/0 <<<"${A[*]:${mm}:${kk}}" &>/dev/null || (( ( mm + kk ) > ${#A[@]} )); do ((kk++)); done; echo "$kk")

            # remove any trailing commands on last history line
            (( mmm = mm + m ))
            mapfile -t -d '' cmd_rm < <(. /proc/self/fd/0 <<<"IFS=$'\n'; trap 'set +n; printf '\"'\"'%s\0'\"'\"' \"\${BASH_COMMAND}\"; set -n'; ${A[*]:${mm}:${m}}" 2>/dev/null)
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
    unset "timep_FNEST[-1]" "timep_NEXEC_A[-1]" "timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]" "timep_NPIPE[${timep_FNEST_CUR}]" "timep_STARTTIME[${timep_FNEST_CUR}]" "timep_LINENO[${timep_FNEST_CUR}]"
    timep_FUNCNAME_STR="${timep_FUNCNAME_STR%.*}"
    timep_FNEST_CUR="${timep_FNEST[-1]}"
    timep_NEXEC_0="${timep_NEXEC_0%.*}"
    timep_SKIP_DEBUG_FLAG=false'

    export -p timep_DEBUG_TRAP_STR_0 &>/dev/null && export -n timep_DEBUG_TRAP_STR_0
    export -p timep_DEBUG_TRAP_STR_1 &>/dev/null && export -n timep_DEBUG_TRAP_STR_1
    timep_DEBUG_TRAP_STR_0='timep_NPIPE0="${#PIPESTATUS[@]}"
    timep_ENDTIME0="${EPOCHREALTIME}"
    '
    timep_DEBUG_TRAP_STR_1='[[ "$-" == *m* ]] || {
        printf '"'"'\nWARNING: timep requires job control to be enabled.\n         Running "set +m" is not allowed!\n         Job control will automatically be re-enabled.\n\n'"'"' >&2
        set -m
    }
    [[ "${FUNCNAME[0]}" == "trap" ]] && ! ${timep_SKIP_DEBUG_FLAG} && {
        timep_SKIP_DEBUG_NEXT_FLAG=true
    }
    ${timep_SKIP_DEBUG_FLAG} || {
        timep_NPIPE[${timep_FNEST_CUR}]=${timep_NPIPE0}
        timep_ENDTIME=${timep_ENDTIME0}
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
            echo "${timep_ENDTIME}" >>"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
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
        else
            timep_CMD_TYPE="NORMAL COMMAND"
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
            printf '"'"'1\t%s\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${LINENO}}" "${timep_BASH_COMMAND_PREV_0@Q}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_r"
            printf '"'"'1\t%s\t+\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}.0\t%s\t::\t%s\n'"'"' "${EPOCHREALTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}.${BASHPID}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${BASHPID}" "${LINENO}" "${BASH_COMMAND@Q}" >"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${BASHPID}}.init_c"
            timep_SUBSHELL_INIT_FLAG=true
            timep_CMD_TYPE_PREV_0="${timep_CMD_TYPE}"
            timep_BASHPID_PREV_0="${timep_BASHPID_PREV}"
            timep_BASHPID_PREV="${BASHPID}"
            timep_ENDTIME_PREV_0="${timep_ENDTIME}"
            timep_BASH_SUBSHELL_PREV_0="${timep_BASH_SUBSHELL_PREV}"
            timep_BASH_SUBSHELL_PREV="${BASH_SUBSHELL}"
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
                [[ -s "${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s" ]] || printf '"'"'1\t%s\t-\tF:%s %s\tS:%s %s\tN:%s %s.%s{%s-%s}\t%s\t::\t%s\n'"'"' "${timep_ENDTIME_PREV_0}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${timep_BASH_SUBSHELL_PREV}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_NPIDWRAP}" "${timep_BASHPID_PREV}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${LINENO}}" "${timep_BASH_COMMAND_PREV_0@Q}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}.${timep_NEXEC_A[-1]}{${timep_NPIDWRAP}-${timep_BASHPID_PREV}}.init_s"
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
            if ${timep_IS_BG_FLAG}; then
                timep_IS_BG_INDICATOR='"'"'(&)'"'"'
            else
                timep_IS_BG_INDICATOR='"''"'
            fi
            [[ -s "${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}" ]] && {
                {
                    while read -r -u ${timep_FD} timep_ENDTIME0; do
                        ((${timep_ENDTIME0//./} < ${timep_ENDTIME//./})) && timep_ENDTIME="${timep_ENDTIME0}"
                    done
                } {timep_FD}<"${timep_TMPDIR}/.log/.endtimes/${timep_NEXEC_0}.${timep_NEXEC_A[-1]}"
                exec {timep_FD}>&-
            }
            ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s %s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR}]}" "${timep_STARTTIME[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${timep_LINENO[${timep_FNEST_CUR:-${#FUNCNAME[@]}}]:-${LINENO}}" "${timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]@Q}" "${timep_IS_BG_INDICATOR}" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
            ((timep_NEXEC_A[-1]++))
            ((timep_NEXEC_N++))
        fi
        ${timep_IS_FUNC_FLAG} && {
            timep_FUNCNAME_STR+=".${FUNCNAME[0]}"
            timep_NEXEC_0+=".${timep_NEXEC_A[-1]}"
            timep_NEXEC_A+=(0)
            ((timep_NEXEC_N++))
            [[ "${FUNCNAME[0]}" == '"'"'trap'"'"' ]] || timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]=" (F) << (FUNCTION): ${BASH_COMMAND} >>"
            timep_LINENO[${timep_FNEST_CUR}]="${LINENO}"
            timep_NPIPE[${#FUNCNAME[@]}]="1"
            timep_FNEST_CUR="${#FUNCNAME[@]}"
            timep_NO_PRINT_FLAG=false
            timep_IS_FUNC_FLAG_1=true
        }
        timep_BASH_COMMAND_PREV[${timep_FNEST_CUR}]="${BASH_COMMAND}"
        timep_LINENO[${timep_FNEST_CUR}]="${LINENO}"
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
                ${timep_NO_PRINT_FLAG} || printf '"'"'%s\t%s\t%s\tF:%s %s\tS:%s %s\tN:%s %s.%s\t%s\t::\t%s\n'"'"' "${timep_NPIPE[${timep_FNEST_CUR}]}" "${timep_ENDTIME}" "-" "${timep_FNEST_CUR}" "${timep_FUNCNAME_STR}" "${BASH_SUBSHELL}" "${timep_BASHPID_STR}" "${timep_NEXEC_N}" "${timep_NEXEC_0}" "${timep_NEXEC_A[-1]}" "${LINENO}" "<< EXEC BASH: ${BASH_COMMAND@Q} >>" >>"${timep_TMPDIR}/.log/log.${timep_NEXEC_0}"
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
        timep_STARTTIME[${timep_FNEST_CUR}]="${EPOCHREALTIME}"
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
                    EXIT|RETURN|SIGHUP|SIGINT|SIGQUIT|SIGILL|SIGTRAP|SIGABRT|SIGBUS|SIGFPE|SIGKILL|SIGUSR1|SIGSEGV|SIGUSR2|SIGPIPE|SIGALRM|SIGTERM|SIGSTKFLT|SIGCHLD|SIGCONT|SIGSTOP|SIGTSTP|SIGTTIN|SIGTTOU|SIGURG|SIGXCPU|SIGXFSZ|SIGVTALRM|SIGPROF|SIGWINCH|SIGIO|SIGPWR|SIGSYS|SIGRTMIN|SIGRTMAX|SIGRTMIN[+-]*|SIGRTMAX[+-]*)
                        break
                    ;;
                    *)
                        trapStr+="${1:+ }${1}"
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
                printf -v timep_runCmd '"${@}"\n'
                timep_runCmd1='#!'"${BASH}"

                # start of wrapper code
                timep_runFuncSrc="${timep_runCmd1}"$'\n'
            ;;
            f)
                timep_funcName="${1}"
                shift 1
                _timep_getFuncSrc -r "${timep_funcName}" >>"${timep_TMPDIR}/functions.bash"
                timep_runCmd1='#!'"${BASH}"

                printf -v timep_runCmd '%s "${@}"\n' "${timep_funcName}"
                [[ -t 0 ]] || timep_runCmd+=" <&0"

                # start of wrapper code
                timep_runFuncSrc="${timep_runCmd1}"$'\n''timep_runFunc() '
            ;;
        esac

        chmod +x "${timep_TMPDIR}/functions.bash"
    timep_runFuncSrc+='(

        builtin trap - DEBUG EXIT RETURN

        declare timep_BASHPID_PREV timep_BASHPID_STR timep_BASH_SUBSHELL_PREV timep_BASH_PATH timep_EXEC_ARG timep_BG_PID_PREV timep_CHILD_PGID timep_CHILD_TPID timep_CMD_TYPE timep_ENDTIME timep_ENDTIME0 timep_FD timep_LOCK_FD timep_FNEST_CUR timep_FUNCNAME_STR timep_IS_BG_INDICATOR timep_IS_BG_FLAG timep_IS_FUNC_FLAG timep_IS_FUNC_FLAG_1 timep_IS_SUBSHELL_FLAG timep_SUBSHELL_INIT_FLAG timep_NEXEC_0 timep_NEXEC_N timep_NO_PRINT_FLAG timep_NPIDWRAP timep_NPIPE0 timep_PARENT_PGID timep_PARENT_TPID timep_SIMPLEFORK_CUR_FLAG timep_SIMPLEFORK_NEXT_FLAG timep_SKIP_DEBUG_FLAG timep_SKIP_DEBUG_NEXT_FLAG timep_BASH_SUBSHELL_DIFF timep_BASH_SUBSHELL_DIFF_0 timep_KK timep_BASHPID_ADD_CUR timep_NPIDWRAP_PREV_0 timep_BASH_COMMAND_PREV_0 timep_CMD_TYPE_PREV_0 timep_BASHPID_PREV_0 timep_ENDTIME_PREV_0 timep_BASH_SUBSHELL_PREV_0 timep_BG_PID_PREV_0
        declare -a timep_BASH_COMMAND_PREV timep_FNEST timep_NEXEC_A timep_NPIPE timep_STARTTIME timep_A timep_LINENO timep_BASHPID_ADD

        set -mT

        : & 2>/dev/null

        declare -gx timep_TMPDIR="'"${timep_TMPDIR}"'"
        . "${timep_TMPDIR}/functions.bash"
        export -f trap

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

        echo "$(( LINENO + 4 ))" >"${timep_TMPDIR}/.log/lineno_offset"

        builtin trap "${timep_DEBUG_TRAP_STR_0}${timep_DEBUG_TRAP_STR_1}" DEBUG

        {
            '"${timep_runCmd}"'
        }  0<&${timep_FD0} 1>&${timep_FD1} 2>&${timep_FD2}

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


        printf '\n
    ----------------------------------------------------------------------------
    ----------------------- RUNTIME BREAKDOWN BY COMMAND -----------------------
    ----------------------------------------------------------------------------

    COMMAND PROFILED:
    %s

    START TIME:
    %s (%s)

    FORMAT (TAB-SEPERATED):
    ---------------------------------------------------------------------------------------------------------------------------
    NPIPE    STARTTIME    ENDTIME    F:FNEST FUNCNAME_A    S:SNEST BASHPID_A    N:NEXEC_N NEXEC    LINENO    ::    BASH_COMMAND
    ---------------------------------------------------------------------------------------------------------------------------\\n\\n' "$([[ "${timep_runType}" == 'f' ]] && printf '%s' "${timep_runCmd}" || printf '%s' "${timep_runCmdPath}")" "$(date)" "${EPOCHREALTIME}" >"${timep_TMPDIR}/.log/format"

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
    timep_TIME_DONE="${EPOCHREALTIME}"

    printf '\n\nThe %s being time profiled has finished running!\ntimep will now process the logged timing data.\ntimep will save the time profiles it generates in "%s"\n\n' "$({ [[ "${timep_runType}" == 's' ]] && echo 'script'; } || { [[ "${timep_runType}" == 'f' ]] &&  echo 'function'; } || echo 'commands')" "${timep_TMPDIR}" >&2
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

    find  "${timep_TMPDIR}/.log" -maxdepth 1 -name 'log.*' -empty -exec \rm {} +
    #\rm -f "${timep_TMPDIR}"/.log/log.*.init_{r,c,s}

    #ls -la "${timep_TMPDIR}"/.log/
    #find "${timep_TMPDIR}"/.log/ -empty -exec rm {} +


    ##### POST-PROCESSING #####

    # define post-processing function that will:
    # --> re-sort logs based on cmd start time
    # --> combine pipeline commands into single command
    # --> add in end times for subshells (last subshell cmd endtime) / bg forks (next cmd start time)
    # --> compute runtimes for each command (except subshells / bg forks / functions)
    # --> merge up logs + runtimes for any subshells / bg forks / functions
    # --> combine duplicate/repeated commands from loops (in second "combined" log)

    # define helper functions for getting runtime from timestamp differences and for summing runtimes

    _timep_EPOCHREALTIME_DIFF() {
        local tDiff d d6

        { [[ ${endTimesA[$1]} ]] && [[ ${startTimesA[$1]} ]]; } || return
        (( tDiff = 10#${endTimesA[$1]//./} - 10#${startTimesA[$1]//./} ))
        printf -v d '%0.7d' "${tDiff#-}"
        (( d6 = ${#d} - 6 ))
        printf -v runTime '%s.%s' "${d:0:$d6}" "${d:$d6}"
        runTimesA[$1]="${runTime}"
    }

    _timep_EPOCHREALTIME_DIFF_ALT() {
        local tDiff d d6

        { (( ${#} >= 2 )) && [[ $1 ]] && [[ $2 ]]; } || return
        (( tDiff = 10#${2//./} - 10#${1//./} ))
        printf -v d '%0.7d' "${tDiff#-}"
        (( d6 = ${#d} - 6 ))
        printf '%s.%s' "${d:0:$d6}" "${d:$d6}"
    }

    _timep_EPOCHREALTIME_SUM() {
        local tSum tSum0 d d6

        (( ${#runTimesA[@]} == 0 )) && return
        (( ${#runTimesA[@]} == 1 )) && {
            # short circuit if only 1 time
            runTimeTotal="${runTimesA[*]}"
            return
        }

        printf -v tSum '+10#%s' ${runTimesA[@]//./}
        tSum0="${tSum}"
        tSum="${tSum//+10#+/+}"
        until [[ "${tSum}" == "${tSum0}" ]]; do
            tSum0="${tSum}"
            tSum="${tSum//+10#+/+}"
        done
        tSum="${tSum%+10#}"
        (( tSum = 0${tSum} ))
        printf -v d '%0.7d' "${tSum}"
        (( d6 = ${#d} - 6 ))
        printf -v runTimeTotal '%s.%s' "${d:0:$d6}" "${d:$d6}"
    }

    _timep_EPOCHREALTIME_SUM_ALT() {
        local tSum tSum0 d d6

        (( ${#} == 0 )) && return
        (( ${#} == 1 )) && {
            # short circuit if only 1 time
            echo "${1}"
            return
        }

        printf -v tSum '+10#%s' ${@//./}
        tSum0="${tSum}"
        tSum="${tSum//+10#+/+}"
        until [[ "${tSum}" == "${tSum0}" ]]; do
            tSum0="${tSum}"
            tSum="${tSum//+10#+/+}"
        done
        tSum="${tSum%+10#}"
        (( tSum = 0${tSum//+10#+/+} ))
        printf -v d '%0.7d' "${tSum}"
        (( d6 = ${#d} - 6 ))
        printf '%s.%s' "${d:0:$d6}" "${d:$d6}"
    }

    _timep_PERCENT_AVG_ALT() {
        local tSum tSum0 d d2

        (( ${#} == 0 )) && return
        (( ${#} == 1 )) && {
            # short circuit if only 1 time
            echo "${1}"
            return
        }

        printf -v tSum '+10#%s' ${@//./}
        tSum0="${tSum}"
        tSum="${tSum//+10#+/+}"
        until [[ "${tSum}" == "${tSum0}" ]]; do
            tSum0="${tSum}"
            tSum="${tSum//+10#+/+}"
        done
        tSum="${tSum%+10#}"
        (( tSum = 0${tSum//\%/} ))
        (( tSum = tSum / ${#} ))
        printf -v d '%0.4d' "${tSum}"
        (( d2 = ${#d} - 2 ))
        printf '%s.%s%%' "${d:0:$d2}" "${d:$d2}"
    }

    local -g timep_LOG_NESTING_MAX timep_LOG_NESTING_CUR
    shopt -s extglob
    _timep_PROCESS_LOG() {
        local kk kk1 runTimeTotal runTimeTotal0 inPipeFlag lineno1 nPipe startTime endTime runTime runTimeP func pid nexec lineno cmd t0 t1 log_tmp linenoUniq merge_init_flag log_dupe_flag spacerN lineU logMergeAll fg0 ns nf normalCmdFlag IFS0
        local -a logA nPipeA startTimesA endTimesA runTimesA runTimesPA funcA pidA nexecA linenoA cmdA mergeA isPipeA logMergeA linenoUniqA lineUA timeUA sA fA eA fgA
        local -A linenoUniqLineA linenoUniqCountA linenoUniqTimeA linenoUniqTimePA

        [[ -e "${1}" ]] || return 1

        inPipeFlag=false

        # load current log (sorted by NEXEC) into array
        mapfile -t logA < <(sort -V -k9,9 <"${1}")

        log_dupe_flag=false
        for (( kk=1; kk<${#logA[@]}; kk++ )); do
            (( kk1 = kk - 1 ))
            [[ "${logA[$kk1]}" == "${logA[$kk]}" ]] && {
                unset "logA[$kk1]"
                log_dupe_flag=true
            }
        done
        ${log_dupe_flag} && mapfile -t -d '' logA < <(printf '%s\0' "${logA[@]}" | sed -E s/'\0+'/'\0'/g)

        # rename log to ___.orig
        \mv -f "${1}" "${1}.orig"

        # loop through lines in reverse order
        for (( kk=${#logA[@]}-1; kk>=0; kk-- )); do

            # read log fields into variables
            IFS=$'\t' read -r nPipe startTime endTime func pid nexec lineno _ cmd <<<"${logA[$kk]}"
            nPipeA[$kk]="${nPipe}"
            startTimesA[$kk]="${startTime}"
            endTimesA[$kk]="${endTime}"
            funcA[$kk]="${func}"
            pidA[$kk]="${pid}"
            nexecA[$kk]="${nexec}"
            linenoA[$kk]="${lineno}"
            cmd="${cmd//\(\&\)/\\\(\\\&\\\)}"
            cmd="$(eval echo "${cmd}")"
            cmd="${cmd//$'\n'/\$"'"\\n"'"}"
            cmdA[$kk]="${cmd}"

            # check if cmd is a subshell/bg fork/function that needs to be merged up
            if [[ "${cmdA[$kk]#"'"}" == '<< ('*'): '*' >>'* ]]; then
                normalCmdFlag=false

                # record which log to merge up and where
                mergeA[$kk]="${timep_TMPDIR}/.log/log.${nexecA[$kk]##* }"

                # read in the endtime + runtime from the log
                [[ "${cmdA[$kk]#"'"}" == '<< (BACKGROUND FORK): '*' >>'* ]] || {
                    [[ -s "${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]##* }" ]] && {
                        read -r runTime <"${timep_TMPDIR}/.log/.runtimes/log.${nexecA[$kk]##* }"
                        [[ ${runTime} ]] && runTimesA[$kk]="${runTime}"
                    }
                }
                [[ "${endTimesA[$kk]}" == '-' ]] && {
                    [[ -s "${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]##* }" ]] && {
                        read -r endTime <"${timep_TMPDIR}/.log/.endtimes/log.${nexecA[$kk]##* }"
                        [[ ${endTime} ]] && ! [[ "${endTime}" == '-' ]] && endTimesA[$kk]="${endTime}"
                    }
                }
            else
                normalCmdFlag=true
            fi


            # single-command command/process substitutions dont get a endtime logged (uses endTime='+' as indicator), since they wont trigger a EXIT trap
            # figure out the most reasonable endtimeby looking at starttimes for the parent, then grandparent, etc.
            # to get the closest timestamp that is greater than the starttime for this command and use that as the endtime
            [[ "${endTime}" == '+' ]] && {
                endTime=0
                log_tmp="${1%.*}"
                until [[ "${log_tmp}" == *'/log' ]]; do
                    [[ -s "${log_tmp}" ]] && {
                        while read -r _ endTime _ ; do
                            if (( 10#${endTime//./} > 10#${startTimesA[$kk]//./} )); then
                                break 2
                            else
                                endTime=0
                            fi
                        done <"${log_tmp}"
                    }
                    log_tmp="${log_tmp%.*}"
                done

                # if we still dont have a valid end time, use the global timep endtime
                (( 10#${endTime//./} > 10#${startTimesA[$kk]//./} )) || endTime="${timep_TIME_DONE}"

                # if we still dont have a valid end time, figure out how long the parent command/process dsubstitution command ran for and add that to the starttime
                (( 10#${endTime//./} > 10#${startTimesA[$kk]//./} )) || {
                    read -r _ t0 t1 _ < <(grep -F "${1%\[*}" <"${1%.*}")
                    if [[ $t0 ]] && [[ $t1 ]]; then
                        endTime="$( _timep_EPOCHREALTIME_SUM_ALT "${startTimesA[$kk]}" "$(_timep_EPOCHREALTIME_DIFF_ALT "$t0" "$t1")" )"
                    else
                        # if all else fails, set endtime to 1 us after start time so we still get a log entry and valid logs
                        endTime="$( _timep_EPOCHREALTIME_SUM_ALT "${startTimesA[$kk]}" '0.000001' )"
                    fi
                }
                endTimesA[$kk]="${endTime}"
            }

            # merge pipelines
            if ${inPipeFlag}; then
                # we are in a pipeline, but not at the last element
                # override nPipeA and endTimeA based on the values from the next command and append next command to current cmdA (with `|` in between)
                # note that this makes the $kk corresponding to the 1st pipeline element the one we will log
                (( kk1 = kk + 1 ))
                (( nPipeA[$kk] = nPipeA[$kk1] - 1 ))
                (( isPipeA[$kk] = isPipeA[$kk1] + 1 ))
                endTimesA[$kk]="${endTimesA[$kk1]}"
                cmdA[$kk]+=" | ${cmdA[$kk1]}"
                (( nPipeA[$kk] == 1 )) && inPipeFlag=false
            elif (( nPipeA[$kk] > 1 )); then
                # this is the last element of a pipeline. set flag to indicate this
                inPipeFlag=true
                isPipeA[$kk]=1
            fi
            ${inPipeFlag} && normalCmdFlag=false

            # compute runtime from start/end timestamps (unless we are either in the middle of a pipeline OR it is a subshell / bg fork)
            (( nPipeA[$kk] == 1 )) && [[ -z ${runTimesA[$kk]} ]] && _timep_EPOCHREALTIME_DIFF "$kk"

            [[ ${runTimesA[$kk]} ]] || runTimesA[$kk]='0.000001'
            (( 10#${runTimesA[$kk]//./} > 0 )) || {
                endTimesA[$kk]="$(_timep_EPOCHREALTIME_SUM_ALT "${startTimesA[$kk]}" '0.000001')"
                runTimesA[$kk]='0.000001'
            }

            ${normalCmdFlag} && {
                if [[ -z "${fg0}" ]]; then
                    fg0="$(IFS0="${IFS}"
                    IFS='.'
                    # get base stack for flamegraph
                    read -r -a fA <<<"${func#* }"
                    read -r -a sA <<<"${pid#* }"
                    read -r -a eA <<<"${nexec#* }"
                    IFS="${IFS0}"
                    unset "eA[-1]" "IFS0"
                    ns=0
                    nf=1
                    for nn in "${eA[@]}"; do 
                        if [[ "${nn}" == *'{'*'}' ]]; then
                            [[ ${sA[$ns]} ]] && fgA+=("SUBSHELL (${sA[$ns]})")
                            ((ns++))
                        else
                            [[ ${fA[$nf]} ]] && fgA+=("FUNCTION (${fA[$nf]})")
                            ((nf++))
                        fi
                    done
                    printf '%s;' "${fgA[@]}")"
                fi

                # print stack trace for flamegraph
                runTime="${runTimesA[$kk]//./}"
                printf '%s%s\t%s\n' "${fg0}" "${cmd}" "${runTime##+(0)}"  >>"${1%\/*}/out.flamegraph"
            }

        done

        # get total runtime
        case ${#logA[@]} in
            1) runTimeTotal="${runTimesA[*]}" ;;
            *) _timep_EPOCHREALTIME_SUM ;;
        esac

        [[ ${runTimeTotal} ]] || runTimeTotal='0.000001'

        # write runtime and final endtime to .{end,run}time file
        echo "${endTimesA[-1]}" >"${1%\/*}/.endtimes/${1##*\/}"
        echo "${runTimeTotal}" >"${1%\/*}/.runtimes/${1##*\/}"

        (( runTimeTotal0= 10#${runTimeTotal//./} ))

        # make LINENO's unique and compute runtime as % of total at this depth and get list of unique lineno's
        linenoA[0]="${linenoA[0]}.0"
        lineno1=0
        (( runTimeP = ( 10000 * 10#${runTimesA[0]//./} ) / 10#$runTimeTotal0 ))
        printf -v runTimeP '%0.4d' "$runTimeP"
        case "${runTimeP}" in
            10000) runTimesPA[0]=100.00 ;;
            *) runTimesPA[0]="${runTimeP:0:2}.${runTimeP:2}" ;;
        esac
        linenoUniqA[0]="${linenoA[0]}"
        linenoUniq+=" ${linenoA[0]} "
        linenoUniqLineA[${linenoA[0]}]="0"
        linenoUniqCountA[${linenoA[0]}]="1"
        linenoUniqTimeA[${linenoA[0]}]="${runTimesA[0]}"
        for (( kk=1; kk<${#logA[@]}; kk++ )); do
            (( kk1 = kk - 1 ))
            if (( linenoA[$kk] == ${linenoA[$kk1]%.*} )); then
                (( lineno1++ ))
            else
                lineno1=0
            fi
            linenoA[$kk]="${linenoA[$kk]}.${lineno1}"
            (( runTimeP = ( 10000 * 10#${runTimesA[$kk]//./} ) / 10#$runTimeTotal0 ))
            printf -v runTimeP '%0.4d' "$runTimeP"
            case "${runTimeP}" in
                10000) runTimesPA[$kk]=100.00 ;;
                *) runTimesPA[$kk]="${runTimeP:0:2}.${runTimeP:2}" ;;
            esac
            [[ "${linenoUniq}" == *" ${linenoA[$kk]} "* ]] || {
                linenoUniqA[$kk]="${linenoA[$kk]}"
                linenoUniq+=" ${linenoA[$kk]} "
            }
            if [[ ${linenoUniqLineA[${linenoA[$kk]}]} ]]; then
                linenoUniqLineA[${linenoA[$kk]}]+=" $kk"
                (( linenoUniqCountA[${linenoA[$kk]}]++ ))
                linenoUniqTimeA[${linenoA[$kk]}]+=" ${runTimesA[$kk]}"
            else
                linenoUniqLineA[${linenoA[$kk]}]="$kk"
                linenoUniqCountA[${linenoA[$kk]}]="1"
                linenoUniqTimeA[${linenoA[$kk]}]="${runTimesA[$kk]}"
            fi
        done

        # get runtime sums for the combined uniq lineno's
        for kk in "${!linenoUniqTimeA[@]}"; do
            linenoUniqTimeA[$kk]="$( _timep_EPOCHREALTIME_SUM_ALT ${linenoUniqTimeA[$kk]} )"
            (( runTimeP = ( 10000 * 10#${linenoUniqTimeA[$kk]//./} ) / 10#$runTimeTotal0 ))
            printf -v runTimeP '%0.4d' "$runTimeP"
            case "${runTimeP}" in
                10000) linenoUniqTimePA[$kk]=100.00 ;;
                *) linenoUniqTimePA[$kk]="${runTimeP:0:2}.${runTimeP:2}" ;;
            esac
        done

        (( spacerN = 4 * ( timep_LOG_NESTING_MAX - timep_LOG_NESTING_CUR ) ))

        # write out new merged-upward log
        kk=0
        inPipeFlag=false
        while (( kk < ${#logA[@]} )); do
            if ${inPipeFlag}; then
                # we are in a pipeline but not in the 1st element. dont add line to log
                (( isPipeA[$kk] == 1 )) && inPipeFlag=false
            else
                # add line to log
                (( kk == 0  )) || printf '\n\n'
                printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%)\t%s\t{{ %s | %s | %s }}\t(%s->%s)' "${linenoA[$kk]}" '' "${runTimesA[$kk]}" "${runTimesPA[$kk]}" "${cmdA[$kk]}" "${funcA[$kk]}" "${pidA[$kk]}" "${nexecA[$kk]}" "${startTimesA[$kk]}" "${endTimesA[$kk]}"

                # check if this is the start of a pipeline
                [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
            fi
            (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

            # add merged up log to log, including for "in the middle of a pipeline" commands
            [[ ${mergeA[$kk]} ]] && [[ -e "${mergeA[$kk]}" ]] && {
                mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk]}")
                printf '\n|-- %s' "${logMergeA[0]}"
                if (( ${#logMergeA[@]} == 2 )); then
                    printf '\n|-- %s' "${logMergeA[1]}"
                elif (( ${#logMergeA[@]} > 2 )); then
                    printf '\n|   %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                    printf '\n|-- %s' "${logMergeA[-1]}"
                fi
            }
            (( timep_LOG_NESTING_CUR == 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'

            (( kk++ ))
        done >"${1}"


        # write out new combined (uniq lineno) merged-upward log
        inPipeFlag=false
        for kk in "${!linenoUniqA[@]}"; do
            if ${inPipeFlag}; then
                # we are in a pipeline but not in the 1st element. dont add line to log
                { [[ -z ${isPipeA[$kk]} ]] || (( isPipeA[$kk] == 1 )); } && inPipeFlag=false
            else
                # add line to log
                (( kk == 0  )) || printf '\n\n'
                printf '%s:%'"${spacerN}"'.s\t(%ss|%s%%)\t(%sx) %s' "${linenoUniqA[$kk]}" '' "${linenoUniqTimeA[${linenoUniqA[$kk]}]}" "${linenoUniqTimePA[${linenoUniqA[$kk]}]}" "${linenoUniqCountA[${linenoUniqA[$kk]}]}" "${cmdA[$kk]/%: * >>"'"/ >>"'"}"

                # check if this is the start of a pipeline
                [[ ${isPipeA[$kk]} ]] && (( isPipeA[$kk] >= 1 )) && inPipeFlag=true
            fi
            (( timep_LOG_NESTING_CUR == 0 )) && [[ "${timep_runType}" == 'f' ]] && printf '\n|'

            # add merged up log to log, including for "in the middle of a pipeline" commands
            logMergeAll="$(merge_init_flag=true
            for kk1 in ${linenoUniqLineA[${linenoUniqA[$kk]}]}; do
                [[ ${mergeA[$kk1]} ]] && [[ -e "${mergeA[$kk1]}.combined" ]] && {
                    mapfile -t logMergeA < <(grep -E '.+' <"${mergeA[$kk1]}.combined")
                    printf '\n|-- %s' "${logMergeA[0]}"
                    if (( ${#logMergeA[@]} == 2 )); then
                        printf '\n|-- %s' "${logMergeA[1]}"
                    elif (( ${#logMergeA[@]} > 2 )); then
                        printf '\n|   %s' "${logMergeA[@]:1:$((${#logMergeA[@]}-2))}"
                        printf '\n|-- %s' "${logMergeA[-1]}"
                    fi
                    merge_init_flag=false
                }
            done)"
            mapfile -t lineUA < <(r=''; sed -E 's/^([^\:]+\:[[:space:]]+)[0-9\|\(\)\.s%]+[[:space:]]*'/'\1\t'/ <<<"${logMergeAll}" | while read -r nn; do [[ ${nn##*(\|   |\|-- )} ]] || continue; [[ "$r" == *$'\n'"$nn"$'\n'* ]] || { r+=$'\n'"$nn"$'\n'; echo "$nn"; }; done)
            (( ${#lineUA[@]} > 0 )) && for lineU in "${lineUA[@]}"; do  
                mapfile -t timeUA < <(grep -F "${lineU%%$'\t'*}" <<<"${logMergeAll}" | grep -F "${lineU#*$'\t'}" |  sed -E 's/^([^\:]+\:[[:space:]]+)\(([0-9\.s]+)\|([0-9\.%]+)\)[[:space:]]*(.*)$'/'\2 \3'/)
                printf '\n%s\t(%ss|%s)\t(%sx) %s' "${lineU%%$'\t'*}" "$(_timep_EPOCHREALTIME_SUM_ALT "${timeUA[@]%s *}")" "$(_timep_PERCENT_AVG_ALT "${timeUA[@]#* }")" "${#timeUA[@]}" "${lineU#*$'\t'* }"
            done

            (( timep_LOG_NESTING_CUR <= 1 )) && [[ "${timep_runType}" == 'f' ]] && ! ${inPipeFlag} && printf '\n|'
        done >"${1}.combined"
    }

    # get log names
    mapfile -t timep_LOG_NAME < <(find "${timep_TMPDIR}"/.log -name 'log*' | grep -vE '\.init_[csr]$' | sort -V)

    # get nesting lvl for each log
    timep_LOG_NESTING=()
    kk=0
    while read -r nn; do
        timep_LOG_NESTING[${#nn}]+="${timep_LOG_NAME[$kk]}"$'\n';
        ((kk++));
    done < <(printf '%s\n' "${timep_LOG_NAME[@]}" | sed -E 's/^.*\/log\.([^\/]*)$/\1/; s/[^\.]//g')
    (( timep_LOG_NESTING_MAX = ${#timep_LOG_NESTING[@]} - 1 ))
    # loop through logs from deepest nested upwards and run each through post processing function
    printf '\n\n' >&2
    kk=0
    { 
        for (( timep_LOG_NESTING_CUR=${#timep_LOG_NESTING[@]}; timep_LOG_NESTING_CUR>=0; timep_LOG_NESTING_CUR-- )); do
            mapfile -t timep_LOGS_CUR < <(echo "${timep_LOG_NESTING[$timep_LOG_NESTING_CUR]%$'\n'}" | sort -Vr)
            for nn in "${timep_LOGS_CUR[@]}"; do
                printf '\rPROCESSING TIMEP LOG #%s of %s' "$kk" "${#timep_LOG_NAME[@]}" >&2
                [[ ${nn} ]] && _timep_PROCESS_LOG "${nn}"
                read -r -u "${fd_sleep}" -t 0.01
                ((kk++))
            done
        done
    } {fd_sleep}<><(:)
    exec {fd_sleep}>&-

    printf '\n\n' >&2
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}"
    printf '\n\n' >>"${timep_LOG_NESTING[0]%$'\n'}.combined"

    sed -E s/'^(.+)\t([0-9]+)$'/'\1'/ <"${timep_TMPDIR}/.log/out.flamegraph" | sort -u | while read -r u; do printf '%s\t%s\n' "${u#*$'\t'}" "$((0 $(grep -F "$u" <"${timep_TMPDIR}/.log/out.flamegraph" | sed -E s/'^(.+)\t([0-9]+)$'/'+\2'/ | tr -d '\n') ))"; done >"${timep_TMPDIR}/.log/out.merge.flamegraph"

    ${timep_DEBUG_FLAG} && {
        printf '\n\nFLAMEGRAPH FOLDED STACK TRACE\n\n'
        cat "${timep_TMPDIR}/.log/out.merge.flamegraph"

        printf '\n\nOUTPUT LOG (FULL)\n\n'
        cat "${timep_LOG_NESTING[0]%$'\n'}"
    }

    printf '\n\nOUTPUT LOG (COMBINED)\n\n'
    cat "${timep_LOG_NESTING[0]%$'\n'}.combined"

    ) {timep_FD0}<&0 {timep_FD1}>&1 {timep_FD2}>&2
}
