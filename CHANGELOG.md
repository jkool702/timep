CURRENT: timep v1.3

timep v1.3: added compressed base64 encoding to put loadables directly in the script. Added aarch64, ppd64le and i686 arch's for the loadable. implemented a major refactoring of the merging logic, making timep dramatically faster for large profiles (4x faster for the forkrun test)
timep v1.2: added time-weighted CDF colorspace normalization for flamegraphs. refined profiler output.
timep v1.1: added the getCPUtime loadable builtin to support also collecting CPU time.
timep v1.0: miscellanious improvements and bug fixes.
timep v0.9: initial release.
