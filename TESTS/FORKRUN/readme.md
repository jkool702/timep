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

In total, this is around 33,900 individual bash commands. It is a rather demanding test:

```
perf stat -v -d -d  "$BASH" -O extglob  -c 'forkrun ff </mnt/ramdisk/flist >/dev/null'
```

gives

```
Performance counter stats for '/usr/bin/bash -O extglob -c forkrun ff </mnt/ramdisk/flist >/dev/null':

        501,649.20 msec task-clock                       #   22.600 CPUs utilized [out of 28 -- CPU is 14c/28t]            
            37,920      context-switches                 #   75.591 /sec                      
             5,491      cpu-migrations                   #   10.946 /sec                      
         6,527,697      page-faults                      #   13.012 K/sec                     
 2,998,955,972,751      instructions                     #    1.49  insn per cycle              (38.45%)
 2,010,094,659,664      cycles                           #    4.007 GHz                         (38.47%)
   141,752,317,177      branches                         #  282.573 M/sec                       (38.47%)
     1,216,244,735      branch-misses                    #    0.86% of all branches             (38.47%)
   352,531,428,649      L1-dcache-loads                  #  702.745 M/sec                       (38.47%)
    14,734,780,607      L1-dcache-load-misses            #    4.18% of all L1-dcache accesses   (30.78%)
     1,761,547,444      LLC-loads                        #    3.512 M/sec                       (30.77%)
     1,435,688,135      LLC-load-misses                  #   81.50% of all LL-cache accesses    (30.77%)
    13,103,605,623      L1-icache-load-misses                                                   (30.76%)
   352,632,120,969      dTLB-loads                       #  702.946 M/sec                       (30.75%)
       123,076,159      dTLB-load-misses                 #    0.03% of all dTLB cache accesses  (30.75%)
       146,278,369      iTLB-loads                       #  291.595 K/sec                       (30.75%)
       101,197,323      iTLB-load-misses                 #   69.18% of all iTLB cache accesses  (30.76%)

      22.196856216 seconds time elapsed

     402.860133000 seconds user
      94.909168000 seconds sys
```

Total CPU time here is user time + sys time = ~498 seconds. Alternately, on my system, running the command through the `time` builtin gave

```
time { forkrun ff </mnt/ramdisk/flist >/dev/null; }

real    0m22.168s
user    6m43.454s
sys     1m37.100s
```

This is a total CPU time (usr + sys) of 8 min 20 sec = 500 seconds

`timep` recorded a total combined time of 543 seconds, indicating the total profiling overhead in the timep profile is under 10%. This is in all liklihood due to forkrun achieving near 100% cpu utilization in this test and the debug trap instrumentation causing, for example, increased contexrt switching.
