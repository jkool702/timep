#!/usr/bin/env bash

# Ultimate Bash Profiler Stress Test
# This script is designed to be extremely challenging to profile accurately

set -m  # Enable job control

# Global variables that will be modified in complex ways
declare -i counter=0
declare -A dynamic_array
declare -a background_pids=()
declare -a recursive_results=()

# Complex signal handling that modifies behavior
trap 'counter+=5; echo "TRAP: $counter at $$ $(date +%N)"' SIGUSR1
trap 'counter+=10; echo "TRAP2: $counter at $$ $(date +%N)"' SIGUSR2

# Function that dynamically generates and executes code
dynamic_code_generator() {
    local depth=$1
    local code=""
    
    if (( depth > 0 )); then
        code+="echo \"Depth: $depth\"; "
        code+="counter+=depth; "
        code+="dynamic_array[depth_$depth]=$counter; "
        code+="$(dynamic_code_generator $((depth - 1)))"
        code+="kill -SIGUSR1 $$; "
    else
        code+="echo \"Base case reached\"; "
        code+="counter+=100; "
    fi
    
    echo "$code"
}

# Recursive function with multiple exit points and side effects
recursive_function() {
    local level=$1
    local max_level=${2:-10}
    
    if (( level >= max_level )); then
        echo "Max recursion depth reached: $level"
        recursive_results[level]=$counter
        return $level
    fi
    
    # Create subshell with command substitution
    local sub_result=$((
        counter+=level
        echo $counter
    ))
    
    # Conditional background process
    if (( level % 2 == 0 )); then
        (
            sleep 0.$((level % 10))
            counter+=level
            echo "Background process at level $level: $counter"
            if (( level > 5 )); then
                kill -SIGUSR2 $$
            fi
        ) &
        background_pids+=($!)
    fi
    
    # Process substitution with pipe
    while read -r line; do
        echo "Process substitution line: $line"
        counter+=${#line}
    done < <(echo "Level $level processing" | tr ' ' '\n')
    
    # Recursive call in subshell
    (
        recursive_function $((level + 1)) $max_level
        recursive_results[level]=$counter
    )
    
    # Command substitution with background process
    local cmd_sub_result=$((
        sleep 0.0$((level % 5))
        echo "Command sub at level $level: $counter"
        if (( level % 3 == 0 )); then
            (
                sleep 0.1
                counter+=level
                echo "Nested background at level $level"
            ) &
            background_pids+=($!)
        fi
    ))
    
    echo "$cmd_sub_result"
    recursive_results[level]=$counter
    
    return $((level % 256))
}

# Function with complex redirections and file descriptor manipulations
redirection_madness() {
    local temp_file=$(mktemp)
    exec 3< <(echo "FD3 input")
    exec 4> >(tee "$temp_file" | grep -v "ignore" >&2)
    exec 5>&1
    
    {
        echo "Writing to FD4" >&4
        echo "Writing to stdout" >&5
        echo "Writing to stderr" >&2
        
        # Read from FD3
        read -r -u 3 fd3_line
        echo "Read from FD3: $fd3_line"
        
        # Pipe chain with subshells
        echo "Pipe chain test" | (
            tr 'a-z' 'A-Z' | (
                cut -d' ' -f1 | (
                    tee /dev/stderr | wc -c
                )
            )
        ) >&4
    }
    
    exec 3<&-
    exec 4>&-
    exec 5>&-
    
    cat "$temp_file"
    rm "$temp_file"
}

# Function that generates and executes code dynamically
execute_dynamically() {
    local depth=$1
    local generated_code
    
    generated_code=$(dynamic_code_generator $depth)
    echo "Executing dynamically generated code:"
    echo "$generated_code"
    eval "$generated_code"
}

# Main test execution
main_test() {
    echo "Starting ultimate profiler stress test"
    echo "Initial counter: $counter"
    
    # Execute dynamic code
    execute_dynamically 5
    
    # Run recursive function
    recursive_function 0 7
    
    # Complex redirections
    redirection_madness
    
    # Wait for background processes
    echo "Waiting for background processes: ${background_pids[*]}"
    for pid in "${background_pids[@]}"; do
        wait "$pid" 2>/dev/null
    done
    
    # Generate final report
    echo "Final counter value: $counter"
    echo "Recursive results:"
    for i in "${!recursive_results[@]}"; do
        echo "  Level $i: ${recursive_results[i]}"
    done
    echo "Dynamic array contents:"
    for key in "${!dynamic_array[@]}"; do
        echo "  $key: ${dynamic_array[$key]}"
    done
    
    # Final signal to self
    kill -SIGUSR1 $$
    
    echo "Test completed"
}

# Start the test in a subshell to add profiling complexity
(
    main_test
)
