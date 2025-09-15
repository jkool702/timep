This file contains features that I am either actively working on or am tentatitively planning on adding to `timep` .

**IN ACTIVE DEVELOPMENT**: replace log filenames with hash computed from the logs base nexec string (instead of using the nexec string itself). Currently, extremely deep nesting (30+ lvls) generates such long nexec's that it hits the filename length limit and timep breaks. This will fix that issue.

**NEAR-TERM PLAN**: re-implement how the instrumented traps are setup so thjast they utalize BASH_ENV. I will then export BASH_ENV in the setup, which will make timep automatically bootstrap its instrumentation if the code being profiled calls a script. Currently scripts called by the profiled code are not profiled unless they explicitly call `timep`.

**LONG-TERM PLAN**: add memory profiling and incorporate per-command max memory usage into the traps and flamegraphs.
