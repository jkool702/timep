# timep
`timep` is an efficient and state-of-the-art trap-based **time p**rofiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

**CURRENT TIMEP VERSION**: 1.5

**CHANGES IN MOST RECENT UPDATE**: 2 major changes are present in this version:
1. fixes an issue where it was possible (albiet unlikely) that two sub-trees could be combined in the "combined" profile that shouldnt be. This fix involves computing hashs of all the command strings. To do this without sacraficing performance two new loadable builtins were added - timep_crc32 and timep_fnv1a. To ensure that the (now longer) loadable base64 strings didnt cause the environment size to exceed ARG_MAX, the way that the base64-embedded strings are stored and extracted was re-workedso that the base64 strings are never in a function.
2. a github actions workflow was setup to automaticaly compile the timep.so binary from the C source code for several architectures (which is now feasible without any risk of exceeding ARG_MAX). As a result, timepo now supports several more architectures: x86_64, aarch64, armv7, ppc64le, risc-v and s390 are all now supported with a self-extracting base64-embedded timep.so file forn the timep loadables.

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

OUTPUTS: `timep` generates 2 time profilesand (if `-F` or `--flame` is passed) several flamegraph svg images plus 2 stack traces (flamegraph inputs), . These outputs are always saved to disk in the "profiles" directory in the timep tmpdir (by default: /dev/shm/.timep/timep-XXXXXXXX). Upon finishing, `timep` will create a symlink in your PWD at `./timep.profiles` that links to the "profiles" dir that contains all the `timep` outputs.

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
LINE.DEPTH.CMD NUMBER   COMBINED WALL-CLOCK TIME                COMBINED CPU TIME                       COMMAND                             
<line>.<depth>.<cmd>:   ( time | total % | cur depth % )        ( time | total % | cur depth % )        (count) <command>
_____________________   ________________________________        ________________________________        ____________________________________

9.0.0:                  ( 0.026651s |100.00% )            ( 0.032214s |100.00% )                (1x)    << (FUNCTION): main.testfunc "${@}" >>
├─ 1.1.0:               ( 0.000062s |  0.23% )            ( 0.000076s |  0.23% )                (1x)    testfunc "${@}"
│
│  8.1.0:               ( 0.000074s |  0.27% )            ( 0.000089s |  0.27% )                (1x)    echo 0
│
│  9.1.0:               ( 0.000571s |  2.14% )            ( 0.000430s |  1.33% )                (1x)    echo 1
│
│  10.1.0:              ( 0.000077s |  0.28% )            ( 0.000092s |  0.28% )                (1x)    << (SUBSHELL) >>
│  └─ 10.2.0:           ( 0.000077s |  0.28% |100.00% )   ( 0.000092s |  0.28% |100.00% )       (1x)     └─echo 2
│
│  11.1.0:              ( 0.000582s |  2.18% )            ( 0.000595s |  1.84% )                (1x)    echo 3 (&)
│
│  12.1.0:              ( 0.000091s |  0.34% )            ( 0.000112s |  0.34% )                (1x)    << (BACKGROUND FORK) >>
│  └─ 12.2.0:           ( 0.000091s |  0.34% |100.00% )   ( 0.000112s |  0.34% |100.00% )       (1x)     └─echo 4
│
│  13.1.0:              ( 0.004605s | 17.27% )            ( 0.010900s | 33.83% )                (1x)    echo 5 | cat | tee
│
│  15.1.0:              ( 0.000063s |  0.23% )            ( 0.000077s |  0.23% )                (1x)    ((kk=6))
│
│  15.1.0:              ( 0.000248s |  0.93% |  0.23% )   ( 0.000302s |  0.93% |  0.23% )       (4x)    ((kk++ ))
│
│  15.1.1:              ( 0.000313s |  1.17% |  0.23% )   ( 0.000380s |  1.17% |  0.23% )       (5x)    ((kk<10))
│
│  16.1.0:              ( 0.000312s |  1.17% |  0.29% )   ( 0.000350s |  1.08% |  0.27% )       (4x)    echo $kk
│
│  17.1.0:              ( 0.004861s | 18.23% |  4.55% )   ( 0.004706s | 14.60% |  3.65% )       (4x)    << (FUNCTION): main.testfunc.h $kk >>
│  ├─ 1.2.0:            ( 0.000242s |  0.90% |  4.97% )   ( 0.000297s |  0.92% |  6.31% )       (4x)     ├─h $kk
│  │  8.2.0:            ( 0.000290s |  1.08% |  5.96% )   ( 0.000346s |  1.07% |  7.35% )       (4x)     │ echo "h: $*"
│  │  9.2.0:            ( 0.000519s |  1.94% | 10.67% )   ( 0.000630s |  1.95% | 13.38% )       (4x)     │ << (FUNCTION): .f "$@" >>
│  │  ├─ 1.3.0:         ( 0.000231s |  0.86% | 44.50% )   ( 0.000286s |  0.88% | 45.39% )       (4x)     │  ├─f "$@"
│  │  └─ 8.3.0:         ( 0.000288s |  1.08% | 55.49% )   ( 0.000344s |  1.06% | 54.60% )       (4x)     │  └─echo "f: $*"
│  │  10.2.0:           ( 0.003810s | 14.29% | 78.37% )   ( 0.003433s | 10.65% | 72.94% )       (4x)     │ << (FUNCTION): .g "$@" >>
│  │  ├─ 1.3.0:         ( 0.003390s | 12.71% | 88.97% )   ( 0.002951s |  9.16% | 85.95% )       (4x)     │  ├─g "$@"
│  │  │  408.3.0:       ( 0.000420s |  1.57% | 11.02% )   ( 0.000482s |  1.49% | 14.04% )       (4x)     │  │ << (SUBSHELL) >>
│  └─ └─ └─ 408.4.0:    ( 0.000420s |  1.57% |100.00% )   ( 0.000482s |  1.49% |100.00% )       (4x)     └─ └─ └─echo "g: $*"
│
│  18.1.0:              ( 0.000729s |  2.73% |  0.22% )   ( 0.000892s |  2.76% |  0.23% )       (12x)   for jj in {1..3}
│
│  19.1.0:              ( 0.001644s |  6.16% |  0.51% )   ( 0.001973s |  6.12% |  0.51% )       (12x)   << (FUNCTION): main.testfunc.f $kk $jj >>
│  ├─ 1.2.0:            ( 0.000723s |  2.71% | 43.97% )   ( 0.000883s |  2.74% | 44.75% )       (12x)    ├─f $kk $jj
│  └─ 8.2.0:            ( 0.000921s |  3.45% | 56.02% )   ( 0.001090s |  3.38% | 55.24% )       (12x)    └─echo "f: $*"
│
│  20.1.0:              ( 0.012419s | 46.59% |  3.88% )   ( 0.011240s | 34.89% |  2.90% )       (12x)   << (FUNCTION): main.testfunc.g $kk $jj >>
│  ├─ 1.2.0:            ( 0.010556s | 39.60% | 84.99% )   ( 0.009078s | 28.18% | 80.76% )       (12x)    ├─g $kk $jj
│  │  408.2.0:          ( 0.001863s |  6.99% | 15.00% )   ( 0.002162s |  6.71% | 19.23% )       (12x)    │ << (SUBSHELL) >>
└─ └─ └─ 408.3.0:       ( 0.001863s |  6.99% |100.00% )   ( 0.002162s |  6.71% |100.00% )       (12x)    └─ └─echo "g: $*"

TOTAL RUN TIME: 0.026651s
TOTAL CPU TIME: 0.032214s
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

**KNOWN ISSUES**

Due to some of the quirks related to how bash internally works and limitations regarding when bash fires (or doesnt fire) a DEBUG trap, there are a handful of situations where the profile generated by `timep` is slightly off:
* in some deeply nested subshell + background fork sequences, some commands that should be grouped together are split between multiple groups and/or inner nested subshell commands are included in the commands from an outer nested subshell.
* incorrect line numbers on functions that immediately spawn a subshell (e.g., `func() ( ... )`)

