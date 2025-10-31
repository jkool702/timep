#!/usr/bin/env bash
# A targeted, challenging script to stress-test a bash profiler (timep).
#
# This version focuses on tricky scenarios over brute-force forking.
#
# Challenges Presented:
# 1. Directly unsetting and re-setting the DEBUG trap.
# 2. Complex command structures that are hard to parse and attribute.
# 3. Targeted concurrency with job control, `wait`, and `disown`.
# 4. Dynamic code execution (`eval`, `source`) and scope manipulation.
# 5. State obfuscation with variable indirection (namerefs) and recursion.
# 6. Redirection and file descriptor shenanigans.

set -eEuo pipefail

# --- Challenge 1: Trap Subversion & Re-setting ---
# A naive profiler might set a trap and just assume it sticks.
# We test if the profiler can handle its primary mechanism being disabled and
# then re-enabled by the script itself.
echo "--- Stage 1: Trap Subversion & Re-setting ---"
trap - DEBUG
echo "INFO: Attempted to disable DEBUG trap."
# A robust profiler might re-set its trap here. Let's give it a command to catch.
echo "INFO: A command after the trap was disabled."
# Now, let's re-enable a different trap to see what happens.
trap 'echo "CUSTOM TRAP: $BASH_COMMAND"' DEBUG
echo "INFO: A command with our own DEBUG trap active."
# Let's unset it again, leaving a clean slate for the profiler to fix.
trap - DEBUG
echo "INFO: Trap disabled again. The profiler should be in control now."


# --- Challenge 2: The Labyrinth of Built-ins & Expansion ---
# This loop is smaller but packed with commands that are hard to parse,
# have no clear "process" time, or involve complex expansions.
echo "--- Stage 2: Labyrinth of Built-ins & Expansion ---"
for i in {1..100}; do
    # A mix of built-ins, parameter expansion, and redirection
    : $(( (RANDOM % 10) ** 2 )) # Arithmetic expansion in a null command
    echo "Line $i: ${!i}" &> /dev/null # Indirection and redirection to null
    # A pipeline with only built-ins
    (read; echo $REPLY) <<< "Hello from a here-string" | tr a-z A-Z &> /dev/null
    # Command substitution nesting
    nested_var=$(echo $(basename "$(echo /some/long/path/to/a/file.txt)"))
done
echo "INFO: Labyrinth stage complete."


# --- Challenge 3: Targeted Concurrency ---
# Designed to confuse a profiler's process tracking with a smaller, more focused set of jobs.
echo "--- Stage 3: Targeted Concurrency ---"

# A function that spawns its own background processes
spawner() {
    local name=$1
    echo "INFO: Spawner '$name' starting."
    # Use process substitution, which creates named pipes and background processes
    paste <(sleep 0.1; seq 1 3) <(sleep 0.1; seq 4 6) > /dev/null &
    local spawner_job=$!
    # A simple background job that exits quickly
    (sleep 0.05) &
    echo "INFO: Spawner '$name' finished launching jobs. Waiting for its own job ($spawner_job)."
    wait "$spawner_job"
}

# Launch spawners
spawner "Alpha" &
spawner "Beta" &

# A job that will be disowned
(sleep 0.2; echo "INFO: Disowned job finished.") &
disowned_pid=$!
disown # Detach the last backgrounded job

echo "INFO: Waiting for ALL remaining known jobs..."
wait # Waits for the spawners and their sub-jobs, but not the disowned one.

echo "INFO: Trying to wait for the disowned PID ($disowned_pid). This should fail."
wait "$disowned_pid" || echo "WARN: Could not wait for disowned PID $disowned_pid, as expected."

echo "INFO: Concurrency stage complete."


# --- Challenge 4: Dynamic Code & Scope Hell ---
# `eval` is hard to profile. `source` tests cross-file tracking.
# This combines them in a way that can confuse scope.
echo "--- Stage 4: Dynamic Code & Scope Hell ---"

# Create a temporary script to be sourced
temp_script=$(mktemp)
cat << 'EOF' > "$temp_script"
# This script defines a function that modifies a variable.
# A good profiler should know this code came from a file.
sourced_var="initial_value"
sourced_func() {
    echo "INFO: Inside a function from a sourced file."
    sourced_var="modified_by_sourced_func"
    # And that function has a pipeline
    seq 1 3 | rev | cat > /dev/null
}
EOF

# Use eval to call the function from the sourced script
source "$temp_script"
eval 'sourced_func; echo "INFO: The sourced_var is now: $sourced_var"'

rm -f "$temp_script"
echo "INFO: Dynamic execution stage complete."


# --- Challenge 5: State & Control Flow Obfuscation ---
# Tests the profiler's ability to track state through recursion and variable indirection.
echo "--- Stage 5: State & Control Flow Obfuscation ---"

# Variable Indirection (Nameref)
declare -n ref_to_var=original_var
original_var="I am the original"

update_ref() {
    # This function looks like it's modifying ref_to_var, but it's really
    # modifying original_var. A profiler tracking variable access might get confused.
    ref_to_var="I have been updated via a nameref."
}
update_ref
echo "INFO: Value after nameref update: $original_var"

# Simple Recursion
recursive_func() {
    local depth=$1
    if (( depth > 0 )); then
        # A command inside a recursive call
        echo "INFO: Recursing at depth $depth" > /dev/null
        ((depth--))
        recursive_func $depth
    fi
}
recursive_func 5

echo "INFO: State obfuscation stage complete."


# --- Challenge 6: Redirection and File Descriptor Madness ---
# Complex redirections can hide the true command and its I/O.
echo "--- Stage 6: Redirection and File Descriptor Madness ---"

# Open a file descriptor for reading and writing
exec 3<> /dev/null

# Redirect stdout and stderr to a file descriptor, then run a command
# This can be tricky to log correctly. What is the "real" command here?
{ echo "to stdout"; echo "to stderr" >&2; } >&3

# Close the file descriptor
exec 3>&-

# Use process substitution with a command that has its own redirections
diff <(seq 1 5) <(echo -e "1\n2\n3\n4\n5") > /dev/null

echo "INFO: Redirection stage complete."


# --- Final Check ---
echo "--- Stress Test v2 Complete ---"
echo "If timep profiled all of this accurately, it is truly excellent."