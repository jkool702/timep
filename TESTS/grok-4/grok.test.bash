#!/usr/bin/env bash

# Ultimate Bash Profiler Torture Test
# This script is designed to be a "final boss" level challenge for bash profilers.
# It incorporates deep nesting of subshells, background processes, forks, traps, signals,
# evals, sources, coprocs, recursions, job control, complex parameter expansions,
# arithmetic, conditionals, loops, arrays, associative arrays, process substitutions,
# redirections, here docs/strings, and intertwined concurrency with signals.
#
# Key challenges:
# - Deeply nested subshells (up to 10+ levels) with mixed foreground/background execution.
# - Recursive functions that spawn subshells and background jobs.
# - Traps on multiple signals (EXIT, INT, TERM, USR1) that themselves spawn processes.
# - Coprocs for bidirectional communication, nested within subshells.
# - Eval'd code that dynamically generates and executes nested structures.
# - Sourcing dynamic scripts generated on-the-fly.
# - Job control with wait, kill, bg, fg in nested contexts.
# - Complex pipes with tees, process subs, and redirections.
# - Arrays and assoc arrays manipulated in nested loops with parameter expansions.
# - Arithmetic in loops with conditional breaks/continues.
# - Here documents and strings feeding into nested commands.
# - Signal sending between processes to trigger traps mid-execution.
# - Background forks that interact with parent via files/pipes/signals.
#
# To run: Save as torture.sh, chmod +x, then ./torture.sh
# Expected behavior: It should run for ~10-20 seconds, printing various messages,
# and exit cleanly with "Torture test completed successfully." if all goes well.
# Any profiler discrepancies in timing/call stacks/subshell tracking will likely show here.

set -u -o pipefail

# Global arrays for data passing
declare -a global_array=(1 2 3 4 5)
declare -A global_assoc=([key1]="value1" [key2]="value2")

# Traps for signals - these will spawn their own subshells and backgrounds
trap 'echo "EXIT trap triggered"; ( ( sleep 1 & ) & wait )' EXIT
trap 'echo "INT trap"; kill -USR1 $$ & ' INT
trap 'echo "TERM trap"; ( eval "echo eval in trap" )' TERM
trap 'echo "USR1 trap"; ( ( echo "Nested in USR1" & ) )' USR1

# Recursive function with nesting and backgrounds
recursive_func() {
    local depth=$1
    if (( depth > 10 )); then
        return
    fi

    echo "Recursion depth: $depth"

    # Nested subshell with background
    (
        # Arithmetic loop with conditional
        for ((i=0; i<5; i++)); do
            (( (i % 2 == 0) )) && continue
            echo "Loop i=$i at depth $depth"
            # Parameter expansion
            local expanded="${global_array[i]:-default}"
            echo "Expanded: $expanded"
        done

        # Assoc array manipulation
        global_assoc["key$depth"]="$depth"

        # Spawn background with pipe
        ( seq 1 3 | while read num; do echo "Bg pipe: $num"; done ) &

        # Recursive call in subshell
        ( recursive_func $((depth + 1)) ) &

        # Wait with job control
        wait %1 || echo "Wait failed"
    ) &

    # Coproc inside function
    coproc COP { echo "Coproc at depth $depth"; sleep 1; }
    echo "${COP[0]}" >&"${COP[1]}"
    read -u "${COP[0]}" cop_out
    echo "Coproc out: $cop_out"

    # Eval dynamic code
    eval "echo 'Eval depth $depth'; ( sleep 0.5 & )"

    # Signal self to trigger trap
    if (( depth % 3 == 0 )); then
        kill -USR1 $$
    fi
}

# Dynamic script sourcing
dynamic_script() {
    cat << 'EOF' > /tmp/dynamic.sh
#!/bin/bash
echo "Sourced dynamic script"
( ( echo "Nested in sourced" & ) )
declare -a local_arr=(a b c)
for val in "${local_arr[@]}"; do
    echo "Sourced loop: $val"
done
EOF
    chmod +x /tmp/dynamic.sh
    source /tmp/dynamic.sh
    rm -f /tmp/dynamic.sh
}

# Main execution starts here
main() {
    echo "Starting torture test..."

    # Deep nested subshells with mixes
    (
        (
            (
                # Innermost: process sub, pipe, redir
                echo "Deep nest level 3"
                tee /tmp/log.txt < <(seq 1 5 | grep 3) > /dev/null
                # Here string
                cat <<< "Here string in nest"
                # Here doc
                cat << HDOC
Here doc in nest
HDOC

                # Background fork with signal
                ( sleep 2; kill -INT $$ ) &
            ) &

            echo "Nest level 2"
            # Case conditional
            case $RANDOM in
                *0) echo "Case 0" ;;
                *) echo "Case other" ;;
            esac

            # Select loop
            select opt in a b quit; do
                if [[ $opt == quit ]]; then break; fi
                echo "Selected $opt"
            done <<< "a\nb\nquit\n"

            wait
        ) &

        echo "Nest level 1"
        # While loop with until nested
        i=0
        while (( i < 3 )); do
            ((i++))
            until (( i % 2 == 0 )); do
                echo "Until break"
                break
            done
        done

        # Job control: bg/fg
        sleep 10 &
        pid=$!
        kill -STOP $pid
        bg %1
        fg %1

        wait
    ) &

    # Call recursive func
    recursive_func 1

    # Dynamic source
    dynamic_script

    # Coproc with pipe and redir
    coproc { while read line; do echo "Coproc echo: $line"; done; }
    exec 3>&"${COPROC[1]}"
    echo "Input to coproc" >&3
    read -u "${COPROC[0]}" cop_response
    echo "Coproc response: $cop_response"
    exec 3>&-

    # Eval with nested structures
    eval '
    echo "Outer eval"
    (
        echo "Inner eval subshell"
        ( echo "Deeper eval bg" & )
    )
    '

    # Background chain with signals
    ( sleep 1; echo "Bg 1"; kill -TERM $$ ) &
    ( sleep 2; echo "Bg 2"; kill -USR1 $$ ) &

    # Wait for all backgrounds
    wait $(jobs -p) || true

    # Clean up
    trap - EXIT INT TERM USR1

    echo "Torture test completed successfully."
}

main "$@"
wait
