#!/usr/bin/env bash
# A ridiculously challenging script to stress-test a bash profiler (timep).
#
# Challenges Presented:
# 1. Directly unsetting the DEBUG trap.
# 2. Massive overhead from millions of tiny, fast commands.
# 3. Complex command structures: pipelines, process substitution, subshells.
# 4. Concurrency hell: spawning, waiting, disowning hundreds of processes.
# 5. Dynamic code execution with `eval` and `source`.
# 6. Signal handling and self-modification during execution.
# 7. Obscuring commands with aliases and built-ins.
# 8. Extreme parameter expansion and variable indirection.

set -eEuo pipefail # Fail fast, be strict. This itself can be a challenge.

# --- Challenge 1: Direct Trap Subversion ---
# A naive profiler might set a trap and just assume it sticks.
# We test if the profiler can handle its primary mechanism being disabled.
echo "--- Stage 1: Trap Subversion ---"
# Try to remove any DEBUG trap that might have been set by the profiler's loader.
# A robust profiler would need to defend against this, perhaps by re-setting it
# after every command or using a more resilient mechanism.
trap - DEBUG
echo "INFO: Attempted to disable DEBUG trap. Let's see if the profiler notices."
echo "INFO: A simple command."
echo "INFO: Another command."
sleep 0.1


# --- Challenge 2: Overload and Obfuscation ---
# Millions of iterations with built-ins, external commands, and subshells.
# The profiler's overhead will likely dwarf the script's actual runtime.
# The commands are also designed to be tricky to parse and log.
echo "--- Stage 2: Overload & Obfuscation ---"
echo "INFO: Starting 100,000 iterations of mixed, fast commands..."
for i in {1..100000}; do
    # Mix of built-in, external, subshell, pipeline, and parameter expansion
    : $((i * 2)) & # Backgrounded null command with arithmetic
    (echo ${i} > /dev/null) | true # Pipeline with a subshell
    /bin/true $(seq 1 2) # External command with command substitution
    wait # Wait for the backgrounded ':' command
done
echo "INFO: Overload stage complete."


# --- Challenge 3: Concurrency Hell ---
# This section is designed to confuse a profiler's process tracking.
# It uses PIDs, waits for specific jobs, waits for all jobs, and uses disown.
echo "--- Stage 3: Concurrency Hell ---"

# A function that spawns its own background processes
spawner() {
    local name=$1
    local count=$2
    echo "INFO: Spawner '$name' starting."
    for ((j=0; j<count; j++)); do
        # Use process substitution, which creates named pipes and background processes
        paste <(seq 1 10) <(seq 11 20) > /dev/null &
        # A simple background job
        (sleep 0.01; echo "INFO: Spawner '$name' job $j done") &
    done
    echo "INFO: Spawner '$name' finished launching jobs."
}

# Launch multiple spawners in the background
pids=()
spawner "Alpha" 5 &
pids+=($!)
spawner "Beta" 5 &
pids+=($!)
spawner "Gamma" 5 &
pids+=($!)

# A job that will be disowned
(sleep 0.5; echo "INFO: Disowned job finished.") &
local disowned_pid=$!
disown # Detach the last backgrounded job from the shell's job table

# Now, wait in confusing ways
echo "INFO: Waiting for specific spawner PIDs..."
for pid in "${pids[@]}"; do
    wait "$pid"
done

echo "INFO: Waiting for ALL remaining jobs (this should be fast)..."
wait # Waits for all known jobs, but not the disowned one.

echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."
# This will cause an error because `wait` can't find the job. A good profiler
# should handle this 'wait' failure gracefully without crashing.
wait "$disowned_pid" || echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

echo "INFO: Concurrency stage complete."


# --- Challenge 4: Dynamic Execution and Aliases ---
# `eval` is hard to profile because the real command is inside a string.
# `source` (or `.`) tests if the profiler can track execution across file boundaries.
# Aliases test if the profiler expands them to the real command.
echo "--- Stage 4: Dynamic Execution & Aliases ---"

# Create a temporary script to be sourced
temp_script=$(mktemp)
cat << 'EOF' > "$temp_script"
# This is the sourced script. A profiler needs to know commands are from here.
sourced_func() {
    echo "INFO: Inside a function from a sourced file."
    # And that function has a pipeline
    seq 1 5 | rev | cat
}
sourced_func
EOF

# Define an alias
alias complex_alias='echo "This is an alias" | tr a-z A-Z'

# Use eval with a tricky string
eval 'echo "Eval is running a command with '\''single quotes'\'' and \"double quotes\""'

# Use the alias
complex_alias

# Source the temporary script
source "$temp_script"
rm -f "$temp_script"

echo "INFO: Dynamic execution stage complete."


# --- Challenge 5: Signals and Self-Modification ---
# A long-running command that is interrupted by a signal. The signal handler
# modifies the script's state. This tests the profiler's ability to handle
# asynchronous events and changes to the execution environment.
echo "--- Stage 5: Signals and Self-Modification ---"

# Global variable to be modified by the signal handler
INTERRUPT_COUNT=0

# The signal handler
handle_sigusr1() {
    echo "INFO: Caught SIGUSR1! Modifying state."
    ((INTERRUPT_COUNT++))
    # Re-define a function that will be called later
    final_func() {
        echo "INFO: final_func was redefined by the signal handler."
    }
}

# Set up the trap
trap 'handle_sigusr1' SIGUSR1

# Start a long-running background job that will send a signal to the main script
(sleep 0.2; kill -SIGUSR1 $$) &
local signaler_pid=$!

# A long-running command in the main script
echo "INFO: Starting a long command (sleep 0.5) that will be interrupted..."
sleep 0.5
echo "INFO: Long command finished."

# Wait for the signaler to be done
wait "$signer_pid"

# Call the function that may or may not have been redefined
final_func() {
    echo "INFO: final_func was NOT redefined."
}
final_func

echo "INFO: Signal stage complete. Final interrupt count: $INTERRUPT_COUNT"


# --- Final Check ---
echo "--- Stress Test Complete ---"
echo "If timep profiled all of this accurately and without crashing, it is indeed *REALLY* good."