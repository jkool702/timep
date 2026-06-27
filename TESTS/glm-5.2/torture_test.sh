#!/usr/bin/env bash
# timep Torture Test v4 - The "Must Finish" Edition

# --- 1. Job Control Sabotage (Rule 5) ---
set +m

# --- 2. Disable Trace Inheritance ---
# If timep relies on DEBUG/RETURN traps propagating into functions/subshells,
# disabling functrace and errtrace might blind it.
set +o functrace
set +o errtrace

# --- 3. Override Builtins ---
# If timep calls `wait` or `trap` internally without `command`, this breaks it.
wait() { command wait "$@"; }
trap() { command trap "$@"; }

# --- 4. The Unwaited Heavy Fork (Rule 3) ---
# Pure math loop. Fast natively, but with profiler overhead, it will take a few seconds.
# We explicitly DO NOT wait for it. The main script will exit while this is still running.
(
    x=0
    for i in {1..500000}; do
        x=$((x + i * 3))
    done
) &
unwaited_pid=$!

# --- 5. Explicit Job Waiting ---
# Spawn 5 jobs. Wait for them EXPLICITLY by PID so we don't accidentally
# catch $unwaited_pid with a bare `wait` or `wait -n`.
pids=()
for i in 1 2 3 4 5; do
    ( sleep 0.0$i; echo "Job $i done" >&2 ) &
    pids+=($!)
done

for pid in "${pids[@]}"; do
    wait "$pid"
done

# --- 6. Coprocess Quick IPC ---
coproc CPC {
    read -r line
    echo "Coproc got: $line"
}
echo "Hello Coproc" >&${CPC[1]}
exec {CPC[1]}>&-
read -t 1 -r coproc_out <&${CPC[0]}
echo "Main got: $coproc_out"
wait $CPC_PID

# --- 7. Dynamic Function Generation & Indirection ---
func_base="dyn_"
# Use printf to build the string to avoid any eval quoting issues
func_code=$(printf '
%s1() {
    echo "Level 1"
    %s2() {
        echo "Level 2"
        %s3() {
            echo "Level 3"
            x=42
        }
        %s3
    }
    %s2
}
' "$func_base" "$func_base" "$func_base" "$func_base" "$func_base")
eval "$func_code"
 ${func_base}1

# --- 8. Subshell Exec Replacement ---
# Replaces the subshell process. Does timep lose track of the PID/logs?
( exec bash -c 'echo "Subshell exec completed"' )

# --- 9. Deep Pipeline Subshells ---
# Each stage is a subshell. Profiler must trace all concurrently.
seq 1 1000 | while read -r x; do echo $((x * 2)); done | grep -c "00" | while read -r y; do echo "Matched $y"; done

# --- 10. Process Substitution Math ---
mapfile -t arr < <(for i in {1..500}; do echo $((i ** 2)); done)
echo "Array size: ${#arr[@]}"

# --- 11. EXIT Trap Sabotage ---
# Overwrite the EXIT trap right before exiting.
trap 'echo "Exiting now" >&2' EXIT

# DO NOT wait for $unwaited_pid
exit 0
