# timep
`timep` is an efficient and state-of-the-art trap-based profiler for bash code. `timep` generates a per-command execution time profile for the bash code being profiled. As it generates this profile, `timep` logs command runtimes+metadata hierarchically based on both function and subshell nesting depth, mapping and recreating the complete full call-stack tree for the bash code being profiled. 

In addition to the time profile, `timep` will generate outputs consisting of call-stack traces that can be directly used with `flamegraph.pl` (from Brendan Gregg's [FlameGraph repo](https://github.com/brendangregg/FlameGraph)).If you pass `timep` the `--flame` flag, timep will automatically download (if needed) a copy of `flamegraph.pl` and use it to generate both "full" and a "folded" flamegraph SVG images. However, unlike typical flamegraphs (which are are built using stack traces), these flamegraphs are built using bash commands and their associated runtimes, and the different levels representg either function or subshell nesting depth.

-------------------------------------------------------------------------------------------------------------------------------------------

USAGE:     `timep [-s|-f|-c] [-r] [-o <type>] [--flame] [--] << SCRIPT/FUNCTION TO PROFILE >>`
