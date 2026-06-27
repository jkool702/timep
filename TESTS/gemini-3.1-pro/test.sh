#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# THE OROBOROS: Bash Profiler Torture Test (Patched)
# Target: Bash 5.2+
# -----------------------------------------------------------------------------

# Enable features that typically complicate stack tracking
shopt -s expand_aliases extdebug

# 1. The Coprocess Blackhole
# Coprocesses spawn asynchronous jobs with two-way FD communication. 
coproc BLACKHOLE {
    while read -r line; do
        [[ "$line" == "STOP" ]] && break
        # Nested subshell inside a coproc
        ( ( echo "$line" >/dev/null ) )
    done
}

# FIX: Bash securely closes coproc FDs inside subshells. 
# We must duplicate the write FD (to FD 8) so our background subshells can inherit it.
exec 8>&"${BLACKHOLE[1]}"

# 2. Deep Recursion with Context Switching and Nameref Shadowing
# This attacks BASH_SUBSHELL tracking, $FUNCNAME stacks, and variable introspection.
abyss() {
    local depth=$1
    local -n ref="layer_$depth" 2>/dev/null || true
    ref="fall_$depth"
    
    if (( depth > 0 )); then
        # Dynamically switch between execution contexts
        if (( depth % 3 == 0 )); then
            # Implicit Subshell
            ( abyss $(( depth - 1 )) )
        elif (( depth % 3 == 1 )); then
            # Command Substitution inside local declaration
            local void
            void=$( abyss $(( depth - 1 )) )
        else
            # Standard recursion
            abyss $(( depth - 1 ))
        fi
    fi
}

# 3. Dynamic Code Execution & Alias Inception
# Aliases evaluated at runtime that resolve into anonymous-like subshells.
alias descend='eval "abyss 3; ( abyss 2 )"'

# 4. Trap Hijacking & Re-evaluation
# We capture timep's existing traps, overwrite them temporarily to run our own code,
# and then dynamically evaluate the original traps back into existence.
PREV_DEBUG=$(trap -p DEBUG)
PREV_RETURN=$(trap -p RETURN)
PREV_ERR=$(trap -p ERR)

trap 'abyss 1 >/dev/null 2>&1' DEBUG
trap 'abyss 1 >/dev/null 2>&1' RETURN
trap 'abyss 1 >/dev/null 2>&1' ERR

descend
# Trigger a fake error to test ERR trap tracking
false || true 

# Restore timep's traps safely
eval "$PREV_DEBUG"
eval "$PREV_RETURN"
eval "$PREV_ERR"

# 5. Massive Async Chaos & State Toggling
declare -a PIDS=()
for i in {1..10}; do
    (
        # Turn off job control and functrace temporarily. 
        # Since timep requires these, this tests its auto-re-enable capability.
        set +m +T 2>/dev/null
        abyss 4
        
        # Spam standard error with control characters to attack text-based log parsers
        printf "chaos %s \n\t\r;|\033[0m\n" "$i" >&2
        
        # Write to the duplicated coproc FD
        echo "tick $i" >&8
        
        set -m -T 2>/dev/null
    ) &
    PIDS+=($!)
done

# 6. Process Substitution FD Streaming
# Process substitution is technically async, but we bypass the lack of a reliable PID 
# by assigning it to an arbitrary FD and executing a blocking read. 
exec 9< <( 
    abyss 3
    # Spawn another background job *inside* the process substitution
    ( abyss 2 ) & 
    wait $!
    echo "SYNC_DONE"
)
read -r -u 9 _
exec 9<&-

# 7. Sourcing from Process Substitution
# This obliterates standard source-line ($LINENO / BASH_SOURCE) tracking.
source <(
    echo "abyss 2"
    echo "( sleep 0.1; abyss 1 ) & PIDS+=(\$!)"
)

# 8. Kamikaze Function
# A function that deletes its own definition while executing.
kamikaze() {
    unset -f kamikaze
    abyss 2
}
kamikaze

# 9. Exec Descriptor Shuffle
# Rapidly re-assign stdout/stderr across higher file descriptors inside a subshell.
# If the profiler hardcoded FD assumptions for logging, this might blind it.
(
    exec 7>&1 8>&2
    exec 1>&- 2>&-
    exec 1>&7 2>&8
    abyss 2
    exec 7>&- 8>&-
)

# 10. PROMPT_COMMAND Arrays (Bash 5.1+)
# Profilers often forget to check if PROMPT_COMMAND was executed natively.
PROMPT_COMMAND=( 'abyss 1' 'descend' )
eval "${PROMPT_COMMAND[@]}"

# -----------------------------------------------------------------------------
# TEARDOWN & WAIT
# -----------------------------------------------------------------------------

# Terminate the coprocess and close our duplicated FD
echo "STOP" >&8
exec 8>&-
wait "$BLACKHOLE_PID" 2>/dev/null || true

# Explicitly wait for all async forks so timep's map-reduce captures them fully
for pid in "${PIDS[@]}"; do
    wait "$pid" 2>/dev/null || true
done

# 11. The Parting Gift
# Hook the EXIT trap to do even more async work while the script tears down,
# racing against the exact moment timep attempts to begin its map-reduce phase.
trap '
    ( abyss 2 ) & 
    exit_pid=$!
    wait "$exit_pid"
' EXIT

exit 0
