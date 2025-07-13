POST TYPE: LINK

POST TITLE: timep: a next-gen time-profiler and flamegraph-generator for bash code

LINK TARGET: https://github.com/jkool702/timep/tree/main

POST BODY:

`timep` is a **time p**rofiler for bash code that will give you an accurate per-command execution time breakdown of any bash script or function.

[timep's code is available on github](https://github.com/jkool702/timep/blob/main/timep.bash)

Unlike other profilers, `timep` also recovers and heirarchally records metadata on subshell and function nesting, allowing it to recreate the full call-stack tree for the bash code being profiled. If you call `timep` with the `--flame` flag, it will automatically generate a flamegraph .svg image (where each block represents the wall-clock time spent on a particular command (top level) or its parent subshells/functions (all the other levels).

***

**USAGE**

To use `timep`, download and source the `timep.bash` file from the github repo, then just add `timep` before whatever you want to profile. `timep` handles everything else, including (when needed) redirecting stdin to whatever is being profiled. Example usage:

```
. timep.bash
timep someFunc <input_file
timep --flame /path/to/someScript.bash
```

`timep` will create 2 time profiles for you - one that has every simgle command and full metadata, and one that combines commands repeated in loops and only shown run count + total runtime for each command. By default the 2nd one is shown, but this is configurable via the '-o' flag. Both profiles are always saved to disk.

For more info refer to the README on github and the comments at the top of timep.bash.

**DEPENDENCIES**: the major dependencies are bash 5+ and a mounted procfs (making it Linux-only). Various common commandline binaries (cat chmod find grep mkdir mv rm sed sort tail) are required as well.

* bash 5+ is required because timep fundamentally works by recording `$EPOCHREALTIME` timestamps. In theory you could probably replace each `${EPOCHREALTIME}` with `$(date +"%s.%6N")` to get it to run at bash 4, but it would be considerably less accurate and less efficient.
* mounted procfs it required to read several things (PPID, PGID, TPID, CTTY, PCOMM) from `/proc/<pid>/stat`. `timep` needs these to correctly re-create the call-stack tree. It *might* be possible to get these things from external tools, which would (at the cost of efficiency) allow `timep` to be used outsude of linux. But this would be a considerable undertaking.

***

**EXAMPLES**

Heres an example of the type of output timep generates.

```
testfunc() { f() { echo "f: $*"; }
g() ( echo "g: $*"; )
h() { echo "h: $*"; ff "$@"; gg "$@"; }
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
0.0:                    (0.027931s|100.00%)     (1x) << (FUNCTION): testfunc "${@}" >>
|-- 1.0:                (0.000061s|00.21%|00.21%)       (1x) testfunc "${@}"
|
|   8.0:                (0.000068s|00.24%)      (1x) echo 0
|
|   9.0:                (0.001054s|03.77%)      (1x) echo 1
|
|   10.0:               (0.000209s|00.74%)      (1x) << (SUBSHELL) >>
|   |-- 10.0:           (0.000209s|00.74%|100.00%)      (1x) echo 2
|
|   11.0:               (0.000500s|01.79%)      (1x) echo 3 (&)
|
|   12.0:               (0.000838s|03.00%)      (1x) << (BACKGROUND FORK) >>
|   |-- 12.0:           (0.000072s|00.25%|100.00%)      (1x) echo 4
|
|   13.0:               (0.005274s|18.88%)      (1x) echo 5 | cat | tee
|
|   15.0:               (0.000307s|01.09%)      (5x) ((kk=6))
|
|   15.1:               (0.000310s|01.10%)      (5x) ((kk<10))
|
|   16.0:               (0.000298s|01.06%)      (4x) echo $kk
|
|   17.0:               (0.003739s|13.38%)      (4x) << (FUNCTION): h $kk >>
|   |-- 1.0:            (0.000226s|00.80%|06.08%)       (4x) h $kk
|   |   8.0:            (0.000294s|01.05%|07.86%)       (4x) echo "h: $*"
|   |   9.0:            (0.000528s|01.89%|14.15%)       (4x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000226s|00.80%|42.94%)       (4x) f "$@"
|   |   |-- 8.0:        (0.000302s|01.08%|57.04%)       (4x) echo "f: $*"
|   |   10.0:           (0.002691s|09.63%|71.88%)       (4x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.002353s|08.42%|87.37%)       (4x) g "$@"
|   |   |   330.0:      (0.000338s|01.21%|12.61%)       (4x) << (SUBSHELL) >>
|   |-- |-- |-- 330.0:  (0.000338s|01.21%|100.00%)      (4x) echo "g: $*"
|
|   18.0:               (0.000717s|02.56%)      (12x) for jj in {1..3}
|
|   19.0:               (0.001516s|05.42%)      (12x) << (FUNCTION): f $kk $jj >>
|   |-- 1.0:            (0.000681s|02.43%|44.92%)       (12x) f $kk $jj
|   |-- 8.0:            (0.000835s|02.98%|55.07%)       (12x) echo "f: $*"
|
|   20.0:               (0.013038s|46.67%)      (12x) << (FUNCTION): g $kk $jj >>
|   |-- 1.0:            (0.011424s|40.90%|87.70%)       (12x) g $kk $jj
|   |   330.0:          (0.001614s|05.77%|12.28%)       (12x) << (SUBSHELL) >>
|-- |-- |-- 330.0:      (0.001614s|05.77%|100.00%)      (12x) echo "g: $*"
```

A example on a complex real code: some of you here may have heard of another one of my projects: [forkrun](https://github.com/jkool702/forkrun). It is a tool that runs code for you in parallel using bash coprocs. i used timep on forkrun computing 13 different checksums of a bunch (~620k) of small files (~14gb total) on a ramdisk...twice. I figure this is a good test, since not only is forkrun a technically challenging code to profile, but it is a highly parallel workload. On my 14c/28t i9-7940x this run (with 28 active workers), on average, used just under 23 cores worth of CPU time. the exact code to setup this test is below:

```
mount | grep -F '/mnt/ramdisk' | grep -q 'tmpfs' || sudo mount -t tmpfs tmpfs /mnt/ramdisk
mkdir -p /mnt/ramdisk/usr
rsync -a --max-size=$((1<<22)) /usr/* /mnt/ramdisk/usr
find /mnt/ramdisk/usr -type f >/mnt/ramdisk/flist
find /mnt/ramdisk/usr -type f -print0 >/mnt/ramdisk/flist0
ff() {
sha1sum "${@}"
sha256sum "${@}"
sha512sum "${@}"
sha224sum "${@}"
sha384sum "${@}"
md5sum "${@}"
sum -s "${@}"
sum -r "${@}"
cksum "${@}"
b2sum "${@}"
cksum -a sm3 "${@}"
xxhsum "${@}"
xxhsum -H3 "${@}"
}

export -f ff
timep --flame -c 'forkrun ff </mnt/ramdisk/flist >/dev/null' 'forkrun -z ff </mnt/ramdisk/flist0 >/dev/null;'
```

[this](https://github.com/jkool702/timep/blob/main/TESTS/FORKRUN/flamegraph.svg) is the flamegraph it generated. (NOTE: This flamnegraph *should* zoom in when you click on a layer. To get this behavior you'll probably need to downlod it to your compouter and then open it). You can see both `forkrun` runs (4th, 5th and 6th layer from the top). For each run you can see all 28 workers (2nd+3rd layer from top) + a bit of time that was spent outside of worker processes (mostly a "wait" command). For each worker you can see the 13 checksum algs (top layer), plus the function calls / subshells parent processes.

In this test the "full" profile (that shows each individual command) had close to 70,000 lines, and the collapsed profile (like the example shown above -- repeated commands are collapsed into a "count" + "total runtime") had close to 2,000 lines. This flamegraph makes it vastly easier to understrand how long different parts of the code are taking than sifting through 2000 (or 70000) lines in the output profile.

***

BUGS: I spent a LOT of effort to ensure that `timep` works for virtually any bash code. That said, bash does a bunch of weird stuff internally that makes that difficult.

There are a few known bugs where timep's output is subtly off in some trivial way (see README for details). There are probably some edge cases that ive missed as well. If you notice timep incorrectly profiling some particular code please let me know (comment here, or issue on github) and, if possible, ill do my best to fix it.

***

Hope you all find this useful! Let me know any thoughts / questions / comments below!
