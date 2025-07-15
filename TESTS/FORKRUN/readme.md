this test computed several checksums on ~620k small files (max size 2 mb, total size ~14 gb) saved on a ramdisk. It is a copy of `/usr` with max file size limited to 2mb. The actual commands used are below:


```
mkdir -p /mnt/ramdisk
mount | grep -qE '^tmpfs on /mnt/ramdisk ' || sudo mount -t tmpfs tmpfs /mnt/ramdisk 
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

cd /mnt/ramdisk
[[ -d /mnt/ramdisk/forkrun ]] || git clone https://github.com/jkool702/forkrun.git --branch=forkrun_testing_nSpawn_5
. /mnt/ramdisk/forkrun/forkrun.bash
export -f forkrun
export -f _forkrun_getVal


[[ -d /mnt/ramdisk/timep ]] || git clone https://github.com/jkool702/timep.git
. /mnt/ramdisk/timep/timep.bash


timep --flame -c 'forkrun ff </mnt/ramdisk/flist >/dev/null' 'forkrun -z ff </mnt/ramdisk/flist0 >/dev/null'
```

In total, this is around 67,800 individual bash commands. It is a rather demanding test:

```
perf stat -d -d -d  "$BASH" -O extglob  -c 'forkrun ff </mnt/ramdisk/flist >/dev/null; forkrun -z ff </mnt/ramdisk/flist0 >/dev/null'
```

gives

```

 Performance counter stats for '/usr/bin/bash -O extglob -c forkrun ff </mnt/ramdisk/flist >/dev/null; forkrun -z ff </mnt/ramdisk/flist0 >/dev/null':

      1,006,809.99 msec task-clock                       #   22.765 CPUs utilized             
            75,085      context-switches                 #   74.577 /sec                      
            10,528      cpu-migrations                   #   10.457 /sec                      
        13,072,088      page-faults                      #   12.984 K/sec                     
 6,021,119,138,347      instructions                     #    1.49  insn per cycle              (38.46%)
 4,030,208,270,125      cycles                           #    4.003 GHz                         (38.47%)
   283,281,503,152      branches                         #  281.365 M/sec                       (38.47%)
     2,415,987,569      branch-misses                    #    0.85% of all branches             (38.47%)
   706,997,289,462      L1-dcache-loads                  #  702.215 M/sec                       (38.47%)
    29,472,351,677      L1-dcache-load-misses            #    4.17% of all L1-dcache accesses   (30.78%)
     3,513,778,842      LLC-loads                        #    3.490 M/sec                       (30.78%)
     2,874,334,001      LLC-load-misses                  #   81.80% of all LL-cache accesses    (30.77%)
    26,384,005,984      L1-icache-load-misses                                                   (30.77%)
   706,782,039,909      dTLB-loads                       #  702.001 M/sec                       (30.75%)
       239,914,225      dTLB-load-misses                 #    0.03% of all dTLB cache accesses  (30.75%)
       291,435,141      iTLB-loads                       #  289.464 K/sec                       (30.76%)
       204,748,181      iTLB-load-misses                 #   70.26% of all iTLB cache accesses  (30.77%)

      44.226257320 seconds time elapsed

     811.313597000 seconds user
     187.668289000 seconds sys

```

Total CPU time here is user time + sys time = 1006 seconds. runtime is 44.2 seconds. Average CPU utilization (on a 14C/28T cpu) is just under 23 cores.

Running the command with time gives

```
real    0m44.174s
user    13m31.967s
sys     3m12.772s
```

Compared to the time output timep outputs when you pass the `--time` flag

```
real    0m47.793s
user    14m52.670s
sys     3m7.439s
```

And we see that the timing instrumentation overhead is ~8% for both wall clock time (44.174 sec vs 47.793 sec) and total CPU time (~1080 sec vs ~1004 sec). Note that the vast majority of that overhead happens between one commands end timestamp and the next commands start timestamp, and as such does not effect the time profile that was generated.


