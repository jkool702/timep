LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 550.357195s | 50.15% )            ( 498.539159s | 49.95% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000642s |  0.00% |  0.00% )   ( 0.000313s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 550.356553s | 50.15% | 99.99% )   ( 498.538846s | 49.95% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041314s |  0.00% |  0.00% )   ( 0.041195s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000968s |  0.00% |  0.00% )   ( 0.000812s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005685s |  0.00% |  0.00% )   ( 0.005685s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.005685s |  0.00% |100.00% )   ( 0.005685s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002073s |  0.00% |  0.00% )   ( 0.002153s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026936s |  0.00% |  0.00% )   ( 0.000891s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 550.272042s | 50.15% | 99.98% )   ( 498.483304s | 49.94% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
.3.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  ├─
235.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001002s |  0.00% |  0.00% )   ( 0.001144s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001002s |  0.00% |100.00% )   ( 0.001144s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000160s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000160s |  0.00% |100.00% )   ( 0.000186s |  0.00% |100.00% )    	(1x)	│  │  │  └─  :
238.3.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.007013s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000251s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000565s |  0.00% |  0.00% )   ( 0.000328s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000109s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000109s |  0.00% |100.00% )   ( 0.000121s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000903s |  0.00% |  0.00% )   ( 0.001035s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000075s |  0.00% |  8.30% )   ( 0.000082s |  0.00% |  7.92% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000065s |  0.00% |  7.19% )   ( 0.000077s |  0.00% |  7.43% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.53% )   ( 0.000079s |  0.00% |  7.63% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000069s |  0.00% |  7.64% )   ( 0.000080s |  0.00% |  7.72% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.41% )   ( 0.000078s |  0.00% |  7.53% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000088s |  0.00% |  9.74% )   ( 0.000099s |  0.00% |  9.56% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000066s |  0.00% |  7.30% )   ( 0.000077s |  0.00% |  7.43% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000115s |  0.00% | 12.73% )   ( 0.000126s |  0.00% | 12.17% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000065s |  0.00% |  7.19% )   ( 0.000077s |  0.00% |  7.43% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000082s |  0.00% |  9.08% )   ( 0.000093s |  0.00% |  8.98% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000069s |  0.00% |  7.64% )   ( 0.000081s |  0.00% |  7.82% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000074s |  0.00% |  8.19% )   ( 0.000086s |  0.00% |  8.30% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.001056s |  0.00% |  0.00% )   ( 0.000885s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002784s |  0.00% |  0.00% )   ( 0.002954s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000526s |  0.00% | 18.89% )   ( 0.000551s |  0.00% | 18.65% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002258s |  0.00% | 81.10% )   ( 0.002403s |  0.00% | 81.34% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000693s |  0.00% |  0.00% )   ( 0.000558s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000119s |  0.00% |100.00% )   ( 0.000136s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001258s |  0.00% |  0.00% )   ( 0.001340s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000514s |  0.00% |  0.00% )   ( 0.000529s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134789s |  0.01% |  0.02% )   ( 0.134576s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000083s |  0.00% |  0.06% )   ( 0.000095s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020938s |  0.00% | 15.53% )   ( 0.020881s |  0.00% | 15.51% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023712s |  0.00% | 17.59% )   ( 0.023662s |  0.00% | 17.58% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023682s |  0.00% | 17.56% )   ( 0.023632s |  0.00% | 17.56% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023578s |  0.00% | 17.49% )   ( 0.023536s |  0.00% | 17.48% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023474s |  0.00% | 17.41% )   ( 0.023429s |  0.00% | 17.40% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.019010s |  0.00% | 14.10% )   ( 0.018974s |  0.00% | 14.09% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000098s |  0.00% |  0.07% )   ( 0.000110s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000084s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000095s |  0.00% |  0.07% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000414s |  0.00% |  0.00% )   ( 0.000429s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.360900s |  0.39% |  0.79% )   ( 1.897440s |  0.19% |  0.38% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000193s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024152s |  0.00% |  0.55% )   ( 0.024108s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.025706s |  0.00% |  0.58% )   ( 0.025632s |  0.00% |  1.35% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023644s |  0.00% |  0.54% )   ( 0.023589s |  0.00% |  1.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023541s |  0.00% |  0.53% )   ( 0.023485s |  0.00% |  1.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023649s |  0.00% |  0.54% )   ( 0.023602s |  0.00% |  1.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.094548s |  0.00% |  0.00% )   ( 0.107559s |  0.01% |  0.00% )    	(675x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.779716s |  0.25% |  0.09% )   ( 0.125585s |  0.01% |  0.00% )    	(674x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001330s |  0.00% |  0.00% )   ( 0.001474s |  0.00% |  0.01% )    	(7x)	│  │  │  │   continue
521.4.0:        ( 0.092751s |  0.00% |  0.00% )   ( 0.105700s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.091894s |  0.00% |  0.00% )   ( 0.104990s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.091030s |  0.00% |  0.00% )   ( 0.103939s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.095468s |  0.00% |  0.00% )   ( 0.108365s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.095864s |  0.00% |  0.00% )   ( 0.108847s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.091180s |  0.00% |  0.00% )   ( 0.104146s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.094809s |  0.00% |  0.00% )   ( 0.104622s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.091615s |  0.00% |  0.00% )   ( 0.104372s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000650s |  0.00% |  0.01% )   ( 0.000491s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002564s |  0.00% |  0.05% )   ( 0.002924s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002564s |  0.00% |100.00% )   ( 0.002924s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.090185s |  0.00% |  0.00% )   ( 0.102901s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.090515s |  0.00% |  0.00% )   ( 0.103367s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.089292s |  0.00% |  0.00% )   ( 0.100679s |  0.01% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.094862s |  0.00% |  0.00% )   ( 0.107770s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.092159s |  0.00% |  0.00% )   ( 0.105092s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.092544s |  0.00% |  0.00% )   ( 0.105459s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002923s |  0.00% |  0.00% )   ( 0.003325s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002874s |  0.00% |  0.00% )   ( 0.003275s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.043587s |  0.00% |  0.04% )   ( 0.042572s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003136s |  0.00% |  0.00% )   ( 0.003556s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003204s |  0.00% |  0.00% )   ( 0.003599s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003110s |  0.00% |  0.00% )   ( 0.003523s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.005609s |  0.00% |  0.12% )   ( 0.005702s |  0.00% |  0.30% )    	(1x)	│  │  │  └─  ${nSpawnFlag}
598.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001936s |  0.00% |  0.00% )   ( 0.001139s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006537s |  0.00% |  0.00% )   ( 0.007478s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000300s |  0.00% |  4.58% )   ( 0.000330s |  0.00% |  4.41% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000185s |  0.00% |  2.83% )   ( 0.000211s |  0.00% |  2.82% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000210s |  0.00% |  3.21% )   ( 0.000237s |  0.00% |  3.16% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000541s |  0.00% |  8.27% )   ( 0.000571s |  0.00% |  7.63% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.04% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000065s |  0.00% |  0.99% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000068s |  0.00% |  1.04% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.05% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000064s |  0.00% |  0.97% )   ( 0.000075s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000072s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.08% )   ( 0.000081s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000063s |  0.00% |  0.96% )   ( 0.000075s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000079s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000079s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000072s |  0.00% |  1.10% )   ( 0.000083s |  0.00% |  1.10% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000073s |  0.00% |  1.11% )   ( 0.000085s |  0.00% |  1.13% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000063s |  0.00% |  0.96% )   ( 0.000074s |  0.00% |  0.98% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000074s |  0.00% |  1.13% )   ( 0.000085s |  0.00% |  1.13% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000081s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000071s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000069s |  0.00% |  1.05% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000099s |  0.00% |  1.51% )   ( 0.000110s |  0.00% |  1.47% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000076s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000076s |  0.00% |  1.16% )   ( 0.000088s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000072s |  0.00% |  1.10% )   ( 0.000083s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.33% )   ( 0.000099s |  0.00% |  1.32% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000097s |  0.00% |  1.48% )   ( 0.000105s |  0.00% |  1.40% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.20% )   ( 0.000090s |  0.00% |  1.20% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000072s |  0.00% |  1.10% )   ( 0.000083s |  0.00% |  1.10% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000071s |  0.00% |  1.08% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000069s |  0.00% |  1.05% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000083s |  0.00% |  1.26% )   ( 0.000092s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.04% )   ( 0.000079s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000080s |  0.00% |  1.22% )   ( 0.000092s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000063s |  0.00% |  0.96% )   ( 0.000074s |  0.00% |  0.98% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.16% )   ( 0.000087s |  0.00% |  1.16% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000076s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000078s |  0.00% |  1.19% )   ( 0.000087s |  0.00% |  1.16% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000081s |  0.00% |  1.23% )   ( 0.000093s |  0.00% |  1.24% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000076s |  0.00% |  1.16% )   ( 0.000088s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000065s |  0.00% |  0.99% )   ( 0.000075s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000071s |  0.00% |  1.08% )   ( 0.000082s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000065s |  0.00% |  0.99% )   ( 0.000075s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000089s |  0.00% |  1.36% )   ( 0.000100s |  0.00% |  1.33% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000080s |  0.00% |  1.22% )   ( 0.000091s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000069s |  0.00% |  1.05% )   ( 0.000093s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000104s |  0.00% |  1.59% )   ( 0.000116s |  0.00% |  1.55% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  0.99% )   ( 0.000076s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  1.00% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  0.97% )   ( 0.000075s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000067s |  0.00% |  1.02% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000092s |  0.00% |  1.40% )   ( 0.000100s |  0.00% |  1.33% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.10% )   ( 0.000083s |  0.00% |  1.10% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.04% )   ( 0.000078s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000065s |  0.00% |  0.99% )   ( 0.000077s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000073s |  0.00% |  1.11% )   ( 0.000084s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000081s |  0.00% |  1.08% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000081s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000070s |  0.00% |  1.07% )   ( 0.000080s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000084s |  0.00% |  1.28% )   ( 0.000097s |  0.00% |  1.29% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000297s |  0.00% |  0.00% )   ( 0.000339s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000295s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023857s |  0.00% |  0.00% )   ( 0.023813s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.024449s |  0.00% |  0.00% )   ( 0.024417s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023826s |  0.00% |  0.00% )   ( 0.168186s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023183s |  0.00% |  0.00% )   ( 0.023126s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002899s |  0.00% |  0.00% )   ( 0.003319s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002757s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 19.155397s |  1.74% |  3.48% )   ( 18.842225s |  1.88% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000625s |  0.00% |  0.00% )   ( 0.000640s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.154678s |  1.74% | 99.99% )   ( 18.841479s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p0
30.5.0:         ( 0.023498s |  0.00% |  0.12% )   ( 0.023456s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023622s |  0.00% |  0.12% )   ( 0.023585s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.023781s |  0.00% |  0.12% )   ( 0.023738s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.023890s |  0.00% |  0.12% )   ( 0.023849s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.023977s |  0.00% |  0.12% )   ( 0.023934s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001501s |  0.00% |  0.00% )   ( 0.001689s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001342s |  0.00% |  0.00% )   ( 0.001538s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000238s |  0.00% |  0.00% )   ( 0.000269s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001656s |  0.00% |  0.00% )   ( 0.001849s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p0
41.5.0:         ( 0.086197s |  0.00% |  0.04% )   ( 0.002082s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001467s |  0.00% |  0.00% )   ( 0.001665s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.001230s |  0.00% |  0.00% )   ( 0.001401s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.001177s |  0.00% |  0.00% )   ( 0.001345s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001217s |  0.00% |  0.00% )   ( 0.001375s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.009243s |  0.00% |  0.00% )   ( 0.009400s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001176s |  0.00% |  0.00% )   ( 0.001344s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001148s |  0.00% |  0.00% )   ( 0.001307s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.001449s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001486s |  0.00% |  0.00% )   ( 0.001660s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p0
66.5.0:         ( 0.001160s |  0.00% |  0.00% )   ( 0.001330s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001166s |  0.00% |  0.00% )   ( 0.001336s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.904012s |  1.72% | 10.96% )   ( 18.677181s |  1.87% | 11.01% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001175s |  0.00% |  0.00% )   ( 0.001337s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.184692s |  0.10% |  6.26% )   ( 1.161905s |  0.11% |  6.22% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.486587s |  0.22% | 13.15% )   ( 2.475326s |  0.24% | 13.25% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.747450s |  0.15% |  9.24% )   ( 1.741618s |  0.17% |  9.32% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.496913s |  0.22% | 13.20% )   ( 2.479399s |  0.24% | 13.27% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.750669s |  0.15% |  9.26% )   ( 1.745314s |  0.17% |  9.34% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.087725s |  0.09% |  5.75% )   ( 1.044499s |  0.10% |  5.59% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.298891s |  0.02% |  1.58% )   ( 0.290755s |  0.02% |  1.55% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.227630s |  0.11% |  6.49% )   ( 1.214414s |  0.12% |  6.50% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.236585s |  0.02% |  1.25% )   ( 0.230580s |  0.02% |  1.23% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432825s |  0.13% |  7.57% )   ( 1.413626s |  0.14% |  7.56% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.434565s |  0.40% | 23.45% )   ( 4.384056s |  0.43% | 23.47% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.276548s |  0.02% |  1.46% )   ( 0.271228s |  0.02% |  1.45% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.241757s |  0.02% |  1.27% )   ( 0.223124s |  0.02% |  1.19% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.001181s |  0.00% |  0.00% )   ( 0.001343s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.000986s |  0.00% |  0.00% )   ( 0.001125s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.001297s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009100s |  0.00% |  0.04% )   ( 0.009168s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002698s |  0.00% |  0.00% )   ( 0.003117s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.560641s |  1.60% |  3.19% )   ( 16.567373s |  1.65% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000612s |  0.00% |  0.00% )   ( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.559944s |  1.60% | 99.99% )   ( 16.566647s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000319s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p1
30.5.0:         ( 0.023661s |  0.00% |  0.13% )   ( 0.023617s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023781s |  0.00% |  0.13% )   ( 0.023745s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.023854s |  0.00% |  0.13% )   ( 0.023807s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.023947s |  0.00% |  0.13% )   ( 0.023905s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024002s |  0.00% |  0.13% )   ( 0.023956s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005473s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005276s |  0.00% |  0.00% )   ( 0.005853s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p1
41.5.0:         ( 0.393915s |  0.03% |  0.07% )   ( 0.006907s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007948s |  0.00% |  0.00% )   ( 0.005547s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004412s |  0.00% |  0.00% )   ( 0.005005s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004083s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004261s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038906s |  0.00% |  0.00% )   ( 0.033356s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004016s |  0.00% |  0.00% )   ( 0.004553s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005407s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004851s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p1
66.5.0:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.923567s |  1.54% |  3.44% )   ( 16.317943s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004063s |  0.00% |  0.02% )   ( 0.004629s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.142300s |  0.10% |  6.74% )   ( 1.072400s |  0.10% |  6.57% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.936371s |  0.17% | 11.44% )   ( 1.842463s |  0.18% | 11.29% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.641646s |  0.14% |  9.70% )   ( 1.579907s |  0.15% |  9.68% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.881595s |  0.17% | 11.11% )   ( 1.859849s |  0.18% | 11.39% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.521638s |  0.13% |  8.99% )   ( 1.502759s |  0.15% |  9.20% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.996729s |  0.09% |  5.88% )   ( 0.981512s |  0.09% |  6.01% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.544572s |  0.04% |  3.21% )   ( 0.533097s |  0.05% |  3.26% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.135091s |  0.10% |  6.70% )   ( 1.029047s |  0.10% |  6.30% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.520369s |  0.04% |  3.07% )   ( 0.472988s |  0.04% |  2.89% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.408953s |  0.12% |  8.32% )   ( 1.380968s |  0.13% |  8.46% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.121252s |  0.28% | 18.44% )   ( 3.024993s |  0.30% | 18.53% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.532995s |  0.04% |  3.14% )   ( 0.524416s |  0.05% |  3.21% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.535993s |  0.04% |  3.16% )   ( 0.508915s |  0.05% |  3.11% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004847s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003633s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004577s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008947s |  0.00% |  0.05% )   ( 0.009033s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 18.186253s |  1.65% |  3.30% )   ( 17.741595s |  1.77% |  3.55% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 18.185559s |  1.65% | 99.99% )   ( 17.740866s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p2
30.5.0:         ( 0.023962s |  0.00% |  0.13% )   ( 0.023916s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023973s |  0.00% |  0.13% )   ( 0.023927s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024083s |  0.00% |  0.13% )   ( 0.024033s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024229s |  0.00% |  0.13% )   ( 0.024183s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024175s |  0.00% |  0.13% )   ( 0.024122s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003323s |  0.00% |  0.00% )   ( 0.003741s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003087s |  0.00% |  0.00% )   ( 0.003483s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003672s |  0.00% |  0.00% )   ( 0.004108s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p2
41.5.0:         ( 0.120199s |  0.01% |  0.03% )   ( 0.004443s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003092s |  0.00% |  0.00% )   ( 0.003512s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003111s |  0.00% |  0.00% )   ( 0.003530s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.002854s |  0.00% |  0.00% )   ( 0.003238s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003402s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027487s |  0.00% |  0.00% )   ( 0.021811s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002922s |  0.00% |  0.00% )   ( 0.003317s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002928s |  0.00% |  0.00% )   ( 0.003322s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003086s |  0.00% |  0.00% )   ( 0.003485s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.003986s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p2
66.5.0:         ( 0.002977s |  0.00% |  0.00% )   ( 0.003391s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002923s |  0.00% |  0.00% )   ( 0.003336s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.858079s |  1.62% |  4.90% )   ( 17.528394s |  1.75% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002865s |  0.00% |  0.01% )   ( 0.003282s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.150361s |  0.10% |  6.44% )   ( 1.138009s |  0.11% |  6.49% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.175340s |  0.19% | 12.18% )   ( 2.148290s |  0.21% | 12.25% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.696855s |  0.15% |  9.50% )   ( 1.658944s |  0.16% |  9.46% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.152590s |  0.19% | 12.05% )   ( 2.134771s |  0.21% | 12.17% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.641551s |  0.14% |  9.19% )   ( 1.618040s |  0.16% |  9.23% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.064822s |  0.09% |  5.96% )   ( 1.052558s |  0.10% |  6.00% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.434163s |  0.03% |  2.43% )   ( 0.424417s |  0.04% |  2.42% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.163481s |  0.10% |  6.51% )   ( 1.119845s |  0.11% |  6.38% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.364443s |  0.03% |  2.04% )   ( 0.362894s |  0.03% |  2.07% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.436270s |  0.13% |  8.04% )   ( 1.407158s |  0.14% |  8.02% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.733697s |  0.34% | 20.90% )   ( 3.654752s |  0.36% | 20.85% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.435415s |  0.03% |  2.43% )   ( 0.419458s |  0.04% |  2.39% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.406226s |  0.03% |  2.27% )   ( 0.385976s |  0.03% |  2.20% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002789s |  0.00% |  0.00% )   ( 0.003159s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002599s |  0.00% |  0.00% )   ( 0.002962s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002941s |  0.00% |  0.00% )   ( 0.003302s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008968s |  0.00% |  0.04% )   ( 0.009041s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.898087s |  1.72% |  3.43% )   ( 18.238025s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000627s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.897393s |  1.72% | 99.99% )   ( 18.237299s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000387s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p3
30.5.0:         ( 0.023925s |  0.00% |  0.12% )   ( 0.023876s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023924s |  0.00% |  0.12% )   ( 0.023882s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024014s |  0.00% |  0.12% )   ( 0.023970s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.023966s |  0.00% |  0.12% )   ( 0.023923s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.023992s |  0.00% |  0.12% )   ( 0.023940s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002101s |  0.00% |  0.00% )   ( 0.002363s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   true
38.5.0:         ( 0.001994s |  0.00% |  0.00% )   ( 0.002256s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002248s |  0.00% |  0.00% )   ( 0.002514s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p3
41.5.0:         ( 0.212506s |  0.01% |  0.08% )   ( 0.003177s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002101s |  0.00% |  0.00% )   ( 0.002380s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.001767s |  0.00% |  0.00% )   ( 0.001999s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.001665s |  0.00% |  0.00% )   ( 0.001896s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001739s |  0.00% |  0.00% )   ( 0.001979s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.014487s |  0.00% |  0.00% )   ( 0.014568s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001719s |  0.00% |  0.00% )   ( 0.001984s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001697s |  0.00% |  0.00% )   ( 0.001933s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001860s |  0.00% |  0.00% )   ( 0.002096s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002124s |  0.00% |  0.00% )   ( 0.002373s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p3
66.5.0:         ( 0.001728s |  0.00% |  0.00% )   ( 0.001981s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001610s |  0.00% |  0.00% )   ( 0.001828s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.509354s |  1.68% |  8.16% )   ( 18.054548s |  1.80% |  8.24% )    	(12x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001780s |  0.00% |  0.00% )   ( 0.002038s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.155563s |  0.10% |  6.24% )   ( 1.143008s |  0.11% |  6.33% )    	(12x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.270471s |  0.20% | 12.26% )   ( 2.260415s |  0.22% | 12.51% )    	(12x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.764242s |  0.16% |  9.53% )   ( 1.705129s |  0.17% |  9.44% )    	(12x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.286699s |  0.20% | 12.35% )   ( 2.261334s |  0.22% | 12.52% )    	(12x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.748478s |  0.15% |  9.44% )   ( 1.706218s |  0.17% |  9.45% )    	(12x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.037347s |  0.09% |  5.60% )   ( 1.020989s |  0.10% |  5.65% )    	(12x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.351427s |  0.03% |  1.89% )   ( 0.342003s |  0.03% |  1.89% )    	(12x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.187504s |  0.10% |  6.41% )   ( 1.163619s |  0.11% |  6.44% )    	(12x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.311950s |  0.02% |  1.68% )   ( 0.278621s |  0.02% |  1.54% )    	(12x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.503118s |  0.13% |  8.12% )   ( 1.464501s |  0.14% |  8.11% )    	(12x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.207942s |  0.38% | 22.73% )   ( 4.085133s |  0.40% | 22.62% )    	(12x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.352001s |  0.03% |  1.90% )   ( 0.325458s |  0.03% |  1.80% )    	(12x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.330832s |  0.03% |  1.78% )   ( 0.296082s |  0.02% |  1.63% )    	(12x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001834s |  0.00% |  0.00% )   ( 0.002062s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001571s |  0.00% |  0.00% )   ( 0.001806s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001749s |  0.00% |  0.00% )   ( 0.001962s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.010164s |  0.00% |  0.05% )   ( 0.010252s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 19.614547s |  1.78% |  3.56% )   ( 18.915987s |  1.89% |  3.79% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000611s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 19.613846s |  1.78% | 99.99% )   ( 18.915252s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p4
30.5.0:         ( 0.023861s |  0.00% |  0.12% )   ( 0.023819s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023918s |  0.00% |  0.12% )   ( 0.023875s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024053s |  0.00% |  0.12% )   ( 0.023993s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.023994s |  0.00% |  0.12% )   ( 0.023948s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024105s |  0.00% |  0.12% )   ( 0.024057s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003383s |  0.00% |  0.00% )   ( 0.003826s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p4
41.5.0:         ( 0.315818s |  0.02% |  0.07% )   ( 0.005372s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003422s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003198s |  0.00% |  0.00% )   ( 0.003621s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003575s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028271s |  0.00% |  0.00% )   ( 0.028627s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003236s |  0.00% |  0.00% )   ( 0.003676s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003237s |  0.00% |  0.00% )   ( 0.003677s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004475s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p4
66.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003601s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003108s |  0.00% |  0.00% )   ( 0.003536s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.088133s |  1.73% |  4.42% )   ( 18.693667s |  1.87% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003130s |  0.00% |  0.01% )   ( 0.003555s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.278760s |  0.11% |  6.69% )   ( 1.266589s |  0.12% |  6.77% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.385254s |  0.21% | 12.49% )   ( 2.361335s |  0.23% | 12.63% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.905103s |  0.17% |  9.98% )   ( 1.868085s |  0.18% |  9.99% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.342174s |  0.21% | 12.27% )   ( 2.323258s |  0.23% | 12.42% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.678694s |  0.15% |  8.79% )   ( 1.667077s |  0.16% |  8.91% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.179794s |  0.10% |  6.18% )   ( 1.145228s |  0.11% |  6.12% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551069s |  0.05% |  2.88% )   ( 0.500547s |  0.05% |  2.67% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.246917s |  0.11% |  6.53% )   ( 1.205128s |  0.12% |  6.44% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.463842s |  0.04% |  2.43% )   ( 0.423432s |  0.04% |  2.26% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.486655s |  0.13% |  7.78% )   ( 1.465115s |  0.14% |  7.83% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.575253s |  0.32% | 18.73% )   ( 3.525233s |  0.35% | 18.85% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507884s |  0.04% |  2.66% )   ( 0.485509s |  0.04% |  2.59% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483604s |  0.04% |  2.53% )   ( 0.453576s |  0.04% |  2.42% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003684s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003049s |  0.00% |  0.00% )   ( 0.003469s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003395s |  0.00% |  0.00% )   ( 0.003828s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004902s |  0.00% |  0.02% )   ( 0.004976s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.691728s |  1.61% |  3.21% )   ( 16.801771s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000604s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.691037s |  1.61% | 99.99% )   ( 16.801054s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000326s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000354s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p5
30.5.0:         ( 0.023930s |  0.00% |  0.13% )   ( 0.023877s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024063s |  0.00% |  0.13% )   ( 0.024010s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.023917s |  0.00% |  0.13% )   ( 0.023858s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024126s |  0.00% |  0.13% )   ( 0.024053s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024206s |  0.00% |  0.13% )   ( 0.024132s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004510s |  0.00% |  0.00% )   ( 0.005000s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p5
41.5.0:         ( 0.395766s |  0.03% |  0.08% )   ( 0.006556s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004658s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004800s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004067s |  0.00% |  0.00% )   ( 0.004595s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035362s |  0.00% |  0.00% )   ( 0.032097s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003848s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004632s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005188s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p5
66.5.0:         ( 0.003761s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.063977s |  1.55% |  3.85% )   ( 16.562204s |  1.65% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003716s |  0.00% |  0.02% )   ( 0.004229s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.105825s |  0.10% |  6.48% )   ( 1.087831s |  0.10% |  6.56% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.972747s |  0.17% | 11.56% )   ( 1.904178s |  0.19% | 11.49% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.582932s |  0.14% |  9.27% )   ( 1.560864s |  0.15% |  9.42% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.925668s |  0.17% | 11.28% )   ( 1.910632s |  0.19% | 11.53% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561820s |  0.14% |  9.15% )   ( 1.541930s |  0.15% |  9.30% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.999621s |  0.09% |  5.85% )   ( 0.986478s |  0.09% |  5.95% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547977s |  0.04% |  3.21% )   ( 0.524103s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.109056s |  0.10% |  6.49% )   ( 1.049261s |  0.10% |  6.33% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.460858s |  0.04% |  2.70% )   ( 0.450957s |  0.04% |  2.72% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.484763s |  0.13% |  8.70% )   ( 1.380067s |  0.13% |  8.33% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.241605s |  0.29% | 18.99% )   ( 3.149200s |  0.31% | 19.01% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537965s |  0.04% |  3.15% )   ( 0.510574s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.529424s |  0.04% |  3.10% )   ( 0.501900s |  0.05% |  3.03% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004088s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007137s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005769s |  0.00% |  0.03% )   ( 0.005864s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.509515s |  1.59% |  3.18% )   ( 16.588462s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000660s |  0.00% |  0.00% )   ( 0.000673s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.508768s |  1.59% | 99.99% )   ( 16.587690s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p6
30.5.0:         ( 0.023856s |  0.00% |  0.13% )   ( 0.023814s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024025s |  0.00% |  0.13% )   ( 0.023980s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024016s |  0.00% |  0.13% )   ( 0.023966s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024034s |  0.00% |  0.13% )   ( 0.023987s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.023979s |  0.00% |  0.13% )   ( 0.023929s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004906s |  0.00% |  0.00% )   ( 0.005505s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004349s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005434s |  0.00% |  0.00% )   ( 0.006054s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p6
41.5.0:         ( 0.351461s |  0.03% |  0.06% )   ( 0.007350s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004837s |  0.00% |  0.00% )   ( 0.005420s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004502s |  0.00% |  0.00% )   ( 0.005061s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004074s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004803s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035736s |  0.00% |  0.00% )   ( 0.034407s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004071s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004651s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009453s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004917s |  0.00% |  0.00% )   ( 0.005464s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p6
66.5.0:         ( 0.003988s |  0.00% |  0.00% )   ( 0.004521s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.917108s |  1.54% |  3.45% )   ( 16.337724s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003992s |  0.00% |  0.02% )   ( 0.004540s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.108001s |  0.10% |  6.54% )   ( 1.076041s |  0.10% |  6.58% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.894492s |  0.17% | 11.19% )   ( 1.867094s |  0.18% | 11.42% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.581888s |  0.14% |  9.35% )   ( 1.564450s |  0.15% |  9.57% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.901428s |  0.17% | 11.23% )   ( 1.850678s |  0.18% | 11.32% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.557753s |  0.14% |  9.20% )   ( 1.507275s |  0.15% |  9.22% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.094500s |  0.09% |  6.46% )   ( 0.986612s |  0.09% |  6.03% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.600809s |  0.05% |  3.55% )   ( 0.553564s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.063204s |  0.09% |  6.28% )   ( 1.024103s |  0.10% |  6.26% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.517609s |  0.04% |  3.05% )   ( 0.494243s |  0.04% |  3.02% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.449390s |  0.13% |  8.56% )   ( 1.375845s |  0.13% |  8.42% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.982708s |  0.27% | 17.63% )   ( 2.924612s |  0.29% | 17.90% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.582240s |  0.05% |  3.44% )   ( 0.568512s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.579094s |  0.05% |  3.42% )   ( 0.540155s |  0.05% |  3.30% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008494s |  0.00% |  0.04% )   ( 0.008521s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.486156s |  1.59% |  3.17% )   ( 16.539534s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000631s |  0.00% |  0.00% )   ( 0.000648s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.485437s |  1.59% | 99.99% )   ( 16.538785s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000361s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p7
30.5.0:         ( 0.024003s |  0.00% |  0.13% )   ( 0.023954s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024079s |  0.00% |  0.13% )   ( 0.024027s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024035s |  0.00% |  0.13% )   ( 0.023981s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.023878s |  0.00% |  0.13% )   ( 0.023831s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024012s |  0.00% |  0.13% )   ( 0.023965s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004681s |  0.00% |  0.00% )   ( 0.005210s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005208s |  0.00% |  0.00% )   ( 0.005791s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p7
41.5.0:         ( 0.458247s |  0.04% |  0.09% )   ( 0.007295s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004925s |  0.00% |  0.00% )   ( 0.005486s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004706s |  0.00% |  0.00% )   ( 0.005327s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034255s |  0.00% |  0.00% )   ( 0.034734s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003942s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009099s |  0.00% |  0.00% )   ( 0.004971s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005138s |  0.00% |  0.00% )   ( 0.005723s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p7
66.5.0:         ( 0.004224s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.787260s |  1.52% |  3.55% )   ( 16.286895s |  1.63% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003912s |  0.00% |  0.02% )   ( 0.004456s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171539s |  0.10% |  6.97% )   ( 1.099608s |  0.11% |  6.75% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.869147s |  0.17% | 11.13% )   ( 1.841109s |  0.18% | 11.30% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.664788s |  0.15% |  9.91% )   ( 1.576592s |  0.15% |  9.68% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.874754s |  0.17% | 11.16% )   ( 1.847004s |  0.18% | 11.34% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.563394s |  0.14% |  9.31% )   ( 1.501275s |  0.15% |  9.21% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.992591s |  0.09% |  5.91% )   ( 0.976296s |  0.09% |  5.99% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547343s |  0.04% |  3.26% )   ( 0.540132s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.040975s |  0.09% |  6.20% )   ( 1.031195s |  0.10% |  6.33% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.469757s |  0.04% |  2.79% )   ( 0.466477s |  0.04% |  2.86% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389932s |  0.12% |  8.27% )   ( 1.351774s |  0.13% |  8.29% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.059263s |  0.27% | 18.22% )   ( 2.986277s |  0.29% | 18.33% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.577152s |  0.05% |  3.43% )   ( 0.542170s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.562713s |  0.05% |  3.35% )   ( 0.522530s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004847s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004450s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004261s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008833s |  0.00% |  0.05% )   ( 0.008896s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 20.689315s |  1.88% |  3.75% )   ( 19.876659s |  1.99% |  3.98% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000638s |  0.00% |  0.00% )   ( 0.000654s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 20.688590s |  1.88% | 99.99% )   ( 19.875905s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p8
30.5.0:         ( 0.023964s |  0.00% |  0.11% )   ( 0.023921s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024222s |  0.00% |  0.11% )   ( 0.024037s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024178s |  0.00% |  0.11% )   ( 0.024031s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024066s |  0.00% |  0.11% )   ( 0.023989s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024027s |  0.00% |  0.11% )   ( 0.023956s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003322s |  0.00% |  0.00% )   ( 0.003738s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p8
41.5.0:         ( 0.431816s |  0.03% |  0.09% )   ( 0.006211s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003541s |  0.00% |  0.00% )   ( 0.003990s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003247s |  0.00% |  0.00% )   ( 0.003688s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028954s |  0.00% |  0.00% )   ( 0.026360s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003198s |  0.00% |  0.00% )   ( 0.003615s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003495s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p8
66.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002991s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.046512s |  1.82% |  4.40% )   ( 19.655628s |  1.96% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003343s |  0.00% |  0.01% )   ( 0.003808s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.406327s |  0.12% |  7.01% )   ( 1.393714s |  0.13% |  7.09% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.677534s |  0.24% | 13.35% )   ( 2.634638s |  0.26% | 13.40% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.078823s |  0.18% | 10.36% )   ( 2.059464s |  0.20% | 10.47% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.698969s |  0.24% | 13.46% )   ( 2.653780s |  0.26% | 13.50% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.062285s |  0.18% | 10.28% )   ( 2.041927s |  0.20% | 10.38% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.302830s |  0.11% |  6.49% )   ( 1.259838s |  0.12% |  6.40% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.493403s |  0.04% |  2.46% )   ( 0.485220s |  0.04% |  2.46% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.280328s |  0.11% |  6.38% )   ( 1.206529s |  0.12% |  6.13% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.439916s |  0.04% |  2.19% )   ( 0.423392s |  0.04% |  2.15% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.427704s |  0.13% |  7.12% )   ( 1.379941s |  0.13% |  7.02% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.212916s |  0.29% | 16.02% )   ( 3.192846s |  0.31% | 16.24% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.495085s |  0.04% |  2.46% )   ( 0.475378s |  0.04% |  2.41% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.467049s |  0.04% |  2.32% )   ( 0.445153s |  0.04% |  2.26% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003241s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003071s |  0.00% |  0.00% )   ( 0.003483s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003701s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005056s |  0.00% |  0.02% )   ( 0.005131s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.321620s |  1.57% |  3.14% )   ( 16.522220s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000671s |  0.00% |  0.00% )   ( 0.000689s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.320861s |  1.57% | 99.99% )   ( 16.521430s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000367s |  0.00% |  0.00% )   ( 0.000402s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p9
30.5.0:         ( 0.024131s |  0.00% |  0.13% )   ( 0.024087s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024056s |  0.00% |  0.13% )   ( 0.024008s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024082s |  0.00% |  0.13% )   ( 0.024036s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024338s |  0.00% |  0.14% )   ( 0.024288s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024200s |  0.00% |  0.13% )   ( 0.024147s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005332s |  0.00% |  0.00% )   ( 0.005971s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005427s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005519s |  0.00% |  0.00% )   ( 0.006163s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p9
41.5.0:         ( 0.389236s |  0.03% |  0.07% )   ( 0.007779s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005236s |  0.00% |  0.00% )   ( 0.005852s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004780s |  0.00% |  0.00% )   ( 0.005390s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.007729s |  0.00% |  0.00% )   ( 0.005008s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004864s |  0.00% |  0.00% )   ( 0.005342s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038057s |  0.00% |  0.00% )   ( 0.037243s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004188s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005503s |  0.00% |  0.00% )   ( 0.005224s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005399s |  0.00% |  0.00% )   ( 0.006031s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p9
66.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005240s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004388s |  0.00% |  0.00% )   ( 0.004973s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.682563s |  1.52% |  3.10% )   ( 16.260079s |  1.62% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004318s |  0.00% |  0.02% )   ( 0.004911s |  0.00% |  0.03% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.104921s |  0.10% |  6.62% )   ( 1.078321s |  0.10% |  6.63% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.841154s |  0.16% | 11.03% )   ( 1.795126s |  0.17% | 11.04% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.583839s |  0.14% |  9.49% )   ( 1.555901s |  0.15% |  9.56% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.827542s |  0.16% | 10.95% )   ( 1.786147s |  0.17% | 10.98% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.535216s |  0.13% |  9.20% )   ( 1.493230s |  0.14% |  9.18% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.010724s |  0.09% |  6.05% )   ( 0.990889s |  0.09% |  6.09% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.604061s |  0.05% |  3.62% )   ( 0.589632s |  0.05% |  3.62% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.083602s |  0.09% |  6.49% )   ( 1.036390s |  0.10% |  6.37% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.561895s |  0.05% |  3.36% )   ( 0.533904s |  0.05% |  3.28% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.443433s |  0.13% |  8.65% )   ( 1.393365s |  0.13% |  8.56% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.854427s |  0.26% | 17.11% )   ( 2.815816s |  0.28% | 17.31% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.631339s |  0.05% |  3.78% )   ( 0.609380s |  0.06% |  3.74% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596092s |  0.05% |  3.57% )   ( 0.577067s |  0.05% |  3.54% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004626s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004799s |  0.00% |  0.00% )   ( 0.005298s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008411s |  0.00% |  0.04% )   ( 0.008485s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 20.564530s |  1.87% |  3.73% )   ( 19.449893s |  1.94% |  3.90% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000709s |  0.00% |  0.00% )   ( 0.000722s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 20.563731s |  1.87% | 99.99% )   ( 19.449069s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p10
30.5.0:         ( 0.024119s |  0.00% |  0.11% )   ( 0.024070s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024077s |  0.00% |  0.11% )   ( 0.024030s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024138s |  0.00% |  0.11% )   ( 0.024093s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024044s |  0.00% |  0.11% )   ( 0.023996s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024130s |  0.00% |  0.11% )   ( 0.024082s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005089s |  0.00% |  0.00% )   ( 0.005713s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   true
38.5.0:         ( 0.004719s |  0.00% |  0.00% )   ( 0.005338s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005992s |  0.00% |  0.00% )   ( 0.006652s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p10
41.5.0:         ( 0.392534s |  0.03% |  0.05% )   ( 0.008207s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005468s |  0.00% |  0.00% )   ( 0.006126s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.005151s |  0.00% |  0.00% )   ( 0.005810s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005302s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004896s |  0.00% |  0.00% )   ( 0.005534s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040710s |  0.00% |  0.00% )   ( 0.038209s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004472s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004610s |  0.00% |  0.00% )   ( 0.005250s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009860s |  0.00% |  0.00% )   ( 0.005918s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005746s |  0.00% |  0.00% )   ( 0.006403s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p10
66.5.0:         ( 0.004634s |  0.00% |  0.00% )   ( 0.005270s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004587s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.919763s |  1.81% |  3.02% )   ( 19.186399s |  1.92% |  3.08% )    	(32x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004776s |  0.00% |  0.02% )   ( 0.005432s |  0.00% |  0.02% )    	(32x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.403023s |  0.12% |  7.04% )   ( 1.383852s |  0.13% |  7.21% )    	(32x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.237749s |  0.20% | 11.23% )   ( 2.169777s |  0.21% | 11.30% )    	(32x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.872873s |  0.17% |  9.40% )   ( 1.791210s |  0.17% |  9.33% )    	(32x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.142084s |  0.19% | 10.75% )   ( 2.105726s |  0.21% | 10.97% )    	(32x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.809859s |  0.16% |  9.08% )   ( 1.733113s |  0.17% |  9.03% )    	(32x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.344358s |  0.12% |  6.74% )   ( 1.268490s |  0.12% |  6.61% )    	(32x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.658050s |  0.05% |  3.30% )   ( 0.645765s |  0.06% |  3.36% )    	(32x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.343262s |  0.12% |  6.74% )   ( 1.281315s |  0.12% |  6.67% )    	(32x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.640530s |  0.05% |  3.21% )   ( 0.579622s |  0.05% |  3.02% )    	(32x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.706197s |  0.15% |  8.56% )   ( 1.591665s |  0.15% |  8.29% )    	(32x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.465292s |  0.31% | 17.39% )   ( 3.381846s |  0.33% | 17.62% )    	(32x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.665020s |  0.06% |  3.33% )   ( 0.631941s |  0.06% |  3.29% )    	(32x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.626690s |  0.05% |  3.14% )   ( 0.616645s |  0.06% |  3.21% )    	(32x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004700s |  0.00% |  0.00% )   ( 0.005334s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004627s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005061s |  0.00% |  0.00% )   ( 0.005689s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005084s |  0.00% |  0.02% )   ( 0.005166s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 18.135037s |  1.65% |  3.29% )   ( 17.188372s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000717s |  0.00% |  0.00% )   ( 0.000730s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.134232s |  1.65% | 99.99% )   ( 17.187541s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p11
30.5.0:         ( 0.024266s |  0.00% |  0.13% )   ( 0.024138s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024114s |  0.00% |  0.13% )   ( 0.024059s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.024120s |  0.00% |  0.13% )   ( 0.024069s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.024044s |  0.00% |  0.13% )   ( 0.023999s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.024195s |  0.00% |  0.13% )   ( 0.024144s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003330s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p11
41.5.0:         ( 0.303082s |  0.02% |  0.06% )   ( 0.006240s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004113s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003807s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003701s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003381s |  0.00% |  0.00% )   ( 0.003816s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031489s |  0.00% |  0.00% )   ( 0.028844s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003441s |  0.00% |  0.00% )   ( 0.003904s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003543s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006108s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p11
66.5.0:         ( 0.003489s |  0.00% |  0.00% )   ( 0.003845s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003321s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.609000s |  1.60% |  4.22% )   ( 16.957216s |  1.69% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003270s |  0.00% |  0.01% )   ( 0.003735s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.145375s |  0.10% |  6.50% )   ( 1.111182s |  0.11% |  6.55% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.047972s |  0.18% | 11.63% )   ( 2.011597s |  0.20% | 11.86% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.706402s |  0.15% |  9.69% )   ( 1.624274s |  0.16% |  9.57% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.099316s |  0.19% | 11.92% )   ( 2.018546s |  0.20% | 11.90% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.665602s |  0.15% |  9.45% )   ( 1.617797s |  0.16% |  9.54% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.079151s |  0.09% |  6.12% )   ( 1.020286s |  0.10% |  6.01% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501413s |  0.04% |  2.84% )   ( 0.481967s |  0.04% |  2.84% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.183084s |  0.10% |  6.71% )   ( 1.081945s |  0.10% |  6.38% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456851s |  0.04% |  2.59% )   ( 0.424940s |  0.04% |  2.50% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.462117s |  0.13% |  8.30% )   ( 1.409993s |  0.14% |  8.31% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.286493s |  0.29% | 18.66% )   ( 3.226380s |  0.32% | 19.02% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.482401s |  0.04% |  2.73% )   ( 0.475358s |  0.04% |  2.80% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.489553s |  0.04% |  2.78% )   ( 0.449216s |  0.04% |  2.64% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003326s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003190s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008827s |  0.00% |  0.04% )   ( 0.008901s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 20.050852s |  1.82% |  3.64% )   ( 19.058537s |  1.90% |  3.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000713s |  0.00% |  0.00% )   ( 0.000730s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 20.050051s |  1.82% | 99.99% )   ( 19.057706s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p12
30.5.0:         ( 0.042960s |  0.00% |  0.21% )   ( 0.042808s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036499s |  0.00% |  0.18% )   ( 0.036387s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.029756s |  0.00% |  0.14% )   ( 0.029665s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.040267s |  0.00% |  0.20% )   ( 0.040112s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.023976s |  0.00% |  0.11% )   ( 0.023920s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004681s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004133s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005241s |  0.00% |  0.00% )   ( 0.005775s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p12
41.5.0:         ( 0.439778s |  0.04% |  0.07% )   ( 0.007245s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004704s |  0.00% |  0.00% )   ( 0.005282s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004298s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004740s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036161s |  0.00% |  0.00% )   ( 0.033543s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004402s |  0.00% |  0.00% )   ( 0.004975s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005031s |  0.00% |  0.00% )   ( 0.005604s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p12
66.5.0:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.325181s |  1.76% |  3.44% )   ( 18.759520s |  1.87% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004096s |  0.00% |  0.02% )   ( 0.004674s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.401971s |  0.12% |  7.25% )   ( 1.354225s |  0.13% |  7.21% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.181037s |  0.19% | 11.28% )   ( 2.160237s |  0.21% | 11.51% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.764779s |  0.16% |  9.13% )   ( 1.744960s |  0.17% |  9.30% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.111091s |  0.19% | 10.92% )   ( 2.094846s |  0.20% | 11.16% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.778166s |  0.16% |  9.20% )   ( 1.732263s |  0.17% |  9.23% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.228508s |  0.11% |  6.35% )   ( 1.200663s |  0.12% |  6.40% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.582065s |  0.05% |  3.01% )   ( 0.573540s |  0.05% |  3.05% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.259119s |  0.11% |  6.51% )   ( 1.240606s |  0.12% |  6.61% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536705s |  0.04% |  2.77% )   ( 0.514455s |  0.05% |  2.74% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.648893s |  0.15% |  8.53% )   ( 1.549936s |  0.15% |  8.26% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.618897s |  0.32% | 18.72% )   ( 3.468851s |  0.34% | 18.49% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.626608s |  0.05% |  3.24% )   ( 0.576923s |  0.05% |  3.07% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.583246s |  0.05% |  3.01% )   ( 0.543341s |  0.05% |  2.89% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004176s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004290s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005229s |  0.00% |  0.02% )   ( 0.005302s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.239683s |  1.66% |  3.31% )   ( 17.401254s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000763s |  0.00% |  0.00% )   ( 0.000776s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.238833s |  1.66% | 99.99% )   ( 17.400378s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p13
30.5.0:         ( 0.025666s |  0.00% |  0.14% )   ( 0.025574s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025358s |  0.00% |  0.13% )   ( 0.025307s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.025385s |  0.00% |  0.13% )   ( 0.025332s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.025206s |  0.00% |  0.13% )   ( 0.025155s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.028693s |  0.00% |  0.15% )   ( 0.028602s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002914s |  0.00% |  0.00% )   ( 0.003279s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002654s |  0.00% |  0.00% )   ( 0.002998s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003396s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p13
41.5.0:         ( 0.200832s |  0.01% |  0.06% )   ( 0.004262s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003205s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.002695s |  0.00% |  0.00% )   ( 0.003055s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.002547s |  0.00% |  0.00% )   ( 0.002882s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002667s |  0.00% |  0.00% )   ( 0.003003s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024041s |  0.00% |  0.00% )   ( 0.021221s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002823s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002322s |  0.00% |  0.00% )   ( 0.002649s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002578s |  0.00% |  0.00% )   ( 0.002916s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003088s |  0.00% |  0.00% )   ( 0.003453s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p13
66.5.0:         ( 0.002604s |  0.00% |  0.00% )   ( 0.002936s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002302s |  0.00% |  0.00% )   ( 0.002626s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.830244s |  1.62% |  5.75% )   ( 17.186384s |  1.72% |  5.81% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002342s |  0.00% |  0.01% )   ( 0.002680s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.167572s |  0.10% |  6.54% )   ( 1.094665s |  0.10% |  6.36% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.106785s |  0.19% | 11.81% )   ( 2.065361s |  0.20% | 12.01% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.768272s |  0.16% |  9.91% )   ( 1.655127s |  0.16% |  9.63% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.131633s |  0.19% | 11.95% )   ( 2.109181s |  0.21% | 12.27% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.640350s |  0.14% |  9.19% )   ( 1.618377s |  0.16% |  9.41% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021855s |  0.09% |  5.73% )   ( 1.004248s |  0.10% |  5.84% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.447884s |  0.04% |  2.51% )   ( 0.424003s |  0.04% |  2.46% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.224649s |  0.11% |  6.86% )   ( 1.113318s |  0.11% |  6.47% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.420753s |  0.03% |  2.35% )   ( 0.354164s |  0.03% |  2.06% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.407304s |  0.12% |  7.89% )   ( 1.380491s |  0.13% |  8.03% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.675563s |  0.33% | 20.61% )   ( 3.597367s |  0.36% | 20.93% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.425398s |  0.03% |  2.38% )   ( 0.398816s |  0.03% |  2.32% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.389884s |  0.03% |  2.18% )   ( 0.368586s |  0.03% |  2.14% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002577s |  0.00% |  0.00% )   ( 0.002927s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002206s |  0.00% |  0.00% )   ( 0.002517s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002442s |  0.00% |  0.00% )   ( 0.002756s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit
80.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p* 1>&21
81.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008834s |  0.00% |  0.04% )   ( 0.008917s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.669250s |  1.61% |  3.21% )   ( 16.580233s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000883s |  0.00% |  0.00% )   ( 0.000906s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.668198s |  1.61% | 99.99% )   ( 16.579136s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p14
30.5.0:         ( 0.046017s |  0.00% |  0.26% )   ( 0.045859s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046360s |  0.00% |  0.26% )   ( 0.046193s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.046137s |  0.00% |  0.26% )   ( 0.045959s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.046116s |  0.00% |  0.26% )   ( 0.045943s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.046195s |  0.00% |  0.26% )   ( 0.046028s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004600s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p14
41.5.0:         ( 0.512359s |  0.04% |  0.10% )   ( 0.006680s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004590s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003662s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003955s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031028s |  0.00% |  0.00% )   ( 0.031454s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004690s |  0.00% |  0.00% )   ( 0.005233s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p14
66.5.0:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003650s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.824231s |  1.53% |  3.66% )   ( 16.233007s |  1.62% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004003s |  0.00% |  0.02% )   ( 0.004554s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.143331s |  0.10% |  6.79% )   ( 1.079241s |  0.10% |  6.64% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.966929s |  0.17% | 11.69% )   ( 1.870060s |  0.18% | 11.52% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.608786s |  0.14% |  9.56% )   ( 1.551599s |  0.15% |  9.55% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.884448s |  0.17% | 11.20% )   ( 1.854158s |  0.18% | 11.42% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.535010s |  0.13% |  9.12% )   ( 1.516587s |  0.15% |  9.34% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.992338s |  0.09% |  5.89% )   ( 0.976864s |  0.09% |  6.01% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.549901s |  0.05% |  3.26% )   ( 0.521890s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.053743s |  0.09% |  6.26% )   ( 1.014363s |  0.10% |  6.24% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.488496s |  0.04% |  2.90% )   ( 0.462927s |  0.04% |  2.85% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.453874s |  0.13% |  8.64% )   ( 1.363568s |  0.13% |  8.39% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.075149s |  0.28% | 18.27% )   ( 2.979979s |  0.29% | 18.35% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546845s |  0.04% |  3.25% )   ( 0.535481s |  0.05% |  3.29% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.521378s |  0.04% |  3.09% )   ( 0.501736s |  0.05% |  3.09% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003986s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003536s |  0.00% |  0.00% )   ( 0.003968s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004374s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005206s |  0.00% |  0.02% )   ( 0.005274s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 20.633247s |  1.88% |  3.74% )   ( 19.928530s |  1.99% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000971s |  0.00% |  0.00% )   ( 0.000363s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 20.632134s |  1.88% | 99.99% )   ( 19.928006s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p15
30.5.0:         ( 0.024088s |  0.00% |  0.11% )   ( 0.024044s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035667s |  0.00% |  0.17% )   ( 0.035567s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.042533s |  0.00% |  0.20% )   ( 0.042394s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.044409s |  0.00% |  0.21% )   ( 0.044253s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.045533s |  0.00% |  0.22% )   ( 0.045365s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003333s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p15
41.5.0:         ( 0.312049s |  0.02% |  0.06% )   ( 0.005567s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006911s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004078s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003334s |  0.00% |  0.00% )   ( 0.003772s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003622s |  0.00% |  0.00% )   ( 0.003992s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029032s |  0.00% |  0.00% )   ( 0.029411s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003287s |  0.00% |  0.00% )   ( 0.003730s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003250s |  0.00% |  0.00% )   ( 0.003666s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003555s |  0.00% |  0.00% )   ( 0.003983s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004014s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p15
66.5.0:         ( 0.003202s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003118s |  0.00% |  0.00% )   ( 0.003547s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.031005s |  1.82% |  4.41% )   ( 19.632678s |  1.96% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003168s |  0.00% |  0.01% )   ( 0.003608s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.413205s |  0.12% |  7.05% )   ( 1.395783s |  0.13% |  7.10% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.390890s |  0.21% | 11.93% )   ( 2.350904s |  0.23% | 11.97% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.877393s |  0.17% |  9.37% )   ( 1.858573s |  0.18% |  9.46% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.314637s |  0.21% | 11.55% )   ( 2.296927s |  0.23% | 11.69% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.809993s |  0.16% |  9.03% )   ( 1.791936s |  0.17% |  9.12% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.247682s |  0.11% |  6.22% )   ( 1.231063s |  0.12% |  6.27% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.527255s |  0.04% |  2.63% )   ( 0.517703s |  0.05% |  2.63% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.311091s |  0.11% |  6.54% )   ( 1.290361s |  0.12% |  6.57% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.440668s |  0.04% |  2.19% )   ( 0.429375s |  0.04% |  2.18% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.668105s |  0.15% |  8.32% )   ( 1.606128s |  0.16% |  8.18% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.001984s |  0.36% | 19.97% )   ( 3.883248s |  0.38% | 19.77% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518257s |  0.04% |  2.58% )   ( 0.503401s |  0.05% |  2.56% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.506677s |  0.04% |  2.52% )   ( 0.473668s |  0.04% |  2.41% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003797s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003166s |  0.00% |  0.00% )   ( 0.003514s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006417s |  0.00% |  0.00% )   ( 0.003723s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004828s |  0.00% |  0.02% )   ( 0.004898s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 22.524194s |  2.05% |  4.09% )   ( 21.182927s |  2.12% |  4.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000980s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 22.523067s |  2.05% | 99.99% )   ( 21.182393s |  2.12% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p16
30.5.0:         ( 0.039707s |  0.00% |  0.17% )   ( 0.039567s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027432s |  0.00% |  0.12% )   ( 0.027354s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.031451s |  0.00% |  0.13% )   ( 0.031343s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.031710s |  0.00% |  0.14% )   ( 0.031599s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.033494s |  0.00% |  0.14% )   ( 0.033389s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004845s |  0.00% |  0.00% )   ( 0.005396s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004627s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005109s |  0.00% |  0.00% )   ( 0.005686s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p16
41.5.0:         ( 0.420588s |  0.03% |  0.06% )   ( 0.006978s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.005000s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004303s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004443s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032759s |  0.00% |  0.00% )   ( 0.033191s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004071s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005378s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004870s |  0.00% |  0.00% )   ( 0.005407s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p16
66.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004395s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.830370s |  1.98% |  3.58% )   ( 20.895853s |  2.09% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003882s |  0.00% |  0.01% )   ( 0.004414s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.596752s |  0.14% |  7.31% )   ( 1.523725s |  0.15% |  7.29% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.477442s |  0.22% | 11.34% )   ( 2.398568s |  0.24% | 11.47% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.038435s |  0.18% |  9.33% )   ( 1.935141s |  0.19% |  9.26% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.505084s |  0.22% | 11.47% )   ( 2.404946s |  0.24% | 11.50% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.046504s |  0.18% |  9.37% )   ( 1.896734s |  0.19% |  9.07% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.441393s |  0.13% |  6.60% )   ( 1.389992s |  0.13% |  6.65% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.626870s |  0.05% |  2.87% )   ( 0.595069s |  0.05% |  2.84% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.538045s |  0.14% |  7.04% )   ( 1.445317s |  0.14% |  6.91% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.581069s |  0.05% |  2.66% )   ( 0.529644s |  0.05% |  2.53% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.770560s |  0.16% |  8.11% )   ( 1.707046s |  0.17% |  8.16% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.009066s |  0.36% | 18.36% )   ( 3.945760s |  0.39% | 18.88% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.619571s |  0.05% |  2.83% )   ( 0.573148s |  0.05% |  2.74% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575697s |  0.05% |  2.63% )   ( 0.546349s |  0.05% |  2.61% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004282s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004971s |  0.00% |  0.02% )   ( 0.005031s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.531028s |  1.59% |  3.18% )   ( 16.481766s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001051s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.529821s |  1.59% | 99.99% )   ( 16.480525s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p17
30.5.0:         ( 0.037311s |  0.00% |  0.21% )   ( 0.037062s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036642s |  0.00% |  0.20% )   ( 0.036385s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.027517s |  0.00% |  0.15% )   ( 0.027317s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.029073s |  0.00% |  0.16% )   ( 0.028865s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.038783s |  0.00% |  0.22% )   ( 0.038511s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004205s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p17
41.5.0:         ( 0.278202s |  0.02% |  0.06% )   ( 0.005806s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004446s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003315s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003566s |  0.00% |  0.00% )   ( 0.004012s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028933s |  0.00% |  0.00% )   ( 0.027789s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003331s |  0.00% |  0.00% )   ( 0.003775s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008269s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p17
66.5.0:         ( 0.003539s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.973292s |  1.54% |  4.40% )   ( 16.201144s |  1.62% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003379s |  0.00% |  0.01% )   ( 0.003819s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.244660s |  0.11% |  7.33% )   ( 1.080041s |  0.10% |  6.66% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.963972s |  0.17% | 11.57% )   ( 1.864084s |  0.18% | 11.50% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642916s |  0.14% |  9.67% )   ( 1.556505s |  0.15% |  9.60% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.975857s |  0.18% | 11.64% )   ( 1.918868s |  0.19% | 11.84% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.531272s |  0.13% |  9.02% )   ( 1.515335s |  0.15% |  9.35% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.984557s |  0.08% |  5.80% )   ( 0.966026s |  0.09% |  5.96% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.490302s |  0.04% |  2.88% )   ( 0.472070s |  0.04% |  2.91% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.076394s |  0.09% |  6.34% )   ( 1.034500s |  0.10% |  6.38% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447617s |  0.04% |  2.63% )   ( 0.408100s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.482526s |  0.13% |  8.73% )   ( 1.344751s |  0.13% |  8.30% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.189658s |  0.29% | 18.79% )   ( 3.127974s |  0.31% | 19.30% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.484464s |  0.04% |  2.85% )   ( 0.459019s |  0.04% |  2.83% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.455718s |  0.04% |  2.68% )   ( 0.450052s |  0.04% |  2.77% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003530s |  0.00% |  0.00% )   ( 0.003988s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003262s |  0.00% |  0.00% )   ( 0.003701s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004092s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit
80.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p* 1>&21
81.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.014642s |  0.00% |  0.08% )   ( 0.008985s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.480280s |  1.68% |  3.35% )   ( 17.737171s |  1.77% |  3.55% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001060s |  0.00% |  0.00% )   ( 0.001080s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.479078s |  1.68% | 99.99% )   ( 17.735930s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p18
30.5.0:         ( 0.044774s |  0.00% |  0.24% )   ( 0.044603s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045773s |  0.00% |  0.24% )   ( 0.045474s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.041609s |  0.00% |  0.22% )   ( 0.041464s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.046967s |  0.00% |  0.25% )   ( 0.046457s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.048339s |  0.00% |  0.26% )   ( 0.048155s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003327s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p18
41.5.0:         ( 0.302378s |  0.02% |  0.07% )   ( 0.005052s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003804s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003477s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.002977s |  0.00% |  0.00% )   ( 0.003401s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003323s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024494s |  0.00% |  0.00% )   ( 0.024845s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003039s |  0.00% |  0.00% )   ( 0.003464s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002939s |  0.00% |  0.00% )   ( 0.003328s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003086s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.003999s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p18
66.5.0:         ( 0.002880s |  0.00% |  0.00% )   ( 0.003267s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002765s |  0.00% |  0.00% )   ( 0.003151s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.868673s |  1.62% |  4.83% )   ( 17.417169s |  1.74% |  4.91% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002961s |  0.00% |  0.01% )   ( 0.003372s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.154622s |  0.10% |  6.46% )   ( 1.120759s |  0.11% |  6.43% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.180458s |  0.19% | 12.20% )   ( 2.147761s |  0.21% | 12.33% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.733132s |  0.15% |  9.69% )   ( 1.687430s |  0.16% |  9.68% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.145707s |  0.19% | 12.00% )   ( 2.106036s |  0.21% | 12.09% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.664529s |  0.15% |  9.31% )   ( 1.629505s |  0.16% |  9.35% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.060628s |  0.09% |  5.93% )   ( 1.023494s |  0.10% |  5.87% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.469180s |  0.04% |  2.62% )   ( 0.434359s |  0.04% |  2.49% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.126499s |  0.10% |  6.30% )   ( 1.109771s |  0.11% |  6.37% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.399558s |  0.03% |  2.23% )   ( 0.373051s |  0.03% |  2.14% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.425844s |  0.12% |  7.97% )   ( 1.395581s |  0.13% |  8.01% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.621848s |  0.33% | 20.26% )   ( 3.548905s |  0.35% | 20.37% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.468131s |  0.04% |  2.61% )   ( 0.436752s |  0.04% |  2.50% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.415576s |  0.03% |  2.32% )   ( 0.400393s |  0.04% |  2.29% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002895s |  0.00% |  0.00% )   ( 0.003291s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002668s |  0.00% |  0.00% )   ( 0.003048s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002943s |  0.00% |  0.00% )   ( 0.003307s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005084s |  0.00% |  0.02% )   ( 0.005157s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.211635s |  1.56% |  3.12% )   ( 16.235813s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.210433s |  1.56% | 99.99% )   ( 16.234577s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p19
30.5.0:         ( 0.042710s |  0.00% |  0.24% )   ( 0.042558s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045630s |  0.00% |  0.26% )   ( 0.045471s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.045727s |  0.00% |  0.26% )   ( 0.045571s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.045567s |  0.00% |  0.26% )   ( 0.045413s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.045530s |  0.00% |  0.26% )   ( 0.045384s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004962s |  0.00% |  0.00% )   ( 0.005547s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004274s |  0.00% |  0.00% )   ( 0.004856s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005402s |  0.00% |  0.00% )   ( 0.005985s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p19
41.5.0:         ( 0.367223s |  0.03% |  0.07% )   ( 0.007312s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004704s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004495s |  0.00% |  0.00% )   ( 0.005073s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004453s |  0.00% |  0.00% )   ( 0.005030s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036231s |  0.00% |  0.00% )   ( 0.035846s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004252s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009490s |  0.00% |  0.00% )   ( 0.005331s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005368s |  0.00% |  0.00% )   ( 0.005983s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p19
66.5.0:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004854s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.497710s |  1.50% |  3.30% )   ( 15.878279s |  1.59% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004139s |  0.00% |  0.02% )   ( 0.004708s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123788s |  0.10% |  6.81% )   ( 1.077637s |  0.10% |  6.78% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.848072s |  0.16% | 11.20% )   ( 1.788068s |  0.17% | 11.26% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602162s |  0.14% |  9.71% )   ( 1.538626s |  0.15% |  9.69% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.836416s |  0.16% | 11.13% )   ( 1.761930s |  0.17% | 11.09% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.513601s |  0.13% |  9.17% )   ( 1.494618s |  0.14% |  9.41% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011051s |  0.09% |  6.12% )   ( 0.969720s |  0.09% |  6.10% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.578777s |  0.05% |  3.50% )   ( 0.565893s |  0.05% |  3.56% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.015291s |  0.09% |  6.15% )   ( 0.989201s |  0.09% |  6.22% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.534968s |  0.04% |  3.24% )   ( 0.500335s |  0.05% |  3.15% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383504s |  0.12% |  8.38% )   ( 1.352554s |  0.13% |  8.51% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.854070s |  0.26% | 17.29% )   ( 2.716345s |  0.27% | 17.10% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.625826s |  0.05% |  3.79% )   ( 0.562038s |  0.05% |  3.53% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.566045s |  0.05% |  3.43% )   ( 0.556606s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004802s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005228s |  0.00% |  0.03% )   ( 0.005302s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 17.309774s |  1.57% |  3.14% )   ( 16.190156s |  1.62% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001087s |  0.00% |  0.00% )   ( 0.001110s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 17.308537s |  1.57% | 99.99% )   ( 16.188876s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p20
30.5.0:         ( 0.045530s |  0.00% |  0.26% )   ( 0.045365s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045624s |  0.00% |  0.26% )   ( 0.045458s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.045573s |  0.00% |  0.26% )   ( 0.045421s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.045711s |  0.00% |  0.26% )   ( 0.045558s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.044757s |  0.00% |  0.25% )   ( 0.044598s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005380s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005263s |  0.00% |  0.00% )   ( 0.005851s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p20
41.5.0:         ( 0.370303s |  0.03% |  0.07% )   ( 0.006967s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005253s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004048s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036800s |  0.00% |  0.00% )   ( 0.034262s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004041s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004238s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007926s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004917s |  0.00% |  0.00% )   ( 0.005465s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p20
66.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.591655s |  1.51% |  3.55% )   ( 15.833989s |  1.58% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004060s |  0.00% |  0.02% )   ( 0.004624s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.119243s |  0.10% |  6.74% )   ( 1.056649s |  0.10% |  6.67% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.843374s |  0.16% | 11.11% )   ( 1.772829s |  0.17% | 11.19% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.550397s |  0.14% |  9.34% )   ( 1.503466s |  0.15% |  9.49% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.817334s |  0.16% | 10.95% )   ( 1.769335s |  0.17% | 11.17% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.535030s |  0.13% |  9.25% )   ( 1.476165s |  0.14% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.008789s |  0.09% |  6.08% )   ( 0.959595s |  0.09% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577090s |  0.05% |  3.47% )   ( 0.541405s |  0.05% |  3.41% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.058770s |  0.09% |  6.38% )   ( 1.002139s |  0.10% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.514516s |  0.04% |  3.10% )   ( 0.476032s |  0.04% |  3.00% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445117s |  0.13% |  8.70% )   ( 1.339693s |  0.13% |  8.46% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.998397s |  0.27% | 18.07% )   ( 2.876207s |  0.28% | 18.16% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.557186s |  0.05% |  3.35% )   ( 0.540902s |  0.05% |  3.41% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.562352s |  0.05% |  3.38% )   ( 0.514948s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004126s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003697s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004156s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008907s |  0.00% |  0.05% )   ( 0.008982s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 19.117610s |  1.74% |  3.47% )   ( 18.353255s |  1.83% |  3.68% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001069s |  0.00% |  0.00% )   ( 0.001089s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 19.116382s |  1.74% | 99.99% )   ( 18.351988s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p21
30.5.0:         ( 0.041091s |  0.00% |  0.21% )   ( 0.040958s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044555s |  0.00% |  0.23% )   ( 0.044416s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.045091s |  0.00% |  0.23% )   ( 0.044946s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.050147s |  0.00% |  0.26% )   ( 0.049950s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.045168s |  0.00% |  0.23% )   ( 0.044967s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003554s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003248s |  0.00% |  0.00% )   ( 0.003688s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p21
41.5.0:         ( 0.249045s |  0.02% |  0.05% )   ( 0.005284s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003526s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003296s |  0.00% |  0.00% )   ( 0.003749s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003157s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003231s |  0.00% |  0.00% )   ( 0.003652s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025405s |  0.00% |  0.00% )   ( 0.025736s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003237s |  0.00% |  0.00% )   ( 0.003674s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003311s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006562s |  0.00% |  0.00% )   ( 0.003830s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p21
66.5.0:         ( 0.003103s |  0.00% |  0.00% )   ( 0.003539s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002942s |  0.00% |  0.00% )   ( 0.003352s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.552005s |  1.69% |  4.62% )   ( 18.029141s |  1.80% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003104s |  0.00% |  0.01% )   ( 0.003521s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.333069s |  0.12% |  7.18% )   ( 1.260646s |  0.12% |  6.99% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.345787s |  0.21% | 12.64% )   ( 2.294448s |  0.22% | 12.72% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.861568s |  0.16% | 10.03% )   ( 1.792498s |  0.17% |  9.94% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.299576s |  0.20% | 12.39% )   ( 2.273119s |  0.22% | 12.60% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.828406s |  0.16% |  9.85% )   ( 1.776615s |  0.17% |  9.85% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.168772s |  0.10% |  6.29% )   ( 1.111375s |  0.11% |  6.16% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.509481s |  0.04% |  2.74% )   ( 0.480835s |  0.04% |  2.66% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.233341s |  0.11% |  6.64% )   ( 1.204911s |  0.12% |  6.68% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.432362s |  0.03% |  2.33% )   ( 0.412616s |  0.04% |  2.28% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.580540s |  0.14% |  8.51% )   ( 1.553678s |  0.15% |  8.61% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.053155s |  0.27% | 16.45% )   ( 2.987026s |  0.29% | 16.56% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.455900s |  0.04% |  2.45% )   ( 0.449969s |  0.04% |  2.49% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.446944s |  0.04% |  2.40% )   ( 0.427884s |  0.04% |  2.37% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003540s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002844s |  0.00% |  0.00% )   ( 0.003250s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.003464s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005245s |  0.00% |  0.02% )   ( 0.005312s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.213609s |  1.56% |  3.12% )   ( 15.855576s |  1.58% |  3.18% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001094s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.212359s |  1.56% | 99.99% )   ( 15.854290s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p22
30.5.0:         ( 0.043855s |  0.00% |  0.25% )   ( 0.043660s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046713s |  0.00% |  0.27% )   ( 0.046523s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.046387s |  0.00% |  0.26% )   ( 0.046215s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.045373s |  0.00% |  0.26% )   ( 0.045209s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.047514s |  0.00% |  0.27% )   ( 0.047334s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004728s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005411s |  0.00% |  0.00% )   ( 0.006026s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p22
41.5.0:         ( 0.551592s |  0.05% |  0.11% )   ( 0.008027s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004865s |  0.00% |  0.00% )   ( 0.005453s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004842s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004405s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004315s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034731s |  0.00% |  0.00% )   ( 0.035199s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004833s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004773s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005243s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005041s |  0.00% |  0.00% )   ( 0.005629s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p22
66.5.0:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.314782s |  1.48% |  3.38% )   ( 15.492263s |  1.55% |  3.48% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003912s |  0.00% |  0.02% )   ( 0.004457s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.051470s |  0.09% |  6.44% )   ( 1.034013s |  0.10% |  6.67% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.771829s |  0.16% | 10.86% )   ( 1.716934s |  0.17% | 11.08% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.595018s |  0.14% |  9.77% )   ( 1.509794s |  0.15% |  9.74% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.826401s |  0.16% | 11.19% )   ( 1.722837s |  0.17% | 11.12% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.480879s |  0.13% |  9.07% )   ( 1.429747s |  0.14% |  9.22% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.034030s |  0.09% |  6.33% )   ( 0.955278s |  0.09% |  6.16% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.636848s |  0.05% |  3.90% )   ( 0.548295s |  0.05% |  3.53% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.074066s |  0.09% |  6.58% )   ( 0.976535s |  0.09% |  6.30% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553299s |  0.05% |  3.39% )   ( 0.490082s |  0.04% |  3.16% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.375049s |  0.12% |  8.42% )   ( 1.302769s |  0.13% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.785993s |  0.25% | 17.07% )   ( 2.722252s |  0.27% | 17.57% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.578647s |  0.05% |  3.54% )   ( 0.545204s |  0.05% |  3.51% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.547341s |  0.04% |  3.35% )   ( 0.534066s |  0.05% |  3.44% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004250s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009080s |  0.00% |  0.05% )   ( 0.009165s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 19.037457s |  1.73% |  3.45% )   ( 18.030227s |  1.80% |  3.61% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.000931s |  0.00% |  0.00% )   ( 0.000954s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 19.036349s |  1.73% | 99.99% )   ( 18.029071s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p23
30.5.0:         ( 0.046095s |  0.00% |  0.24% )   ( 0.045924s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046177s |  0.00% |  0.24% )   ( 0.045985s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.046119s |  0.00% |  0.24% )   ( 0.045942s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.050454s |  0.00% |  0.26% )   ( 0.050235s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.047917s |  0.00% |  0.25% )   ( 0.047730s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004945s |  0.00% |  0.00% )   ( 0.005515s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005156s |  0.00% |  0.00% )   ( 0.005755s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p23
41.5.0:         ( 0.360874s |  0.03% |  0.06% )   ( 0.007237s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.005504s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.005873s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035485s |  0.00% |  0.00% )   ( 0.035873s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005238s |  0.00% |  0.00% )   ( 0.005036s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005096s |  0.00% |  0.00% )   ( 0.005688s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p23
66.5.0:         ( 0.004028s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.320320s |  1.66% |  3.43% )   ( 17.663259s |  1.76% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004082s |  0.00% |  0.02% )   ( 0.004660s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.354887s |  0.12% |  7.39% )   ( 1.279624s |  0.12% |  7.24% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.188869s |  0.19% | 11.94% )   ( 2.100305s |  0.21% | 11.89% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.689098s |  0.15% |  9.21% )   ( 1.638446s |  0.16% |  9.27% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.028719s |  0.18% | 11.07% )   ( 1.965909s |  0.19% | 11.12% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651690s |  0.15% |  9.01% )   ( 1.573113s |  0.15% |  8.90% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.157449s |  0.10% |  6.31% )   ( 1.106201s |  0.11% |  6.26% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.585237s |  0.05% |  3.19% )   ( 0.556934s |  0.05% |  3.15% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.171030s |  0.10% |  6.39% )   ( 1.155175s |  0.11% |  6.53% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.525276s |  0.04% |  2.86% )   ( 0.505181s |  0.05% |  2.86% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.503165s |  0.13% |  8.20% )   ( 1.460200s |  0.14% |  8.26% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.288452s |  0.29% | 17.94% )   ( 3.201556s |  0.32% | 18.12% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.613046s |  0.05% |  3.34% )   ( 0.571302s |  0.05% |  3.23% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.559320s |  0.05% |  3.05% )   ( 0.544653s |  0.05% |  3.08% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007279s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.004961s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005192s |  0.00% |  0.02% )   ( 0.005265s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 18.072268s |  1.64% |  3.28% )   ( 17.336478s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.001053s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 18.071085s |  1.64% | 99.99% )   ( 17.335251s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p24
30.5.0:         ( 0.044837s |  0.00% |  0.24% )   ( 0.044641s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049520s |  0.00% |  0.27% )   ( 0.049341s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.049393s |  0.00% |  0.27% )   ( 0.049214s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.051563s |  0.00% |  0.28% )   ( 0.051380s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.051557s |  0.00% |  0.28% )   ( 0.051357s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004317s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004350s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p24
41.5.0:         ( 0.308970s |  0.02% |  0.07% )   ( 0.005426s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003327s |  0.00% |  0.00% )   ( 0.003721s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003066s |  0.00% |  0.00% )   ( 0.003500s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025585s |  0.00% |  0.00% )   ( 0.025941s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003019s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003527s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003874s |  0.00% |  0.00% )   ( 0.003772s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p24
66.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003444s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000114s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.426379s |  1.58% |  4.59% )   ( 16.991019s |  1.70% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003013s |  0.00% |  0.01% )   ( 0.003426s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132226s |  0.10% |  6.49% )   ( 1.132219s |  0.11% |  6.66% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.097735s |  0.19% | 12.03% )   ( 2.031156s |  0.20% | 11.95% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.650246s |  0.15% |  9.46% )   ( 1.632475s |  0.16% |  9.60% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.035605s |  0.18% | 11.68% )   ( 2.006959s |  0.20% | 11.81% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.688250s |  0.15% |  9.68% )   ( 1.564741s |  0.15% |  9.20% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.057280s |  0.09% |  6.06% )   ( 1.014338s |  0.10% |  5.96% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.477103s |  0.04% |  2.73% )   ( 0.459950s |  0.04% |  2.70% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.141343s |  0.10% |  6.54% )   ( 1.088459s |  0.10% |  6.40% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403807s |  0.03% |  2.31% )   ( 0.397800s |  0.03% |  2.34% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.396699s |  0.12% |  8.01% )   ( 1.377381s |  0.13% |  8.10% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.442240s |  0.31% | 19.75% )   ( 3.407356s |  0.34% | 20.05% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.469161s |  0.04% |  2.69% )   ( 0.454025s |  0.04% |  2.67% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.431671s |  0.03% |  2.47% )   ( 0.420734s |  0.04% |  2.47% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003190s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002964s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006349s |  0.00% |  0.00% )   ( 0.003770s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004951s |  0.00% |  0.02% )   ( 0.005018s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.908312s |  1.63% |  3.25% )   ( 16.925873s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001084s |  0.00% |  0.00% )   ( 0.001106s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.907066s |  1.63% | 99.99% )   ( 16.924586s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p25
30.5.0:         ( 0.045952s |  0.00% |  0.25% )   ( 0.045774s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046048s |  0.00% |  0.25% )   ( 0.045868s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.046081s |  0.00% |  0.25% )   ( 0.045908s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.046009s |  0.00% |  0.25% )   ( 0.045824s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.045956s |  0.00% |  0.25% )   ( 0.045776s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004604s |  0.00% |  0.00% )   ( 0.005148s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005039s |  0.00% |  0.00% )   ( 0.005607s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p25
41.5.0:         ( 0.405860s |  0.03% |  0.08% )   ( 0.006769s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004624s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.004280s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003883s |  0.00% |  0.00% )   ( 0.004431s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004076s |  0.00% |  0.00% )   ( 0.004606s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034669s |  0.00% |  0.00% )   ( 0.032133s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003857s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004709s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p25
66.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003678s |  0.00% |  0.00% )   ( 0.004209s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.160234s |  1.56% |  3.68% )   ( 16.571649s |  1.66% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003877s |  0.00% |  0.02% )   ( 0.004413s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.162186s |  0.10% |  6.77% )   ( 1.150247s |  0.11% |  6.94% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.005114s |  0.18% | 11.68% )   ( 1.936368s |  0.19% | 11.68% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.633913s |  0.14% |  9.52% )   ( 1.554401s |  0.15% |  9.37% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.948562s |  0.17% | 11.35% )   ( 1.879394s |  0.18% | 11.34% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561302s |  0.14% |  9.09% )   ( 1.515667s |  0.15% |  9.14% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.062511s |  0.09% |  6.19% )   ( 1.016344s |  0.10% |  6.13% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.564116s |  0.05% |  3.28% )   ( 0.527144s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102427s |  0.10% |  6.42% )   ( 1.059191s |  0.10% |  6.39% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.496980s |  0.04% |  2.89% )   ( 0.460902s |  0.04% |  2.78% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.411888s |  0.12% |  8.22% )   ( 1.386997s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.135001s |  0.28% | 18.26% )   ( 3.052212s |  0.30% | 18.41% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549322s |  0.05% |  3.20% )   ( 0.527049s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523035s |  0.04% |  3.04% )   ( 0.501320s |  0.05% |  3.02% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003550s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004055s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008852s |  0.00% |  0.04% )   ( 0.008921s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.674364s |  1.61% |  3.21% )   ( 16.809013s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001109s |  0.00% |  0.00% )   ( 0.001125s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.673099s |  1.61% | 99.99% )   ( 16.807713s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p26
30.5.0:         ( 0.053170s |  0.00% |  0.30% )   ( 0.049249s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051881s |  0.00% |  0.29% )   ( 0.051691s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.048602s |  0.00% |  0.27% )   ( 0.048439s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.052822s |  0.00% |  0.29% )   ( 0.052646s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.051494s |  0.00% |  0.29% )   ( 0.051297s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003533s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004349s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p26
41.5.0:         ( 0.370890s |  0.03% |  0.08% )   ( 0.006077s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004447s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003741s |  0.00% |  0.00% )   ( 0.004216s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029303s |  0.00% |  0.00% )   ( 0.028900s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003838s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003214s |  0.00% |  0.00% )   ( 0.003656s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004602s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004163s |  0.00% |  0.00% )   ( 0.004655s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p26
66.5.0:         ( 0.005926s |  0.00% |  0.00% )   ( 0.003795s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.946885s |  1.54% |  4.16% )   ( 16.447292s |  1.64% |  4.25% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003372s |  0.00% |  0.01% )   ( 0.003841s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.108750s |  0.10% |  6.54% )   ( 1.097639s |  0.10% |  6.67% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.974133s |  0.17% | 11.64% )   ( 1.939211s |  0.19% | 11.79% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.619816s |  0.14% |  9.55% )   ( 1.601112s |  0.16% |  9.73% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.017556s |  0.18% | 11.90% )   ( 1.945229s |  0.19% | 11.82% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.572371s |  0.14% |  9.27% )   ( 1.542205s |  0.15% |  9.37% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.056430s |  0.09% |  6.23% )   ( 0.996309s |  0.09% |  6.05% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.519893s |  0.04% |  3.06% )   ( 0.484938s |  0.04% |  2.94% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091218s |  0.09% |  6.43% )   ( 1.049356s |  0.10% |  6.38% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.428707s |  0.03% |  2.52% )   ( 0.423413s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.434608s |  0.13% |  8.46% )   ( 1.386077s |  0.13% |  8.42% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.127177s |  0.28% | 18.45% )   ( 3.051112s |  0.30% | 18.55% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.500882s |  0.04% |  2.95% )   ( 0.468364s |  0.04% |  2.84% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491972s |  0.04% |  2.90% )   ( 0.458486s |  0.04% |  2.78% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003446s |  0.00% |  0.00% )   ( 0.003895s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003608s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005097s |  0.00% |  0.02% )   ( 0.005191s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 19.649181s |  1.79% |  3.57% )   ( 18.736543s |  1.87% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001110s |  0.00% |  0.00% )   ( 0.001127s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 19.647915s |  1.79% | 99.99% )   ( 18.735238s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.7pAgZc"
26.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p27
30.5.0:         ( 0.051187s |  0.00% |  0.26% )   ( 0.050966s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.7pAgZc"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049934s |  0.00% |  0.25% )   ( 0.049732s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3173669 ${BASHPID}' INT
33.5.0:         ( 0.050873s |  0.00% |  0.25% )   ( 0.050662s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3173669 ${BASHPID}' TERM
34.5.0:         ( 0.051827s |  0.00% |  0.26% )   ( 0.051629s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3173669 ${BASHPID}' HUP
35.5.0:         ( 0.050047s |  0.00% |  0.25% )   ( 0.049826s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.7pAgZc"/.nLines
38.5.2:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004253s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p27
41.5.0:         ( 0.366977s |  0.03% |  0.08% )   ( 0.005711s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003828s |  0.00% |  0.00% )   ( 0.004286s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.quit ]]
46.5.0:         ( 0.003532s |  0.00% |  0.00% )   ( 0.003900s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.7pAgZc"/.done ]]
46.5.1:         ( 0.003337s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003322s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025313s |  0.00% |  0.00% )   ( 0.025710s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003392s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003294s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009604s |  0.00% |  0.00% )   ( 0.004051s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.7pAgZc"/.wait/p27
66.5.0:         ( 0.003315s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003053s |  0.00% |  0.00% )   ( 0.003482s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.933214s |  1.72% |  4.38% )   ( 18.381198s |  1.84% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003214s |  0.00% |  0.01% )   ( 0.003648s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.343106s |  0.12% |  7.09% )   ( 1.313772s |  0.13% |  7.14% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.431033s |  0.22% | 12.84% )   ( 2.400084s |  0.24% | 13.05% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.933493s |  0.17% | 10.21% )   ( 1.907703s |  0.19% | 10.37% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.489019s |  0.22% | 13.14% )   ( 2.419631s |  0.24% | 13.16% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.900511s |  0.17% | 10.03% )   ( 1.869032s |  0.18% | 10.16% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.176485s |  0.10% |  6.21% )   ( 1.166755s |  0.11% |  6.34% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.526021s |  0.04% |  2.77% )   ( 0.500573s |  0.05% |  2.72% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.279033s |  0.11% |  6.75% )   ( 1.238866s |  0.12% |  6.73% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442523s |  0.04% |  2.33% )   ( 0.412058s |  0.04% |  2.24% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.399987s |  0.12% |  7.39% )   ( 1.315901s |  0.13% |  7.15% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.045929s |  0.27% | 16.08% )   ( 2.928472s |  0.29% | 15.93% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507124s |  0.04% |  2.67% )   ( 0.464007s |  0.04% |  2.52% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.455736s |  0.04% |  2.40% )   ( 0.440696s |  0.04% |  2.39% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003840s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002973s |  0.00% |  0.00% )   ( 0.003374s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003372s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004991s |  0.00% |  0.02% )   ( 0.005063s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001398s |  0.00% |  0.00% )   ( 0.001414s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.460555s |  2.22% |  4.44% )   ( 0.001542s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000298s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000285s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
25.3.0:         ( 0.048951s |  0.00% |  0.00% )   ( 0.049172s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.005916s |  0.00% |  0.00% )   ( 0.002908s |  0.00% |  0.00% )    	(1x)	└─ └─  wait

10.0.0:         ( 546.891503s | 49.84% )            ( 499.515957s | 50.04% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000746s |  0.00% |  0.00% )   ( 0.000470s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 546.890757s | 49.84% | 99.99% )   ( 499.515487s | 50.04% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042011s |  0.00% |  0.00% )   ( 0.041924s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001154s |  0.00% |  0.00% )   ( 0.001008s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.004912s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.004912s |  0.00% |100.00% )   ( 0.004912s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002882s |  0.00% |  0.00% )   ( 0.002937s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.027036s |  0.00% |  0.00% )   ( 0.000490s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 546.806919s | 49.83% | 99.98% )   ( 499.458880s | 50.04% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
.3.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  ├─
235.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000683s |  0.00% |  0.00% )   ( 0.000792s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.000683s |  0.00% |100.00% )   ( 0.000792s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000183s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000534s |  0.00% |  0.00% )   ( 0.000317s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000109s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000109s |  0.00% |100.00% )   ( 0.000123s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000877s |  0.00% |  0.00% )   ( 0.001015s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000069s |  0.00% |  7.86% )   ( 0.000081s |  0.00% |  7.98% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000072s |  0.00% |  8.20% )   ( 0.000083s |  0.00% |  8.17% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000070s |  0.00% |  7.98% )   ( 0.000082s |  0.00% |  8.07% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  8.09% )   ( 0.000082s |  0.00% |  8.07% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.63% )   ( 0.000079s |  0.00% |  7.78% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000071s |  0.00% |  8.09% )   ( 0.000083s |  0.00% |  8.17% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000066s |  0.00% |  7.52% )   ( 0.000077s |  0.00% |  7.58% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000112s |  0.00% | 12.77% )   ( 0.000125s |  0.00% | 12.31% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.52% )   ( 0.000078s |  0.00% |  7.68% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.41% )   ( 0.000076s |  0.00% |  7.48% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000070s |  0.00% |  7.98% )   ( 0.000082s |  0.00% |  8.07% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000078s |  0.00% |  8.89% )   ( 0.000087s |  0.00% |  8.57% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000906s |  0.00% |  0.00% )   ( 0.000703s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.003658s |  0.00% |  0.00% )   ( 0.003830s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000388s |  0.00% | 10.60% )   ( 0.000419s |  0.00% | 10.93% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.003270s |  0.00% | 89.39% )   ( 0.003411s |  0.00% | 89.06% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003723s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000600s |  0.00% |  0.00% )   ( 0.000442s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000088s |  0.00% |100.00% )   ( 0.000101s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001107s |  0.00% |  0.00% )   ( 0.001187s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000528s |  0.00% |  0.00% )   ( 0.000535s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134056s |  0.01% |  0.02% )   ( 0.133805s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000083s |  0.00% |  0.06% )   ( 0.000095s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020962s |  0.00% | 15.63% )   ( 0.020916s |  0.00% | 15.63% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023683s |  0.00% | 17.66% )   ( 0.023631s |  0.00% | 17.66% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023765s |  0.00% | 17.72% )   ( 0.023703s |  0.00% | 17.71% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023582s |  0.00% | 17.59% )   ( 0.023531s |  0.00% | 17.58% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023387s |  0.00% | 17.44% )   ( 0.023334s |  0.00% | 17.43% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000064s |  0.00% |  0.04% )   ( 0.000075s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018285s |  0.00% | 13.63% )   ( 0.018243s |  0.00% | 13.63% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000099s |  0.00% |  0.07% )   ( 0.000111s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000072s |  0.00% |  0.05% )   ( 0.000083s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000083s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000402s |  0.00% |  0.00% )   ( 0.000430s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.926061s |  0.35% |  0.71% )   ( 1.867363s |  0.18% |  0.37% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.025581s |  0.00% |  0.65% )   ( 0.025511s |  0.00% |  1.36% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023811s |  0.00% |  0.60% )   ( 0.023769s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023621s |  0.00% |  0.60% )   ( 0.023578s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023423s |  0.00% |  0.59% )   ( 0.023384s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023407s |  0.00% |  0.59% )   ( 0.023365s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.091688s |  0.00% |  0.00% )   ( 0.105001s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.350460s |  0.21% |  0.08% )   ( 0.122172s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000911s |  0.00% |  0.00% )   ( 0.001025s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.089789s |  0.00% |  0.00% )   ( 0.103030s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089847s |  0.00% |  0.00% )   ( 0.103014s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.090490s |  0.00% |  0.00% )   ( 0.103619s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092864s |  0.00% |  0.00% )   ( 0.105911s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.093586s |  0.00% |  0.00% )   ( 0.106749s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.090179s |  0.00% |  0.00% )   ( 0.103059s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.090286s |  0.00% |  0.00% )   ( 0.103022s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.092795s |  0.00% |  0.00% )   ( 0.102853s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000664s |  0.00% |  0.01% )   ( 0.000490s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002591s |  0.00% |  0.06% )   ( 0.002937s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002591s |  0.00% |100.00% )   ( 0.002937s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088545s |  0.00% |  0.00% )   ( 0.101559s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.088157s |  0.00% |  0.00% )   ( 0.101248s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.086746s |  0.00% |  0.00% )   ( 0.099375s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092854s |  0.00% |  0.00% )   ( 0.106183s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.089859s |  0.00% |  0.00% )   ( 0.102845s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.090185s |  0.00% |  0.00% )   ( 0.103372s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002770s |  0.00% |  0.00% )   ( 0.003165s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002815s |  0.00% |  0.00% )   ( 0.003232s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.070074s |  0.00% |  0.08% )   ( 0.044202s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003260s |  0.00% |  0.00% )   ( 0.003701s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003099s |  0.00% |  0.00% )   ( 0.003518s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003016s |  0.00% |  0.00% )   ( 0.003429s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000256s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.006267s |  0.00% |  0.15% )   ( 0.006281s |  0.00% |  0.33% )    	(1x)	│  │  │  └─  ${nSpawnFlag}
598.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001930s |  0.00% |  0.00% )   ( 0.001144s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.004923s |  0.00% |  0.00% )   ( 0.005648s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000122s |  0.00% |  2.47% )   ( 0.000134s |  0.00% |  2.37% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000069s |  0.00% |  1.40% )   ( 0.000080s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000077s |  0.00% |  1.56% )   ( 0.000089s |  0.00% |  1.57% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000217s |  0.00% |  4.40% )   ( 0.000230s |  0.00% |  4.07% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000066s |  0.00% |  1.34% )   ( 0.000078s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000069s |  0.00% |  1.40% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000067s |  0.00% |  1.36% )   ( 0.000079s |  0.00% |  1.39% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000064s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000063s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.40% )   ( 0.000080s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000072s |  0.00% |  1.46% )   ( 0.000080s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.34% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000083s |  0.00% |  1.68% )   ( 0.000095s |  0.00% |  1.68% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000070s |  0.00% |  1.42% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.34% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.42% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000082s |  0.00% |  1.66% )   ( 0.000094s |  0.00% |  1.66% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000070s |  0.00% |  1.42% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000092s |  0.00% |  1.86% )   ( 0.000104s |  0.00% |  1.84% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000064s |  0.00% |  1.30% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000064s |  0.00% |  1.30% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.48% )   ( 0.000085s |  0.00% |  1.50% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000075s |  0.00% |  1.52% )   ( 0.000083s |  0.00% |  1.46% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000100s |  0.00% |  2.03% )   ( 0.000112s |  0.00% |  1.98% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.34% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000092s |  0.00% |  1.86% )   ( 0.000104s |  0.00% |  1.84% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.56% )   ( 0.000088s |  0.00% |  1.55% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000064s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000074s |  0.00% |  1.50% )   ( 0.000083s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000068s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000068s |  0.00% |  1.38% )   ( 0.000078s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.58% )   ( 0.000089s |  0.00% |  1.57% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000077s |  0.00% |  1.56% )   ( 0.000089s |  0.00% |  1.57% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000063s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000089s |  0.00% |  1.80% )   ( 0.000101s |  0.00% |  1.78% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000087s |  0.00% |  1.76% )   ( 0.000108s |  0.00% |  1.91% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000100s |  0.00% |  2.03% )   ( 0.000108s |  0.00% |  1.91% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000064s |  0.00% |  1.30% )   ( 0.000075s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000070s |  0.00% |  1.42% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000062s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000087s |  0.00% |  1.76% )   ( 0.000098s |  0.00% |  1.73% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000084s |  0.00% |  1.70% )   ( 0.000096s |  0.00% |  1.69% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000091s |  0.00% |  1.84% )   ( 0.000102s |  0.00% |  1.80% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000075s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000069s |  0.00% |  1.40% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.32% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000083s |  0.00% |  1.68% )   ( 0.000095s |  0.00% |  1.68% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000069s |  0.00% |  1.40% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000067s |  0.00% |  1.36% )   ( 0.000078s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000083s |  0.00% |  1.68% )   ( 0.000092s |  0.00% |  1.62% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000071s |  0.00% |  1.44% )   ( 0.000082s |  0.00% |  1.45% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.44% )   ( 0.000083s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000084s |  0.00% |  1.70% )   ( 0.000095s |  0.00% |  1.68% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.40% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000080s |  0.00% |  1.62% )   ( 0.000092s |  0.00% |  1.62% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000280s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023906s |  0.00% |  0.00% )   ( 0.023859s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023648s |  0.00% |  0.00% )   ( 0.023606s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023974s |  0.00% |  0.00% )   ( 0.167549s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023356s |  0.00% |  0.00% )   ( 0.023303s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003035s |  0.00% |  0.00% )   ( 0.003476s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002961s |  0.00% |  0.00% )   ( 0.003389s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 17.403577s |  1.58% |  3.18% )   ( 16.562701s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000577s |  0.00% |  0.00% )   ( 0.000597s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 17.402904s |  1.58% | 99.99% )   ( 16.561995s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p0
30.5.0:         ( 0.023344s |  0.00% |  0.13% )   ( 0.023256s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023812s |  0.00% |  0.13% )   ( 0.023678s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024148s |  0.00% |  0.13% )   ( 0.024060s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024227s |  0.00% |  0.13% )   ( 0.024084s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.023939s |  0.00% |  0.13% )   ( 0.023852s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004789s |  0.00% |  0.00% )   ( 0.005360s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005331s |  0.00% |  0.00% )   ( 0.005940s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p0
41.5.0:         ( 0.259267s |  0.02% |  0.04% )   ( 0.007294s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005031s |  0.00% |  0.00% )   ( 0.005676s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.005028s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004674s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004468s |  0.00% |  0.00% )   ( 0.005019s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034472s |  0.00% |  0.00% )   ( 0.034804s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004549s |  0.00% |  0.00% )   ( 0.005110s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005136s |  0.00% |  0.00% )   ( 0.005718s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p0
54.5.0:         ( 0.004125s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.916343s |  1.54% |  3.35% )   ( 16.319959s |  1.63% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004160s |  0.00% |  0.02% )   ( 0.004738s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.093666s |  0.09% |  6.46% )   ( 1.087111s |  0.10% |  6.66% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.915775s |  0.17% | 11.32% )   ( 1.842111s |  0.18% | 11.28% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.625022s |  0.14% |  9.60% )   ( 1.573038s |  0.15% |  9.63% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.919797s |  0.17% | 11.34% )   ( 1.836777s |  0.18% | 11.25% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.512798s |  0.13% |  8.94% )   ( 1.495526s |  0.14% |  9.16% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023624s |  0.09% |  6.05% )   ( 0.980284s |  0.09% |  6.00% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.602663s |  0.05% |  3.56% )   ( 0.561675s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.096084s |  0.09% |  6.47% )   ( 1.045361s |  0.10% |  6.40% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.529487s |  0.04% |  3.13% )   ( 0.491069s |  0.04% |  3.00% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.434437s |  0.13% |  8.47% )   ( 1.376392s |  0.13% |  8.43% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.987243s |  0.27% | 17.65% )   ( 2.916568s |  0.29% | 17.87% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.609960s |  0.05% |  3.60% )   ( 0.566435s |  0.05% |  3.47% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561627s |  0.05% |  3.32% )   ( 0.542874s |  0.05% |  3.32% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004395s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004964s |  0.00% |  0.00% )   ( 0.004896s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008227s |  0.00% |  0.04% )   ( 0.008294s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002767s |  0.00% |  0.00% )   ( 0.003194s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.757013s |  1.61% |  3.24% )   ( 16.671663s |  1.67% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000587s |  0.00% |  0.00% )   ( 0.000606s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.756338s |  1.61% | 99.99% )   ( 16.670955s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p1
30.5.0:         ( 0.024996s |  0.00% |  0.14% )   ( 0.024924s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023986s |  0.00% |  0.13% )   ( 0.023945s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024075s |  0.00% |  0.13% )   ( 0.024026s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.023882s |  0.00% |  0.13% )   ( 0.023841s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.023983s |  0.00% |  0.13% )   ( 0.023932s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004949s |  0.00% |  0.00% )   ( 0.005549s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004755s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005084s |  0.00% |  0.00% )   ( 0.005672s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p1
41.5.0:         ( 0.193215s |  0.01% |  0.03% )   ( 0.006445s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004700s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005055s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034319s |  0.00% |  0.00% )   ( 0.034100s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005688s |  0.00% |  0.00% )   ( 0.005204s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004960s |  0.00% |  0.00% )   ( 0.005546s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p1
54.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004539s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003891s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.338481s |  1.58% |  3.36% )   ( 16.433269s |  1.64% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004140s |  0.00% |  0.02% )   ( 0.004693s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.212988s |  0.11% |  6.99% )   ( 1.100034s |  0.11% |  6.69% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.940190s |  0.17% | 11.19% )   ( 1.847957s |  0.18% | 11.24% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629589s |  0.14% |  9.39% )   ( 1.571603s |  0.15% |  9.56% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.946531s |  0.17% | 11.22% )   ( 1.851894s |  0.18% | 11.26% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616853s |  0.14% |  9.32% )   ( 1.515842s |  0.15% |  9.22% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.115754s |  0.10% |  6.43% )   ( 1.004265s |  0.10% |  6.11% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.635950s |  0.05% |  3.66% )   ( 0.563288s |  0.05% |  3.42% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.068899s |  0.09% |  6.16% )   ( 1.038906s |  0.10% |  6.32% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.498839s |  0.04% |  2.87% )   ( 0.491531s |  0.04% |  2.99% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.463268s |  0.13% |  8.43% )   ( 1.402044s |  0.14% |  8.53% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.019559s |  0.27% | 17.41% )   ( 2.947751s |  0.29% | 17.93% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.601492s |  0.05% |  3.46% )   ( 0.557537s |  0.05% |  3.39% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.584429s |  0.05% |  3.37% )   ( 0.535924s |  0.05% |  3.26% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004350s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005021s |  0.00% |  0.02% )   ( 0.005091s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.573775s |  1.60% |  3.21% )   ( 17.009247s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000627s |  0.00% |  0.00% )   ( 0.000640s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.573058s |  1.60% | 99.99% )   ( 17.008503s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p2
30.5.0:         ( 0.023718s |  0.00% |  0.13% )   ( 0.023676s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024100s |  0.00% |  0.13% )   ( 0.024057s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024103s |  0.00% |  0.13% )   ( 0.024049s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024059s |  0.00% |  0.13% )   ( 0.024016s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024042s |  0.00% |  0.13% )   ( 0.023987s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004809s |  0.00% |  0.00% )   ( 0.005383s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004364s |  0.00% |  0.00% )   ( 0.004939s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005282s |  0.00% |  0.00% )   ( 0.005875s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p2
41.5.0:         ( 0.100769s |  0.00% |  0.01% )   ( 0.006064s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004236s |  0.00% |  0.00% )   ( 0.004815s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033632s |  0.00% |  0.00% )   ( 0.033959s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009267s |  0.00% |  0.00% )   ( 0.005349s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005124s |  0.00% |  0.00% )   ( 0.005733s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p2
54.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003997s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.239344s |  1.57% |  3.50% )   ( 16.768721s |  1.68% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004096s |  0.00% |  0.02% )   ( 0.004641s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.163429s |  0.10% |  6.74% )   ( 1.128071s |  0.11% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.982383s |  0.18% | 11.49% )   ( 1.927116s |  0.19% | 11.49% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.649749s |  0.15% |  9.56% )   ( 1.608372s |  0.16% |  9.59% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.947060s |  0.17% | 11.29% )   ( 1.892882s |  0.18% | 11.28% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.602005s |  0.14% |  9.29% )   ( 1.568768s |  0.15% |  9.35% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.090919s |  0.09% |  6.32% )   ( 1.012902s |  0.10% |  6.04% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.554606s |  0.05% |  3.21% )   ( 0.530836s |  0.05% |  3.16% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.073837s |  0.09% |  6.22% )   ( 1.058064s |  0.10% |  6.30% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489975s |  0.04% |  2.84% )   ( 0.477000s |  0.04% |  2.84% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.447385s |  0.13% |  8.39% )   ( 1.409375s |  0.14% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.134511s |  0.28% | 18.18% )   ( 3.089244s |  0.30% | 18.42% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549164s |  0.05% |  3.18% )   ( 0.535108s |  0.05% |  3.19% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.550225s |  0.05% |  3.19% )   ( 0.526342s |  0.05% |  3.13% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003914s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007419s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008481s |  0.00% |  0.04% )   ( 0.008563s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 17.727909s |  1.61% |  3.24% )   ( 17.122440s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000614s |  0.00% |  0.00% )   ( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 17.727205s |  1.61% | 99.99% )   ( 17.121707s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000323s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000403s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p3
30.5.0:         ( 0.024018s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024093s |  0.00% |  0.13% )   ( 0.024049s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024068s |  0.00% |  0.13% )   ( 0.024025s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.023952s |  0.00% |  0.13% )   ( 0.023908s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024057s |  0.00% |  0.13% )   ( 0.024009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004666s |  0.00% |  0.00% )   ( 0.005208s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004654s |  0.00% |  0.00% )   ( 0.005191s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p3
41.5.0:         ( 0.145823s |  0.01% |  0.03% )   ( 0.005910s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.005538s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.005004s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029530s |  0.00% |  0.00% )   ( 0.029852s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004891s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p3
54.5.0:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003546s |  0.00% |  0.00% )   ( 0.004020s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.363728s |  1.58% |  3.91% )   ( 16.896862s |  1.69% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003810s |  0.00% |  0.02% )   ( 0.004227s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.158030s |  0.10% |  6.66% )   ( 1.078912s |  0.10% |  6.38% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.992572s |  0.18% | 11.47% )   ( 1.937935s |  0.19% | 11.46% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.636381s |  0.14% |  9.42% )   ( 1.596114s |  0.15% |  9.44% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.022151s |  0.18% | 11.64% )   ( 1.949792s |  0.19% | 11.53% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.619127s |  0.14% |  9.32% )   ( 1.572495s |  0.15% |  9.30% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.044899s |  0.09% |  6.01% )   ( 1.033203s |  0.10% |  6.11% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551266s |  0.05% |  3.17% )   ( 0.534103s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.132365s |  0.10% |  6.52% )   ( 1.096555s |  0.10% |  6.48% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456122s |  0.04% |  2.62% )   ( 0.450945s |  0.04% |  2.66% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.428737s |  0.13% |  8.22% )   ( 1.414458s |  0.14% |  8.37% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.270405s |  0.29% | 18.83% )   ( 3.222717s |  0.32% | 19.07% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.520040s |  0.04% |  2.99% )   ( 0.513699s |  0.05% |  3.04% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.527823s |  0.04% |  3.03% )   ( 0.491707s |  0.04% |  2.91% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004322s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006558s |  0.00% |  0.00% )   ( 0.004034s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003847s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005252s |  0.00% |  0.02% )   ( 0.005351s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 16.978617s |  1.54% |  3.10% )   ( 16.293803s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000593s |  0.00% |  0.00% )   ( 0.000620s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 16.977933s |  1.54% | 99.99% )   ( 16.293077s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p4
30.5.0:         ( 0.024106s |  0.00% |  0.14% )   ( 0.024064s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024040s |  0.00% |  0.14% )   ( 0.023998s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024106s |  0.00% |  0.14% )   ( 0.024063s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.023894s |  0.00% |  0.14% )   ( 0.023850s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024146s |  0.00% |  0.14% )   ( 0.024099s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005721s |  0.00% |  0.00% )   ( 0.006412s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   true
38.5.0:         ( 0.005146s |  0.00% |  0.00% )   ( 0.005818s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006097s |  0.00% |  0.00% )   ( 0.006796s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p4
41.5.0:         ( 0.140739s |  0.01% |  0.02% )   ( 0.007378s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005203s |  0.00% |  0.00% )   ( 0.005825s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.005085s |  0.00% |  0.00% )   ( 0.005757s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005255s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005016s |  0.00% |  0.00% )   ( 0.005639s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.046484s |  0.00% |  0.00% )   ( 0.040046s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008227s |  0.00% |  0.00% )   ( 0.005865s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006559s |  0.00% |  0.00% )   ( 0.006685s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p4
54.5.0:         ( 0.004657s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004674s |  0.00% |  0.00% )   ( 0.005311s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.581492s |  1.51% |  3.05% )   ( 16.033831s |  1.60% |  3.07% )    	(32x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004742s |  0.00% |  0.02% )   ( 0.005396s |  0.00% |  0.03% )    	(32x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.125180s |  0.10% |  6.78% )   ( 1.080554s |  0.10% |  6.73% )    	(32x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.805511s |  0.16% | 10.88% )   ( 1.742398s |  0.17% | 10.86% )    	(32x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.561625s |  0.14% |  9.41% )   ( 1.516638s |  0.15% |  9.45% )    	(32x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.778194s |  0.16% | 10.72% )   ( 1.744149s |  0.17% | 10.87% )    	(32x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.474064s |  0.13% |  8.88% )   ( 1.469452s |  0.14% |  9.16% )    	(32x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.041555s |  0.09% |  6.28% )   ( 0.997083s |  0.09% |  6.21% )    	(32x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.659772s |  0.06% |  3.97% )   ( 0.607067s |  0.06% |  3.78% )    	(32x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.058602s |  0.09% |  6.38% )   ( 1.023403s |  0.10% |  6.38% )    	(32x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.541421s |  0.04% |  3.26% )   ( 0.537974s |  0.05% |  3.35% )    	(32x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410031s |  0.12% |  8.50% )   ( 1.384479s |  0.13% |  8.63% )    	(32x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.789054s |  0.25% | 16.82% )   ( 2.701181s |  0.27% | 16.84% )    	(32x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.671904s |  0.06% |  4.05% )   ( 0.615542s |  0.06% |  3.83% )    	(32x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.659837s |  0.06% |  3.97% )   ( 0.608515s |  0.06% |  3.79% )    	(32x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005033s |  0.00% |  0.00% )   ( 0.005701s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004846s |  0.00% |  0.00% )   ( 0.005466s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008209s |  0.00% |  0.00% )   ( 0.005858s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008911s |  0.00% |  0.05% )   ( 0.008992s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.433199s |  1.58% |  3.18% )   ( 16.642034s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000605s |  0.00% |  0.00% )   ( 0.000620s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.432497s |  1.58% | 99.99% )   ( 16.641302s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000394s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p5
30.5.0:         ( 0.023985s |  0.00% |  0.13% )   ( 0.023938s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024027s |  0.00% |  0.13% )   ( 0.023984s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024078s |  0.00% |  0.13% )   ( 0.024027s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024206s |  0.00% |  0.13% )   ( 0.024156s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.023916s |  0.00% |  0.13% )   ( 0.023864s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005463s |  0.00% |  0.00% )   ( 0.005215s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004885s |  0.00% |  0.00% )   ( 0.005441s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p5
41.5.0:         ( 0.172802s |  0.01% |  0.03% )   ( 0.005877s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004414s |  0.00% |  0.00% )   ( 0.004989s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004337s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033710s |  0.00% |  0.00% )   ( 0.034165s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006996s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004811s |  0.00% |  0.00% )   ( 0.005356s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p5
54.5.0:         ( 0.006923s |  0.00% |  0.00% )   ( 0.004473s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004319s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.022609s |  1.55% |  3.61% )   ( 16.402413s |  1.64% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003925s |  0.00% |  0.02% )   ( 0.004469s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.105895s |  0.10% |  6.49% )   ( 1.088909s |  0.10% |  6.63% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.864197s |  0.16% | 10.95% )   ( 1.851418s |  0.18% | 11.28% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.690405s |  0.15% |  9.93% )   ( 1.575376s |  0.15% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.962978s |  0.17% | 11.53% )   ( 1.885577s |  0.18% | 11.49% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.564329s |  0.14% |  9.18% )   ( 1.515818s |  0.15% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022990s |  0.09% |  6.00% )   ( 0.999837s |  0.10% |  6.09% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577135s |  0.05% |  3.39% )   ( 0.534366s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.069278s |  0.09% |  6.28% )   ( 1.032766s |  0.10% |  6.29% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.493067s |  0.04% |  2.89% )   ( 0.467952s |  0.04% |  2.85% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410219s |  0.12% |  8.28% )   ( 1.377765s |  0.13% |  8.39% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.119728s |  0.28% | 18.32% )   ( 3.004257s |  0.30% | 18.31% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.568541s |  0.05% |  3.33% )   ( 0.538062s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.569922s |  0.05% |  3.34% )   ( 0.525841s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004802s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000253s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000251s |  0.00% |  0.00% )   ( 0.000275s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.eunYy1"/.quit
68.5.0:         ( 0.000253s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p* 1>&21
69.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.014584s |  0.00% |  0.08% )   ( 0.008742s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.490829s |  1.59% |  3.19% )   ( 16.468546s |  1.65% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000609s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.490127s |  1.59% | 99.99% )   ( 16.467799s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p6
30.5.0:         ( 0.024132s |  0.00% |  0.13% )   ( 0.024086s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024175s |  0.00% |  0.13% )   ( 0.024129s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024161s |  0.00% |  0.13% )   ( 0.024111s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024123s |  0.00% |  0.13% )   ( 0.024074s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024092s |  0.00% |  0.13% )   ( 0.024042s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004697s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004644s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004964s |  0.00% |  0.00% )   ( 0.005518s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p6
41.5.0:         ( 0.222473s |  0.02% |  0.04% )   ( 0.006351s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004566s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.006494s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004608s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034082s |  0.00% |  0.00% )   ( 0.033961s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.013318s |  0.00% |  0.00% )   ( 0.004863s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004703s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p6
54.5.0:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004496s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.035651s |  1.55% |  3.60% )   ( 16.233127s |  1.62% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003904s |  0.00% |  0.02% )   ( 0.004450s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.103854s |  0.10% |  6.47% )   ( 1.062669s |  0.10% |  6.54% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.854582s |  0.16% | 10.88% )   ( 1.828823s |  0.18% | 11.26% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.608407s |  0.14% |  9.44% )   ( 1.536564s |  0.15% |  9.46% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.951169s |  0.17% | 11.45% )   ( 1.832944s |  0.18% | 11.29% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.589717s |  0.14% |  9.33% )   ( 1.514159s |  0.15% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.071452s |  0.09% |  6.28% )   ( 0.989354s |  0.09% |  6.09% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.593097s |  0.05% |  3.48% )   ( 0.539522s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.093762s |  0.09% |  6.42% )   ( 1.033938s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.528013s |  0.04% |  3.09% )   ( 0.478351s |  0.04% |  2.94% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417728s |  0.12% |  8.32% )   ( 1.371167s |  0.13% |  8.44% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.079847s |  0.28% | 18.07% )   ( 2.962698s |  0.29% | 18.25% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.570539s |  0.05% |  3.34% )   ( 0.549612s |  0.05% |  3.38% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.569580s |  0.05% |  3.34% )   ( 0.528876s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004417s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005295s |  0.00% |  0.03% )   ( 0.005405s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.822395s |  1.62% |  3.25% )   ( 16.848844s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000618s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.821682s |  1.62% | 99.99% )   ( 16.848100s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p7
30.5.0:         ( 0.023935s |  0.00% |  0.13% )   ( 0.023892s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024024s |  0.00% |  0.13% )   ( 0.023979s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024057s |  0.00% |  0.13% )   ( 0.024011s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024004s |  0.00% |  0.13% )   ( 0.023963s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.023831s |  0.00% |  0.13% )   ( 0.023783s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004431s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003480s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p7
41.5.0:         ( 0.068334s |  0.00% |  0.01% )   ( 0.004736s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003410s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.006194s |  0.00% |  0.00% )   ( 0.003617s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003115s |  0.00% |  0.00% )   ( 0.003519s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003320s |  0.00% |  0.00% )   ( 0.003765s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031449s |  0.00% |  0.00% )   ( 0.027768s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008775s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p7
54.5.0:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003650s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003135s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.535516s |  1.59% |  4.47% )   ( 16.631377s |  1.66% |  4.48% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003217s |  0.00% |  0.01% )   ( 0.003668s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.174589s |  0.10% |  6.69% )   ( 1.084509s |  0.10% |  6.52% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.039710s |  0.18% | 11.63% )   ( 1.959856s |  0.19% | 11.78% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.690301s |  0.15% |  9.63% )   ( 1.566474s |  0.15% |  9.41% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.020625s |  0.18% | 11.52% )   ( 1.967326s |  0.19% | 11.82% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.609975s |  0.14% |  9.18% )   ( 1.559520s |  0.15% |  9.37% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.060051s |  0.09% |  6.04% )   ( 0.981271s |  0.09% |  5.90% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503583s |  0.04% |  2.87% )   ( 0.480362s |  0.04% |  2.88% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.130256s |  0.10% |  6.44% )   ( 1.049038s |  0.10% |  6.30% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.438512s |  0.03% |  2.50% )   ( 0.411842s |  0.04% |  2.47% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.461980s |  0.13% |  8.33% )   ( 1.381536s |  0.13% |  8.30% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.428455s |  0.31% | 19.55% )   ( 3.270853s |  0.32% | 19.66% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498390s |  0.04% |  2.84% )   ( 0.469652s |  0.04% |  2.82% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.475872s |  0.04% |  2.71% )   ( 0.445470s |  0.04% |  2.67% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003569s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003042s |  0.00% |  0.00% )   ( 0.003473s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003575s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008211s |  0.00% |  0.04% )   ( 0.008283s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 19.719618s |  1.79% |  3.60% )   ( 19.233615s |  1.92% |  3.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000626s |  0.00% |  0.00% )   ( 0.000644s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.718901s |  1.79% | 99.99% )   ( 19.232865s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p8
30.5.0:         ( 0.024074s |  0.00% |  0.12% )   ( 0.024025s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023886s |  0.00% |  0.12% )   ( 0.023837s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024104s |  0.00% |  0.12% )   ( 0.024055s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024053s |  0.00% |  0.12% )   ( 0.024010s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024008s |  0.00% |  0.12% )   ( 0.023960s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003048s |  0.00% |  0.00% )   ( 0.003414s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002799s |  0.00% |  0.00% )   ( 0.003176s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003356s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p8
41.5.0:         ( 0.057234s |  0.00% |  0.01% )   ( 0.003727s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002838s |  0.00% |  0.00% )   ( 0.003222s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.002630s |  0.00% |  0.00% )   ( 0.002995s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002531s |  0.00% |  0.00% )   ( 0.002882s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002710s |  0.00% |  0.00% )   ( 0.003051s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022401s |  0.00% |  0.00% )   ( 0.022681s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.003282s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003177s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p8
54.5.0:         ( 0.002454s |  0.00% |  0.00% )   ( 0.002805s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002482s |  0.00% |  0.00% )   ( 0.002819s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.472118s |  1.77% |  5.48% )   ( 19.035411s |  1.90% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002641s |  0.00% |  0.01% )   ( 0.003002s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.300520s |  0.11% |  6.67% )   ( 1.296656s |  0.12% |  6.81% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.511675s |  0.22% | 12.89% )   ( 2.466003s |  0.24% | 12.95% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.982411s |  0.18% | 10.18% )   ( 1.930665s |  0.19% | 10.14% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.501315s |  0.22% | 12.84% )   ( 2.467263s |  0.24% | 12.96% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.695232s |  0.15% |  8.70% )   ( 1.652602s |  0.16% |  8.68% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.130603s |  0.10% |  5.80% )   ( 1.117041s |  0.11% |  5.86% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471560s |  0.04% |  2.42% )   ( 0.451565s |  0.04% |  2.37% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.275021s |  0.11% |  6.54% )   ( 1.227293s |  0.12% |  6.44% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.407361s |  0.03% |  2.09% )   ( 0.370222s |  0.03% |  1.94% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.477827s |  0.13% |  7.58% )   ( 1.465305s |  0.14% |  7.69% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.856594s |  0.35% | 19.80% )   ( 3.780061s |  0.37% | 19.85% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.435303s |  0.03% |  2.23% )   ( 0.425404s |  0.04% |  2.23% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.424055s |  0.03% |  2.17% )   ( 0.382329s |  0.03% |  2.00% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002677s |  0.00% |  0.00% )   ( 0.003036s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002651s |  0.00% |  0.00% )   ( 0.002906s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002716s |  0.00% |  0.00% )   ( 0.003054s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006294s |  0.00% |  0.03% )   ( 0.006351s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.428944s |  1.58% |  3.18% )   ( 16.557147s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000641s |  0.00% |  0.00% )   ( 0.000652s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.428212s |  1.58% | 99.99% )   ( 16.556388s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p9
30.5.0:         ( 0.024166s |  0.00% |  0.13% )   ( 0.024116s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024051s |  0.00% |  0.13% )   ( 0.024006s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024111s |  0.00% |  0.13% )   ( 0.024062s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.023935s |  0.00% |  0.13% )   ( 0.023892s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.023950s |  0.00% |  0.13% )   ( 0.023902s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005076s |  0.00% |  0.00% )   ( 0.005681s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005134s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005533s |  0.00% |  0.00% )   ( 0.006164s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p9
41.5.0:         ( 0.171268s |  0.01% |  0.03% )   ( 0.006582s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004681s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004371s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004438s |  0.00% |  0.00% )   ( 0.005025s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038806s |  0.00% |  0.00% )   ( 0.036180s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005234s |  0.00% |  0.00% )   ( 0.005191s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005180s |  0.00% |  0.00% )   ( 0.005783s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p9
54.5.0:         ( 0.004130s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.023650s |  1.55% |  3.36% )   ( 16.311769s |  1.63% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004220s |  0.00% |  0.02% )   ( 0.004798s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.186918s |  0.10% |  6.97% )   ( 1.094389s |  0.10% |  6.70% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.971122s |  0.17% | 11.57% )   ( 1.844342s |  0.18% | 11.30% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.688565s |  0.15% |  9.91% )   ( 1.570164s |  0.15% |  9.62% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.889540s |  0.17% | 11.09% )   ( 1.800543s |  0.18% | 11.03% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.507201s |  0.13% |  8.85% )   ( 1.469304s |  0.14% |  9.00% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.007506s |  0.09% |  5.91% )   ( 0.982055s |  0.09% |  6.02% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575775s |  0.05% |  3.38% )   ( 0.564725s |  0.05% |  3.46% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.033399s |  0.09% |  6.07% )   ( 1.022951s |  0.10% |  6.27% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.532524s |  0.04% |  3.12% )   ( 0.502342s |  0.05% |  3.07% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445539s |  0.13% |  8.49% )   ( 1.398581s |  0.14% |  8.57% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.992000s |  0.27% | 17.57% )   ( 2.933238s |  0.29% | 17.98% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.587246s |  0.05% |  3.44% )   ( 0.568777s |  0.05% |  3.48% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.602095s |  0.05% |  3.53% )   ( 0.555560s |  0.05% |  3.40% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004487s |  0.00% |  0.00% )   ( 0.005090s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008951s |  0.00% |  0.05% )   ( 0.009034s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 20.969225s |  1.91% |  3.83% )   ( 20.147753s |  2.01% |  4.03% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000639s |  0.00% |  0.00% )   ( 0.000661s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 20.968494s |  1.91% | 99.99% )   ( 20.146985s |  2.01% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p10
30.5.0:         ( 0.025451s |  0.00% |  0.12% )   ( 0.025391s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024099s |  0.00% |  0.11% )   ( 0.024045s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024148s |  0.00% |  0.11% )   ( 0.024093s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024133s |  0.00% |  0.11% )   ( 0.024084s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024563s |  0.00% |  0.11% )   ( 0.024490s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003764s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003024s |  0.00% |  0.00% )   ( 0.003441s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p10
41.5.0:         ( 0.189718s |  0.01% |  0.04% )   ( 0.004954s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003391s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003015s |  0.00% |  0.00% )   ( 0.003416s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002865s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003102s |  0.00% |  0.00% )   ( 0.003486s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023849s |  0.00% |  0.00% )   ( 0.024185s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003151s |  0.00% |  0.00% )   ( 0.003532s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003542s |  0.00% |  0.00% )   ( 0.003953s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p10
54.5.0:         ( 0.002848s |  0.00% |  0.00% )   ( 0.003204s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002991s |  0.00% |  0.00% )   ( 0.003404s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.581937s |  1.87% |  4.90% )   ( 19.939433s |  1.99% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003003s |  0.00% |  0.01% )   ( 0.003412s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.431329s |  0.13% |  6.95% )   ( 1.423007s |  0.14% |  7.13% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.886966s |  0.26% | 14.02% )   ( 2.724587s |  0.27% | 13.66% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.125351s |  0.19% | 10.32% )   ( 2.091351s |  0.20% | 10.48% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.783928s |  0.25% | 13.52% )   ( 2.706720s |  0.27% | 13.57% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.078633s |  0.18% | 10.09% )   ( 2.050873s |  0.20% | 10.28% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.304096s |  0.11% |  6.33% )   ( 1.273546s |  0.12% |  6.38% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.467588s |  0.04% |  2.27% )   ( 0.456323s |  0.04% |  2.28% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.243774s |  0.11% |  6.04% )   ( 1.224544s |  0.12% |  6.14% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.422158s |  0.03% |  2.05% )   ( 0.394708s |  0.03% |  1.97% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.530075s |  0.13% |  7.43% )   ( 1.404486s |  0.14% |  7.04% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.394238s |  0.30% | 16.49% )   ( 3.329883s |  0.33% | 16.69% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.495262s |  0.04% |  2.40% )   ( 0.441083s |  0.04% |  2.21% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.415536s |  0.03% |  2.01% )   ( 0.414910s |  0.04% |  2.08% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002842s |  0.00% |  0.00% )   ( 0.003230s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002738s |  0.00% |  0.00% )   ( 0.003106s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003061s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006178s |  0.00% |  0.02% )   ( 0.006254s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.584781s |  1.60% |  3.21% )   ( 16.838118s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000652s |  0.00% |  0.00% )   ( 0.000665s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.584040s |  1.60% | 99.99% )   ( 16.837348s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p11
30.5.0:         ( 0.024193s |  0.00% |  0.13% )   ( 0.024082s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023985s |  0.00% |  0.13% )   ( 0.023938s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.024091s |  0.00% |  0.13% )   ( 0.024040s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.024124s |  0.00% |  0.13% )   ( 0.024073s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024165s |  0.00% |  0.13% )   ( 0.024113s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005241s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004980s |  0.00% |  0.00% )   ( 0.005555s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p11
41.5.0:         ( 0.182084s |  0.01% |  0.03% )   ( 0.005782s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003818s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031209s |  0.00% |  0.00% )   ( 0.031575s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007123s |  0.00% |  0.00% )   ( 0.004542s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p11
54.5.0:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003716s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.179188s |  1.56% |  3.75% )   ( 16.605011s |  1.66% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003797s |  0.00% |  0.02% )   ( 0.004322s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.149512s |  0.10% |  6.69% )   ( 1.118532s |  0.11% |  6.73% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.969732s |  0.17% | 11.46% )   ( 1.922513s |  0.19% | 11.57% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.646350s |  0.15% |  9.58% )   ( 1.591757s |  0.15% |  9.58% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.936408s |  0.17% | 11.27% )   ( 1.897882s |  0.19% | 11.42% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.612250s |  0.14% |  9.38% )   ( 1.552421s |  0.15% |  9.34% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.065030s |  0.09% |  6.19% )   ( 1.020280s |  0.10% |  6.14% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577970s |  0.05% |  3.36% )   ( 0.531035s |  0.05% |  3.19% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.103980s |  0.10% |  6.42% )   ( 1.050533s |  0.10% |  6.32% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513759s |  0.04% |  2.99% )   ( 0.463290s |  0.04% |  2.79% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.437021s |  0.13% |  8.36% )   ( 1.386310s |  0.13% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.101251s |  0.28% | 18.05% )   ( 3.053000s |  0.30% | 18.38% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554639s |  0.05% |  3.22% )   ( 0.516089s |  0.05% |  3.10% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507489s |  0.04% |  2.95% )   ( 0.497047s |  0.04% |  2.99% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003673s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004088s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008569s |  0.00% |  0.04% )   ( 0.008635s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 22.442486s |  2.04% |  4.10% )   ( 21.397506s |  2.14% |  4.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000837s |  0.00% |  0.00% )   ( 0.000355s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 22.441543s |  2.04% | 99.99% )   ( 21.397030s |  2.14% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p12
30.5.0:         ( 0.037689s |  0.00% |  0.16% )   ( 0.037532s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025984s |  0.00% |  0.11% )   ( 0.025911s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.026890s |  0.00% |  0.11% )   ( 0.026817s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.026886s |  0.00% |  0.11% )   ( 0.026804s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024087s |  0.00% |  0.10% )   ( 0.024027s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004857s |  0.00% |  0.00% )   ( 0.005430s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004959s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005341s |  0.00% |  0.00% )   ( 0.005927s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p12
41.5.0:         ( 0.180084s |  0.01% |  0.02% )   ( 0.006777s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004776s |  0.00% |  0.00% )   ( 0.005378s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004593s |  0.00% |  0.00% )   ( 0.005179s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004847s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005119s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033798s |  0.00% |  0.00% )   ( 0.034277s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008767s |  0.00% |  0.00% )   ( 0.005282s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005452s |  0.00% |  0.00% )   ( 0.006045s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p12
54.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 22.011564s |  2.00% |  3.38% )   ( 21.136251s |  2.11% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004347s |  0.00% |  0.01% )   ( 0.004915s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.735417s |  0.15% |  7.88% )   ( 1.644259s |  0.16% |  7.77% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.501933s |  0.22% | 11.36% )   ( 2.404417s |  0.24% | 11.37% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.020760s |  0.18% |  9.18% )   ( 1.971873s |  0.19% |  9.32% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.519273s |  0.22% | 11.44% )   ( 2.423679s |  0.24% | 11.46% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.933688s |  0.17% |  8.78% )   ( 1.898366s |  0.19% |  8.98% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.426726s |  0.13% |  6.48% )   ( 1.391275s |  0.13% |  6.58% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.654643s |  0.05% |  2.97% )   ( 0.620890s |  0.06% |  2.93% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.472091s |  0.13% |  6.68% )   ( 1.429129s |  0.14% |  6.76% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.566981s |  0.05% |  2.57% )   ( 0.548566s |  0.05% |  2.59% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.818745s |  0.16% |  8.26% )   ( 1.712865s |  0.17% |  8.10% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.090012s |  0.37% | 18.58% )   ( 3.893053s |  0.39% | 18.41% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.663133s |  0.06% |  3.01% )   ( 0.608683s |  0.06% |  2.87% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.603815s |  0.05% |  2.74% )   ( 0.584281s |  0.05% |  2.76% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005249s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004930s |  0.00% |  0.02% )   ( 0.004993s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000106s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 20.714099s |  1.88% |  3.78% )   ( 19.745211s |  1.97% |  3.95% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000950s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 20.713001s |  1.88% | 99.99% )   ( 19.744678s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p13
30.5.0:         ( 0.031772s |  0.00% |  0.15% )   ( 0.031652s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040509s |  0.00% |  0.19% )   ( 0.040376s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.035004s |  0.00% |  0.16% )   ( 0.034896s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.029501s |  0.00% |  0.14% )   ( 0.029396s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.026592s |  0.00% |  0.12% )   ( 0.026512s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004713s |  0.00% |  0.00% )   ( 0.005248s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005153s |  0.00% |  0.00% )   ( 0.005688s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p13
41.5.0:         ( 0.177124s |  0.01% |  0.03% )   ( 0.006409s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007277s |  0.00% |  0.00% )   ( 0.004844s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035975s |  0.00% |  0.00% )   ( 0.033724s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007366s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004951s |  0.00% |  0.00% )   ( 0.005476s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p13
54.5.0:         ( 0.004107s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003821s |  0.00% |  0.00% )   ( 0.004344s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.264795s |  1.84% |  3.62% )   ( 19.468382s |  1.95% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004012s |  0.00% |  0.01% )   ( 0.004581s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.509533s |  0.13% |  7.44% )   ( 1.433888s |  0.14% |  7.36% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.384746s |  0.21% | 11.76% )   ( 2.227740s |  0.22% | 11.44% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.836880s |  0.16% |  9.06% )   ( 1.816736s |  0.18% |  9.33% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.261235s |  0.20% | 11.15% )   ( 2.210185s |  0.22% | 11.35% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.828715s |  0.16% |  9.02% )   ( 1.769472s |  0.17% |  9.08% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.296630s |  0.11% |  6.39% )   ( 1.262063s |  0.12% |  6.48% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.633525s |  0.05% |  3.12% )   ( 0.577424s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.378568s |  0.12% |  6.80% )   ( 1.298754s |  0.13% |  6.67% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.559205s |  0.05% |  2.75% )   ( 0.501595s |  0.05% |  2.57% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.615917s |  0.14% |  7.97% )   ( 1.586805s |  0.15% |  8.15% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.752603s |  0.34% | 18.51% )   ( 3.656353s |  0.36% | 18.78% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.620783s |  0.05% |  3.06% )   ( 0.575142s |  0.05% |  2.95% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.582443s |  0.05% |  2.87% )   ( 0.547644s |  0.05% |  2.81% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004096s |  0.00% |  0.00% )   ( 0.004655s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005166s |  0.00% |  0.02% )   ( 0.005255s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 19.242321s |  1.75% |  3.51% )   ( 18.903292s |  1.89% |  3.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000938s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.241229s |  1.75% | 99.99% )   ( 18.902770s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p14
30.5.0:         ( 0.026402s |  0.00% |  0.13% )   ( 0.026312s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041370s |  0.00% |  0.21% )   ( 0.041226s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.043364s |  0.00% |  0.22% )   ( 0.043234s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.028417s |  0.00% |  0.14% )   ( 0.028335s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.024216s |  0.00% |  0.12% )   ( 0.024157s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001180s |  0.00% |  0.00% )   ( 0.001323s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   true
38.5.0:         ( 0.001037s |  0.00% |  0.00% )   ( 0.001178s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001334s |  0.00% |  0.00% )   ( 0.001500s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p14
41.5.0:         ( 0.058631s |  0.00% |  0.03% )   ( 0.001559s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001181s |  0.00% |  0.00% )   ( 0.001335s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.000907s |  0.00% |  0.00% )   ( 0.001035s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.000913s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.000982s |  0.00% |  0.00% )   ( 0.001112s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.007356s |  0.00% |  0.00% )   ( 0.007473s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.000991s |  0.00% |  0.00% )   ( 0.001120s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001163s |  0.00% |  0.00% )   ( 0.001300s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p14
54.5.0:         ( 0.000993s |  0.00% |  0.00% )   ( 0.001126s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.000990s |  0.00% |  0.00% )   ( 0.001129s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.987696s |  1.73% | 14.09% )   ( 18.704601s |  1.87% | 14.13% )    	(7x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.000885s |  0.00% |  0.00% )   ( 0.001008s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.205115s |  0.10% |  6.34% )   ( 1.198631s |  0.12% |  6.40% )    	(7x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.556156s |  0.23% | 13.46% )   ( 2.451194s |  0.24% | 13.10% )    	(7x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.768584s |  0.16% |  9.31% )   ( 1.750617s |  0.17% |  9.35% )    	(7x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.501333s |  0.22% | 13.17% )   ( 2.472605s |  0.24% | 13.21% )    	(7x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.804814s |  0.16% |  9.50% )   ( 1.781610s |  0.17% |  9.52% )    	(7x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015131s |  0.09% |  5.34% )   ( 1.003227s |  0.10% |  5.36% )    	(7x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.285438s |  0.02% |  1.50% )   ( 0.283321s |  0.02% |  1.51% )    	(7x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.235497s |  0.11% |  6.50% )   ( 1.222962s |  0.12% |  6.53% )    	(7x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.222534s |  0.02% |  1.17% )   ( 0.215475s |  0.02% |  1.15% )    	(7x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.521374s |  0.13% |  8.01% )   ( 1.480912s |  0.14% |  7.91% )    	(7x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.409522s |  0.40% | 23.22% )   ( 4.394339s |  0.44% | 23.49% )    	(7x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.252328s |  0.02% |  1.32% )   ( 0.244124s |  0.02% |  1.30% )    	(7x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.208985s |  0.01% |  1.10% )   ( 0.204576s |  0.02% |  1.09% )    	(7x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001005s |  0.00% |  0.00% )   ( 0.001143s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.000818s |  0.00% |  0.00% )   ( 0.000931s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.000940s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008342s |  0.00% |  0.04% )   ( 0.008413s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.474679s |  1.59% |  3.19% )   ( 16.630988s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000880s |  0.00% |  0.00% )   ( 0.000903s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.473612s |  1.59% | 99.99% )   ( 16.629874s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p15
30.5.0:         ( 0.046024s |  0.00% |  0.26% )   ( 0.045870s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046432s |  0.00% |  0.26% )   ( 0.046267s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.046133s |  0.00% |  0.26% )   ( 0.045974s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.046139s |  0.00% |  0.26% )   ( 0.045974s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.046373s |  0.00% |  0.26% )   ( 0.046201s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004269s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003806s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004820s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p15
41.5.0:         ( 0.244499s |  0.02% |  0.05% )   ( 0.006088s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003885s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003703s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031262s |  0.00% |  0.00% )   ( 0.030041s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003748s |  0.00% |  0.00% )   ( 0.004225s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004308s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p15
54.5.0:         ( 0.003531s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.903466s |  1.54% |  4.20% )   ( 16.293380s |  1.63% |  4.25% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003545s |  0.00% |  0.02% )   ( 0.004032s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.114612s |  0.10% |  6.59% )   ( 1.086139s |  0.10% |  6.66% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.911234s |  0.17% | 11.30% )   ( 1.878664s |  0.18% | 11.53% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.626083s |  0.14% |  9.61% )   ( 1.558217s |  0.15% |  9.56% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.017462s |  0.18% | 11.93% )   ( 1.915672s |  0.19% | 11.75% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.578115s |  0.14% |  9.33% )   ( 1.523294s |  0.15% |  9.34% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.993370s |  0.09% |  5.87% )   ( 0.962370s |  0.09% |  5.90% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.545223s |  0.04% |  3.22% )   ( 0.485690s |  0.04% |  2.98% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.164637s |  0.10% |  6.88% )   ( 1.045810s |  0.10% |  6.41% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450161s |  0.04% |  2.66% )   ( 0.421100s |  0.04% |  2.58% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.357682s |  0.12% |  8.03% )   ( 1.343036s |  0.13% |  8.24% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.163247s |  0.28% | 18.71% )   ( 3.121990s |  0.31% | 19.16% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.495164s |  0.04% |  2.92% )   ( 0.482567s |  0.04% |  2.96% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.482931s |  0.04% |  2.85% )   ( 0.464799s |  0.04% |  2.85% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003516s |  0.00% |  0.00% )   ( 0.003996s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009039s |  0.00% |  0.05% )   ( 0.009007s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000187s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.399865s |  1.67% |  3.36% )   ( 17.796556s |  1.78% |  3.56% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001026s |  0.00% |  0.00% )   ( 0.001050s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.398687s |  1.67% | 99.99% )   ( 17.795332s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p16
30.5.0:         ( 0.045426s |  0.00% |  0.24% )   ( 0.045275s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024255s |  0.00% |  0.13% )   ( 0.024189s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.031250s |  0.00% |  0.16% )   ( 0.031182s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.038219s |  0.00% |  0.20% )   ( 0.038107s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.045679s |  0.00% |  0.24% )   ( 0.045520s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004046s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p16
41.5.0:         ( 0.132475s |  0.01% |  0.03% )   ( 0.005182s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003615s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003170s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002946s |  0.00% |  0.00% )   ( 0.003357s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003213s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027509s |  0.00% |  0.00% )   ( 0.027886s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003516s |  0.00% |  0.00% )   ( 0.003959s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004365s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p16
54.5.0:         ( 0.003268s |  0.00% |  0.00% )   ( 0.003732s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003147s |  0.00% |  0.00% )   ( 0.003560s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.998962s |  1.64% |  4.44% )   ( 17.516851s |  1.75% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003278s |  0.00% |  0.01% )   ( 0.003700s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.169103s |  0.10% |  6.49% )   ( 1.156947s |  0.11% |  6.60% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.206286s |  0.20% | 12.25% )   ( 2.141408s |  0.21% | 12.22% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.699667s |  0.15% |  9.44% )   ( 1.676724s |  0.16% |  9.57% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.086076s |  0.19% | 11.58% )   ( 2.065664s |  0.20% | 11.79% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.624936s |  0.14% |  9.02% )   ( 1.611887s |  0.16% |  9.20% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.091873s |  0.09% |  6.06% )   ( 1.015829s |  0.10% |  5.79% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.508250s |  0.04% |  2.82% )   ( 0.482265s |  0.04% |  2.75% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.188275s |  0.10% |  6.60% )   ( 1.133823s |  0.11% |  6.47% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.463153s |  0.04% |  2.57% )   ( 0.417588s |  0.04% |  2.38% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.450876s |  0.13% |  8.06% )   ( 1.436000s |  0.14% |  8.19% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.498937s |  0.31% | 19.43% )   ( 3.453539s |  0.34% | 19.71% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.532996s |  0.04% |  2.96% )   ( 0.470127s |  0.04% |  2.68% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.475256s |  0.04% |  2.64% )   ( 0.451350s |  0.04% |  2.57% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003553s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003411s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003332s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006425s |  0.00% |  0.03% )   ( 0.006462s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 20.509552s |  1.86% |  3.75% )   ( 19.875648s |  1.99% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001018s |  0.00% |  0.00% )   ( 0.001039s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 20.508378s |  1.86% | 99.99% )   ( 19.874435s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p17
30.5.0:         ( 0.042901s |  0.00% |  0.20% )   ( 0.042758s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047352s |  0.00% |  0.23% )   ( 0.047186s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.034482s |  0.00% |  0.16% )   ( 0.034364s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.043007s |  0.00% |  0.20% )   ( 0.042857s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.034367s |  0.00% |  0.16% )   ( 0.034246s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003291s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002980s |  0.00% |  0.00% )   ( 0.003361s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003604s |  0.00% |  0.00% )   ( 0.004025s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p17
41.5.0:         ( 0.127080s |  0.01% |  0.03% )   ( 0.004472s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003161s |  0.00% |  0.00% )   ( 0.003555s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003070s |  0.00% |  0.00% )   ( 0.003467s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002764s |  0.00% |  0.00% )   ( 0.003139s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003012s |  0.00% |  0.00% )   ( 0.003384s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026756s |  0.00% |  0.00% )   ( 0.023944s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002871s |  0.00% |  0.00% )   ( 0.003239s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003356s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p17
54.5.0:         ( 0.002737s |  0.00% |  0.00% )   ( 0.003111s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002643s |  0.00% |  0.00% )   ( 0.003003s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.103132s |  1.83% |  5.15% )   ( 19.589701s |  1.96% |  5.18% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002767s |  0.00% |  0.01% )   ( 0.003136s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.502929s |  0.13% |  7.47% )   ( 1.397324s |  0.14% |  7.13% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.411923s |  0.21% | 11.99% )   ( 2.391595s |  0.23% | 12.20% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.894085s |  0.17% |  9.42% )   ( 1.834977s |  0.18% |  9.36% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.417165s |  0.22% | 12.02% )   ( 2.365823s |  0.23% | 12.07% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.833715s |  0.16% |  9.12% )   ( 1.757406s |  0.17% |  8.97% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.229926s |  0.11% |  6.11% )   ( 1.208327s |  0.12% |  6.16% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.485542s |  0.04% |  2.41% )   ( 0.461139s |  0.04% |  2.35% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.314450s |  0.11% |  6.53% )   ( 1.297761s |  0.13% |  6.62% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403186s |  0.03% |  2.00% )   ( 0.399849s |  0.04% |  2.04% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.631059s |  0.14% |  8.11% )   ( 1.566115s |  0.15% |  7.99% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.072184s |  0.37% | 20.25% )   ( 4.037444s |  0.40% | 20.61% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.458844s |  0.04% |  2.28% )   ( 0.451278s |  0.04% |  2.30% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.445357s |  0.04% |  2.21% )   ( 0.417527s |  0.04% |  2.13% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002788s |  0.00% |  0.00% )   ( 0.003176s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002566s |  0.00% |  0.00% )   ( 0.002921s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002920s |  0.00% |  0.00% )   ( 0.003317s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006297s |  0.00% |  0.03% )   ( 0.006344s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.712588s |  1.61% |  3.23% )   ( 16.823206s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001020s |  0.00% |  0.00% )   ( 0.001041s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.711415s |  1.61% | 99.99% )   ( 16.821990s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p18
30.5.0:         ( 0.041566s |  0.00% |  0.23% )   ( 0.041429s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044738s |  0.00% |  0.25% )   ( 0.044574s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.043839s |  0.00% |  0.24% )   ( 0.043678s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.040464s |  0.00% |  0.22% )   ( 0.040334s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.050057s |  0.00% |  0.28% )   ( 0.049852s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005132s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005089s |  0.00% |  0.00% )   ( 0.005667s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p18
41.5.0:         ( 0.186172s |  0.01% |  0.03% )   ( 0.006035s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004257s |  0.00% |  0.00% )   ( 0.004817s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004176s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033052s |  0.00% |  0.00% )   ( 0.033526s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004581s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005081s |  0.00% |  0.00% )   ( 0.005636s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p18
54.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004724s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.196336s |  1.56% |  3.59% )   ( 16.487494s |  1.65% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004054s |  0.00% |  0.02% )   ( 0.004604s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.214933s |  0.11% |  7.06% )   ( 1.117958s |  0.11% |  6.78% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.974775s |  0.17% | 11.48% )   ( 1.917998s |  0.19% | 11.63% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.648674s |  0.15% |  9.58% )   ( 1.617441s |  0.16% |  9.81% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.972273s |  0.17% | 11.46% )   ( 1.865046s |  0.18% | 11.31% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.532112s |  0.13% |  8.90% )   ( 1.510378s |  0.15% |  9.16% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049019s |  0.09% |  6.10% )   ( 1.031865s |  0.10% |  6.25% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.566276s |  0.05% |  3.29% )   ( 0.527403s |  0.05% |  3.19% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.108176s |  0.10% |  6.44% )   ( 1.053799s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508950s |  0.04% |  2.95% )   ( 0.476412s |  0.04% |  2.88% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.490823s |  0.13% |  8.66% )   ( 1.375181s |  0.13% |  8.34% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.056342s |  0.27% | 17.77% )   ( 2.951634s |  0.29% | 17.90% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546341s |  0.04% |  3.17% )   ( 0.528320s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523588s |  0.04% |  3.04% )   ( 0.509455s |  0.05% |  3.08% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003764s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.012298s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005234s |  0.00% |  0.02% )   ( 0.005311s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.891634s |  1.72% |  3.45% )   ( 17.980199s |  1.80% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.000983s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.890488s |  1.72% | 99.99% )   ( 17.979624s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p19
30.5.0:         ( 0.039238s |  0.00% |  0.20% )   ( 0.039103s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036189s |  0.00% |  0.19% )   ( 0.036055s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.032616s |  0.00% |  0.17% )   ( 0.032503s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.041184s |  0.00% |  0.21% )   ( 0.041021s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.048525s |  0.00% |  0.25% )   ( 0.048338s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003683s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p19
41.5.0:         ( 0.248601s |  0.02% |  0.05% )   ( 0.005797s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031179s |  0.00% |  0.00% )   ( 0.028689s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p19
54.5.0:         ( 0.003353s |  0.00% |  0.00% )   ( 0.003777s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003268s |  0.00% |  0.00% )   ( 0.003734s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.350725s |  1.67% |  4.22% )   ( 17.679828s |  1.77% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003264s |  0.00% |  0.01% )   ( 0.003721s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.365210s |  0.12% |  7.43% )   ( 1.241468s |  0.12% |  7.02% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.353849s |  0.21% | 12.82% )   ( 2.272790s |  0.22% | 12.85% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.820924s |  0.16% |  9.92% )   ( 1.750220s |  0.17% |  9.89% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.297743s |  0.20% | 12.52% )   ( 2.218669s |  0.22% | 12.54% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.770152s |  0.16% |  9.64% )   ( 1.727590s |  0.17% |  9.77% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.143363s |  0.10% |  6.23% )   ( 1.111477s |  0.11% |  6.28% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.522793s |  0.04% |  2.84% )   ( 0.507312s |  0.05% |  2.86% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.201542s |  0.10% |  6.54% )   ( 1.158318s |  0.11% |  6.55% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.476878s |  0.04% |  2.59% )   ( 0.436458s |  0.04% |  2.46% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.569704s |  0.14% |  8.55% )   ( 1.511568s |  0.15% |  8.54% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.876772s |  0.26% | 15.67% )   ( 2.808289s |  0.28% | 15.88% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.495333s |  0.04% |  2.69% )   ( 0.478113s |  0.04% |  2.70% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.453198s |  0.04% |  2.46% )   ( 0.453835s |  0.04% |  2.56% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003427s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003163s |  0.00% |  0.00% )   ( 0.003583s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003456s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008701s |  0.00% |  0.04% )   ( 0.008779s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 19.447086s |  1.77% |  3.55% )   ( 18.682404s |  1.87% |  3.74% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001053s |  0.00% |  0.00% )   ( 0.001076s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 19.445875s |  1.77% | 99.99% )   ( 18.681145s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p20
30.5.0:         ( 0.053022s |  0.00% |  0.27% )   ( 0.052840s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046079s |  0.00% |  0.23% )   ( 0.045912s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.047138s |  0.00% |  0.24% )   ( 0.046618s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.046560s |  0.00% |  0.23% )   ( 0.046386s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.045279s |  0.00% |  0.23% )   ( 0.045116s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003164s |  0.00% |  0.00% )   ( 0.003601s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p20
41.5.0:         ( 0.128273s |  0.01% |  0.02% )   ( 0.004813s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003513s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003738s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003091s |  0.00% |  0.00% )   ( 0.003494s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028343s |  0.00% |  0.00% )   ( 0.025703s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006747s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004283s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p20
54.5.0:         ( 0.003234s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.993964s |  1.73% |  4.65% )   ( 18.353403s |  1.83% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003190s |  0.00% |  0.01% )   ( 0.003649s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.383903s |  0.12% |  7.28% )   ( 1.302081s |  0.13% |  7.09% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.372771s |  0.21% | 12.49% )   ( 2.250675s |  0.22% | 12.26% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.761437s |  0.16% |  9.27% )   ( 1.747298s |  0.17% |  9.52% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.258879s |  0.20% | 11.89% )   ( 2.165647s |  0.21% | 11.79% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.713112s |  0.15% |  9.01% )   ( 1.676885s |  0.16% |  9.13% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.153712s |  0.10% |  6.07% )   ( 1.126429s |  0.11% |  6.13% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.515990s |  0.04% |  2.71% )   ( 0.474933s |  0.04% |  2.58% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.222286s |  0.11% |  6.43% )   ( 1.200046s |  0.12% |  6.53% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.414241s |  0.03% |  2.18% )   ( 0.400233s |  0.04% |  2.18% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.547740s |  0.14% |  8.14% )   ( 1.480241s |  0.14% |  8.06% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.727663s |  0.33% | 19.62% )   ( 3.639307s |  0.36% | 19.82% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.457668s |  0.04% |  2.40% )   ( 0.458697s |  0.04% |  2.49% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.461372s |  0.04% |  2.42% )   ( 0.427282s |  0.04% |  2.32% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003073s |  0.00% |  0.00% )   ( 0.003490s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003009s |  0.00% |  0.00% )   ( 0.003419s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005246s |  0.00% |  0.02% )   ( 0.005317s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 19.995252s |  1.82% |  3.65% )   ( 19.319471s |  1.93% |  3.86% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001039s |  0.00% |  0.00% )   ( 0.001063s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 19.994056s |  1.82% | 99.99% )   ( 19.318229s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p21
30.5.0:         ( 0.046602s |  0.00% |  0.23% )   ( 0.046420s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045582s |  0.00% |  0.22% )   ( 0.045419s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.045648s |  0.00% |  0.22% )   ( 0.045422s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.045663s |  0.00% |  0.22% )   ( 0.045506s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.045663s |  0.00% |  0.22% )   ( 0.045503s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003242s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002946s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p21
41.5.0:         ( 0.184015s |  0.01% |  0.04% )   ( 0.004688s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003211s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003064s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003007s |  0.00% |  0.00% )   ( 0.003392s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003465s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023876s |  0.00% |  0.00% )   ( 0.024146s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003499s |  0.00% |  0.00% )   ( 0.003908s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p21
54.5.0:         ( 0.002856s |  0.00% |  0.00% )   ( 0.003244s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002734s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.506830s |  1.77% |  5.13% )   ( 19.005935s |  1.90% |  5.17% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002929s |  0.00% |  0.01% )   ( 0.003359s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.380124s |  0.12% |  7.07% )   ( 1.349355s |  0.13% |  7.09% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.571283s |  0.23% | 13.18% )   ( 2.543667s |  0.25% | 13.38% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.016026s |  0.18% | 10.33% )   ( 1.972872s |  0.19% | 10.38% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.598865s |  0.23% | 13.32% )   ( 2.551833s |  0.25% | 13.42% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.980200s |  0.18% | 10.15% )   ( 1.926818s |  0.19% | 10.13% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.213847s |  0.11% |  6.22% )   ( 1.190430s |  0.11% |  6.26% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.524749s |  0.04% |  2.69% )   ( 0.464065s |  0.04% |  2.44% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.355387s |  0.12% |  6.94% )   ( 1.303107s |  0.13% |  6.85% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.406265s |  0.03% |  2.08% )   ( 0.382663s |  0.03% |  2.01% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.368475s |  0.12% |  7.01% )   ( 1.327778s |  0.13% |  6.98% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.222606s |  0.29% | 16.52% )   ( 3.159935s |  0.31% | 16.62% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.442031s |  0.04% |  2.26% )   ( 0.418345s |  0.04% |  2.20% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.424043s |  0.03% |  2.17% )   ( 0.411708s |  0.04% |  2.16% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002885s |  0.00% |  0.00% )   ( 0.003287s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002630s |  0.00% |  0.00% )   ( 0.002977s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002886s |  0.00% |  0.00% )   ( 0.003261s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005177s |  0.00% |  0.02% )   ( 0.005266s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 20.264395s |  1.84% |  3.70% )   ( 19.457162s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001038s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 20.263205s |  1.84% | 99.99% )   ( 19.455926s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p22
30.5.0:         ( 0.045561s |  0.00% |  0.22% )   ( 0.045387s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045423s |  0.00% |  0.22% )   ( 0.045258s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.045728s |  0.00% |  0.22% )   ( 0.045563s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.045602s |  0.00% |  0.22% )   ( 0.045447s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.045903s |  0.00% |  0.22% )   ( 0.045604s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003539s |  0.00% |  0.00% )   ( 0.004007s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p22
41.5.0:         ( 0.115061s |  0.01% |  0.02% )   ( 0.004801s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003122s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003374s |  0.00% |  0.00% )   ( 0.003800s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028666s |  0.00% |  0.00% )   ( 0.026801s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003453s |  0.00% |  0.00% )   ( 0.003891s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004052s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p22
54.5.0:         ( 0.006223s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003071s |  0.00% |  0.00% )   ( 0.003488s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.833933s |  1.80% |  4.44% )   ( 19.136314s |  1.91% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003142s |  0.00% |  0.01% )   ( 0.003566s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.410641s |  0.12% |  7.11% )   ( 1.373236s |  0.13% |  7.17% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.348428s |  0.21% | 11.84% )   ( 2.296972s |  0.23% | 12.00% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.842232s |  0.16% |  9.28% )   ( 1.800919s |  0.18% |  9.41% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.286917s |  0.20% | 11.53% )   ( 2.239322s |  0.22% | 11.70% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.802539s |  0.16% |  9.08% )   ( 1.734065s |  0.17% |  9.06% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.232961s |  0.11% |  6.21% )   ( 1.191026s |  0.11% |  6.22% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565543s |  0.05% |  2.85% )   ( 0.503415s |  0.05% |  2.63% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.293677s |  0.11% |  6.52% )   ( 1.269868s |  0.12% |  6.63% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.476648s |  0.04% |  2.40% )   ( 0.425388s |  0.04% |  2.22% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.584165s |  0.14% |  7.98% )   ( 1.543113s |  0.15% |  8.06% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.929627s |  0.35% | 19.81% )   ( 3.793288s |  0.38% | 19.82% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.533637s |  0.04% |  2.69% )   ( 0.497371s |  0.04% |  2.59% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523776s |  0.04% |  2.64% )   ( 0.464765s |  0.04% |  2.42% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003205s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002861s |  0.00% |  0.00% )   ( 0.003261s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003315s |  0.00% |  0.00% )   ( 0.003730s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005020s |  0.00% |  0.02% )   ( 0.005101s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.827615s |  1.62% |  3.26% )   ( 17.459016s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001074s |  0.00% |  0.00% )   ( 0.001101s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.826386s |  1.62% | 99.99% )   ( 17.457738s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p23
30.5.0:         ( 0.045997s |  0.00% |  0.25% )   ( 0.045686s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050353s |  0.00% |  0.28% )   ( 0.050053s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.049940s |  0.00% |  0.28% )   ( 0.049293s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.045877s |  0.00% |  0.25% )   ( 0.045547s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.046270s |  0.00% |  0.25% )   ( 0.045377s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003000s |  0.00% |  0.00% )   ( 0.003375s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002659s |  0.00% |  0.00% )   ( 0.003011s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003157s |  0.00% |  0.00% )   ( 0.003526s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p23
41.5.0:         ( 0.081861s |  0.00% |  0.02% )   ( 0.003772s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002757s |  0.00% |  0.00% )   ( 0.003136s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.002521s |  0.00% |  0.00% )   ( 0.002851s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002414s |  0.00% |  0.00% )   ( 0.002754s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002565s |  0.00% |  0.00% )   ( 0.002902s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018713s |  0.00% |  0.00% )   ( 0.019000s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002642s |  0.00% |  0.00% )   ( 0.002992s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002994s |  0.00% |  0.00% )   ( 0.003352s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p23
54.5.0:         ( 0.002446s |  0.00% |  0.00% )   ( 0.002801s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002836s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.443751s |  1.58% |  5.75% )   ( 17.150226s |  1.71% |  5.77% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002429s |  0.00% |  0.01% )   ( 0.002766s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.136230s |  0.10% |  6.51% )   ( 1.125825s |  0.11% |  6.56% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.140867s |  0.19% | 12.27% )   ( 2.115015s |  0.21% | 12.33% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.671813s |  0.15% |  9.58% )   ( 1.654437s |  0.16% |  9.64% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.165626s |  0.19% | 12.41% )   ( 2.120593s |  0.21% | 12.36% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.601885s |  0.14% |  9.18% )   ( 1.597256s |  0.16% |  9.31% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016503s |  0.09% |  5.82% )   ( 1.008628s |  0.10% |  5.88% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.438478s |  0.03% |  2.51% )   ( 0.403353s |  0.04% |  2.35% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106191s |  0.10% |  6.34% )   ( 1.076139s |  0.10% |  6.27% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.348184s |  0.03% |  1.99% )   ( 0.345339s |  0.03% |  2.01% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410919s |  0.12% |  8.08% )   ( 1.394562s |  0.13% |  8.13% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.593827s |  0.32% | 20.60% )   ( 3.559672s |  0.35% | 20.75% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.419457s |  0.03% |  2.40% )   ( 0.391468s |  0.03% |  2.28% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.391342s |  0.03% |  2.24% )   ( 0.355173s |  0.03% |  2.07% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002418s |  0.00% |  0.00% )   ( 0.002740s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002283s |  0.00% |  0.00% )   ( 0.002598s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002527s |  0.00% |  0.00% )   ( 0.002846s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005380s |  0.00% |  0.03% )   ( 0.005482s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.457656s |  1.59% |  3.19% )   ( 16.796028s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001172s |  0.00% |  0.00% )   ( 0.000490s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.456294s |  1.59% | 99.99% )   ( 16.795324s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p24
30.5.0:         ( 0.045701s |  0.00% |  0.26% )   ( 0.045522s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045419s |  0.00% |  0.26% )   ( 0.045252s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.045282s |  0.00% |  0.25% )   ( 0.045120s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.047623s |  0.00% |  0.27% )   ( 0.047444s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.048609s |  0.00% |  0.27% )   ( 0.048428s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004527s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p24
41.5.0:         ( 0.190164s |  0.01% |  0.04% )   ( 0.006089s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004310s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003532s |  0.00% |  0.00% )   ( 0.004022s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033187s |  0.00% |  0.00% )   ( 0.030699s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005176s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004427s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p24
54.5.0:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003601s |  0.00% |  0.00% )   ( 0.004104s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.936253s |  1.54% |  4.04% )   ( 16.457063s |  1.64% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003491s |  0.00% |  0.02% )   ( 0.003963s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.153319s |  0.10% |  6.80% )   ( 1.113597s |  0.11% |  6.76% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.968067s |  0.17% | 11.62% )   ( 1.920004s |  0.19% | 11.66% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.603887s |  0.14% |  9.47% )   ( 1.561724s |  0.15% |  9.48% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.942152s |  0.17% | 11.46% )   ( 1.901237s |  0.19% | 11.55% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616117s |  0.14% |  9.54% )   ( 1.550654s |  0.15% |  9.42% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035502s |  0.09% |  6.11% )   ( 1.003914s |  0.10% |  6.10% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.505900s |  0.04% |  2.98% )   ( 0.502581s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.092113s |  0.09% |  6.44% )   ( 1.055491s |  0.10% |  6.41% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.479629s |  0.04% |  2.83% )   ( 0.443685s |  0.04% |  2.69% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405455s |  0.12% |  8.29% )   ( 1.381754s |  0.13% |  8.39% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.093944s |  0.28% | 18.26% )   ( 3.053272s |  0.30% | 18.55% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.551752s |  0.05% |  3.25% )   ( 0.492732s |  0.04% |  2.99% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.484925s |  0.04% |  2.86% )   ( 0.472455s |  0.04% |  2.87% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003728s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003698s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.007137s |  0.00% |  0.04% )   ( 0.007190s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.038961s |  1.55% |  3.11% )   ( 16.485418s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001177s |  0.00% |  0.00% )   ( 0.001204s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.037611s |  1.55% | 99.99% )   ( 16.484019s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p25
30.5.0:         ( 0.050200s |  0.00% |  0.29% )   ( 0.047023s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049959s |  0.00% |  0.29% )   ( 0.049758s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.047932s |  0.00% |  0.28% )   ( 0.047764s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.054382s |  0.00% |  0.31% )   ( 0.054190s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.048534s |  0.00% |  0.28% )   ( 0.048354s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005226s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004191s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004973s |  0.00% |  0.00% )   ( 0.005540s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p25
41.5.0:         ( 0.159851s |  0.01% |  0.03% )   ( 0.006583s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004949s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004133s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004770s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035128s |  0.00% |  0.00% )   ( 0.035554s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008617s |  0.00% |  0.00% )   ( 0.005155s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005073s |  0.00% |  0.00% )   ( 0.005634s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p25
54.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003891s |  0.00% |  0.00% )   ( 0.004399s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.518688s |  1.50% |  3.59% )   ( 16.118117s |  1.61% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004195s |  0.00% |  0.02% )   ( 0.004762s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.125116s |  0.10% |  6.81% )   ( 1.081255s |  0.10% |  6.70% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.876949s |  0.17% | 11.36% )   ( 1.828494s |  0.18% | 11.34% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.600472s |  0.14% |  9.68% )   ( 1.551283s |  0.15% |  9.62% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.831368s |  0.16% | 11.08% )   ( 1.786837s |  0.17% | 11.08% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.519794s |  0.13% |  9.20% )   ( 1.464943s |  0.14% |  9.08% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.991446s |  0.09% |  6.00% )   ( 0.978326s |  0.09% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539396s |  0.04% |  3.26% )   ( 0.535010s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.069978s |  0.09% |  6.47% )   ( 1.031585s |  0.10% |  6.40% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503880s |  0.04% |  3.05% )   ( 0.479866s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383760s |  0.12% |  8.37% )   ( 1.357845s |  0.13% |  8.42% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.997837s |  0.27% | 18.14% )   ( 2.961311s |  0.29% | 18.37% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.540569s |  0.04% |  3.27% )   ( 0.536711s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533928s |  0.04% |  3.23% )   ( 0.519889s |  0.05% |  3.22% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004525s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003853s |  0.00% |  0.00% )   ( 0.004374s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004770s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.007175s |  0.00% |  0.04% )   ( 0.007260s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000173s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.595685s |  1.60% |  3.21% )   ( 16.658351s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001104s |  0.00% |  0.00% )   ( 0.001126s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.594404s |  1.60% | 99.99% )   ( 16.657031s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p26
30.5.0:         ( 0.059046s |  0.00% |  0.33% )   ( 0.048864s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045824s |  0.00% |  0.26% )   ( 0.045670s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.045811s |  0.00% |  0.26% )   ( 0.045655s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.047818s |  0.00% |  0.27% )   ( 0.047632s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.049557s |  0.00% |  0.28% )   ( 0.049387s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003037s |  0.00% |  0.00% )   ( 0.003437s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p26
41.5.0:         ( 0.180662s |  0.01% |  0.04% )   ( 0.004938s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003895s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.003335s |  0.00% |  0.00% )   ( 0.003732s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.002952s |  0.00% |  0.00% )   ( 0.003356s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003194s |  0.00% |  0.00% )   ( 0.003600s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023498s |  0.00% |  0.00% )   ( 0.023820s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003739s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p26
54.5.0:         ( 0.002860s |  0.00% |  0.00% )   ( 0.003261s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002842s |  0.00% |  0.00% )   ( 0.003227s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.085753s |  1.55% |  4.85% )   ( 16.329884s |  1.63% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002951s |  0.00% |  0.01% )   ( 0.003365s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.137471s |  0.10% |  6.65% )   ( 1.091814s |  0.10% |  6.68% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.121299s |  0.19% | 12.41% )   ( 1.978163s |  0.19% | 12.11% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.640281s |  0.14% |  9.60% )   ( 1.551036s |  0.15% |  9.49% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.980227s |  0.18% | 11.58% )   ( 1.964943s |  0.19% | 12.03% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.549870s |  0.14% |  9.07% )   ( 1.527601s |  0.15% |  9.35% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.033446s |  0.09% |  6.04% )   ( 0.959209s |  0.09% |  5.87% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.477185s |  0.04% |  2.79% )   ( 0.436806s |  0.04% |  2.67% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.077014s |  0.09% |  6.30% )   ( 1.015686s |  0.10% |  6.21% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.391488s |  0.03% |  2.29% )   ( 0.372725s |  0.03% |  2.28% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389363s |  0.12% |  8.13% )   ( 1.337769s |  0.13% |  8.19% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.310348s |  0.30% | 19.37% )   ( 3.261402s |  0.32% | 19.97% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.505768s |  0.04% |  2.96% )   ( 0.427551s |  0.04% |  2.61% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.469042s |  0.04% |  2.74% )   ( 0.401814s |  0.04% |  2.46% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002991s |  0.00% |  0.00% )   ( 0.003387s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002850s |  0.00% |  0.00% )   ( 0.003249s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003011s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008657s |  0.00% |  0.04% )   ( 0.008746s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.327527s |  1.57% |  3.16% )   ( 16.719275s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001274s |  0.00% |  0.00% )   ( 0.001306s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.326061s |  1.57% | 99.99% )   ( 16.717748s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eunYy1"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p27
30.5.0:         ( 0.046938s |  0.00% |  0.27% )   ( 0.046701s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eunYy1"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eunYy1"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046806s |  0.00% |  0.27% )   ( 0.046636s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3182454 ${BASHPID}' INT
33.5.0:         ( 0.051007s |  0.00% |  0.29% )   ( 0.050814s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3182454 ${BASHPID}' TERM
34.5.0:         ( 0.048342s |  0.00% |  0.27% )   ( 0.048160s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3182454 ${BASHPID}' HUP
35.5.0:         ( 0.055505s |  0.00% |  0.32% )   ( 0.055284s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004821s |  0.00% |  0.00% )   ( 0.005407s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004757s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eunYy1"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005116s |  0.00% |  0.00% )   ( 0.005688s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p27
41.5.0:         ( 0.131237s |  0.01% |  0.02% )   ( 0.006077s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.quit ]]
46.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004583s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eunYy1"/.done ]]
46.5.1:         ( 0.003860s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004097s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033182s |  0.00% |  0.00% )   ( 0.033524s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007296s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004744s |  0.00% |  0.00% )   ( 0.005317s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eunYy1"/.wait/p27
54.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004317s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.845255s |  1.53% |  3.60% )   ( 16.357931s |  1.63% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003796s |  0.00% |  0.02% )   ( 0.004335s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.234787s |  0.11% |  7.33% )   ( 1.114642s |  0.11% |  6.81% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.953588s |  0.17% | 11.59% )   ( 1.922018s |  0.19% | 11.74% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.624914s |  0.14% |  9.64% )   ( 1.598162s |  0.16% |  9.76% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.884685s |  0.17% | 11.18% )   ( 1.857035s |  0.18% | 11.35% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.601826s |  0.14% |  9.50% )   ( 1.520253s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011568s |  0.09% |  6.00% )   ( 0.987417s |  0.09% |  6.03% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.550114s |  0.05% |  3.26% )   ( 0.523505s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.070412s |  0.09% |  6.35% )   ( 1.028220s |  0.10% |  6.28% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473631s |  0.04% |  2.81% )   ( 0.461153s |  0.04% |  2.81% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.367838s |  0.12% |  8.12% )   ( 1.341958s |  0.13% |  8.20% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.014902s |  0.27% | 17.89% )   ( 2.965339s |  0.29% | 18.12% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.523783s |  0.04% |  3.10% )   ( 0.522597s |  0.05% |  3.19% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.529411s |  0.04% |  3.14% )   ( 0.511297s |  0.05% |  3.12% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003628s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004952s |  0.00% |  0.02% )   ( 0.005025s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001421s |  0.00% |  0.00% )   ( 0.001434s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.332062s |  2.21% |  4.44% )   ( 0.001496s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
25.3.0:         ( 0.050373s |  0.00% |  0.00% )   ( 0.050679s |  0.00% |  0.01% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000339s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.003415s |  0.00% |  0.00% )   ( 0.002513s |  0.00% |  0.00% )    	(1x)	└─ └─  wait

WALL CLOCK TIME: 51.078430s
TOTAL RUN TIME:  1097.248698s
TOTAL CPU TIME:  998.055116s

