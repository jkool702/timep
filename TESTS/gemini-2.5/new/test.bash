
# --- Stage 1: The Forking Frenzy ---
fork_frenzy() {
    for i in {1..15}; do
        (
            echo "Process $i started"
            sleep 0.1
            echo "Process $i finished"
        ) &
    done
    wait
}

# --- Stage 2: The Pipe Maze ---
pipe_maze() {
    tmpfile=$(mktemp)
    cat <(head -c 10240 /dev/urandom | base64) | \
    grep -o "[A-Za-z0-9]" | \
    sort | \
    uniq -c | \
    awk '{print $1, $2}' | \
    tee >(sha256sum > "$tmpfile") | \
    wc -l

    wait
    echo "SHA256 of the sorted unique characters: $(cat "$tmpfile")"
    rm "$tmpfile"
}

# --- Stage 3: The Signal Gauntlet ---
signal_gauntlet() {
    trap "echo 'Caught SIGINT, but I will not die!';" INT
    trap "echo 'Caught SIGTERM, cleaning up...'; exit 1;" TERM

    echo "Signal traps are set. Try sending SIGINT (Ctrl+C) or SIGTERM."
    for i in {1..3}; do
        echo "Waiting... ($i/3)"
        sleep 1
    done

    trap - INT TERM
}

# --- Stage 4: The Recursive Descent ---
recursive_descent() {
    level=$1
    if [ "$level" -gt 5 ]; then
        echo "Reached the bottom of the recursion."
        return
    fi
    echo "Entering recursion level $level"
    sleep 0.1
    recursive_descent $(($level + 1))
    echo "Exiting recursion level $level"
}

# --- Stage 5: The File Descriptor Ballet ---
fd_ballet() {
    exec 3< <(echo "some secret data")
    exec 4> >(tr 'a-z' 'A-Z')

    cat <&3 >&4

    exec 3<&-
    exec 4>&-
}

# --- Stage 6: The Coprocess Tango ---
coproc_tango() {
    coproc MY_COPROC {
        while read -r line; do
            echo "COPROC received: $line"
            if [[ "$line" == "exit" ]]; then
                exit 0
            fi
            sleep 0.2
            echo "COPROC responding"
        done
    }

    echo "Sending data to coprocess"
    echo "hello" >&${MY_COPROC[1]}
    read -r response <&${MY_COPROC[0]}
    echo "Main script received from coproc: $response"
    
    echo "exit" >&${MY_COPROC[1]}
    wait $MY_COPROC_PID
}

# --- Stage 7: The FIFO Fiesta ---
fifo_fiesta() {
    fifo=$(mktemp -u)
    mkfifo "$fifo"

    # Background process writes to the FIFO
    (
        echo "FIFO writer started"
        sleep 0.5
        echo "Data for FIFO" > "$fifo"
        echo "FIFO writer finished"
    ) &

    # Main process reads from the FIFO
    echo "FIFO reader started"
    read -r data < "$fifo"
    echo "FIFO reader received: $data"
    echo "FIFO reader finished"

    rm "$fifo"
    wait
}

# --- Main Execution ---
echo "Starting the profiler stress test..."

# Run each stage in the background to maximize concurrency
fork_frenzy &
pipe_maze &
signal_gauntlet &
recursive_descent 1 &
fd_ballet &
coproc_tango &
fifo_fiesta &

# Wait for all background jobs to complete
wait

echo "Profiler stress test complete."
