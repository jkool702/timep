#!/usr/bin/env bash

# The Impossible Bash Profiler Test - Fixed Variable Substitution
# This script combines every profiling challenge without named pipes

set -m
shopt -s lastpipe extglob

# Global state that will be modified from every possible context
declare -i global_counter=0
declare -A shared_state
declare -a process_registry=()
declare -A function_registry

# Complex multi-signal handling with state modification
trap_handler() {
    local signal=$1
    case $signal in
        USR1)
            ((global_counter += 5))
            shared_state[last_signal]="USR1"
            echo "USR1: $global_counter at $$ $(date +%N)" >&2
            ;;
        USR2)
            ((global_counter += 10))
            shared_state[last_signal]="USR2"
            echo "USR2: $global_counter at $$ $(date +%N)" >&2
            ;;
        HUP)
            # Dynamic function redefinition on signal
            eval "$(declare -f recursive_chaos | sed 's/recursive_chaos/recursive_chaos_v2/')"
            shared_state[function_redefined]=1
            ;;
        ALRM)
            # Spawn a new background process that modifies state
            (
                sleep 0.001
                shared_state[alarm_triggered]=$global_counter
                kill -USR1 $$
            ) &
            process_registry+=($!)
            ;;
    esac
}

trap 'trap_handler USR1' USR1
trap 'trap_handler USR2' USR2
trap 'trap_handler HUP' HUP
trap 'trap_handler ALRM' ALRM

# Function that dynamically generates and executes complex code
metaprogramming_chaos() {
    local depth=$1
    local code=""
    
    if (( depth > 0 )); then
        # Generate code that creates a pipeline of subshells
        # Fixed: Use actual values instead of variable names
        code+="echo \"Depth $depth start\" | "
        code+="("
        code+="  ((global_counter += $((depth * 10))))"
        code+="  shared_state[depth_$depth]=\$global_counter"
        code+="  echo \"Processed depth $depth: \$global_counter\""
        code+=") | "
        code+="("
        code+="  tr a-z A-Z | "
        code+="  grep -o '[0-9]*' | "
        code+="  awk '{sum += \$1} END {print \"Sum: \" sum}'"
        code+=") | "
        code+="tee /dev/stderr | "
        code+="wc -c; "
        
        # Recursive call with dynamic function name
        local next_func="metaprogramming_chaos_$((depth - 1))"
        code+="$next_func $((depth - 1)); "
        
        # Add a background process that sends signals
        code+="("
        code+="  sleep 0.00$depth"
        code+="  kill -USR1 $$"
        code+=") & "
        code+="process_registry+=(\$!); "
        
        # Define the next function dynamically
        eval "$next_func() { metaprogramming_chaos $((depth - 1)); }"
        function_registry[$next_func]=1
    else
        # Base case with complex pipeline
        code+="echo \"Base case\" | "
        code+="("
        code+="  cat -n | "
        code+="  sort -nr | "
        code+="  head -1 | "
        code+="  cut -f1"
        code+=") | "
        code+="xargs -I {} sh -c 'echo \"Final: {}\"; ((global_counter += {}))'"
    fi
    
    echo "$code"
}

# Recursive function with multiple execution paths and side effects
recursive_chaos() {
    local level=$1
    local max_level=${2:-8}
    
    if (( level >= max_level )); then
        # Create a complex pipeline with multiple subshells
        echo "Max level $level" | (
            tr ' ' '_' | (
                cut -d'_' -f3 | (
                    cat | (
                        wc -c | (
                            awk '{print $1}' | (
                                xargs -I {} sh -c '((global_counter += {}))'
                            )
                        )
                    )
                )
            )
        )
        return $level
    fi
    
    # Multiple concurrent operations
    {
        # Operation 1: Command substitution with subshell
        local result1=$(
            ((global_counter += level))
            echo $global_counter | (
                tr -d '\n' | (
                    od -t u1 | (
                        awk 'NR==2 {print $2}' | (
                            xargs -I {} sh -c 'echo "Op1: {}"'
                        )
                    )
                )
            )
        )
        
        # Operation 2: Process substitution with pipe
        while IFS= read -r line; do
            ((global_counter += ${#line}))
            echo "Op2: $line" >&2
        done < <(echo "Level $level processing" | fold -w1)
        
        # Operation 3: Background process that modifies state
        (
            sleep 0.00$((level % 5))
            shared_state[bg_level_$level]=$global_counter
            if (( level % 3 == 0 )); then
                kill -ALRM $$
            fi
        ) &
        process_registry+=($!)
        
        # Operation 4: Use process substitution instead of named pipes
        while IFS= read -r line; do
            echo "Processing: $line"
            ((global_counter += ${#line}))
        done < <(echo "LEVEL:$level:DATA" | tr ':' ' ')
        
        # Operation 5: Dynamic code execution
        local dynamic_code=$(metaprogramming_chaos $((level % 3)))
        eval "$dynamic_code"
        
        # Recursive call with different context
        (
            recursive_chaos $((level + 1)) $max_level
            shared_state[recursive_level_$level]=$global_counter
        )
        
        # Complex pipeline with multiple stages
        echo "Pipeline test $level" | (
            sed 's/test/TEST/' | (
                grep -o '[A-Z]*' | (
                    sort | uniq -c | (
                        sort -nr | (
                            head -3 | (
                                awk '{print $2}' | (
                                    paste -sd ',' - | (
                                        xargs -I {} sh -c 'echo "Pipeline: {}"'
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    }
    
    return $((level * 7))
}

# Function that creates a web of interconnected processes using process substitution
process_web() {
    local nodes=$1
    local connections=$2
    
    # Create a message dispatcher using process substitution
    exec 3< <(
        for ((i=0; i<connections; i++)); do
            echo "NODE:$((RANDOM % nodes)):Initial message $i"
        done
    )
    
    # Create node processes
    for ((i=0; i<nodes; i++)); do
        (
            # Each node processes some messages
            for ((j=0; j<connections/nodes+1; j++)); do
                if read -u 3 msg; then
                    if [[ "$msg" =~ ^NODE:([0-9]+):(.*) ]]; then
                        local target="${BASH_REMATCH[1]}"
                        local content="${BASH_REMATCH[2]}"
                        
                        if (( target == i )); then
                            echo "Node $i received: $content"
                            ((global_counter += i))
                            shared_state[node_$i]=$global_counter
                            
                            # Random signal sending
                            if (( RANDOM % 5 == 0 )); then
                                kill -USR1 $$
                            fi
                        fi
                    fi
                fi
            done
        ) &
        process_registry+=($!)
    done
    
    # Close the file descriptor when done
    exec 3<&-
}

# Function with extreme file descriptor manipulation
fd_chaos() {
    # Create multiple file descriptors
    exec 3< <(seq 10)
    exec 4> >(while read -r line; do echo "FD4: $line"; done)
    exec 5> >(while read -r line; do echo "FD5: $line" | tee /dev/stderr; done)
    exec 6< <(echo "Test data" | fold -w1)
    
    # Complex redirection dance
    {
        # Read from FD3, write to FD4 and FD5
        while read -u 3 num; do
            echo "Processing $num" >&4
            echo "Double $((num * 2))" >&5
            ((global_counter += num))
        done
        
        # Read from FD6, process, write to multiple places
        while read -u 6 msg; do
            echo "Received: $msg" | tee /dev/stderr >&4
            shared_state[fd_msg_$((RANDOM % 5))]=$msg
        done
    } 3<&3 4>&4 5>&5 6<&6
    
    # Close all FDs
    exec 3<&- 4>&- 5>&- 6<&-
}

# Function that creates extreme pipeline complexity
pipeline_chaos() {
    # Create a deeply nested pipeline with multiple subshells
    echo "Starting pipeline chaos" | (
        tr ' ' '_' | (
            cut -d'_' -f1 | (
                tee /dev/stderr | (
                    cat -n | (
                        sort -nr | (
                            head -5 | (
                                cut -f2 | (
                                    tr '\n' ' ' | (
                                        xargs -n1 | (
                                            shuf | (
                                                head -3 | (
                                                    paste -sd ',' - | (
                                                        tr ',' '\n' | (
                                                            sort -u | (
                                                                wc -l | (
                                                                    xargs -I {} sh -c '((global_counter += {}))'
                                                                )
                                                            )
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
    
    # Create a pipeline with background processes
    {
        echo "Background pipeline test" | (
            tr a-z A-Z | (
                grep -o '[A-Z]' | (
                    sort | (
                        uniq -c | (
                            sort -nr | (
                                head -5 | (
                                    awk '{print $2}' | (
                                        paste -sd '' - | (
                                            fold -w1 | (
                                                shuf | (
                                                    head -10 | (
                                                        tr '\n' ' ' | (
                                                            xargs -I {} sh -c 'echo "Pipeline: {}"'
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        ) &
        process_registry+=($!)
        
        # Another background pipeline
        echo "Second pipeline" | (
            rev | (
                tac | (
                    tr 'a-z' 'A-Z' | (
                        fold -w2 | (
                            sort -R | (
                                head -5 | (
                                    paste -sd '-' - | (
                                        tr '-' ' ' | (
                                            xargs -n2 | (
                                                awk '{print $1}' | (
                                                    sort -u | (
                                                        wc -l | (
                                                            xargs -I {} sh -c '((global_counter += {}))'
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        ) &
        process_registry+=($!)
    }
}

# Main test execution
main_test() {
    echo "Starting IMPOSSIBLE profiler test"
    echo "PID: $$"
    echo "Initial counter: $global_counter"
    
    # Start the process web
    process_web 5 10
    
    # Start recursive chaos
    recursive_chaos 0 5
    
    # File descriptor chaos
    fd_chaos
    
    # Pipeline chaos
    pipeline_chaos
    
    # Dynamic function execution
    local chaos_code=$(metaprogramming_chaos 4)
    echo "Executing chaos code:"
    echo "$chaos_code"
    eval "$chaos_code"
    
    # Send multiple signals to create chaos
    for i in {1..5}; do
        kill -USR1 $$
        sleep 0.001
        kill -USR2 $$
        sleep 0.001
    done
    
    # Send HUP to trigger function redefinition
    kill -HUP $$
    
    # Call the potentially redefined function
    recursive_chaos 5 7
    
    # More signal chaos
    for i in {1..3}; do
        kill -ALRM $$
        sleep 0.002
    done
    
    # Wait for some background processes
    echo "Waiting for ${#process_registry[@]} processes..."
    for pid in "${process_registry[@]}"; do
        wait "$pid" 2>/dev/null
    done
    
    # Final state report
    echo "Final counter: $global_counter"
    echo "Shared state keys: ${!shared_state[*]}"
    for key in "${!shared_state[@]}"; do
        echo "  $key: ${shared_state[$key]}"
    done
    echo "Function registry: ${!function_registry[*]}"
    
    echo "Test completed"
}

# Execute in a subshell for maximum complexity
(
    main_test
    wait
    sleep 2
)
