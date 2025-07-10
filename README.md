# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**BUILTIN FLAMEGRAPH GENERATOR**:  One standout feature of `timep` is that, in addition to the time profile, `timep` will generate outputs consisting of call-stack traces that can be directly used with `flamegraph.pl` (from Brendan Gregg's [FlameGraph repo](https://github.com/brendangregg/FlameGraph)).If you pass `timep` the `--flame` flag, timep will automatically download (if needed) a copy of `flamegraph.pl` and use it to generate both "full" and a "folded" flamegraph SVG images. However, unlike typical flamegraphs (which are are built using stack traces), these flamegraphs are built using bash commands and their associated runtimes, and the different levels represent combined function+subshell nesting depth.

-------------------------------------------------------------------------------------------------------------------------------------------
USAGE:     `. /path/to/timep.bash; timep [-s|-f|-c] [-d] [-o <type>] [--flame] [--] << SCRIPT/FUNCTION TO PROFILE >>`

In other words, source `timep.bash` and then simply add `timep` before the function/script/commands you want to profile! anything passed to timep's stdin will automatically be redi\rected to the stdin of whatever is being profiled.

***

OUTPUTS: `timep` generates 4-6 types of outputs. These will be saved to disk in timep's tmpdir directory (by default: /dev/shm/.timep/timep-XXXXXXXX -- printed to stderr at the end) in the "profiles" sub-directory.

NOTE: when finished running, `timep` will create a symbolic link called `./timep.profiles` that links to the "profiles" dir that contains all the `timep` outputs 

2 are time profiles: "out.profile.full" and "out.profile"

1. out.profile.full:    contains all individual commands and metadata info like the chain of FUNCNAME's and the chain of subshell PIDs
2. out.profile:         commands repeated by loops have been collapsed into combined entries that show the number of times the command was repeated and the total run time from all of them
    
2 are stack traces intended to be passed to "timep_flamegraph.pl": "out.flamegraph.full" and "out.flamegraph"

3. out.flamegraph.full: contains stack traces from all commands
4. out.flamegraph:      contains "folded" stack traces where the times from otherwise identical stack traces have been summed together in a single stack trace
     
if `--flame` is passed as a flag there are 2 addition outputs -- the flamegraph .svg files from the above two "out.flamegraph" files: "flamegraph.full.svg" and "flamegraph.svg" 

***

FLAGS: flags can fine-tune `timep`'s behavior. All flags are optional. Flags can be used in any order, but all timep flags must come before listing what to profile.

Use flags `-f`, `-s`, and `-c` to force timep to treat the input as a function, script, or list of raw commands (respectively). There is builtin logic to automatically detect this...these flags let you override that logic.

Use flag `-d` to have `timep` "clean up" and delete all the intermediate logs and script files, leaving only the "profiles" directory with the final output. 

Use flag `-o <type>` to control which outputs are printed to stdout after timep is finished. `<type>` is a comma-seperated list of `p`, `pf`, `f` and `ff`. use `-o ''` to not print any of these to stdout.
    p --> out.profile (DEFAULT)    pf --> out.profile.full    f --> out.flamegraph    ff -> out.flamegraph.full

Use flag `--flame` to have `timep` automatically generate flamegraphs (both with and without folding/merging commands)

NOTE: all 4/6 outputs 2 time profiles, 2 stack trace lists for generatingflamegraphs, and (if `--flame` is given) 2 flamegraph .svg images) are always saved to disk in the "profiles" directory in the timep tmpdir. Upon finishing, `timep` will create a symlink to this directory in your PWD at `./timep.profiles`

***

# HOW IT WORKS

`timep` leverages the bash DEBUG trap (a well as EXIT and RETURN traps, to a lesser extent) to log start/stop timestamps + nesting metadata to logs (under `timep`'s tmpdir in the /log/ sub-directory). Afyter the code being profiled finishes running, `timep` goes through these logs in a "post-processing" run to generate the final output logs and stack traces that end up in the profiles dir. the debug trap more-or-less does the following:

1. record previous command endtime
2. figure out if nesting lvl has changed (e.g., due to entering/exiting a subshell/function) so we can write the log in the correct place
3. write log line (start/end time + metadata) for previous command in a logfile in `timep`s tmpdir that is named based on nesting lvl. if entering a subshell/function log a indicator line in the parent's log file
4. update metadata variables so the next debug trap can log the command about to be run
5. record the starttime for the next command

NOTE that DEBUG traps fire just before the command listed in $BASH_COMMAND is run, and the DEBUG trap logs the previous command. the EXIT and RETURN traps will trigger a DEBUG trapo to fire and log the last command in the subshell/function.

By using the start/end timestamps at the end/start of the debug trap, the recorded runtimes are representative of the actual runtime - minimal overhead from instrumentation is present.

I spent a considerable amount of time and effort ensuring that all valid bash commands get logged and are logged with the correct metadata and accurate timestamps...figuring out what the previous command that the current debug trap needs to log gets tricky when you throw in things like nested subshell and background forks, but timep  manages to corrctly figure this out for nearly any valid bash code. See the TESTS directory in the `timep` repo for some of the tests that `timep` has been tested against.

To actually run the code, `timep` gathers all required function definitions and saves them in the tmpdir at `functions.bash`, then generates a `main.bash` script that initializes the requires timep metadata variables, sets the DEBUG / EXIT / RETURN traps, then runs whatever is being profiled. When profiling scripts / raw commands - their contents are added here directly. When profiling functions - the function to profile is defined and then called.

After the profiled code has finished running, `timep` goes through the logs and post-processes them. It starts at the deepest nested logs and merges them up (using the indicator lines we logged in the parent logs on ever subshell/function init). As it does this it generayes 2 logs - one with all the commands + full metadata (the "full" logs) and one with commands repeated in loops merged into a single entry with that shows count + totaltime. It also generates the "full" call-stack trace for use in timep_flamegraph.pl. finally it moves the top-level merged up logs + flamegraph inputs into the profiles dir, and (if `--flame` was passed) generates the flamegraph .svg files.
