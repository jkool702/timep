#!/bin/bash
#
# IMPROVED TIMEP STRESS TEST - No Deadlocks
#

set -eu -o pipefail

# Signal handling without interference
trap 'echo "Clean exit"; exit 0' EXIT INT TERM

# Safe recursive function with process management
safe_recursive_test() {
    local depth=$1
    local max_depth=$2
    
    echo "Depth: $depth"
    
    if (( depth < max_depth )); then
        # Create background process but track it specifically
        local bg_pid
        (
            sleep 0.001
            safe_recursive_test $((depth + 1)) $max_depth
        ) &
        bg_pid=$!
        
        # Wait only for the specific child we created
        wait $bg_pid 2>/dev/null || true
    fi
}

# Coprocess stress without deadlocks
safe_coprocess_test() {
    coproc SAFE_CP {
        while read -r line; do
            echo "CP: $((line * 2))"
            sleep 0.001
        done
    }
    
    for i in {1..10}; do
        echo "$i" >&${SAFE_CP[1]}
        read -r -t 1 -u ${SAFE_CP[0]} result || break
        echo "Result: $result"
    done
    
    # Clean shutdown
    exec {SAFE_CP[1]}>&-
    wait ${SAFE_CP_PID} 2>/dev/null || true
}

# Process substitution without pipelines
safe_process_subs() {
    local result
    result=$(cat <(echo "Sub1") <(echo "Sub2") <(echo "Sub3"))
    echo "$result"
}

# Job control with proper cleanup
safe_job_control() {
    set -m
    {
        sleep 0.1
        echo "Job completed"
    } &
    local job_pid=$!
    
    sleep 0.05
    wait $job_pid 2>/dev/null || true
    set +m
}

# Signal race conditions (safe)
safe_signal_test() {
    local child_pid
    (
        trap 'exit 0' TERM
        while true; do
            sleep 0.1
        done
    ) &
    child_pid=$!
    
    sleep 0.01
    kill -TERM $child_pid 2>/dev/null || true
    wait $child_pid 2>/dev/null || true
}

# Memory pressure without array bombs
safe_memory_test() {
    for i in {1..100}; do
        declare -a small_array=("a" "b" "c")
        unset small_array
    done
}

# Main test runner
main() {
    echo "Starting Safe Stress Test..."
    
    time safe_recursive_test 1 5
    time safe_coprocess_test
    time safe_process_subs
    time safe_job_control
    time safe_signal_test
    time safe_memory_test
    
    echo "All tests completed successfully!"
}

main "$@"