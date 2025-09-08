#!/bin/bash

# Ultimate Bash Profiler Torture Test
# This script combines every challenging profiling scenario possible
# to create a "final boss" test for bash profilers

set -e

# Test 1: Dynamic function generation with eval and complex subprocess chains
echo "=== Test 1: Dynamic Function Hell ==="

# Create functions dynamically using eval within subshells
for i in {1..3}; do
    (
        eval "func_$i() { 
            echo \"Dynamic func $i running in PID \$\$\"
            if (( $i > 1 )); then
                { func_$((i-1)) | while read line; do echo \"[$i] \$line\"; done; } &
                wait \$!
            fi
        }"
        func_$i
    ) &
done
wait

# Test 2: Nested subshells with redirections, background jobs, and command substitution
echo "=== Test 2: Nested Subshell Matrix ==="

result=$(
    {
        echo "Level 1" >&2
        (
            echo "Level 2" | tee >(cat >&2) | {
                read input
                (
                    echo "Level 3: $input" | {
                        while read line; do
                            (echo "Level 4: $line" | tr 'a-z' 'A-Z') &
                        done
                        wait
                    }
                ) 2>&1 | sed 's/^/[L3] /' &
                
                # Parallel branch
                {
                    echo "Parallel branch" | (
                        cat | while read x; do
                            echo "Processed: $x" | tee >(echo "Side effect: $x" >&2)
                        done
                    )
                } &
                wait
            }
        ) 2>&1 | grep -v "^$" | head -10
    } 3>&1
)

echo "Final result: $result"

# Test 3: Signal handling with trap in complex subprocess hierarchy
echo "=== Test 3: Signal Madness ==="

cleanup_called=0

# Parent trap
trap 'echo "Parent cleanup"; cleanup_called=$((cleanup_called + 1))' EXIT

{
    # Child trap that modifies a file
    trap 'echo "Child cleanup" > /tmp/child_cleanup_$$; kill -TERM $$' EXIT HUP
    
    # Deep nesting with signal propagation
    (
        trap 'echo "Grandchild cleanup" >> /tmp/child_cleanup_$$' EXIT
        
        # Background job with its own signal handling
        {
            trap 'echo "Background job cleanup" >> /tmp/child_cleanup_$$' EXIT
            sleep 0.1 &
            bg_pid=$!
            
            # Send signals around
            (
                sleep 0.05
                kill -HUP $$ 2>/dev/null || true
            ) &
            
            wait $bg_pid 2>/dev/null || true
        } &
        
        # Another branch that uses exec
        {
            exec 3< <(echo "exec test")
            read -u3 exec_result
            echo "Exec result: $exec_result"
            exec 3<&-
        }
        
        wait
    ) &
    
    subshell_pid=$!
    sleep 0.1
    wait $subshell_pid 2>/dev/null || true
    
    # Check cleanup file
    if [[ -f /tmp/child_cleanup_$$ ]]; then
        echo "Cleanup messages:"
        cat /tmp/child_cleanup_$$
        rm -f /tmp/child_cleanup_$$
    fi
} 2>&1 | while IFS= read -r line; do
    echo "[SIGNAL] $line"
done

# Test 4: Process substitution nightmare with named pipes
echo "=== Test 4: Process Substitution Hell ==="

# Create a complex web of process substitutions
diff <(
    {
        seq 1 10 | while read n; do
            echo "$n" | tee >(
                # Another process substitution inside
                cat | while read x; do
                    echo "Tee: $x" >&2
                done
            )
        done
    } 2>&1 | sort -n | head -5
) <(
    # Second side with background jobs and more process substitution
    {
        echo "Starting second side" >&2
        for i in {1..5}; do
            (echo "$i"; sleep 0.01) &
        done | sort -n | while read num; do
            echo "$num" | tee >(echo "Side B: $num" >&2)
        done
        wait
    } 2>&1 | grep -E '^[0-9]+$' | head -5
) 2>&1 | while read diff_line; do
    echo "DIFF: $diff_line"
done

# Test 5: Recursive function with dynamic variable creation
echo "=== Test 5: Recursive Variable Hell ==="

recursive_chaos() {
    local depth=$1
    local prefix=$2
    
    echo "Entering depth $depth with prefix $prefix in PID $$"
    
    # Create dynamic variables
    declare "${prefix}_var_$depth"="value_at_depth_$depth"
    
    if (( depth > 0 )); then
        # Fork multiple paths
        {
            recursive_chaos $((depth - 1)) "${prefix}_left" | sed 's/^/  L: /'
        } &
        left_pid=$!
        
        {
            recursive_chaos $((depth - 1)) "${prefix}_right" | sed 's/^/  R: /'
        } &
        right_pid=$!
        
        # Wait for one, then the other
        wait $left_pid
        wait $right_pid
        
        # Access the dynamic variable
        local var_name="${prefix}_var_$depth"
        echo "Exiting depth $depth, var $var_name = ${!var_name}"
    else
        echo "Base case reached at depth 0"
    fi
}

recursive_chaos 3 "chaos" 2>&1 | nl

# Test 6: Coprocess with bidirectional communication
echo "=== Test 6: Coprocess Madness ==="

# Create a coprocess that creates another coprocess
coproc OUTER {
    echo "Outer coprocess started" >&2
    
    # Inner coprocess
    coproc INNER {
        while read cmd; do
            case "$cmd" in
                "ping")
                    echo "pong"
                    ;;
                "data:"*)
                    data="${cmd#data:}"
                    echo "received: $data" | tr 'a-z' 'A-Z'
                    ;;
                "quit")
                    break
                    ;;
            esac
        done
    }
    
    # Send commands to inner coprocess
    echo "ping" >&${INNER[1]}
    read -u ${INNER[0]} response1
    echo "Inner response 1: $response1" >&2
    
    echo "data:hello world" >&${INNER[1]}
    read -u ${INNER[0]} response2
    echo "Inner response 2: $response2" >&2
    
    echo "quit" >&${INNER[1]}
    wait ${INNER_PID}
    
    echo "Outer coprocess finished" >&2
}

# Interact with outer coprocess
sleep 0.1  # Let it start
wait ${OUTER_PID}

# Test 7: Array manipulation with subshells and background jobs
echo "=== Test 7: Array Chaos ==="

declare -a shared_array=(1 2 3 4 5)

# Multiple processes modifying array-like structures
for i in {0..4}; do
    {
        # Each background job works with the array
        local_val=${shared_array[i]}
        
        # Complex processing in subshell
        result=$(
            echo "$local_val" | {
                read num
                # Nested calculation
                (
                    calculated=$((num * num))
                    echo "$calculated" | {
                        read squared
                        echo $((squared + i))
                    }
                )
            }
        )
        
        echo "Array[$i]: $local_val -> $result (PID: $$)"
    } &
done | sort -n

wait

# Test 8: File descriptor juggling
echo "=== Test 8: File Descriptor Hell ==="

{
    # Open multiple file descriptors
    exec 3< <(seq 1 5)
    exec 4< <(seq 6 10)
    exec 5> >(while read line; do echo "FD5: $line"; done)
    exec 6> >(nl | sed 's/^/FD6: /')
    
    # Complex FD manipulation
    while read -u3 num1 && read -u4 num2; do
        {
            echo "Processing $num1 and $num2" >&5
            echo "$((num1 + num2))" >&6
        } &
    done
    
    # Close and wait
    exec 5>&-
    exec 6>&-
    wait
    
    exec 3<&-
    exec 4<&-
} 2>&1 | sort

# Test 9: The Final Boss - Everything Combined
echo "=== Test 9: FINAL BOSS - The Ultimate Chaos ==="

ultimate_chaos() {
    local round=$1
    echo "=== CHAOS ROUND $round ===" >&2
    
    # Dynamic function creation with eval in subshell
    (
        eval "chaos_func_$round() {
            echo \"Chaos func $round in PID \$\$\" >&2
            
            # Process substitution with coprocess
            coproc CHAOS_$round {
                while read input; do
                    echo \"Processed: \$input\" | tr 'a-z' 'A-Z'
                done
            }
            
            # Multiple data streams
            {
                echo \"stream1_data_$round\" >&\${CHAOS_${round}[1]}
                echo \"stream2_data_$round\" >&\${CHAOS_${round}[1]}
                exec \${CHAOS_${round}[1]}>&-  # Close write end
            } &
            
            # Read responses while doing other work
            {
                while read -u \${CHAOS_${round}[0]} response; do
                    echo \"Response: \$response\" >&2
                done
            } &
            response_pid=\$!
            
            # Recursive call in background if not at base case
            if (( round > 1 )); then
                { ultimate_chaos \$((round - 1)) | sed 's/^/  SUB: /'; } &
                sub_pid=\$!
            fi
            
            # Signal handling within the chaos
            trap 'echo \"Chaos func $round cleanup\" >&2' EXIT
            
            # Wait for everything
            wait \$response_pid 2>/dev/null || true
            if (( round > 1 )); then
                wait \$sub_pid 2>/dev/null || true
            fi
            wait \${CHAOS_${round}_PID} 2>/dev/null || true
        }"
        
        chaos_func_$round
    ) | while read line; do
        echo "[$round] $line"
    done &
}

# Launch the ultimate chaos
for round in {1..3}; do
    ultimate_chaos $round
done | {
    # Final processing with more complexity
    tee >(wc -l | sed 's/^/LINE_COUNT: /') | \
    grep -E '\[.*\]' | \
    sort | \
    uniq -c | \
    while read count line; do
        echo "Summary: $count occurrences of '$line'" | \
        tee >(echo "AUDIT: $count - $line" >&2)
    done
} 2>&1

wait

echo "=== TORTURE TEST COMPLETE ==="
echo "If your profiler survived this, it's truly exceptional!"

# Cleanup any remaining background jobs
jobs -p | xargs -r kill 2>/dev/null || true
