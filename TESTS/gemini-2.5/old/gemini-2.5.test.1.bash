#!/bin/bash

# --- The Profiler's Gauntlet ---
# This script is designed to be a nightmare for profilers.
# It combines nested subshells, process substitution, command substitution,
# background processes, complex signal handling, and coprocesses.

# --- Configuration ---
readonly GAUNTLET_DURATION=${1:-5}
readonly CHILD_PROCESSES=3

# --- Trap and Signal Handling ---
# A complex trap to see if the profiler can handle signals
# that trigger functions which in turn spawn more processes.
trap 'signal_handler' SIGINT SIGTERM

signal_handler() {
    echo "[TRAP] Signal received! Spawning a cleanup subshell..."
    (
        echo "[TRAP-SUBSHELL] Starting cleanup..."
        sleep 0.2
        echo "[TRAP-SUBSHELL] Cleanup finished."
    ) &
    wait $!
    echo "[TRAP] Exiting."
    exit 1
}

# --- Core Functions ---
# A function that creates a deeply nested structure.
deeply_nested_madness() {
    local depth=$1
    if [ $depth -le 0 ]; then
        echo "Reached the bottom."
        return
    fi

    echo "Entering depth $depth"
    # A mix of command substitution and a subshell
    local result=$( (
        echo "Executing at depth $depth"
        sleep 0.1
        deeply_nested_madness $((depth - 1))
    ) )
    echo "Exiting depth $depth with result: $result"
}

# A function to generate data for process substitution.
data_generator() {
    for i in $(seq 1 $CHILD_PROCESSES); do
        echo "Data packet $i from $$"
        sleep 0.1
    done
}

# --- Main Execution ---
main() {
    echo "--- Profiler Gauntlet Started ---"
    echo "This test will run for approximately $GAUNTLET_DURATION seconds."

    # Launch a coprocess to run in the background.
    # Profilers may struggle to track I/O and execution of coprocesses.
    coproc DATA_FEED { data_generator; }

    # A convoluted loop that uses process substitution,
    # command substitution, and background processes.
    for i in $(seq 1 $CHILD_PROCESSES); do
        (
            echo "--- Child Process $i Started ---"
            # Command substitution within a subshell
            local child_id=$(echo "child-$i-$$")
            echo "[$child_id] Processing data..."

            # Process substitution feeding a while loop in a subshell
            while read -r data; do
                echo "[$child_id] Consumed: $data"
            done < <( (
                echo "Sub-process for child $i"
                sleep 0.3
                echo "More data from sub-process $i"
            ) )

            # Another layer of nesting
            (
                echo "[$child_id] Starting nested task..."
                sleep 0.2
                echo "[$child_id] Nested task finished."
            ) &
        ) &
    done

    # Read from the coprocess while other jobs are running.
    while read -r -u "${DATA_FEED[0]}" line; do
        echo "[COPROC] Received: $line"
    done

    # And now for the deeply nested function call.
    deeply_nested_madness 3

    echo "--- Waiting for child processes ---"
    wait

    # A final, tricky command substitution with a background process.
    final_result=$( (
        echo "Finalizing..."
        sleep 0.5
        echo "All done."
    ) & wait $!; echo "Completed" )

    echo "--- Profiler Gauntlet Finished ---"
    echo "Final Result: $final_result"
}

main
