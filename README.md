# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**CURRENT TIMEP VERSION**: 1.7

**CHANGES IN MOST RECENT UPDATE**: This version contains 4 major changes/improvements, in addition to various minor changes and bugfixes:
1. The log files that timep creates as it profiles are now named using the hash of their "nexec" value (a unique identifier that describes their position in the call stack) instead of the raw nexec value. This change allows for timep to handle arbitrarily deep nesting without exceeding filesystem limits on maximum file name length.
2. timep now sets up its instrumented traps using BASH_ENV. this allows the instrumentation to automatically bootstrap itself into any scripts / new bash processes run by the profiled code. In other words, if the code being profiled calls a script, that script now gets automatically profiled too.
3. The way that times were calculated from recorded tim,estamps and merged up has been reworked, making it more robust and making the timing information shown by timep's profile more accurate.
4. The main output profile's structure has been channged. It no longer includes a 2nd copy of the execution tree diagram at the start. This change allows the profile to stay aligned in deeply nested sequences, making it much easier to read as well as easier to parse by machine.

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
* the "TOTAL RUN TIME"  represents the combined sum of the "wall-clock time" from the main process being profiled + all of its bash descendant processes. If it has no descendants (i.e., it never forks a background process that runs asynchronously) then this is just the standard "wall-clock time". For code that runs several processes in parallel it is similiar to the "total CPU time (sys+user)", except that it combines the wall-clock time that each process ran for.
* The "TOTAL CPU TIME" is equivalent to the combined sys+user time from other timing tools.

The big difference between these is that:
1. TOTAL RUN TIME includes time spent idling and waiting (via `wait`, a blocking read, waiting on I/O, etc), when cpu usage was basically zero but the process was still running, and
2. if you call a binary (not a shell script) that is inherently multithreaded, TOTAL RUN TIME adds th time it waited for the binary to finish, and TOTAL CPU TIME adds the total cpu time used the binary used.

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

1.1.0:          ( 0.552473s |100.00% )            ( 0.555453s |100.00% )                (1x)    << (FUNCTION): main.timep_runFunc.testfunc "${@}" >>
1.2.0:          ( 0.000060s |  0.01% |  0.01% )   ( 0.000074s |  0.01% |  0.01% )       (1x)    testfunc "${@}"

2.2.0:          ( 0.022306s |  4.03% |  4.03% )   ( 0.022245s |  4.00% |  4.00% )       (1x)    trap 'echo RETURN' RETURN

5.2.0:          ( 0.001836s |  0.33% |  0.33% )   ( 0.001844s |  0.33% |  0.33% )       (1x)    TRAP (RETURN): echo RETURN

11.2.0:         ( 0.000065s |  0.01% |  0.01% )   ( 0.000078s |  0.01% |  0.01% )       (1x)    echo 0

12.2.0:         ( 0.000620s |  0.11% |  0.11% )   ( 0.000485s |  0.08% |  0.08% )       (1x)    echo 1

13.2.0:         ( 0.000075s |  0.01% |  0.01% )   ( 0.000089s |  0.01% |  0.01% )       (1x)    << (SUBSHELL) >>
13.3.0:         ( 0.000075s |  0.01% |100.00% )   ( 0.000089s |  0.01% |100.00% )       (1x)     └─echo 2

14.2.0:         ( 0.000559s |  0.10% |  0.10% )   ( 0.000590s |  0.10% |  0.10% )       (1x)    echo 3 (&)

15.2.0:         ( 0.000288s |  0.05% |  0.05% )   ( 0.000338s |  0.06% |  0.06% )       (1x)    << (BACKGROUND FORK) >>
15.3.0:         ( 0.000288s |  0.05% |100.00% )   ( 0.000338s |  0.06% |100.00% )       (1x)     └─echo 4

16.2.0:         ( 0.005284s |  0.95% |  0.95% )   ( 0.010144s |  1.82% |  1.82% )       (1x)    echo 5 | cat | tee

18.2.0:         ( 0.000068s |  0.01% |  0.01% )   ( 0.000083s |  0.01% |  0.01% )       (1x)    ((kk=6))

18.2.0:         ( 0.000242s |  0.04% |  0.01% )   ( 0.000299s |  0.05% |  0.01% )       (4x)    ((kk++ ))

18.2.1:         ( 0.000328s |  0.05% |  0.01% )   ( 0.000398s |  0.07% |  0.01% )       (5x)    ((kk<10))

19.2.0:         ( 0.000293s |  0.05% |  0.01% )   ( 0.000348s |  0.06% |  0.01% )       (4x)    echo $kk

20.2.0:         ( 0.134707s | 24.38% |  6.09% )   ( 0.134322s | 24.18% |  6.04% )       (4x)    << (FUNCTION): main.timep_runFunc.testfunc.h $kk >>
1.3.0:          ( 0.000275s |  0.04% |  0.20% )   ( 0.000336s |  0.06% |  0.25% )       (4x)     ├─h $kk
2.3.0:          ( 0.000300s |  0.05% |  0.22% )   ( 0.000358s |  0.06% |  0.26% )       (4x)     │ echo "h: $*"
3.3.0:          ( 0.007689s |  1.39% |  5.70% )   ( 0.007818s |  1.40% |  5.82% )       (4x)     │ << (FUNCTION): main.timep_runFunc.testfunc.h.f "$@" >>
1.4.0:          ( 0.000239s |  0.04% |  3.10% )   ( 0.000290s |  0.05% |  3.70% )       (4x)     │  ├─f "$@"
2.4.0:          ( 0.000317s |  0.05% |  4.12% )   ( 0.000362s |  0.06% |  4.63% )       (4x)     │  │ echo "f: $*"
2.4.1:          ( 0.007133s |  1.29% | 92.76% )   ( 0.007166s |  1.29% | 91.66% )       (4x)     │  └─TRAP (RETURN): echo RETURN
4.3.0:          ( 0.119137s | 21.56% | 88.44% )   ( 0.118469s | 21.32% | 88.19% )       (4x)     │ << (FUNCTION): main.timep_runFunc.testfunc.h.g "$@" >>
1.4.0:          ( 0.003478s |  0.62% |  2.91% )   ( 0.003014s |  0.54% |  2.54% )       (4x)     │  ├─g "$@"
2.4.0:          ( 0.103596s | 18.75% | 86.95% )   ( 0.103356s | 18.60% | 87.24% )       (4x)     │  │ << (SUBSHELL) >>
2.5.0:          ( 0.095524s | 17.29% | 92.20% )   ( 0.095191s | 17.13% | 92.10% )       (4x)     │  │  ├─trap 'echo EXIT' EXIT
2.5.1:          ( 0.000363s |  0.06% |  0.35% )   ( 0.000426s |  0.07% |  0.41% )       (4x)     │  │  │ echo "g: $*"
-432.5.0:       ( 0.007709s |  1.39% |  7.44% )   ( 0.007739s |  1.39% |  7.48% )       (4x)     │  │  └─TRAP (EXIT): echo EXIT
2.4.1:          ( 0.012063s |  2.18% | 10.12% )   ( 0.012099s |  2.17% | 10.21% )       (4x)     │  └─TRAP (RETURN): echo RETURN
1.3.0:          ( 0.007306s |  1.32% |  5.42% )   ( 0.007341s |  1.32% |  5.46% )       (4x)     └─TRAP (RETURN): echo RETURN

21.2.0:         ( 0.000754s |  0.13% |  0.01% )   ( 0.000936s |  0.16% |  0.01% )       (12x)   for jj in {1..3}

22.2.0:         ( 0.023059s |  4.17% |  0.34% )   ( 0.023479s |  4.22% |  0.35% )       (12x)   << (FUNCTION): main.timep_runFunc.testfunc.f $kk $jj >>
1.3.0:          ( 0.000805s |  0.14% |  3.49% )   ( 0.000976s |  0.17% |  4.15% )       (12x)    ├─f $kk $jj
2.3.0:          ( 0.000931s |  0.16% |  4.03% )   ( 0.001087s |  0.19% |  4.62% )       (12x)    │ echo "f: $*"
2.3.1:          ( 0.021323s |  3.85% | 92.47% )   ( 0.021416s |  3.85% | 91.21% )       (12x)    └─TRAP (RETURN): echo RETURN

23.2.0:         ( 0.361929s | 65.51% |  5.45% )   ( 0.359701s | 64.75% |  5.39% )       (12x)   << (FUNCTION): main.timep_runFunc.testfunc.g $kk $jj >>
1.3.0:          ( 0.012205s |  2.20% |  3.37% )   ( 0.010577s |  1.90% |  2.94% )       (12x)    ├─g $kk $jj
2.3.0:          ( 0.310136s | 56.13% | 85.68% )   ( 0.309450s | 55.71% | 86.02% )       (12x)    │ << (SUBSHELL) >>
2.4.0:          ( 0.288323s | 52.18% | 92.96% )   ( 0.287389s | 51.73% | 92.87% )       (12x)    │  ├─trap 'echo EXIT' EXIT
2.4.1:          ( 0.000940s |  0.17% |  0.30% )   ( 0.001102s |  0.19% |  0.35% )       (12x)    │  │ echo "g: $*"
-432.4.0:       ( 0.020873s |  3.77% |  6.73% )   ( 0.020959s |  3.77% |  6.77% )       (12x)    │  └─TRAP (EXIT): echo EXIT
2.3.1:          ( 0.039588s |  7.16% | 10.93% )   ( 0.039674s |  7.14% | 11.02% )       (12x)    └─TRAP (RETURN): echo RETURN

TOTAL RUN TIME: 0.552473s
TOTAL CPU TIME: 0.555453s
```
***

FLAGS: flags can fine-tune `timep`'s behavior. All flags are optional. Flags can be used in any order, but all timep flags must come before listing what to profile.

`-f`, `-s`, and `-c`: Use these flags to force timep to treat the input as a function, script, or list of raw commands (respectively). There is builtin logic to automatically detect this...these flags let you override that logic. 
                      NOTE: in `-c` mode, each timep input argument is run on a separate line in the generated script that timep profiles. (i.e., each input is run as a separate command).

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

After the profiled code has finished running, `timep` goes through the logs and post-processes them. It starts at the deepest nested logs and merges them up (using the indicator lines we logged in the parent logs on every subshell/function init). logs from within a given nesting level are processed in parallel. for each indicator line in the parent logs, the runtime used is the sum of the runtimes in the child log the indicator specifies...it is not computed from the start/end timestamps. As it does this merging it generates 2 logs - one with all the commands + full metadata (the "full" logs) and one with commands repeated in loops merged into a single entry with that shows count + totaltime. It also generates the "full" call-stack trace for use in timep_flamegraph.pl. Finally it moves the top-level merged up logs + flamegraph inputs into the profiles dir, adds some finishing touches/tweaks to make the output useful, adds spatially-equalized colormap indices (based on width-weighted CDF of the individual times) to ensure equal colorspace utilization in the flamegraph, and (if `-F` or `--flame` was passed) generates the flamegraph .svg files.

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

