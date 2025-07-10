this test computed several checksums on ~620k small files (max size 2 mb, total size ~14 gb) saved on a ramdisk. It is a copy of `/usr` with max file size limited to 2mb. The actual commands used are below:


```
find /mnt/ramdisk/usr -type f >/mnt/ramdisk/flist

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

timep --flame forkrun ff </mnt/ramdisk/flist >/dev/null
```

In total, this is around 33,900 individual bash commands.

On my system, running forkrun under `time` gave

```
time { forkrun ff </mnt/ramdisk/flist >/dev/null; }

real    0m22.168s
user    6m43.454s
sys     1m37.100s
```

This is a total CPU time (usr + sys) of 8 min 20 sec = 500 seconds

`timep` recorded a total combined time of 543 seconds, indicating the total profiling overhead in the timep profile is under 10%. This is in all liklihood due to forkrun achieving near 100% cpu utilization in this test and the debug trap instrumentation causing, for example, increased contexrt switching.
