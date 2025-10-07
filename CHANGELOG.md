CURRENT VERSION: timep v1.8.1

timep v1.8: In this release, the instrumented DEBUG trap has been refactored to improve accuracy and to avoid missing commands:
* timep now knows how to properly handle backgrounded function calls (e.g., `func &`)
* timep no longer silently drops commands from the profile in a handful of edge cases
* timep, in general, produces more accurate profiles
* timep now suvcesssfully profiles every single "explicitly-designed-to-break-profilers" stress test (under the TESTS dir). A few new stress tests were added as well
* any orphaned logs are now automatically merged up (instead of silently dropped).
* v1.8.1: various bugfix

timep v1.7: This version contains 4 major changes/improvements, in addition to various minor changes and bugfixes:
1. The log files that timep creates as it profiles are now named using the hash of their "nexec" value (a unique identifier that describes their position in the call stack) instead of the raw nexec value. This change allows for timep to handle arbitrarily deep nesting without exceeding filesystem limits on maximum file name length.
2. timep now sets up its instrumented traps using BASH_ENV. this allows the instrumentation to automatically bootstrap itself into any scripts / new bash processes run by the profiled code. In other words, if the code being profiled calls a script, that script now gets automatically profiled too.
3. The way that times were calculated from recorded tim,estamps and merged up has been reworked, making it more robust and making the timing information shown by timep's profile more accurate.
4. The main output profile's structure has been channged. It no longer includes a 2nd copy of the execution tree diagram at the start. This change allows the profile to stay aligned in deeply nested sequences, making it much easier to read as well as easier to parse by machine.

timep v1.6: The changes in this release are largely geared towards various bug fixes and ensuring timep works correctly in more situations. this includes:
* line numbers for subshells inside of functions are now correct
* timep now works if the code being profiled uses `set -e` or `set -u`
* timep now enforces `set -T` like it does `set -m` - if it is disabled timep automatically re-enables it
* there is now a mechanism (which can be disabled via an environment variable) which will cause orphaned processes to automatically exit after the main timep profiling run finishes
* trap handler events are dealt with more robustly
* timep v1.6.1: loadables have been recompiled so that they can bind output to array variables or standard variables.

timep v1.5: 2 major changes are present in this version:
* fixes an issue where it was possible (albiet unlikely) that two sub-trees could be combined in the "combined" profile that shouldnt be. This fix involves computing hashs of all the command strings. To do this without sacraficing performance two new loadable builtins were added - timep_crc32 and timep_fnv1a. To ensure that the (now longer) loadable base64 strings didnt cause the environment size to exceed ARG_MAX, the way that the base64-embedded strings are stored and extracted was re-workedso that the base64 strings are never in a function.
* a github actions workflow was setup to automaticaly compile the timep.so binary from the C source code for several architectures (which is now feasible without any risk of exceeding ARG_MAX). As a result, timepo now supports several more architectures: x86_64, aarch64, armv7, ppc64le, risc-v and s390 are all now supported with a self-extracting base64-embedded timep.so file forn the timep loadables.

timep v1.4: introduces a "signal relay" to minic no-job-control behavior fot INT, TERM, HUP, and QUIT signals. It also includes various minor bug fixes and profile refinements, hardens timep against very long command strings, and reduced memory usage by deleting intermediate logs as they were no lionger needed (instead of all at the end)

timep v1.3: added compressed base64 encoding to put loadables directly in the script. Added aarch64, ppd64le and i686 arch's for the loadable. implemented a major refactoring of the merging logic, making timep dramatically faster for large profiles (4x faster for the forkrun test)

timep v1.2: added time-weighted CDF colorspace normalization for flamegraphs. refined profiler output.

timep v1.1: added the getCPUtime loadable builtin to support also collecting CPU time.

timep v1.0: miscellanious improvements and bug fixes.

timep v0.9: initial release.
