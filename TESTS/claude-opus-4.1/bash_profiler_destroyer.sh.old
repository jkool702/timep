#!/bin/bash

# The Bash Profiler Destroyer
# This test is designed to break profilers through maximum complexity
# Warning: This will stress your system - monitor resource usage

set -o pipefail
trap 'echo "TRAP: ERR at line $LINENO" >&2' ERR

# Setup cleanup trap chain with nested traps
cleanup_stack=()
push_cleanup() { cleanup_stack+=("$1"); }
pop_cleanup() { unset cleanup_stack[-1]; }
execute_cleanups() { 
    for ((i=${#cleanup_stack[@]}-1; i>=0; i--)); do
        eval "${cleanup_stack[i]}" 2>/dev/null || true
    done
}
trap execute_cleanups EXIT

# Complex signal handling with race conditions
declare -A signal_counts
for sig in HUP INT QUIT TERM USR1 USR2; do
    signal_counts[$sig]=0
    trap 'signal_counts['$sig']=$((signal_counts['$sig']+1)); kill -'$sig' $$ 2>/dev/null || true' $sig
done

# Function with deep recursion and dynamic function generation
generate_recursive_hell() {
    local depth=${1:-0}
    local max_depth=50
    
    if [ $depth -lt $max_depth ]; then
        # Dynamic function creation
        eval "nested_func_$depth() {
            local my_depth=$depth
            { { { echo \"Depth: \$my_depth\" >&2; } 2>&1 | sed 's/^/  /' >&2; } & } &
            wait \$! 2>/dev/null || true
            generate_recursive_hell \$((depth + 1))
        }"
        
        # Call the dynamically created function
        "nested_func_$depth" &
        local pid=$!
        
        # Random signal to background process
        (sleep 0.001; kill -USR1 $pid 2>/dev/null || true) &
        
        wait $pid 2>/dev/null || true
    fi
}

# Coproc madness with multiple simultaneous coprocs (pre-5.1 style)
start_coproc_hell() {
    exec 3>&1 4>&2
    
    # First coproc
    mkfifo /tmp/bashtest_fifo1_$$ /tmp/bashtest_fifo2_$$ 2>/dev/null || true
    push_cleanup "rm -f /tmp/bashtest_fifo*_$$"
    
    {
        while IFS= read -r line; do
            echo "COPROC1: $line" | tee /dev/stderr | tr 'a-z' 'A-Z'
        done
    } < /tmp/bashtest_fifo1_$$ > /tmp/bashtest_fifo2_$$ &
    coproc1_pid=$!
    
    # Second coproc via different method
    coproc COPROC2 {
        while true; do
            read -t 0.1 input 2>/dev/null || continue
            echo "${input^^}" 2>&1
        done
    }
    
    # Send data between coprocs
    echo "test message" > /tmp/bashtest_fifo1_$$
    cat /tmp/bashtest_fifo2_$$ &
    
    exec 3>&- 4>&-
}

# Process substitution nightmare with circular dependencies
process_substitution_hell() {
    local data="initial"
    
    # Nested process substitutions with feedback loops
    {
        diff <(
            while IFS= read -r line; do
                echo "$line" | tee >(
                    sed 's/.*/PROC1: &/' >&2
                ) | {
                    cat | while read -r x; do
                        echo "$x" | tee >(wc -l >&2) | {
                            awk '{print "AWK:", $0}' | tee >(grep -v '^$' >&2) &
                            wait $! 2>/dev/null || true
                        }
                    done
                }
            done < <(echo "$data")
        ) <(
            {
                echo "$data" | while IFS= read -r char; do
                    printf '%s\n' "$char" | tee >(
                        tr 'a-z' 'A-Z' | tee >(wc -c >&2) >&2
                    ) &
                    jobs -l >&2
                done
            } 2>&1 | sort | uniq
        ) 2>&1 | head -n 5 || true
    } &
    
    wait 2>/dev/null || true
}

# Subshell explosion with variable scoping madness
subshell_variable_hell() {
    local parent_var="PARENT"
    export EXPORT_VAR="EXPORTED"
    
    # Deep subshell nesting with variable modifications
    (
        parent_var="SUBSHELL1"
        (
            parent_var="SUBSHELL2"
            {
                parent_var="SUBSHELL3"
                (
                    parent_var="SUBSHELL4"
                    # Fork bomb protection - limited iteration
                    for i in {1..10}; do
                        (
                            echo "Iteration $i: $parent_var" >&2 &
                            (
                                sleep 0.001
                                echo "Nested $i: $parent_var" >&2
                            ) &
                        ) &
                    done
                    wait 2>/dev/null || true
                ) | while read -r line; do
                    echo "PIPE: $line" >&2 &
                done &
            } &
            wait 2>/dev/null || true
        ) &
        
        # Here-doc with command substitution in subshell
        cat <<-EOF &
			Subshell values:
			Parent: $parent_var
			Export: $EXPORT_VAR
			Command sub: $(echo "CMD: $parent_var" | sed 's/SUBSHELL/SUB/')
			Arithmetic: $((${#parent_var} * 2))
		EOF
        
        wait 2>/dev/null || true
    ) 2>&1 | sed 's/^/OUTER: /' &
    
    wait 2>/dev/null || true
}

# File descriptor gymnastics
fd_chaos() {
    exec 5>&1 6>&2 7</dev/null
    
    # Redirect stdout to stderr, stderr to stdout
    exec 1>&2 2>&5
    
    # Create a self-pipe
    exec 8> >(
        while IFS= read -r line; do
            echo "FD8: $line" >&6
        done
    )
    
    # Write to multiple FDs simultaneously
    {
        echo "Testing FD routing" >&5 &
        echo "Testing FD routing" >&6 &
        echo "Testing FD routing" >&8 &
    }
    
    # Restore and create new redirections
    exec 1>&5 2>&6 5>&- 6>&- 8>&-
    
    # Named pipe redirection chaos
    mkfifo /tmp/bashtest_pipe_$$ 2>/dev/null || true
    push_cleanup "rm -f /tmp/bashtest_pipe_$$"
    
    {
        exec 9<>/tmp/bashtest_pipe_$$
        echo "Named pipe test" >&9 &
        read -t 1 result <&9 || true
        echo "Read from pipe: $result" >&2
        exec 9<&- 9>&-
    } 2>/dev/null &
    
    wait 2>/dev/null || true
}

# Command substitution with nested background processes
command_substitution_hell() {
    local result
    
    result=$(
        {
            echo "Level 1" &
            echo "$(
                {
                    echo "Level 2" &
                    echo "$(
                        {
                            echo "Level 3" &
                            echo "$(
                                echo "Level 4" &
                                wait 2>/dev/null
                                echo "Level 4 done"
                            )" &
                            wait 2>/dev/null
                            echo "Level 3 done"
                        } &
                        wait 2>/dev/null
                    )" &
                    wait 2>/dev/null
                    echo "Level 2 done"
                } &
                wait 2>/dev/null
            )" &
            wait 2>/dev/null
            echo "Level 1 done"
        } 2>&1
    )
    
    echo "Command substitution result: $result" >&2
}

# Array operations with indirect references and namerefs
array_madness() {
    local -a array1=(a b c d e)
    local -A array2=([key1]="val1" [key2]="val2")
    local -n nameref=array1
    
    # Indirect array access
    local varname="array1"
    eval "local -a indirect=(\"\${${varname}[@]}\")"
    
    # Modify through nameref while iterating
    for i in "${!nameref[@]}"; do
        {
            nameref[$i]="${nameref[$i]}_modified" &
            local elem="${nameref[$i]}"
            echo "Processing: $elem" >&2 &
        } &
    done
    
    wait 2>/dev/null || true
    
    # Associative array with command substitution keys
    local -A dynamic_array
    for key in $(echo "key1 key2 key3" | tr ' ' '\n' | sort -R); do
        dynamic_array["$(echo "$key" | md5sum | cut -d' ' -f1)"]="$(
            echo "Value for $key" | base64 &
            wait $!
        )" &
    done
    
    wait 2>/dev/null || true
}

# Background job control chaos
job_control_nightmare() {
    # Start multiple background job groups
    for i in {1..5}; do
        {
            sleep 0.1 &
            local sleep_pid=$!
            
            # Create a job that monitors another job
            {
                while kill -0 $sleep_pid 2>/dev/null; do
                    jobs -l | grep -q $sleep_pid && echo "Job $i still running" >&2
                    sleep 0.01
                done
                echo "Job $i completed" >&2
            } &
            
            # Suspend and resume randomly
            (
                sleep 0.05
                kill -STOP $sleep_pid 2>/dev/null || true
                sleep 0.01
                kill -CONT $sleep_pid 2>/dev/null || true
            ) &
        } &
    done
    
    # Wait with timeout in a subshell
    (
        sleep 0.5
        jobs -p | xargs -r kill 2>/dev/null || true
    ) &
    
    wait 2>/dev/null || true
}

# Eval inception with nested evaluations
eval_hell() {
    local code='echo "Level 1"'
    
    for i in {2..5}; do
        code="eval 'echo \"Level $i\" >&2; $code'"
    done
    
    # Execute the nested eval with background processes
    eval "$code & wait \$! 2>/dev/null" &
    
    # Dynamic code generation and execution
    {
        local dynamic_code=""
        for j in {1..3}; do
            dynamic_code+="{ echo 'Dynamic $j' >&2 & }; "
        done
        eval "$dynamic_code wait 2>/dev/null" &
    } &
    
    wait 2>/dev/null || true
}

# Pipe chain with tee, process substitution, and background processes
pipe_chaos() {
    seq 1 10 | \
    tee >(
        while read -r n; do
            echo "Branch1: $n" >&2 &
        done
    ) >(
        while read -r n; do
            echo "Branch2: $n" >&2 &
        done
    ) | \
    while read -r n; do
        {
            echo "Main: $n" | tee >(
                sed 's/Main/Tee1/' >&2 &
            ) >(
                sed 's/Main/Tee2/' >&2 &
            ) >&2
        } &
    done &
    
    wait 2>/dev/null || true
}

# The main event - combine everything in a glorious mess
main() {
    echo "Starting the Bash Profiler Destroyer..." >&2
    
    # Start everything simultaneously for maximum chaos
    {
        generate_recursive_hell 0 &
        local recursive_pid=$!
        
        start_coproc_hell &
        local coproc_pid=$!
        
        process_substitution_hell &
        local procsub_pid=$!
        
        subshell_variable_hell &
        local subshell_pid=$!
        
        fd_chaos &
        local fd_pid=$!
        
        command_substitution_hell &
        local cmdsub_pid=$!
        
        array_madness &
        local array_pid=$!
        
        job_control_nightmare &
        local job_pid=$!
        
        eval_hell &
        local eval_pid=$!
        
        pipe_chaos &
        local pipe_pid=$!
        
        # Monitor all PIDs while adding more chaos
        while true; do
            local running=0
            for pid in $recursive_pid $coproc_pid $procsub_pid $subshell_pid \
                      $fd_pid $cmdsub_pid $array_pid $job_pid $eval_pid $pipe_pid; do
                if kill -0 $pid 2>/dev/null; then
                    ((running++))
                    # Send random signals
                    [ $((RANDOM % 10)) -eq 0 ] && kill -USR1 $pid 2>/dev/null || true
                fi
            done
            
            [ $running -eq 0 ] && break
            sleep 0.01
        done
    } 2>&1 | \
    {
        # Final pipeline stage with more complexity
        while IFS= read -r line; do
            echo "$line" | {
                tee >(grep -v '^$' >/dev/null) >(wc -l >/dev/null) | \
                sed 's/^/FINAL: /' &
            }
        done
        wait 2>/dev/null || true
    } &
    
    # Wait for everything with a timeout
    local main_pid=$!
    {
        sleep 5
        kill -TERM $main_pid 2>/dev/null || true
    } &
    local timeout_pid=$!
    
    wait $main_pid 2>/dev/null || true
    kill $timeout_pid 2>/dev/null || true
    
    echo "Bash Profiler Destroyer completed. Check if your profiler survived!" >&2
}

# HERE BE DRAGONS: Execute the chaos
main "$@"

# Final cleanup happens via trap