# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**BUILTIN FLAMEGRAPH GENERATOR**:  One standout feature of `timep` is that, in addition to the time profile, `timep` will generate outputs consisting of call-stack traces that can be directly used with `timep_flamegraph.pl` (in this repo - a slightly modified version of `flamegraph.pl` from Brendan Gregg's [FlameGraph repo](https://github.com/brendangregg/FlameGraph)).If you pass `timep` the `--flame` flag, timep will automatically download (if needed) a copy of `flamegraph.pl` and use it to generate both "full" and a "folded" flamegraph SVG images. However, unlike typical flamegraphs (which are are built using stack traces), these flamegraphs are built using bash commands and their associated runtimes, and the different levels represent combined function+subshell nesting depth.

-------------------------------------------------------------------------------------------------------------------------------------------
# USING TIMEP

USAGE:     `. /path/to/timep.bash; timep [-s|-f|-c] [-k] [-t] [-o <type>] [--flame] [--] << SCRIPT/FUNCTION TO PROFILE >>`

In other words, source `timep.bash` and then simply add `timep` before the function/script/commands you want to profile! anything passed to timep's stdin will automatically be redi\rected to the stdin of whatever is being profiled.

***

OUTPUTS: in total, `timep` generates either 4 or 6 outputs:
* 2 time profiles,
* 2 stack trace lists for generating flamegraphs, and
* (if `--flame` is given): 2 flamegraph .svg images)
  
These outputs are always saved to disk in the "profiles" directory in the timep tmpdir (by default: /dev/shm/.timep/timep-XXXXXXXX). Upon finishing, `timep` will create a symlink in your PWD at `./timep.profiles` that links to the "profiles" dir that contains all the `timep` outputs.

DETAILS ON OUTPUTS:

2 are time profiles: "out.profile.full" and "out.profile"

1. out.profile.full:    contains all individual commands and metadata info like the chain of FUNCNAME's and the chain of subshell PIDs
2. out.profile:         commands repeated by loops have been collapsed into combined entries that show the number of times the command was repeated and the total run time from all of them
    
2 are stack traces intended to be passed to "timep_flamegraph.pl": "out.flamegraph.full" and "out.flamegraph"

3. out.flamegraph.full: contains stack traces from all commands
4. out.flamegraph:      contains "folded" stack traces where the times from otherwise identical stack traces have been summed together in a single stack trace
     
if `--flame` is passed as a flag: 2 are the flamegraph .svg files from the above two "out.flamegraph" files: "flamegraph.full.svg" and "flamegraph.svg" 

**NOTE ON INTERPRETING THE TOTAL RUNTIMES IN THE PROFILE**: the total runtimes represent the combined sum of the "wall-clock time" from the main process being profiled + all of its descendents. If it has no descendents (i.e., it never spawn a background fork) then this is just the standard "wall-clock time". For code that runs several processes in parallel it is somewhere between "wall-clock time" and "total CPU time (sys+user)"

**EXAMPLE**

```
testfunc() { 
f() { echo "f: $*"; }
g() ( echo "g: $*"; )
h() { 
	echo "h: $*"; 
	f "$@"; 
	g "$@";
}

echo 0
{ echo 1; }
( echo 2 )
echo 3 &
{ echo 4; } &

echo 5 | cat | tee

for (( kk=6; kk<10; kk++ )); do
	echo $kk
	h $kk
	for jj in {1..3}; do
		f $kk $jj
		g $kk $jj
	done
done
}

timep testfunc
```
gives
```
OUTPUT LOG (COMBINED)

1.0:    (0.023018s|100.00%)     (1x) << (FUNCTION): testfunc "${@}" >>
|-- 1.0:        (0.000064s|00.27%)      (1x) testfunc "${@}"
|
|   8.0:        (0.000065s|00.28%)      (1x) echo 0
|
|   9.0:        (0.000665s|02.88%)      (1x) echo 1
|
|   10.0:       (0.000124s|00.53%)      (1x) << (SUBSHELL) >>
|   |-- 10.0:           (0.000124s|00.53%|100.00%)      (1x) echo 2
|
|   11.0:       (0.000450s|01.95%)      (1x) echo 3 (&)
|
|   12.0:       (0.001524s|06.62%)      (1x) << (BACKGROUND FORK) >>
|   |-- 12.0:   (0.000148s|00.64%|100.00%)      (1x) echo 4
|
|   13.0:       (0.004917s|21.36%)      (1x) echo 5 | cat | tee
|
|   15.0:       (0.000304s|01.32%)      (5x) ((kk=6))
|
|   15.1:       (0.000310s|01.34%)      (5x) ((kk<10))
|
|   16.0:       (0.000256s|01.11%)      (4x) echo $kk
|
|   17.0:       (0.004565s|19.83%)      (4x) << (FUNCTION): h $kk >>
|   |-- 1.0:    (0.000224s|00.97%|05.57%)       (4x) h $kk
|   |   8.0:    (0.000265s|01.15%|06.53%)       (4x) echo "h: $*"
|   |   9.0:    (0.000501s|02.17%|12.46%)       (4x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000168s|00.72%|44.68%)       (3x) f "$@"
|   |   |-- 8.0:        (0.000208s|00.90%|55.31%)       (3x) echo "f: $*"
|   |   10.0:   (0.003575s|15.53%|75.40%)       (4x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.002258s|09.80%|84.62%)       (3x) g "$@"
|   |   |   330.0:      (0.000410s|01.78%|15.37%)       (3x) << (SUBSHELL) >>
|   |-- |-- |-- 330.0:  (0.000410s|01.78%|100.00%)      (3x) echo "g: $*"
|   |-- 1.0:            (0.000166s|00.72%|04.90%)       (3x) h $kk
|   |   8.0:            (0.000199s|00.86%|05.82%)       (3x) echo "h: $*"
|   |   9.0:            (0.000373s|01.62%|11.03%)       (3x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000224s|00.97%|44.71%)       (4x) f "$@"
|   |   |-- 8.0:        (0.000277s|01.20%|55.28%)       (4x) echo "f: $*"
|   |   10.0:           (0.003064s|13.31%|78.22%)       (3x) << (FUNCTION): g "$@" >>
|   |-- 1.0:                    (0.000054s|00.23%|04.70%)       (1x) h $kk
|   |   8.0:                    (0.000063s|00.27%|05.48%)       (1x) echo "h: $*"
|   |   9.0:                    (0.000124s|00.53%|10.80%)       (1x) << (FUNCTION): f "$@" >>
|   |   10.0:                   (0.000907s|03.94%|79.00%)       (1x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.003042s|13.21%|85.07%)       (4x) g "$@"
|   |   |   330.0:      (0.000533s|02.31%|14.91%)       (4x) << (SUBSHELL) >>
|   |   |-- |-- 330.0:                  (0.000123s|00.53%|100.00%)      (1x) echo "g: $*"
|
|   18.0:       (0.000729s|03.16%)      (12x) for jj in {1..3}
|
|   19.0:       (0.001532s|06.65%)      (12x) << (FUNCTION): f $kk $jj >>
|   |-- 1.0:            (0.000444s|01.92%|43.31%)       (8x) f $kk $jj
|   |-- 8.0:            (0.000583s|02.53%|56.67%)       (8x) echo "f: $*"
|   |-- 1.0:    (0.000668s|02.90%|43.66%)       (12x) f $kk $jj
|   |-- 8.0:    (0.000864s|03.75%|56.32%)       (12x) echo "f: $*"
|
|   20.0:       (0.007511s|32.63%)      (12x) << (FUNCTION): g $kk $jj >>
|   |-- 1.0:    (0.006468s|28.09%|86.14%)       (12x) g $kk $jj
|   |   330.0:  (0.001043s|04.53%|13.84%)       (12x) << (SUBSHELL) >>
|   |-- |-- 330.0:      (0.000805s|03.49%|100.00%)      (9x) echo "g: $*"
|   |-- 1.0:            (0.005236s|22.74%|86.09%)       (10x) g $kk $jj
|   |   330.0:          (0.000849s|03.68%|13.89%)       (10x) << (SUBSHELL) >>
|   |-- |-- 330.0:      (0.001043s|04.53%|100.00%)      (12x) echo "g: $*"
|-- |-- |-- 330.0:                      (0.000232s|01.00%|100.00%)      (2x) echo "g: $*"


TOTAL RUN TIME: 0.023018s
```
***

FLAGS: flags can fine-tune `timep`'s behavior. All flags are optional. Flags can be used in any order, but all timep flags must come before listing what to profile.

`-f`, `-s`, and `-c`: Use these flags to force timep to treat the input as a function, script, or list of raw commands (respectively). There is builtin logic to automatically detect this...these flags let you override that logic.

`-k` or `--keep`: Use this flag to prevent `timep` from "cleaning up" and deleting all the intermediate logs and script files it generated. Without this flag, only the "profiles" directory with the final output will remain in the timep tmpdir.

`-t` | `--time`: When profiling the code (running it with timep's trap-based timing instrumentation), run it through the `time` shell builtin (in addition to generating the time profiles and flamegraph outputs). 
                 This is useful to compare how much overhead timep's instrumentartion adds to running the code (in my testing this is usually <10% for most "real" codes)

`-o <type>`: Use this flag to control which outputs are printed to stdout after timep is finished. `<type>` is a comma-seperated list of `p`, `pf`, `f` and `ff`. use `-o ''` to not print any of these to stdout.
   `<type>`: p --> out.profile (DEFAULT)........pf --> out.profile.full.......f --> out.flamegraph.......ff -> out.flamegraph.full

 `-F` or `--flame`: Use this flag to have `timep` automatically generate flamegraphs (both with and without folding/merging commands)

 `--`: Use this flag to prevent cmdline args after this from being interpreted as `timep` flags.

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

After the profiled code has finished running, `timep` goes through the logs and post-processes them. It starts at the deepest nested logs and merges them up (using the indicator lines we logged in the parent logs on ever subshell/function init). logs from within a given nesting level are processed in parallel. for each indicator line in the parent logs, the runtime used is the sum of the runtimes in the child log the indicator specifies...it is not computed from the start/end timestamps. As it does this merging it generates 2 logs - one with all the commands + full metadata (the "full" logs) and one with commands repeated in loops merged into a single entry with that shows count + totaltime. It also generates the "full" call-stack trace for use in timep_flamegraph.pl. finally it moves the top-level merged up logs + flamegraph inputs into the profiles dir, and (if `--flame` was passed) generates the flamegraph .svg files.

***

**KNOWN ISSUES**

Due to some of the quirks related to how bash internally works and limitations regarding when bash fires (or doesnt fire) a DEBUG trap, there are a handful of situations where the profile generated by `timep` is slightly off:
* incorrectly adds `(&)` to 1 command near a process substitution that contains only a single command without brace groups
* in some deeply nested subshell + background fork sequences, some commands that should be grouped together are split between multiple groups.
* incorrect line numbers on functions that immediately spawn a subshell (e.g., `func() ( ... )`)
* trap and signal handlers record a line in the profile that has the incorrect command shown. The command will be a copy of the command immediately above it and the LINENO will (often) be negative.
