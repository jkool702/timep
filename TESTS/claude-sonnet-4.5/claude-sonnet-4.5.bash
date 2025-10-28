#!/usr/bin/env bash

# TIMEP NIGHTMARE STRESS TEST
# Designed to break bash profilers through extreme edge cases
# Run with: timep ./timep_nightmare_stress_test.bash

set -euo pipefail

# ============================================================================
# SECTION 1: Trap Hell - Nested traps with signal interactions
# ============================================================================

trap_hell() {
    local depth="${1:-0}"
    
    # Set multiple traps that modify each other
    trap 'echo "EXIT $depth"; trap "echo NESTED_EXIT $depth" EXIT' EXIT
    trap 'echo "RETURN $depth"; trap "echo NESTED_RETURN $depth" RETURN' RETURN
    trap 'echo "DEBUG $depth"' DEBUG
    
    # Nested function calls with trap modifications
    if (( depth < 3 )); then
        ( trap_hell $((depth + 1)) ) &
        trap_hell_inner $((depth + 1))
    fi
    
    # Self-signaling during trap execution
    kill -USR1 $$ 2>/dev/null || :
}

trap_hell_inner() {
    trap 'trap - DEBUG; echo "Modified DEBUG $1"' DEBUG
    : & wait
    trap - DEBUG
}

# ============================================================================
# SECTION 2: Fork Bomb Lite - Rapid parallel subprocess creation
# ============================================================================

fork_cascade() {
    local n="${1:-5}"
    local depth="${2:-0}"
    
    if (( depth < 3 )); then
        for ((i=0; i<n; i++)); do
            {
                ( fork_cascade $((n-1)) $((depth+1)) ) &
                { fork_cascade $((n-2)) $((depth+1)); } &
            } &
        done
        wait
    fi
    
    # Process substitution chain
    cat <(echo "$depth-A" | tee >(cat >&2) >(cat >&2)) \
        <(echo "$depth-B" | tee >(cat >&2) >(cat >&2)) \
        >/dev/null
}

# ============================================================================
# SECTION 3: Eval Inception - Dynamic code generation
# ============================================================================

eval_nightmare() {
    local depth="${1:-0}"
    local max_depth=4
    
    if (( depth >= max_depth )); then
        echo "BASE $depth"
        return
    fi
    
    # Multi-level eval with command substitution
    local cmd="eval_nightmare \$((depth + 1))"
    
    # Each level adds eval + command sub + process sub
    eval "
        {
            result=\$(
                eval \"
                    <(echo '$cmd') 2>&1
                \" 2>&1
            )
            echo \"EVAL-$depth: \$result\"
        } &
    "
    
    # Eval with here-document
    eval "$(cat <<-'NESTED'
		for ((i=0; i<2; i++)); do
		    ( eval "echo NESTED-${depth}-\$i" ) &
		done
		wait
	NESTED
    )"
}

# ============================================================================
# SECTION 4: Pipeline Paradox - Complex pipeline interactions
# ============================================================================

pipeline_chaos() {
    # Pipelines with multiple backgrounds and process substitutions
    {
        echo "START" | tee >(sleep 0.01; cat >&2) | cat
    } | {
        while read -r line; do
            echo "$line" | tee >(cat) >(cat) >(cat) >/dev/null &
        done
        wait
    } | {
        cat | tee >(
            while read -r x; do
                ( echo "SUB1: $x" ) &
            done
            wait
        )
    } >/dev/null
    
    # Pipeline where components exit in reverse order
    : | : | { sleep 0.1; :; } | : | { sleep 0.05; :; } | : &
    wait
}

# ============================================================================
# SECTION 5: Coprocess Madness - Multiple interacting coprocesses
# ============================================================================

coprocess_tangle() {
    # Multiple named coprocesses with cross-communication
    coproc COPROC1 { 
        while read -r line; do
            echo "C1: $line"
            sleep 0.01
        done
    }
    
    coproc COPROC2 {
        while read -r line; do
            echo "C2: $line" >&${COPROC1[1]}
            sleep 0.01
        done
    }
    
    # Send data through coprocess chain
    for i in {1..3}; do
        echo "DATA $i" >&${COPROC2[1]}
        read -r -t 0.1 -u ${COPROC1[0]} result || :
    done
    
    # Close coprocesses
    exec {COPROC1[0]}>&- {COPROC1[1]}>&-
    exec {COPROC2[0]}>&- {COPROC2[1]}>&-
    wait
}

# ============================================================================
# SECTION 6: Subshell Spiral - Deeply nested subshells with mixed contexts
# ============================================================================

subshell_spiral() {
    (
        {
            (
                {
                    (
                        echo "DEEP" | {
                            cat | (
                                tee >(cat >&2) | {
                                    cat >/dev/null
                                } &
                            )
                        } &
                    ) &
                } &
                wait
            ) &
        } &
        wait
    ) &
    
    # Subshell with trap and background jobs
    (
        trap 'echo "SUB_EXIT"' EXIT
        for i in {1..3}; do
            ( sleep 0.01; echo "BG $i" ) &
        done
        wait
    ) &
    
    wait
}

# ============================================================================
# SECTION 7: Arithmetic Avalanche - Rapid arithmetic in various contexts
# ============================================================================

arithmetic_storm() {
    # Arithmetic in different execution contexts
    for ((i=0; i<5; i++)); do
        (( j = i * 2 ))
        
        # In subshell
        ( (( k = j + 1 )) ) &
        
        # In command substitution
        result=$(( j * 3 ))
        
        # In pipeline
        echo $((i)) | { read -r n; (( n++ )); echo $n; } >/dev/null &
        
        # With eval
        eval "(( m = $i + $j ))"
    done
    wait
}

# ============================================================================
# SECTION 8: Here-Doc Horror - Complex here-documents with substitution
# ============================================================================

heredoc_nightmare() {
    # Here-doc with command substitution and process substitution
    cat <<-EOF | tee >(cat >&2) >/dev/null &
		Line 1: $(echo "CMD_SUB")
		Line 2: $( (echo "NESTED") )
		Line 3: $({ echo "BRACED"; })
	EOF
    
    # Here-doc in background with pipeline
    {
        cat <<-'LITERAL' | while read -r line; do
			LITERAL_LINE
		LITERAL
            ( echo "PROCESSED: $line" ) &
        done
        wait
    } &
    
    wait
}

# ============================================================================
# SECTION 9: Function Recursion with Backgrounds
# ============================================================================

recursive_bg() {
    local n="${1:-3}"
    
    if (( n <= 0 )); then
        return
    fi
    
    # Recursive call in various contexts
    ( recursive_bg $((n-1)) ) &
    { recursive_bg $((n-1)); } &
    recursive_bg $((n-1))
    
    wait 2>/dev/null || :
}

# ============================================================================
# SECTION 10: Signal Storm - Rapid signal generation and handling
# ============================================================================

signal_storm() {
    trap 'echo "USR1_HANDLER"; trap "echo USR1_NESTED" USR1' USR1
    trap 'echo "USR2_HANDLER"' USR2
    
    # Background job that signals itself
    {
        for i in {1..3}; do
            kill -USR1 $$
            sleep 0.01
            kill -USR2 $$
        done
    } &
    
    # Wait for signals to process
    sleep 0.1
    
    wait 2>/dev/null || :
}

# ============================================================================
# SECTION 11: Array Manipulation Chaos
# ============================================================================

array_chaos() {
    local -a arr=()
    
    # Parallel array population
    for i in {1..5}; do
        {
            arr[$i]="VAL_$i"
            echo "${arr[@]}"
        } &
    done
    
    wait
    
    # Array in command substitution with process substitution
    result=$(
        arr2=($(cat <(echo {1..5})))
        echo "${arr2[@]}"
    )
}

# ============================================================================
# SECTION 12: Job Control Juggling
# ============================================================================

job_control_chaos() {
    # Create multiple jobs
    sleep 0.1 &
    local pid1=$!
    
    { sleep 0.1; } &
    local pid2=$!
    
    ( sleep 0.1 ) &
    local pid3=$!
    
    # Wait in different orders and combinations
    wait $pid2
    wait -n
    wait $pid1 $pid3 2>/dev/null || :
}

# ============================================================================
# SECTION 13: Redirection Rodeo
# ============================================================================

redirection_chaos() {
    # Multiple redirections with file descriptors
    exec 3>&1 4>&2
    
    {
        echo "FD3" >&3
        echo "FD4" >&4
        
        # Nested redirections
        {
            cat <<< "DATA" | tee >(cat >&3) >(cat >&4) >/dev/null
        } 3>&1 4>&2
        
    } &
    
    wait
    
    exec 3>&- 4>&-
}

# ============================================================================
# SECTION 14: The Kitchen Sink - Everything at once
# ============================================================================

kitchen_sink() {
    trap 'echo "SINK_EXIT"' EXIT
    
    # Combine multiple nightmare scenarios
    {
        eval "$(
            cat <<-'EVAL_HEREDOC'
				{
				    for i in {1..2}; do
				        ( recursive_bg 2 ) &
				    done
				} | tee >(cat >&2) >/dev/null &
			EVAL_HEREDOC
        )"
        
        pipeline_chaos &
        
        {
            coproc SINK { cat; }
            echo "SINK_DATA" >&${SINK[1]}
            exec {SINK[0]}>&- {SINK[1]}>&-
        } &
        
        wait
    } &
    
    {
        subshell_spiral &
        fork_cascade 3 0 &
        wait
    } &
    
    wait
}

# ============================================================================
# MAIN EXECUTION - Run all nightmare scenarios
# ============================================================================

main() {
    echo "=== TIMEP NIGHTMARE STRESS TEST ==="
    echo "Starting comprehensive profiler stress test..."
    echo
    
    # Set up global trap
    trap 'echo "GLOBAL_USR1"' USR1
    
    echo "1. Trap Hell..."
    trap_hell 0 2>/dev/null || :
    
    echo "2. Fork Cascade..."
    fork_cascade 3 0
    
    echo "3. Eval Nightmare..."
    eval_nightmare 0
    
    echo "4. Pipeline Chaos..."
    pipeline_chaos
    
    echo "5. Coprocess Tangle..."
    coprocess_tangle 2>/dev/null || :
    
    echo "6. Subshell Spiral..."
    subshell_spiral
    
    echo "7. Arithmetic Storm..."
    arithmetic_storm
    
    echo "8. Here-Doc Horror..."
    heredoc_nightmare
    
    echo "9. Recursive Background..."
    recursive_bg 3
    
    echo "10. Signal Storm..."
    signal_storm 2>/dev/null || :
    
    echo "11. Array Chaos..."
    array_chaos
    
    echo "12. Job Control Chaos..."
    job_control_chaos
    
    echo "13. Redirection Chaos..."
    redirection_chaos
    
    echo "14. Kitchen Sink..."
    kitchen_sink
    
    echo
    echo "=== STRESS TEST COMPLETE ==="
    echo "If timep profiled this successfully, it's truly exceptional!"
}

# Trap for the main function
trap 'echo "MAIN_EXIT"' EXIT

# Run it!
main "$@"