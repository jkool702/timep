#!/usr/bin/env bash
#
# timep_torture_test.sh
# A comprehensive torture test for Bash profilers.
# Designed to push the boundaries of job control, traps, subshells, 
# coprocesses, and dynamic environment manipulation.

set -m  # Ensure job control is active (as required by timep)
set -T  # Ensure functrace is active (as required by timep)

# =====================================================================
# CHAMBER 1: The Pipeline of Concurrent Subshells (Concurrency & I/O)
# Tests if the profiler can isolate and attribute resource usage across
# multiple concurrently executing user-defined functions in a pipeline.
# =====================================================================
echo "--- Starting Chamber 1 ---"

chamber_1_source() {
    local i
    for i in {1..3}; do
        echo "ch1_data_$i"
        sleep 0.01
    done
}

chamber_1_filter() {
    local line
    while read -r line; do
        echo "filtered_${line^^}"
    done
}

chamber_1_sink() {
    local line
    while read -r line; do
        echo "sink_output: $line" >&2
    done
}

# Run the pipeline. All three functions run concurrently in separate subshells.
chamber_1_source | chamber_1_filter | chamber_1_sink
wait

# =====================================================================
# CHAMBER 2: Process Substitution & Sparse FD Redirections
# Tests how the profiler handles asynchronous background process substitutions 
# routed through arbitrary, non-standard file descriptors.
# =====================================================================
echo "--- Starting Chamber 2 ---"

chamber_2_helper() {
    sleep 0.02
    echo "proc_sub_val_$1"
}

# Redirect process substitutions to specific file descriptors
exec 4< <(chamber_2_helper "A")
exec 5< <(chamber_2_helper "B")

read -u 4 -r valA
read -u 5 -r valB

echo "Chamber 2 Combined: $valA & $valB"

# Close descriptors and wait
exec 4<&-
exec 5<&-
wait

# =====================================================================
# CHAMBER 3: Coprocess Communication & Process Suspension
# Coprocesses manage their own file descriptors and run asynchronously.
# This also pauses and resumes the coprocess to test state tracking.
# =====================================================================
echo "--- Starting Chamber 3 ---"

chamber_3_worker() {
    local line
    while read -r line; do
        if [[ "$line" == "ping" ]]; then
            echo "pong"
        elif [[ "$line" == "exit" ]]; then
            break
        fi
    done
}

# Start the coproc
coproc C3_COPROC { chamber_3_worker; }

# Temporarily suspend the coprocess using job control signals
kill -STOP "$C3_COPROC_PID"
sleep 0.01
kill -CONT "$C3_COPROC_PID"

# Communicate with the coproc safely
if [[ -n ${C3_COPROC[1]} ]]; then
    echo "ping" >&"${C3_COPROC[1]}"
    read -r response <&"${C3_COPROC[0]}"
    echo "Chamber 3 Coproc Response: $response"
    echo "exit" >&"${C3_COPROC[1]}"
fi

wait "$C3_COPROC_PID"

# =====================================================================
# CHAMBER 4: Dynamic Self-Redefinition & Scope Namerefs
# Tests if the profiler caches function definitions or handles mid-run
# code modification, combined with associative array namerefs.
# =====================================================================
echo "--- Starting Chamber 4 ---"

declare -A ch4_state
ch4_state[current]="uninitialized"

ch4_nameref_mutator() {
    local -n state_ref=$1
    state_ref="initialized"
    
    # Redefine the target function on the fly
    eval 'ch4_redefined_target() { echo "New definition executed"; }'
}

ch4_redefined_target() {
    echo "Original definition executed"
}

ch4_redefined_target
ch4_nameref_mutator "ch4_state[current]"
ch4_redefined_target
echo "Chamber 4 State: ${ch4_state[current]}"

# =====================================================================
# CHAMBER 5: Builtin Hijacking & Alias Shadowing
# Tests if the profiler's internal mechanisms rely on bare utilities
# (which can be overridden by the script) or use explicit builtins.
# =====================================================================
echo "--- Starting Chamber 5 ---"

# Override standard utilities with shell functions
sleep() {
    command sleep "$@"
}

# Execute a shadowed utility
sleep 0.01

# Clean up function shadow
unset -f sleep

# Test alias shadowing in non-interactive mode using eval
shopt -s expand_aliases
alias echo="echo -n '[ALIAS_INJECTED] '"

eval 'echo "This is an aliased echo test."'
eval 'echo ""' # Print newline

unalias echo

# =====================================================================
# CHAMBER 6: Signal-Induced Asynchronous Interrupts
# Tests if asynchronous signal delivery during normal operations disrupts
# the profiler's timing mechanisms or call stack trace.
# =====================================================================
echo "--- Starting Chamber 6 ---"

chamber_6_handler() {
    local i
    for i in {1..5}; do
        : # quick iterations inside signal context
    done
    echo "Signal handler completed"
}

trap chamber_6_handler USR1

# Trigger the USR1 signal asynchronously from a subshell
(
    sleep 0.01
    kill -USR1 $$
) &
subshell_pid=$!

# Execute a command that will be interrupted or run concurrently with the signal
sleep 0.03
wait $subshell_pid
sleep 0.01  # Allow time for signal processing to settle

# Restore trap
trap - USR1

# =====================================================================
# CHAMBER 7: The Overhead Bomb
# Rapid burst of subshell invocations and arithmetic calculations.
# This tests the performance impact and throughput of the profiler's 
# tracing and logging layer.
# =====================================================================
echo "--- Starting Chamber 7 ---"

chamber_7_bomb() {
    local i
    for i in {1..150}; do
        # Command substitution creates subshells rapidly
        local val=$(echo $(( i * 2 )))
        local -i another=$(( val + 1 ))
    done
}
chamber_7_bomb

# =====================================================================
# CHAMBER 8: Nested DEBUG Trap Manipulation
# Overwrites the DEBUG trap inside an isolated subshell.
# =====================================================================
echo "--- Starting Chamber 8 ---"

(
    # Set a custom DEBUG trap inside a subshell to see if parent profiler recovers
    trap 'local_var="interrupted"' DEBUG
    echo "Running with temporary subshell DEBUG trap"
)

# =====================================================================
# CHAMBER 9: Exit Trap Finale
# Tests if the profiler's post-processing/map-reduce handles complex
# cleanup operations registered on exit, including subshells.
# =====================================================================
echo "--- Starting Chamber 9 ---"

(
chamber_9_cleanup() {
    echo "Chamber 9: EXIT trap active."
    ( echo "Executing subshell inside EXIT trap" ) | tr 'a-z' 'A-Z'
    echo "Chamber 9: EXIT trap complete."
}

trap chamber_9_cleanup EXIT
)

# Safe errexit evaluation
set -e
failing_command() {
    return 1
}
failing_command || true
set +e
sleep 1
echo "--- Torture Test Script Main Body Finished ---"
