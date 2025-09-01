CURRENT: timep v1.4

* timep 1.4 introduces a "signal relay" to minim no-job-control behavior fot INT, TERM, HUP, and QUIT signals. It also includes various minor bug fixes and profile refinements, hardens timep against very long command strings, and reduced memory usage by deleting intermediate logs as they were no lionger needed (instead of all at the end)
* timep v1.3: added compressed base64 encoding to put loadables directly in the script. Added aarch64, ppd64le and i686 arch's for the loadable. implemented a major refactoring of the merging logic, making timep dramatically faster for large profiles (4x faster for the forkrun test)
* timep v1.2: added time-weighted CDF colorspace normalization for flamegraphs. refined profiler output.
* timep v1.1: added the getCPUtime loadable builtin to support also collecting CPU time.
* timep v1.0: miscellanious improvements and bug fixes.
* timep v0.9: initial release.
