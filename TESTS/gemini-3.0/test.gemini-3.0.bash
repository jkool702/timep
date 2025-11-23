#!/bin/bash
# EVENT HORIZON v2: The Compliance Update
#
# A stress test for 'timep' that respects the namespace rules but 
# attempts to break the profiling mechanism via standard shell behaviors.

main() {
    echo "=== Entering The Event Horizon v2 ==="

    # workload function to act as our "tracer particle"
    workload() {
        local id="$1"
        # We use a subshell here to give timep a hook to latch onto
        ( echo "  [Workload $id] Running..." )
        sleep 0.1
    }
    export -f workload

    # ---------------------------------------------------------
    # ATTACK 1: The "Env -i" Amnesia
    # ---------------------------------------------------------
    # 'env -i' clears the environment completely before starting the child.
    # This removes BASH_ENV, PATH, and exported functions.
    # CHALLENGE: timep must reinject itself into a process that starts with nothing.
    # NOTE: We have to restore PATH or bash won't find 'sleep', but BASH_ENV stays dead.
    echo ">> Attack 1: The Inheritance Sever (env -i)"
    
    env -i PATH="$PATH" bash -c '
        echo "    [Clean Room] BASH_ENV is: $BASH_ENV"
        # We have to redefine workload because functions were wiped
        workload() { echo "    [Clean Room] Workload running (invisible?)"; sleep 0.1; }
        workload "env-scrubbed"
    ' & wait $!


    # ---------------------------------------------------------
    # ATTACK 2: The "Builtin Trap" Bypass
    # ---------------------------------------------------------
    # timep patches the 'trap' function. We use 'builtin trap' to 
    # talk to the kernel directly and disable the DEBUG signal.
    # CHALLENGE: timep needs to detect that its trap was removed and re-apply it,
    # possibly by hooking the next command execution?
    echo ">> Attack 2: The Trap Bypass"
    (
        echo "    [Bypass] Disabling DEBUG trap via builtin..."
        builtin trap '' DEBUG
        
        # This function call should occur in the dark
        workload "trap-disabled"
        
        echo "    [Bypass] Re-enabling to see if timep notices..."
        # We act innocent afterwards
    ) & wait $!


    # ---------------------------------------------------------
    # ATTACK 3: The "Exec" Handover
    # ---------------------------------------------------------
    # 'exec -c' clears the environment (like env -i) but replaces the 
    # current process image.
    # CHALLENGE: The PID stays the same, but the memory is wiped.
    # Does timep lose the NEXEC context when the process image is replaced?
    echo ">> Attack 3: Exec Amnesia"
    (
        # Start a subshell (timep tracks this)
        echo "    [Pre-Exec] PID: $BASHPID"
        
        # Replace process with a clean bash
        exec -c bash -c '
            echo "    [Post-Exec] PID: $BASHPID (Same PID, New Brain)"
            sleep 0.1
        '
    ) & wait $!


    # ---------------------------------------------------------
    # ATTACK 4: The "FD Slaughter"
    # ---------------------------------------------------------
    # timep relies on inherited file descriptors (pipes/files) to write logs.
    # We close every single file descriptor except 0, 1, and 2.
    # CHALLENGE: timep needs to handle write errors gracefully or 
    # re-open its logging channels (impossible if they were pipes).
    echo ">> Attack 4: Sensory Deprivation (Closing FDs 3-255)"
    (
        echo "    [Silence] Closing all upper FDs..."
        # Brute force close.
        # If timep uses {var}>&1 syntax, it's using FDs > 9 usually.
        for fd in {3..200}; do
            eval "exec $fd>&-" 2>/dev/null
        done
        
        # This workload runs while logging channels are severed
        workload "fd-closed"
    ) & wait $!


    # ---------------------------------------------------------
    # ATTACK 5: The "Readonly BASH_ENV" Defense
    # ---------------------------------------------------------
    # Instead of unsetting it, we make BASH_ENV readonly.
    # If timep tries to overwrite BASH_ENV to inject itself, 
    # bash will throw an error and potentially crash the trap handler.
    echo ">> Attack 5: Readonly BASH_ENV"
    (
        # Set BASH_ENV to empty/garbage and lock it
        export BASH_ENV=""
        readonly BASH_ENV
        
        echo "    [Locked] BASH_ENV is readonly. Attempting fork..."
        # Forking a subshell should trigger timep's injection logic
        (
            workload "readonly-env-child"
        )
    ) & wait $!
    
    # ---------------------------------------------------------
    # ATTACK 6: The "Eval Bomb" (Dynamic Scope)
    # ---------------------------------------------------------
    # We define a function INSIDE a string and eval it inside a pipe.
    # This combines subshells, dynamic parsing, and pipe behavior.
    echo ">> Attack 6: The Eval Bomb"
    code="
        my_dynamic_func() {
            workload \"dynamic-eval\"
        }
        my_dynamic_func
    "
    # Piping into eval forces a subshell where source doesn't exist physically
    echo "$code" | eval "$(cat)" & wait $!

    echo "=== Event Horizon Complete ==="
}

main