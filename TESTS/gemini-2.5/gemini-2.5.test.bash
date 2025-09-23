#!/bin/bash
#
# Title: The "Final Boss" Bash Profiler Test (v6 - Robust IPC)
# Description: This version implements a robust IPC mechanism using dedicated
#              named pipes instead of relying on the fragile default coproc
#              pipes. This architecture is complex but correct, focusing the
#              profiling challenge on tracking inherited file descriptors
#              across numerous asynchronous processes.
#

# --- Setup ---
set -o monitor
TMPDIR=$(mktemp -d)

# Create two dedicated named pipes (FIFOs) for robust, explicit IPC.
# One for Main -> Coproc communication, one for Coproc -> Main.
INPUT_PIPE="$TMPDIR/input.pipe"
OUTPUT_PIPE="$TMPDIR/output.pipe"
mkfifo "$INPUT_PIPE"
mkfifo "$OUTPUT_PIPE"

# --- Signal Handling ---
trap 'echo "[TRAP] A child process has exited."' SIGCHLD

# --- Coprocess ---
# The coprocess is now explicitly wired to the named pipes.
# It reads from the input pipe and writes to the output pipe.
coproc CPID {
    # This runs until its stdin (the input pipe) is closed by all writers.
    while read -r line; do
        echo "[COPROC] Received: $line" >&2
        echo "$line"
    done
} < "$INPUT_PIPE" > "$OUTPUT_PIPE"

# --- Functions ---
recursive_function() {
    local depth=$1
    if [ $depth -gt 3 ]; then
        return
    fi
    echo "[RECURSIVE] Depth: $depth" >&2
    sleep 0.1
    recursive_function $((depth + 1))
}

# --- Main Logic ---
echo "[MAIN] Starting the main logic."
echo "[MAIN] Coprocess PID: $CPID_PID"

# Open the pipes on stable file descriptors.
# FD 3 will be our write-handle to the coprocess.
# FD 4 will be our read-handle from the coprocess.
# We open the input pipe for writing and the output pipe for reading.
exec 3>"$INPUT_PIPE"
exec 4<"$OUTPUT_PIPE"

# --- Background Processes and Complex I/O ---
# The core challenge remains: any backgrounded process inherits all open FDs.
# Any process that does NOT write to the coproc MUST close its inherited
# copy of FD 3, otherwise the pipe will be held open, causing a deadlock.

# 1. Writes to a different FIFO. Does not need FD 3.
(
    exec 3>&- # CRITICAL: Close the unneeded inherited write-handle.
    echo "[BG 1] Writing to main FIFO." >&2
    echo "Message from BG 1" > "$FIFO_PATH"
    sleep 0.2
) &

# 2. Reads from main FIFO, writes to coprocess. It NEEDS FD 3.
(
    read -r line < "$FIFO_PATH"
    echo "[BG 2] Read from FIFO: '$line'. Writing to coprocess." >&2
    echo "$line" >&3
) &

# 3. Piped command. The final stage writes to coproc.
(
    # The first subshell in the pipe also inherits FD 3 and must close it.
    exec 3>&-
    echo "[BG 3] Running complex command." >&2
    sleep 0.3
    echo "Data from BG 3" | base64
) | (
    # This subshell DOES write to the coproc, so it keeps FD 3 open.
    read -r encoded_data
    decoded_data=$(echo "$encoded_data" | base64 -d)
    echo "[BG 3 - Child] Decoded data: '$decoded_data'. Writing to coprocess." >&2
    echo "$decoded_data" >&3
) &

# 4. Starts recursive function. Does not need FD 3.
(
    exec 3>&- # CRITICAL: Close the unneeded inherited write-handle.
    echo "[BG 4] Starting recursive function." >&2
    recursive_function 1
) &

# --- Main Loop and Finalization ---

# Close the PARENT script's write-handle (FD 3). Responsibility for holding
# the input pipe open now rests solely with the background jobs.
exec 3>&-

# This loop will now correctly terminate once all background writers
# have finished and the coprocess subsequently closes the output pipe.
while read -r -u 4 line; do
    echo "[MAIN] Read from coprocess: '$line'"
done

# Cleanly close the read-end of the pipe.
exec 4<&-

# Wait for all child background jobs to complete.
echo "[MAIN] Waiting for background jobs to finish..."
wait

# --- Cleanup ---
echo "[MAIN] Cleaning up."
# Politely ask the coprocess to terminate, then clean up the tmp dir.
kill "$CPID_PID" 2>/dev/null || true
rm -rf "$TMPDIR"

echo "[MAIN] Test complete."
