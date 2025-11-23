# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**CURRENT TIMEP VERSION**: timep v1.10.1

The timep v1.10 release is a smaller "quality of life" release that incorporates the following changes:
1. `/dev/shm` is no longer a hard dependency. The loadable builtin timep.so file and the flamegraph generation perl script now follow the same logic that choosing the timep tmpdir uses (`/dev/shm` is preferred, but if unavailable `$TMPDIR`, `/tmp`, and `$PWD` will be tried with decreasing preference)
2. The flamegraph generation workflow has been parallelized. After the parallel primary log processing finishes, flamegraph generation runs in parallel with final output profile generation (resulting in a much shorter time until the output profile is printed to the screen). Additionally, when the dual-stack and quad-stack flamegraphs are created the 4x dual stack ones are made in parallel and the 2x quad-stack ones also are made in parallel.
3. The way `timep` aggregates the compined time totals (shown at the bottom of the profiles) has been overhauled, making them more accurately describe the actual runtime (without instrumentation overhead). Three times are now shown:
* "SELF RUN TIME": the "wall-clock" time that it actually took the command to run (this is new)
* "TOTAL RUN TIME": the "wall-clock time" from all parallel branches of the code summed tog

**timep v1.10.1**: added a guard for BASH_ENV and a new stress test

See `CHANGELOG.md` for the changes introduced in previous `timep` updates. To use one of the older versions of timep, download its release or use it via its tag.

-------------------------------------------------------------------------------------------------------------------------------------------
# BUILTIN FLAMEGRAPH GENERATOR

One standout feature of `timep` is that, in addition to the time profile, `timep` will generate outputs consisting of call-stack traces that can be directly used with `timep_flamegraph.pl` (in this repo - a modified version of `flamegraph.pl` from Brendan Gregg's [FlameGraph repo](https://github.com/brendangregg/FlameGraph) with a new `--color=timep` option for use with `timep`). If you pass `timep` the `--flame` flag, timep will automatically download (if needed) a copy of `flamegraph.pl` and use it to generate both "full" and a "folded" flamegraphs SVG images. However, unlike typical flamegraphs (which are built using stack traces), these flamegraphs are built using bash commands and their associated runtimes, and the different levels represent combined function+subshell nesting depth. Additionally, these flamegraphs use a custom 'timep' coloring scheme, which colors based on the time it took the command to run and uses a perceptually and spatially equalized color mapping to produce flamegraphs that are easy to interpret and use.

note: use the timep_GENERATE_FLAMEGRAPHS_BY_DEFAULT at the top of the code to control if you want timep to generate flamegraphs automatically by default (without requiring passing a flag). Current default is to automatically generate them.

-------------------------------------------------------------------------------------------------------------------------------------------
# USING TIMEP

USAGE:     `. /path/to/timep.bash; timep [-s|-f|-c] [-k] [-t] [-F|--flame] [-o <type>] [--] << SCRIPT/FUNCTION/COMMAND TO PROFILE >>`

In other words, source `timep.bash` and then simply add `timep` before the function/script/commands you want to profile! The code being profiled needs ZERO changes to work with timep...timep handles everything for you! (including automatically redirecting stdin to the stdin of whatever is being profiled, when needed).

***

OUTPUTS: `timep` generates 2 time profiles and (if `-F` or `--flame` is passed) several flamegraph svg images plus 2 stack traces (flamegraph inputs), . These outputs are always saved to disk in the "profiles" directory in the timep tmpdir (by default: /dev/shm/.timep/timep-XXXXXXXX). Upon finishing, `timep` will create a symlink in your PWD at `./timep.profiles` that links to the "profiles" dir that contains all the `timep` outputs.

DETAILS ON OUTPUTS:

2 time profiles: "out.profile.full" and "out.profile"

1. out.profile.full:    contains all individual commands and metadata info like the chain of FUNCNAME's and the chain of subshell PIDs
2. out.profile:         commands repeated by loops have been collapsed into combined entries that show the number of times the command was repeated and the total run time from all of them. By default this is printed to the screen upon completion.

if `--flame` is passed as a flag:  

2 stack traces (intended to be passed to "timep_flamegraph.pl"): "out.flamegraph.full" and "out.flamegraph"

2 flamegraphs: out.flamegraph.ALL.svg and out.flamegraph.ALL.R.svg:  there are both "quad stack": 4-in-1 flamegraphs. they contain the same info, but that info is grouped differently.
     
 several flamegraph .svg files are genertated from the above two "out.flamegraph" files and savei in the "flamegraphs" subdirectory of the profile dir. there are 4 "base" SVG's that show wall-clock time and cpu time for the full and the folded stack traces. These 4 SVGs are then combined (vertically stacked) in various combinations to produce extremely informaive dual- and quad-stacked flamegraphs. The qaad-stacked `flamegraph.ALL.svg` and `flamegraph.ALL.R.svg` flamegraphs both contain all 4 "base flamegraphs" (they group them in dfferent ways), and are probably the ones you want to use.

**NOTE ON INTERPRETING THE TOTAL RUNTIMES IN THE PROFILE**: 
* the "SELF RUN TIME" is the "wall-clock time" that it actually took the command to run. i.e., how long you had to wait after starting running the code until it finished.
* the "TOTAL RUN TIME"  represents the combined sum of the "wall-clock time" from the main process being profiled + all of its bash descendant processes. If it has no descendants (i.e., it never forks a background process that runs asynchronously) then this is just the standard "wall-clock time". For code that runs several processes in parallel it is similiar to the "total CPU time (sys+user)", except that it combines the wall-clock time that each process ran for.
* The "TOTAL CPU TIME" is equivalent to the combined sys+user time from other timing tools.
* NOTE: timep's overhead has been removed/corrected for in all 3 of these times. each should be very close to the time you would have gotten if you ran the command without using `timep`.

The big difference between the two "TOTAL" times is that:
1. TOTAL RUN TIME includes time spent idling and waiting (via `wait`, a blocking read, waiting on I/O, etc), when cpu usage was basically zero but the process was still running, and
2. if you call a binary (not a shell script) that is inherently multithreaded, TOTAL RUN TIME adds the time it waited for the binary to finish, and TOTAL CPU TIME adds the total cpu time used the binary used.

**EXAMPLE**

```
testfunc() { 
trap 'echo RETURN' RETURN;
f() { echo "f: $*"; }
g() ( trap 'echo EXIT' EXIT;  echo "g: $*"; )
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
LINE DEPTH CMD  COMBINED WALL-CLOCK TIME          COMBINED CPU TIME                     COMMAND                             
line.depth.cmd: ( time | total % | cur depth % )  ( time | total % | cur depth % )      (count) <command>
_______________ __________________________________________________________________      ____________________________________

1.0.0:          ( 0.565324s |100.00% )            ( 0.572306s |100.00% )                (1x)    << (FUNCTION): main.testfunc "${@}" >>
1.1.0:          ( 0.000070s |  0.01% )            ( 0.000093s |  0.01% )                (1x)    testfunc "${@}"

2.1.0:          ( 0.022847s |  4.04% )            ( 0.022775s |  3.97% )                (1x)    trap 'echo RETURN' RETURN

5.1.0:          ( 0.002009s |  0.35% )            ( 0.002016s |  0.35% )                (1x)    TRAP (RETURN): echo RETURN

11.1.0:         ( 0.000095s |  0.01% )            ( 0.000108s |  0.01% )                (1x)    echo 0

12.1.0:         ( 0.000770s |  0.13% )            ( 0.000670s |  0.11% )                (1x)    echo 1

13.1.0:         ( 0.000176s |  0.03% )            ( 0.000203s |  0.03% )                (1x)    << (SUBSHELL) >>
13.2.0:         ( 0.000176s |  0.03% |100.00% )   ( 0.000203s |  0.03% |100.00% )       (1x)     └─echo 2

14.1.0:         ( 0.000480s |  0.08% )            ( 0.000512s |  0.08% )                (1x)    echo 3 (&)

15.1.0:         ( 0.000162s |  0.02% )            ( 0.000188s |  0.03% )                (1x)    << (BACKGROUND FORK) >>
15.2.0:         ( 0.000162s |  0.02% |100.00% )   ( 0.000188s |  0.03% |100.00% )       (1x)     └─echo 4

16.1.0:         ( 0.004038s |  0.71% )            ( 0.013263s |  2.31% )                (1x)    echo 5 | cat | tee

18.1.0:         ( 0.000070s |  0.01% )            ( 0.000084s |  0.01% )                (1x)    ((kk=6))

18.1.0:         ( 0.000282s |  0.04% |  0.01% )   ( 0.000327s |  0.05% |  0.01% )       (4x)    ((kk++ ))

18.1.1:         ( 0.000365s |  0.06% |  0.01% )   ( 0.000434s |  0.07% |  0.01% )       (5x)    ((kk<10))

19.1.0:         ( 0.000289s |  0.05% |  0.01% )   ( 0.000346s |  0.06% |  0.01% )       (4x)    echo $kk

20.1.0:         ( 0.144182s | 25.50% |  6.37% )   ( 0.143671s | 25.10% |  6.27% )       (4x)    << (FUNCTION): main.testfunc.h $kk >>
1.2.0:          ( 0.000305s |  0.05% |  0.21% )   ( 0.000362s |  0.06% |  0.25% )       (4x)     ├─h $kk
2.2.0:          ( 0.000306s |  0.05% |  0.21% )   ( 0.000359s |  0.06% |  0.24% )       (4x)     │ echo "h: $*"
3.2.0:          ( 0.008277s |  1.46% |  5.74% )   ( 0.008419s |  1.47% |  5.85% )       (4x)     │ << (FUNCTION): main.testfunc.h.f "$@" >>
1.3.0:          ( 0.000270s |  0.04% |  3.26% )   ( 0.000324s |  0.05% |  3.84% )       (4x)     │  ├─f "$@"
2.3.0:          ( 0.000344s |  0.06% |  4.15% )   ( 0.000400s |  0.06% |  4.75% )       (4x)     │  │ echo "f: $*"
2.3.1:          ( 0.007663s |  1.35% | 92.58% )   ( 0.007695s |  1.34% | 91.40% )       (4x)     │  └─TRAP (RETURN): echo RETURN
4.2.0:          ( 0.127463s | 22.54% | 88.40% )   ( 0.126675s | 22.13% | 88.17% )       (4x)     │ << (FUNCTION): main.testfunc.h.g "$@" >>
1.3.0:          ( 0.004500s |  0.79% |  3.53% )   ( 0.003950s |  0.69% |  3.11% )       (4x)     │  ├─g "$@"
2.3.0:          ( 0.110687s | 19.57% | 86.83% )   ( 0.110437s | 19.29% | 87.18% )       (4x)     │  │ << (SUBSHELL) >>
2.4.0:          ( 0.102756s | 18.17% | 92.83% )   ( 0.102422s | 17.89% | 92.74% )       (4x)     │  │  ├─trap 'echo EXIT' EXIT
2.4.1:          ( 0.000361s |  0.06% |  0.32% )   ( 0.000423s |  0.07% |  0.38% )       (4x)     │  │  │ echo "g: $*"
-453.4.0:       ( 0.007570s |  1.33% |  6.83% )   ( 0.007592s |  1.32% |  6.87% )       (4x)     │  │  └─TRAP (EXIT): echo EXIT
2.3.1:          ( 0.012276s |  2.17% |  9.63% )   ( 0.012288s |  2.14% |  9.70% )       (4x)     │  └─TRAP (RETURN): echo RETURN
1.2.0:          ( 0.007831s |  1.38% |  5.43% )   ( 0.007856s |  1.37% |  5.46% )       (4x)     └─TRAP (RETURN): echo RETURN

21.1.0:         ( 0.000778s |  0.13% |  0.01% )   ( 0.000947s |  0.16% |  0.01% )       (12x)   for jj in {1..3}

22.1.0:         ( 0.025140s |  4.44% |  0.37% )   ( 0.025556s |  4.46% |  0.37% )       (12x)   << (FUNCTION): main.testfunc.f $kk $jj >>
1.2.0:          ( 0.000890s |  0.15% |  3.54% )   ( 0.001055s |  0.18% |  4.12% )       (12x)    ├─f $kk $jj
2.2.0:          ( 0.000962s |  0.17% |  3.82% )   ( 0.001129s |  0.19% |  4.41% )       (12x)    │ echo "f: $*"
2.2.1:          ( 0.023288s |  4.11% | 92.63% )   ( 0.023372s |  4.08% | 91.45% )       (12x)    └─TRAP (RETURN): echo RETURN

23.1.0:         ( 0.363571s | 64.31% |  5.35% )   ( 0.361113s | 63.09% |  5.25% )       (12x)   << (FUNCTION): main.testfunc.g $kk $jj >>
1.2.0:          ( 0.012459s |  2.20% |  3.42% )   ( 0.010637s |  1.85% |  2.94% )       (12x)    ├─g $kk $jj
2.2.0:          ( 0.315287s | 55.77% | 86.71% )   ( 0.314600s | 54.97% | 87.11% )       (12x)    │ << (SUBSHELL) >>
2.3.0:          ( 0.291214s | 51.51% | 92.36% )   ( 0.290281s | 50.72% | 92.26% )       (12x)    │  ├─trap 'echo EXIT' EXIT
2.3.1:          ( 0.001094s |  0.19% |  0.34% )   ( 0.001247s |  0.21% |  0.39% )       (12x)    │  │ echo "g: $*"
-453.3.0:       ( 0.022979s |  4.06% |  7.28% )   ( 0.023072s |  4.03% |  7.33% )       (12x)    │  └─TRAP (EXIT): echo EXIT
2.2.1:          ( 0.035825s |  6.33% |  9.85% )   ( 0.035876s |  6.26% |  9.93% )       (12x)    └─TRAP (RETURN): echo RETURN

TOTAL RUN TIME: 0.565324s
TOTAL CPU TIME: 0.572306s
```
***

FLAGS: flags can fine-tune `timep`'s behavior. All flags are optional. Flags can be used in any order, but all timep flags must come before listing what to profile.

`-f`, `-s`, and `-c`: Use these flags to force timep to treat the input as a function, script, or list of raw commands (respectively). There is builtin logic to automatically detect this...these flags let you override that logic. 
                      NOTE: in `-c` mode, each timep input argument is run on a separate line in the generated script that timep profiles. (i.e., each input is run as a separate command).

`-k` or `--keep`: Use this flag to prevent `timep` from "cleaning up" and deleting all the intermediate logs and script files it generated. Without this flag, only the "profiles" directory with the final output will remain in the timep tmpdir.

`-t` | `--time`: When profiling the code (running it with timep's trap-based timing instrumentation), run it through the `time` shell builtin (in addition to generating the time profiles and flamegraph outputs). 
                 This is useful to compare how much overhead timep's instrumentation adds to running the code (in my testing this is usually <10% for most "real" codes)

`-o <type>`: Use this flag to control which outputs are printed to stdout after timep is finished. `<type>` is a comma-separated list of `p`, `pf`, `f` and `ff`. Use `-o ''` to not print any of these to stdout.
             `<type>`: p --> out.profile (DEFAULT)........pf --> out.profile.full.......f --> out.flamegraph.......ff -> out.flamegraph.full

 `-F` or `--flame`: Use this flag to have `timep` automatically generate flamegraphs (both with and without folding/merging commands)

 `--`: Use this flag to prevent cmdline args after this from being interpreted as `timep` flags.

***

**EXCLUDING PART OF THE CODE FROM INSTRUMENTATION**

`timep` will NOT profile commands run inside of an `env -i` call. If a part of the code being profiled needs to run without being instrumented (e.g., because it requires job control to be off to work properly), you can run that section with `env -i` and it will not be instrumented. 

NOTE: you will still get a single line in the profile showing the time for the entire `env -i` call.

***

# HOW IT WORKS

`timep` leverages the bash DEBUG trap (as well as EXIT and RETURN traps, to a lesser extent) to log start/stop timestamps + nesting metadata to logs (under `timep`'s tmpdir in the /log/ sub-directory). After the code being profiled finishes running, `timep` goes through these logs in a "post-processing" run to generate the final output logs and stack traces that end up in the profiles dir. the debug trap more-or-less does the following:

1. record previous command endtime
2. figure out if nesting lvl has changed (e.g., due to entering/exiting a subshell/function) so we can write the log in the correct place
3. write log line (start/end time + metadata) for previous command in a logfile in `timep`s tmpdir that is named based on nesting lvl. if entering a subshell/function log a indicator line in the parent's log file
4. update metadata variables so the next debug trap can log the command about to be run
5. record the starttime for the next command

NOTE that DEBUG traps fire just before the command listed in $BASH_COMMAND is run, and the DEBUG trap logs the previous command. the EXIT and RETURN traps will trigger a DEBUG trap to fire and log the last command in the subshell/function.

By using the start/end timestamps at the end/start of the debug trap, the recorded runtimes are representative of the actual runtime - minimal overhead from instrumentation is present.

I spent a considerable amount of time and effort ensuring that all valid bash commands get logged and are logged with the correct metadata and accurate timestamps...figuring out what the previous command that the current debug trap needs to log gets tricky when you throw in things like nested subshell and background forks, but timep  manages to corrctly figure this out for nearly any valid bash code. See the TESTS directory in the `timep` repo for some of the tests that `timep` has been tested against.

To actually run the code, `timep` gathers all required function definitions and saves them in the tmpdir at `functions.bash`, then generates a `main.bash` script that initializes the requires timep metadata variables, sets the DEBUG / EXIT / RETURN traps, then runs whatever is being profiled. When profiling scripts / raw commands - their contents are added here directly. When profiling functions - the function to profile is defined and then called.

After the profiled code has finished running, `timep` goes through the logs and post-processes them. It starts at the deepest nested logs and merges them up (using the indicator lines we logged in the parent logs on every subshell/function init). logs from within a given nesting level are processed in parallel. for each indicator line in the parent logs, the runtime used is the sum of the runtimes in the child log the indicator specifies...it is not computed from the start/end timestamps. As it does this merging it generates 2 logs - one with all the commands + full metadata (the "full" logs) and one with commands repeated in loops merged into a single entry with that shows count + totaltime. It also generates the "full" call-stack trace for use in timep_flamegraph.pl. Finally it moves the top-level merged up logs + flamegraph inputs into the profiles dir, adds some finishing touches/tweaks to make the output useful, adds spatially-equalized colormap indices (based on width-weighted CDF of the individual times) to ensure equal colorspace utilization in the flamegraph, and (if `-F` or `--flame` was passed) generates the flamegraph .svg files.

***

# FRACTAL BOOTSTRAPPING

`timep`'s underlying methodology is something I like to call "fractal bootstrapping". Rather than attempt to handle all the code's complexity globally, `timep` distributes the complexity. Each process profiles itself using the same instrumentation with a different seed, and the instrumentation bootstraps itself into any new executioin contexts. The beauty of the fractal bootsprapping approach is that it allows the DEBUG trap instrumentation to effectively become a "local state machine", reducing the problem from "the infinite complexity of all possible shell scripts" down to "a finite number of possible state transitions between any 2 sequential DEBUG traps". This allows timep to accurately profile arbitrarily complex bash code.

***

**LOADABLE BUILTINS**

`timep` uses loadable builtins for 2 main operations:
1. getting CPU time (via clock_gettime and getrusage). This is dramatically more acurate than the info in /proc
2. computing checksums. The checksums timep uses are typically quite small, and having builtin functions to do this avoids the fork cost, making them dramatically faster.

These loadable builtins are encoded directly in the `timep.bash` file as custom compressed base64 sequence. These base64 sequences have both sha256 and md5 checksums builtin that are verified on extraction. the following arches are included in `timep.bash`:
* x86_64
* aarch64
* armv7
* s390x
* ppc64le
* risc-v

The C source for the loadable functions is available at [LIB/LOADABLES/SRC/timep.c](https://github.com/jkool702/timep/blob/main/LIB/LOADABLES/SRC/timep.c). A [github actions workflow](https://github.com/jkool702/timep/blob/main/.github/workflows/build-multiplatform.yml) automatically builds this source into the timep.so that provides the loadable builtins, base64 encodes them, and directly incorporates them into timep.bash. If you look at the "blame" for `timep.bash` you will see that the base64 encodings came from a commit added by the github-actions bot. This provides a verifiable chain that proves that the embedded timep.so file was, in fact, compiled from the source C code linked above.

***

**KNOWN ISSUES**

Due to some of the quirks related to how bash internally works and limitations regarding when bash fires (or doesnt fire) a DEBUG trap, there are a handful of situations where the profile generated by `timep` is slightly off:
* in some deeply nested subshell + background fork sequences, some commands that should be grouped together are split between multiple groups and/or inner nested subshell commands are included in the commands from an outer nested subshell.

