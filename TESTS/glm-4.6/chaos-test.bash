#!/usr/bin/env bash

# The "Safe but Impossible" Profiler Stress Test
# Designed to test profilers without crashing the system

set -mT  # Job control and functrace required

# Global variables to add chaos
declare -a global_pids=()
declare -g trap_counter=0
declare -g signal_received=0
declare -g max_depth=4  # Limit recursion depth

# Self-modifying function that will change during execution
chaos_func() {
    local level=$1
    echo "CHAOS Level $level: PID=$BASHPID, SUBSHELL=$BASH_SUBSHELL"
    
    # Only recurse if we haven't reached max depth
    if (( level > 0 && level < max_depth )); then
        # Recursively call in different contexts but limit parallelism
        if (( level % 2 == 0 )); then
            (chaos_func $((level-1))) &
            chaos_func $((level-1))
            wait -n
        else
            chaos_func $((level-1))
            (chaos_func $((level-1))) &
            wait -n
        fi
    fi
    
    # Modify itself after first run
    if (( level == max_depth )); then
        eval 'chaos_func() { echo "REDEFINED CHAOS: $BASHPID"; }'
    fi
}

# Trap manipulator that plays with trap states (safely)
trap_manipulator() {
    local trap_type=$1
    
    # Set traps that will interfere with profiler
    trap 'trap_counter=$((trap_counter+1)); echo "TRAP $trap_counter: DEBUG"' DEBUG
    trap 'echo "EXIT TRAP in $trap_type"; trap - DEBUG' EXIT
    trap 'echo "RETURN TRAP in $trap_type"' RETURN
    
    # Unset and reset traps
    trap - DEBUG
    trap 'trap_counter=$((trap_counter+1))' DEBUG
    
    # Call in different contexts but limit depth
    if [[ "$trap_type" != "SUBSHELL-SUBSHELL" ]]; then
        (trap_manipulator "SUBSHELL-$trap_type") &
        wait
    fi
}

# Signal handler that creates more chaos (safely)
signal_chaos() {
    signal_received=1
    echo "SIGNAL CHAOS: Received USR1 at $BASHPID"
    
    # Create a limited number of background jobs on signal
    (sleep 0.1; echo "SIGNAL SPAWN 1") &
    (sleep 0.1; echo "SIGNAL SPAWN 2") &
    
    # Manipulate traps from signal handler
    trap 'echo "SIGNAL DEBUG TRAP"' DEBUG
}

# Pipeline and process substitution nightmare (controlled)
pipeline_chaos() {
    local depth=$1
    
    if (( depth <= 0 )); then
        echo "PIPELINE END: $BASHPID"
        return
    fi
    
    # Complex nested pipeline with process substitutions
    {
        echo "PIPELINE START $depth"
        pipeline_chaos $((depth-1))
        echo "PIPELINE END $depth"
    } | {
        tee >(cat > /dev/null) |
        sed 's/PIPELINE/PIPESUB/' |
        while read -r line; do
            echo "PROCESSED: $line"
            # Create subshell within pipeline but limit further nesting
            if (( depth > 1 )); then
                (echo "SUBSHELL IN PIPELINE: $BASHPID") &
            fi
        done
    } | {
        cat <(echo "PROCESS SUB 1") <(echo "PROCESS SUB 2") |
        sort | uniq -c
    }
}

# Coproc chaos (limited)
coproc_chaos() {
    local i
    for i in {1..2}; do  # Reduced from 3 to 2
        # Create coproc that spawns more processes
        coproc CP {
            for j in {1..2}; do  # Reduced from 3 to 2
                echo "COPROC $i-$j: $BASHPID"
                (echo "COPROC SUBSHELL $i-$j") &
                sleep 0.01
            done
        }
        
        # Read from coproc while it's running
        while read -r -u "${CP[0]}" line; do
            echo "READ FROM COPROC: $line"
        done
    done
}

# Variable scope manipulation
variable_chaos() {
    local var="OUTER: $BASHPID"
    
    (
        var="MIDDLE: $BASHPID"
        (
            var="INNER: $BASHPID"
            echo "INNER VAR: $var"
            # Unset variable that profiler might use
            unset BASH_COMMAND 2>/dev/null || true
        )
        echo "MIDDLE VAR: $var"
    )
    
    echo "OUTER VAR: $var"
}

# Controlled job creation/destruction
job_chaos() {
    local i
    for i in {1..5}; do  # Reduced from 10 to 5
        # Create multiple types of jobs
        { echo "JOB $i-1"; } &
        { (echo "JOB $i-2"; echo "JOB $i-2-2") & } &
        (echo "JOB $i-3") &
        
        # Wait for some jobs while creating more
        if (( i % 2 == 0 )); then  # Changed from 3 to 2
            wait -n
        fi
    done
    
    # Wait for all remaining jobs
    wait
}

# Command substitution in complex contexts
cmdsub_chaos() {
    local result
    result=$(echo "CMDSUB 1: $BASHPID")
    echo "RESULT 1: $result"
    
    result=$( (echo "CMDSUB 2: $BASHPID") | cat )
    echo "RESULT 2: $result"
    
    result=$( {
        echo "CMDSUB 3 START"
        (echo "CMDSUB 3 MIDDLE") &
        wait
        echo "CMDSUB 3 END"
    } )
    echo "RESULT 3: $result"
}

# Main chaos orchestrator
main_chaos() {
    echo "=== CHAOS TEST START: PID=$BASHPID ==="
    
    # Set up signal handler
    trap signal_chaos USR1
    
    # Send signal to self after a short delay
    (sleep 0.05; kill -USR1 $$) &
    
    # Start all chaos in parallel
    (
        echo "=== DEEP NESTING CHAOS ==="
        chaos_func $max_depth
    ) &
    
    (
        echo "=== TRAP MANIPULATION CHAOS ==="
        trap_manipulator "MAIN"
    ) &
    
    (
        echo "=== PIPELINE CHAOS ==="
        pipeline_chaos 3
    ) &
    
    (
        echo "=== COPROC CHAOS ==="
        coproc_chaos
    ) &
    
    (
        echo "=== VARIABLE CHAOS ==="
        variable_chaos
    ) &
    
    (
        echo "=== JOB CHAOS ==="
        job_chaos
    ) &
    
    (
        echo "=== CMD SUB CHAOS ==="
        cmdsub_chaos
    ) &
    
    # Wait for all chaos to complete
    wait
    
    # Final trap manipulation
    trap 'echo "FINAL EXIT TRAP"' EXIT
    
    echo "=== CHAOS TEST COMPLETE ==="
    echo "Total traps triggered: $trap_counter"
    echo "Signals received: $signal_received"
}

# Execute the chaos
main_chaos

# Exit with complex status
exit $((RANDOM % 10))