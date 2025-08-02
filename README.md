# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**BUILTIN FLAMEGRAPH GENERATOR**:  One standout feature of `timep` is that, in addition to the time profile, `timep` will generate outputs consisting of call-stack traces that can be directly used with `timep_flamegraph.pl` (in this repo - a modified version of `flamegraph.pl` from Brendan Gregg's [FlameGraph repo](https://github.com/brendangregg/FlameGraph) with a new `--color=timep` option for use with `timep`).If you pass `timep` the `--flame` flag, timep will automatically download (if needed) a copy of `flamegraph.pl` and use it to generate both "full" and a "folded" flamegraph SVG images. However, unlike typical flamegraphs (which are are built using stack traces), these flamegraphs are built using bash commands and their associated runtimes, and the different levels represent combined function+subshell nesting depth. Additionally, these flamegraph use a custom 'timep' colorint scheme which colors based on the time it took the command tro run and uses a perceptually and spatially equalized colormapping to produce flamegraphs that are easy to interpret and use.

-------------------------------------------------------------------------------------------------------------------------------------------
# USING TIMEP

USAGE:     `. /path/to/timep.bash; timep [-s|-f|-c] [-k] [-t] [-F|--flame] [-o <type>] [--] << SCRIPT/FUNCTION/COMMAND TO PROFILE >>`

In other words, source `timep.bash` and then simply add `timep` before the function/script/commands you want to profile! The code being profiled needs ZERO changes to work with timep...timep handles everything for you! (including automatically redirecting stdin to the stdin of whatever is being profiled, when needed).

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

**NOTE ON INTERPRETING THE TOTAL RUNTIMES IN THE PROFILE**: 
* the "TOTAL RUN TIME"  represents the combined sum of the "wall-clock time" from the main process being profiled + all of its descendents. If it has no descendents (i.e., it never spawn a background process thaty runs asyncronously) then this is just the standard "wall-clock time". For code that runs several processes in parallel it is somewhere between "wall-clock time" and "total CPU time (sys+user)". 
* The "TOTAL CPU TIME" is equivilent to the combined sys+user time from other timing tools.

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
OUTPUT PROFILE (COMBINED):

LINE.CMD NUMBER         COMBINED WALL-CLOCK TIME                COMBINED CPU TIME                       COMMAND                           
|-- <line>.<cmd>:       ( time | cur lvl % | total % )          ( time | cur lvl % | total % )          (count) <command>
_____________________   ___________________________________     ___________________________________     __________________________________

8.0:                    ( 0.024114s |100.00% )                  ( 0.031180s |100.00% )                  (1x) << (FUNCTION): testfunc "${@}" >>
|
|-- 1.0:                ( 0.000066s |  0.27% )                  ( 0.000079s |  0.25% )                  (1x) testfunc "${@}"
|
|   8.0:                ( 0.000068s |  0.28% )                  ( 0.000081s |  0.25% )                  (1x) echo 0
|
|   9.0:                ( 0.000556s |  2.30% )                  ( 0.000406s |  1.30% )                  (1x) echo 1
|
|   10.0:               ( 0.000075s |  0.31% )                  ( 0.000090s |  0.28% )                  (1x) << (SUBSHELL) >>
|   |-- 10.0:           ( 0.000075s |100.00% |  0.31% )         ( 0.000090s |100.00% |  0.28% )         (1x) |-- echo 2
|
|   11.0:               ( 0.000528s |  2.18% )                  ( 0.000549s |  1.76% )                  (1x) echo 3 (&)
|
|   12.0:               ( 0.000076s |  0.31% )                  ( 0.000090s |  0.28% )                  (1x) << (BACKGROUND FORK) >>
|   |-- 12.0:           ( 0.000076s |100.00% |  0.31% )         ( 0.000090s |100.00% |  0.28% )         (1x) |-- echo 4
|
|   13.0:               ( 0.003837s | 15.91% )                  ( 0.012005s | 38.50% )                  (1x) echo 5 | cat | tee
|
|   15.0:               ( 0.000314s |  1.30% )                  ( 0.000379s |  1.21% )                  (1x) ((kk=6))
|
|   15.1:               ( 0.000320s |  1.32% )                  ( 0.000389s |  1.24% )                  (5x) ((kk<10))
|
|   16.0:               ( 0.000283s |  1.17% )                  ( 0.000338s |  1.08% )                  (4x) echo $kk
|
|   17.0:               ( 0.005434s | 22.53% )                  ( 0.005227s | 16.76% )                  (4x) << (FUNCTION): h $kk >>
|   |-- 1.0:            ( 0.000233s |  4.70% |  0.96% )         ( 0.000285s |  6.12% |  0.91% )         (4x) |-- h $kk
|   |   8.0:            ( 0.000290s |  5.95% |  1.20% )         ( 0.000357s |  7.65% |  1.14% )         (4x) |   echo "h: $*"
|   |   9.0:            ( 0.000518s | 10.48% |  2.14% )         ( 0.000626s | 13.50% |  2.00% )         (4x) |   << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        ( 0.000233s | 44.97% |  0.96% )         ( 0.000288s | 46.00% |  0.92% )         (4x) |   |-- f "$@"
|   |   |-- 8.0:        ( 0.000285s | 55.01% |  1.18% )         ( 0.000338s | 53.99% |  1.08% )         (4x) |   |-- echo "f: $*"
|   |   10.0:           ( 0.004393s | 78.83% | 18.21% )         ( 0.003959s | 72.70% | 12.69% )         (4x) |   << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        ( 0.003714s | 85.08% | 15.40% )         ( 0.003176s | 80.26% | 10.18% )         (4x) |   |-- g "$@"
|   |   |   381.0:      ( 0.000679s | 14.91% |  2.81% )         ( 0.000783s | 19.72% |  2.51% )         (4x) |   |   << (SUBSHELL) >>
|   |-- |-- |-- 381.0:  ( 0.000679s |100.00% |  2.81% )         ( 0.000783s |100.00% |  2.51% )         (4x) |-- |-- |-- echo "g: $*"
|
|   18.0:               ( 0.000746s |  3.09% )                  ( 0.000899s |  2.88% )                  (12x) for jj in {1..3}
|
|   19.0:               ( 0.001608s |  6.66% )                  ( 0.001929s |  6.18% )                  (12x) << (FUNCTION): f $kk $jj >>
|   |-- 1.0:            ( 0.000695s | 43.27% |  2.88% )         ( 0.000859s | 44.56% |  2.75% )         (12x) |-- f $kk $jj
|   |-- 8.0:            ( 0.000913s | 56.71% |  3.78% )         ( 0.001070s | 55.42% |  3.43% )         (12x) |-- echo "f: $*"
|
|   20.0:               ( 0.010203s | 42.31% )                  ( 0.008719s | 27.96% )                  (12x) << (FUNCTION): g $kk $jj >>
|   |-- 1.0:            ( 0.008767s | 86.49% | 36.35% )         ( 0.007047s | 80.97% | 22.60% )         (12x) |-- g $kk $jj
|   |   381.0:          ( 0.001436s | 13.49% |  5.95% )         ( 0.001672s | 19.01% |  5.36% )         (12x) |   << (SUBSHELL) >>
|-- |-- |-- 381.0:      ( 0.001436s |100.00% |  5.95% )         ( 0.001672s |100.00% |  5.36% )         (12x) |-- |-- echo "g: $*"



TOTAL RUN TIME: 0.024114s
TOTAL CPU TIME: 0.031180s
```
***

FLAGS: flags can fine-tune `timep`'s behavior. All flags are optional. Flags can be used in any order, but all timep flags must come before listing what to profile.

`-f`, `-s`, and `-c`: Use these flags to force timep to treat the input as a function, script, or list of raw commands (respectively). There is builtin logic to automatically detect this...these flags let you override that logic. 
                      NOTE: in `-c` mode, each timep input argument is run on a seperate line in the generated script that timep profiles. (i.e., each input is run as a seperate command).

`-k` or `--keep`: Use this flag to prevent `timep` from "cleaning up" and deleting all the intermediate logs and script files it generated. Without this flag, only the "profiles" directory with the final output will remain in the timep tmpdir.

`-t` | `--time`: When profiling the code (running it with timep's trap-based timing instrumentation), run it through the `time` shell builtin (in addition to generating the time profiles and flamegraph outputs). 
                 This is useful to compare how much overhead timep's instrumentartion adds to running the code (in my testing this is usually <10% for most "real" codes)

`-o <type>`: Use this flag to control which outputs are printed to stdout after timep is finished. `<type>` is a comma-seperated list of `p`, `pf`, `f` and `ff`. use `-o ''` to not print any of these to stdout.
   `<type>`: p --> out.profile (DEFAULT)........pf --> out.profile.full.......f --> out.flamegraph.......ff -> out.flamegraph.full

 `-F` or `--flame`: Use this flag to have `timep` automatically generate flamegraphs (both with and without folding/merging commands)

 `--`: Use this flag to prevent cmdline args after this from being interpreted as `timep` flags.

***

# HOW IT WORKS

`timep` leverages the bash DEBUG trap (as well as EXIT and RETURN traps, to a lesser extent) to log start/stop timestamps + nesting metadata to logs (under `timep`'s tmpdir in the /log/ sub-directory). After the code being profiled finishes running, `timep` goes through these logs in a "post-processing" run to generate the final output logs and stack traces that end up in the profiles dir. the debug trap more-or-less does the following:

1. record previous command endtime
2. figure out if nesting lvl has changed (e.g., due to entering/exiting a subshell/function) so we can write the log in the correct place
3. write log line (start/end time + metadata) for previous command in a logfile in `timep`s tmpdir that is named based on nesting lvl. if entering a subshell/function log a indicator line in the parent's log file
4. update metadata variables so the next debug trap can log the command about to be run
5. record the starttime for the next command

NOTE that DEBUG traps fire just before the command listed in $BASH_COMMAND is run, and the DEBUG trap logs the previous command. the EXIT and RETURN traps will trigger a DEBUG trapo to fire and log the last command in the subshell/function.

By using the start/end timestamps at the end/start of the debug trap, the recorded runtimes are representative of the actual runtime - minimal overhead from instrumentation is present.

I spent a considerable amount of time and effort ensuring that all valid bash commands get logged and are logged with the correct metadata and accurate timestamps...figuring out what the previous command that the current debug trap needs to log gets tricky when you throw in things like nested subshell and background forks, but timep  manages to corrctly figure this out for nearly any valid bash code. See the TESTS directory in the `timep` repo for some of the tests that `timep` has been tested against.

To actually run the code, `timep` gathers all required function definitions and saves them in the tmpdir at `functions.bash`, then generates a `main.bash` script that initializes the requires timep metadata variables, sets the DEBUG / EXIT / RETURN traps, then runs whatever is being profiled. When profiling scripts / raw commands - their contents are added here directly. When profiling functions - the function to profile is defined and then called.

After the profiled code has finished running, `timep` goes through the logs and post-processes them. It starts at the deepest nested logs and merges them up (using the indicator lines we logged in the parent logs on ever subshell/function init). logs from within a given nesting level are processed in parallel. for each indicator line in the parent logs, the runtime used is the sum of the runtimes in the child log the indicator specifies...it is not computed from the start/end timestamps. As it does this merging it generates 2 logs - one with all the commands + full metadata (the "full" logs) and one with commands repeated in loops merged into a single entry with that shows count + totaltime. It also generates the "full" call-stack trace for use in timep_flamegraph.pl. Finally it moves the top-level merged up logs + flamegraph inputs into the profiles dir, adds some finishing touches/tweaks to make the output useful, adds spatially-equalized colormap indicies (based on width-weighted CDF of the individual times) to ensure equal colorspace utalization in the flamegraph, and (if `-F` or `--flame` was passed) generates the flamegraph .svg files.

***

**KNOWN ISSUES**

Due to some of the quirks related to how bash internally works and limitations regarding when bash fires (or doesnt fire) a DEBUG trap, there are a handful of situations where the profile generated by `timep` is slightly off:
* in some deeply nested subshell + background fork sequences, some commands that should be grouped together are split between multiple groups and/or inner nested subshell commands are included in the commands from an outer nested subshell.
* incorrect line numbers on functions that immediately spawn a subshell (e.g., `func() ( ... )`)
