CURRENT VERSION: timep v1.6.1

timep v1.6: The changes in this release are largely geared towards various bug fixes and ensuring timep works correctly in more situations. this includes:
* line numbers for subshells inside of functions are now correct
* timep now works if the code being profiled uses `set -e` or `set -u`
* timep now enforces `set -T` like it does `set -m` - if it is disabled timep automatically re-enables it
* there is now a mechanism (which can be disabled via an environment variable) which will cause orphaned processes to automatically exit after the main timep profiling run finishes
* trap handler events are dealt with more robustly
timep v1.6.1: loadables have been recompiled so that they can bind output to array variables or standard variables.

timep v1.5: 2 major changes are present in this version:
* fixes an issue where it was possible (albiet unlikely) that two sub-trees could be combined in the "combined" profile that shouldnt be. This fix involves computing hashs of all the command strings. To do this without sacraficing performance two new loadable builtins were added - timep_crc32 and timep_fnv1a. To ensure that the (now longer) loadable base64 strings didnt cause the environment size to exceed ARG_MAX, the way that the base64-embedded strings are stored and extracted was re-workedso that the base64 strings are never in a function.
* a github actions workflow was setup to automaticaly compile the timep.so binary from the C source code for several architectures (which is now feasible without any risk of exceeding ARG_MAX). As a result, timepo now supports several more architectures: x86_64, aarch64, armv7, ppc64le, risc-v and s390 are all now supported with a self-extracting base64-embedded timep.so file forn the timep loadables.

timep v1.4: introduces a "signal relay" to minic no-job-control behavior fot INT, TERM, HUP, and QUIT signals. It also includes various minor bug fixes and profile refinements, hardens timep against very long command strings, and reduced memory usage by deleting intermediate logs as they were no lionger needed (instead of all at the end)

timep v1.3: added compressed base64 encoding to put loadables directly in the script. Added aarch64, ppd64le and i686 arch's for the loadable. implemented a major refactoring of the merging logic, making timep dramatically faster for large profiles (4x faster for the forkrun test)

timep v1.2: added time-weighted CDF colorspace normalization for flamegraphs. refined profiler output.

timep v1.1: added the getCPUtime loadable builtin to support also collecting CPU time.

timep v1.0: miscellanious improvements and bug fixes.

timep v0.9: initial release.
