 THE BRUTAL BASH PROFILER TEST
# Designed to challenge even the most sophisticated bash profilers

set -euo pipefail

# Global variables for chaos
CHAOS_LEVEL=${1:-5}  # 1-10, higher = more brutal
SEED=${2:-$$}       # Random seed

# Initialize random with seed
RANDOM=$SEED

echo "=== BRUTAL PROFILER TEST INITIATED ==="
echo "Chaos Level: $CHAOS_LEVEL"
echo "Random Seed: $SEED"
echo "PID: $$"
echo "Start Time: $(date +%s.%N)"

# Function to create micro-delays (hard to measure accurately)
micro_delay() {
    local delay=$(echo "scale=9; $1 / 1000000" | bc -l 2>/dev/null || echo "0.000001")
    if command -v python3 >/dev/null 2>&1; then
        python3 -c "import time; time.sleep($delay)" 2>/dev/null || true
    elif command -v perl >/dev/null 2>&1; then
        perl -e "select(undef, undef, undef, $delay)" 2>/dev/null || true
    else
        # Fallback to busy-wait for systems without python/perl
        local end=$(( $(date +%s%N) + $1 ))
        while [ $(date +%s%N) -lt $end ]; do :; done
    fi
}

# Function to create extreme nesting
recursive_nesting() {
    local depth=$1
    if [ $depth -le 0 ]; then
        # Base case - execute multiple micro-operations
        for i in $(seq 1 $((CHAOS_LEVEL * 2))); do
            echo "base_$i" | sed 's/_/-/g' | tr 'a-z' 'A-Z' | wc -c >/dev/null
            micro_delay $((RANDOM % 100))
        done
        return 0
    fi
    
    # Recursive case with multiple parallel branches
    (
        recursive_nesting $((depth - 1))
    ) &
    
    (
        recursive_nesting $((depth - 1))
    ) &
    
    (
        # Command substitution nesting
        result=$(echo $(echo $(echo $(echo "nested_$depth"))))
        echo "$result" | grep -o '[0-9]*' >/dev/null
    )
    
    # Pipeline with multiple stages
    seq 1 $depth | awk '{print $1 * 2}' | sort -nr | head -1 >/dev/null
    
    # Wait for background processes
    wait
    
    # Random micro-delay
    micro_delay $((RANDOM % 200))
}

# Function for massive parallel execution
parallel_chaos() {
    local num_procs=$((CHAOS_LEVEL * 10))
    echo "Spawning $num_procs parallel processes..."
    
    for i in $(seq 1 $num_procs); do
        (
            # Each process does different work
            case $((i % 5)) in
                0)
                    # CPU intensive
                    for j in $(seq 1 100); do
                        echo $j | awk '{print $1 * $1}' | bc 2>/dev/null || true
                    done
                    ;;
                1)
                    # I/O intensive
                    for j in $(seq 1 20); do
                        echo "data_$j" > /tmp/test_$i_$j.txt
                        cat /tmp/test_$i_$j.txt | wc -c >/dev/null
                        rm -f /tmp/test_$i_$j.txt
                    done
                    ;;
                2)
                    # Mixed operations
                    for j in $(seq 1 50); do
                        result=$(($j + $RANDOM % 100))
                        echo $result | grep '[0-9]' >/dev/null
                        micro_delay $((RANDOM % 50))
                    done
                    ;;
                3)
                    # Pipeline chains
                    seq 1 10 | xargs -I{} echo {} | sort | uniq | wc -l >/dev/null
                    ;;
                4)
                    # Subshell chains
                    ( ( ( ( echo "deep" ) ) ) | rev | tr 'a-z' 'A-Z' ) >/dev/null
                    ;;
            esac
        ) &
        
        # Stagger process creation
        micro_delay $((RANDOM % 100))
    done
    
    # Wait for all processes
    wait
    echo "All parallel processes completed"
}

# Function for complex pipeline stress
pipeline_torture() {
    echo "Starting complex pipeline torture..."
    
    # Multi-stage pipeline with process substitution
    {
        seq 1 1000
        for i in $(seq 1001 2000); do
            echo $i
            micro_delay $((RANDOM % 10))
        done
    } | \
    awk '{print $1, $1 * $1, $1 * $1 * $1}' | \
    sort -k2 -n | \
    while read a b c; do
        echo "$a:$b:$c"
        # Random delays within pipeline
        if [ $((RANDOM % 10)) -eq 0 ]; then
            micro_delay $((RANDOM % 50))
        fi
    done | \
    cut -d: -f2 | \
    paste -sd+ | \
    bc 2>/dev/null || echo "0" > /tmp/pipeline_result.txt
    
    # Pipeline with process substitution and redirection
    diff <(seq 1 100 | sort -R) <(seq 1 100 | sort -R) | wc -l > /tmp/diff_count.txt
    
    # Named pipe usage
    mkfifo /tmp/test_pipe 2>/dev/null || true
    
    # Writer to named pipe
    (
        for i in $(seq 1 50); do
            echo "pipe_data_$i"
            micro_delay $((RANDOM % 20))
        done
    ) > /tmp/test_pipe &
    
    # Reader from named pipe
    (
        while read line; do
            echo "$line" | sed 's/_/ /g' | wc -w >/dev/null
        done < /tmp/test_pipe
    ) &
    
    wait
    rm -f /tmp/test_pipe
    
    echo "Pipeline torture completed"
}

# Function for signal handling chaos
signal_chaos() {
    echo "Starting signal handling chaos..."
    
    # Set up signal handlers
    trap 'echo "Caught SIGUSR1 at $(date +%s.%N)"' SIGUSR1
    trap 'echo "Caught SIGUSR2 at $(date +%s.%N)"' SIGUSR2
    
    # Spawn processes that send signals
    for i in $(seq 1 $((CHAOS_LEVEL * 2))); do
        (
            sleep $((RANDOM % 3))
            kill -SIGUSR1 $$
            micro_delay $((RANDOM % 100))
            kill -SIGUSR2 $$
        ) &
    done
    
    # Do work while signals are incoming
    for i in $(seq 1 100); do
        echo "working_$i" | md5sum 2>/dev/null | cut -d' ' -f1 >/dev/null
        micro_delay $((RANDOM % 50))
    done
    
    wait
    trap - SIGUSR1 SIGUSR2
    echo "Signal chaos completed"
}

# Function for file descriptor madness
fd_chaos() {
    echo "Starting file descriptor chaos..."
    
    # Open multiple file descriptors
    exec 3< <(seq 1 100)
    exec 4< <(seq 101 200)
    exec 5> /tmp/fd_test_1.txt
    exec 6> /tmp/fd_test_2.txt
    
    # Read from and write to multiple FDs concurrently
    for i in $(seq 1 50); do
        if read -u 3 line; then
            echo "FD3: $line" >&5
        fi
        if read -u 4 line; then
            echo "FD4: $line" >&6
        fi
        micro_delay $((RANDOM % 30))
    done
    
    # Close file descriptors
    exec 3<&-
    exec 4<&-
    exec 5>&-
    exec 6>&-
    
    # Verify file contents
    wc -l /tmp/fd_test_*.txt >/dev/null 2>&1 || true
    rm -f /tmp/fd_test_*.txt
    
    echo "File descriptor chaos completed"
}

# Function for extreme command substitution nesting
substitution_nightmare() {
    echo "Starting substitution nightmare..."
    
    # Deeply nested command substitutions
    result1=$(echo $(echo $(echo $(echo $(echo "level1")))))
    result2=$(echo $(echo $(echo $(echo $(echo "level2")))))
    result3=$(echo $(echo $(echo $(echo $(echo "level3")))))
    
    # Complex arithmetic with substitutions
    sum=$(($(echo $RANDOM | cut -c1-2) + $(echo $RANDOM | cut -c1-2)))
    product=$(($(echo $RANDOM | cut -c1-2) * $(echo $RANDOM | cut -c1-2)))
    
    # Pipeline with command substitutions
    echo "Processing: $result1, $result2, $result3" | \
    awk -v s="$sum" -v p="$product" '{print $0, s, p}' | \
    while read a b c d e; do
        final=$(echo "$d + $e" | bc 2>/dev/null || echo "0")
        echo "Final: $final" >/dev/null
    done
    
    # Process substitution with multiple levels
    diff <(seq 1 $((CHAOS_LEVEL * 10)) | sort -R) \
         <(seq 1 $((CHAOS_LEVEL * 10)) | sort -R) | \
    wc -l >/dev/null
    
    echo "Substitution nightmare completed"
}

# Main execution
echo ""
echo "=== BEGINNING BRUTAL EXECUTION ==="
echo ""

# Phase 1: Recursive nesting
echo "Phase 1: Recursive Nesting"
start_time=$(date +%s.%N)
recursive_nesting $((CHAOS_LEVEL + 2))
end_time=$(date +%s.%N)
echo "Phase 1 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""

# Phase 2: Parallel chaos
echo "Phase 2: Parallel Chaos"
start_time=$(date +%s.%N)
parallel_chaos
end_time=$(date +%s.%N)
echo "Phase 2 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""

# Phase 3: Pipeline torture
echo "Phase 3: Pipeline Torture"
start_time=$(date +%s.%N)
pipeline_torture
end_time=$(date +%s.%N)
echo "Phase 3 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""

# Phase 4: Signal chaos
echo "Phase 4: Signal Chaos"
start_time=$(date +%s.%N)
signal_chaos
end_time=$(date +%s.%N)
echo "Phase 4 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""

# Phase 5: File descriptor chaos
echo "Phase 5: File Descriptor Chaos"
start_time=$(date +%s.%N)
fd_chaos
end_time=$(date +%s.%N)
echo "Phase 5 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""

# Phase 6: Substitution nightmare
echo "Phase 6: Substitution Nightmare"
start_time=$(date +%s.%N)
substitution_nightmare
end_time=$(date +%s.%N)
echo "Phase 6 completed in: $(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "unknown") seconds"

echo ""
echo "=== BRUTAL EXECUTION COMPLETED ==="
echo "End Time: $(date +%s.%N)"
echo "Total processes created: approximately $((CHAOS_LEVEL * 62))"
echo "Cleanup: removing temporary files"
rm -f /tmp/pipeline_result.txt /tmp/diff_count.txt /tmp/test_*.txt 2>/dev/null || true
echo "Test completed successfully (or spectacularly failed)"
