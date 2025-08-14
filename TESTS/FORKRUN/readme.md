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


time { timep -t --flame -c 'forkrun ff </mnt/ramdisk/flist >/dev/null' 'forkrun -z ff </mnt/ramdisk/flist0 >/dev/null'; }
```

In total, this is around 67,800 individual bash commands. It is a rather demanding test:

```
perf stat -d -d -d  "$BASH" -O extglob  -c 'forkrun ff </mnt/ramdisk/flist >/dev/null; forkrun -z ff </mnt/ramdisk/flist0 >/dev/null'
```

gives

```
 Performance counter stats for '/usr/bin/bash -O extglob -c forkrun ff </mnt/ramdisk/flist >/dev/null; forkrun -z ff </mnt/ramdisk/flist0 >/dev/null':

        932,357.49 msec task-clock                       #   23.198 CPUs utilized             
            61,856      context-switches                 #   66.344 /sec                      
            12,400      cpu-migrations                   #   13.300 /sec                      
        13,098,061      page-faults                      #   14.048 K/sec                     
 5,416,131,085,693      instructions                     #    1.45  insn per cycle              (38.46%)
 3,733,733,934,203      cycles                           #    4.005 GHz                         (38.47%)
   277,515,547,361      branches                         #  297.649 M/sec                       (38.47%)
     2,446,979,868      branch-misses                    #    0.88% of all branches             (38.47%)
   652,935,209,234      L1-dcache-loads                  #  700.306 M/sec                       (38.47%)
    27,283,190,852      L1-dcache-load-misses            #    4.18% of all L1-dcache accesses   (30.78%)
     3,240,284,982      LLC-loads                        #    3.475 M/sec                       (30.78%)
     2,594,296,464      LLC-load-misses                  #   80.06% of all LL-cache accesses    (30.77%)
    26,578,857,860      L1-icache-load-misses                                                   (30.76%)
   652,932,689,182      dTLB-loads                       #  700.303 M/sec                       (30.76%)
       239,082,304      dTLB-load-misses                 #    0.04% of all dTLB cache accesses  (30.75%)
       272,519,199      iTLB-loads                       #  292.290 K/sec                       (30.76%)
       210,660,969      iTLB-load-misses                 #   77.30% of all iTLB cache accesses  (30.77%)

      40.190558718 seconds time elapsed

     740.127443000 seconds user
     185.103912000 seconds sys
```

Total CPU time here is user time + sys time = 932.35749 seconds.
CPU time that timep calculated (from summing the cpu time of the >65000 individual commands that were run): 930.520805 seconds.

This indicates that timep's error in total CPU time was LESS THAN 0.2%.

Running the command with time gives

```
real    0m40.318s
user    12m18.914s
sys     3m14.704s
```

Compared to the time output timep outputs when you pass the `--time` flag

```
real    0m44.635s
user    13m59.374s
sys     3m8.388s
```

And we see that the timing instrumentation overhead (on this very demanding parallel workload) is ~10% for both wall clock time (40.318 sec vs 47.793 sec) and total CPU time (~1028 sec vs ~934 sec). Note that the vast majority of that overhead happens between one commands end timestamp and the next commands start timestamp, and as such does not effect the time profile that was generated. In fact, for this test case the overall total CPU time that timep computed (by summinbg together the CPU times of all ~65000 individual bash commands run in this test) was 999.913 seconds - an error of only ~0.5% compared to running the same code without any timep timing instrumentation!
