#!/usr/bin/env bash

# The "Impossible" Profiler Stress Test
# Designed to break naive profilers with:
# - Deep nesting (functions, subshells, background jobs)
# - Trap interference and manipulation
# - Signal handling during execution
# - Complex pipelines and process substitutions
# - Coprocs and command substitution chaos
# - Rapid job creation/destruction
# - Variable scope manipulation
# - Self-modifying code

set -mT  # Job control and functrace required

# Global variables to add chaos
declare -a global_pids=()
declare -g trap_counter=0
declare -g signal_received=0

# Self-modifying function that will change during execution
chaos_func() {
    local level=$1
    echo "CHAOS Level $level: PID=$BASHPID, SUBSHELL=$BASH_SUBSHELL"
    
    if (( level > 0 )); then
        # Recursively call in different contexts
        (chaos_func $((level-1))) &
        chaos_func $((level-1))
        wait -n
    fi
    
    # Modify itself after first run
    if (( level == 5 )); then
        eval 'chaos_func() { echo "REDEFINED CHAOS: $BASHPID"; }'
    fi
}

# Trap manipulator that plays with trap states
trap_manipulator() {
    local trap_type=$1
    
    # Set traps that will interfere with profiler
    trap 'trap_counter=$((trap_counter+1)); echo "TRAP $trap_counter: DEBUG"' DEBUG
    trap 'echo "EXIT TRAP in $trap_type"; trap - DEBUG' EXIT
    trap 'echo "RETURN TRAP in $trap_type"' RETURN
    
    # Unset and reset traps
    trap - DEBUG
    trap 'trap_counter=$((trap_counter+1))' DEBUG
    
    # Call in different contexts
    (trap_manipulator "SUBSHELL-$trap_type") &
    wait
}

# Signal handler that creates more chaos
signal_chaos() {
    signal_received=1
    echo "SIGNAL CHAOS: Received USR1 at $BASHPID"
    
    # Create more background jobs on signal
    (sleep 0.1; echo "SIGNAL SPAWN 1") &
    (sleep 0.1; echo "SIGNAL SPAWN 2") &
    
    # Manipulate traps from signal handler
    trap 'echo "SIGNAL DEBUG TRAP"' DEBUG
}

# Pipeline and process substitution nightmare
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
            # Create subshell within pipeline
            (echo "SUBSHELL IN PIPELINE: $BASHPID") &
        done
    } | {
        cat <(echo "PROCESS SUB 1") <(echo "PROCESS SUB 2") |
        sort | uniq -c
    }
}

# Coproc chaos
coproc_chaos() {
    local i
    for i in {1..3}; do
        # Create coproc that spawns more processes
        coproc CP {
            for j in {1..3}; do
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

# Rapid job creation/destruction
job_chaos() {
    local i
    for i in {1..10}; do
        # Create multiple types of jobs rapidly
        { echo "JOB $i-1"; } &
        { (echo "JOB $i-2"; echo "JOB $i-2-2") & } &
        (echo "JOB $i-3") &
        
        # Wait for some jobs while creating more
        if (( i % 3 == 0 )); then
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
        chaos_func 5
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
