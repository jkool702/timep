# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**CURRENT TIMEP VERSION**: 1.6.1

**CHANGES IN MOST RECENT UPDATE**: The changes in this release are largely geared towards various bug fixes and ensuring timep works correctly in more situations. this includes:
* line numbers for subshells inside of functions are now correct
* timep now works if the code being profiled uses `set -e` or `set -u`
* timep now enforces `set -T` like it does `set -m` - if it is disabled timep automatically re-enables it
* there is now a mechanism (which can be disabled via an environment variable) which will cause orphaned processes to automatically exit after the main timep profiling run finishes
* trap handler events are dealt with more robustly
timep v1.6.1: loadables have been recompiled so that they can bind output to array variables or standard variables.

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
LINE.DEPTH.CMD NUMBER   COMBINED WALL-CLOCK TIME          COMBINED CPU TIME                     COMMAND
<line>.<depth>.<cmd>:   ( time | total % | cur depth % )  ( time | total % | cur depth % )      (count) <command>
_____________________   __________________________________________________________________      ____________________________________

1.0.0:                  ( 0.029128s |100.00% )            ( 0.034961s |100.00% )                (1x)    << (FUNCTION): main.testfunc "${@}" >>
├─ 1.1.0:               ( 0.000069s |  0.23% )            ( 0.000082s |  0.23% )                (1x)    testfunc "${@}"
│
│  12.1.0:              ( 0.000074s |  0.25% )            ( 0.000088s |  0.25% )                (1x)    echo 0
│
│  13.1.0:              ( 0.000718s |  2.46% )            ( 0.000592s |  1.69% )                (1x)    echo 1
│
│  14.1.0:              ( 0.000115s |  0.39% )            ( 0.000135s |  0.38% )                (1x)    << (SUBSHELL) >>
│  └─ 14.2.0:           ( 0.000115s |  0.39% |100.00% )   ( 0.000135s |  0.38% |100.00% )       (1x)     └─echo 2
│
│  15.1.0:              ( 0.000571s |  1.96% )            ( 0.000586s |  1.67% )                (1x)    echo 3 (&)
│
│  16.1.0:              ( 0.000080s |  0.27% )            ( 0.000094s |  0.26% )                (1x)    << (BACKGROUND FORK) >>
│  └─ 16.2.0:           ( 0.000080s |  0.27% |100.00% )   ( 0.000094s |  0.26% |100.00% )       (1x)     └─echo 4
│
│  17.1.0:              ( 0.005607s | 19.24% )            ( 0.012484s | 35.70% )                (1x)    echo 5 | cat | tee
│
│  19.1.0:              ( 0.000068s |  0.23% )            ( 0.000082s |  0.23% )                (1x)    ((kk=6))
│
│  19.1.0:              ( 0.000259s |  0.88% |  0.22% )   ( 0.000324s |  0.92% |  0.23% )       (4x)    ((kk++ ))
│
│  19.1.1:              ( 0.000345s |  1.18% |  0.23% )   ( 0.000405s |  1.15% |  0.23% )       (5x)    ((kk<10))
│
│  20.1.0:              ( 0.000304s |  1.04% |  0.26% )   ( 0.000357s |  1.02% |  0.25% )       (4x)    echo $kk
│
│  21.1.0:              ( 0.005835s | 20.03% |  5.00% )   ( 0.005675s | 16.23% |  4.05% )       (4x)    << (FUNCTION): main.testfunc.h $kk >>
│  ├─ 1.2.0:            ( 0.000289s |  0.99% |  4.95% )   ( 0.000353s |  1.00% |  6.22% )       (4x)     ├─h $kk
│  │  12.2.0:           ( 0.000312s |  1.07% |  5.34% )   ( 0.000367s |  1.04% |  6.46% )       (4x)     │ echo "h: $*"
│  │  13.2.0:           ( 0.000554s |  1.90% |  9.49% )   ( 0.000662s |  1.89% | 11.66% )       (4x)     │ << (FUNCTION): main.testfunc.h.f "$@" >>
│  │  ├─ 1.3.0:         ( 0.000257s |  0.88% | 46.38% )   ( 0.000310s |  0.88% | 46.82% )       (4x)     │  ├─f "$@"
│  │  └─ 12.3.0:        ( 0.000297s |  1.01% | 53.61% )   ( 0.000352s |  1.00% | 53.17% )       (4x)     │  └─echo "f: $*"
│  │  14.2.0:           ( 0.004680s | 16.06% | 80.20% )   ( 0.004293s | 12.27% | 75.64% )       (4x)     │ << (FUNCTION): main.testfunc.h.g "$@" >>
│  │  ├─ 1.3.0:         ( 0.003982s | 13.67% | 85.08% )   ( 0.003481s |  9.95% | 81.08% )       (4x)     │  ├─g "$@"
│  │  │  586.3.0:       ( 0.000698s |  2.39% | 14.91% )   ( 0.000812s |  2.32% | 18.91% )       (4x)     │  │ << (SUBSHELL) >>
│  └─ └─ └─ 586.4.0:    ( 0.000698s |  2.39% |100.00% )   ( 0.000812s |  2.32% |100.00% )       (4x)     └─ └─ └─echo "g: $*"
│
│  22.1.0:              ( 0.000806s |  2.76% |  0.23% )   ( 0.000959s |  2.74% |  0.22% )       (12x)   for jj in {1..3}
│
│  23.1.0:              ( 0.001742s |  5.98% |  0.49% )   ( 0.002060s |  5.89% |  0.49% )       (12x)   << (FUNCTION): main.testfunc.f $kk $jj >>
│  ├─ 1.2.0:            ( 0.000734s |  2.51% | 42.13% )   ( 0.000890s |  2.54% | 43.20% )       (12x)    ├─f $kk $jj
│  └─ 12.2.0:           ( 0.001008s |  3.46% | 57.86% )   ( 0.001170s |  3.34% | 56.79% )       (12x)    └─echo "f: $*"
│
│  24.1.0:              ( 0.012535s | 43.03% |  3.58% )   ( 0.011038s | 31.57% |  2.63% )       (12x)   << (FUNCTION): main.testfunc.g $kk $jj >>
│  ├─ 1.2.0:            ( 0.010710s | 36.76% | 85.44% )   ( 0.009037s | 25.84% | 81.87% )       (12x)    ├─g $kk $jj
│  │  586.2.0:          ( 0.001825s |  6.26% | 14.55% )   ( 0.002001s |  5.72% | 18.12% )       (12x)    │ << (SUBSHELL) >>
└─ └─ └─ 586.3.0:       ( 0.001825s |  6.26% |100.00% )   ( 0.002001s |  5.72% |100.00% )       (12x)    └─ └─echo "g: $*"

TOTAL RUN TIME: 0.029128s
TOTAL CPU TIME: 0.034961s
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

