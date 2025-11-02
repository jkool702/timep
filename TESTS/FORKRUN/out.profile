LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 505.649357s | 50.13% )            ( 456.753759s | 49.89% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000629s |  0.00% |  0.00% )   ( 0.000325s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 505.648728s | 50.13% | 99.99% )   ( 456.753434s | 49.89% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042738s |  0.00% |  0.00% )   ( 0.042604s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001192s |  0.00% |  0.00% )   ( 0.001037s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.006626s |  0.00% |  0.00% )   ( 0.006626s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.006626s |  0.00% |100.00% )   ( 0.006626s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001110s |  0.00% |  0.00% )   ( 0.001185s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026683s |  0.00% |  0.00% )   ( 0.000941s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 505.563415s | 50.13% | 99.98% )   ( 456.696754s | 49.88% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001797s |  0.00% |  0.00% )   ( 0.002064s |  0.00% |  0.00% )    	(6x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.001797s |  0.00% |100.00% )   ( 0.002064s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003088s |  0.00% |  0.00% )   ( 0.003134s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000113s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000868s |  0.00% |  0.00% )   ( 0.001006s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  8.17% )   ( 0.000085s |  0.00% |  8.44% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000076s |  0.00% |  8.75% )   ( 0.000088s |  0.00% |  8.74% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000066s |  0.00% |  7.60% )   ( 0.000077s |  0.00% |  7.65% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000064s |  0.00% |  7.37% )   ( 0.000076s |  0.00% |  7.55% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.60% )   ( 0.000076s |  0.00% |  7.55% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000068s |  0.00% |  7.83% )   ( 0.000079s |  0.00% |  7.85% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000078s |  0.00% |  7.75% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000112s |  0.00% | 12.90% )   ( 0.000124s |  0.00% | 12.32% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000075s |  0.00% |  8.64% )   ( 0.000086s |  0.00% |  8.54% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000064s |  0.00% |  7.37% )   ( 0.000075s |  0.00% |  7.45% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000078s |  0.00% |  7.75% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000072s |  0.00% |  8.29% )   ( 0.000084s |  0.00% |  8.34% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.006714s |  0.00% |  0.00% )   ( 0.006808s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.001886s |  0.00% |  0.00% )   ( 0.001974s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000167s |  0.00% |  8.85% )   ( 0.000179s |  0.00% |  9.06% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001719s |  0.00% | 91.14% )   ( 0.001795s |  0.00% | 90.93% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003849s |  0.00% |  0.00% )   ( 0.003954s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000114s |  0.00% |100.00% )   ( 0.000129s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001256s |  0.00% |  0.00% )   ( 0.001333s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000501s |  0.00% |  0.00% )   ( 0.000518s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134301s |  0.01% |  0.02% )   ( 0.134033s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000083s |  0.00% |  0.06% )   ( 0.000096s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020961s |  0.00% | 15.60% )   ( 0.020899s |  0.00% | 15.59% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.024599s |  0.00% | 18.31% )   ( 0.024528s |  0.00% | 18.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023366s |  0.00% | 17.39% )   ( 0.023310s |  0.00% | 17.39% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023543s |  0.00% | 17.53% )   ( 0.023489s |  0.00% | 17.52% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023336s |  0.00% | 17.37% )   ( 0.023289s |  0.00% | 17.37% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000067s |  0.00% |  0.04% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018100s |  0.00% | 13.47% )   ( 0.018066s |  0.00% | 13.47% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000104s |  0.00% |  0.07% )   ( 0.000113s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000073s |  0.00% |  0.05% )   ( 0.000085s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000436s |  0.00% |  0.00% )   ( 0.000463s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.377292s |  0.33% |  0.66% )   ( 1.802184s |  0.19% |  0.39% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000213s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023434s |  0.00% |  0.69% )   ( 0.023391s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.024542s |  0.00% |  0.72% )   ( 0.024481s |  0.00% |  1.35% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023494s |  0.00% |  0.69% )   ( 0.023440s |  0.00% |  1.30% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023430s |  0.00% |  0.69% )   ( 0.023385s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023444s |  0.00% |  0.69% )   ( 0.023398s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.087500s |  0.00% |  0.00% )   ( 0.100227s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 1.864995s |  0.18% |  0.08% )   ( 0.116219s |  0.01% |  0.00% )    	(667x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000366s |  0.00% |  0.00% )   ( 0.000418s |  0.00% |  0.01% )    	(2x)	│  │  │  │   continue
521.4.0:        ( 0.087163s |  0.00% |  0.00% )   ( 0.100059s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.086701s |  0.00% |  0.00% )   ( 0.099699s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.086660s |  0.00% |  0.00% )   ( 0.099393s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092462s |  0.00% |  0.00% )   ( 0.101983s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.089230s |  0.00% |  0.00% )   ( 0.101968s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.085668s |  0.00% |  0.00% )   ( 0.098500s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.085789s |  0.00% |  0.00% )   ( 0.098543s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.085817s |  0.00% |  0.00% )   ( 0.098562s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005763s |  0.00% |  0.17% )   ( 0.006191s |  0.00% |  0.34% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002573s |  0.00% |  0.07% )   ( 0.002921s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002573s |  0.00% |100.00% )   ( 0.002921s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.085496s |  0.00% |  0.00% )   ( 0.098207s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085183s |  0.00% |  0.00% )   ( 0.097605s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.083144s |  0.00% |  0.00% )   ( 0.095528s |  0.01% |  0.00% )    	(644x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.089873s |  0.00% |  0.00% )   ( 0.102597s |  0.01% |  0.00% )    	(665x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.086342s |  0.00% |  0.00% )   ( 0.099005s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.085813s |  0.00% |  0.00% )   ( 0.098596s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002779s |  0.00% |  0.00% )   ( 0.003198s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002766s |  0.00% |  0.00% )   ( 0.003177s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.058600s |  0.00% |  0.08% )   ( 0.041607s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003267s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002947s |  0.00% |  0.00% )   ( 0.003352s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.002965s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006904s |  0.00% |  0.20% )   ( 0.006986s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/pAuto
598.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.074144s |  0.00% |  0.01% )   ( 0.074332s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006190s |  0.00% |  0.00% )   ( 0.007088s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000459s |  0.00% |  7.41% )   ( 0.000497s |  0.00% |  7.01% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000080s |  0.00% |  1.29% )   ( 0.000092s |  0.00% |  1.29% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000221s |  0.00% |  3.57% )   ( 0.000234s |  0.00% |  3.30% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000078s |  0.00% |  1.26% )   ( 0.000089s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000085s |  0.00% |  1.37% )   ( 0.000096s |  0.00% |  1.35% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000075s |  0.00% |  1.21% )   ( 0.000087s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000084s |  0.00% |  1.35% )   ( 0.000096s |  0.00% |  1.35% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000075s |  0.00% |  1.21% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000077s |  0.00% |  1.24% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000063s |  0.00% |  1.01% )   ( 0.000074s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000080s |  0.00% |  1.29% )   ( 0.000091s |  0.00% |  1.28% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000097s |  0.00% |  1.56% )   ( 0.000110s |  0.00% |  1.55% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000085s |  0.00% |  1.19% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.40% )   ( 0.000098s |  0.00% |  1.38% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000082s |  0.00% |  1.32% )   ( 0.000091s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.24% )   ( 0.000089s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000089s |  0.00% |  1.43% )   ( 0.000100s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000083s |  0.00% |  1.34% )   ( 0.000092s |  0.00% |  1.29% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000094s |  0.00% |  1.51% )   ( 0.000106s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.22% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.32% )   ( 0.000093s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000076s |  0.00% |  1.22% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000092s |  0.00% |  1.48% )   ( 0.000103s |  0.00% |  1.45% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000099s |  0.00% |  1.59% )   ( 0.000111s |  0.00% |  1.56% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000076s |  0.00% |  1.22% )   ( 0.000086s |  0.00% |  1.21% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000084s |  0.00% |  1.18% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000098s |  0.00% |  1.58% )   ( 0.000109s |  0.00% |  1.53% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000287s |  0.00% |  0.00% )   ( 0.000329s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023751s |  0.00% |  0.00% )   ( 0.023699s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023742s |  0.00% |  0.00% )   ( 0.023700s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023814s |  0.00% |  0.00% )   ( 0.167594s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023001s |  0.00% |  0.00% )   ( 0.022955s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003030s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002845s |  0.00% |  0.00% )   ( 0.003277s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.631951s |  1.84% |  3.68% )   ( 17.946338s |  1.96% |  3.92% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000626s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.631259s |  1.84% | 99.99% )   ( 17.945616s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p0
30.5.0:         ( 0.023279s |  0.00% |  0.12% )   ( 0.023237s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023581s |  0.00% |  0.12% )   ( 0.023536s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023784s |  0.00% |  0.12% )   ( 0.023741s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023795s |  0.00% |  0.12% )   ( 0.023750s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023864s |  0.00% |  0.12% )   ( 0.023823s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001971s |  0.00% |  0.00% )   ( 0.002229s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.001839s |  0.00% |  0.00% )   ( 0.002102s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002539s |  0.00% |  0.00% )   ( 0.002833s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p0
41.5.0:         ( 0.294829s |  0.02% |  0.10% )   ( 0.003423s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002214s |  0.00% |  0.00% )   ( 0.002475s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.001982s |  0.00% |  0.00% )   ( 0.002256s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.001852s |  0.00% |  0.00% )   ( 0.002118s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002053s |  0.00% |  0.00% )   ( 0.002325s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.014794s |  0.00% |  0.00% )   ( 0.015011s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001855s |  0.00% |  0.00% )   ( 0.002126s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001857s |  0.00% |  0.00% )   ( 0.002128s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002027s |  0.00% |  0.00% )   ( 0.002300s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005294s |  0.00% |  0.00% )   ( 0.002698s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p0
66.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.002182s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001923s |  0.00% |  0.00% )   ( 0.002195s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.157637s |  1.80% |  6.96% )   ( 17.766368s |  1.94% |  7.07% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001940s |  0.00% |  0.01% )   ( 0.002205s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.169286s |  0.11% |  6.43% )   ( 1.161972s |  0.12% |  6.54% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.363074s |  0.23% | 13.01% )   ( 2.332762s |  0.25% | 13.13% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.857991s |  0.18% | 10.23% )   ( 1.762469s |  0.19% |  9.92% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.394680s |  0.23% | 13.18% )   ( 2.320787s |  0.25% | 13.06% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.774120s |  0.17% |  9.77% )   ( 1.740730s |  0.19% |  9.79% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.100169s |  0.10% |  6.05% )   ( 1.062135s |  0.11% |  5.97% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.370861s |  0.03% |  2.04% )   ( 0.361756s |  0.03% |  2.03% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.175775s |  0.11% |  6.47% )   ( 1.147027s |  0.12% |  6.45% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.309018s |  0.03% |  1.70% )   ( 0.301013s |  0.03% |  1.69% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472318s |  0.14% |  8.10% )   ( 1.458857s |  0.15% |  8.21% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.530364s |  0.35% | 19.44% )   ( 3.487969s |  0.38% | 19.63% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.332003s |  0.03% |  1.82% )   ( 0.322244s |  0.03% |  1.81% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.306038s |  0.03% |  1.68% )   ( 0.304442s |  0.03% |  1.71% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004090s |  0.00% |  0.00% )   ( 0.002130s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001771s |  0.00% |  0.00% )   ( 0.002027s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001879s |  0.00% |  0.00% )   ( 0.002103s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005094s |  0.00% |  0.02% )   ( 0.005178s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002809s |  0.00% |  0.00% )   ( 0.003244s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 16.432124s |  1.62% |  3.25% )   ( 15.486097s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000604s |  0.00% |  0.00% )   ( 0.000620s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 16.431437s |  1.62% | 99.99% )   ( 15.485381s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p1
30.5.0:         ( 0.025214s |  0.00% |  0.15% )   ( 0.025173s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023746s |  0.00% |  0.14% )   ( 0.023717s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023671s |  0.00% |  0.14% )   ( 0.023628s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023869s |  0.00% |  0.14% )   ( 0.023828s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023818s |  0.00% |  0.14% )   ( 0.023775s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005314s |  0.00% |  0.00% )   ( 0.005952s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004858s |  0.00% |  0.00% )   ( 0.005475s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005823s |  0.00% |  0.00% )   ( 0.006464s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p1
41.5.0:         ( 0.389990s |  0.03% |  0.07% )   ( 0.007761s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004995s |  0.00% |  0.00% )   ( 0.005576s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004429s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004621s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004932s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034171s |  0.00% |  0.00% )   ( 0.034639s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008931s |  0.00% |  0.00% )   ( 0.005018s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005157s |  0.00% |  0.00% )   ( 0.005708s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p1
66.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 15.798903s |  1.56% |  3.20% )   ( 15.229695s |  1.66% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004271s |  0.00% |  0.02% )   ( 0.004859s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.094094s |  0.10% |  6.92% )   ( 1.006884s |  0.10% |  6.61% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.676578s |  0.16% | 10.61% )   ( 1.665366s |  0.18% | 10.93% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.495744s |  0.14% |  9.46% )   ( 1.474941s |  0.16% |  9.68% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.668280s |  0.16% | 10.55% )   ( 1.644962s |  0.17% | 10.80% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.449679s |  0.14% |  9.17% )   ( 1.415683s |  0.15% |  9.29% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.010336s |  0.10% |  6.39% )   ( 0.949600s |  0.10% |  6.23% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.612062s |  0.06% |  3.87% )   ( 0.557613s |  0.06% |  3.66% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038344s |  0.10% |  6.57% )   ( 0.966111s |  0.10% |  6.34% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.534685s |  0.05% |  3.38% )   ( 0.497094s |  0.05% |  3.26% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337883s |  0.13% |  8.46% )   ( 1.300580s |  0.14% |  8.53% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.708874s |  0.26% | 17.14% )   ( 2.632823s |  0.28% | 17.28% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.575687s |  0.05% |  3.64% )   ( 0.561688s |  0.06% |  3.68% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.592386s |  0.05% |  3.74% )   ( 0.551491s |  0.06% |  3.62% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004669s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004444s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008940s |  0.00% |  0.05% )   ( 0.009023s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.095226s |  1.69% |  3.38% )   ( 16.483238s |  1.80% |  3.60% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000582s |  0.00% |  0.00% )   ( 0.000598s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.094556s |  1.69% | 99.99% )   ( 16.482543s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p2
30.5.0:         ( 0.023531s |  0.00% |  0.13% )   ( 0.023488s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023721s |  0.00% |  0.13% )   ( 0.023674s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023821s |  0.00% |  0.13% )   ( 0.023775s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023909s |  0.00% |  0.13% )   ( 0.023868s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023876s |  0.00% |  0.13% )   ( 0.023830s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003209s |  0.00% |  0.00% )   ( 0.003615s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p2
41.5.0:         ( 0.368009s |  0.03% |  0.09% )   ( 0.005433s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003476s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003297s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003092s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003332s |  0.00% |  0.00% )   ( 0.003752s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025978s |  0.00% |  0.00% )   ( 0.026302s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003256s |  0.00% |  0.00% )   ( 0.003683s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003259s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.012786s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p2
66.5.0:         ( 0.003056s |  0.00% |  0.00% )   ( 0.003497s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002955s |  0.00% |  0.00% )   ( 0.003367s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000229s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.509494s |  1.63% |  4.38% )   ( 16.262073s |  1.77% |  4.48% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003143s |  0.00% |  0.01% )   ( 0.003546s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.104930s |  0.10% |  6.69% )   ( 1.083385s |  0.11% |  6.66% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.935287s |  0.19% | 11.72% )   ( 1.913121s |  0.20% | 11.76% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.586975s |  0.15% |  9.61% )   ( 1.560544s |  0.17% |  9.59% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.971798s |  0.19% | 11.94% )   ( 1.934557s |  0.21% | 11.89% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.541399s |  0.15% |  9.33% )   ( 1.513347s |  0.16% |  9.30% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.989672s |  0.09% |  5.99% )   ( 0.981560s |  0.10% |  6.03% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.453833s |  0.04% |  2.74% )   ( 0.454150s |  0.04% |  2.79% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.056922s |  0.10% |  6.40% )   ( 1.052415s |  0.11% |  6.47% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.424508s |  0.04% |  2.57% )   ( 0.395626s |  0.04% |  2.43% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.377142s |  0.13% |  8.34% )   ( 1.329311s |  0.14% |  8.17% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.191302s |  0.31% | 19.33% )   ( 3.173270s |  0.34% | 19.51% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.447953s |  0.04% |  2.71% )   ( 0.449409s |  0.04% |  2.76% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.424630s |  0.04% |  2.57% )   ( 0.417832s |  0.04% |  2.56% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003022s |  0.00% |  0.00% )   ( 0.003436s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002879s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003129s |  0.00% |  0.00% )   ( 0.003527s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008395s |  0.00% |  0.04% )   ( 0.008479s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 16.482932s |  1.63% |  3.26% )   ( 15.504186s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 16.482245s |  1.63% | 99.99% )   ( 15.503478s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p3
30.5.0:         ( 0.023754s |  0.00% |  0.14% )   ( 0.023710s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023792s |  0.00% |  0.14% )   ( 0.023749s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023853s |  0.00% |  0.14% )   ( 0.023810s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023721s |  0.00% |  0.14% )   ( 0.023681s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023900s |  0.00% |  0.14% )   ( 0.023849s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004864s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p3
41.5.0:         ( 0.464173s |  0.04% |  0.10% )   ( 0.006516s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004394s |  0.00% |  0.00% )   ( 0.004920s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003565s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033304s |  0.00% |  0.00% )   ( 0.030725s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003790s |  0.00% |  0.00% )   ( 0.004359s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004523s |  0.00% |  0.00% )   ( 0.005048s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p3
66.5.0:         ( 0.003595s |  0.00% |  0.00% )   ( 0.004086s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003543s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.795279s |  1.56% |  3.83% )   ( 15.268965s |  1.66% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003604s |  0.00% |  0.02% )   ( 0.004038s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.037841s |  0.10% |  6.57% )   ( 1.015742s |  0.11% |  6.65% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.745875s |  0.17% | 11.05% )   ( 1.722810s |  0.18% | 11.28% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.479440s |  0.14% |  9.36% )   ( 1.451170s |  0.15% |  9.50% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.727439s |  0.17% | 10.93% )   ( 1.703280s |  0.18% | 11.15% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.477058s |  0.14% |  9.35% )   ( 1.424719s |  0.15% |  9.33% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016084s |  0.10% |  6.43% )   ( 0.947613s |  0.10% |  6.20% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.545643s |  0.05% |  3.45% )   ( 0.500146s |  0.05% |  3.27% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.007451s |  0.09% |  6.37% )   ( 0.986749s |  0.10% |  6.46% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456614s |  0.04% |  2.89% )   ( 0.444233s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.320037s |  0.13% |  8.35% )   ( 1.292982s |  0.14% |  8.46% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.886423s |  0.28% | 18.27% )   ( 2.786891s |  0.30% | 18.25% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.570819s |  0.05% |  3.61% )   ( 0.499789s |  0.05% |  3.27% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.520951s |  0.05% |  3.29% )   ( 0.488803s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004171s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003874s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004186s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006998s |  0.00% |  0.04% )   ( 0.007097s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 16.879787s |  1.67% |  3.33% )   ( 16.076421s |  1.75% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000601s |  0.00% |  0.00% )   ( 0.000617s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 16.879098s |  1.67% | 99.99% )   ( 16.075704s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p4
30.5.0:         ( 0.023661s |  0.00% |  0.14% )   ( 0.023617s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023908s |  0.00% |  0.14% )   ( 0.023865s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023888s |  0.00% |  0.14% )   ( 0.023847s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023805s |  0.00% |  0.14% )   ( 0.023762s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023904s |  0.00% |  0.14% )   ( 0.023861s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003548s |  0.00% |  0.00% )   ( 0.003982s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003111s |  0.00% |  0.00% )   ( 0.003527s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004514s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p4
41.5.0:         ( 0.292068s |  0.02% |  0.08% )   ( 0.005110s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003168s |  0.00% |  0.00% )   ( 0.003610s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.002980s |  0.00% |  0.00% )   ( 0.003396s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003104s |  0.00% |  0.00% )   ( 0.003504s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025261s |  0.00% |  0.00% )   ( 0.025586s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002909s |  0.00% |  0.00% )   ( 0.003309s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002863s |  0.00% |  0.00% )   ( 0.003232s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006088s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004034s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p4
66.5.0:         ( 0.002916s |  0.00% |  0.00% )   ( 0.003325s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002789s |  0.00% |  0.00% )   ( 0.003157s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.378829s |  1.62% |  4.85% )   ( 15.858581s |  1.73% |  4.93% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002925s |  0.00% |  0.01% )   ( 0.003350s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.074330s |  0.10% |  6.55% )   ( 1.048047s |  0.11% |  6.60% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.884944s |  0.18% | 11.50% )   ( 1.865718s |  0.20% | 11.76% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.567487s |  0.15% |  9.57% )   ( 1.499206s |  0.16% |  9.45% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.917592s |  0.19% | 11.70% )   ( 1.857486s |  0.20% | 11.71% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.475767s |  0.14% |  9.01% )   ( 1.428050s |  0.15% |  9.00% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.994245s |  0.09% |  6.07% )   ( 0.962667s |  0.10% |  6.07% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486272s |  0.04% |  2.96% )   ( 0.444390s |  0.04% |  2.80% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.052718s |  0.10% |  6.42% )   ( 1.020343s |  0.11% |  6.43% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.390317s |  0.03% |  2.38% )   ( 0.381580s |  0.04% |  2.40% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.366420s |  0.13% |  8.34% )   ( 1.322844s |  0.14% |  8.34% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.286878s |  0.32% | 20.06% )   ( 3.184497s |  0.34% | 20.08% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.458098s |  0.04% |  2.79% )   ( 0.426385s |  0.04% |  2.68% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.420836s |  0.04% |  2.56% )   ( 0.414018s |  0.04% |  2.61% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003608s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002809s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003283s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008936s |  0.00% |  0.05% )   ( 0.008954s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 16.460469s |  1.63% |  3.25% )   ( 15.255792s |  1.66% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000609s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 16.459775s |  1.63% | 99.99% )   ( 15.255071s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p5
30.5.0:         ( 0.023731s |  0.00% |  0.14% )   ( 0.023682s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024364s |  0.00% |  0.14% )   ( 0.024314s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.025338s |  0.00% |  0.15% )   ( 0.025289s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.025328s |  0.00% |  0.15% )   ( 0.025276s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023727s |  0.00% |  0.14% )   ( 0.023682s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004972s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003764s |  0.00% |  0.00% )   ( 0.004284s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004946s |  0.00% |  0.00% )   ( 0.005501s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p5
41.5.0:         ( 0.462327s |  0.04% |  0.10% )   ( 0.006809s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004688s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004597s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035717s |  0.00% |  0.00% )   ( 0.033157s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004417s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003915s |  0.00% |  0.00% )   ( 0.004428s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007188s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004958s |  0.00% |  0.00% )   ( 0.005542s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p5
66.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003835s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.755762s |  1.56% |  3.54% )   ( 15.006476s |  1.63% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004085s |  0.00% |  0.02% )   ( 0.004643s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.067948s |  0.10% |  6.77% )   ( 1.001914s |  0.10% |  6.67% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.734538s |  0.17% | 11.00% )   ( 1.662276s |  0.18% | 11.07% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.561405s |  0.15% |  9.91% )   ( 1.448005s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.760087s |  0.17% | 11.17% )   ( 1.667019s |  0.18% | 11.10% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.492680s |  0.14% |  9.47% )   ( 1.394295s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.971960s |  0.09% |  6.16% )   ( 0.925138s |  0.10% |  6.16% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547342s |  0.05% |  3.47% )   ( 0.522345s |  0.05% |  3.48% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.007554s |  0.09% |  6.39% )   ( 0.959947s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.498200s |  0.04% |  3.16% )   ( 0.463641s |  0.05% |  3.08% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.317039s |  0.13% |  8.35% )   ( 1.255984s |  0.13% |  8.36% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.728366s |  0.27% | 17.31% )   ( 2.658288s |  0.29% | 17.71% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537232s |  0.05% |  3.40% )   ( 0.528441s |  0.05% |  3.52% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.527326s |  0.05% |  3.34% )   ( 0.514540s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007426s |  0.00% |  0.00% )   ( 0.004975s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008754s |  0.00% |  0.05% )   ( 0.008839s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.026813s |  1.68% |  3.36% )   ( 15.983567s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000638s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.026088s |  1.68% | 99.99% )   ( 15.982810s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p6
30.5.0:         ( 0.023811s |  0.00% |  0.13% )   ( 0.023765s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023828s |  0.00% |  0.13% )   ( 0.023785s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023865s |  0.00% |  0.14% )   ( 0.023818s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023857s |  0.00% |  0.14% )   ( 0.023812s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023656s |  0.00% |  0.13% )   ( 0.023607s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004749s |  0.00% |  0.00% )   ( 0.005297s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004798s |  0.00% |  0.00% )   ( 0.005360s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p6
41.5.0:         ( 0.441037s |  0.04% |  0.09% )   ( 0.007012s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004547s |  0.00% |  0.00% )   ( 0.005092s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003855s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004190s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032403s |  0.00% |  0.00% )   ( 0.032692s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003835s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008356s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004840s |  0.00% |  0.00% )   ( 0.005369s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p6
66.5.0:         ( 0.006790s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003711s |  0.00% |  0.00% )   ( 0.004209s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.351229s |  1.62% |  3.55% )   ( 15.743456s |  1.71% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003972s |  0.00% |  0.02% )   ( 0.004531s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.134707s |  0.11% |  6.93% )   ( 1.065805s |  0.11% |  6.76% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.874961s |  0.18% | 11.46% )   ( 1.821769s |  0.19% | 11.57% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602713s |  0.15% |  9.80% )   ( 1.566051s |  0.17% |  9.94% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.880844s |  0.18% | 11.50% )   ( 1.840487s |  0.20% | 11.69% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.509290s |  0.14% |  9.23% )   ( 1.487051s |  0.16% |  9.44% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.067125s |  0.10% |  6.52% )   ( 0.977720s |  0.10% |  6.21% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546394s |  0.05% |  3.34% )   ( 0.523506s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.073706s |  0.10% |  6.56% )   ( 1.015073s |  0.11% |  6.44% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.479265s |  0.04% |  2.93% )   ( 0.466359s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337004s |  0.13% |  8.17% )   ( 1.288992s |  0.14% |  8.18% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.726143s |  0.27% | 16.67% )   ( 2.655077s |  0.29% | 16.86% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.553559s |  0.05% |  3.38% )   ( 0.519218s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561546s |  0.05% |  3.43% )   ( 0.511817s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003976s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.006764s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004517s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004884s |  0.00% |  0.02% )   ( 0.004956s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.313876s |  1.71% |  3.42% )   ( 16.470669s |  1.79% |  3.60% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000625s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.313160s |  1.71% | 99.99% )   ( 16.469929s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000379s |  0.00% |  0.00% )   ( 0.000415s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000359s |  0.00% |  0.00% )   ( 0.000403s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p7
30.5.0:         ( 0.024016s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023951s |  0.00% |  0.13% )   ( 0.023902s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023988s |  0.00% |  0.13% )   ( 0.023937s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.024034s |  0.00% |  0.13% )   ( 0.023985s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023957s |  0.00% |  0.13% )   ( 0.023907s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003046s |  0.00% |  0.00% )   ( 0.003431s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002734s |  0.00% |  0.00% )   ( 0.003116s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003499s |  0.00% |  0.00% )   ( 0.003915s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p7
41.5.0:         ( 0.244899s |  0.02% |  0.07% )   ( 0.004376s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003189s |  0.00% |  0.00% )   ( 0.003599s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.002827s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.002614s |  0.00% |  0.00% )   ( 0.002959s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002845s |  0.00% |  0.00% )   ( 0.003220s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021554s |  0.00% |  0.00% )   ( 0.021870s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002545s |  0.00% |  0.00% )   ( 0.002900s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002768s |  0.00% |  0.00% )   ( 0.003138s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002941s |  0.00% |  0.00% )   ( 0.003254s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003413s |  0.00% |  0.00% )   ( 0.003786s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p7
66.5.0:         ( 0.002672s |  0.00% |  0.00% )   ( 0.003054s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002545s |  0.00% |  0.00% )   ( 0.002892s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.874826s |  1.67% |  5.12% )   ( 16.265970s |  1.77% |  5.19% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002622s |  0.00% |  0.01% )   ( 0.002996s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.140406s |  0.11% |  6.75% )   ( 1.051111s |  0.11% |  6.46% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.008407s |  0.19% | 11.90% )   ( 1.950092s |  0.21% | 11.98% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.560891s |  0.15% |  9.24% )   ( 1.551608s |  0.16% |  9.53% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.989041s |  0.19% | 11.78% )   ( 1.930222s |  0.21% | 11.86% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.614991s |  0.16% |  9.57% )   ( 1.489783s |  0.16% |  9.15% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.017940s |  0.10% |  6.03% )   ( 0.975848s |  0.10% |  5.99% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.482956s |  0.04% |  2.86% )   ( 0.432195s |  0.04% |  2.65% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.105181s |  0.10% |  6.54% )   ( 1.051866s |  0.11% |  6.46% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.397145s |  0.03% |  2.35% )   ( 0.377262s |  0.04% |  2.31% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.362553s |  0.13% |  8.07% )   ( 1.334480s |  0.14% |  8.20% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.353777s |  0.33% | 19.87% )   ( 3.314280s |  0.36% | 20.37% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.431648s |  0.04% |  2.55% )   ( 0.413909s |  0.04% |  2.54% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.407268s |  0.04% |  2.41% )   ( 0.390318s |  0.04% |  2.39% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002732s |  0.00% |  0.00% )   ( 0.003097s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002480s |  0.00% |  0.00% )   ( 0.002839s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002724s |  0.00% |  0.00% )   ( 0.003042s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005032s |  0.00% |  0.02% )   ( 0.005044s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 16.710527s |  1.65% |  3.30% )   ( 15.745038s |  1.71% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000627s |  0.00% |  0.00% )   ( 0.000646s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 16.709814s |  1.65% | 99.99% )   ( 15.744294s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p8
30.5.0:         ( 0.023946s |  0.00% |  0.14% )   ( 0.023809s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023933s |  0.00% |  0.14% )   ( 0.023847s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023971s |  0.00% |  0.14% )   ( 0.023836s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023925s |  0.00% |  0.14% )   ( 0.023838s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.024015s |  0.00% |  0.14% )   ( 0.023877s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004508s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004730s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p8
41.5.0:         ( 0.401009s |  0.03% |  0.09% )   ( 0.006549s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004833s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003722s |  0.00% |  0.00% )   ( 0.004222s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031423s |  0.00% |  0.00% )   ( 0.031599s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004609s |  0.00% |  0.00% )   ( 0.005129s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p8
66.5.0:         ( 0.003545s |  0.00% |  0.00% )   ( 0.004070s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003526s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.081195s |  1.59% |  3.84% )   ( 15.502567s |  1.69% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003540s |  0.00% |  0.02% )   ( 0.004023s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.053463s |  0.10% |  6.55% )   ( 1.014750s |  0.11% |  6.54% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.833224s |  0.18% | 11.39% )   ( 1.764352s |  0.19% | 11.38% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.558487s |  0.15% |  9.69% )   ( 1.510446s |  0.16% |  9.74% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.832720s |  0.18% | 11.39% )   ( 1.779010s |  0.19% | 11.47% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.519268s |  0.15% |  9.44% )   ( 1.451837s |  0.15% |  9.36% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.997006s |  0.09% |  6.19% )   ( 0.933143s |  0.10% |  6.01% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.519138s |  0.05% |  3.22% )   ( 0.500054s |  0.05% |  3.22% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.024361s |  0.10% |  6.36% )   ( 0.981834s |  0.10% |  6.33% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.481863s |  0.04% |  2.99% )   ( 0.446585s |  0.04% |  2.88% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.371860s |  0.13% |  8.53% )   ( 1.298924s |  0.14% |  8.37% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.871004s |  0.28% | 17.85% )   ( 2.830714s |  0.30% | 18.25% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.531269s |  0.05% |  3.30% )   ( 0.508646s |  0.05% |  3.28% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483992s |  0.04% |  3.00% )   ( 0.478249s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003828s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003971s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.011001s |  0.00% |  0.06% )   ( 0.011088s |  0.00% |  0.07% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 16.794947s |  1.66% |  3.32% )   ( 16.026770s |  1.75% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000676s |  0.00% |  0.00% )   ( 0.000691s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 16.794180s |  1.66% | 99.99% )   ( 16.025976s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p9
30.5.0:         ( 0.023907s |  0.00% |  0.14% )   ( 0.023861s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023824s |  0.00% |  0.14% )   ( 0.023777s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.023964s |  0.00% |  0.14% )   ( 0.023916s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.023896s |  0.00% |  0.14% )   ( 0.023852s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.023885s |  0.00% |  0.14% )   ( 0.023836s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004104s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003443s |  0.00% |  0.00% )   ( 0.003932s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p9
41.5.0:         ( 0.266615s |  0.02% |  0.06% )   ( 0.005886s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003548s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032185s |  0.00% |  0.00% )   ( 0.028364s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003428s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003364s |  0.00% |  0.00% )   ( 0.003800s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004185s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p9
66.5.0:         ( 0.003420s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003242s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.311039s |  1.61% |  4.04% )   ( 15.799880s |  1.72% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003397s |  0.00% |  0.02% )   ( 0.003841s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.041158s |  0.10% |  6.38% )   ( 1.022383s |  0.11% |  6.47% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.889314s |  0.18% | 11.58% )   ( 1.830434s |  0.19% | 11.58% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.607086s |  0.15% |  9.85% )   ( 1.537304s |  0.16% |  9.72% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.852471s |  0.18% | 11.35% )   ( 1.842182s |  0.20% | 11.65% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.522264s |  0.15% |  9.33% )   ( 1.473559s |  0.16% |  9.32% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.997628s |  0.09% |  6.11% )   ( 0.959472s |  0.10% |  6.07% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486045s |  0.04% |  2.97% )   ( 0.472430s |  0.05% |  2.99% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.013349s |  0.10% |  6.21% )   ( 0.984621s |  0.10% |  6.23% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445701s |  0.04% |  2.73% )   ( 0.416094s |  0.04% |  2.63% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.381658s |  0.13% |  8.47% )   ( 1.319719s |  0.14% |  8.35% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.044522s |  0.30% | 18.66% )   ( 3.010589s |  0.32% | 19.05% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.496233s |  0.04% |  3.04% )   ( 0.469818s |  0.05% |  2.97% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530213s |  0.05% |  3.25% )   ( 0.457434s |  0.04% |  2.89% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003786s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003162s |  0.00% |  0.00% )   ( 0.003602s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003461s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005053s |  0.00% |  0.03% )   ( 0.005161s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 18.528600s |  1.83% |  3.66% )   ( 17.752797s |  1.93% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000695s |  0.00% |  0.00% )   ( 0.000717s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.527812s |  1.83% | 99.99% )   ( 17.751974s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p10
30.5.0:         ( 0.024052s |  0.00% |  0.12% )   ( 0.023982s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023914s |  0.00% |  0.12% )   ( 0.023868s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.024202s |  0.00% |  0.13% )   ( 0.024144s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.024015s |  0.00% |  0.12% )   ( 0.023967s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.024279s |  0.00% |  0.13% )   ( 0.024223s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005061s |  0.00% |  0.00% )   ( 0.005655s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005187s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005682s |  0.00% |  0.00% )   ( 0.006308s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p10
41.5.0:         ( 0.284511s |  0.02% |  0.05% )   ( 0.006887s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004722s |  0.00% |  0.00% )   ( 0.005321s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004373s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004441s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035224s |  0.00% |  0.00% )   ( 0.035663s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004394s |  0.00% |  0.00% )   ( 0.004973s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004955s |  0.00% |  0.00% )   ( 0.005527s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p10
66.5.0:         ( 0.004116s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.007921s |  1.78% |  3.35% )   ( 17.500286s |  1.91% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004175s |  0.00% |  0.02% )   ( 0.004732s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.261450s |  0.12% |  7.00% )   ( 1.245686s |  0.13% |  7.11% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.088917s |  0.20% | 11.59% )   ( 2.014881s |  0.22% | 11.51% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.686722s |  0.16% |  9.36% )   ( 1.657681s |  0.18% |  9.47% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.952690s |  0.19% | 10.84% )   ( 1.928206s |  0.21% | 11.01% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.634020s |  0.16% |  9.07% )   ( 1.570802s |  0.17% |  8.97% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.178150s |  0.11% |  6.54% )   ( 1.109811s |  0.12% |  6.34% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.596614s |  0.05% |  3.31% )   ( 0.564513s |  0.06% |  3.22% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.212840s |  0.12% |  6.73% )   ( 1.144946s |  0.12% |  6.54% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.528597s |  0.05% |  2.93% )   ( 0.510547s |  0.05% |  2.91% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.497113s |  0.14% |  8.31% )   ( 1.465131s |  0.16% |  8.37% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.159739s |  0.31% | 17.54% )   ( 3.135366s |  0.34% | 17.91% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.615664s |  0.06% |  3.41% )   ( 0.593043s |  0.06% |  3.38% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.591230s |  0.05% |  3.28% )   ( 0.554941s |  0.06% |  3.17% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004511s |  0.00% |  0.00% )   ( 0.005098s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004205s |  0.00% |  0.00% )   ( 0.004767s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005169s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006604s |  0.00% |  0.03% )   ( 0.006596s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.586006s |  1.74% |  3.47% )   ( 17.006632s |  1.85% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000699s |  0.00% |  0.00% )   ( 0.000712s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.585218s |  1.74% | 99.99% )   ( 17.005819s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p11
30.5.0:         ( 0.024142s |  0.00% |  0.13% )   ( 0.024064s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023953s |  0.00% |  0.13% )   ( 0.023910s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.026914s |  0.00% |  0.15% )   ( 0.026857s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.045342s |  0.00% |  0.25% )   ( 0.045199s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.044876s |  0.00% |  0.25% )   ( 0.044739s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002870s |  0.00% |  0.00% )   ( 0.003223s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002581s |  0.00% |  0.00% )   ( 0.002921s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003027s |  0.00% |  0.00% )   ( 0.003382s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p11
41.5.0:         ( 0.246710s |  0.02% |  0.08% )   ( 0.004203s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002739s |  0.00% |  0.00% )   ( 0.003086s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.002380s |  0.00% |  0.00% )   ( 0.002683s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.002220s |  0.00% |  0.00% )   ( 0.002538s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002556s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019609s |  0.00% |  0.00% )   ( 0.019889s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002367s |  0.00% |  0.00% )   ( 0.002691s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002370s |  0.00% |  0.00% )   ( 0.002695s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002539s |  0.00% |  0.00% )   ( 0.002863s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002883s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p11
66.5.0:         ( 0.002484s |  0.00% |  0.00% )   ( 0.002803s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002380s |  0.00% |  0.00% )   ( 0.002693s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.106387s |  1.69% |  6.07% )   ( 16.764219s |  1.83% |  6.16% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002232s |  0.00% |  0.01% )   ( 0.002540s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132965s |  0.11% |  6.62% )   ( 1.113661s |  0.12% |  6.64% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.131950s |  0.21% | 12.46% )   ( 2.088434s |  0.22% | 12.45% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.638080s |  0.16% |  9.57% )   ( 1.626822s |  0.17% |  9.70% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.104457s |  0.20% | 12.30% )   ( 2.062157s |  0.22% | 12.30% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561422s |  0.15% |  9.12% )   ( 1.536536s |  0.16% |  9.16% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015069s |  0.10% |  5.93% )   ( 0.973424s |  0.10% |  5.80% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.413086s |  0.04% |  2.41% )   ( 0.384465s |  0.04% |  2.29% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.108399s |  0.10% |  6.47% )   ( 1.068868s |  0.11% |  6.37% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.337710s |  0.03% |  1.97% )   ( 0.324132s |  0.03% |  1.93% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.404347s |  0.13% |  8.20% )   ( 1.362733s |  0.14% |  8.12% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.513829s |  0.34% | 20.54% )   ( 3.492619s |  0.38% | 20.83% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.388330s |  0.03% |  2.27% )   ( 0.377425s |  0.04% |  2.25% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.354511s |  0.03% |  2.07% )   ( 0.350403s |  0.03% |  2.09% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002509s |  0.00% |  0.00% )   ( 0.002840s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002312s |  0.00% |  0.00% )   ( 0.002622s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002533s |  0.00% |  0.00% )   ( 0.002849s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005411s |  0.00% |  0.03% )   ( 0.005475s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.827566s |  1.96% |  3.92% )   ( 18.647719s |  2.03% |  4.08% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000842s |  0.00% |  0.00% )   ( 0.000863s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.826546s |  1.96% | 99.99% )   ( 18.646660s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p12
30.5.0:         ( 0.045772s |  0.00% |  0.23% )   ( 0.045623s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046129s |  0.00% |  0.23% )   ( 0.045914s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.046048s |  0.00% |  0.23% )   ( 0.045884s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.045826s |  0.00% |  0.23% )   ( 0.045661s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.046077s |  0.00% |  0.23% )   ( 0.045914s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004492s |  0.00% |  0.00% )   ( 0.005028s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005126s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p12
41.5.0:         ( 0.508506s |  0.05% |  0.09% )   ( 0.007256s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004794s |  0.00% |  0.00% )   ( 0.005356s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004588s |  0.00% |  0.00% )   ( 0.005178s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004695s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039586s |  0.00% |  0.00% )   ( 0.033129s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005928s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004898s |  0.00% |  0.00% )   ( 0.005451s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p12
66.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.972583s |  1.88% |  3.54% )   ( 18.294152s |  1.99% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003997s |  0.00% |  0.02% )   ( 0.004566s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.379566s |  0.13% |  7.27% )   ( 1.332953s |  0.14% |  7.28% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.165321s |  0.21% | 11.41% )   ( 2.094737s |  0.22% | 11.45% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.807800s |  0.17% |  9.52% )   ( 1.722278s |  0.18% |  9.41% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.143138s |  0.21% | 11.29% )   ( 2.065960s |  0.22% | 11.29% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.717504s |  0.17% |  9.05% )   ( 1.660153s |  0.18% |  9.07% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.213175s |  0.12% |  6.39% )   ( 1.187012s |  0.12% |  6.48% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.617915s |  0.06% |  3.25% )   ( 0.557067s |  0.06% |  3.04% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.285584s |  0.12% |  6.77% )   ( 1.226893s |  0.13% |  6.70% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.532068s |  0.05% |  2.80% )   ( 0.494344s |  0.05% |  2.70% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.576544s |  0.15% |  8.30% )   ( 1.503885s |  0.16% |  8.22% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.358969s |  0.33% | 17.70% )   ( 3.336280s |  0.36% | 18.23% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.595636s |  0.05% |  3.13% )   ( 0.566392s |  0.06% |  3.09% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575366s |  0.05% |  3.03% )   ( 0.541632s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004054s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004965s |  0.00% |  0.02% )   ( 0.005052s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 16.361075s |  1.62% |  3.23% )   ( 15.646004s |  1.70% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001054s |  0.00% |  0.00% )   ( 0.001075s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 16.359869s |  1.62% | 99.99% )   ( 15.644761s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p13
30.5.0:         ( 0.037792s |  0.00% |  0.23% )   ( 0.037665s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038931s |  0.00% |  0.23% )   ( 0.038812s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.031616s |  0.00% |  0.19% )   ( 0.031515s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.029092s |  0.00% |  0.17% )   ( 0.028983s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.026728s |  0.00% |  0.16% )   ( 0.026647s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004437s |  0.00% |  0.00% )   ( 0.004998s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004669s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005042s |  0.00% |  0.00% )   ( 0.005626s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p13
41.5.0:         ( 0.323169s |  0.03% |  0.07% )   ( 0.007013s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004575s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004296s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003615s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036390s |  0.00% |  0.00% )   ( 0.030795s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004169s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004742s |  0.00% |  0.00% )   ( 0.005271s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p13
66.5.0:         ( 0.003774s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003760s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.760310s |  1.56% |  3.70% )   ( 15.359165s |  1.67% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003749s |  0.00% |  0.02% )   ( 0.004245s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.041329s |  0.10% |  6.60% )   ( 1.017593s |  0.11% |  6.62% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.727318s |  0.17% | 10.95% )   ( 1.724192s |  0.18% | 11.22% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.486292s |  0.14% |  9.43% )   ( 1.454963s |  0.15% |  9.47% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.801213s |  0.17% | 11.42% )   ( 1.745603s |  0.19% | 11.36% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.450435s |  0.14% |  9.20% )   ( 1.427253s |  0.15% |  9.29% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.963284s |  0.09% |  6.11% )   ( 0.936658s |  0.10% |  6.09% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.534657s |  0.05% |  3.39% )   ( 0.513208s |  0.05% |  3.34% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.002987s |  0.09% |  6.36% )   ( 0.987491s |  0.10% |  6.42% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.449525s |  0.04% |  2.85% )   ( 0.449681s |  0.04% |  2.92% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379991s |  0.13% |  8.75% )   ( 1.310039s |  0.14% |  8.52% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.846164s |  0.28% | 18.05% )   ( 2.787980s |  0.30% | 18.15% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.544618s |  0.05% |  3.45% )   ( 0.510946s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.528748s |  0.05% |  3.35% )   ( 0.489313s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004524s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003759s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009042s |  0.00% |  0.05% )   ( 0.009123s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 16.391191s |  1.62% |  3.24% )   ( 15.455575s |  1.68% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001026s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 16.390035s |  1.62% | 99.99% )   ( 15.454378s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p14
30.5.0:         ( 0.045585s |  0.00% |  0.27% )   ( 0.045420s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045298s |  0.00% |  0.27% )   ( 0.045147s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.044978s |  0.00% |  0.27% )   ( 0.044809s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.026421s |  0.00% |  0.16% )   ( 0.026363s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.029368s |  0.00% |  0.17% )   ( 0.029269s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004890s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p14
41.5.0:         ( 0.283712s |  0.02% |  0.06% )   ( 0.005947s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004291s |  0.00% |  0.00% )   ( 0.004842s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003763s |  0.00% |  0.00% )   ( 0.004271s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035375s |  0.00% |  0.00% )   ( 0.032553s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004286s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004211s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008192s |  0.00% |  0.00% )   ( 0.004558s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004674s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p14
66.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004283s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003702s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.798214s |  1.56% |  3.70% )   ( 15.142300s |  1.65% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003720s |  0.00% |  0.02% )   ( 0.004234s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.088424s |  0.10% |  6.88% )   ( 1.009294s |  0.11% |  6.66% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.781550s |  0.17% | 11.27% )   ( 1.707270s |  0.18% | 11.27% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.470145s |  0.14% |  9.30% )   ( 1.455812s |  0.15% |  9.61% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.760988s |  0.17% | 11.14% )   ( 1.715443s |  0.18% | 11.32% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.515540s |  0.15% |  9.59% )   ( 1.428623s |  0.15% |  9.43% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.978259s |  0.09% |  6.19% )   ( 0.927486s |  0.10% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577628s |  0.05% |  3.65% )   ( 0.511271s |  0.05% |  3.37% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038046s |  0.10% |  6.57% )   ( 0.959795s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501243s |  0.04% |  3.17% )   ( 0.450377s |  0.04% |  2.97% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.329103s |  0.13% |  8.41% )   ( 1.263263s |  0.13% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.702869s |  0.26% | 17.10% )   ( 2.685544s |  0.29% | 17.73% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.536334s |  0.05% |  3.39% )   ( 0.514015s |  0.05% |  3.39% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.514365s |  0.05% |  3.25% )   ( 0.509873s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004076s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006902s |  0.00% |  0.00% )   ( 0.004518s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009025s |  0.00% |  0.05% )   ( 0.009110s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 16.648471s |  1.65% |  3.29% )   ( 15.382571s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001024s |  0.00% |  0.00% )   ( 0.001045s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 16.647299s |  1.65% | 99.99% )   ( 15.381358s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p15
30.5.0:         ( 0.025432s |  0.00% |  0.15% )   ( 0.025352s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027285s |  0.00% |  0.16% )   ( 0.027207s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.026805s |  0.00% |  0.16% )   ( 0.026711s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.029508s |  0.00% |  0.17% )   ( 0.029420s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.026851s |  0.00% |  0.16% )   ( 0.026756s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005113s |  0.00% |  0.00% )   ( 0.005758s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004578s |  0.00% |  0.00% )   ( 0.005183s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005799s |  0.00% |  0.00% )   ( 0.006418s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p15
41.5.0:         ( 0.493203s |  0.04% |  0.09% )   ( 0.007867s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005218s |  0.00% |  0.00% )   ( 0.005853s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004861s |  0.00% |  0.00% )   ( 0.005502s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004556s |  0.00% |  0.00% )   ( 0.005164s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004653s |  0.00% |  0.00% )   ( 0.005218s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039369s |  0.00% |  0.00% )   ( 0.036871s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004656s |  0.00% |  0.00% )   ( 0.005271s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004396s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005166s |  0.00% |  0.00% )   ( 0.005259s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005511s |  0.00% |  0.00% )   ( 0.006148s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p15
66.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.005012s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004425s |  0.00% |  0.00% )   ( 0.005026s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.891101s |  1.57% |  3.18% )   ( 15.108392s |  1.65% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004374s |  0.00% |  0.02% )   ( 0.004941s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.069207s |  0.10% |  6.72% )   ( 1.035077s |  0.11% |  6.85% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.733091s |  0.17% | 10.90% )   ( 1.670812s |  0.18% | 11.05% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.547787s |  0.15% |  9.73% )   ( 1.453677s |  0.15% |  9.62% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.715850s |  0.17% | 10.79% )   ( 1.643640s |  0.17% | 10.87% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.448017s |  0.14% |  9.11% )   ( 1.378901s |  0.15% |  9.12% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.998036s |  0.09% |  6.28% )   ( 0.957722s |  0.10% |  6.33% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.588201s |  0.05% |  3.70% )   ( 0.565175s |  0.06% |  3.74% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.021895s |  0.10% |  6.43% )   ( 0.944395s |  0.10% |  6.25% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536061s |  0.05% |  3.37% )   ( 0.508698s |  0.05% |  3.36% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.375241s |  0.13% |  8.65% )   ( 1.281601s |  0.14% |  8.48% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.604766s |  0.25% | 16.39% )   ( 2.530688s |  0.27% | 16.75% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.628939s |  0.06% |  3.95% )   ( 0.572852s |  0.06% |  3.79% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.619636s |  0.06% |  3.89% )   ( 0.560213s |  0.06% |  3.70% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004468s |  0.00% |  0.00% )   ( 0.005059s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.009161s |  0.00% |  0.00% )   ( 0.005338s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005014s |  0.00% |  0.03% )   ( 0.005082s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 19.389236s |  1.92% |  3.83% )   ( 18.175781s |  1.98% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001004s |  0.00% |  0.00% )   ( 0.001024s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 19.388083s |  1.92% | 99.99% )   ( 18.174587s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p16
30.5.0:         ( 0.026170s |  0.00% |  0.13% )   ( 0.026088s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026799s |  0.00% |  0.13% )   ( 0.026720s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.035495s |  0.00% |  0.18% )   ( 0.035381s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.033969s |  0.00% |  0.17% )   ( 0.033854s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.041300s |  0.00% |  0.21% )   ( 0.041160s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004798s |  0.00% |  0.00% )   ( 0.005322s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p16
41.5.0:         ( 0.429309s |  0.04% |  0.08% )   ( 0.006881s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004754s |  0.00% |  0.00% )   ( 0.005308s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004249s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003991s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031065s |  0.00% |  0.00% )   ( 0.031492s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003828s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007247s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004646s |  0.00% |  0.00% )   ( 0.005180s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p16
66.5.0:         ( 0.003965s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.688745s |  1.85% |  3.70% )   ( 17.892335s |  1.95% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003694s |  0.00% |  0.01% )   ( 0.004202s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.344569s |  0.13% |  7.19% )   ( 1.321573s |  0.14% |  7.38% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.132513s |  0.21% | 11.41% )   ( 2.034026s |  0.22% | 11.36% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.762778s |  0.17% |  9.43% )   ( 1.675864s |  0.18% |  9.36% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.075765s |  0.20% | 11.10% )   ( 2.023720s |  0.22% | 11.31% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.745275s |  0.17% |  9.33% )   ( 1.643039s |  0.17% |  9.18% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.212559s |  0.12% |  6.48% )   ( 1.172737s |  0.12% |  6.55% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555586s |  0.05% |  2.97% )   ( 0.543942s |  0.05% |  3.04% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.264929s |  0.12% |  6.76% )   ( 1.191439s |  0.13% |  6.65% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.517311s |  0.05% |  2.76% )   ( 0.478863s |  0.05% |  2.67% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.608604s |  0.15% |  8.60% )   ( 1.476132s |  0.16% |  8.25% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.375194s |  0.33% | 18.06% )   ( 3.280729s |  0.35% | 18.33% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.559332s |  0.05% |  2.99% )   ( 0.535727s |  0.05% |  2.99% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530636s |  0.05% |  2.83% )   ( 0.510342s |  0.05% |  2.85% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004104s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004878s |  0.00% |  0.02% )   ( 0.004945s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 16.477333s |  1.63% |  3.25% )   ( 15.220450s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001042s |  0.00% |  0.00% )   ( 0.001068s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 16.476148s |  1.63% | 99.99% )   ( 15.219220s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p17
30.5.0:         ( 0.035260s |  0.00% |  0.21% )   ( 0.035126s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035268s |  0.00% |  0.21% )   ( 0.035142s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.031946s |  0.00% |  0.19% )   ( 0.031819s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.028294s |  0.00% |  0.17% )   ( 0.028203s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.042137s |  0.00% |  0.25% )   ( 0.041994s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004619s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p17
41.5.0:         ( 0.409689s |  0.04% |  0.09% )   ( 0.006443s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004314s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003836s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004078s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037130s |  0.00% |  0.00% )   ( 0.031537s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003466s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004739s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004486s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p17
66.5.0:         ( 0.003625s |  0.00% |  0.00% )   ( 0.004095s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003508s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.784285s |  1.56% |  3.83% )   ( 14.929494s |  1.63% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003611s |  0.00% |  0.02% )   ( 0.004075s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.038105s |  0.10% |  6.57% )   ( 0.994843s |  0.10% |  6.66% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.711106s |  0.16% | 10.84% )   ( 1.688802s |  0.18% | 11.31% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.590355s |  0.15% | 10.07% )   ( 1.418223s |  0.15% |  9.49% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.755408s |  0.17% | 11.12% )   ( 1.681925s |  0.18% | 11.26% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.431686s |  0.14% |  9.07% )   ( 1.392887s |  0.15% |  9.32% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.966367s |  0.09% |  6.12% )   ( 0.895793s |  0.09% |  6.00% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542884s |  0.05% |  3.43% )   ( 0.503853s |  0.05% |  3.37% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.988774s |  0.09% |  6.26% )   ( 0.955025s |  0.10% |  6.39% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.480760s |  0.04% |  3.04% )   ( 0.440446s |  0.04% |  2.95% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.346103s |  0.13% |  8.52% )   ( 1.278983s |  0.13% |  8.56% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.791545s |  0.27% | 17.68% )   ( 2.706138s |  0.29% | 18.12% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.567314s |  0.05% |  3.59% )   ( 0.490136s |  0.05% |  3.28% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.570267s |  0.05% |  3.61% )   ( 0.478365s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004319s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003475s |  0.00% |  0.00% )   ( 0.003931s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008194s |  0.00% |  0.04% )   ( 0.008271s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.307231s |  1.81% |  3.62% )   ( 17.285805s |  1.88% |  3.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001027s |  0.00% |  0.00% )   ( 0.001050s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.306046s |  1.81% | 99.99% )   ( 17.284582s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p18
30.5.0:         ( 0.031110s |  0.00% |  0.16% )   ( 0.030994s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031971s |  0.00% |  0.17% )   ( 0.031819s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.034329s |  0.00% |  0.18% )   ( 0.034201s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.043955s |  0.00% |  0.24% )   ( 0.043785s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.045489s |  0.00% |  0.24% )   ( 0.045341s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004068s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003219s |  0.00% |  0.00% )   ( 0.003661s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p18
41.5.0:         ( 0.451935s |  0.04% |  0.10% )   ( 0.006103s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003867s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003149s |  0.00% |  0.00% )   ( 0.003584s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029059s |  0.00% |  0.00% )   ( 0.028894s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003312s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003352s |  0.00% |  0.00% )   ( 0.003785s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p18
66.5.0:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003668s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003114s |  0.00% |  0.00% )   ( 0.003566s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.576822s |  1.74% |  4.36% )   ( 16.994680s |  1.85% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003269s |  0.00% |  0.01% )   ( 0.003732s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.263808s |  0.12% |  7.19% )   ( 1.206502s |  0.13% |  7.09% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.295133s |  0.22% | 13.05% )   ( 2.189372s |  0.23% | 12.88% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.781830s |  0.17% | 10.13% )   ( 1.724551s |  0.18% | 10.14% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.237858s |  0.22% | 12.73% )   ( 2.193959s |  0.23% | 12.90% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.778416s |  0.17% | 10.11% )   ( 1.705334s |  0.18% | 10.03% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.110070s |  0.11% |  6.31% )   ( 1.089540s |  0.11% |  6.41% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.498309s |  0.04% |  2.83% )   ( 0.487911s |  0.05% |  2.87% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.212972s |  0.12% |  6.90% )   ( 1.168410s |  0.12% |  6.87% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462954s |  0.04% |  2.63% )   ( 0.428181s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.341581s |  0.13% |  7.63% )   ( 1.245708s |  0.13% |  7.32% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.684948s |  0.26% | 15.27% )   ( 2.652691s |  0.28% | 15.60% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.454294s |  0.04% |  2.58% )   ( 0.454649s |  0.04% |  2.67% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.451380s |  0.04% |  2.56% )   ( 0.444140s |  0.04% |  2.61% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003152s |  0.00% |  0.00% )   ( 0.003588s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003068s |  0.00% |  0.00% )   ( 0.003476s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003282s |  0.00% |  0.00% )   ( 0.003698s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005053s |  0.00% |  0.02% )   ( 0.005138s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 15.902777s |  1.57% |  3.14% )   ( 14.662396s |  1.60% |  3.21% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001053s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 15.901575s |  1.57% | 99.99% )   ( 14.661149s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p19
30.5.0:         ( 0.037115s |  0.00% |  0.23% )   ( 0.037011s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.033811s |  0.00% |  0.21% )   ( 0.033707s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.045831s |  0.00% |  0.28% )   ( 0.045674s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.035653s |  0.00% |  0.22% )   ( 0.035543s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.027864s |  0.00% |  0.17% )   ( 0.027782s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004917s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004544s |  0.00% |  0.00% )   ( 0.005128s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005516s |  0.00% |  0.00% )   ( 0.006141s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p19
41.5.0:         ( 0.571987s |  0.05% |  0.12% )   ( 0.008014s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004994s |  0.00% |  0.00% )   ( 0.005582s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004475s |  0.00% |  0.00% )   ( 0.005043s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004215s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034881s |  0.00% |  0.00% )   ( 0.033415s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010141s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005317s |  0.00% |  0.00% )   ( 0.005858s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p19
66.5.0:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.025148s |  1.48% |  3.37% )   ( 14.347093s |  1.56% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004279s |  0.00% |  0.02% )   ( 0.004853s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 0.973157s |  0.09% |  6.47% )   ( 0.963924s |  0.10% |  6.71% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.598798s |  0.15% | 10.64% )   ( 1.565790s |  0.17% | 10.91% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.455016s |  0.14% |  9.68% )   ( 1.379753s |  0.15% |  9.61% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.697426s |  0.16% | 11.29% )   ( 1.567445s |  0.17% | 10.92% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.373879s |  0.13% |  9.14% )   ( 1.327821s |  0.14% |  9.25% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.950907s |  0.09% |  6.32% )   ( 0.896744s |  0.09% |  6.25% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.583435s |  0.05% |  3.88% )   ( 0.535132s |  0.05% |  3.72% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.990560s |  0.09% |  6.59% )   ( 0.901376s |  0.09% |  6.28% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.519039s |  0.05% |  3.45% )   ( 0.477084s |  0.05% |  3.32% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.285408s |  0.12% |  8.55% )   ( 1.237881s |  0.13% |  8.62% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.463478s |  0.24% | 16.39% )   ( 2.427934s |  0.26% | 16.92% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.576636s |  0.05% |  3.83% )   ( 0.533279s |  0.05% |  3.71% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.553130s |  0.05% |  3.68% )   ( 0.528077s |  0.05% |  3.68% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004412s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004945s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit
80.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p* 1>&21
81.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009319s |  0.00% |  0.05% )   ( 0.009301s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 16.275543s |  1.61% |  3.21% )   ( 15.350127s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001054s |  0.00% |  0.00% )   ( 0.001075s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 16.274338s |  1.61% | 99.99% )   ( 15.348881s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p20
30.5.0:         ( 0.046574s |  0.00% |  0.28% )   ( 0.046402s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035906s |  0.00% |  0.22% )   ( 0.035780s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.040878s |  0.00% |  0.25% )   ( 0.040730s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.038990s |  0.00% |  0.23% )   ( 0.038847s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.046821s |  0.00% |  0.28% )   ( 0.046661s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004655s |  0.00% |  0.00% )   ( 0.005217s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004233s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005212s |  0.00% |  0.00% )   ( 0.005748s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p20
41.5.0:         ( 0.438970s |  0.04% |  0.09% )   ( 0.006893s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004528s |  0.00% |  0.00% )   ( 0.005104s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004500s |  0.00% |  0.00% )   ( 0.005094s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004602s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004359s |  0.00% |  0.00% )   ( 0.004917s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033746s |  0.00% |  0.00% )   ( 0.034196s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004827s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p20
66.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.515005s |  1.53% |  3.53% )   ( 15.016097s |  1.64% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003890s |  0.00% |  0.02% )   ( 0.004414s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.035407s |  0.10% |  6.67% )   ( 1.012684s |  0.11% |  6.74% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.807191s |  0.17% | 11.64% )   ( 1.709657s |  0.18% | 11.38% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.505854s |  0.14% |  9.70% )   ( 1.474721s |  0.16% |  9.82% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.709845s |  0.16% | 11.02% )   ( 1.686849s |  0.18% | 11.23% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.448278s |  0.14% |  9.33% )   ( 1.406990s |  0.15% |  9.36% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.980636s |  0.09% |  6.32% )   ( 0.933856s |  0.10% |  6.21% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.576180s |  0.05% |  3.71% )   ( 0.530925s |  0.05% |  3.53% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.033895s |  0.10% |  6.66% )   ( 0.961985s |  0.10% |  6.40% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.470119s |  0.04% |  3.03% )   ( 0.460237s |  0.05% |  3.06% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.272523s |  0.12% |  8.20% )   ( 1.234218s |  0.13% |  8.21% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.588977s |  0.25% | 16.68% )   ( 2.566547s |  0.28% | 17.09% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.539696s |  0.05% |  3.47% )   ( 0.525498s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542514s |  0.05% |  3.49% )   ( 0.507516s |  0.05% |  3.37% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004107s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.006780s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004908s |  0.00% |  0.03% )   ( 0.004972s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.065614s |  1.69% |  3.37% )   ( 16.313639s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001059s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.064409s |  1.69% | 99.99% )   ( 16.312391s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p21
30.5.0:         ( 0.048232s |  0.00% |  0.28% )   ( 0.048029s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024200s |  0.00% |  0.14% )   ( 0.024128s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.032837s |  0.00% |  0.19% )   ( 0.032736s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.035109s |  0.00% |  0.20% )   ( 0.035000s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.048469s |  0.00% |  0.28% )   ( 0.048299s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003561s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003617s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004198s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p21
41.5.0:         ( 0.226867s |  0.02% |  0.06% )   ( 0.004827s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003306s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003178s |  0.00% |  0.00% )   ( 0.003572s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.002865s |  0.00% |  0.00% )   ( 0.003248s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003549s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025324s |  0.00% |  0.00% )   ( 0.025630s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002979s |  0.00% |  0.00% )   ( 0.003378s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002811s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005114s |  0.00% |  0.00% )   ( 0.003454s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003670s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p21
66.5.0:         ( 0.002832s |  0.00% |  0.00% )   ( 0.003234s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002781s |  0.00% |  0.00% )   ( 0.003180s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.564968s |  1.64% |  4.85% )   ( 16.030720s |  1.75% |  4.91% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002842s |  0.00% |  0.01% )   ( 0.003237s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.082386s |  0.10% |  6.53% )   ( 1.022880s |  0.11% |  6.38% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.954523s |  0.19% | 11.79% )   ( 1.925428s |  0.21% | 12.01% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.633889s |  0.16% |  9.86% )   ( 1.571166s |  0.17% |  9.80% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.992466s |  0.19% | 12.02% )   ( 1.923690s |  0.21% | 12.00% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.564602s |  0.15% |  9.44% )   ( 1.505655s |  0.16% |  9.39% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.968148s |  0.09% |  5.84% )   ( 0.947574s |  0.10% |  5.91% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.478662s |  0.04% |  2.88% )   ( 0.435838s |  0.04% |  2.71% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.086045s |  0.10% |  6.55% )   ( 1.012490s |  0.11% |  6.31% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.414262s |  0.04% |  2.50% )   ( 0.379114s |  0.04% |  2.36% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.325237s |  0.13% |  8.00% )   ( 1.309028s |  0.14% |  8.16% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.215888s |  0.31% | 19.41% )   ( 3.157273s |  0.34% | 19.69% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.433732s |  0.04% |  2.61% )   ( 0.429842s |  0.04% |  2.68% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.412286s |  0.04% |  2.48% )   ( 0.407505s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002947s |  0.00% |  0.00% )   ( 0.003308s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002651s |  0.00% |  0.00% )   ( 0.003026s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003373s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005094s |  0.00% |  0.02% )   ( 0.005166s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 19.360913s |  1.91% |  3.82% )   ( 18.833335s |  2.05% |  4.12% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000937s |  0.00% |  0.00% )   ( 0.000961s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 19.359790s |  1.91% | 99.99% )   ( 18.832163s |  2.05% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p22
30.5.0:         ( 0.045762s |  0.00% |  0.23% )   ( 0.045595s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045827s |  0.00% |  0.23% )   ( 0.045651s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.045672s |  0.00% |  0.23% )   ( 0.045502s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.046513s |  0.00% |  0.24% )   ( 0.046335s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.044720s |  0.00% |  0.23% )   ( 0.044546s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002547s |  0.00% |  0.00% )   ( 0.002864s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002253s |  0.00% |  0.00% )   ( 0.002590s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002861s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p22
41.5.0:         ( 0.202816s |  0.02% |  0.06% )   ( 0.003832s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002492s |  0.00% |  0.00% )   ( 0.002815s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.002215s |  0.00% |  0.00% )   ( 0.002506s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.002133s |  0.00% |  0.00% )   ( 0.002442s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002301s |  0.00% |  0.00% )   ( 0.002595s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018177s |  0.00% |  0.00% )   ( 0.018416s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002086s |  0.00% |  0.00% )   ( 0.002397s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002115s |  0.00% |  0.00% )   ( 0.002429s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002320s |  0.00% |  0.00% )   ( 0.002628s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002773s |  0.00% |  0.00% )   ( 0.003096s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p22
66.5.0:         ( 0.002222s |  0.00% |  0.00% )   ( 0.002544s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002171s |  0.00% |  0.00% )   ( 0.002483s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.867304s |  1.87% |  6.49% )   ( 18.534064s |  2.02% |  6.56% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002258s |  0.00% |  0.01% )   ( 0.002569s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.347563s |  0.13% |  7.14% )   ( 1.273062s |  0.13% |  6.86% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.336885s |  0.23% | 12.38% )   ( 2.293034s |  0.25% | 12.37% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.776946s |  0.17% |  9.41% )   ( 1.743010s |  0.19% |  9.40% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.256918s |  0.22% | 11.96% )   ( 2.244857s |  0.24% | 12.11% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.714551s |  0.17% |  9.08% )   ( 1.705285s |  0.18% |  9.20% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.138594s |  0.11% |  6.03% )   ( 1.119523s |  0.12% |  6.04% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.406347s |  0.04% |  2.15% )   ( 0.404867s |  0.04% |  2.18% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.264586s |  0.12% |  6.70% )   ( 1.255448s |  0.13% |  6.77% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.341694s |  0.03% |  1.81% )   ( 0.337464s |  0.03% |  1.82% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.526741s |  0.15% |  8.09% )   ( 1.480627s |  0.16% |  7.98% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.986198s |  0.39% | 21.12% )   ( 3.946177s |  0.43% | 21.29% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.389656s |  0.03% |  2.06% )   ( 0.377712s |  0.04% |  2.03% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.378367s |  0.03% |  2.00% )   ( 0.350429s |  0.03% |  1.89% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002121s |  0.00% |  0.00% )   ( 0.002411s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002089s |  0.00% |  0.00% )   ( 0.002386s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002202s |  0.00% |  0.00% )   ( 0.002485s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004768s |  0.00% |  0.02% )   ( 0.004836s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 15.998550s |  1.58% |  3.16% )   ( 15.137377s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001073s |  0.00% |  0.00% )   ( 0.001096s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 15.997331s |  1.58% | 99.99% )   ( 15.136115s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p23
30.5.0:         ( 0.045383s |  0.00% |  0.28% )   ( 0.045221s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035004s |  0.00% |  0.21% )   ( 0.034863s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.047379s |  0.00% |  0.29% )   ( 0.047199s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.049259s |  0.00% |  0.30% )   ( 0.049059s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.051741s |  0.00% |  0.32% )   ( 0.051498s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004700s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004169s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004954s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p23
41.5.0:         ( 0.304082s |  0.03% |  0.07% )   ( 0.006587s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004543s |  0.00% |  0.00% )   ( 0.005107s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003976s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003667s |  0.00% |  0.00% )   ( 0.004167s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031261s |  0.00% |  0.00% )   ( 0.031525s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003718s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003721s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005345s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004617s |  0.00% |  0.00% )   ( 0.005142s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p23
66.5.0:         ( 0.005586s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003469s |  0.00% |  0.00% )   ( 0.003968s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.358392s |  1.52% |  3.84% )   ( 14.789991s |  1.61% |  3.90% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003708s |  0.00% |  0.02% )   ( 0.004204s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.063882s |  0.10% |  6.92% )   ( 0.999225s |  0.10% |  6.75% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.742477s |  0.17% | 11.34% )   ( 1.667204s |  0.18% | 11.27% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.426531s |  0.14% |  9.28% )   ( 1.398201s |  0.15% |  9.45% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.654058s |  0.16% | 10.76% )   ( 1.637271s |  0.17% | 11.07% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.423900s |  0.14% |  9.27% )   ( 1.380943s |  0.15% |  9.33% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.934034s |  0.09% |  6.08% )   ( 0.903956s |  0.09% |  6.11% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.508991s |  0.05% |  3.31% )   ( 0.496879s |  0.05% |  3.35% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.083429s |  0.10% |  7.05% )   ( 0.948781s |  0.10% |  6.41% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.466156s |  0.04% |  3.03% )   ( 0.440061s |  0.04% |  2.97% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.286013s |  0.12% |  8.37% )   ( 1.250235s |  0.13% |  8.45% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.729142s |  0.27% | 17.76% )   ( 2.677827s |  0.29% | 18.10% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.512189s |  0.05% |  3.33% )   ( 0.504438s |  0.05% |  3.41% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523882s |  0.05% |  3.41% )   ( 0.480766s |  0.05% |  3.25% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003457s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005901s |  0.00% |  0.03% )   ( 0.006009s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.590110s |  1.74% |  3.47% )   ( 16.585014s |  1.81% |  3.63% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001058s |  0.00% |  0.00% )   ( 0.001077s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.588905s |  1.74% | 99.99% )   ( 16.583771s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p24
30.5.0:         ( 0.045978s |  0.00% |  0.26% )   ( 0.045806s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047139s |  0.00% |  0.26% )   ( 0.045537s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.045820s |  0.00% |  0.26% )   ( 0.045637s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.045687s |  0.00% |  0.25% )   ( 0.045486s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.045923s |  0.00% |  0.26% )   ( 0.045730s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004133s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003725s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004374s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p24
41.5.0:         ( 0.363602s |  0.03% |  0.08% )   ( 0.005712s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003629s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003178s |  0.00% |  0.00% )   ( 0.003606s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026531s |  0.00% |  0.00% )   ( 0.026855s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003251s |  0.00% |  0.00% )   ( 0.003685s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003129s |  0.00% |  0.00% )   ( 0.003551s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006480s |  0.00% |  0.00% )   ( 0.003765s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p24
66.5.0:         ( 0.003068s |  0.00% |  0.00% )   ( 0.003529s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002944s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.903424s |  1.67% |  4.36% )   ( 16.254355s |  1.77% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003153s |  0.00% |  0.01% )   ( 0.003585s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.161144s |  0.11% |  6.86% )   ( 1.102787s |  0.12% |  6.78% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.078766s |  0.20% | 12.29% )   ( 1.991889s |  0.21% | 12.25% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.661634s |  0.16% |  9.83% )   ( 1.612846s |  0.17% |  9.92% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.092822s |  0.20% | 12.38% )   ( 1.999544s |  0.21% | 12.30% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.559929s |  0.15% |  9.22% )   ( 1.538543s |  0.16% |  9.46% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005781s |  0.09% |  5.95% )   ( 0.987646s |  0.10% |  6.07% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471209s |  0.04% |  2.78% )   ( 0.460012s |  0.05% |  2.83% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.045995s |  0.10% |  6.18% )   ( 1.013031s |  0.11% |  6.23% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.434172s |  0.04% |  2.56% )   ( 0.401485s |  0.04% |  2.47% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.322108s |  0.13% |  7.82% )   ( 1.275309s |  0.13% |  7.84% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.096735s |  0.30% | 18.32% )   ( 2.971116s |  0.32% | 18.27% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.511861s |  0.05% |  3.02% )   ( 0.460098s |  0.05% |  2.83% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.458115s |  0.04% |  2.71% )   ( 0.436464s |  0.04% |  2.68% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003239s |  0.00% |  0.00% )   ( 0.003588s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003304s |  0.00% |  0.00% )   ( 0.003729s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006152s |  0.00% |  0.03% )   ( 0.006211s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 16.295513s |  1.61% |  3.22% )   ( 15.369048s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001069s |  0.00% |  0.00% )   ( 0.001096s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 16.294293s |  1.61% | 99.99% )   ( 15.367781s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p25
30.5.0:         ( 0.048473s |  0.00% |  0.29% )   ( 0.048282s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051407s |  0.00% |  0.31% )   ( 0.051202s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.049611s |  0.00% |  0.30% )   ( 0.047821s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.049524s |  0.00% |  0.30% )   ( 0.049342s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.051280s |  0.00% |  0.31% )   ( 0.051056s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003319s |  0.00% |  0.00% )   ( 0.003771s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p25
41.5.0:         ( 0.338579s |  0.03% |  0.09% )   ( 0.005428s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003770s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003025s |  0.00% |  0.00% )   ( 0.003446s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003291s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027109s |  0.00% |  0.00% )   ( 0.024385s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003033s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003444s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006448s |  0.00% |  0.00% )   ( 0.003901s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p25
66.5.0:         ( 0.006210s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003059s |  0.00% |  0.00% )   ( 0.003456s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.607945s |  1.54% |  4.56% )   ( 15.018909s |  1.64% |  4.65% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003180s |  0.00% |  0.02% )   ( 0.003604s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.037787s |  0.10% |  6.64% )   ( 0.993731s |  0.10% |  6.61% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.779193s |  0.17% | 11.39% )   ( 1.742258s |  0.19% | 11.60% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.536124s |  0.15% |  9.84% )   ( 1.455811s |  0.15% |  9.69% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.890612s |  0.18% | 12.11% )   ( 1.785605s |  0.19% | 11.88% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.449759s |  0.14% |  9.28% )   ( 1.389575s |  0.15% |  9.25% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.946534s |  0.09% |  6.06% )   ( 0.897346s |  0.09% |  5.97% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.453142s |  0.04% |  2.90% )   ( 0.445393s |  0.04% |  2.96% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.965405s |  0.09% |  6.18% )   ( 0.948329s |  0.10% |  6.31% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.391002s |  0.03% |  2.50% )   ( 0.383801s |  0.04% |  2.55% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.304136s |  0.12% |  8.35% )   ( 1.248028s |  0.13% |  8.30% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.910624s |  0.28% | 18.64% )   ( 2.855829s |  0.31% | 19.01% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.493557s |  0.04% |  3.16% )   ( 0.447843s |  0.04% |  2.98% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.446890s |  0.04% |  2.86% )   ( 0.421756s |  0.04% |  2.80% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003201s |  0.00% |  0.00% )   ( 0.003630s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002856s |  0.00% |  0.00% )   ( 0.003247s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003230s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009208s |  0.00% |  0.05% )   ( 0.009177s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 16.277010s |  1.61% |  3.21% )   ( 15.452822s |  1.68% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001040s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 16.275819s |  1.61% | 99.99% )   ( 15.451593s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p26
30.5.0:         ( 0.048899s |  0.00% |  0.30% )   ( 0.048684s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051202s |  0.00% |  0.31% )   ( 0.051022s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.047814s |  0.00% |  0.29% )   ( 0.047645s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.050686s |  0.00% |  0.31% )   ( 0.050481s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.047203s |  0.00% |  0.29% )   ( 0.047024s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005176s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p26
41.5.0:         ( 0.292177s |  0.02% |  0.07% )   ( 0.006080s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005360s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004074s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003299s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030128s |  0.00% |  0.00% )   ( 0.027505s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003395s |  0.00% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003462s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003615s |  0.00% |  0.00% )   ( 0.004049s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p26
66.5.0:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003831s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003415s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.638848s |  1.55% |  4.17% )   ( 15.097866s |  1.64% |  4.24% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003468s |  0.00% |  0.02% )   ( 0.003941s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.040162s |  0.10% |  6.65% )   ( 1.021488s |  0.11% |  6.76% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.849245s |  0.18% | 11.82% )   ( 1.762591s |  0.19% | 11.67% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.530975s |  0.15% |  9.78% )   ( 1.445365s |  0.15% |  9.57% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.776910s |  0.17% | 11.36% )   ( 1.744776s |  0.19% | 11.55% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.396489s |  0.13% |  8.92% )   ( 1.392008s |  0.15% |  9.21% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.910976s |  0.09% |  5.82% )   ( 0.906470s |  0.09% |  6.00% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.484787s |  0.04% |  3.09% )   ( 0.476096s |  0.05% |  3.15% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.019759s |  0.10% |  6.52% )   ( 0.974881s |  0.10% |  6.45% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.457945s |  0.04% |  2.92% )   ( 0.408551s |  0.04% |  2.70% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.313397s |  0.13% |  8.39% )   ( 1.265183s |  0.13% |  8.37% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.869634s |  0.28% | 18.34% )   ( 2.777207s |  0.30% | 18.39% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487186s |  0.04% |  3.11% )   ( 0.470271s |  0.05% |  3.11% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497915s |  0.04% |  3.18% )   ( 0.449038s |  0.04% |  2.97% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006431s |  0.00% |  0.03% )   ( 0.006492s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 16.072775s |  1.59% |  3.17% )   ( 15.090768s |  1.64% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001159s |  0.00% |  0.00% )   ( 0.001184s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 16.071455s |  1.59% | 99.99% )   ( 15.089402s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qvnRjR"
26.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p27
30.5.0:         ( 0.047201s |  0.00% |  0.29% )   ( 0.046170s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051203s |  0.00% |  0.31% )   ( 0.050058s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1170115 ${BASHPID}' INT
33.5.0:         ( 0.052794s |  0.00% |  0.32% )   ( 0.051565s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1170115 ${BASHPID}' TERM
34.5.0:         ( 0.051496s |  0.00% |  0.32% )   ( 0.050827s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1170115 ${BASHPID}' HUP
35.5.0:         ( 0.048308s |  0.00% |  0.30% )   ( 0.047876s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qvnRjR"/.nLines
38.5.2:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005259s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p27
41.5.0:         ( 0.398397s |  0.03% |  0.09% )   ( 0.006848s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004261s |  0.00% |  0.00% )   ( 0.004782s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.quit ]]
46.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004723s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.done ]]
46.5.1:         ( 0.003532s |  0.00% |  0.00% )   ( 0.004015s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004346s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039459s |  0.00% |  0.00% )   ( 0.030706s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003608s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003763s |  0.00% |  0.00% )   ( 0.004178s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qvnRjR"/.wait/p27
66.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003533s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.308585s |  1.51% |  3.81% )   ( 14.724336s |  1.60% |  3.90% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003577s |  0.00% |  0.02% )   ( 0.004086s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.061365s |  0.10% |  6.93% )   ( 0.981018s |  0.10% |  6.66% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.702334s |  0.16% | 11.12% )   ( 1.646439s |  0.17% | 11.18% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.440428s |  0.14% |  9.40% )   ( 1.395162s |  0.15% |  9.47% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.726465s |  0.17% | 11.27% )   ( 1.654772s |  0.18% | 11.23% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.411081s |  0.13% |  9.21% )   ( 1.366516s |  0.14% |  9.28% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.911552s |  0.09% |  5.95% )   ( 0.905655s |  0.09% |  6.15% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.493909s |  0.04% |  3.22% )   ( 0.488823s |  0.05% |  3.31% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.004427s |  0.09% |  6.56% )   ( 0.925035s |  0.10% |  6.28% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483690s |  0.04% |  3.15% )   ( 0.432118s |  0.04% |  2.93% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.322318s |  0.13% |  8.63% )   ( 1.262084s |  0.13% |  8.57% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.738245s |  0.27% | 17.88% )   ( 2.687025s |  0.29% | 18.24% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518584s |  0.05% |  3.38% )   ( 0.497490s |  0.05% |  3.37% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.490610s |  0.04% |  3.20% )   ( 0.478113s |  0.05% |  3.24% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003717s |  0.00% |  0.00% )   ( 0.004236s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005196s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008933s |  0.00% |  0.05% )   ( 0.009019s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001406s |  0.00% |  0.00% )   ( 0.001419s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 21.603473s |  2.14% |  4.27% )   ( 0.002044s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000186s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000177s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.050934s |  0.00% |  0.01% )   ( 0.051143s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qvnRjR"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.qvnRjR"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1170127  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.qvnRjR"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005308s |  0.00% |  0.00% )   ( 0.002368s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.qvnRjR" 2>/dev/null

10.0.0:         ( 502.848168s | 49.86% )            ( 458.671189s | 50.10% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000681s |  0.00% |  0.00% )   ( 0.000401s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 502.847487s | 49.86% | 99.99% )   ( 458.670788s | 50.10% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.040885s |  0.00% |  0.00% )   ( 0.040783s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000827s |  0.00% |  0.00% )   ( 0.000648s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.004264s |  0.00% |  0.00% )   ( 0.004264s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.004264s |  0.00% |100.00% )   ( 0.004264s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001233s |  0.00% |  0.00% )   ( 0.001306s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026665s |  0.00% |  0.00% )   ( 0.000966s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 502.763821s | 49.85% | 99.98% )   ( 458.615658s | 50.09% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000936s |  0.00% |  0.00% )   ( 0.001093s |  0.00% |  0.00% )    	(6x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000936s |  0.00% |100.00% )   ( 0.001093s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.007025s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000183s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003037s |  0.00% |  0.00% )   ( 0.003088s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000112s |  0.00% |100.00% )   ( 0.000125s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000875s |  0.00% |  0.00% )   ( 0.001027s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.77% )   ( 0.000081s |  0.00% |  7.88% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000084s |  0.00% |  9.60% )   ( 0.000095s |  0.00% |  9.25% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.65% )   ( 0.000078s |  0.00% |  7.59% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.77% )   ( 0.000080s |  0.00% |  7.78% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.54% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000068s |  0.00% |  7.77% )   ( 0.000078s |  0.00% |  7.59% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000065s |  0.00% |  7.42% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000117s |  0.00% | 13.37% )   ( 0.000130s |  0.00% | 12.65% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.54% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.42% )   ( 0.000077s |  0.00% |  7.49% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000068s |  0.00% |  7.77% )   ( 0.000080s |  0.00% |  7.78% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000073s |  0.00% |  8.34% )   ( 0.000097s |  0.00% |  9.44% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.011326s |  0.00% |  0.00% )   ( 0.011451s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002733s |  0.00% |  0.00% )   ( 0.002920s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000373s |  0.00% | 13.64% )   ( 0.000396s |  0.00% | 13.56% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002360s |  0.00% | 86.35% )   ( 0.002524s |  0.00% | 86.43% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003800s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003169s |  0.00% |  0.00% )   ( 0.003292s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000096s |  0.00% |100.00% )   ( 0.000110s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001083s |  0.00% |  0.00% )   ( 0.001169s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000522s |  0.00% |  0.00% )   ( 0.000535s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.132896s |  0.01% |  0.02% )   ( 0.132646s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000086s |  0.00% |  0.06% )   ( 0.000099s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020983s |  0.00% | 15.78% )   ( 0.020942s |  0.00% | 15.78% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023564s |  0.00% | 17.73% )   ( 0.023516s |  0.00% | 17.72% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023564s |  0.00% | 17.73% )   ( 0.023506s |  0.00% | 17.72% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023543s |  0.00% | 17.71% )   ( 0.023487s |  0.00% | 17.70% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023303s |  0.00% | 17.53% )   ( 0.023244s |  0.00% | 17.52% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000067s |  0.00% |  0.05% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.017535s |  0.00% | 13.19% )   ( 0.017492s |  0.00% | 13.18% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000092s |  0.00% |  0.06% )   ( 0.000105s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000094s |  0.00% |  0.07% )   ( 0.000101s |  0.00% |  0.07% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000065s |  0.00% |  0.04% )   ( 0.000076s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000395s |  0.00% |  0.00% )   ( 0.000425s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 2.907860s |  0.28% |  0.57% )   ( 1.819667s |  0.19% |  0.39% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.025639s |  0.00% |  0.88% )   ( 0.025567s |  0.00% |  1.40% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023458s |  0.00% |  0.80% )   ( 0.023417s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023624s |  0.00% |  0.81% )   ( 0.023576s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023351s |  0.00% |  0.80% )   ( 0.023302s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023385s |  0.00% |  0.80% )   ( 0.023336s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.088574s |  0.00% |  0.00% )   ( 0.101617s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 1.378211s |  0.13% |  0.07% )   ( 0.116269s |  0.01% |  0.00% )    	(668x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000481s |  0.00% |  0.00% )   ( 0.000542s |  0.00% |  0.00% )    	(3x)	│  │  │  │   continue
521.4.0:        ( 0.088052s |  0.00% |  0.00% )   ( 0.100102s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.087456s |  0.00% |  0.00% )   ( 0.100515s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000205s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000111s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.087221s |  0.00% |  0.00% )   ( 0.100239s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090302s |  0.00% |  0.00% )   ( 0.103076s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090114s |  0.00% |  0.00% )   ( 0.103054s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086622s |  0.00% |  0.00% )   ( 0.099454s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086319s |  0.00% |  0.00% )   ( 0.099221s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.086629s |  0.00% |  0.00% )   ( 0.099499s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.006063s |  0.00% |  0.20% )   ( 0.006494s |  0.00% |  0.35% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002518s |  0.00% |  0.08% )   ( 0.002858s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002518s |  0.00% |100.00% )   ( 0.002858s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086244s |  0.00% |  0.00% )   ( 0.099187s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.086005s |  0.00% |  0.00% )   ( 0.099079s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085119s |  0.00% |  0.00% )   ( 0.097102s |  0.01% |  0.00% )    	(644x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.090832s |  0.00% |  0.00% )   ( 0.104081s |  0.01% |  0.00% )    	(665x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087164s |  0.00% |  0.00% )   ( 0.100026s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.086372s |  0.00% |  0.00% )   ( 0.099428s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002819s |  0.00% |  0.00% )   ( 0.003226s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002769s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.063285s |  0.00% |  0.10% )   ( 0.041955s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003295s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003159s |  0.00% |  0.00% )   ( 0.003595s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003047s |  0.00% |  0.00% )   ( 0.003478s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007433s |  0.00% |  0.25% )   ( 0.006823s |  0.00% |  0.37% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/pAuto
598.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.060770s |  0.00% |  0.01% )   ( 0.060836s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.004949s |  0.00% |  0.00% )   ( 0.005686s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000130s |  0.00% |  2.62% )   ( 0.000143s |  0.00% |  2.51% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000072s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.47% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000080s |  0.00% |  1.61% )   ( 0.000092s |  0.00% |  1.61% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000217s |  0.00% |  4.38% )   ( 0.000231s |  0.00% |  4.06% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000067s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000071s |  0.00% |  1.43% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000081s |  0.00% |  1.42% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000081s |  0.00% |  1.42% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.43% )   ( 0.000083s |  0.00% |  1.45% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.35% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000071s |  0.00% |  1.43% )   ( 0.000083s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000095s |  0.00% |  1.91% )   ( 0.000107s |  0.00% |  1.88% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.47% )   ( 0.000085s |  0.00% |  1.49% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000081s |  0.00% |  1.63% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000105s |  0.00% |  2.12% )   ( 0.000115s |  0.00% |  2.02% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000079s |  0.00% |  1.59% )   ( 0.000090s |  0.00% |  1.58% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.59% )   ( 0.000091s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000088s |  0.00% |  1.77% )   ( 0.000099s |  0.00% |  1.74% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000076s |  0.00% |  1.53% )   ( 0.000084s |  0.00% |  1.47% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000081s |  0.00% |  1.42% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.57% )   ( 0.000090s |  0.00% |  1.58% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000079s |  0.00% |  1.59% )   ( 0.000091s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000067s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000075s |  0.00% |  1.51% )   ( 0.000088s |  0.00% |  1.54% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.47% )   ( 0.000085s |  0.00% |  1.49% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.65% )   ( 0.000093s |  0.00% |  1.63% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000067s |  0.00% |  1.35% )   ( 0.000077s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000088s |  0.00% |  1.77% )   ( 0.000099s |  0.00% |  1.74% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000066s |  0.00% |  1.33% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000079s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000098s |  0.00% |  1.98% )   ( 0.000112s |  0.00% |  1.96% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000067s |  0.00% |  1.35% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000065s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000065s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000068s |  0.00% |  1.37% )   ( 0.000078s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000111s |  0.00% |  2.24% )   ( 0.000125s |  0.00% |  2.19% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.45% )   ( 0.000082s |  0.00% |  1.44% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000081s |  0.00% |  1.42% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.29% )   ( 0.000075s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000072s |  0.00% |  1.45% )   ( 0.000083s |  0.00% |  1.45% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000076s |  0.00% |  1.53% )   ( 0.000085s |  0.00% |  1.49% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.41% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.39% )   ( 0.000080s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000088s |  0.00% |  1.77% )   ( 0.000100s |  0.00% |  1.75% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000299s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023852s |  0.00% |  0.00% )   ( 0.023799s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023731s |  0.00% |  0.00% )   ( 0.023685s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023934s |  0.00% |  0.00% )   ( 0.166384s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023389s |  0.00% |  0.00% )   ( 0.023335s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002972s |  0.00% |  0.00% )   ( 0.003409s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002756s |  0.00% |  0.00% )   ( 0.003158s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 19.820847s |  1.96% |  3.94% )   ( 18.739840s |  2.04% |  4.08% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000617s |  0.00% |  0.00% )   ( 0.000633s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.820141s |  1.96% | 99.99% )   ( 18.739106s |  2.04% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p0
30.5.0:         ( 0.023369s |  0.00% |  0.11% )   ( 0.023281s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023506s |  0.00% |  0.11% )   ( 0.023467s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.023542s |  0.00% |  0.11% )   ( 0.023494s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.023696s |  0.00% |  0.11% )   ( 0.023653s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.023878s |  0.00% |  0.12% )   ( 0.023835s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005126s |  0.00% |  0.00% )   ( 0.005737s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005682s |  0.00% |  0.00% )   ( 0.006322s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p0
41.5.0:         ( 0.234348s |  0.02% |  0.03% )   ( 0.006990s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004997s |  0.00% |  0.00% )   ( 0.005606s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004680s |  0.00% |  0.00% )   ( 0.005279s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035294s |  0.00% |  0.00% )   ( 0.035659s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009722s |  0.00% |  0.00% )   ( 0.005466s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005482s |  0.00% |  0.00% )   ( 0.006092s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p0
54.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004769s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 19.355581s |  1.91% |  3.25% )   ( 18.498116s |  2.02% |  3.29% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004330s |  0.00% |  0.02% )   ( 0.004925s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.420567s |  0.14% |  7.33% )   ( 1.339300s |  0.14% |  7.24% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.187030s |  0.21% | 11.29% )   ( 2.103277s |  0.22% | 11.37% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.825259s |  0.18% |  9.43% )   ( 1.733712s |  0.18% |  9.37% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.175073s |  0.21% | 11.23% )   ( 2.057438s |  0.22% | 11.12% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.734411s |  0.17% |  8.96% )   ( 1.671680s |  0.18% |  9.03% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.311710s |  0.13% |  6.77% )   ( 1.224963s |  0.13% |  6.62% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625553s |  0.06% |  3.23% )   ( 0.587495s |  0.06% |  3.17% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.330934s |  0.13% |  6.87% )   ( 1.232290s |  0.13% |  6.66% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.554401s |  0.05% |  2.86% )   ( 0.514942s |  0.05% |  2.78% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.565076s |  0.15% |  8.08% )   ( 1.522522s |  0.16% |  8.23% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.386167s |  0.33% | 17.49% )   ( 3.320918s |  0.36% | 17.95% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.637303s |  0.06% |  3.29% )   ( 0.608000s |  0.06% |  3.28% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.597767s |  0.05% |  3.08% )   ( 0.576654s |  0.06% |  3.11% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005128s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004130s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004487s |  0.00% |  0.00% )   ( 0.005026s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004956s |  0.00% |  0.02% )   ( 0.005042s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002774s |  0.00% |  0.00% )   ( 0.003209s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 16.321526s |  1.61% |  3.24% )   ( 15.410073s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 16.320846s |  1.61% | 99.99% )   ( 15.409366s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000355s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000354s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p1
30.5.0:         ( 0.023468s |  0.00% |  0.14% )   ( 0.023429s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023596s |  0.00% |  0.14% )   ( 0.023539s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.023784s |  0.00% |  0.14% )   ( 0.023735s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.023920s |  0.00% |  0.14% )   ( 0.023877s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.026009s |  0.00% |  0.15% )   ( 0.025951s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004762s |  0.00% |  0.00% )   ( 0.005344s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005080s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000243s |  0.00% |  0.00% )   ( 0.000275s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005333s |  0.00% |  0.00% )   ( 0.005927s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p1
41.5.0:         ( 0.176891s |  0.01% |  0.03% )   ( 0.006783s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004674s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004384s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004390s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033713s |  0.00% |  0.00% )   ( 0.034137s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004534s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005082s |  0.00% |  0.00% )   ( 0.005661s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p1
54.5.0:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 15.917548s |  1.57% |  3.36% )   ( 15.167671s |  1.65% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004195s |  0.00% |  0.02% )   ( 0.004785s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.061742s |  0.10% |  6.67% )   ( 1.003202s |  0.10% |  6.61% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.760649s |  0.17% | 11.06% )   ( 1.682063s |  0.18% | 11.08% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.542950s |  0.15% |  9.69% )   ( 1.469785s |  0.16% |  9.69% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.722069s |  0.17% | 10.81% )   ( 1.679072s |  0.18% | 11.07% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.480805s |  0.14% |  9.30% )   ( 1.415620s |  0.15% |  9.33% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.977156s |  0.09% |  6.13% )   ( 0.929120s |  0.10% |  6.12% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565455s |  0.05% |  3.55% )   ( 0.530176s |  0.05% |  3.49% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.028586s |  0.10% |  6.46% )   ( 0.963748s |  0.10% |  6.35% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509700s |  0.05% |  3.20% )   ( 0.475905s |  0.05% |  3.13% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.366673s |  0.13% |  8.58% )   ( 1.285679s |  0.14% |  8.47% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.723224s |  0.27% | 17.10% )   ( 2.652455s |  0.28% | 17.48% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.588517s |  0.05% |  3.69% )   ( 0.543795s |  0.05% |  3.58% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.585827s |  0.05% |  3.68% )   ( 0.532266s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004233s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004430s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004810s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007433s |  0.00% |  0.04% )   ( 0.007518s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 16.647625s |  1.65% |  3.31% )   ( 15.645238s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000580s |  0.00% |  0.00% )   ( 0.000601s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 16.646960s |  1.65% | 99.99% )   ( 15.644540s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p2
30.5.0:         ( 0.023531s |  0.00% |  0.14% )   ( 0.023491s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023856s |  0.00% |  0.14% )   ( 0.023811s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.023927s |  0.00% |  0.14% )   ( 0.023882s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.024190s |  0.00% |  0.14% )   ( 0.024140s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.026141s |  0.00% |  0.15% )   ( 0.026080s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004773s |  0.00% |  0.00% )   ( 0.005365s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000238s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005330s |  0.00% |  0.00% )   ( 0.005929s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p2
41.5.0:         ( 0.153692s |  0.01% |  0.03% )   ( 0.006333s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004562s |  0.00% |  0.00% )   ( 0.005158s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004219s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035954s |  0.00% |  0.00% )   ( 0.033329s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008032s |  0.00% |  0.00% )   ( 0.005603s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p2
54.5.0:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003994s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.264976s |  1.61% |  3.48% )   ( 15.407728s |  1.68% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003883s |  0.00% |  0.02% )   ( 0.004413s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.106657s |  0.10% |  6.80% )   ( 1.044280s |  0.11% |  6.77% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.812250s |  0.17% | 11.14% )   ( 1.774480s |  0.19% | 11.51% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.711065s |  0.16% | 10.51% )   ( 1.490854s |  0.16% |  9.67% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.864529s |  0.18% | 11.46% )   ( 1.724671s |  0.18% | 11.19% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.473949s |  0.14% |  9.06% )   ( 1.411701s |  0.15% |  9.16% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005648s |  0.09% |  6.18% )   ( 0.941430s |  0.10% |  6.11% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.566314s |  0.05% |  3.48% )   ( 0.531657s |  0.05% |  3.45% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.976825s |  0.09% |  6.00% )   ( 0.961593s |  0.10% |  6.24% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.507409s |  0.05% |  3.11% )   ( 0.470575s |  0.05% |  3.05% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.359426s |  0.13% |  8.35% )   ( 1.282424s |  0.14% |  8.32% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.757669s |  0.27% | 16.95% )   ( 2.716798s |  0.29% | 17.63% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.551478s |  0.05% |  3.39% )   ( 0.534785s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.567874s |  0.05% |  3.49% )   ( 0.518067s |  0.05% |  3.36% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004265s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004346s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005304s |  0.00% |  0.03% )   ( 0.005372s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 16.556633s |  1.64% |  3.29% )   ( 15.887481s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000586s |  0.00% |  0.00% )   ( 0.000605s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 16.555962s |  1.64% | 99.99% )   ( 15.886779s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000331s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000360s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p3
30.5.0:         ( 0.023598s |  0.00% |  0.14% )   ( 0.023505s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023861s |  0.00% |  0.14% )   ( 0.023700s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.024185s |  0.00% |  0.14% )   ( 0.024083s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.025716s |  0.00% |  0.15% )   ( 0.025550s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.024002s |  0.00% |  0.14% )   ( 0.023897s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.044080s |  0.00% |  0.01% )   ( 0.004891s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p3
41.5.0:         ( 0.165465s |  0.01% |  0.04% )   ( 0.005362s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004353s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004226s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003293s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003989s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035074s |  0.00% |  0.00% )   ( 0.029465s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004496s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p3
54.5.0:         ( 0.003244s |  0.00% |  0.00% )   ( 0.003703s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003087s |  0.00% |  0.00% )   ( 0.003531s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.133133s |  1.59% |  4.23% )   ( 15.663175s |  1.71% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003391s |  0.00% |  0.02% )   ( 0.003858s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.041200s |  0.10% |  6.45% )   ( 1.017247s |  0.11% |  6.49% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.832194s |  0.18% | 11.35% )   ( 1.777622s |  0.19% | 11.34% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.544232s |  0.15% |  9.57% )   ( 1.495934s |  0.16% |  9.55% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.843420s |  0.18% | 11.42% )   ( 1.827183s |  0.19% | 11.66% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.523858s |  0.15% |  9.44% )   ( 1.470408s |  0.16% |  9.38% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.969329s |  0.09% |  6.00% )   ( 0.944469s |  0.10% |  6.02% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.489280s |  0.04% |  3.03% )   ( 0.477608s |  0.05% |  3.04% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.017125s |  0.10% |  6.30% )   ( 0.988069s |  0.10% |  6.30% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.428746s |  0.04% |  2.65% )   ( 0.414423s |  0.04% |  2.64% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.347345s |  0.13% |  8.35% )   ( 1.307566s |  0.14% |  8.34% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.113411s |  0.30% | 19.29% )   ( 3.006656s |  0.32% | 19.19% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507043s |  0.05% |  3.14% )   ( 0.478434s |  0.05% |  3.05% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.472559s |  0.04% |  2.92% )   ( 0.453698s |  0.04% |  2.89% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003462s |  0.00% |  0.00% )   ( 0.003904s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003586s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008837s |  0.00% |  0.05% )   ( 0.008920s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 16.260767s |  1.61% |  3.23% )   ( 15.584107s |  1.70% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000599s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 16.260072s |  1.61% | 99.99% )   ( 15.583379s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p4
30.5.0:         ( 0.023513s |  0.00% |  0.14% )   ( 0.023473s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023852s |  0.00% |  0.14% )   ( 0.023811s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.024373s |  0.00% |  0.14% )   ( 0.024323s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.025178s |  0.00% |  0.15% )   ( 0.025130s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.025096s |  0.00% |  0.15% )   ( 0.025047s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004837s |  0.00% |  0.00% )   ( 0.005397s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005263s |  0.00% |  0.00% )   ( 0.005876s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p4
41.5.0:         ( 0.209250s |  0.02% |  0.04% )   ( 0.006960s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004836s |  0.00% |  0.00% )   ( 0.005440s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004607s |  0.00% |  0.00% )   ( 0.005179s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004406s |  0.00% |  0.00% )   ( 0.004966s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037489s |  0.00% |  0.00% )   ( 0.034916s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007259s |  0.00% |  0.00% )   ( 0.005315s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005410s |  0.00% |  0.00% )   ( 0.005926s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p4
54.5.0:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004960s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004108s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.817588s |  1.56% |  3.35% )   ( 15.340300s |  1.67% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004288s |  0.00% |  0.02% )   ( 0.004883s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.102665s |  0.10% |  6.97% )   ( 1.042070s |  0.11% |  6.79% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.773486s |  0.17% | 11.21% )   ( 1.710597s |  0.18% | 11.15% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.555715s |  0.15% |  9.83% )   ( 1.494614s |  0.16% |  9.74% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.741776s |  0.17% | 11.01% )   ( 1.692745s |  0.18% | 11.03% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.503963s |  0.14% |  9.50% )   ( 1.430690s |  0.15% |  9.32% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.967320s |  0.09% |  6.11% )   ( 0.949340s |  0.10% |  6.18% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.549467s |  0.05% |  3.47% )   ( 0.545711s |  0.05% |  3.55% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.973619s |  0.09% |  6.15% )   ( 0.966978s |  0.10% |  6.30% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.530151s |  0.05% |  3.35% )   ( 0.499633s |  0.05% |  3.25% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.352090s |  0.13% |  8.54% )   ( 1.324325s |  0.14% |  8.63% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.606999s |  0.25% | 16.48% )   ( 2.577936s |  0.28% | 16.80% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.576616s |  0.05% |  3.64% )   ( 0.554576s |  0.06% |  3.61% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.579433s |  0.05% |  3.66% )   ( 0.546202s |  0.05% |  3.56% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004854s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004638s |  0.00% |  0.00% )   ( 0.005212s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006294s |  0.00% |  0.03% )   ( 0.006371s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 16.926733s |  1.67% |  3.36% )   ( 16.378854s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000586s |  0.00% |  0.00% )   ( 0.000606s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 16.926060s |  1.67% | 99.99% )   ( 16.378148s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000329s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000362s |  0.00% |  0.00% )   ( 0.000399s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p5
30.5.0:         ( 0.023702s |  0.00% |  0.14% )   ( 0.023659s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023994s |  0.00% |  0.14% )   ( 0.023949s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.026777s |  0.00% |  0.15% )   ( 0.026708s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.023970s |  0.00% |  0.14% )   ( 0.023918s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.023754s |  0.00% |  0.14% )   ( 0.023706s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004328s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p5
41.5.0:         ( 0.153796s |  0.01% |  0.03% )   ( 0.005502s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003721s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004097s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003215s |  0.00% |  0.00% )   ( 0.003677s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028468s |  0.00% |  0.00% )   ( 0.028433s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003662s |  0.00% |  0.00% )   ( 0.004094s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004332s |  0.00% |  0.00% )   ( 0.004817s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p5
54.5.0:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003731s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.564284s |  1.64% |  4.25% )   ( 16.158295s |  1.76% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003263s |  0.00% |  0.01% )   ( 0.003728s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.163732s |  0.11% |  7.02% )   ( 1.061604s |  0.11% |  6.57% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.952563s |  0.19% | 11.78% )   ( 1.909696s |  0.20% | 11.81% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.596276s |  0.15% |  9.63% )   ( 1.545227s |  0.16% |  9.56% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.933956s |  0.19% | 11.67% )   ( 1.872205s |  0.20% | 11.58% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.538036s |  0.15% |  9.28% )   ( 1.510372s |  0.16% |  9.34% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.966410s |  0.09% |  5.83% )   ( 0.961154s |  0.10% |  5.94% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.491399s |  0.04% |  2.96% )   ( 0.482661s |  0.05% |  2.98% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.049741s |  0.10% |  6.33% )   ( 1.036981s |  0.11% |  6.41% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.437707s |  0.04% |  2.64% )   ( 0.414336s |  0.04% |  2.56% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.393837s |  0.13% |  8.41% )   ( 1.356752s |  0.14% |  8.39% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.100232s |  0.30% | 18.71% )   ( 3.085035s |  0.33% | 19.09% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.470357s |  0.04% |  2.83% )   ( 0.460173s |  0.05% |  2.84% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.466775s |  0.04% |  2.81% )   ( 0.458371s |  0.05% |  2.83% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003512s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003299s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004985s |  0.00% |  0.02% )   ( 0.005056s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.344129s |  1.71% |  3.44% )   ( 16.901443s |  1.84% |  3.68% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000633s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.343418s |  1.71% | 99.99% )   ( 16.900706s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p6
30.5.0:         ( 0.023827s |  0.00% |  0.13% )   ( 0.023783s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025393s |  0.00% |  0.14% )   ( 0.025337s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.024362s |  0.00% |  0.14% )   ( 0.024301s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.024380s |  0.00% |  0.14% )   ( 0.024314s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.024064s |  0.00% |  0.13% )   ( 0.024010s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002333s |  0.00% |  0.00% )   ( 0.002631s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.002120s |  0.00% |  0.00% )   ( 0.002414s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002813s |  0.00% |  0.00% )   ( 0.003131s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p6
41.5.0:         ( 0.093926s |  0.00% |  0.03% )   ( 0.003530s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002349s |  0.00% |  0.00% )   ( 0.002655s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.002247s |  0.00% |  0.00% )   ( 0.002537s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.001981s |  0.00% |  0.00% )   ( 0.002265s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002155s |  0.00% |  0.00% )   ( 0.002437s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021264s |  0.00% |  0.00% )   ( 0.015477s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005660s |  0.00% |  0.00% )   ( 0.002548s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002453s |  0.00% |  0.00% )   ( 0.002735s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p6
54.5.0:         ( 0.001975s |  0.00% |  0.00% )   ( 0.002270s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001993s |  0.00% |  0.00% )   ( 0.002277s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.063989s |  1.69% |  7.02% )   ( 16.716875s |  1.82% |  7.06% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001954s |  0.00% |  0.01% )   ( 0.002243s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.111881s |  0.11% |  6.51% )   ( 1.062575s |  0.11% |  6.35% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.165966s |  0.21% | 12.69% )   ( 2.047177s |  0.22% | 12.24% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602980s |  0.15% |  9.39% )   ( 1.594073s |  0.17% |  9.53% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.102625s |  0.20% | 12.32% )   ( 2.087998s |  0.22% | 12.49% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.577834s |  0.15% |  9.24% )   ( 1.570882s |  0.17% |  9.39% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.983364s |  0.09% |  5.76% )   ( 0.977402s |  0.10% |  5.84% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.386357s |  0.03% |  2.26% )   ( 0.365023s |  0.03% |  2.18% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.115743s |  0.11% |  6.53% )   ( 1.085627s |  0.11% |  6.49% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.307333s |  0.03% |  1.80% )   ( 0.296808s |  0.03% |  1.77% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.358510s |  0.13% |  7.96% )   ( 1.346730s |  0.14% |  8.05% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.649200s |  0.36% | 21.38% )   ( 3.622887s |  0.39% | 21.67% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.361654s |  0.03% |  2.11% )   ( 0.347432s |  0.03% |  2.07% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.338588s |  0.03% |  1.98% )   ( 0.310018s |  0.03% |  1.85% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002079s |  0.00% |  0.00% )   ( 0.002352s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001929s |  0.00% |  0.00% )   ( 0.002192s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001995s |  0.00% |  0.00% )   ( 0.002260s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006989s |  0.00% |  0.04% )   ( 0.007086s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 16.683612s |  1.65% |  3.31% )   ( 15.660447s |  1.71% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 16.682918s |  1.65% | 99.99% )   ( 15.659721s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p7
30.5.0:         ( 0.023986s |  0.00% |  0.14% )   ( 0.023937s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025095s |  0.00% |  0.15% )   ( 0.025040s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.025076s |  0.00% |  0.15% )   ( 0.025022s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.025118s |  0.00% |  0.15% )   ( 0.025067s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.025191s |  0.00% |  0.15% )   ( 0.025136s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005294s |  0.00% |  0.00% )   ( 0.005919s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004810s |  0.00% |  0.00% )   ( 0.005461s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005915s |  0.00% |  0.00% )   ( 0.006495s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p7
41.5.0:         ( 0.271361s |  0.02% |  0.05% )   ( 0.007562s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005369s |  0.00% |  0.00% )   ( 0.006009s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004887s |  0.00% |  0.00% )   ( 0.005501s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004439s |  0.00% |  0.00% )   ( 0.005030s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004682s |  0.00% |  0.00% )   ( 0.005276s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038040s |  0.00% |  0.00% )   ( 0.036628s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004816s |  0.00% |  0.00% )   ( 0.005419s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005592s |  0.00% |  0.00% )   ( 0.006247s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p7
54.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005139s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005100s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.173761s |  1.60% |  3.12% )   ( 15.407237s |  1.68% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004485s |  0.00% |  0.02% )   ( 0.005098s |  0.00% |  0.03% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.133823s |  0.11% |  7.01% )   ( 1.063872s |  0.11% |  6.90% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.826411s |  0.18% | 11.29% )   ( 1.740885s |  0.19% | 11.29% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.611182s |  0.15% |  9.96% )   ( 1.500276s |  0.16% |  9.73% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.669149s |  0.16% | 10.32% )   ( 1.639508s |  0.17% | 10.64% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.466387s |  0.14% |  9.06% )   ( 1.430772s |  0.15% |  9.28% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.007547s |  0.09% |  6.22% )   ( 0.966750s |  0.10% |  6.27% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.629798s |  0.06% |  3.89% )   ( 0.571738s |  0.06% |  3.71% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.056819s |  0.10% |  6.53% )   ( 0.962153s |  0.10% |  6.24% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553049s |  0.05% |  3.41% )   ( 0.517692s |  0.05% |  3.36% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.331963s |  0.13% |  8.23% )   ( 1.288588s |  0.14% |  8.36% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.640179s |  0.26% | 16.32% )   ( 2.544431s |  0.27% | 16.51% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.624227s |  0.06% |  3.85% )   ( 0.592410s |  0.06% |  3.84% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.618742s |  0.06% |  3.82% )   ( 0.583064s |  0.06% |  3.78% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004722s |  0.00% |  0.00% )   ( 0.005357s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004415s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005025s |  0.00% |  0.00% )   ( 0.005572s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005003s |  0.00% |  0.02% )   ( 0.005076s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 19.177336s |  1.90% |  3.81% )   ( 18.250420s |  1.99% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000608s |  0.00% |  0.00% )   ( 0.000628s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.176639s |  1.90% | 99.99% )   ( 18.249690s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p8
30.5.0:         ( 0.025347s |  0.00% |  0.13% )   ( 0.025288s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025125s |  0.00% |  0.13% )   ( 0.025065s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.025080s |  0.00% |  0.13% )   ( 0.025029s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.025111s |  0.00% |  0.13% )   ( 0.025062s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.025092s |  0.00% |  0.13% )   ( 0.025039s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005179s |  0.00% |  0.00% )   ( 0.005799s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005456s |  0.00% |  0.00% )   ( 0.006079s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p8
41.5.0:         ( 0.207102s |  0.02% |  0.03% )   ( 0.007163s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005084s |  0.00% |  0.00% )   ( 0.005698s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004755s |  0.00% |  0.00% )   ( 0.005379s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004418s |  0.00% |  0.00% )   ( 0.005015s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004745s |  0.00% |  0.00% )   ( 0.005333s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039342s |  0.00% |  0.00% )   ( 0.036787s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007810s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005326s |  0.00% |  0.00% )   ( 0.005933s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p8
54.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004915s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004375s |  0.00% |  0.00% )   ( 0.004895s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.727447s |  1.85% |  3.25% )   ( 17.998178s |  1.96% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004604s |  0.00% |  0.02% )   ( 0.005234s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.371722s |  0.13% |  7.32% )   ( 1.296641s |  0.14% |  7.20% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.077267s |  0.20% | 11.09% )   ( 2.012092s |  0.21% | 11.17% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.802757s |  0.17% |  9.62% )   ( 1.685754s |  0.18% |  9.36% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.078832s |  0.20% | 11.10% )   ( 1.979945s |  0.21% | 11.00% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.701851s |  0.16% |  9.08% )   ( 1.622146s |  0.17% |  9.01% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.227730s |  0.12% |  6.55% )   ( 1.186976s |  0.12% |  6.59% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.647684s |  0.06% |  3.45% )   ( 0.614423s |  0.06% |  3.41% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.236811s |  0.12% |  6.60% )   ( 1.200837s |  0.13% |  6.67% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.570299s |  0.05% |  3.04% )   ( 0.539243s |  0.05% |  2.99% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.516508s |  0.15% |  8.09% )   ( 1.500117s |  0.16% |  8.33% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.164156s |  0.31% | 16.89% )   ( 3.146462s |  0.34% | 17.48% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.688199s |  0.06% |  3.67% )   ( 0.608599s |  0.06% |  3.38% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.639027s |  0.06% |  3.41% )   ( 0.599709s |  0.06% |  3.33% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004520s |  0.00% |  0.00% )   ( 0.005099s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004476s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005351s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006231s |  0.00% |  0.03% )   ( 0.006273s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 18.892754s |  1.87% |  3.75% )   ( 18.267856s |  1.99% |  3.98% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000620s |  0.00% |  0.00% )   ( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 18.892038s |  1.87% | 99.99% )   ( 18.267112s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000481s |  0.00% |  0.00% )   ( 0.000521s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p9
30.5.0:         ( 0.025127s |  0.00% |  0.13% )   ( 0.025056s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025119s |  0.00% |  0.13% )   ( 0.025058s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.025105s |  0.00% |  0.13% )   ( 0.025053s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.024936s |  0.00% |  0.13% )   ( 0.024885s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.024946s |  0.00% |  0.13% )   ( 0.024898s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002831s |  0.00% |  0.00% )   ( 0.003168s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002493s |  0.00% |  0.00% )   ( 0.002819s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002947s |  0.00% |  0.00% )   ( 0.003309s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p9
41.5.0:         ( 0.184922s |  0.01% |  0.05% )   ( 0.004133s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002598s |  0.00% |  0.00% )   ( 0.002916s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.002592s |  0.00% |  0.00% )   ( 0.002917s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.002222s |  0.00% |  0.00% )   ( 0.002536s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002363s |  0.00% |  0.00% )   ( 0.002679s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022287s |  0.00% |  0.00% )   ( 0.019492s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002615s |  0.00% |  0.00% )   ( 0.002819s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002904s |  0.00% |  0.00% )   ( 0.003228s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p9
54.5.0:         ( 0.002196s |  0.00% |  0.00% )   ( 0.002504s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002129s |  0.00% |  0.00% )   ( 0.002421s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.517531s |  1.83% |  6.12% )   ( 18.071914s |  1.97% |  6.18% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002257s |  0.00% |  0.01% )   ( 0.002573s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.333271s |  0.13% |  7.20% )   ( 1.241088s |  0.13% |  6.86% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.452184s |  0.24% | 13.24% )   ( 2.388947s |  0.26% | 13.21% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.871631s |  0.18% | 10.10% )   ( 1.842964s |  0.20% | 10.19% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.363533s |  0.23% | 12.76% )   ( 2.345988s |  0.25% | 12.98% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.796820s |  0.17% |  9.70% )   ( 1.773383s |  0.19% |  9.81% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.158123s |  0.11% |  6.25% )   ( 1.112091s |  0.12% |  6.15% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.434856s |  0.04% |  2.34% )   ( 0.397537s |  0.04% |  2.19% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.253945s |  0.12% |  6.77% )   ( 1.248819s |  0.13% |  6.91% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.369800s |  0.03% |  1.99% )   ( 0.345868s |  0.03% |  1.91% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.455816s |  0.14% |  7.86% )   ( 1.426501s |  0.15% |  7.89% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.285803s |  0.32% | 17.74% )   ( 3.243172s |  0.35% | 17.94% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.380676s |  0.03% |  2.05% )   ( 0.363818s |  0.03% |  2.01% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.358816s |  0.03% |  1.93% )   ( 0.339165s |  0.03% |  1.87% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002445s |  0.00% |  0.00% )   ( 0.002767s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001967s |  0.00% |  0.00% )   ( 0.002260s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002286s |  0.00% |  0.00% )   ( 0.002583s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006279s |  0.00% |  0.03% )   ( 0.006353s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 18.242682s |  1.80% |  3.62% )   ( 17.798397s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000609s |  0.00% |  0.00% )   ( 0.000623s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.241975s |  1.80% | 99.99% )   ( 17.797663s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p10
30.5.0:         ( 0.024020s |  0.00% |  0.13% )   ( 0.023961s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023854s |  0.00% |  0.13% )   ( 0.023808s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.023919s |  0.00% |  0.13% )   ( 0.023868s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.023834s |  0.00% |  0.13% )   ( 0.023784s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.024015s |  0.00% |  0.13% )   ( 0.023966s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002326s |  0.00% |  0.00% )   ( 0.002625s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002177s |  0.00% |  0.00% )   ( 0.002470s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002705s |  0.00% |  0.00% )   ( 0.003014s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p10
41.5.0:         ( 0.102168s |  0.01% |  0.03% )   ( 0.003449s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002347s |  0.00% |  0.00% )   ( 0.002666s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.002363s |  0.00% |  0.00% )   ( 0.002672s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.002092s |  0.00% |  0.00% )   ( 0.002388s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002313s |  0.00% |  0.00% )   ( 0.002616s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.017601s |  0.00% |  0.00% )   ( 0.017853s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002373s |  0.00% |  0.00% )   ( 0.002669s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002680s |  0.00% |  0.00% )   ( 0.003010s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p10
54.5.0:         ( 0.002231s |  0.00% |  0.00% )   ( 0.002454s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002262s |  0.00% |  0.00% )   ( 0.002491s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.963568s |  1.78% |  6.56% )   ( 17.613724s |  1.92% |  6.59% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002047s |  0.00% |  0.01% )   ( 0.002339s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.206102s |  0.11% |  6.71% )   ( 1.201923s |  0.13% |  6.82% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.420227s |  0.23% | 13.47% )   ( 2.288306s |  0.24% | 12.99% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.760046s |  0.17% |  9.79% )   ( 1.722495s |  0.18% |  9.77% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.317492s |  0.22% | 12.90% )   ( 2.291858s |  0.25% | 13.01% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.734641s |  0.17% |  9.65% )   ( 1.724189s |  0.18% |  9.78% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.093259s |  0.10% |  6.08% )   ( 1.063538s |  0.11% |  6.03% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.392674s |  0.03% |  2.18% )   ( 0.377888s |  0.04% |  2.14% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.165155s |  0.11% |  6.48% )   ( 1.156765s |  0.12% |  6.56% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.328732s |  0.03% |  1.82% )   ( 0.319256s |  0.03% |  1.81% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.515092s |  0.15% |  8.43% )   ( 1.499505s |  0.16% |  8.51% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.337997s |  0.33% | 18.58% )   ( 3.298946s |  0.36% | 18.72% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.359085s |  0.03% |  1.99% )   ( 0.352656s |  0.03% |  2.00% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.331019s |  0.03% |  1.84% )   ( 0.314060s |  0.03% |  1.78% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002113s |  0.00% |  0.00% )   ( 0.002397s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002025s |  0.00% |  0.00% )   ( 0.002314s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002270s |  0.00% |  0.00% )   ( 0.002541s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005790s |  0.00% |  0.03% )   ( 0.005854s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 16.338930s |  1.62% |  3.24% )   ( 15.301196s |  1.67% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000644s |  0.00% |  0.00% )   ( 0.000665s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 16.338185s |  1.62% | 99.99% )   ( 15.300423s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p11
30.5.0:         ( 0.023914s |  0.00% |  0.14% )   ( 0.023854s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023952s |  0.00% |  0.14% )   ( 0.023904s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.024294s |  0.00% |  0.14% )   ( 0.024242s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.023978s |  0.00% |  0.14% )   ( 0.023922s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.032368s |  0.00% |  0.19% )   ( 0.032234s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004607s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.005441s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p11
41.5.0:         ( 0.195705s |  0.01% |  0.04% )   ( 0.006210s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004460s |  0.00% |  0.00% )   ( 0.005026s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003722s |  0.00% |  0.00% )   ( 0.004232s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035279s |  0.00% |  0.00% )   ( 0.032639s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008414s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004831s |  0.00% |  0.00% )   ( 0.005359s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p11
54.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.906104s |  1.57% |  3.74% )   ( 15.057192s |  1.64% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004013s |  0.00% |  0.02% )   ( 0.004592s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.079143s |  0.10% |  6.78% )   ( 1.006901s |  0.10% |  6.68% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.730377s |  0.17% | 10.87% )   ( 1.693637s |  0.18% | 11.24% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.501707s |  0.14% |  9.44% )   ( 1.440177s |  0.15% |  9.56% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.767813s |  0.17% | 11.11% )   ( 1.703901s |  0.18% | 11.31% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.448504s |  0.14% |  9.10% )   ( 1.397422s |  0.15% |  9.28% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.966498s |  0.09% |  6.07% )   ( 0.921774s |  0.10% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560365s |  0.05% |  3.52% )   ( 0.514961s |  0.05% |  3.42% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.014233s |  0.10% |  6.37% )   ( 0.946521s |  0.10% |  6.28% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.472611s |  0.04% |  2.97% )   ( 0.455015s |  0.04% |  3.02% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.370543s |  0.13% |  8.61% )   ( 1.267647s |  0.13% |  8.41% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.866944s |  0.28% | 18.02% )   ( 2.692458s |  0.29% | 17.88% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.607255s |  0.06% |  3.81% )   ( 0.511765s |  0.05% |  3.39% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.516098s |  0.05% |  3.24% )   ( 0.500421s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003764s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009008s |  0.00% |  0.05% )   ( 0.009087s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 17.211928s |  1.70% |  3.42% )   ( 16.754739s |  1.83% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000833s |  0.00% |  0.00% )   ( 0.000863s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 17.210919s |  1.70% | 99.99% )   ( 16.753676s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p12
30.5.0:         ( 0.045745s |  0.00% |  0.26% )   ( 0.045600s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045903s |  0.00% |  0.26% )   ( 0.045736s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.045929s |  0.00% |  0.26% )   ( 0.045774s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.045805s |  0.00% |  0.26% )   ( 0.045643s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.045954s |  0.00% |  0.26% )   ( 0.045789s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003544s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002798s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p12
41.5.0:         ( 0.164789s |  0.01% |  0.05% )   ( 0.004617s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003126s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.002989s |  0.00% |  0.00% )   ( 0.003380s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.002685s |  0.00% |  0.00% )   ( 0.003061s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003021s |  0.00% |  0.00% )   ( 0.003392s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023636s |  0.00% |  0.00% )   ( 0.023953s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002906s |  0.00% |  0.00% )   ( 0.003279s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003813s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p12
54.5.0:         ( 0.002862s |  0.00% |  0.00% )   ( 0.003237s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002758s |  0.00% |  0.00% )   ( 0.003094s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.745779s |  1.66% |  5.40% )   ( 16.443773s |  1.79% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002804s |  0.00% |  0.01% )   ( 0.003149s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.119644s |  0.11% |  6.68% )   ( 1.061337s |  0.11% |  6.45% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.983075s |  0.19% | 11.84% )   ( 1.955953s |  0.21% | 11.89% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.591999s |  0.15% |  9.50% )   ( 1.564724s |  0.17% |  9.51% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.040725s |  0.20% | 12.18% )   ( 1.998857s |  0.21% | 12.15% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.577326s |  0.15% |  9.41% )   ( 1.567390s |  0.17% |  9.53% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.965123s |  0.09% |  5.76% )   ( 0.956842s |  0.10% |  5.81% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.418461s |  0.04% |  2.49% )   ( 0.419912s |  0.04% |  2.55% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.067617s |  0.10% |  6.37% )   ( 1.056210s |  0.11% |  6.42% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.371972s |  0.03% |  2.22% )   ( 0.359234s |  0.03% |  2.18% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.341680s |  0.13% |  8.01% )   ( 1.333026s |  0.14% |  8.10% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.429937s |  0.34% | 20.48% )   ( 3.374289s |  0.36% | 20.52% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.437607s |  0.04% |  2.61% )   ( 0.405032s |  0.04% |  2.46% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.397809s |  0.03% |  2.37% )   ( 0.387818s |  0.04% |  2.35% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002525s |  0.00% |  0.00% )   ( 0.002866s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002802s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003038s |  0.00% |  0.00% )   ( 0.003416s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004920s |  0.00% |  0.02% )   ( 0.004990s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.736183s |  1.85% |  3.72% )   ( 17.878137s |  1.95% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000975s |  0.00% |  0.00% )   ( 0.000994s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.735058s |  1.85% | 99.99% )   ( 17.876973s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p13
30.5.0:         ( 0.044066s |  0.00% |  0.23% )   ( 0.043902s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037520s |  0.00% |  0.20% )   ( 0.037384s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.029226s |  0.00% |  0.15% )   ( 0.029128s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.028732s |  0.00% |  0.15% )   ( 0.028644s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.029202s |  0.00% |  0.15% )   ( 0.029106s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004553s |  0.00% |  0.00% )   ( 0.005076s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004992s |  0.00% |  0.00% )   ( 0.005551s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p13
41.5.0:         ( 0.190450s |  0.01% |  0.03% )   ( 0.006067s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004755s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003992s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003558s |  0.00% |  0.00% )   ( 0.004038s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004553s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032067s |  0.00% |  0.00% )   ( 0.030490s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007231s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004621s |  0.00% |  0.00% )   ( 0.005149s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p13
54.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004232s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003560s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.277611s |  1.81% |  3.90% )   ( 17.601849s |  1.92% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003816s |  0.00% |  0.02% )   ( 0.004344s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.251236s |  0.12% |  6.84% )   ( 1.226370s |  0.13% |  6.96% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.143649s |  0.21% | 11.72% )   ( 2.122901s |  0.23% | 12.06% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.717292s |  0.17% |  9.39% )   ( 1.667396s |  0.18% |  9.47% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.126153s |  0.21% | 11.63% )   ( 2.025195s |  0.22% | 11.50% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.667298s |  0.16% |  9.12% )   ( 1.603396s |  0.17% |  9.10% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.130644s |  0.11% |  6.18% )   ( 1.101353s |  0.12% |  6.25% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535786s |  0.05% |  2.93% )   ( 0.527793s |  0.05% |  2.99% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.202084s |  0.11% |  6.57% )   ( 1.141670s |  0.12% |  6.48% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475997s |  0.04% |  2.60% )   ( 0.451135s |  0.04% |  2.56% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.494078s |  0.14% |  8.17% )   ( 1.435310s |  0.15% |  8.15% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.507028s |  0.34% | 19.18% )   ( 3.281258s |  0.35% | 18.64% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.521098s |  0.05% |  2.85% )   ( 0.516712s |  0.05% |  2.93% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.501452s |  0.04% |  2.74% )   ( 0.497016s |  0.05% |  2.82% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003577s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005171s |  0.00% |  0.02% )   ( 0.005229s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 16.621743s |  1.64% |  3.30% )   ( 15.916645s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000989s |  0.00% |  0.00% )   ( 0.001009s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 16.620605s |  1.64% | 99.99% )   ( 15.915469s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p14
30.5.0:         ( 0.024355s |  0.00% |  0.14% )   ( 0.024298s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044819s |  0.00% |  0.26% )   ( 0.044663s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.045418s |  0.00% |  0.27% )   ( 0.045269s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.045229s |  0.00% |  0.27% )   ( 0.045074s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.045479s |  0.00% |  0.27% )   ( 0.045329s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004213s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003354s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p14
41.5.0:         ( 0.119101s |  0.01% |  0.03% )   ( 0.004989s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003555s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003523s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003533s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003899s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026825s |  0.00% |  0.00% )   ( 0.026611s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003279s |  0.00% |  0.00% )   ( 0.003674s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003587s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p14
54.5.0:         ( 0.002968s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003066s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.211591s |  1.60% |  4.64% )   ( 15.615156s |  1.70% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002924s |  0.00% |  0.01% )   ( 0.003333s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.067959s |  0.10% |  6.58% )   ( 1.050598s |  0.11% |  6.72% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.941471s |  0.19% | 11.97% )   ( 1.845797s |  0.20% | 11.82% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.536609s |  0.15% |  9.47% )   ( 1.499028s |  0.16% |  9.59% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.843340s |  0.18% | 11.37% )   ( 1.827647s |  0.19% | 11.70% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.504215s |  0.14% |  9.27% )   ( 1.450440s |  0.15% |  9.28% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.952008s |  0.09% |  5.87% )   ( 0.943565s |  0.10% |  6.04% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.474013s |  0.04% |  2.92% )   ( 0.449634s |  0.04% |  2.87% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.037938s |  0.10% |  6.40% )   ( 0.980154s |  0.10% |  6.27% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.443075s |  0.04% |  2.73% )   ( 0.383026s |  0.04% |  2.45% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.357932s |  0.13% |  8.37% )   ( 1.309287s |  0.14% |  8.38% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.152095s |  0.31% | 19.44% )   ( 3.012249s |  0.32% | 19.29% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.446185s |  0.04% |  2.75% )   ( 0.436972s |  0.04% |  2.79% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.451827s |  0.04% |  2.78% )   ( 0.423426s |  0.04% |  2.71% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003189s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003046s |  0.00% |  0.00% )   ( 0.003468s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003915s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009052s |  0.00% |  0.05% )   ( 0.009137s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 16.063905s |  1.59% |  3.19% )   ( 15.224076s |  1.66% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000989s |  0.00% |  0.00% )   ( 0.001012s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 16.062762s |  1.59% | 99.99% )   ( 15.222896s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p15
30.5.0:         ( 0.045549s |  0.00% |  0.28% )   ( 0.045390s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045369s |  0.00% |  0.28% )   ( 0.045215s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.045216s |  0.00% |  0.28% )   ( 0.045068s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.045480s |  0.00% |  0.28% )   ( 0.045325s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.039231s |  0.00% |  0.24% )   ( 0.039088s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004695s |  0.00% |  0.00% )   ( 0.005279s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005115s |  0.00% |  0.00% )   ( 0.005697s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p15
41.5.0:         ( 0.219881s |  0.02% |  0.04% )   ( 0.006568s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003700s |  0.00% |  0.00% )   ( 0.004231s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035247s |  0.00% |  0.00% )   ( 0.032604s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008050s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004812s |  0.00% |  0.00% )   ( 0.005368s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p15
54.5.0:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.514982s |  1.53% |  3.57% )   ( 14.887900s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003924s |  0.00% |  0.02% )   ( 0.004478s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.036609s |  0.10% |  6.68% )   ( 0.986900s |  0.10% |  6.62% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.773559s |  0.17% | 11.43% )   ( 1.660164s |  0.18% | 11.15% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.462541s |  0.14% |  9.42% )   ( 1.430527s |  0.15% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.672098s |  0.16% | 10.77% )   ( 1.652422s |  0.18% | 11.09% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.472986s |  0.14% |  9.49% )   ( 1.373824s |  0.15% |  9.22% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.955300s |  0.09% |  6.15% )   ( 0.914931s |  0.09% |  6.14% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.579372s |  0.05% |  3.73% )   ( 0.525821s |  0.05% |  3.53% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.008061s |  0.09% |  6.49% )   ( 0.938534s |  0.10% |  6.30% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489224s |  0.04% |  3.15% )   ( 0.460731s |  0.05% |  3.09% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.296143s |  0.12% |  8.35% )   ( 1.263276s |  0.13% |  8.48% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.649444s |  0.26% | 17.07% )   ( 2.624980s |  0.28% | 17.63% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.555365s |  0.05% |  3.57% )   ( 0.537974s |  0.05% |  3.61% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.560356s |  0.05% |  3.61% )   ( 0.513338s |  0.05% |  3.44% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003624s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008829s |  0.00% |  0.05% )   ( 0.008847s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 16.169486s |  1.60% |  3.21% )   ( 15.114095s |  1.65% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000992s |  0.00% |  0.00% )   ( 0.001017s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 16.168346s |  1.60% | 99.99% )   ( 15.112910s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p16
30.5.0:         ( 0.036929s |  0.00% |  0.22% )   ( 0.036813s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024078s |  0.00% |  0.14% )   ( 0.024010s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.026924s |  0.00% |  0.16% )   ( 0.026841s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.026917s |  0.00% |  0.16% )   ( 0.026836s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.029680s |  0.00% |  0.18% )   ( 0.029585s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005063s |  0.00% |  0.00% )   ( 0.005634s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p16
41.5.0:         ( 0.235974s |  0.02% |  0.05% )   ( 0.006454s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034969s |  0.00% |  0.00% )   ( 0.031325s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004782s |  0.00% |  0.00% )   ( 0.005334s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p16
54.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004330s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.683933s |  1.55% |  3.73% )   ( 14.854374s |  1.62% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003971s |  0.00% |  0.02% )   ( 0.004500s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.101808s |  0.10% |  7.02% )   ( 0.980325s |  0.10% |  6.59% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.778546s |  0.17% | 11.33% )   ( 1.650397s |  0.18% | 11.11% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.568297s |  0.15% |  9.99% )   ( 1.427720s |  0.15% |  9.61% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.761953s |  0.17% | 11.23% )   ( 1.658524s |  0.18% | 11.16% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.429366s |  0.14% |  9.11% )   ( 1.356533s |  0.14% |  9.13% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.956955s |  0.09% |  6.10% )   ( 0.902281s |  0.09% |  6.07% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.527478s |  0.05% |  3.36% )   ( 0.520198s |  0.05% |  3.50% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.970555s |  0.09% |  6.18% )   ( 0.947447s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462827s |  0.04% |  2.95% )   ( 0.458561s |  0.05% |  3.08% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.306114s |  0.12% |  8.32% )   ( 1.271390s |  0.13% |  8.55% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.724307s |  0.27% | 17.37% )   ( 2.650763s |  0.28% | 17.84% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.536375s |  0.05% |  3.41% )   ( 0.519822s |  0.05% |  3.49% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555381s |  0.05% |  3.54% )   ( 0.505913s |  0.05% |  3.40% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004085s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004205s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009065s |  0.00% |  0.05% )   ( 0.009129s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 16.221399s |  1.60% |  3.22% )   ( 15.336332s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001028s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 16.220240s |  1.60% | 99.99% )   ( 15.335130s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p17
30.5.0:         ( 0.043654s |  0.00% |  0.26% )   ( 0.043291s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037043s |  0.00% |  0.22% )   ( 0.036766s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.030147s |  0.00% |  0.18% )   ( 0.029931s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.026992s |  0.00% |  0.16% )   ( 0.026851s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.040620s |  0.00% |  0.25% )   ( 0.040259s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004774s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003691s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004912s |  0.00% |  0.00% )   ( 0.005460s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p17
41.5.0:         ( 0.134134s |  0.01% |  0.03% )   ( 0.005830s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004005s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029955s |  0.00% |  0.00% )   ( 0.030351s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007105s |  0.00% |  0.00% )   ( 0.004601s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004703s |  0.00% |  0.00% )   ( 0.005224s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p17
54.5.0:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003631s |  0.00% |  0.00% )   ( 0.004133s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.798261s |  1.56% |  4.05% )   ( 15.046564s |  1.64% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003553s |  0.00% |  0.02% )   ( 0.004051s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.107337s |  0.10% |  7.00% )   ( 1.006618s |  0.10% |  6.69% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.816758s |  0.18% | 11.49% )   ( 1.691336s |  0.18% | 11.24% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.477680s |  0.14% |  9.35% )   ( 1.434524s |  0.15% |  9.53% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.726855s |  0.17% | 10.93% )   ( 1.706985s |  0.18% | 11.34% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.523489s |  0.15% |  9.64% )   ( 1.400074s |  0.15% |  9.30% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.970796s |  0.09% |  6.14% )   ( 0.891073s |  0.09% |  5.92% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.497403s |  0.04% |  3.14% )   ( 0.490427s |  0.05% |  3.25% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.967703s |  0.09% |  6.12% )   ( 0.956143s |  0.10% |  6.35% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447305s |  0.04% |  2.83% )   ( 0.428674s |  0.04% |  2.84% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.308074s |  0.12% |  8.27% )   ( 1.271999s |  0.13% |  8.45% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.919107s |  0.28% | 18.47% )   ( 2.804931s |  0.30% | 18.64% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518101s |  0.05% |  3.27% )   ( 0.489767s |  0.05% |  3.25% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.514100s |  0.05% |  3.25% )   ( 0.469962s |  0.05% |  3.12% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003724s |  0.00% |  0.00% )   ( 0.004200s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004095s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.010239s |  0.00% |  0.00% )   ( 0.004525s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit
68.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p* 1>&21
69.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.011626s |  0.00% |  0.07% )   ( 0.009160s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 16.468349s |  1.63% |  3.27% )   ( 15.663152s |  1.71% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001009s |  0.00% |  0.00% )   ( 0.001030s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 16.467180s |  1.63% | 99.99% )   ( 15.661946s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p18
30.5.0:         ( 0.043358s |  0.00% |  0.26% )   ( 0.043205s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037637s |  0.00% |  0.22% )   ( 0.037507s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.044747s |  0.00% |  0.27% )   ( 0.044577s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.046909s |  0.00% |  0.28% )   ( 0.046781s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.042014s |  0.00% |  0.25% )   ( 0.041852s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003749s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004706s |  0.00% |  0.00% )   ( 0.005232s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p18
41.5.0:         ( 0.226486s |  0.02% |  0.05% )   ( 0.005829s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003756s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003847s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029200s |  0.00% |  0.00% )   ( 0.029582s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010480s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004307s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p18
54.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004117s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003387s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.926709s |  1.57% |  4.02% )   ( 15.342009s |  1.67% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003472s |  0.00% |  0.02% )   ( 0.003941s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.156891s |  0.11% |  7.26% )   ( 1.022211s |  0.11% |  6.66% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.863465s |  0.18% | 11.70% )   ( 1.758684s |  0.19% | 11.46% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.516794s |  0.15% |  9.52% )   ( 1.473829s |  0.16% |  9.60% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.776899s |  0.17% | 11.15% )   ( 1.750525s |  0.19% | 11.41% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.463579s |  0.14% |  9.18% )   ( 1.436102s |  0.15% |  9.36% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.969321s |  0.09% |  6.08% )   ( 0.929027s |  0.10% |  6.05% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.495639s |  0.04% |  3.11% )   ( 0.481420s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.050012s |  0.10% |  6.59% )   ( 0.966790s |  0.10% |  6.30% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.446305s |  0.04% |  2.80% )   ( 0.432202s |  0.04% |  2.81% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.326842s |  0.13% |  8.33% )   ( 1.304313s |  0.14% |  8.50% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.879782s |  0.28% | 18.08% )   ( 2.839478s |  0.31% | 18.50% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.499085s |  0.04% |  3.13% )   ( 0.479618s |  0.05% |  3.12% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.478623s |  0.04% |  3.00% )   ( 0.463869s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003578s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003341s |  0.00% |  0.00% )   ( 0.003782s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003660s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008514s |  0.00% |  0.05% )   ( 0.008602s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 16.619266s |  1.64% |  3.30% )   ( 15.812458s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001051s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 16.618091s |  1.64% | 99.99% )   ( 15.811237s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p19
30.5.0:         ( 0.045152s |  0.00% |  0.27% )   ( 0.044991s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047536s |  0.00% |  0.28% )   ( 0.047371s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.046999s |  0.00% |  0.28% )   ( 0.046848s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.047676s |  0.00% |  0.28% )   ( 0.047493s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.047377s |  0.00% |  0.28% )   ( 0.047213s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003714s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004381s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p19
41.5.0:         ( 0.163562s |  0.01% |  0.04% )   ( 0.004714s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003258s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003075s |  0.00% |  0.00% )   ( 0.003505s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025843s |  0.00% |  0.00% )   ( 0.026161s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005477s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004180s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p19
54.5.0:         ( 0.003146s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002995s |  0.00% |  0.00% )   ( 0.003417s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.135447s |  1.59% |  4.62% )   ( 15.483895s |  1.69% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003057s |  0.00% |  0.01% )   ( 0.003461s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.064769s |  0.10% |  6.59% )   ( 1.029926s |  0.11% |  6.65% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.915236s |  0.18% | 11.86% )   ( 1.847258s |  0.20% | 11.93% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.539071s |  0.15% |  9.53% )   ( 1.486121s |  0.16% |  9.59% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.883171s |  0.18% | 11.67% )   ( 1.818736s |  0.19% | 11.74% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.525996s |  0.15% |  9.45% )   ( 1.437685s |  0.15% |  9.28% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.965121s |  0.09% |  5.98% )   ( 0.932887s |  0.10% |  6.02% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471480s |  0.04% |  2.92% )   ( 0.440912s |  0.04% |  2.84% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.018630s |  0.10% |  6.31% )   ( 0.973044s |  0.10% |  6.28% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.399322s |  0.03% |  2.47% )   ( 0.383473s |  0.04% |  2.47% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.315735s |  0.13% |  8.15% )   ( 1.275380s |  0.13% |  8.23% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.116952s |  0.30% | 19.31% )   ( 2.988321s |  0.32% | 19.29% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.451948s |  0.04% |  2.80% )   ( 0.444449s |  0.04% |  2.87% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.464959s |  0.04% |  2.88% )   ( 0.422242s |  0.04% |  2.72% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003009s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003193s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003283s |  0.00% |  0.00% )   ( 0.003679s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008295s |  0.00% |  0.04% )   ( 0.008371s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 16.638965s |  1.64% |  3.30% )   ( 15.838627s |  1.73% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.000988s |  0.00% |  0.00% )   ( 0.001011s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 16.637815s |  1.64% | 99.99% )   ( 15.837440s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p20
30.5.0:         ( 0.031728s |  0.00% |  0.19% )   ( 0.031604s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035688s |  0.00% |  0.21% )   ( 0.035572s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.051045s |  0.00% |  0.30% )   ( 0.050873s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.046243s |  0.00% |  0.27% )   ( 0.046064s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.046474s |  0.00% |  0.27% )   ( 0.046327s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003691s |  0.00% |  0.00% )   ( 0.004141s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003321s |  0.00% |  0.00% )   ( 0.003780s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p20
41.5.0:         ( 0.129725s |  0.01% |  0.03% )   ( 0.005132s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003270s |  0.00% |  0.00% )   ( 0.003724s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003510s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003197s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024922s |  0.00% |  0.00% )   ( 0.025260s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003253s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p20
54.5.0:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003588s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003127s |  0.00% |  0.00% )   ( 0.003551s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.215468s |  1.60% |  4.64% )   ( 15.536994s |  1.69% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003200s |  0.00% |  0.01% )   ( 0.003642s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.099469s |  0.10% |  6.78% )   ( 1.015056s |  0.11% |  6.53% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.869255s |  0.18% | 11.52% )   ( 1.821715s |  0.19% | 11.72% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.581845s |  0.15% |  9.75% )   ( 1.498615s |  0.16% |  9.64% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.919293s |  0.19% | 11.83% )   ( 1.820364s |  0.19% | 11.71% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.556002s |  0.15% |  9.59% )   ( 1.450049s |  0.15% |  9.33% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.976851s |  0.09% |  6.02% )   ( 0.941089s |  0.10% |  6.05% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.444501s |  0.04% |  2.74% )   ( 0.439373s |  0.04% |  2.82% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.033187s |  0.10% |  6.37% )   ( 1.012198s |  0.11% |  6.51% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.396288s |  0.03% |  2.44% )   ( 0.386880s |  0.04% |  2.49% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.335831s |  0.13% |  8.23% )   ( 1.286850s |  0.14% |  8.28% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.048438s |  0.30% | 18.79% )   ( 3.011595s |  0.32% | 19.38% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.476089s |  0.04% |  2.93% )   ( 0.439710s |  0.04% |  2.83% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.475219s |  0.04% |  2.93% )   ( 0.409858s |  0.04% |  2.63% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003187s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002938s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006400s |  0.00% |  0.00% )   ( 0.003815s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004936s |  0.00% |  0.02% )   ( 0.004999s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 16.725078s |  1.65% |  3.32% )   ( 16.066532s |  1.75% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001048s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 16.723873s |  1.65% | 99.99% )   ( 16.065290s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p21
30.5.0:         ( 0.042761s |  0.00% |  0.25% )   ( 0.042583s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047504s |  0.00% |  0.28% )   ( 0.047334s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.047207s |  0.00% |  0.28% )   ( 0.047027s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.048432s |  0.00% |  0.28% )   ( 0.048260s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.045662s |  0.00% |  0.27% )   ( 0.045357s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004070s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003191s |  0.00% |  0.00% )   ( 0.003605s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p21
41.5.0:         ( 0.159065s |  0.01% |  0.04% )   ( 0.004920s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003120s |  0.00% |  0.00% )   ( 0.003532s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.002778s |  0.00% |  0.00% )   ( 0.003176s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002983s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024929s |  0.00% |  0.00% )   ( 0.022254s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005927s |  0.00% |  0.00% )   ( 0.003313s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003456s |  0.00% |  0.00% )   ( 0.003861s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p21
54.5.0:         ( 0.002919s |  0.00% |  0.00% )   ( 0.003281s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002757s |  0.00% |  0.00% )   ( 0.003156s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.253661s |  1.61% |  5.11% )   ( 15.750069s |  1.72% |  5.15% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002833s |  0.00% |  0.01% )   ( 0.003218s |  0.00% |  0.02% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.073220s |  0.10% |  6.60% )   ( 1.042312s |  0.11% |  6.61% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.893511s |  0.18% | 11.64% )   ( 1.865326s |  0.20% | 11.84% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.620570s |  0.16% |  9.97% )   ( 1.501467s |  0.16% |  9.53% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.949447s |  0.19% | 11.99% )   ( 1.879049s |  0.20% | 11.93% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.501130s |  0.14% |  9.23% )   ( 1.484684s |  0.16% |  9.42% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.992061s |  0.09% |  6.10% )   ( 0.924395s |  0.10% |  5.86% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.426723s |  0.04% |  2.62% )   ( 0.418546s |  0.04% |  2.65% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.037921s |  0.10% |  6.38% )   ( 1.011103s |  0.11% |  6.41% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.368260s |  0.03% |  2.26% )   ( 0.360391s |  0.03% |  2.28% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.327577s |  0.13% |  8.16% )   ( 1.294724s |  0.14% |  8.22% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.189065s |  0.31% | 19.62% )   ( 3.149611s |  0.34% | 19.99% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.474156s |  0.04% |  2.91% )   ( 0.425990s |  0.04% |  2.70% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.397187s |  0.03% |  2.44% )   ( 0.389253s |  0.04% |  2.47% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002999s |  0.00% |  0.00% )   ( 0.003402s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002697s |  0.00% |  0.00% )   ( 0.003062s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002894s |  0.00% |  0.00% )   ( 0.003253s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006570s |  0.00% |  0.03% )   ( 0.006629s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 16.916609s |  1.67% |  3.36% )   ( 15.871703s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001033s |  0.00% |  0.00% )   ( 0.001063s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 16.915402s |  1.67% | 99.99% )   ( 15.870450s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p22
30.5.0:         ( 0.045796s |  0.00% |  0.27% )   ( 0.045617s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045686s |  0.00% |  0.27% )   ( 0.045493s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.045856s |  0.00% |  0.27% )   ( 0.045678s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.045857s |  0.00% |  0.27% )   ( 0.045652s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.045740s |  0.00% |  0.27% )   ( 0.045545s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004217s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007044s |  0.00% |  0.00% )   ( 0.005029s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p22
41.5.0:         ( 0.128687s |  0.01% |  0.03% )   ( 0.005248s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004417s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003519s |  0.00% |  0.00% )   ( 0.004002s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003832s |  0.00% |  0.00% )   ( 0.004326s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031580s |  0.00% |  0.00% )   ( 0.031918s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005431s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004541s |  0.00% |  0.00% )   ( 0.005064s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p22
54.5.0:         ( 0.003715s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003673s |  0.00% |  0.00% )   ( 0.004197s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.461565s |  1.63% |  4.05% )   ( 15.537561s |  1.69% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003653s |  0.00% |  0.02% )   ( 0.004147s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.113031s |  0.11% |  6.76% )   ( 1.067958s |  0.11% |  6.87% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.919781s |  0.19% | 11.66% )   ( 1.845421s |  0.20% | 11.87% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.613389s |  0.15% |  9.80% )   ( 1.532307s |  0.16% |  9.86% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.857523s |  0.18% | 11.28% )   ( 1.813292s |  0.19% | 11.67% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.541240s |  0.15% |  9.36% )   ( 1.481597s |  0.16% |  9.53% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.010399s |  0.10% |  6.13% )   ( 0.950221s |  0.10% |  6.11% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.561083s |  0.05% |  3.40% )   ( 0.496988s |  0.05% |  3.19% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.079267s |  0.10% |  6.55% )   ( 1.008231s |  0.11% |  6.48% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.460378s |  0.04% |  2.79% )   ( 0.428104s |  0.04% |  2.75% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.333035s |  0.13% |  8.09% )   ( 1.228977s |  0.13% |  7.90% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.844892s |  0.28% | 17.28% )   ( 2.712265s |  0.29% | 17.45% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.541961s |  0.05% |  3.29% )   ( 0.494254s |  0.05% |  3.18% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.581933s |  0.05% |  3.53% )   ( 0.473799s |  0.05% |  3.04% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003531s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003555s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004310s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005200s |  0.00% |  0.03% )   ( 0.005273s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 18.280089s |  1.81% |  3.63% )   ( 17.370855s |  1.89% |  3.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.000900s |  0.00% |  0.00% )   ( 0.000926s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 18.279004s |  1.81% | 99.99% )   ( 17.369723s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p23
30.5.0:         ( 0.049818s |  0.00% |  0.27% )   ( 0.045761s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044980s |  0.00% |  0.24% )   ( 0.044557s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.044865s |  0.00% |  0.24% )   ( 0.044479s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.048536s |  0.00% |  0.26% )   ( 0.048112s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.051263s |  0.00% |  0.28% )   ( 0.050826s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004627s |  0.00% |  0.00% )   ( 0.005197s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004301s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005273s |  0.00% |  0.00% )   ( 0.005846s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p23
41.5.0:         ( 0.145370s |  0.01% |  0.02% )   ( 0.006198s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004454s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004250s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.004051s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004469s |  0.00% |  0.00% )   ( 0.004928s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034570s |  0.00% |  0.00% )   ( 0.035051s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004651s |  0.00% |  0.00% )   ( 0.005202s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004970s |  0.00% |  0.00% )   ( 0.005535s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p23
54.5.0:         ( 0.004107s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.791541s |  1.76% |  3.60% )   ( 17.018839s |  1.85% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004100s |  0.00% |  0.02% )   ( 0.004630s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.241773s |  0.12% |  6.97% )   ( 1.232763s |  0.13% |  7.24% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.964205s |  0.19% | 11.04% )   ( 1.948423s |  0.21% | 11.44% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.673902s |  0.16% |  9.40% )   ( 1.596041s |  0.17% |  9.37% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.937470s |  0.19% | 10.88% )   ( 1.892319s |  0.20% | 11.11% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.629025s |  0.16% |  9.15% )   ( 1.532075s |  0.16% |  9.00% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.135596s |  0.11% |  6.38% )   ( 1.093448s |  0.11% |  6.42% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.580547s |  0.05% |  3.26% )   ( 0.557275s |  0.06% |  3.27% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.180956s |  0.11% |  6.63% )   ( 1.118812s |  0.12% |  6.57% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501947s |  0.04% |  2.82% )   ( 0.480101s |  0.05% |  2.82% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.463129s |  0.14% |  8.22% )   ( 1.410853s |  0.15% |  8.28% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.335182s |  0.33% | 18.74% )   ( 3.071103s |  0.33% | 18.04% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.572993s |  0.05% |  3.22% )   ( 0.546474s |  0.05% |  3.21% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.570716s |  0.05% |  3.20% )   ( 0.534522s |  0.05% |  3.14% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003857s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004775s |  0.00% |  0.02% )   ( 0.004846s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000185s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 15.915917s |  1.57% |  3.16% )   ( 15.040559s |  1.64% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001021s |  0.00% |  0.00% )   ( 0.001040s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 15.914740s |  1.57% | 99.99% )   ( 15.039344s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000105s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p24
30.5.0:         ( 0.044501s |  0.00% |  0.27% )   ( 0.044325s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047126s |  0.00% |  0.29% )   ( 0.046958s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.048390s |  0.00% |  0.30% )   ( 0.048202s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.043190s |  0.00% |  0.27% )   ( 0.042675s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.050706s |  0.00% |  0.31% )   ( 0.050519s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004473s |  0.00% |  0.00% )   ( 0.005024s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005055s |  0.00% |  0.00% )   ( 0.005621s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p24
41.5.0:         ( 0.233497s |  0.02% |  0.05% )   ( 0.006635s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004373s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.004004s |  0.00% |  0.00% )   ( 0.004530s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003574s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031663s |  0.00% |  0.00% )   ( 0.030546s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007202s |  0.00% |  0.00% )   ( 0.004755s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004725s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p24
54.5.0:         ( 0.003717s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.343827s |  1.52% |  3.85% )   ( 14.694578s |  1.60% |  3.90% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003606s |  0.00% |  0.02% )   ( 0.004124s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 0.999135s |  0.09% |  6.51% )   ( 0.987987s |  0.10% |  6.72% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.783684s |  0.17% | 11.62% )   ( 1.651539s |  0.18% | 11.23% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.466617s |  0.14% |  9.55% )   ( 1.409124s |  0.15% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.729453s |  0.17% | 11.27% )   ( 1.636645s |  0.17% | 11.13% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.383463s |  0.13% |  9.01% )   ( 1.349117s |  0.14% |  9.18% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.938007s |  0.09% |  6.11% )   ( 0.893893s |  0.09% |  6.08% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531349s |  0.05% |  3.46% )   ( 0.503675s |  0.05% |  3.42% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.995769s |  0.09% |  6.48% )   ( 0.935574s |  0.10% |  6.36% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.479530s |  0.04% |  3.12% )   ( 0.444349s |  0.04% |  3.02% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.279101s |  0.12% |  8.33% )   ( 1.242638s |  0.13% |  8.45% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.721603s |  0.26% | 17.73% )   ( 2.645026s |  0.28% | 18.00% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518747s |  0.05% |  3.38% )   ( 0.505910s |  0.05% |  3.44% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.513763s |  0.05% |  3.34% )   ( 0.484977s |  0.05% |  3.30% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004196s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003294s |  0.00% |  0.00% )   ( 0.003777s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004175s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.011003s |  0.00% |  0.06% )   ( 0.009693s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 16.529257s |  1.63% |  3.28% )   ( 16.077697s |  1.75% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.000947s |  0.00% |  0.00% )   ( 0.000972s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 16.528131s |  1.63% | 99.99% )   ( 16.076520s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p25
30.5.0:         ( 0.045726s |  0.00% |  0.27% )   ( 0.045557s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045989s |  0.00% |  0.27% )   ( 0.045812s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.050471s |  0.00% |  0.30% )   ( 0.050236s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.054201s |  0.00% |  0.32% )   ( 0.054004s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.050158s |  0.00% |  0.30% )   ( 0.049851s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004478s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004623s |  0.00% |  0.00% )   ( 0.005129s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p25
41.5.0:         ( 0.176360s |  0.01% |  0.04% )   ( 0.005928s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003988s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004214s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031292s |  0.00% |  0.00% )   ( 0.028604s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p25
54.5.0:         ( 0.003394s |  0.00% |  0.00% )   ( 0.003857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003234s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.014145s |  1.58% |  4.21% )   ( 15.729820s |  1.71% |  4.25% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003387s |  0.00% |  0.02% )   ( 0.003873s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.049930s |  0.10% |  6.55% )   ( 1.048353s |  0.11% |  6.66% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.880142s |  0.18% | 11.74% )   ( 1.860681s |  0.20% | 11.82% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.537077s |  0.15% |  9.59% )   ( 1.512859s |  0.16% |  9.61% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.844917s |  0.18% | 11.52% )   ( 1.830883s |  0.20% | 11.63% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.501445s |  0.14% |  9.37% )   ( 1.470315s |  0.16% |  9.34% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.946334s |  0.09% |  5.90% )   ( 0.933705s |  0.10% |  5.93% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.484891s |  0.04% |  3.02% )   ( 0.482385s |  0.05% |  3.06% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.020198s |  0.10% |  6.37% )   ( 0.992657s |  0.10% |  6.31% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.439321s |  0.04% |  2.74% )   ( 0.411710s |  0.04% |  2.61% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.347168s |  0.13% |  8.41% )   ( 1.298914s |  0.14% |  8.25% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.992364s |  0.29% | 18.68% )   ( 2.957342s |  0.32% | 18.80% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.491540s |  0.04% |  3.06% )   ( 0.474572s |  0.05% |  3.01% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.475431s |  0.04% |  2.96% )   ( 0.451571s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003663s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003148s |  0.00% |  0.00% )   ( 0.003567s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003661s |  0.00% |  0.00% )   ( 0.004103s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005794s |  0.00% |  0.03% )   ( 0.005862s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 16.253554s |  1.61% |  3.23% )   ( 15.721707s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001018s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 16.252377s |  1.61% | 99.99% )   ( 15.720487s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p26
30.5.0:         ( 0.047706s |  0.00% |  0.29% )   ( 0.047050s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044930s |  0.00% |  0.27% )   ( 0.044756s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.046063s |  0.00% |  0.28% )   ( 0.045873s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.048029s |  0.00% |  0.29% )   ( 0.047846s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.047474s |  0.00% |  0.29% )   ( 0.047293s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004577s |  0.00% |  0.00% )   ( 0.005118s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004677s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004990s |  0.00% |  0.00% )   ( 0.005554s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p26
41.5.0:         ( 0.173063s |  0.01% |  0.04% )   ( 0.006555s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004446s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003630s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034464s |  0.00% |  0.00% )   ( 0.031472s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006429s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004619s |  0.00% |  0.00% )   ( 0.005133s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p26
54.5.0:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003630s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.740293s |  1.56% |  3.87% )   ( 15.374569s |  1.67% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003661s |  0.00% |  0.02% )   ( 0.004180s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.047076s |  0.10% |  6.65% )   ( 1.023829s |  0.11% |  6.65% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.835539s |  0.18% | 11.66% )   ( 1.757090s |  0.19% | 11.42% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.518704s |  0.15% |  9.64% )   ( 1.476602s |  0.16% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.777218s |  0.17% | 11.29% )   ( 1.712559s |  0.18% | 11.13% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.446888s |  0.14% |  9.19% )   ( 1.427850s |  0.15% |  9.28% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.951874s |  0.09% |  6.04% )   ( 0.933911s |  0.10% |  6.07% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.513959s |  0.05% |  3.26% )   ( 0.507038s |  0.05% |  3.29% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.018648s |  0.10% |  6.47% )   ( 0.983687s |  0.10% |  6.39% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.470766s |  0.04% |  2.99% )   ( 0.456973s |  0.04% |  2.97% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.306701s |  0.12% |  8.30% )   ( 1.295662s |  0.14% |  8.42% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.839834s |  0.28% | 18.04% )   ( 2.806684s |  0.30% | 18.25% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.509688s |  0.05% |  3.23% )   ( 0.504096s |  0.05% |  3.27% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.499737s |  0.04% |  3.17% )   ( 0.484408s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004154s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008648s |  0.00% |  0.05% )   ( 0.008726s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.354007s |  1.72% |  3.45% )   ( 16.743230s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001080s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.352752s |  1.72% | 99.99% )   ( 16.741938s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.s6LnMw"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p27
30.5.0:         ( 0.045738s |  0.00% |  0.26% )   ( 0.045568s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050909s |  0.00% |  0.29% )   ( 0.050716s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1178892 ${BASHPID}' INT
33.5.0:         ( 0.051475s |  0.00% |  0.29% )   ( 0.051277s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1178892 ${BASHPID}' TERM
34.5.0:         ( 0.052468s |  0.00% |  0.30% )   ( 0.052239s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1178892 ${BASHPID}' HUP
35.5.0:         ( 0.049253s |  0.00% |  0.28% )   ( 0.049082s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.s6LnMw"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004376s |  0.00% |  0.00% )   ( 0.004885s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p27
41.5.0:         ( 0.127948s |  0.01% |  0.03% )   ( 0.005175s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003675s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.quit ]]
46.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.done ]]
46.5.1:         ( 0.003201s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003594s |  0.00% |  0.00% )   ( 0.004062s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027585s |  0.00% |  0.00% )   ( 0.027940s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.s6LnMw"/.wait/p27
54.5.0:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003318s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.890229s |  1.67% |  4.42% )   ( 16.396910s |  1.79% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003222s |  0.00% |  0.01% )   ( 0.003662s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.202601s |  0.11% |  7.12% )   ( 1.111245s |  0.12% |  6.77% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.051921s |  0.20% | 12.14% )   ( 2.021298s |  0.22% | 12.32% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.674143s |  0.16% |  9.91% )   ( 1.634084s |  0.17% |  9.96% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.024432s |  0.20% | 11.98% )   ( 1.991894s |  0.21% | 12.14% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.662140s |  0.16% |  9.84% )   ( 1.573420s |  0.17% |  9.59% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.996587s |  0.09% |  5.90% )   ( 0.983838s |  0.10% |  6.00% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471132s |  0.04% |  2.78% )   ( 0.470405s |  0.05% |  2.86% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.044674s |  0.10% |  6.18% )   ( 1.028252s |  0.11% |  6.27% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.413055s |  0.04% |  2.44% )   ( 0.398356s |  0.04% |  2.42% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.363929s |  0.13% |  8.07% )   ( 1.284768s |  0.14% |  7.83% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.073980s |  0.30% | 18.19% )   ( 3.001366s |  0.32% | 18.30% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.466495s |  0.04% |  2.76% )   ( 0.460047s |  0.05% |  2.80% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.441918s |  0.04% |  2.61% )   ( 0.434275s |  0.04% |  2.64% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003344s |  0.00% |  0.00% )   ( 0.003576s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004993s |  0.00% |  0.02% )   ( 0.005064s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001400s |  0.00% |  0.00% )   ( 0.001418s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 21.532685s |  2.13% |  4.28% )   ( 0.001767s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000138s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000111s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.044319s |  0.00% |  0.00% )   ( 0.044474s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.s6LnMw"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.s6LnMw"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1178906  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.s6LnMw"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000176s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007588s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.s6LnMw" 2>/dev/null

TOTAL RUN TIME: 1008.497525s
TOTAL CPU TIME: 915.424948s

