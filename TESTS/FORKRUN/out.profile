LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 564.929067s | 50.12% )            ( 461.831836s | 50.00% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000720s |  0.00% |  0.00% )   ( 0.000365s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 564.928347s | 50.12% | 99.99% )   ( 461.831471s | 50.00% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041858s |  0.00% |  0.00% )   ( 0.041747s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000841s |  0.00% |  0.00% )   ( 0.000587s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.004120s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.004120s |  0.00% |100.00% )   ( 0.004120s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.003030s |  0.00% |  0.00% )   ( 0.003106s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.027712s |  0.00% |  0.00% )   ( 0.000588s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 564.843275s | 50.11% | 99.98% )   ( 461.776562s | 49.99% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000730s |  0.00% |  0.00% )   ( 0.000833s |  0.00% |  0.00% )    	(5x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000730s |  0.00% |100.00% )   ( 0.000833s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
238.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000207s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003202s |  0.00% |  0.00% )   ( 0.003255s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000127s |  0.00% |100.00% )   ( 0.000136s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000882s |  0.00% |  0.00% )   ( 0.001022s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  8.04% )   ( 0.000084s |  0.00% |  8.21% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000069s |  0.00% |  7.82% )   ( 0.000081s |  0.00% |  7.92% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000071s |  0.00% |  8.04% )   ( 0.000083s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  8.04% )   ( 0.000083s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000068s |  0.00% |  7.70% )   ( 0.000080s |  0.00% |  7.82% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000074s |  0.00% |  8.39% )   ( 0.000083s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.59% )   ( 0.000079s |  0.00% |  7.72% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000112s |  0.00% | 12.69% )   ( 0.000125s |  0.00% | 12.23% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000067s |  0.00% |  7.59% )   ( 0.000079s |  0.00% |  7.72% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.36% )   ( 0.000077s |  0.00% |  7.53% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000069s |  0.00% |  7.82% )   ( 0.000081s |  0.00% |  7.92% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000078s |  0.00% |  8.84% )   ( 0.000087s |  0.00% |  8.51% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.010413s |  0.00% |  0.00% )   ( 0.010518s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.003102s |  0.00% |  0.00% )   ( 0.003228s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000406s |  0.00% | 13.08% )   ( 0.000437s |  0.00% | 13.53% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002696s |  0.00% | 86.91% )   ( 0.002791s |  0.00% | 86.46% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.004446s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000141s |  0.00% |100.00% )   ( 0.000146s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001490s |  0.00% |  0.00% )   ( 0.001602s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000629s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.143621s |  0.01% |  0.02% )   ( 0.143361s |  0.01% |  0.03% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000090s |  0.00% |  0.06% )   ( 0.000102s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021702s |  0.00% | 15.11% )   ( 0.021630s |  0.00% | 15.08% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.027198s |  0.00% | 18.93% )   ( 0.027132s |  0.00% | 18.92% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.026029s |  0.00% | 18.12% )   ( 0.025970s |  0.00% | 18.11% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.024182s |  0.00% | 16.83% )   ( 0.024133s |  0.00% | 16.83% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.025788s |  0.00% | 17.95% )   ( 0.025737s |  0.00% | 17.95% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000069s |  0.00% |  0.04% )   ( 0.000081s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018243s |  0.00% | 12.70% )   ( 0.018209s |  0.00% | 12.70% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000120s |  0.00% |  0.08% )   ( 0.000133s |  0.00% |  0.09% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000094s |  0.00% |  0.06% )   ( 0.000111s |  0.00% |  0.07% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000106s |  0.00% |  0.07% )   ( 0.000123s |  0.00% |  0.08% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000443s |  0.00% |  0.00% )   ( 0.000474s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.399989s |  0.39% |  0.77% )   ( 2.077470s |  0.22% |  0.44% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024100s |  0.00% |  0.54% )   ( 0.024047s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.024148s |  0.00% |  0.54% )   ( 0.024099s |  0.00% |  1.16% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.024199s |  0.00% |  0.54% )   ( 0.024145s |  0.00% |  1.16% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.024094s |  0.00% |  0.54% )   ( 0.024047s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.024033s |  0.00% |  0.54% )   ( 0.023983s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.105560s |  0.00% |  0.00% )   ( 0.118808s |  0.01% |  0.00% )    	(676x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.597797s |  0.23% |  0.08% )   ( 0.134959s |  0.01% |  0.00% )    	(675x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001638s |  0.00% |  0.00% )   ( 0.001832s |  0.00% |  0.00% )    	(9x)	│  │  │  │   continue
521.4.0:        ( 0.107869s |  0.00% |  0.00% )   ( 0.114751s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.106361s |  0.00% |  0.00% )   ( 0.117110s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.104231s |  0.00% |  0.00% )   ( 0.115814s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.108798s |  0.00% |  0.00% )   ( 0.117554s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.105796s |  0.00% |  0.00% )   ( 0.118827s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.102561s |  0.00% |  0.00% )   ( 0.113829s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.100799s |  0.00% |  0.00% )   ( 0.114028s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.100730s |  0.00% |  0.00% )   ( 0.113901s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.009079s |  0.00% |  0.20% )   ( 0.009710s |  0.00% |  0.46% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.003910s |  0.00% |  0.08% )   ( 0.004434s |  0.00% |  0.21% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.003910s |  0.00% |100.00% )   ( 0.004434s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.100585s |  0.00% |  0.00% )   ( 0.113437s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.104294s |  0.00% |  0.00% )   ( 0.111967s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.097362s |  0.00% |  0.00% )   ( 0.110183s |  0.01% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.105813s |  0.00% |  0.00% )   ( 0.119199s |  0.01% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.100041s |  0.00% |  0.00% )   ( 0.112937s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.100240s |  0.00% |  0.00% )   ( 0.113035s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.003312s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.003381s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.076170s |  0.00% |  0.08% )   ( 0.047060s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.004604s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.01% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.004349s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.01% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.004431s |  0.00% |  0.00% )   ( 0.004909s |  0.00% |  0.01% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000210s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000265s |  0.00% |  0.00% )   ( 0.000287s |  0.00% |  0.01% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000227s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.016295s |  0.00% |  0.37% )   ( 0.007628s |  0.00% |  0.36% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/pAuto
598.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.074661s |  0.00% |  0.01% )   ( 0.074903s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006200s |  0.00% |  0.00% )   ( 0.007119s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000300s |  0.00% |  4.83% )   ( 0.000335s |  0.00% |  4.70% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000206s |  0.00% |  3.32% )   ( 0.000229s |  0.00% |  3.21% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000089s |  0.00% |  1.43% )   ( 0.000099s |  0.00% |  1.39% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000220s |  0.00% |  3.54% )   ( 0.000229s |  0.00% |  3.21% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000085s |  0.00% |  1.37% )   ( 0.000097s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.12% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000070s |  0.00% |  1.12% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000070s |  0.00% |  1.12% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000087s |  0.00% |  1.22% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000086s |  0.00% |  1.20% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000075s |  0.00% |  1.20% )   ( 0.000086s |  0.00% |  1.20% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000076s |  0.00% |  1.22% )   ( 0.000088s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000075s |  0.00% |  1.20% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000120s |  0.00% |  1.93% )   ( 0.000132s |  0.00% |  1.85% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000075s |  0.00% |  1.20% )   ( 0.000087s |  0.00% |  1.22% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.40% )   ( 0.000099s |  0.00% |  1.39% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000079s |  0.00% |  1.27% )   ( 0.000091s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000080s |  0.00% |  1.29% )   ( 0.000092s |  0.00% |  1.29% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.25% )   ( 0.000090s |  0.00% |  1.26% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000081s |  0.00% |  1.30% )   ( 0.000094s |  0.00% |  1.32% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000078s |  0.00% |  1.25% )   ( 0.000089s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000076s |  0.00% |  1.22% )   ( 0.000088s |  0.00% |  1.23% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000084s |  0.00% |  1.35% )   ( 0.000096s |  0.00% |  1.34% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000085s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000089s |  0.00% |  1.43% )   ( 0.000101s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000085s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000090s |  0.00% |  1.45% )   ( 0.000102s |  0.00% |  1.43% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000087s |  0.00% |  1.40% )   ( 0.000100s |  0.00% |  1.40% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000085s |  0.00% |  1.19% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000101s |  0.00% |  1.62% )   ( 0.000113s |  0.00% |  1.58% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000315s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.024551s |  0.00% |  0.00% )   ( 0.024495s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.024568s |  0.00% |  0.00% )   ( 0.024517s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.024512s |  0.00% |  0.00% )   ( 0.179074s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.024114s |  0.00% |  0.00% )   ( 0.024055s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003100s |  0.00% |  0.00% )   ( 0.003572s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002974s |  0.00% |  0.00% )   ( 0.003422s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.922963s |  1.67% |  3.35% )   ( 16.101317s |  1.74% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000678s |  0.00% |  0.00% )   ( 0.000694s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.922190s |  1.67% | 99.99% )   ( 16.100516s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000248s |  0.00% |  0.00% )   ( 0.000277s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p0
30.5.0:         ( 0.025838s |  0.00% |  0.13% )   ( 0.025769s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024204s |  0.00% |  0.12% )   ( 0.024033s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024147s |  0.00% |  0.12% )   ( 0.024084s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024208s |  0.00% |  0.12% )   ( 0.024029s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024396s |  0.00% |  0.12% )   ( 0.024217s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005131s |  0.00% |  0.00% )   ( 0.005698s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004504s |  0.00% |  0.00% )   ( 0.005065s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000245s |  0.00% |  0.00% )   ( 0.000277s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005648s |  0.00% |  0.00% )   ( 0.006229s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p0
41.5.0:         ( 0.604815s |  0.05% |  0.11% )   ( 0.007223s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004973s |  0.00% |  0.00% )   ( 0.005551s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.008210s |  0.00% |  0.00% )   ( 0.005719s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004652s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033363s |  0.00% |  0.00% )   ( 0.032829s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004094s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008550s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005674s |  0.00% |  0.00% )   ( 0.006253s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p0
66.5.0:         ( 0.004881s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004573s |  0.00% |  0.00% )   ( 0.005128s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.068842s |  1.60% |  3.53% )   ( 15.844332s |  1.71% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004548s |  0.00% |  0.02% )   ( 0.005044s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.237254s |  0.10% |  6.84% )   ( 1.045861s |  0.11% |  6.60% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.051477s |  0.18% | 11.35% )   ( 1.793916s |  0.19% | 11.32% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.746017s |  0.15% |  9.66% )   ( 1.514761s |  0.16% |  9.56% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.967828s |  0.17% | 10.89% )   ( 1.784940s |  0.19% | 11.26% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.605896s |  0.14% |  8.88% )   ( 1.457666s |  0.15% |  9.19% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.154510s |  0.10% |  6.38% )   ( 0.969006s |  0.10% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623404s |  0.05% |  3.45% )   ( 0.525334s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.169863s |  0.10% |  6.47% )   ( 1.007876s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549254s |  0.04% |  3.03% )   ( 0.469843s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.639811s |  0.14% |  9.07% )   ( 1.352524s |  0.14% |  8.53% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.139677s |  0.27% | 17.37% )   ( 2.874780s |  0.31% | 18.14% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.577432s |  0.05% |  3.19% )   ( 0.525810s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.601871s |  0.05% |  3.33% )   ( 0.516971s |  0.05% |  3.26% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004602s |  0.00% |  0.00% )   ( 0.005035s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004412s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007177s |  0.00% |  0.03% )   ( 0.007238s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002882s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 18.991796s |  1.68% |  3.36% )   ( 16.054388s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000692s |  0.00% |  0.00% )   ( 0.000707s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 18.991009s |  1.68% | 99.99% )   ( 16.053574s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p1
30.5.0:         ( 0.024498s |  0.00% |  0.12% )   ( 0.024129s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024089s |  0.00% |  0.12% )   ( 0.023998s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024426s |  0.00% |  0.12% )   ( 0.024069s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024349s |  0.00% |  0.12% )   ( 0.024033s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024153s |  0.00% |  0.12% )   ( 0.024011s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004907s |  0.00% |  0.00% )   ( 0.005454s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004921s |  0.00% |  0.00% )   ( 0.005488s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005874s |  0.00% |  0.00% )   ( 0.006328s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p1
41.5.0:         ( 0.623332s |  0.05% |  0.12% )   ( 0.007458s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005177s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005007s |  0.00% |  0.00% )   ( 0.005556s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004661s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004939s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037977s |  0.00% |  0.00% )   ( 0.032466s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004509s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007662s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005565s |  0.00% |  0.00% )   ( 0.006123s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p1
66.5.0:         ( 0.004954s |  0.00% |  0.00% )   ( 0.005483s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004479s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000233s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.117645s |  1.60% |  3.66% )   ( 15.800397s |  1.71% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004477s |  0.00% |  0.02% )   ( 0.005032s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.448483s |  0.12% |  7.99% )   ( 1.067159s |  0.11% |  6.75% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.025099s |  0.17% | 11.17% )   ( 1.790900s |  0.19% | 11.33% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.655504s |  0.14% |  9.13% )   ( 1.503275s |  0.16% |  9.51% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.020291s |  0.17% | 11.15% )   ( 1.791430s |  0.19% | 11.33% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.653241s |  0.14% |  9.12% )   ( 1.463847s |  0.15% |  9.26% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.122856s |  0.09% |  6.19% )   ( 0.969763s |  0.10% |  6.13% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.607074s |  0.05% |  3.35% )   ( 0.506624s |  0.05% |  3.20% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.223643s |  0.10% |  6.75% )   ( 0.994784s |  0.10% |  6.29% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522065s |  0.04% |  2.88% )   ( 0.452813s |  0.04% |  2.86% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.548972s |  0.13% |  8.54% )   ( 1.342416s |  0.14% |  8.49% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.138543s |  0.27% | 17.32% )   ( 2.900965s |  0.31% | 18.36% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.568972s |  0.05% |  3.14% )   ( 0.510455s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.578425s |  0.05% |  3.19% )   ( 0.500934s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005064s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007619s |  0.00% |  0.00% )   ( 0.005106s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005508s |  0.00% |  0.02% )   ( 0.005586s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 22.730033s |  2.01% |  4.02% )   ( 21.118773s |  2.28% |  4.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000688s |  0.00% |  0.00% )   ( 0.000707s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 22.729254s |  2.01% | 99.99% )   ( 21.117961s |  2.28% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p2
30.5.0:         ( 0.025913s |  0.00% |  0.11% )   ( 0.025859s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024019s |  0.00% |  0.10% )   ( 0.023969s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024028s |  0.00% |  0.10% )   ( 0.023973s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024060s |  0.00% |  0.10% )   ( 0.024015s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024117s |  0.00% |  0.10% )   ( 0.024066s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003365s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.003101s |  0.00% |  0.00% )   ( 0.003470s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p2
41.5.0:         ( 0.615169s |  0.05% |  0.14% )   ( 0.005027s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003198s |  0.00% |  0.00% )   ( 0.003506s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004226s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.002944s |  0.00% |  0.00% )   ( 0.003294s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003117s |  0.00% |  0.00% )   ( 0.003385s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025069s |  0.00% |  0.00% )   ( 0.022202s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003414s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002906s |  0.00% |  0.00% )   ( 0.003280s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006484s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004341s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p2
66.5.0:         ( 0.003118s |  0.00% |  0.00% )   ( 0.003488s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003525s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 21.901932s |  1.94% |  5.35% )   ( 20.904208s |  2.26% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002945s |  0.00% |  0.01% )   ( 0.003224s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.726960s |  0.15% |  7.88% )   ( 1.480764s |  0.16% |  7.08% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.683624s |  0.23% | 12.25% )   ( 2.589210s |  0.28% | 12.38% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.990392s |  0.17% |  9.08% )   ( 1.951840s |  0.21% |  9.33% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.618013s |  0.23% | 11.95% )   ( 2.592555s |  0.28% | 12.40% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.031844s |  0.18% |  9.27% )   ( 1.910386s |  0.20% |  9.13% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.295671s |  0.11% |  5.91% )   ( 1.277318s |  0.13% |  6.11% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475305s |  0.04% |  2.17% )   ( 0.466338s |  0.05% |  2.23% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.449054s |  0.12% |  6.61% )   ( 1.405208s |  0.15% |  6.72% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.431187s |  0.03% |  1.96% )   ( 0.388907s |  0.04% |  1.86% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.816087s |  0.16% |  8.29% )   ( 1.696044s |  0.18% |  8.11% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.442632s |  0.39% | 20.28% )   ( 4.295489s |  0.46% | 20.54% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.494831s |  0.04% |  2.25% )   ( 0.441621s |  0.04% |  2.11% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.443387s |  0.03% |  2.02% )   ( 0.405304s |  0.04% |  1.93% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.005954s |  0.00% |  0.00% )   ( 0.003310s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002519s |  0.00% |  0.00% )   ( 0.002833s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002960s |  0.00% |  0.00% )   ( 0.003087s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005737s |  0.00% |  0.02% )   ( 0.005806s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.924452s |  1.67% |  3.35% )   ( 15.954347s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000702s |  0.00% |  0.00% )   ( 0.000714s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.923657s |  1.67% | 99.99% )   ( 15.953527s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p3
30.5.0:         ( 0.024056s |  0.00% |  0.12% )   ( 0.024007s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024026s |  0.00% |  0.12% )   ( 0.023978s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024019s |  0.00% |  0.12% )   ( 0.023968s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024035s |  0.00% |  0.12% )   ( 0.023989s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024055s |  0.00% |  0.12% )   ( 0.023999s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005328s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004857s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000229s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005087s |  0.00% |  0.00% )   ( 0.005560s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p3
41.5.0:         ( 0.751261s |  0.06% |  0.15% )   ( 0.006551s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004448s |  0.00% |  0.00% )   ( 0.004951s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004838s |  0.00% |  0.00% )   ( 0.005397s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033724s |  0.00% |  0.00% )   ( 0.029155s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003853s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003874s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004834s |  0.00% |  0.00% )   ( 0.005327s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p3
66.5.0:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003907s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.940070s |  1.59% |  3.95% )   ( 15.711419s |  1.70% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004013s |  0.00% |  0.02% )   ( 0.004513s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.149705s |  0.10% |  6.40% )   ( 1.036410s |  0.11% |  6.59% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.916980s |  0.17% | 10.68% )   ( 1.815402s |  0.19% | 11.55% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.785736s |  0.15% |  9.95% )   ( 1.519404s |  0.16% |  9.67% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.080189s |  0.18% | 11.59% )   ( 1.830237s |  0.19% | 11.64% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.695864s |  0.15% |  9.45% )   ( 1.472671s |  0.15% |  9.37% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.138020s |  0.10% |  6.34% )   ( 0.938344s |  0.10% |  5.97% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625545s |  0.05% |  3.48% )   ( 0.462835s |  0.05% |  2.94% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.240103s |  0.11% |  6.91% )   ( 0.974520s |  0.10% |  6.20% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.523220s |  0.04% |  2.91% )   ( 0.424821s |  0.04% |  2.70% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.499638s |  0.13% |  8.35% )   ( 1.305103s |  0.14% |  8.30% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.143228s |  0.27% | 17.52% )   ( 2.992224s |  0.32% | 19.04% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.587673s |  0.05% |  3.27% )   ( 0.475330s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.550156s |  0.04% |  3.06% )   ( 0.459605s |  0.04% |  2.92% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003818s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008063s |  0.00% |  0.04% )   ( 0.008136s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 19.008752s |  1.68% |  3.36% )   ( 16.941222s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000694s |  0.00% |  0.00% )   ( 0.000711s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 19.007964s |  1.68% | 99.99% )   ( 16.940404s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p4
30.5.0:         ( 0.032901s |  0.00% |  0.17% )   ( 0.031921s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024168s |  0.00% |  0.12% )   ( 0.024120s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024087s |  0.00% |  0.12% )   ( 0.024034s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024096s |  0.00% |  0.12% )   ( 0.024041s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024374s |  0.00% |  0.12% )   ( 0.024315s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004064s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004401s |  0.00% |  0.00% )   ( 0.004867s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p4
41.5.0:         ( 0.691229s |  0.06% |  0.16% )   ( 0.006365s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004176s |  0.00% |  0.00% )   ( 0.004606s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004439s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.006567s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004095s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029169s |  0.00% |  0.00% )   ( 0.026434s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003474s |  0.00% |  0.00% )   ( 0.003888s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003458s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008021s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004748s |  0.00% |  0.00% )   ( 0.005202s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p4
66.5.0:         ( 0.004870s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.075266s |  1.60% |  4.52% )   ( 16.698673s |  1.80% |  4.69% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003535s |  0.00% |  0.01% )   ( 0.003966s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.197624s |  0.10% |  6.62% )   ( 1.080727s |  0.11% |  6.47% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.141536s |  0.19% | 11.84% )   ( 1.979838s |  0.21% | 11.85% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.793797s |  0.15% |  9.92% )   ( 1.597276s |  0.17% |  9.56% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.136848s |  0.18% | 11.82% )   ( 1.969648s |  0.21% | 11.79% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.807760s |  0.16% | 10.00% )   ( 1.550440s |  0.16% |  9.28% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.065050s |  0.09% |  5.89% )   ( 1.004820s |  0.10% |  6.01% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.536423s |  0.04% |  2.96% )   ( 0.469635s |  0.05% |  2.81% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.084876s |  0.09% |  6.00% )   ( 1.058850s |  0.11% |  6.34% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.426140s |  0.03% |  2.35% )   ( 0.407995s |  0.04% |  2.44% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.510167s |  0.13% |  8.35% )   ( 1.389596s |  0.15% |  8.32% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.402029s |  0.30% | 18.82% )   ( 3.288078s |  0.35% | 19.69% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.505743s |  0.04% |  2.79% )   ( 0.461115s |  0.04% |  2.76% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.463738s |  0.04% |  2.56% )   ( 0.436689s |  0.04% |  2.61% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003548s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004820s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009851s |  0.00% |  0.05% )   ( 0.009890s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 20.456547s |  1.81% |  3.62% )   ( 18.729842s |  2.02% |  4.05% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000706s |  0.00% |  0.00% )   ( 0.000721s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 20.455749s |  1.81% | 99.99% )   ( 18.729015s |  2.02% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p5
30.5.0:         ( 0.024184s |  0.00% |  0.11% )   ( 0.024029s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028559s |  0.00% |  0.13% )   ( 0.027852s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.036469s |  0.00% |  0.17% )   ( 0.036359s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.039173s |  0.00% |  0.19% )   ( 0.039032s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.046013s |  0.00% |  0.22% )   ( 0.045836s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003541s |  0.00% |  0.00% )   ( 0.003972s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003286s |  0.00% |  0.00% )   ( 0.003709s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004512s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p5
41.5.0:         ( 0.596964s |  0.05% |  0.14% )   ( 0.005790s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005932s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003071s |  0.00% |  0.00% )   ( 0.003448s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003414s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033932s |  0.00% |  0.00% )   ( 0.024000s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003231s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008571s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004587s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p5
66.5.0:         ( 0.003247s |  0.00% |  0.00% )   ( 0.003650s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003335s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.581265s |  1.73% |  5.03% )   ( 18.457286s |  1.99% |  5.18% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003185s |  0.00% |  0.01% )   ( 0.003575s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.368834s |  0.12% |  6.99% )   ( 1.272414s |  0.13% |  6.89% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.510222s |  0.22% | 12.81% )   ( 2.330748s |  0.25% | 12.62% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.906256s |  0.16% |  9.73% )   ( 1.809521s |  0.19% |  9.80% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.361977s |  0.20% | 12.06% )   ( 2.312825s |  0.25% | 12.53% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.893023s |  0.16% |  9.66% )   ( 1.821089s |  0.19% |  9.86% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.135080s |  0.10% |  5.79% )   ( 1.114879s |  0.12% |  6.04% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475944s |  0.04% |  2.43% )   ( 0.441831s |  0.04% |  2.39% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.294992s |  0.11% |  6.61% )   ( 1.233137s |  0.13% |  6.68% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.453461s |  0.04% |  2.31% )   ( 0.396807s |  0.04% |  2.14% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.736644s |  0.15% |  8.86% )   ( 1.594999s |  0.17% |  8.64% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.446215s |  0.30% | 17.59% )   ( 3.303948s |  0.35% | 17.90% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.503631s |  0.04% |  2.57% )   ( 0.420033s |  0.04% |  2.27% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491801s |  0.04% |  2.51% )   ( 0.401480s |  0.04% |  2.17% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003210s |  0.00% |  0.00% )   ( 0.003510s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003077s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003415s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005365s |  0.00% |  0.02% )   ( 0.005437s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 18.379986s |  1.63% |  3.25% )   ( 14.986226s |  1.62% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000731s |  0.00% |  0.00% )   ( 0.000750s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 18.379161s |  1.63% | 99.99% )   ( 14.985369s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000371s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000361s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p6
30.5.0:         ( 0.024075s |  0.00% |  0.13% )   ( 0.024025s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024111s |  0.00% |  0.13% )   ( 0.024066s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024113s |  0.00% |  0.13% )   ( 0.024055s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024166s |  0.00% |  0.13% )   ( 0.024108s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.024071s |  0.00% |  0.13% )   ( 0.024006s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005057s |  0.00% |  0.00% )   ( 0.005638s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005300s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005554s |  0.00% |  0.00% )   ( 0.006127s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p6
41.5.0:         ( 0.753453s |  0.06% |  0.14% )   ( 0.007989s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005079s |  0.00% |  0.00% )   ( 0.005645s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005998s |  0.00% |  0.00% )   ( 0.006619s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004510s |  0.00% |  0.00% )   ( 0.005007s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005471s |  0.00% |  0.00% )   ( 0.005947s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.055213s |  0.00% |  0.01% )   ( 0.034807s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004906s |  0.00% |  0.00% )   ( 0.005468s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005014s |  0.00% |  0.00% )   ( 0.005501s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.014526s |  0.00% |  0.00% )   ( 0.005635s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006078s |  0.00% |  0.00% )   ( 0.006631s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p6
66.5.0:         ( 0.005467s |  0.00% |  0.00% )   ( 0.006062s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004498s |  0.00% |  0.00% )   ( 0.005051s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.345729s |  1.53% |  3.49% )   ( 14.718742s |  1.59% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.006661s |  0.00% |  0.03% )   ( 0.005220s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.274862s |  0.11% |  7.34% )   ( 0.980419s |  0.10% |  6.66% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.878913s |  0.16% | 10.83% )   ( 1.637953s |  0.17% | 11.12% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.647417s |  0.14% |  9.49% )   ( 1.399290s |  0.15% |  9.50% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.852346s |  0.16% | 10.67% )   ( 1.606342s |  0.17% | 10.91% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.508612s |  0.13% |  8.69% )   ( 1.360008s |  0.14% |  9.23% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.086498s |  0.09% |  6.26% )   ( 0.920553s |  0.09% |  6.25% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.710020s |  0.06% |  4.09% )   ( 0.528219s |  0.05% |  3.58% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.178709s |  0.10% |  6.79% )   ( 0.935659s |  0.10% |  6.35% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.558090s |  0.04% |  3.21% )   ( 0.482143s |  0.05% |  3.27% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.506449s |  0.13% |  8.68% )   ( 1.254361s |  0.13% |  8.52% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.858191s |  0.25% | 16.47% )   ( 2.548080s |  0.27% | 17.31% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.633097s |  0.05% |  3.64% )   ( 0.535726s |  0.05% |  3.63% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.645864s |  0.05% |  3.72% )   ( 0.524769s |  0.05% |  3.56% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005292s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005050s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005000s |  0.00% |  0.00% )   ( 0.005454s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.011583s |  0.00% |  0.06% )   ( 0.011664s |  0.00% |  0.07% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 19.127277s |  1.69% |  3.38% )   ( 16.542117s |  1.79% |  3.58% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000746s |  0.00% |  0.00% )   ( 0.000763s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 19.126435s |  1.69% | 99.99% )   ( 16.541246s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000343s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p7
30.5.0:         ( 0.024554s |  0.00% |  0.12% )   ( 0.024494s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025713s |  0.00% |  0.13% )   ( 0.025637s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.025038s |  0.00% |  0.13% )   ( 0.024969s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.025571s |  0.00% |  0.13% )   ( 0.025499s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.025809s |  0.00% |  0.13% )   ( 0.025732s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004216s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p7
41.5.0:         ( 0.435718s |  0.03% |  0.10% )   ( 0.005703s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003364s |  0.00% |  0.00% )   ( 0.003801s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030622s |  0.00% |  0.00% )   ( 0.024965s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003821s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003330s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006676s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004558s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p7
66.5.0:         ( 0.004059s |  0.00% |  0.00% )   ( 0.004530s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003439s |  0.00% |  0.00% )   ( 0.003839s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.458587s |  1.63% |  4.82% )   ( 16.308559s |  1.76% |  4.92% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003660s |  0.00% |  0.01% )   ( 0.004122s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.319651s |  0.11% |  7.14% )   ( 1.069104s |  0.11% |  6.55% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.240050s |  0.19% | 12.13% )   ( 1.956225s |  0.21% | 11.99% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.763390s |  0.15% |  9.55% )   ( 1.553946s |  0.16% |  9.52% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.141284s |  0.18% | 11.60% )   ( 1.960167s |  0.21% | 12.01% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.657489s |  0.14% |  8.97% )   ( 1.527230s |  0.16% |  9.36% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.116991s |  0.09% |  6.05% )   ( 0.972749s |  0.10% |  5.96% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.516357s |  0.04% |  2.79% )   ( 0.439373s |  0.04% |  2.69% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.184778s |  0.10% |  6.41% )   ( 1.050582s |  0.11% |  6.44% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.477334s |  0.04% |  2.58% )   ( 0.369953s |  0.04% |  2.26% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.520647s |  0.13% |  8.23% )   ( 1.334497s |  0.14% |  8.18% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.573825s |  0.31% | 19.36% )   ( 3.243028s |  0.35% | 19.88% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487619s |  0.04% |  2.64% )   ( 0.422078s |  0.04% |  2.58% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.455512s |  0.04% |  2.46% )   ( 0.405505s |  0.04% |  2.48% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004170s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006688s |  0.00% |  0.00% )   ( 0.004092s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007501s |  0.00% |  0.03% )   ( 0.007566s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 18.939144s |  1.68% |  3.35% )   ( 16.377110s |  1.77% |  3.54% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000721s |  0.00% |  0.00% )   ( 0.000737s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 18.938326s |  1.68% | 99.99% )   ( 16.376262s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p8
30.5.0:         ( 0.024067s |  0.00% |  0.12% )   ( 0.024015s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028306s |  0.00% |  0.14% )   ( 0.025358s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.026472s |  0.00% |  0.13% )   ( 0.026278s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024248s |  0.00% |  0.12% )   ( 0.024189s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.025998s |  0.00% |  0.13% )   ( 0.025926s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.004973s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005232s |  0.00% |  0.00% )   ( 0.005634s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p8
41.5.0:         ( 0.571001s |  0.05% |  0.12% )   ( 0.006486s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004188s |  0.00% |  0.00% )   ( 0.004705s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036037s |  0.00% |  0.00% )   ( 0.031346s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010707s |  0.00% |  0.00% )   ( 0.005368s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005080s |  0.00% |  0.00% )   ( 0.005591s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p8
66.5.0:         ( 0.004227s |  0.00% |  0.00% )   ( 0.004711s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.005225s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.118612s |  1.60% |  4.15% )   ( 16.128280s |  1.74% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004182s |  0.00% |  0.02% )   ( 0.004648s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.368359s |  0.12% |  7.55% )   ( 1.086893s |  0.11% |  6.73% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.149238s |  0.19% | 11.86% )   ( 1.898546s |  0.20% | 11.77% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.684620s |  0.14% |  9.29% )   ( 1.535596s |  0.16% |  9.52% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.052470s |  0.18% | 11.32% )   ( 1.869150s |  0.20% | 11.58% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.679327s |  0.14% |  9.26% )   ( 1.488271s |  0.16% |  9.22% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.126143s |  0.09% |  6.21% )   ( 0.960108s |  0.10% |  5.95% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.540136s |  0.04% |  2.98% )   ( 0.483529s |  0.05% |  2.99% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.076466s |  0.09% |  5.94% )   ( 1.020417s |  0.11% |  6.32% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.491114s |  0.04% |  2.71% )   ( 0.428706s |  0.04% |  2.65% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.485020s |  0.13% |  8.19% )   ( 1.351629s |  0.14% |  8.38% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.382073s |  0.30% | 18.66% )   ( 3.046903s |  0.32% | 18.89% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.561347s |  0.04% |  3.09% )   ( 0.488719s |  0.05% |  3.03% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.518117s |  0.04% |  2.85% )   ( 0.465165s |  0.05% |  2.88% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003989s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005262s |  0.00% |  0.02% )   ( 0.005332s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 19.083964s |  1.69% |  3.37% )   ( 16.410937s |  1.77% |  3.55% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000723s |  0.00% |  0.00% )   ( 0.000744s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.083147s |  1.69% | 99.99% )   ( 16.410086s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p9
30.5.0:         ( 0.025586s |  0.00% |  0.13% )   ( 0.025527s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028428s |  0.00% |  0.14% )   ( 0.028341s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024120s |  0.00% |  0.12% )   ( 0.024053s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.024134s |  0.00% |  0.12% )   ( 0.024080s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.039291s |  0.00% |  0.20% )   ( 0.039147s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005157s |  0.00% |  0.00% )   ( 0.005686s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p9
41.5.0:         ( 0.715164s |  0.06% |  0.14% )   ( 0.007487s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004857s |  0.00% |  0.00% )   ( 0.005391s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005613s |  0.00% |  0.00% )   ( 0.006203s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004190s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004739s |  0.00% |  0.00% )   ( 0.005241s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043855s |  0.00% |  0.00% )   ( 0.031958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004624s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004493s |  0.00% |  0.00% )   ( 0.004995s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011884s |  0.00% |  0.00% )   ( 0.005165s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005771s |  0.00% |  0.00% )   ( 0.006309s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p9
66.5.0:         ( 0.004489s |  0.00% |  0.00% )   ( 0.005004s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005015s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.094445s |  1.60% |  3.79% )   ( 16.140203s |  1.74% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004132s |  0.00% |  0.02% )   ( 0.004650s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.322247s |  0.11% |  7.30% )   ( 1.073030s |  0.11% |  6.64% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.192641s |  0.19% | 12.11% )   ( 1.864225s |  0.20% | 11.55% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.821944s |  0.16% | 10.06% )   ( 1.566155s |  0.16% |  9.70% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.095650s |  0.18% | 11.58% )   ( 1.873899s |  0.20% | 11.61% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651764s |  0.14% |  9.12% )   ( 1.515743s |  0.16% |  9.39% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.159255s |  0.10% |  6.40% )   ( 1.001995s |  0.10% |  6.20% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575461s |  0.05% |  3.18% )   ( 0.514356s |  0.05% |  3.18% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.123859s |  0.09% |  6.21% )   ( 1.060228s |  0.11% |  6.56% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.520543s |  0.04% |  2.87% )   ( 0.457018s |  0.04% |  2.83% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.516552s |  0.13% |  8.38% )   ( 1.351500s |  0.14% |  8.37% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.037422s |  0.26% | 16.78% )   ( 2.861123s |  0.30% | 17.72% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.535928s |  0.04% |  2.96% )   ( 0.503948s |  0.05% |  3.12% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.537047s |  0.04% |  2.96% )   ( 0.492333s |  0.05% |  3.05% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004649s |  0.00% |  0.00% )   ( 0.005158s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005479s |  0.00% |  0.02% )   ( 0.005556s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 18.725717s |  1.66% |  3.31% )   ( 15.814467s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000834s |  0.00% |  0.00% )   ( 0.000860s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.724694s |  1.66% | 99.99% )   ( 15.813394s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p10
30.5.0:         ( 0.046063s |  0.00% |  0.24% )   ( 0.045903s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046388s |  0.00% |  0.24% )   ( 0.046223s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.046204s |  0.00% |  0.24% )   ( 0.046039s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.045975s |  0.00% |  0.24% )   ( 0.045813s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.046401s |  0.00% |  0.24% )   ( 0.046216s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004645s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005034s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005463s |  0.00% |  0.00% )   ( 0.005975s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p10
41.5.0:         ( 0.597772s |  0.05% |  0.13% )   ( 0.007203s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005002s |  0.00% |  0.00% )   ( 0.005528s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005133s |  0.00% |  0.00% )   ( 0.005557s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004756s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035987s |  0.00% |  0.00% )   ( 0.030290s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004740s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005069s |  0.00% |  0.00% )   ( 0.005001s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005738s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005651s |  0.00% |  0.00% )   ( 0.006162s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p10
66.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.774005s |  1.57% |  4.12% )   ( 15.453929s |  1.67% |  4.24% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003863s |  0.00% |  0.02% )   ( 0.004341s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.186245s |  0.10% |  6.67% )   ( 1.000794s |  0.10% |  6.47% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.090119s |  0.18% | 11.75% )   ( 1.781425s |  0.19% | 11.52% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.796167s |  0.15% | 10.10% )   ( 1.473538s |  0.15% |  9.53% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.076918s |  0.18% | 11.68% )   ( 1.777592s |  0.19% | 11.50% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.699634s |  0.15% |  9.56% )   ( 1.425444s |  0.15% |  9.22% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.113366s |  0.09% |  6.26% )   ( 0.939703s |  0.10% |  6.08% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.602082s |  0.05% |  3.38% )   ( 0.472297s |  0.05% |  3.05% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.127646s |  0.10% |  6.34% )   ( 0.973554s |  0.10% |  6.29% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483638s |  0.04% |  2.72% )   ( 0.427976s |  0.04% |  2.76% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.469319s |  0.13% |  8.26% )   ( 1.307952s |  0.14% |  8.46% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.023902s |  0.26% | 17.01% )   ( 2.930499s |  0.31% | 18.96% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.540038s |  0.04% |  3.03% )   ( 0.475945s |  0.05% |  3.07% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561068s |  0.04% |  3.15% )   ( 0.462869s |  0.05% |  2.99% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004604s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004568s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004111s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009450s |  0.00% |  0.05% )   ( 0.009337s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000189s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 18.075989s |  1.60% |  3.20% )   ( 14.647230s |  1.58% |  3.17% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.001024s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.074801s |  1.60% | 99.99% )   ( 14.646008s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p11
30.5.0:         ( 0.046219s |  0.00% |  0.25% )   ( 0.045972s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031155s |  0.00% |  0.17% )   ( 0.031053s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.024182s |  0.00% |  0.13% )   ( 0.024120s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.026893s |  0.00% |  0.14% )   ( 0.026803s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.029665s |  0.00% |  0.16% )   ( 0.029561s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005829s |  0.00% |  0.00% )   ( 0.006397s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.005215s |  0.00% |  0.00% )   ( 0.005815s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006276s |  0.00% |  0.00% )   ( 0.006913s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p11
41.5.0:         ( 0.834760s |  0.07% |  0.15% )   ( 0.008863s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006435s |  0.00% |  0.00% )   ( 0.006310s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006374s |  0.00% |  0.00% )   ( 0.007053s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.005101s |  0.00% |  0.00% )   ( 0.005705s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005549s |  0.00% |  0.00% )   ( 0.006153s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.052701s |  0.00% |  0.01% )   ( 0.038170s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.005033s |  0.00% |  0.00% )   ( 0.005636s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005144s |  0.00% |  0.00% )   ( 0.005764s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009156s |  0.00% |  0.00% )   ( 0.006478s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006726s |  0.00% |  0.00% )   ( 0.007324s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p11
66.5.0:         ( 0.007076s |  0.00% |  0.00% )   ( 0.006667s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.005307s |  0.00% |  0.00% )   ( 0.005929s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.924236s |  1.50% |  3.22% )   ( 14.331641s |  1.55% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005274s |  0.00% |  0.03% )   ( 0.005918s |  0.00% |  0.04% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.314187s |  0.11% |  7.76% )   ( 0.977385s |  0.10% |  6.81% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.977240s |  0.17% | 11.68% )   ( 1.567031s |  0.16% | 10.93% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.665149s |  0.14% |  9.83% )   ( 1.378197s |  0.14% |  9.61% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.745298s |  0.15% | 10.31% )   ( 1.542659s |  0.16% | 10.76% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.542494s |  0.13% |  9.11% )   ( 1.331859s |  0.14% |  9.29% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.156701s |  0.10% |  6.83% )   ( 0.918382s |  0.09% |  6.40% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.656680s |  0.05% |  3.88% )   ( 0.554361s |  0.06% |  3.86% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.116500s |  0.09% |  6.59% )   ( 0.908771s |  0.09% |  6.34% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.592749s |  0.05% |  3.50% )   ( 0.500304s |  0.05% |  3.49% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.496114s |  0.13% |  8.84% )   ( 1.231994s |  0.13% |  8.59% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.440269s |  0.21% | 14.41% )   ( 2.310758s |  0.25% | 16.12% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.604082s |  0.05% |  3.56% )   ( 0.557070s |  0.06% |  3.88% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.611499s |  0.05% |  3.61% )   ( 0.546952s |  0.05% |  3.81% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005041s |  0.00% |  0.00% )   ( 0.005648s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.005212s |  0.00% |  0.00% )   ( 0.005808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005423s |  0.00% |  0.00% )   ( 0.006008s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008998s |  0.00% |  0.04% )   ( 0.008980s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 18.299343s |  1.62% |  3.23% )   ( 15.535627s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.001012s |  0.00% |  0.00% )   ( 0.001031s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 18.298169s |  1.62% | 99.99% )   ( 15.534414s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p12
30.5.0:         ( 0.039161s |  0.00% |  0.21% )   ( 0.039028s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028723s |  0.00% |  0.15% )   ( 0.028626s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.029078s |  0.00% |  0.15% )   ( 0.028984s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.026879s |  0.00% |  0.14% )   ( 0.026804s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.032762s |  0.00% |  0.17% )   ( 0.032657s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005512s |  0.00% |  0.00% )   ( 0.006119s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.005326s |  0.00% |  0.00% )   ( 0.005909s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006235s |  0.00% |  0.00% )   ( 0.006808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p12
41.5.0:         ( 0.663590s |  0.05% |  0.12% )   ( 0.008130s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005120s |  0.00% |  0.00% )   ( 0.005665s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006996s |  0.00% |  0.00% )   ( 0.006687s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005270s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005753s |  0.00% |  0.00% )   ( 0.006308s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.050034s |  0.00% |  0.01% )   ( 0.035510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004877s |  0.00% |  0.00% )   ( 0.005419s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005119s |  0.00% |  0.00% )   ( 0.005683s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.014600s |  0.00% |  0.00% )   ( 0.005928s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006131s |  0.00% |  0.00% )   ( 0.006718s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p12
66.5.0:         ( 0.007978s |  0.00% |  0.00% )   ( 0.005573s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004752s |  0.00% |  0.00% )   ( 0.005318s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.317325s |  1.53% |  3.50% )   ( 15.230867s |  1.64% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004575s |  0.00% |  0.02% )   ( 0.005095s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.316483s |  0.11% |  7.60% )   ( 1.036471s |  0.11% |  6.80% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.901258s |  0.16% | 10.97% )   ( 1.710550s |  0.18% | 11.23% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602554s |  0.14% |  9.25% )   ( 1.455952s |  0.15% |  9.55% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.939111s |  0.17% | 11.19% )   ( 1.705944s |  0.18% | 11.20% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.664013s |  0.14% |  9.60% )   ( 1.407980s |  0.15% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.086285s |  0.09% |  6.27% )   ( 0.948951s |  0.10% |  6.23% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.615220s |  0.05% |  3.55% )   ( 0.541668s |  0.05% |  3.55% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.040617s |  0.09% |  6.00% )   ( 0.981124s |  0.10% |  6.44% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.556388s |  0.04% |  3.21% )   ( 0.487199s |  0.05% |  3.19% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.515804s |  0.13% |  8.75% )   ( 1.306133s |  0.14% |  8.57% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.789314s |  0.24% | 16.10% )   ( 2.580695s |  0.27% | 16.94% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.646190s |  0.05% |  3.73% )   ( 0.531873s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.639513s |  0.05% |  3.69% )   ( 0.531232s |  0.05% |  3.48% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004935s |  0.00% |  0.00% )   ( 0.005517s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.008223s |  0.00% |  0.00% )   ( 0.005775s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008415s |  0.00% |  0.04% )   ( 0.008499s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.940783s |  1.59% |  3.17% )   ( 14.752371s |  1.59% |  3.19% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001042s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.939576s |  1.59% | 99.99% )   ( 14.751121s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p13
30.5.0:         ( 0.033779s |  0.00% |  0.18% )   ( 0.033637s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037793s |  0.00% |  0.21% )   ( 0.037659s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.031316s |  0.00% |  0.17% )   ( 0.031212s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.027390s |  0.00% |  0.15% )   ( 0.027296s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.034192s |  0.00% |  0.19% )   ( 0.034080s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005469s |  0.00% |  0.00% )   ( 0.006070s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.005011s |  0.00% |  0.00% )   ( 0.005602s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006228s |  0.00% |  0.00% )   ( 0.006857s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p13
41.5.0:         ( 0.651116s |  0.05% |  0.12% )   ( 0.007898s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005326s |  0.00% |  0.00% )   ( 0.005888s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006077s |  0.00% |  0.00% )   ( 0.006735s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004875s |  0.00% |  0.00% )   ( 0.005406s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005856s |  0.00% |  0.00% )   ( 0.006465s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.054473s |  0.00% |  0.01% )   ( 0.035894s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.005144s |  0.00% |  0.00% )   ( 0.005725s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005046s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009022s |  0.00% |  0.00% )   ( 0.006128s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.010004s |  0.00% |  0.00% )   ( 0.007623s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p13
66.5.0:         ( 0.005661s |  0.00% |  0.00% )   ( 0.006288s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.005039s |  0.00% |  0.00% )   ( 0.005616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.953934s |  1.50% |  3.37% )   ( 14.433451s |  1.56% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005037s |  0.00% |  0.02% )   ( 0.005647s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.287680s |  0.11% |  7.59% )   ( 0.987548s |  0.10% |  6.84% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.897255s |  0.16% | 11.19% )   ( 1.568332s |  0.16% | 10.86% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.560580s |  0.13% |  9.20% )   ( 1.375482s |  0.14% |  9.52% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.756866s |  0.15% | 10.36% )   ( 1.564349s |  0.16% | 10.83% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.441237s |  0.12% |  8.50% )   ( 1.324552s |  0.14% |  9.17% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.046168s |  0.09% |  6.17% )   ( 0.897745s |  0.09% |  6.21% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.621188s |  0.05% |  3.66% )   ( 0.543008s |  0.05% |  3.76% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.078727s |  0.09% |  6.36% )   ( 0.919119s |  0.09% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.624550s |  0.05% |  3.68% )   ( 0.487295s |  0.05% |  3.37% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.495259s |  0.13% |  8.81% )   ( 1.247354s |  0.13% |  8.64% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.715121s |  0.24% | 16.01% )   ( 2.416953s |  0.26% | 16.74% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.685804s |  0.06% |  4.04% )   ( 0.552330s |  0.05% |  3.82% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.738462s |  0.06% |  4.35% )   ( 0.543737s |  0.05% |  3.76% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004923s |  0.00% |  0.00% )   ( 0.005478s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004897s |  0.00% |  0.00% )   ( 0.005462s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005185s |  0.00% |  0.00% )   ( 0.005705s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000391s |  0.00% |  0.00% )   ( 0.000434s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000260s |  0.00% |  0.00% )   ( 0.000287s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit
80.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p* 1>&21
81.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.019312s |  0.00% |  0.10% )   ( 0.010542s |  0.00% |  0.07% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 18.541263s |  1.64% |  3.28% )   ( 15.495366s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001041s |  0.00% |  0.00% )   ( 0.001063s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 18.540056s |  1.64% | 99.99% )   ( 15.494118s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p14
30.5.0:         ( 0.041738s |  0.00% |  0.22% )   ( 0.041573s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.030061s |  0.00% |  0.16% )   ( 0.029959s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.039286s |  0.00% |  0.21% )   ( 0.039147s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.036423s |  0.00% |  0.19% )   ( 0.036296s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.044893s |  0.00% |  0.24% )   ( 0.044736s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004780s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005087s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005383s |  0.00% |  0.00% )   ( 0.005900s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p14
41.5.0:         ( 0.688391s |  0.06% |  0.14% )   ( 0.007547s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005305s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005801s |  0.00% |  0.00% )   ( 0.006358s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005189s |  0.00% |  0.00% )   ( 0.005703s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.050609s |  0.00% |  0.01% )   ( 0.030078s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004372s |  0.00% |  0.00% )   ( 0.004716s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005024s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013795s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005651s |  0.00% |  0.00% )   ( 0.006148s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p14
66.5.0:         ( 0.005012s |  0.00% |  0.00% )   ( 0.005560s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.516582s |  1.55% |  3.93% )   ( 15.173617s |  1.64% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004517s |  0.00% |  0.02% )   ( 0.004934s |  0.00% |  0.03% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.223574s |  0.10% |  6.98% )   ( 1.009437s |  0.10% |  6.65% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.993157s |  0.17% | 11.37% )   ( 1.715057s |  0.18% | 11.30% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.640336s |  0.14% |  9.36% )   ( 1.453831s |  0.15% |  9.58% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.989468s |  0.17% | 11.35% )   ( 1.728163s |  0.18% | 11.38% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.614399s |  0.14% |  9.21% )   ( 1.412418s |  0.15% |  9.30% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.218859s |  0.10% |  6.95% )   ( 0.940860s |  0.10% |  6.20% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.626688s |  0.05% |  3.57% )   ( 0.500930s |  0.05% |  3.30% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.158118s |  0.10% |  6.61% )   ( 0.965091s |  0.10% |  6.36% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.498450s |  0.04% |  2.84% )   ( 0.434095s |  0.04% |  2.86% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405992s |  0.12% |  8.02% )   ( 1.268782s |  0.13% |  8.36% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.010730s |  0.26% | 17.18% )   ( 2.775811s |  0.30% | 18.29% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552763s |  0.04% |  3.15% )   ( 0.488614s |  0.05% |  3.22% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.579531s |  0.05% |  3.30% )   ( 0.475594s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004441s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.004902s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005241s |  0.00% |  0.02% )   ( 0.005308s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 20.976946s |  1.86% |  3.71% )   ( 18.684160s |  2.02% |  4.04% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001053s |  0.00% |  0.00% )   ( 0.001075s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 20.975725s |  1.86% | 99.99% )   ( 18.682900s |  2.02% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p15
30.5.0:         ( 0.046243s |  0.00% |  0.22% )   ( 0.046079s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036588s |  0.00% |  0.17% )   ( 0.036457s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.041439s |  0.00% |  0.19% )   ( 0.041247s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.045968s |  0.00% |  0.21% )   ( 0.045806s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.045888s |  0.00% |  0.21% )   ( 0.045728s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004352s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.004191s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004799s |  0.00% |  0.00% )   ( 0.005283s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p15
41.5.0:         ( 0.538107s |  0.04% |  0.10% )   ( 0.006717s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005019s |  0.00% |  0.00% )   ( 0.005447s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004503s |  0.00% |  0.00% )   ( 0.005000s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029921s |  0.00% |  0.00% )   ( 0.030186s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007794s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005015s |  0.00% |  0.00% )   ( 0.005398s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p15
66.5.0:         ( 0.004372s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003867s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.111656s |  1.78% |  4.16% )   ( 18.347017s |  1.98% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007051s |  0.00% |  0.03% )   ( 0.004525s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.458787s |  0.12% |  7.25% )   ( 1.305627s |  0.14% |  7.11% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.379769s |  0.21% | 11.83% )   ( 2.204857s |  0.23% | 12.01% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.893382s |  0.16% |  9.41% )   ( 1.686572s |  0.18% |  9.19% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.225971s |  0.19% | 11.06% )   ( 2.099602s |  0.22% | 11.44% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.765284s |  0.15% |  8.77% )   ( 1.661002s |  0.17% |  9.05% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.366641s |  0.12% |  6.79% )   ( 1.156534s |  0.12% |  6.30% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625165s |  0.05% |  3.10% )   ( 0.533141s |  0.05% |  2.90% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.352003s |  0.11% |  6.72% )   ( 1.219038s |  0.13% |  6.64% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483098s |  0.04% |  2.40% )   ( 0.447547s |  0.04% |  2.43% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.675175s |  0.14% |  8.32% )   ( 1.504960s |  0.16% |  8.20% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.769478s |  0.33% | 18.74% )   ( 3.527754s |  0.38% | 19.22% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.575041s |  0.05% |  2.85% )   ( 0.512333s |  0.05% |  2.79% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.534811s |  0.04% |  2.65% )   ( 0.483525s |  0.05% |  2.63% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003721s |  0.00% |  0.00% )   ( 0.004198s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006092s |  0.00% |  0.02% )   ( 0.006158s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 19.600791s |  1.73% |  3.47% )   ( 16.899708s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001089s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 19.599534s |  1.73% | 99.99% )   ( 16.898410s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p16
30.5.0:         ( 0.046528s |  0.00% |  0.23% )   ( 0.046330s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046415s |  0.00% |  0.23% )   ( 0.046216s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.046341s |  0.00% |  0.23% )   ( 0.046139s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.046583s |  0.00% |  0.23% )   ( 0.046382s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.046494s |  0.00% |  0.23% )   ( 0.046267s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003835s |  0.00% |  0.00% )   ( 0.004235s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004195s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p16
41.5.0:         ( 0.335718s |  0.02% |  0.08% )   ( 0.005335s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.003981s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003198s |  0.00% |  0.00% )   ( 0.003591s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003548s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029155s |  0.00% |  0.00% )   ( 0.023480s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003060s |  0.00% |  0.00% )   ( 0.003446s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003505s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006401s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004215s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p16
66.5.0:         ( 0.003341s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.003185s |  0.00% |  0.01% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.929495s |  1.67% |  5.08% )   ( 16.564840s |  1.79% |  5.15% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003495s |  0.00% |  0.01% )   ( 0.003828s |  0.00% |  0.02% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.364749s |  0.12% |  7.20% )   ( 1.087915s |  0.11% |  6.56% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.342790s |  0.20% | 12.37% )   ( 2.002129s |  0.21% | 12.08% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.966907s |  0.17% | 10.39% )   ( 1.584881s |  0.17% |  9.56% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.174063s |  0.19% | 11.48% )   ( 1.978922s |  0.21% | 11.94% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.602621s |  0.14% |  8.46% )   ( 1.523123s |  0.16% |  9.19% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.148390s |  0.10% |  6.06% )   ( 1.004161s |  0.10% |  6.06% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539549s |  0.04% |  2.85% )   ( 0.444128s |  0.04% |  2.68% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.341672s |  0.11% |  7.08% )   ( 1.076922s |  0.11% |  6.50% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.479772s |  0.04% |  2.53% )   ( 0.377484s |  0.04% |  2.27% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.521228s |  0.13% |  8.03% )   ( 1.346347s |  0.14% |  8.12% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.567725s |  0.31% | 18.84% )   ( 3.309085s |  0.35% | 19.97% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.448057s |  0.03% |  2.36% )   ( 0.428179s |  0.04% |  2.58% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.428477s |  0.03% |  2.26% )   ( 0.397736s |  0.04% |  2.40% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003624s |  0.00% |  0.00% )   ( 0.003950s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003425s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003721s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008817s |  0.00% |  0.04% )   ( 0.008907s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 18.459061s |  1.63% |  3.26% )   ( 15.225549s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001058s |  0.00% |  0.00% )   ( 0.001079s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.457841s |  1.63% | 99.99% )   ( 15.224287s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p17
30.5.0:         ( 0.047624s |  0.00% |  0.25% )   ( 0.047456s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049331s |  0.00% |  0.26% )   ( 0.049112s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.049694s |  0.00% |  0.26% )   ( 0.049519s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.053026s |  0.00% |  0.28% )   ( 0.052783s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.055760s |  0.00% |  0.30% )   ( 0.055516s |  0.00% |  0.36% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005202s |  0.00% |  0.00% )   ( 0.005785s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004534s |  0.00% |  0.00% )   ( 0.005050s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005588s |  0.00% |  0.00% )   ( 0.006169s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p17
41.5.0:         ( 0.696254s |  0.06% |  0.13% )   ( 0.007926s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004875s |  0.00% |  0.00% )   ( 0.005430s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005705s |  0.00% |  0.00% )   ( 0.006285s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004719s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005157s |  0.00% |  0.00% )   ( 0.005689s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.057384s |  0.00% |  0.01% )   ( 0.034493s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004406s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004807s |  0.00% |  0.00% )   ( 0.005315s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008845s |  0.00% |  0.00% )   ( 0.005746s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006147s |  0.00% |  0.00% )   ( 0.006657s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p17
66.5.0:         ( 0.004963s |  0.00% |  0.00% )   ( 0.005519s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004760s |  0.00% |  0.00% )   ( 0.005310s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.354798s |  1.53% |  3.61% )   ( 14.828171s |  1.60% |  3.74% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004693s |  0.00% |  0.02% )   ( 0.005227s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.435486s |  0.12% |  8.27% )   ( 1.011150s |  0.10% |  6.81% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.960549s |  0.17% | 11.29% )   ( 1.656339s |  0.17% | 11.17% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.703291s |  0.15% |  9.81% )   ( 1.430407s |  0.15% |  9.64% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.042621s |  0.18% | 11.76% )   ( 1.657356s |  0.17% | 11.17% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.562301s |  0.13% |  9.00% )   ( 1.362505s |  0.14% |  9.18% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.086156s |  0.09% |  6.25% )   ( 0.911635s |  0.09% |  6.14% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.619526s |  0.05% |  3.56% )   ( 0.507390s |  0.05% |  3.42% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.088608s |  0.09% |  6.27% )   ( 0.939863s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553666s |  0.04% |  3.19% )   ( 0.458635s |  0.04% |  3.09% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.400491s |  0.12% |  8.06% )   ( 1.237899s |  0.13% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.844759s |  0.25% | 16.39% )   ( 2.638232s |  0.28% | 17.79% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.545628s |  0.04% |  3.14% )   ( 0.512126s |  0.05% |  3.45% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507023s |  0.04% |  2.92% )   ( 0.499407s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005058s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005236s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004840s |  0.00% |  0.00% )   ( 0.005358s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008757s |  0.00% |  0.04% )   ( 0.008846s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 19.342124s |  1.71% |  3.42% )   ( 16.918873s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001086s |  0.00% |  0.00% )   ( 0.001113s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 19.340863s |  1.71% | 99.99% )   ( 16.917570s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000231s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p18
30.5.0:         ( 0.049588s |  0.00% |  0.25% )   ( 0.049405s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045987s |  0.00% |  0.23% )   ( 0.045825s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.045746s |  0.00% |  0.23% )   ( 0.045579s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.045511s |  0.00% |  0.23% )   ( 0.045332s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.045556s |  0.00% |  0.23% )   ( 0.045394s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003857s |  0.00% |  0.00% )   ( 0.004284s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003435s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004355s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p18
41.5.0:         ( 0.613532s |  0.05% |  0.15% )   ( 0.006260s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004520s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003477s |  0.00% |  0.00% )   ( 0.003872s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031424s |  0.00% |  0.00% )   ( 0.023765s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003792s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010216s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005256s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p18
66.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003722s |  0.00% |  0.00% )   ( 0.004143s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.386808s |  1.63% |  4.75% )   ( 16.578662s |  1.79% |  4.89% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003349s |  0.00% |  0.01% )   ( 0.003744s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.323576s |  0.11% |  7.19% )   ( 1.121965s |  0.12% |  6.76% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.283048s |  0.20% | 12.41% )   ( 2.022466s |  0.21% | 12.19% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.814945s |  0.16% |  9.87% )   ( 1.617590s |  0.17% |  9.75% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.207348s |  0.19% | 12.00% )   ( 2.015860s |  0.21% | 12.15% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.692887s |  0.15% |  9.20% )   ( 1.567301s |  0.16% |  9.45% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.093277s |  0.09% |  5.94% )   ( 1.029229s |  0.11% |  6.20% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535145s |  0.04% |  2.91% )   ( 0.446986s |  0.04% |  2.69% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.180061s |  0.10% |  6.41% )   ( 1.069678s |  0.11% |  6.45% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.461281s |  0.04% |  2.50% )   ( 0.390430s |  0.04% |  2.35% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.649683s |  0.14% |  8.97% )   ( 1.408826s |  0.15% |  8.49% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.245863s |  0.28% | 17.65% )   ( 3.071605s |  0.33% | 18.52% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.447932s |  0.03% |  2.43% )   ( 0.412844s |  0.04% |  2.49% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.448413s |  0.03% |  2.43% )   ( 0.400138s |  0.04% |  2.41% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004171s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005151s |  0.00% |  0.02% )   ( 0.005224s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.229721s |  1.61% |  3.22% )   ( 14.893688s |  1.61% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001093s |  0.00% |  0.00% )   ( 0.001119s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.228442s |  1.61% | 99.99% )   ( 14.892368s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p19
30.5.0:         ( 0.045593s |  0.00% |  0.25% )   ( 0.045409s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045903s |  0.00% |  0.25% )   ( 0.045716s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.046242s |  0.00% |  0.25% )   ( 0.046055s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.048830s |  0.00% |  0.26% )   ( 0.048633s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.045799s |  0.00% |  0.25% )   ( 0.045600s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005336s |  0.00% |  0.00% )   ( 0.005943s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005852s |  0.00% |  0.00% )   ( 0.006372s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p19
41.5.0:         ( 0.606878s |  0.05% |  0.12% )   ( 0.008100s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005277s |  0.00% |  0.00% )   ( 0.005855s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006392s |  0.00% |  0.00% )   ( 0.006965s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005357s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005358s |  0.00% |  0.00% )   ( 0.005899s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039595s |  0.00% |  0.00% )   ( 0.033423s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004864s |  0.00% |  0.00% )   ( 0.005321s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009313s |  0.00% |  0.00% )   ( 0.005612s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.011311s |  0.00% |  0.00% )   ( 0.006886s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p19
66.5.0:         ( 0.009831s |  0.00% |  0.00% )   ( 0.006102s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004693s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.242522s |  1.52% |  3.63% )   ( 14.516896s |  1.57% |  3.74% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004582s |  0.00% |  0.02% )   ( 0.005007s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.313088s |  0.11% |  7.61% )   ( 0.979762s |  0.10% |  6.74% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.987001s |  0.17% | 11.52% )   ( 1.618984s |  0.17% | 11.15% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.647207s |  0.14% |  9.55% )   ( 1.396196s |  0.15% |  9.61% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.939597s |  0.17% | 11.24% )   ( 1.603686s |  0.17% | 11.04% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611533s |  0.14% |  9.34% )   ( 1.341618s |  0.14% |  9.24% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020706s |  0.09% |  5.91% )   ( 0.882176s |  0.09% |  6.07% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.598459s |  0.05% |  3.47% )   ( 0.513081s |  0.05% |  3.53% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.155154s |  0.10% |  6.69% )   ( 0.920835s |  0.09% |  6.34% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.561148s |  0.04% |  3.25% )   ( 0.460508s |  0.04% |  3.17% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.499251s |  0.13% |  8.69% )   ( 1.230128s |  0.13% |  8.47% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.760913s |  0.24% | 16.01% )   ( 2.550216s |  0.27% | 17.56% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.615690s |  0.05% |  3.57% )   ( 0.513285s |  0.05% |  3.53% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.528193s |  0.04% |  3.06% )   ( 0.501414s |  0.05% |  3.45% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004670s |  0.00% |  0.00% )   ( 0.005207s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004569s |  0.00% |  0.00% )   ( 0.005091s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004631s |  0.00% |  0.00% )   ( 0.005140s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009201s |  0.00% |  0.05% )   ( 0.009288s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 18.212087s |  1.61% |  3.22% )   ( 15.602372s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001112s |  0.00% |  0.00% )   ( 0.001128s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.210804s |  1.61% | 99.99% )   ( 15.601054s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p20
30.5.0:         ( 0.045931s |  0.00% |  0.25% )   ( 0.045764s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045825s |  0.00% |  0.25% )   ( 0.045590s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.045997s |  0.00% |  0.25% )   ( 0.045830s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.045584s |  0.00% |  0.25% )   ( 0.045332s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.049717s |  0.00% |  0.27% )   ( 0.049524s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004449s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004054s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005107s |  0.00% |  0.00% )   ( 0.005641s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p20
41.5.0:         ( 0.786875s |  0.06% |  0.17% )   ( 0.007244s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004868s |  0.00% |  0.00% )   ( 0.005358s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006130s |  0.00% |  0.00% )   ( 0.005802s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004005s |  0.00% |  0.00% )   ( 0.004460s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004526s |  0.00% |  0.00% )   ( 0.005007s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033937s |  0.00% |  0.00% )   ( 0.028864s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004109s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003981s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.016876s |  0.00% |  0.00% )   ( 0.005345s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005591s |  0.00% |  0.00% )   ( 0.006088s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p20
66.5.0:         ( 0.004546s |  0.00% |  0.00% )   ( 0.005077s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004408s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.054295s |  1.51% |  3.90% )   ( 15.241105s |  1.65% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004372s |  0.00% |  0.02% )   ( 0.004875s |  0.00% |  0.03% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.221745s |  0.10% |  7.16% )   ( 1.027089s |  0.11% |  6.73% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.903824s |  0.16% | 11.16% )   ( 1.763443s |  0.19% | 11.57% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.618280s |  0.14% |  9.48% )   ( 1.459382s |  0.15% |  9.57% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.950714s |  0.17% | 11.43% )   ( 1.750106s |  0.18% | 11.48% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.637438s |  0.14% |  9.60% )   ( 1.415462s |  0.15% |  9.28% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.086833s |  0.09% |  6.37% )   ( 0.917316s |  0.09% |  6.01% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623071s |  0.05% |  3.65% )   ( 0.482799s |  0.05% |  3.16% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.185008s |  0.10% |  6.94% )   ( 0.967732s |  0.10% |  6.34% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.510495s |  0.04% |  2.99% )   ( 0.429507s |  0.04% |  2.81% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379767s |  0.12% |  8.09% )   ( 1.269437s |  0.13% |  8.32% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.888782s |  0.25% | 16.93% )   ( 2.798565s |  0.30% | 18.36% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.541928s |  0.04% |  3.17% )   ( 0.484276s |  0.05% |  3.17% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.502038s |  0.04% |  2.94% )   ( 0.471116s |  0.05% |  3.09% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004059s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.007263s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007407s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000255s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000301s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009607s |  0.00% |  0.05% )   ( 0.009574s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000171s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 18.299168s |  1.62% |  3.23% )   ( 15.129595s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001107s |  0.00% |  0.00% )   ( 0.001124s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 18.297870s |  1.62% | 99.99% )   ( 15.128264s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p21
30.5.0:         ( 0.054005s |  0.00% |  0.29% )   ( 0.051100s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047737s |  0.00% |  0.26% )   ( 0.046812s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.046264s |  0.00% |  0.25% )   ( 0.045524s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.046395s |  0.00% |  0.25% )   ( 0.045681s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.046433s |  0.00% |  0.25% )   ( 0.045622s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004985s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004314s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005526s |  0.00% |  0.00% )   ( 0.006067s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p21
41.5.0:         ( 0.572860s |  0.05% |  0.12% )   ( 0.007293s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004895s |  0.00% |  0.00% )   ( 0.005423s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005317s |  0.00% |  0.00% )   ( 0.005933s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004874s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004613s |  0.00% |  0.00% )   ( 0.005051s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037438s |  0.00% |  0.00% )   ( 0.031691s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004229s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004725s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013680s |  0.00% |  0.00% )   ( 0.005187s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005649s |  0.00% |  0.00% )   ( 0.006160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p21
66.5.0:         ( 0.005760s |  0.00% |  0.00% )   ( 0.005561s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.351286s |  1.53% |  3.79% )   ( 14.763393s |  1.59% |  3.90% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007182s |  0.00% |  0.04% )   ( 0.004701s |  0.00% |  0.03% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.288623s |  0.11% |  7.42% )   ( 0.985083s |  0.10% |  6.67% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.983412s |  0.17% | 11.43% )   ( 1.684240s |  0.18% | 11.40% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.616343s |  0.14% |  9.31% )   ( 1.435207s |  0.15% |  9.72% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.848268s |  0.16% | 10.65% )   ( 1.667798s |  0.18% | 11.29% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.645970s |  0.14% |  9.48% )   ( 1.371851s |  0.14% |  9.29% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.074724s |  0.09% |  6.19% )   ( 0.894387s |  0.09% |  6.05% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.605994s |  0.05% |  3.49% )   ( 0.498076s |  0.05% |  3.37% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.177360s |  0.10% |  6.78% )   ( 0.928043s |  0.10% |  6.28% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.571716s |  0.05% |  3.29% )   ( 0.446654s |  0.04% |  3.02% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.508598s |  0.13% |  8.69% )   ( 1.244200s |  0.13% |  8.42% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.947366s |  0.26% | 16.98% )   ( 2.608849s |  0.28% | 17.67% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.532945s |  0.04% |  3.07% )   ( 0.504975s |  0.05% |  3.42% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542785s |  0.04% |  3.12% )   ( 0.489329s |  0.05% |  3.31% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004224s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004445s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007571s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005442s |  0.00% |  0.02% )   ( 0.005557s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000191s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.929488s |  1.59% |  3.17% )   ( 15.351276s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001220s |  0.00% |  0.00% )   ( 0.001249s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.928096s |  1.59% | 99.99% )   ( 15.349835s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p22
30.5.0:         ( 0.054569s |  0.00% |  0.30% )   ( 0.046479s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045714s |  0.00% |  0.25% )   ( 0.045535s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.045740s |  0.00% |  0.25% )   ( 0.045574s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.045858s |  0.00% |  0.25% )   ( 0.045697s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.046115s |  0.00% |  0.25% )   ( 0.045933s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005388s |  0.00% |  0.00% )   ( 0.005629s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004892s |  0.00% |  0.00% )   ( 0.005481s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005992s |  0.00% |  0.00% )   ( 0.006578s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p22
41.5.0:         ( 0.744625s |  0.06% |  0.14% )   ( 0.008135s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005380s |  0.00% |  0.00% )   ( 0.005934s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.006156s |  0.00% |  0.00% )   ( 0.006776s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004752s |  0.00% |  0.00% )   ( 0.005319s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005456s |  0.00% |  0.00% )   ( 0.006018s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.052430s |  0.00% |  0.01% )   ( 0.035145s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.005057s |  0.00% |  0.00% )   ( 0.005625s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005343s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007520s |  0.00% |  0.00% )   ( 0.005694s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005934s |  0.00% |  0.00% )   ( 0.006504s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p22
66.5.0:         ( 0.005165s |  0.00% |  0.00% )   ( 0.005721s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004332s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.788896s |  1.48% |  3.46% )   ( 14.973544s |  1.62% |  3.61% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005308s |  0.00% |  0.03% )   ( 0.005919s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.168140s |  0.10% |  6.95% )   ( 1.015296s |  0.10% |  6.78% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.932829s |  0.17% | 11.51% )   ( 1.673282s |  0.18% | 11.17% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.677236s |  0.14% |  9.99% )   ( 1.444939s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.863307s |  0.16% | 11.09% )   ( 1.672352s |  0.18% | 11.16% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.549718s |  0.13% |  9.23% )   ( 1.386852s |  0.15% |  9.26% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.164061s |  0.10% |  6.93% )   ( 0.932921s |  0.10% |  6.23% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625238s |  0.05% |  3.72% )   ( 0.530663s |  0.05% |  3.54% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.113977s |  0.09% |  6.63% )   ( 0.948843s |  0.10% |  6.33% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501068s |  0.04% |  2.98% )   ( 0.471188s |  0.05% |  3.14% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337926s |  0.11% |  7.96% )   ( 1.281833s |  0.13% |  8.56% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.711842s |  0.24% | 16.15% )   ( 2.555593s |  0.27% | 17.06% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.561116s |  0.04% |  3.34% )   ( 0.531885s |  0.05% |  3.55% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.577130s |  0.05% |  3.43% )   ( 0.521978s |  0.05% |  3.48% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004670s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005138s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004761s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000297s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000282s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000228s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit
80.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p* 1>&21
81.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.016755s |  0.00% |  0.09% )   ( 0.009917s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.954581s |  1.59% |  3.17% )   ( 14.342884s |  1.55% |  3.10% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001277s |  0.00% |  0.00% )   ( 0.001300s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.953127s |  1.59% | 99.99% )   ( 14.341386s |  1.55% | 99.98% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000596s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p23
30.5.0:         ( 0.070591s |  0.00% |  0.39% )   ( 0.048596s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045710s |  0.00% |  0.25% )   ( 0.045537s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.047686s |  0.00% |  0.26% )   ( 0.047488s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.050603s |  0.00% |  0.28% )   ( 0.050406s |  0.00% |  0.35% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.053141s |  0.00% |  0.29% )   ( 0.052926s |  0.00% |  0.36% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005138s |  0.00% |  0.00% )   ( 0.005695s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004894s |  0.00% |  0.00% )   ( 0.005484s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005753s |  0.00% |  0.00% )   ( 0.006362s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p23
41.5.0:         ( 0.728406s |  0.06% |  0.14% )   ( 0.008235s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005373s |  0.00% |  0.00% )   ( 0.005942s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005830s |  0.00% |  0.00% )   ( 0.006431s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004907s |  0.00% |  0.00% )   ( 0.005483s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005468s |  0.00% |  0.00% )   ( 0.006042s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.044981s |  0.00% |  0.00% )   ( 0.035511s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.005163s |  0.00% |  0.00% )   ( 0.005738s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.008773s |  0.00% |  0.00% )   ( 0.005508s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013402s |  0.00% |  0.00% )   ( 0.005821s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006370s |  0.00% |  0.00% )   ( 0.006943s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p23
66.5.0:         ( 0.008094s |  0.00% |  0.00% )   ( 0.005664s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004782s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.799143s |  1.49% |  3.46% )   ( 13.948793s |  1.51% |  3.60% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004523s |  0.00% |  0.02% )   ( 0.005074s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.217126s |  0.10% |  7.24% )   ( 0.935256s |  0.10% |  6.70% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.894897s |  0.16% | 11.27% )   ( 1.524735s |  0.16% | 10.93% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.605105s |  0.14% |  9.55% )   ( 1.334785s |  0.14% |  9.56% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.805309s |  0.16% | 10.74% )   ( 1.500577s |  0.16% | 10.75% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.520675s |  0.13% |  9.05% )   ( 1.265714s |  0.13% |  9.07% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.115415s |  0.09% |  6.63% )   ( 0.889705s |  0.09% |  6.37% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.646237s |  0.05% |  3.84% )   ( 0.519985s |  0.05% |  3.72% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.071119s |  0.09% |  6.37% )   ( 0.876178s |  0.09% |  6.28% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.550011s |  0.04% |  3.27% )   ( 0.473996s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337106s |  0.11% |  7.95% )   ( 1.193987s |  0.12% |  8.55% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.747642s |  0.24% | 16.35% )   ( 2.379878s |  0.25% | 17.06% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.629361s |  0.05% |  3.74% )   ( 0.525808s |  0.05% |  3.76% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.654617s |  0.05% |  3.89% )   ( 0.523115s |  0.05% |  3.75% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004736s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004888s |  0.00% |  0.00% )   ( 0.005366s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.008191s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009018s |  0.00% |  0.05% )   ( 0.009094s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 21.617763s |  1.91% |  3.82% )   ( 18.973644s |  2.05% |  4.10% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001300s |  0.00% |  0.00% )   ( 0.001330s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 21.616258s |  1.91% | 99.99% )   ( 18.972087s |  2.05% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p24
30.5.0:         ( 0.087269s |  0.00% |  0.40% )   ( 0.047807s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045853s |  0.00% |  0.21% )   ( 0.045672s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.047979s |  0.00% |  0.22% )   ( 0.047805s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.044338s |  0.00% |  0.20% )   ( 0.044159s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.050590s |  0.00% |  0.23% )   ( 0.050396s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005067s |  0.00% |  0.00% )   ( 0.005612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004408s |  0.00% |  0.00% )   ( 0.004964s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005231s |  0.00% |  0.00% )   ( 0.005776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p24
41.5.0:         ( 0.537218s |  0.04% |  0.09% )   ( 0.007251s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004880s |  0.00% |  0.00% )   ( 0.005412s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004978s |  0.00% |  0.00% )   ( 0.005478s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.006342s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005111s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.046607s |  0.00% |  0.00% )   ( 0.034057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005116s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007580s |  0.00% |  0.00% )   ( 0.005359s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005858s |  0.00% |  0.00% )   ( 0.006444s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p24
66.5.0:         ( 0.004846s |  0.00% |  0.00% )   ( 0.005447s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004575s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.665177s |  1.83% |  3.67% )   ( 18.602706s |  2.01% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004548s |  0.00% |  0.02% )   ( 0.005100s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.594148s |  0.14% |  7.71% )   ( 1.370606s |  0.14% |  7.36% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.534642s |  0.22% | 12.26% )   ( 2.294061s |  0.24% | 12.33% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.884215s |  0.16% |  9.11% )   ( 1.713907s |  0.18% |  9.21% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.296595s |  0.20% | 11.11% )   ( 2.078573s |  0.22% | 11.17% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.951871s |  0.17% |  9.44% )   ( 1.661299s |  0.17% |  8.93% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.386908s |  0.12% |  6.71% )   ( 1.204434s |  0.13% |  6.47% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.644892s |  0.05% |  3.12% )   ( 0.563226s |  0.06% |  3.02% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.373963s |  0.12% |  6.64% )   ( 1.226443s |  0.13% |  6.59% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.542171s |  0.04% |  2.62% )   ( 0.490456s |  0.05% |  2.63% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.626419s |  0.14% |  7.87% )   ( 1.505222s |  0.16% |  8.09% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.555288s |  0.31% | 17.20% )   ( 3.409501s |  0.36% | 18.32% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.666859s |  0.05% |  3.22% )   ( 0.550453s |  0.05% |  2.95% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.602658s |  0.05% |  2.91% )   ( 0.529425s |  0.05% |  2.84% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004418s |  0.00% |  0.00% )   ( 0.004917s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007695s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005427s |  0.00% |  0.02% )   ( 0.005513s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000205s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 21.387414s |  1.89% |  3.78% )   ( 19.682897s |  2.13% |  4.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001171s |  0.00% |  0.00% )   ( 0.001192s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 21.386066s |  1.89% | 99.99% )   ( 19.681507s |  2.13% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.003215s |  0.00% |  0.01% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p25
30.5.0:         ( 0.068001s |  0.00% |  0.31% )   ( 0.049313s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.053492s |  0.00% |  0.25% )   ( 0.053261s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.049530s |  0.00% |  0.23% )   ( 0.049348s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.047826s |  0.00% |  0.22% )   ( 0.047663s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.053796s |  0.00% |  0.25% )   ( 0.053578s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003604s |  0.00% |  0.00% )   ( 0.004037s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p25
41.5.0:         ( 0.627699s |  0.05% |  0.15% )   ( 0.005316s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003815s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004340s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003163s |  0.00% |  0.00% )   ( 0.003541s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034552s |  0.00% |  0.00% )   ( 0.023730s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003445s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003297s |  0.00% |  0.00% )   ( 0.003645s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006440s |  0.00% |  0.00% )   ( 0.003813s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p25
66.5.0:         ( 0.006544s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003123s |  0.00% |  0.00% )   ( 0.003485s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.373744s |  1.80% |  5.29% )   ( 19.330456s |  2.09% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003364s |  0.00% |  0.01% )   ( 0.003739s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.534955s |  0.13% |  7.53% )   ( 1.373949s |  0.14% |  7.10% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.734620s |  0.24% | 13.42% )   ( 2.568130s |  0.27% | 13.28% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.897968s |  0.16% |  9.31% )   ( 1.753049s |  0.18% |  9.06% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.464474s |  0.21% | 12.09% )   ( 2.317956s |  0.25% | 11.99% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.768099s |  0.15% |  8.67% )   ( 1.742688s |  0.18% |  9.01% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.203804s |  0.10% |  5.90% )   ( 1.176597s |  0.12% |  6.08% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.457092s |  0.04% |  2.24% )   ( 0.455208s |  0.04% |  2.35% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.289785s |  0.11% |  6.33% )   ( 1.280348s |  0.13% |  6.62% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.388577s |  0.03% |  1.90% )   ( 0.382226s |  0.04% |  1.97% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.602061s |  0.14% |  7.86% )   ( 1.531725s |  0.16% |  7.92% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.032961s |  0.35% | 19.79% )   ( 3.917040s |  0.42% | 20.26% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524209s |  0.04% |  2.57% )   ( 0.428643s |  0.04% |  2.21% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.471775s |  0.04% |  2.31% )   ( 0.399158s |  0.04% |  2.06% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003172s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003270s |  0.00% |  0.00% )   ( 0.003630s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.009309s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006020s |  0.00% |  0.02% )   ( 0.006085s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 18.117003s |  1.60% |  3.20% )   ( 14.754957s |  1.59% |  3.19% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001515s |  0.00% |  0.00% )   ( 0.001548s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 18.115297s |  1.60% | 99.99% )   ( 14.753200s |  1.59% | 99.98% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p26
30.5.0:         ( 0.074400s |  0.00% |  0.41% )   ( 0.049072s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050880s |  0.00% |  0.28% )   ( 0.050624s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.046162s |  0.00% |  0.25% )   ( 0.045967s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.050902s |  0.00% |  0.28% )   ( 0.046106s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.052527s |  0.00% |  0.28% )   ( 0.052321s |  0.00% |  0.35% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005101s |  0.00% |  0.00% )   ( 0.005645s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004606s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005367s |  0.00% |  0.00% )   ( 0.005893s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p26
41.5.0:         ( 0.683038s |  0.06% |  0.14% )   ( 0.007697s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005369s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.005587s |  0.00% |  0.00% )   ( 0.006187s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.004361s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004825s |  0.00% |  0.00% )   ( 0.005369s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038493s |  0.00% |  0.00% )   ( 0.033437s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004465s |  0.00% |  0.00% )   ( 0.004974s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004342s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007771s |  0.00% |  0.00% )   ( 0.005132s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005834s |  0.00% |  0.00% )   ( 0.006390s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p26
66.5.0:         ( 0.007604s |  0.00% |  0.00% )   ( 0.005537s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004545s |  0.00% |  0.00% )   ( 0.005087s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000224s |  0.00% |  0.00% )   ( 0.000253s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.025394s |  1.51% |  3.75% )   ( 14.371526s |  1.55% |  3.89% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004642s |  0.00% |  0.02% )   ( 0.005223s |  0.00% |  0.03% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.217866s |  0.10% |  7.15% )   ( 0.973087s |  0.10% |  6.77% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.794463s |  0.15% | 10.53% )   ( 1.624630s |  0.17% | 11.30% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.609172s |  0.14% |  9.45% )   ( 1.371568s |  0.14% |  9.54% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.038882s |  0.18% | 11.97% )   ( 1.597087s |  0.17% | 11.11% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.638182s |  0.14% |  9.62% )   ( 1.320508s |  0.14% |  9.18% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.066470s |  0.09% |  6.26% )   ( 0.880788s |  0.09% |  6.12% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590220s |  0.05% |  3.46% )   ( 0.499853s |  0.05% |  3.47% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.155118s |  0.10% |  6.78% )   ( 0.911114s |  0.09% |  6.33% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.556265s |  0.04% |  3.26% )   ( 0.445527s |  0.04% |  3.10% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.533588s |  0.13% |  9.00% )   ( 1.217620s |  0.13% |  8.47% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.702362s |  0.23% | 15.87% )   ( 2.536956s |  0.27% | 17.65% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.571029s |  0.05% |  3.35% )   ( 0.498608s |  0.05% |  3.46% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.547135s |  0.04% |  3.21% )   ( 0.488957s |  0.05% |  3.40% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004657s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005235s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004613s |  0.00% |  0.00% )   ( 0.005116s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009045s |  0.00% |  0.04% )   ( 0.009126s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000191s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 19.748863s |  1.75% |  3.49% )   ( 17.198409s |  1.86% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001137s |  0.00% |  0.00% )   ( 0.001161s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 19.747548s |  1.75% | 99.99% )   ( 17.197050s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.qFE3cM"
26.5.0:         ( 0.000224s |  0.00% |  0.00% )   ( 0.000248s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p27
30.5.0:         ( 0.049044s |  0.00% |  0.24% )   ( 0.048763s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049543s |  0.00% |  0.25% )   ( 0.049339s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1838401 ${BASHPID}' INT
33.5.0:         ( 0.052114s |  0.00% |  0.26% )   ( 0.051915s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1838401 ${BASHPID}' TERM
34.5.0:         ( 0.055312s |  0.00% |  0.28% )   ( 0.055100s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1838401 ${BASHPID}' HUP
35.5.0:         ( 0.045913s |  0.00% |  0.23% )   ( 0.045727s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004236s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004070s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.qFE3cM"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004338s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p27
41.5.0:         ( 0.527866s |  0.04% |  0.12% )   ( 0.006030s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004735s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.quit ]]
46.5.0:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004844s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.done ]]
46.5.1:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003992s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030022s |  0.00% |  0.00% )   ( 0.027383s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.qFE3cM"/.wait/p27
66.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004225s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.866189s |  1.67% |  4.77% )   ( 16.834326s |  1.82% |  4.89% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003434s |  0.00% |  0.01% )   ( 0.003852s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.342182s |  0.11% |  7.11% )   ( 1.145095s |  0.12% |  6.80% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.388519s |  0.21% | 12.66% )   ( 2.092337s |  0.22% | 12.42% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.838776s |  0.16% |  9.74% )   ( 1.669512s |  0.18% |  9.91% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.343599s |  0.20% | 12.42% )   ( 2.109236s |  0.22% | 12.52% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.818778s |  0.16% |  9.64% )   ( 1.560585s |  0.16% |  9.27% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.137743s |  0.10% |  6.03% )   ( 1.017839s |  0.11% |  6.04% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535921s |  0.04% |  2.84% )   ( 0.448683s |  0.04% |  2.66% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.127221s |  0.10% |  5.97% )   ( 1.059535s |  0.11% |  6.29% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.506018s |  0.04% |  2.68% )   ( 0.381881s |  0.04% |  2.26% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.495408s |  0.13% |  7.92% )   ( 1.312241s |  0.14% |  7.79% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.365875s |  0.29% | 17.84% )   ( 3.181060s |  0.34% | 18.89% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.504663s |  0.04% |  2.67% )   ( 0.433743s |  0.04% |  2.57% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.458052s |  0.04% |  2.42% )   ( 0.418727s |  0.04% |  2.48% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003709s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004022s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003560s |  0.00% |  0.00% )   ( 0.003949s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008665s |  0.00% |  0.04% )   ( 0.008764s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000175s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001421s |  0.00% |  0.00% )   ( 0.001437s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.005433s |  2.12% |  4.24% )   ( 0.001518s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.048870s |  0.00% |  0.00% )   ( 0.049121s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.qFE3cM"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.qFE3cM"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1838413  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.qFE3cM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000332s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005587s |  0.00% |  0.00% )   ( 0.002521s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.qFE3cM" 2>/dev/null

10.0.0:         ( 562.102774s | 49.87% )            ( 461.826105s | 49.99% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000768s |  0.00% |  0.00% )   ( 0.000468s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 562.102006s | 49.87% | 99.99% )   ( 461.825637s | 49.99% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042988s |  0.00% |  0.00% )   ( 0.042867s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001021s |  0.00% |  0.00% )   ( 0.000780s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.006089s |  0.00% |  0.00% )   ( 0.006089s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.006089s |  0.00% |100.00% )   ( 0.006089s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002043s |  0.00% |  0.00% )   ( 0.002124s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.027261s |  0.00% |  0.00% )   ( 0.000864s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 562.013278s | 49.86% | 99.98% )   ( 461.766050s | 49.99% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001723s |  0.00% |  0.00% )   ( 0.002003s |  0.00% |  0.00% )    	(6x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.001723s |  0.00% |100.00% )   ( 0.002003s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000327s |  0.00% |  0.00% )   ( 0.010796s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003241s |  0.00% |  0.00% )   ( 0.003296s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000124s |  0.00% |100.00% )   ( 0.000139s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000898s |  0.00% |  0.00% )   ( 0.001039s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000072s |  0.00% |  8.01% )   ( 0.000085s |  0.00% |  8.18% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000071s |  0.00% |  7.90% )   ( 0.000084s |  0.00% |  8.08% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000071s |  0.00% |  7.90% )   ( 0.000083s |  0.00% |  7.98% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  7.90% )   ( 0.000083s |  0.00% |  7.98% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.46% )   ( 0.000079s |  0.00% |  7.60% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000073s |  0.00% |  8.12% )   ( 0.000085s |  0.00% |  8.18% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000069s |  0.00% |  7.68% )   ( 0.000081s |  0.00% |  7.79% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000129s |  0.00% | 14.36% )   ( 0.000138s |  0.00% | 13.28% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.34% )   ( 0.000078s |  0.00% |  7.50% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000068s |  0.00% |  7.57% )   ( 0.000079s |  0.00% |  7.60% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000068s |  0.00% |  7.57% )   ( 0.000079s |  0.00% |  7.60% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000073s |  0.00% |  8.12% )   ( 0.000085s |  0.00% |  8.18% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.007212s |  0.00% |  0.00% )   ( 0.007323s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002099s |  0.00% |  0.00% )   ( 0.002186s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000187s |  0.00% |  8.90% )   ( 0.000203s |  0.00% |  9.28% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001912s |  0.00% | 91.09% )   ( 0.001983s |  0.00% | 90.71% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000166s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.002963s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003362s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000091s |  0.00% |100.00% )   ( 0.000107s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001244s |  0.00% |  0.00% )   ( 0.001350s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000576s |  0.00% |  0.00% )   ( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.136747s |  0.01% |  0.02% )   ( 0.136450s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000091s |  0.00% |  0.06% )   ( 0.000104s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021642s |  0.00% | 15.82% )   ( 0.021528s |  0.00% | 15.77% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.024059s |  0.00% | 17.59% )   ( 0.024011s |  0.00% | 17.59% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.024253s |  0.00% | 17.73% )   ( 0.024190s |  0.00% | 17.72% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.024104s |  0.00% | 17.62% )   ( 0.024056s |  0.00% | 17.62% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.024094s |  0.00% | 17.61% )   ( 0.024045s |  0.00% | 17.62% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000079s |  0.00% |  0.05% )   ( 0.000088s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018179s |  0.00% | 13.29% )   ( 0.018144s |  0.00% | 13.29% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000099s |  0.00% |  0.07% )   ( 0.000112s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000077s |  0.00% |  0.05% )   ( 0.000090s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000488s |  0.00% |  0.00% )   ( 0.000514s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.095009s |  0.36% |  0.72% )   ( 2.092248s |  0.22% |  0.45% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024070s |  0.00% |  0.58% )   ( 0.024022s |  0.00% |  1.14% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.024112s |  0.00% |  0.58% )   ( 0.024066s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.024210s |  0.00% |  0.59% )   ( 0.024155s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.024121s |  0.00% |  0.58% )   ( 0.024072s |  0.00% |  1.15% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.024044s |  0.00% |  0.58% )   ( 0.023996s |  0.00% |  1.14% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.106947s |  0.00% |  0.00% )   ( 0.117313s |  0.01% |  0.00% )    	(672x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.278665s |  0.20% |  0.08% )   ( 0.135925s |  0.01% |  0.00% )    	(671x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000875s |  0.00% |  0.00% )   ( 0.000981s |  0.00% |  0.00% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.102671s |  0.00% |  0.00% )   ( 0.115815s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.106668s |  0.00% |  0.00% )   ( 0.120032s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.109374s |  0.00% |  0.00% )   ( 0.117878s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.105307s |  0.00% |  0.00% )   ( 0.118533s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.106784s |  0.00% |  0.00% )   ( 0.119935s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.102137s |  0.00% |  0.00% )   ( 0.115171s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.101655s |  0.00% |  0.00% )   ( 0.114866s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.105022s |  0.00% |  0.00% )   ( 0.114781s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.009154s |  0.00% |  0.22% )   ( 0.009760s |  0.00% |  0.46% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.003904s |  0.00% |  0.09% )   ( 0.004409s |  0.00% |  0.21% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.003904s |  0.00% |100.00% )   ( 0.004409s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.101028s |  0.00% |  0.00% )   ( 0.114066s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.100341s |  0.00% |  0.00% )   ( 0.112796s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.099050s |  0.00% |  0.00% )   ( 0.110717s |  0.01% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.108410s |  0.00% |  0.00% )   ( 0.118650s |  0.01% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.106282s |  0.00% |  0.00% )   ( 0.116564s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.101839s |  0.00% |  0.00% )   ( 0.114919s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.003309s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.003094s |  0.00% |  0.00% )   ( 0.003510s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.082601s |  0.00% |  0.09% )   ( 0.046536s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.007963s |  0.00% |  0.00% )   ( 0.005429s |  0.00% |  0.01% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.004364s |  0.00% |  0.00% )   ( 0.004773s |  0.00% |  0.01% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.007075s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.01% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006910s |  0.00% |  0.16% )   ( 0.006980s |  0.00% |  0.33% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/pAuto
598.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.065105s |  0.00% |  0.01% )   ( 0.065210s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005243s |  0.00% |  0.00% )   ( 0.006018s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000421s |  0.00% |  8.02% )   ( 0.000471s |  0.00% |  7.82% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000073s |  0.00% |  1.39% )   ( 0.000084s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000083s |  0.00% |  1.58% )   ( 0.000094s |  0.00% |  1.56% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000227s |  0.00% |  4.32% )   ( 0.000240s |  0.00% |  3.98% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000080s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000069s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000071s |  0.00% |  1.35% )   ( 0.000082s |  0.00% |  1.36% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000078s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000072s |  0.00% |  1.37% )   ( 0.000085s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000082s |  0.00% |  1.36% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000069s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.31% )   ( 0.000081s |  0.00% |  1.34% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000072s |  0.00% |  1.37% )   ( 0.000084s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.32% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000066s |  0.00% |  1.25% )   ( 0.000077s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000072s |  0.00% |  1.37% )   ( 0.000081s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000065s |  0.00% |  1.23% )   ( 0.000077s |  0.00% |  1.27% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000065s |  0.00% |  1.23% )   ( 0.000076s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000065s |  0.00% |  1.23% )   ( 0.000076s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000098s |  0.00% |  1.86% )   ( 0.000110s |  0.00% |  1.82% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000080s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.39% )   ( 0.000085s |  0.00% |  1.41% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000073s |  0.00% |  1.39% )   ( 0.000085s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000091s |  0.00% |  1.73% )   ( 0.000102s |  0.00% |  1.69% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000078s |  0.00% |  1.48% )   ( 0.000090s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000082s |  0.00% |  1.56% )   ( 0.000090s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000078s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000073s |  0.00% |  1.39% )   ( 0.000084s |  0.00% |  1.39% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000082s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000088s |  0.00% |  1.67% )   ( 0.000100s |  0.00% |  1.66% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000081s |  0.00% |  1.54% )   ( 0.000093s |  0.00% |  1.54% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000076s |  0.00% |  1.44% )   ( 0.000083s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000082s |  0.00% |  1.56% )   ( 0.000094s |  0.00% |  1.56% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000079s |  0.00% |  1.50% )   ( 0.000091s |  0.00% |  1.51% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000075s |  0.00% |  1.43% )   ( 0.000087s |  0.00% |  1.44% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000078s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000083s |  0.00% |  1.58% )   ( 0.000094s |  0.00% |  1.56% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000077s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000073s |  0.00% |  1.39% )   ( 0.000085s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000064s |  0.00% |  1.22% )   ( 0.000076s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000076s |  0.00% |  1.44% )   ( 0.000087s |  0.00% |  1.44% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.35% )   ( 0.000084s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.29% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000091s |  0.00% |  1.73% )   ( 0.000103s |  0.00% |  1.71% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000078s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.22% )   ( 0.000075s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000065s |  0.00% |  1.23% )   ( 0.000076s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.23% )   ( 0.000076s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000087s |  0.00% |  1.65% )   ( 0.000098s |  0.00% |  1.62% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000087s |  0.00% |  1.65% )   ( 0.000099s |  0.00% |  1.64% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000071s |  0.00% |  1.35% )   ( 0.000082s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000067s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000073s |  0.00% |  1.39% )   ( 0.000085s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000081s |  0.00% |  1.54% )   ( 0.000086s |  0.00% |  1.42% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000091s |  0.00% |  1.51% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000070s |  0.00% |  1.33% )   ( 0.000082s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000086s |  0.00% |  1.64% )   ( 0.000098s |  0.00% |  1.62% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000318s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.024557s |  0.00% |  0.00% )   ( 0.024500s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.024441s |  0.00% |  0.00% )   ( 0.024386s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.024563s |  0.00% |  0.00% )   ( 0.171227s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.024455s |  0.00% |  0.00% )   ( 0.024387s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000077s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003197s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002979s |  0.00% |  0.00% )   ( 0.003402s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.357817s |  1.62% |  3.26% )   ( 15.765514s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000679s |  0.00% |  0.00% )   ( 0.000696s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.357036s |  1.62% | 99.99% )   ( 15.764699s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p0
30.5.0:         ( 0.026172s |  0.00% |  0.14% )   ( 0.026115s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024109s |  0.00% |  0.13% )   ( 0.024057s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024071s |  0.00% |  0.13% )   ( 0.024018s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024029s |  0.00% |  0.13% )   ( 0.023981s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024052s |  0.00% |  0.13% )   ( 0.024000s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005343s |  0.00% |  0.00% )   ( 0.005949s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004820s |  0.00% |  0.00% )   ( 0.005396s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000250s |  0.00% |  0.00% )   ( 0.000272s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005882s |  0.00% |  0.00% )   ( 0.006465s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p0
41.5.0:         ( 0.312039s |  0.02% |  0.06% )   ( 0.007509s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007086s |  0.00% |  0.00% )   ( 0.005842s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005617s |  0.00% |  0.00% )   ( 0.006216s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005107s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005227s |  0.00% |  0.00% )   ( 0.005746s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.042413s |  0.00% |  0.00% )   ( 0.033755s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011754s |  0.00% |  0.00% )   ( 0.005827s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006138s |  0.00% |  0.00% )   ( 0.006722s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p0
54.5.0:         ( 0.004939s |  0.00% |  0.00% )   ( 0.005538s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005659s |  0.00% |  0.00% )   ( 0.006128s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.787605s |  1.57% |  3.58% )   ( 15.508960s |  1.67% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005183s |  0.00% |  0.02% )   ( 0.005684s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.351086s |  0.11% |  7.59% )   ( 1.048859s |  0.11% |  6.76% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.962176s |  0.17% | 11.03% )   ( 1.744452s |  0.18% | 11.24% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.816888s |  0.16% | 10.21% )   ( 1.484768s |  0.16% |  9.57% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.951369s |  0.17% | 10.97% )   ( 1.740432s |  0.18% | 11.22% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.627500s |  0.14% |  9.14% )   ( 1.428713s |  0.15% |  9.21% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.100402s |  0.09% |  6.18% )   ( 0.944247s |  0.10% |  6.08% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623701s |  0.05% |  3.50% )   ( 0.522461s |  0.05% |  3.36% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.072019s |  0.09% |  6.02% )   ( 0.969657s |  0.10% |  6.25% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.491899s |  0.04% |  2.76% )   ( 0.461982s |  0.05% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.519039s |  0.13% |  8.53% )   ( 1.304647s |  0.14% |  8.41% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.989355s |  0.26% | 16.80% )   ( 2.803208s |  0.30% | 18.07% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.637160s |  0.05% |  3.58% )   ( 0.531475s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.639828s |  0.05% |  3.59% )   ( 0.518375s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004530s |  0.00% |  0.00% )   ( 0.005085s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005418s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005273s |  0.00% |  0.00% )   ( 0.005804s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008982s |  0.00% |  0.04% )   ( 0.008977s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.003009s |  0.00% |  0.00% )   ( 0.003458s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 18.692722s |  1.65% |  3.32% )   ( 15.519036s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000660s |  0.00% |  0.00% )   ( 0.000681s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 18.691970s |  1.65% | 99.99% )   ( 15.518244s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000326s |  0.00% |  0.00% )   ( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p1
30.5.0:         ( 0.024115s |  0.00% |  0.12% )   ( 0.024064s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024097s |  0.00% |  0.12% )   ( 0.024047s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024044s |  0.00% |  0.12% )   ( 0.023993s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.023949s |  0.00% |  0.12% )   ( 0.023902s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024055s |  0.00% |  0.12% )   ( 0.024005s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004046s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004386s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004781s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p1
41.5.0:         ( 0.565954s |  0.05% |  0.12% )   ( 0.006982s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007422s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005313s |  0.00% |  0.00% )   ( 0.005875s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004521s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004627s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037354s |  0.00% |  0.00% )   ( 0.028701s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004904s |  0.00% |  0.00% )   ( 0.004883s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005422s |  0.00% |  0.00% )   ( 0.005856s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p1
54.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.004975s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005547s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.890584s |  1.58% |  4.16% )   ( 15.283207s |  1.65% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003857s |  0.00% |  0.02% )   ( 0.004245s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.302021s |  0.11% |  7.27% )   ( 1.014996s |  0.10% |  6.64% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.148078s |  0.19% | 12.00% )   ( 1.774549s |  0.19% | 11.61% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.928370s |  0.17% | 10.77% )   ( 1.439562s |  0.15% |  9.41% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.940056s |  0.17% | 10.84% )   ( 1.745351s |  0.18% | 11.42% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.594981s |  0.14% |  8.91% )   ( 1.398172s |  0.15% |  9.14% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.989991s |  0.08% |  5.53% )   ( 0.922312s |  0.09% |  6.03% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.595803s |  0.05% |  3.33% )   ( 0.467348s |  0.05% |  3.05% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101281s |  0.09% |  6.15% )   ( 0.987803s |  0.10% |  6.46% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.470664s |  0.04% |  2.63% )   ( 0.403237s |  0.04% |  2.63% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.588857s |  0.14% |  8.88% )   ( 1.286436s |  0.13% |  8.41% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.171780s |  0.28% | 17.72% )   ( 2.952452s |  0.31% | 19.31% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552781s |  0.04% |  3.08% )   ( 0.453172s |  0.04% |  2.96% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.502064s |  0.04% |  2.80% )   ( 0.433572s |  0.04% |  2.83% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003833s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit
68.5.0:         ( 0.000236s |  0.00% |  0.00% )   ( 0.000253s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p* 1>&21
69.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.009376s |  0.00% |  0.05% )   ( 0.009351s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 18.808655s |  1.66% |  3.34% )   ( 17.166207s |  1.85% |  3.71% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000682s |  0.00% |  0.00% )   ( 0.000697s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 18.807871s |  1.66% | 99.99% )   ( 17.165391s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p2
30.5.0:         ( 0.025982s |  0.00% |  0.13% )   ( 0.025926s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024064s |  0.00% |  0.12% )   ( 0.024016s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024037s |  0.00% |  0.12% )   ( 0.023989s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024060s |  0.00% |  0.12% )   ( 0.024014s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024193s |  0.00% |  0.12% )   ( 0.024143s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004750s |  0.00% |  0.00% )   ( 0.005304s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005258s |  0.00% |  0.00% )   ( 0.005772s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p2
41.5.0:         ( 0.272409s |  0.02% |  0.05% )   ( 0.006979s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006549s |  0.00% |  0.00% )   ( 0.005110s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004963s |  0.00% |  0.00% )   ( 0.005503s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004197s |  0.00% |  0.00% )   ( 0.004669s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004436s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043354s |  0.00% |  0.00% )   ( 0.028303s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010950s |  0.00% |  0.00% )   ( 0.005169s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005344s |  0.00% |  0.00% )   ( 0.005811s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p2
54.5.0:         ( 0.004657s |  0.00% |  0.00% )   ( 0.005172s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004163s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.287202s |  1.62% |  4.05% )   ( 16.926444s |  1.83% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004080s |  0.00% |  0.02% )   ( 0.004566s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.386197s |  0.12% |  7.58% )   ( 1.180123s |  0.12% |  6.97% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.239135s |  0.19% | 12.24% )   ( 2.091171s |  0.22% | 12.35% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.708253s |  0.15% |  9.34% )   ( 1.571395s |  0.17% |  9.28% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.086128s |  0.18% | 11.40% )   ( 1.919612s |  0.20% | 11.34% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.600327s |  0.14% |  8.75% )   ( 1.524127s |  0.16% |  9.00% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.162041s |  0.10% |  6.35% )   ( 1.089892s |  0.11% |  6.43% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539300s |  0.04% |  2.94% )   ( 0.498264s |  0.05% |  2.94% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.173835s |  0.10% |  6.41% )   ( 1.095901s |  0.11% |  6.47% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.518087s |  0.04% |  2.83% )   ( 0.444859s |  0.04% |  2.62% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.630684s |  0.14% |  8.91% )   ( 1.464978s |  0.15% |  8.65% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.160955s |  0.28% | 17.28% )   ( 3.072775s |  0.33% | 18.15% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.543403s |  0.04% |  2.97% )   ( 0.493937s |  0.05% |  2.91% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.534777s |  0.04% |  2.92% )   ( 0.474844s |  0.05% |  2.80% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004684s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008990s |  0.00% |  0.04% )   ( 0.009062s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 19.547427s |  1.73% |  3.47% )   ( 16.608120s |  1.79% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000673s |  0.00% |  0.00% )   ( 0.000696s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 19.546660s |  1.73% | 99.99% )   ( 16.607314s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p3
30.5.0:         ( 0.024068s |  0.00% |  0.12% )   ( 0.024021s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024050s |  0.00% |  0.12% )   ( 0.024005s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024159s |  0.00% |  0.12% )   ( 0.024100s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024040s |  0.00% |  0.12% )   ( 0.023995s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024186s |  0.00% |  0.12% )   ( 0.024125s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004772s |  0.00% |  0.00% )   ( 0.005364s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004534s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000292s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000243s |  0.00% |  0.00% )   ( 0.000279s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000237s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005328s |  0.00% |  0.00% )   ( 0.005881s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p3
41.5.0:         ( 0.371757s |  0.03% |  0.07% )   ( 0.006850s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.011149s |  0.00% |  0.00% )   ( 0.005486s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005234s |  0.00% |  0.00% )   ( 0.005754s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004731s |  0.00% |  0.00% )   ( 0.005257s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.042787s |  0.00% |  0.00% )   ( 0.033595s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008126s |  0.00% |  0.00% )   ( 0.005518s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005456s |  0.00% |  0.00% )   ( 0.006027s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p3
54.5.0:         ( 0.008151s |  0.00% |  0.00% )   ( 0.005740s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004562s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000236s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.924680s |  1.67% |  3.72% )   ( 16.364205s |  1.77% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004333s |  0.00% |  0.02% )   ( 0.004880s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.439162s |  0.12% |  7.60% )   ( 1.124203s |  0.12% |  6.86% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.137312s |  0.18% | 11.29% )   ( 1.931198s |  0.20% | 11.80% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.972297s |  0.17% | 10.42% )   ( 1.615984s |  0.17% |  9.87% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.299454s |  0.20% | 12.15% )   ( 1.958199s |  0.21% | 11.96% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.848785s |  0.16% |  9.76% )   ( 1.572467s |  0.17% |  9.60% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.265053s |  0.11% |  6.68% )   ( 1.008399s |  0.10% |  6.16% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.667417s |  0.05% |  3.52% )   ( 0.508980s |  0.05% |  3.11% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.167551s |  0.10% |  6.16% )   ( 1.024356s |  0.11% |  6.25% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.527213s |  0.04% |  2.78% )   ( 0.461883s |  0.05% |  2.82% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.514598s |  0.13% |  8.00% )   ( 1.315283s |  0.14% |  8.03% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.902346s |  0.25% | 15.33% )   ( 2.821573s |  0.30% | 17.24% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.569399s |  0.05% |  3.00% )   ( 0.515101s |  0.05% |  3.14% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.609760s |  0.05% |  3.22% )   ( 0.501699s |  0.05% |  3.06% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004199s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004730s |  0.00% |  0.00% )   ( 0.005256s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004730s |  0.00% |  0.00% )   ( 0.005187s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005254s |  0.00% |  0.02% )   ( 0.005326s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 19.667208s |  1.74% |  3.49% )   ( 17.324199s |  1.87% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000684s |  0.00% |  0.00% )   ( 0.000703s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 19.666426s |  1.74% | 99.99% )   ( 17.323381s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p4
30.5.0:         ( 0.024053s |  0.00% |  0.12% )   ( 0.024005s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024033s |  0.00% |  0.12% )   ( 0.023985s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024003s |  0.00% |  0.12% )   ( 0.023959s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.023959s |  0.00% |  0.12% )   ( 0.023908s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024091s |  0.00% |  0.12% )   ( 0.024037s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003363s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p4
41.5.0:         ( 0.177706s |  0.01% |  0.04% )   ( 0.004960s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006698s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003057s |  0.00% |  0.00% )   ( 0.003436s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003578s |  0.00% |  0.00% )   ( 0.003959s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033723s |  0.00% |  0.00% )   ( 0.023050s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009880s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005355s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p4
54.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003832s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003134s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.265742s |  1.70% |  5.15% )   ( 17.114508s |  1.85% |  5.19% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003090s |  0.00% |  0.01% )   ( 0.003490s |  0.00% |  0.02% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.362818s |  0.12% |  7.07% )   ( 1.122285s |  0.12% |  6.55% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.255034s |  0.20% | 11.70% )   ( 2.110142s |  0.22% | 12.32% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.909397s |  0.16% |  9.91% )   ( 1.672746s |  0.18% |  9.77% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.394812s |  0.21% | 12.43% )   ( 2.148646s |  0.23% | 12.55% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.853968s |  0.16% |  9.62% )   ( 1.624349s |  0.17% |  9.49% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.106039s |  0.09% |  5.74% )   ( 1.027324s |  0.11% |  6.00% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.492140s |  0.04% |  2.55% )   ( 0.443617s |  0.04% |  2.59% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.225771s |  0.10% |  6.36% )   ( 1.117418s |  0.12% |  6.52% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.453103s |  0.04% |  2.35% )   ( 0.370218s |  0.04% |  2.16% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.636174s |  0.14% |  8.49% )   ( 1.413893s |  0.15% |  8.26% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.606760s |  0.32% | 18.72% )   ( 3.223843s |  0.34% | 18.83% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.499309s |  0.04% |  2.59% )   ( 0.431648s |  0.04% |  2.52% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.467327s |  0.04% |  2.42% )   ( 0.404889s |  0.04% |  2.36% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003165s |  0.00% |  0.00% )   ( 0.003542s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003322s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006519s |  0.00% |  0.00% )   ( 0.003679s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005224s |  0.00% |  0.02% )   ( 0.005291s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 18.785446s |  1.66% |  3.34% )   ( 16.165471s |  1.75% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000706s |  0.00% |  0.00% )   ( 0.000723s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 18.784647s |  1.66% | 99.99% )   ( 16.164638s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p5
30.5.0:         ( 0.024091s |  0.00% |  0.12% )   ( 0.024043s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024945s |  0.00% |  0.13% )   ( 0.024893s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024493s |  0.00% |  0.13% )   ( 0.024441s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024619s |  0.00% |  0.13% )   ( 0.024563s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.025455s |  0.00% |  0.13% )   ( 0.025396s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004538s |  0.00% |  0.00% )   ( 0.005028s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004722s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005293s |  0.00% |  0.00% )   ( 0.005812s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p5
41.5.0:         ( 0.335109s |  0.02% |  0.07% )   ( 0.006959s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004868s |  0.00% |  0.00% )   ( 0.005405s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005226s |  0.00% |  0.00% )   ( 0.005773s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005220s |  0.00% |  0.00% )   ( 0.005592s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040541s |  0.00% |  0.00% )   ( 0.031732s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007987s |  0.00% |  0.00% )   ( 0.005163s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005348s |  0.00% |  0.00% )   ( 0.005886s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p5
54.5.0:         ( 0.004589s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004659s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.207311s |  1.61% |  4.03% )   ( 15.920665s |  1.72% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004185s |  0.00% |  0.02% )   ( 0.004700s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.268285s |  0.11% |  6.96% )   ( 1.067617s |  0.11% |  6.70% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.979968s |  0.17% | 10.87% )   ( 1.829039s |  0.19% | 11.48% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.740746s |  0.15% |  9.56% )   ( 1.520122s |  0.16% |  9.54% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.127596s |  0.18% | 11.68% )   ( 1.833275s |  0.19% | 11.51% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.693615s |  0.15% |  9.30% )   ( 1.482571s |  0.16% |  9.31% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022005s |  0.09% |  5.61% )   ( 0.970649s |  0.10% |  6.09% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.553671s |  0.04% |  3.04% )   ( 0.505846s |  0.05% |  3.17% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.186390s |  0.10% |  6.51% )   ( 1.009925s |  0.10% |  6.34% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.550988s |  0.04% |  3.02% )   ( 0.440130s |  0.04% |  2.76% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.709721s |  0.15% |  9.39% )   ( 1.339887s |  0.14% |  8.41% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.249907s |  0.28% | 17.84% )   ( 2.948400s |  0.31% | 18.51% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.571259s |  0.05% |  3.13% )   ( 0.487250s |  0.05% |  3.06% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.548975s |  0.04% |  3.01% )   ( 0.481254s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004509s |  0.00% |  0.00% )   ( 0.004880s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008286s |  0.00% |  0.04% )   ( 0.008361s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 20.918204s |  1.85% |  3.72% )   ( 18.209825s |  1.97% |  3.94% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000703s |  0.00% |  0.00% )   ( 0.000722s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 20.917407s |  1.85% | 99.99% )   ( 18.208993s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000343s |  0.00% |  0.00% )   ( 0.000394s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p6
30.5.0:         ( 0.024027s |  0.00% |  0.11% )   ( 0.023979s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024045s |  0.00% |  0.11% )   ( 0.023999s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.024065s |  0.00% |  0.11% )   ( 0.024007s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024063s |  0.00% |  0.11% )   ( 0.024010s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.027226s |  0.00% |  0.13% )   ( 0.027152s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005346s |  0.00% |  0.00% )   ( 0.005953s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004961s |  0.00% |  0.00% )   ( 0.005537s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008841s |  0.00% |  0.00% )   ( 0.006441s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p6
41.5.0:         ( 0.360801s |  0.03% |  0.05% )   ( 0.008069s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009693s |  0.00% |  0.00% )   ( 0.006069s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.006696s |  0.00% |  0.00% )   ( 0.007285s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.005236s |  0.00% |  0.00% )   ( 0.005794s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005831s |  0.00% |  0.00% )   ( 0.006403s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.047947s |  0.00% |  0.00% )   ( 0.037032s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009743s |  0.00% |  0.00% )   ( 0.006129s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006324s |  0.00% |  0.00% )   ( 0.006937s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p6
54.5.0:         ( 0.005027s |  0.00% |  0.00% )   ( 0.005630s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004989s |  0.00% |  0.00% )   ( 0.005555s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.290868s |  1.80% |  3.46% )   ( 17.949388s |  1.94% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005075s |  0.00% |  0.02% )   ( 0.005645s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.559823s |  0.13% |  7.68% )   ( 1.308948s |  0.14% |  7.29% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.416625s |  0.21% | 11.90% )   ( 2.085166s |  0.22% | 11.61% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.958523s |  0.17% |  9.65% )   ( 1.654713s |  0.17% |  9.21% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.183087s |  0.19% | 10.75% )   ( 1.972394s |  0.21% | 10.98% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.693185s |  0.15% |  8.34% )   ( 1.613909s |  0.17% |  8.99% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.289187s |  0.11% |  6.35% )   ( 1.153681s |  0.12% |  6.42% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.718898s |  0.06% |  3.54% )   ( 0.589387s |  0.06% |  3.28% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.399735s |  0.12% |  6.89% )   ( 1.184713s |  0.12% |  6.60% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.602298s |  0.05% |  2.96% )   ( 0.510121s |  0.05% |  2.84% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.618916s |  0.14% |  7.97% )   ( 1.493591s |  0.16% |  8.32% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.422977s |  0.30% | 16.86% )   ( 3.240483s |  0.35% | 18.05% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.746923s |  0.06% |  3.68% )   ( 0.575538s |  0.06% |  3.20% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.675616s |  0.05% |  3.32% )   ( 0.561099s |  0.06% |  3.12% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005258s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004916s |  0.00% |  0.00% )   ( 0.005498s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005240s |  0.00% |  0.00% )   ( 0.005737s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005346s |  0.00% |  0.02% )   ( 0.005437s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 19.179334s |  1.70% |  3.41% )   ( 15.329113s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000683s |  0.00% |  0.00% )   ( 0.000703s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 19.178554s |  1.70% | 99.99% )   ( 15.328296s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000405s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p7
30.5.0:         ( 0.027277s |  0.00% |  0.14% )   ( 0.027221s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038686s |  0.00% |  0.20% )   ( 0.038561s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.045994s |  0.00% |  0.23% )   ( 0.045831s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046069s |  0.00% |  0.24% )   ( 0.045896s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046051s |  0.00% |  0.24% )   ( 0.045880s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005449s |  0.00% |  0.00% )   ( 0.005836s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004783s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005559s |  0.00% |  0.00% )   ( 0.006140s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p7
41.5.0:         ( 0.529867s |  0.04% |  0.09% )   ( 0.007298s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005150s |  0.00% |  0.00% )   ( 0.005673s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005405s |  0.00% |  0.00% )   ( 0.006005s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004375s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004866s |  0.00% |  0.00% )   ( 0.005407s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.048923s |  0.00% |  0.00% )   ( 0.036144s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010092s |  0.00% |  0.00% )   ( 0.005761s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005975s |  0.00% |  0.00% )   ( 0.006542s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p7
54.5.0:         ( 0.004926s |  0.00% |  0.00% )   ( 0.005522s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004885s |  0.00% |  0.00% )   ( 0.005297s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.310574s |  1.62% |  3.53% )   ( 14.996571s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007732s |  0.00% |  0.04% )   ( 0.005214s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.386653s |  0.12% |  7.57% )   ( 1.037486s |  0.11% |  6.91% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.163367s |  0.19% | 11.81% )   ( 1.716035s |  0.18% | 11.44% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.818166s |  0.16% |  9.92% )   ( 1.429534s |  0.15% |  9.53% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.894230s |  0.16% | 10.34% )   ( 1.634953s |  0.17% | 10.90% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.642317s |  0.14% |  8.96% )   ( 1.367199s |  0.14% |  9.11% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.127992s |  0.10% |  6.16% )   ( 0.935360s |  0.10% |  6.23% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.668927s |  0.05% |  3.65% )   ( 0.531529s |  0.05% |  3.54% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.073972s |  0.09% |  5.86% )   ( 0.951329s |  0.10% |  6.34% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.625197s |  0.05% |  3.41% )   ( 0.475105s |  0.05% |  3.16% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.602122s |  0.14% |  8.74% )   ( 1.256591s |  0.13% |  8.37% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.971124s |  0.26% | 16.22% )   ( 2.595793s |  0.28% | 17.30% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.679916s |  0.06% |  3.71% )   ( 0.536190s |  0.05% |  3.57% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.648859s |  0.05% |  3.54% )   ( 0.524253s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004602s |  0.00% |  0.00% )   ( 0.005155s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007480s |  0.00% |  0.00% )   ( 0.005011s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004912s |  0.00% |  0.00% )   ( 0.005441s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005160s |  0.00% |  0.02% )   ( 0.005220s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 20.692947s |  1.83% |  3.68% )   ( 18.712218s |  2.02% |  4.05% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000696s |  0.00% |  0.00% )   ( 0.000719s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 20.692158s |  1.83% | 99.99% )   ( 18.711389s |  2.02% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p8
30.5.0:         ( 0.024187s |  0.00% |  0.11% )   ( 0.024072s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028525s |  0.00% |  0.13% )   ( 0.025564s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.027253s |  0.00% |  0.13% )   ( 0.024349s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.024278s |  0.00% |  0.11% )   ( 0.024151s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.027041s |  0.00% |  0.13% )   ( 0.024998s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003043s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002836s |  0.00% |  0.00% )   ( 0.003173s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003573s |  0.00% |  0.00% )   ( 0.003797s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p8
41.5.0:         ( 0.234239s |  0.02% |  0.07% )   ( 0.004108s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002635s |  0.00% |  0.00% )   ( 0.002952s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.002889s |  0.00% |  0.00% )   ( 0.003160s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.002300s |  0.00% |  0.00% )   ( 0.002590s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002723s |  0.00% |  0.00% )   ( 0.003005s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023785s |  0.00% |  0.00% )   ( 0.018102s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.013475s |  0.00% |  0.00% )   ( 0.003158s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003122s |  0.00% |  0.00% )   ( 0.003438s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p8
54.5.0:         ( 0.002795s |  0.00% |  0.00% )   ( 0.003127s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002357s |  0.00% |  0.00% )   ( 0.002651s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.246743s |  1.79% |  6.52% )   ( 18.516145s |  2.00% |  6.59% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002595s |  0.00% |  0.01% )   ( 0.002926s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.466904s |  0.13% |  7.24% )   ( 1.278165s |  0.13% |  6.90% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.764796s |  0.24% | 13.65% )   ( 2.455697s |  0.26% | 13.26% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.979051s |  0.17% |  9.77% )   ( 1.839985s |  0.19% |  9.93% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.650907s |  0.23% | 13.09% )   ( 2.438143s |  0.26% | 13.16% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.006316s |  0.17% |  9.90% )   ( 1.832606s |  0.19% |  9.89% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.177557s |  0.10% |  5.81% )   ( 1.100485s |  0.11% |  5.94% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.480190s |  0.04% |  2.37% )   ( 0.400032s |  0.04% |  2.16% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.342832s |  0.11% |  6.63% )   ( 1.234242s |  0.13% |  6.66% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.388979s |  0.03% |  1.92% )   ( 0.337516s |  0.03% |  1.82% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.658964s |  0.14% |  8.19% )   ( 1.570068s |  0.16% |  8.47% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.504578s |  0.31% | 17.30% )   ( 3.316537s |  0.35% | 17.91% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.412038s |  0.03% |  2.03% )   ( 0.365727s |  0.03% |  1.97% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.411036s |  0.03% |  2.03% )   ( 0.344016s |  0.03% |  1.85% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002817s |  0.00% |  0.00% )   ( 0.003144s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002567s |  0.00% |  0.00% )   ( 0.002872s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002431s |  0.00% |  0.00% )   ( 0.002709s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005748s |  0.00% |  0.02% )   ( 0.005831s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 18.242510s |  1.61% |  3.24% )   ( 14.959259s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000682s |  0.00% |  0.00% )   ( 0.000701s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 18.241735s |  1.61% | 99.99% )   ( 14.958449s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p9
30.5.0:         ( 0.027925s |  0.00% |  0.15% )   ( 0.027857s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026135s |  0.00% |  0.14% )   ( 0.026071s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.025141s |  0.00% |  0.13% )   ( 0.025079s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.025451s |  0.00% |  0.13% )   ( 0.025391s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024046s |  0.00% |  0.13% )   ( 0.023996s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005050s |  0.00% |  0.00% )   ( 0.005621s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004969s |  0.00% |  0.00% )   ( 0.005536s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005617s |  0.00% |  0.00% )   ( 0.006179s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p9
41.5.0:         ( 0.384855s |  0.03% |  0.07% )   ( 0.007564s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005265s |  0.00% |  0.00% )   ( 0.005733s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005678s |  0.00% |  0.00% )   ( 0.006218s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005435s |  0.00% |  0.00% )   ( 0.005992s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.049246s |  0.00% |  0.01% )   ( 0.034575s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010701s |  0.00% |  0.00% )   ( 0.005927s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006312s |  0.00% |  0.00% )   ( 0.006872s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p9
54.5.0:         ( 0.008453s |  0.00% |  0.00% )   ( 0.006044s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004900s |  0.00% |  0.00% )   ( 0.005433s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.586309s |  1.56% |  3.70% )   ( 14.695920s |  1.59% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004797s |  0.00% |  0.02% )   ( 0.005303s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.305707s |  0.11% |  7.42% )   ( 0.997958s |  0.10% |  6.79% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.025022s |  0.17% | 11.51% )   ( 1.651259s |  0.17% | 11.23% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.738193s |  0.15% |  9.88% )   ( 1.432401s |  0.15% |  9.74% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.951315s |  0.17% | 11.09% )   ( 1.625032s |  0.17% | 11.05% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.635626s |  0.14% |  9.30% )   ( 1.356013s |  0.14% |  9.22% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.183230s |  0.10% |  6.72% )   ( 0.905641s |  0.09% |  6.16% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.679055s |  0.06% |  3.86% )   ( 0.511271s |  0.05% |  3.47% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101117s |  0.09% |  6.26% )   ( 0.923675s |  0.10% |  6.28% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.579416s |  0.05% |  3.29% )   ( 0.456677s |  0.04% |  3.10% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.384224s |  0.12% |  7.87% )   ( 1.243984s |  0.13% |  8.46% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.783910s |  0.24% | 15.82% )   ( 2.566107s |  0.27% | 17.46% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.606969s |  0.05% |  3.45% )   ( 0.514930s |  0.05% |  3.50% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.607728s |  0.05% |  3.45% )   ( 0.505669s |  0.05% |  3.44% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004552s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005167s |  0.00% |  0.00% )   ( 0.005694s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005249s |  0.00% |  0.00% )   ( 0.005761s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009814s |  0.00% |  0.05% )   ( 0.009788s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.368687s |  1.71% |  3.44% )   ( 16.844872s |  1.82% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000851s |  0.00% |  0.00% )   ( 0.000873s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.367642s |  1.71% | 99.99% )   ( 16.843783s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p10
30.5.0:         ( 0.046214s |  0.00% |  0.23% )   ( 0.046067s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046224s |  0.00% |  0.23% )   ( 0.046058s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046322s |  0.00% |  0.23% )   ( 0.046152s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046171s |  0.00% |  0.23% )   ( 0.046007s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046316s |  0.00% |  0.23% )   ( 0.046149s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003688s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004446s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p10
41.5.0:         ( 0.326812s |  0.02% |  0.07% )   ( 0.005784s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005327s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004688s |  0.00% |  0.00% )   ( 0.005184s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004245s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004448s |  0.00% |  0.00% )   ( 0.004925s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043898s |  0.00% |  0.01% )   ( 0.028265s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.012482s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005061s |  0.00% |  0.00% )   ( 0.005527s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p10
54.5.0:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003624s |  0.00% |  0.00% )   ( 0.003996s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.692026s |  1.65% |  4.59% )   ( 16.508659s |  1.78% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003605s |  0.00% |  0.01% )   ( 0.004049s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.214763s |  0.10% |  6.49% )   ( 1.092674s |  0.11% |  6.61% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.173169s |  0.19% | 11.62% )   ( 1.956272s |  0.21% | 11.84% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.817900s |  0.16% |  9.72% )   ( 1.578425s |  0.17% |  9.56% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.245856s |  0.19% | 12.01% )   ( 1.959084s |  0.21% | 11.86% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.669563s |  0.14% |  8.93% )   ( 1.538110s |  0.16% |  9.31% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.154675s |  0.10% |  6.17% )   ( 0.983538s |  0.10% |  5.95% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.516503s |  0.04% |  2.76% )   ( 0.468267s |  0.05% |  2.83% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.254520s |  0.11% |  6.71% )   ( 1.071311s |  0.11% |  6.48% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.494345s |  0.04% |  2.64% )   ( 0.413830s |  0.04% |  2.50% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.664271s |  0.14% |  8.90% )   ( 1.366711s |  0.14% |  8.27% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.477745s |  0.30% | 18.60% )   ( 3.205654s |  0.34% | 19.41% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.513833s |  0.04% |  2.74% )   ( 0.446796s |  0.04% |  2.70% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491278s |  0.04% |  2.62% )   ( 0.423938s |  0.04% |  2.56% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003731s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004290s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005228s |  0.00% |  0.02% )   ( 0.005305s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000194s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 18.798084s |  1.66% |  3.34% )   ( 16.964977s |  1.83% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000985s |  0.00% |  0.00% )   ( 0.001010s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.796935s |  1.66% | 99.99% )   ( 16.963776s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p11
30.5.0:         ( 0.044441s |  0.00% |  0.23% )   ( 0.044240s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024200s |  0.00% |  0.12% )   ( 0.024140s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.026126s |  0.00% |  0.13% )   ( 0.026053s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.026883s |  0.00% |  0.14% )   ( 0.026802s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.024192s |  0.00% |  0.12% )   ( 0.024109s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004637s |  0.00% |  0.00% )   ( 0.005124s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005045s |  0.00% |  0.00% )   ( 0.005571s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p11
41.5.0:         ( 0.264254s |  0.02% |  0.05% )   ( 0.006667s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004573s |  0.00% |  0.00% )   ( 0.004990s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003860s |  0.00% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004593s |  0.00% |  0.00% )   ( 0.004987s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038773s |  0.00% |  0.00% )   ( 0.031943s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004767s |  0.00% |  0.00% )   ( 0.005281s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008286s |  0.00% |  0.00% )   ( 0.006235s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p11
54.5.0:         ( 0.004523s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004190s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.271536s |  1.62% |  4.05% )   ( 16.698762s |  1.80% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004088s |  0.00% |  0.02% )   ( 0.004608s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.382827s |  0.12% |  7.56% )   ( 1.110005s |  0.12% |  6.64% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.186982s |  0.19% | 11.96% )   ( 1.910267s |  0.20% | 11.43% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.712212s |  0.15% |  9.37% )   ( 1.580149s |  0.17% |  9.46% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.028387s |  0.17% | 11.10% )   ( 1.932200s |  0.20% | 11.57% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.688388s |  0.14% |  9.24% )   ( 1.569448s |  0.16% |  9.39% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.146266s |  0.10% |  6.27% )   ( 1.008168s |  0.10% |  6.03% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.602082s |  0.05% |  3.29% )   ( 0.506691s |  0.05% |  3.03% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.210740s |  0.10% |  6.62% )   ( 1.073041s |  0.11% |  6.42% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.451005s |  0.04% |  2.46% )   ( 0.444514s |  0.04% |  2.66% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.509591s |  0.13% |  8.26% )   ( 1.396838s |  0.15% |  8.36% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.259004s |  0.28% | 17.83% )   ( 3.189102s |  0.34% | 19.09% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.534512s |  0.04% |  2.92% )   ( 0.493800s |  0.05% |  2.95% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555452s |  0.04% |  3.03% )   ( 0.479931s |  0.05% |  2.87% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004227s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004711s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004447s |  0.00% |  0.00% )   ( 0.004925s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009314s |  0.00% |  0.04% )   ( 0.009398s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 21.436269s |  1.90% |  3.81% )   ( 18.753987s |  2.03% |  4.06% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000996s |  0.00% |  0.00% )   ( 0.001018s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 21.435113s |  1.90% | 99.99% )   ( 18.752788s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p12
30.5.0:         ( 0.024670s |  0.00% |  0.11% )   ( 0.024576s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045666s |  0.00% |  0.21% )   ( 0.045512s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.045776s |  0.00% |  0.21% )   ( 0.045630s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.045761s |  0.00% |  0.21% )   ( 0.045614s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.045665s |  0.00% |  0.21% )   ( 0.045496s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005145s |  0.00% |  0.00% )   ( 0.005713s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004968s |  0.00% |  0.00% )   ( 0.005546s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005624s |  0.00% |  0.00% )   ( 0.006201s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p12
41.5.0:         ( 0.389230s |  0.03% |  0.06% )   ( 0.007816s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005142s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.006144s |  0.00% |  0.00% )   ( 0.006668s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004644s |  0.00% |  0.00% )   ( 0.005176s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005221s |  0.00% |  0.00% )   ( 0.005789s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.046921s |  0.00% |  0.00% )   ( 0.035318s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.017509s |  0.00% |  0.00% )   ( 0.006132s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008071s |  0.00% |  0.00% )   ( 0.006624s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p12
54.5.0:         ( 0.005063s |  0.00% |  0.00% )   ( 0.005648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004945s |  0.00% |  0.00% )   ( 0.005519s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.696498s |  1.83% |  3.57% )   ( 18.413866s |  1.99% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004773s |  0.00% |  0.02% )   ( 0.005354s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.574046s |  0.13% |  7.60% )   ( 1.370424s |  0.14% |  7.44% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.259242s |  0.20% | 10.91% )   ( 2.094893s |  0.22% | 11.37% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.905009s |  0.16% |  9.20% )   ( 1.711987s |  0.18% |  9.29% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.281995s |  0.20% | 11.02% )   ( 2.061914s |  0.22% | 11.19% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.757838s |  0.15% |  8.49% )   ( 1.648832s |  0.17% |  8.95% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.287734s |  0.11% |  6.22% )   ( 1.190190s |  0.12% |  6.46% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.726333s |  0.06% |  3.50% )   ( 0.586180s |  0.06% |  3.18% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.452245s |  0.12% |  7.01% )   ( 1.216422s |  0.13% |  6.60% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.640130s |  0.05% |  3.09% )   ( 0.518418s |  0.05% |  2.81% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.796886s |  0.15% |  8.68% )   ( 1.563849s |  0.16% |  8.49% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.719909s |  0.33% | 17.97% )   ( 3.325481s |  0.36% | 18.05% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.633819s |  0.05% |  3.06% )   ( 0.574222s |  0.06% |  3.11% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.656539s |  0.05% |  3.17% )   ( 0.545700s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005311s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004609s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005209s |  0.00% |  0.00% )   ( 0.005732s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006747s |  0.00% |  0.03% )   ( 0.006797s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.243413s |  1.61% |  3.24% )   ( 15.312658s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.242220s |  1.61% | 99.99% )   ( 15.311421s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p13
30.5.0:         ( 0.045760s |  0.00% |  0.25% )   ( 0.045615s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045766s |  0.00% |  0.25% )   ( 0.045620s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.045712s |  0.00% |  0.25% )   ( 0.045566s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.045685s |  0.00% |  0.25% )   ( 0.045519s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.047627s |  0.00% |  0.26% )   ( 0.047444s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.008728s |  0.00% |  0.00% )   ( 0.006350s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.005470s |  0.00% |  0.00% )   ( 0.006033s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010775s |  0.00% |  0.00% )   ( 0.007014s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p13
41.5.0:         ( 0.395440s |  0.03% |  0.07% )   ( 0.008232s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005532s |  0.00% |  0.00% )   ( 0.006153s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005747s |  0.00% |  0.00% )   ( 0.006370s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.007935s |  0.00% |  0.00% )   ( 0.005489s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005161s |  0.00% |  0.00% )   ( 0.005704s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040910s |  0.00% |  0.00% )   ( 0.038088s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008552s |  0.00% |  0.00% )   ( 0.006140s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006287s |  0.00% |  0.00% )   ( 0.006910s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p13
54.5.0:         ( 0.008192s |  0.00% |  0.00% )   ( 0.005780s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.009122s |  0.00% |  0.00% )   ( 0.005615s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.468336s |  1.54% |  3.30% )   ( 14.940289s |  1.61% |  3.36% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005218s |  0.00% |  0.02% )   ( 0.005860s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.211662s |  0.10% |  6.93% )   ( 1.013313s |  0.10% |  6.78% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.872592s |  0.16% | 10.71% )   ( 1.622334s |  0.17% | 10.85% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.756405s |  0.15% | 10.05% )   ( 1.433601s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.021420s |  0.17% | 11.57% )   ( 1.615120s |  0.17% | 10.81% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597789s |  0.14% |  9.14% )   ( 1.373369s |  0.14% |  9.19% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.177665s |  0.10% |  6.74% )   ( 0.937258s |  0.10% |  6.27% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.650803s |  0.05% |  3.72% )   ( 0.565000s |  0.06% |  3.78% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.118302s |  0.09% |  6.40% )   ( 0.947674s |  0.10% |  6.34% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.634618s |  0.05% |  3.63% )   ( 0.514110s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.381460s |  0.12% |  7.90% )   ( 1.275025s |  0.13% |  8.53% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.666211s |  0.23% | 15.26% )   ( 2.493100s |  0.26% | 16.68% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.710194s |  0.06% |  4.06% )   ( 0.575934s |  0.06% |  3.85% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.663997s |  0.05% |  3.80% )   ( 0.568591s |  0.06% |  3.80% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005358s |  0.00% |  0.00% )   ( 0.005983s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004856s |  0.00% |  0.00% )   ( 0.005431s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005261s |  0.00% |  0.00% )   ( 0.005786s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008478s |  0.00% |  0.04% )   ( 0.008560s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 19.426822s |  1.72% |  3.45% )   ( 17.575599s |  1.90% |  3.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001033s |  0.00% |  0.00% )   ( 0.001053s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.425632s |  1.72% | 99.99% )   ( 17.574364s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000305s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p14
30.5.0:         ( 0.047654s |  0.00% |  0.24% )   ( 0.042747s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047501s |  0.00% |  0.24% )   ( 0.047317s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.040446s |  0.00% |  0.20% )   ( 0.040298s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046320s |  0.00% |  0.23% )   ( 0.046136s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.047884s |  0.00% |  0.24% )   ( 0.047665s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003294s |  0.00% |  0.00% )   ( 0.003655s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.003071s |  0.00% |  0.00% )   ( 0.003402s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004119s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p14
41.5.0:         ( 0.174716s |  0.01% |  0.04% )   ( 0.004454s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.003902s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.005880s |  0.00% |  0.00% )   ( 0.003457s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003263s |  0.00% |  0.00% )   ( 0.003546s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021158s |  0.00% |  0.00% )   ( 0.021453s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006437s |  0.00% |  0.00% )   ( 0.003569s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004238s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p14
54.5.0:         ( 0.003435s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.940804s |  1.68% |  5.73% )   ( 17.266414s |  1.86% |  5.77% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003279s |  0.00% |  0.01% )   ( 0.003657s |  0.00% |  0.02% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.295601s |  0.11% |  6.84% )   ( 1.141849s |  0.12% |  6.61% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.336703s |  0.20% | 12.33% )   ( 2.103210s |  0.22% | 12.18% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.929273s |  0.17% | 10.18% )   ( 1.619954s |  0.17% |  9.38% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.290699s |  0.20% | 12.09% )   ( 2.100771s |  0.22% | 12.16% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.712628s |  0.15% |  9.04% )   ( 1.588011s |  0.17% |  9.19% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.183674s |  0.10% |  6.24% )   ( 1.108060s |  0.11% |  6.41% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.538742s |  0.04% |  2.84% )   ( 0.432511s |  0.04% |  2.50% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.267644s |  0.11% |  6.69% )   ( 1.149253s |  0.12% |  6.65% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.408492s |  0.03% |  2.15% )   ( 0.368595s |  0.03% |  2.13% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.584079s |  0.14% |  8.36% )   ( 1.494931s |  0.16% |  8.65% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.479015s |  0.30% | 18.36% )   ( 3.357614s |  0.36% | 19.44% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.472385s |  0.04% |  2.49% )   ( 0.414978s |  0.04% |  2.40% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.438590s |  0.03% |  2.31% )   ( 0.383020s |  0.04% |  2.21% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002937s |  0.00% |  0.00% )   ( 0.003301s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003010s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005143s |  0.00% |  0.02% )   ( 0.005224s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 18.300922s |  1.62% |  3.25% )   ( 15.036888s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001056s |  0.00% |  0.00% )   ( 0.001079s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 18.299700s |  1.62% | 99.99% )   ( 15.035621s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p15
30.5.0:         ( 0.036078s |  0.00% |  0.19% )   ( 0.035564s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.032055s |  0.00% |  0.17% )   ( 0.031542s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.042584s |  0.00% |  0.23% )   ( 0.041977s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046407s |  0.00% |  0.25% )   ( 0.045796s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046101s |  0.00% |  0.25% )   ( 0.045480s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.008099s |  0.00% |  0.00% )   ( 0.005548s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005086s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005677s |  0.00% |  0.00% )   ( 0.006157s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p15
41.5.0:         ( 0.337969s |  0.02% |  0.07% )   ( 0.007000s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004802s |  0.00% |  0.00% )   ( 0.005312s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004828s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004453s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004680s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.044422s |  0.00% |  0.00% )   ( 0.033410s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006136s |  0.00% |  0.00% )   ( 0.005237s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006945s |  0.00% |  0.00% )   ( 0.006430s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p15
54.5.0:         ( 0.005013s |  0.00% |  0.00% )   ( 0.005438s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004694s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.629771s |  1.56% |  3.85% )   ( 14.708998s |  1.59% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004430s |  0.00% |  0.02% )   ( 0.004949s |  0.00% |  0.03% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.303459s |  0.11% |  7.39% )   ( 0.983911s |  0.10% |  6.68% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.979429s |  0.17% | 11.22% )   ( 1.668951s |  0.18% | 11.34% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.820451s |  0.16% | 10.32% )   ( 1.431191s |  0.15% |  9.73% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.930342s |  0.17% | 10.94% )   ( 1.633635s |  0.17% | 11.10% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.631442s |  0.14% |  9.25% )   ( 1.349915s |  0.14% |  9.17% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.124084s |  0.09% |  6.37% )   ( 0.902263s |  0.09% |  6.13% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.608853s |  0.05% |  3.45% )   ( 0.508441s |  0.05% |  3.45% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.135685s |  0.10% |  6.44% )   ( 0.925236s |  0.10% |  6.29% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553835s |  0.04% |  3.14% )   ( 0.445178s |  0.04% |  3.02% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.500888s |  0.13% |  8.51% )   ( 1.241428s |  0.13% |  8.43% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.877157s |  0.25% | 16.31% )   ( 2.616350s |  0.28% | 17.78% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.572467s |  0.05% |  3.24% )   ( 0.501767s |  0.05% |  3.41% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.587249s |  0.05% |  3.33% )   ( 0.495783s |  0.05% |  3.37% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004387s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004577s |  0.00% |  0.00% )   ( 0.005031s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005330s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009323s |  0.00% |  0.05% )   ( 0.009298s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.788381s |  1.66% |  3.34% )   ( 16.156388s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001036s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.787182s |  1.66% | 99.99% )   ( 16.155140s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p16
30.5.0:         ( 0.046784s |  0.00% |  0.24% )   ( 0.046590s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046581s |  0.00% |  0.24% )   ( 0.046373s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046323s |  0.00% |  0.24% )   ( 0.046118s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046604s |  0.00% |  0.24% )   ( 0.046402s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046429s |  0.00% |  0.24% )   ( 0.046227s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004058s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003522s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003987s |  0.00% |  0.00% )   ( 0.004407s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p16
41.5.0:         ( 0.317751s |  0.02% |  0.08% )   ( 0.005288s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.003837s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003960s |  0.00% |  0.00% )   ( 0.003553s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003599s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033709s |  0.00% |  0.00% )   ( 0.024787s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006682s |  0.00% |  0.00% )   ( 0.004049s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p16
54.5.0:         ( 0.006511s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003252s |  0.00% |  0.00% )   ( 0.003648s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.135014s |  1.60% |  5.08% )   ( 15.826487s |  1.71% |  5.15% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004313s |  0.00% |  0.02% )   ( 0.004140s |  0.00% |  0.02% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.276939s |  0.11% |  7.04% )   ( 1.028764s |  0.11% |  6.50% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.201271s |  0.19% | 12.13% )   ( 1.904677s |  0.20% | 12.03% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.785978s |  0.15% |  9.84% )   ( 1.522976s |  0.16% |  9.62% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.109899s |  0.18% | 11.63% )   ( 1.884558s |  0.20% | 11.90% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.758097s |  0.15% |  9.69% )   ( 1.492320s |  0.16% |  9.42% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015712s |  0.09% |  5.60% )   ( 0.956539s |  0.10% |  6.04% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512521s |  0.04% |  2.82% )   ( 0.436175s |  0.04% |  2.75% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.161314s |  0.10% |  6.40% )   ( 1.003510s |  0.10% |  6.34% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450965s |  0.04% |  2.48% )   ( 0.375874s |  0.04% |  2.37% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.526021s |  0.13% |  8.41% )   ( 1.298995s |  0.14% |  8.20% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.313529s |  0.29% | 18.27% )   ( 3.097851s |  0.33% | 19.57% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.516060s |  0.04% |  2.84% )   ( 0.423235s |  0.04% |  2.67% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.502395s |  0.04% |  2.77% )   ( 0.396873s |  0.04% |  2.50% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003607s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003659s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003598s |  0.00% |  0.00% )   ( 0.003903s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009355s |  0.00% |  0.04% )   ( 0.009330s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 19.529499s |  1.73% |  3.47% )   ( 18.184348s |  1.96% |  3.93% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001016s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 19.528320s |  1.73% | 99.99% )   ( 18.183122s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p17
30.5.0:         ( 0.047817s |  0.00% |  0.24% )   ( 0.047622s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.032920s |  0.00% |  0.16% )   ( 0.032804s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.044848s |  0.00% |  0.22% )   ( 0.044685s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.043731s |  0.00% |  0.22% )   ( 0.043572s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.045933s |  0.00% |  0.23% )   ( 0.045745s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002676s |  0.00% |  0.00% )   ( 0.002990s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   true
38.5.0:         ( 0.002441s |  0.00% |  0.00% )   ( 0.002752s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002955s |  0.00% |  0.00% )   ( 0.003229s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p17
41.5.0:         ( 0.201847s |  0.01% |  0.07% )   ( 0.003865s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002748s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.003073s |  0.00% |  0.00% )   ( 0.003396s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.002218s |  0.00% |  0.00% )   ( 0.002491s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002662s |  0.00% |  0.00% )   ( 0.002933s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025188s |  0.00% |  0.00% )   ( 0.016311s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006381s |  0.00% |  0.00% )   ( 0.003092s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p17
54.5.0:         ( 0.002663s |  0.00% |  0.00% )   ( 0.002961s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002431s |  0.00% |  0.00% )   ( 0.002637s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.035200s |  1.68% |  7.49% )   ( 17.897132s |  1.93% |  7.57% )    	(13x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002182s |  0.00% |  0.01% )   ( 0.002471s |  0.00% |  0.01% )    	(13x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.324093s |  0.11% |  6.95% )   ( 1.167854s |  0.12% |  6.52% )    	(13x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.507955s |  0.22% | 13.17% )   ( 2.306284s |  0.24% | 12.88% )    	(13x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.752774s |  0.15% |  9.20% )   ( 1.679822s |  0.18% |  9.38% )    	(13x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.434235s |  0.21% | 12.78% )   ( 2.295500s |  0.24% | 12.82% )    	(13x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.754600s |  0.15% |  9.21% )   ( 1.684833s |  0.18% |  9.41% )    	(13x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.073214s |  0.09% |  5.63% )   ( 1.016523s |  0.11% |  5.67% )    	(13x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.359144s |  0.03% |  1.88% )   ( 0.348586s |  0.03% |  1.94% )    	(13x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.152023s |  0.10% |  6.05% )   ( 1.127153s |  0.12% |  6.29% )    	(13x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.322605s |  0.02% |  1.69% )   ( 0.292337s |  0.03% |  1.63% )    	(13x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.589465s |  0.14% |  8.35% )   ( 1.433327s |  0.15% |  8.00% )    	(13x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.018375s |  0.35% | 21.11% )   ( 3.915586s |  0.42% | 21.87% )    	(13x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.367740s |  0.03% |  1.93% )   ( 0.329746s |  0.03% |  1.84% )    	(13x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.376795s |  0.03% |  1.97% )   ( 0.297110s |  0.03% |  1.66% )    	(13x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002342s |  0.00% |  0.00% )   ( 0.002558s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002287s |  0.00% |  0.00% )   ( 0.002538s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002445s |  0.00% |  0.00% )   ( 0.002703s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008790s |  0.00% |  0.04% )   ( 0.008854s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.173976s |  1.61% |  3.23% )   ( 14.744344s |  1.59% |  3.19% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001046s |  0.00% |  0.00% )   ( 0.001070s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.172760s |  1.61% | 99.99% )   ( 14.743083s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p18
30.5.0:         ( 0.045930s |  0.00% |  0.25% )   ( 0.045761s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045737s |  0.00% |  0.25% )   ( 0.045553s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046398s |  0.00% |  0.25% )   ( 0.046228s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.047834s |  0.00% |  0.26% )   ( 0.047635s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046880s |  0.00% |  0.25% )   ( 0.046705s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005722s |  0.00% |  0.00% )   ( 0.006246s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.005055s |  0.00% |  0.00% )   ( 0.005628s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008945s |  0.00% |  0.00% )   ( 0.006519s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p18
41.5.0:         ( 0.564373s |  0.05% |  0.11% )   ( 0.008381s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005540s |  0.00% |  0.00% )   ( 0.006102s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.006218s |  0.00% |  0.00% )   ( 0.006836s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004764s |  0.00% |  0.00% )   ( 0.005321s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005668s |  0.00% |  0.00% )   ( 0.006246s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.052220s |  0.00% |  0.01% )   ( 0.034775s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005396s |  0.00% |  0.00% )   ( 0.005934s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006706s |  0.00% |  0.00% )   ( 0.007294s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p18
54.5.0:         ( 0.005582s |  0.00% |  0.00% )   ( 0.006079s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005044s |  0.00% |  0.00% )   ( 0.005602s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.233630s |  1.52% |  3.51% )   ( 14.376168s |  1.55% |  3.61% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004912s |  0.00% |  0.02% )   ( 0.005483s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.271485s |  0.11% |  7.37% )   ( 0.981026s |  0.10% |  6.82% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.819315s |  0.16% | 10.55% )   ( 1.599833s |  0.17% | 11.12% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612482s |  0.14% |  9.35% )   ( 1.386503s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.845824s |  0.16% | 10.71% )   ( 1.581465s |  0.17% | 11.00% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561667s |  0.13% |  9.06% )   ( 1.334145s |  0.14% |  9.28% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.070982s |  0.09% |  6.21% )   ( 0.885524s |  0.09% |  6.15% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.694365s |  0.06% |  4.02% )   ( 0.527033s |  0.05% |  3.66% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.139429s |  0.10% |  6.61% )   ( 0.907430s |  0.09% |  6.31% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.596613s |  0.05% |  3.46% )   ( 0.468641s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.499792s |  0.13% |  8.70% )   ( 1.234064s |  0.13% |  8.58% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.779132s |  0.24% | 16.12% )   ( 2.425475s |  0.26% | 16.87% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.698797s |  0.06% |  4.05% )   ( 0.527503s |  0.05% |  3.66% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.638835s |  0.05% |  3.70% )   ( 0.512043s |  0.05% |  3.56% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004956s |  0.00% |  0.00% )   ( 0.005530s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005116s |  0.00% |  0.00% )   ( 0.005679s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008476s |  0.00% |  0.00% )   ( 0.006015s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005214s |  0.00% |  0.02% )   ( 0.005304s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.439589s |  1.63% |  3.28% )   ( 15.779509s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001039s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.438381s |  1.63% | 99.99% )   ( 15.778257s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p19
30.5.0:         ( 0.045637s |  0.00% |  0.24% )   ( 0.045469s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045208s |  0.00% |  0.24% )   ( 0.045048s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046652s |  0.00% |  0.25% )   ( 0.046482s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046877s |  0.00% |  0.25% )   ( 0.046713s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.048250s |  0.00% |  0.26% )   ( 0.048065s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005327s |  0.00% |  0.00% )   ( 0.005865s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004545s |  0.00% |  0.00% )   ( 0.005092s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005446s |  0.00% |  0.00% )   ( 0.006008s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p19
41.5.0:         ( 0.413292s |  0.03% |  0.08% )   ( 0.007642s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005116s |  0.00% |  0.00% )   ( 0.005678s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005442s |  0.00% |  0.00% )   ( 0.005983s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004420s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004990s |  0.00% |  0.00% )   ( 0.005513s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043780s |  0.00% |  0.00% )   ( 0.032137s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006097s |  0.00% |  0.00% )   ( 0.005281s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009236s |  0.00% |  0.00% )   ( 0.006761s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p19
54.5.0:         ( 0.004821s |  0.00% |  0.00% )   ( 0.005376s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007275s |  0.00% |  0.00% )   ( 0.005553s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.665229s |  1.56% |  3.83% )   ( 15.422111s |  1.66% |  3.90% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.008202s |  0.00% |  0.04% )   ( 0.005245s |  0.00% |  0.03% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.331592s |  0.11% |  7.53% )   ( 1.043831s |  0.11% |  6.76% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.087596s |  0.18% | 11.81% )   ( 1.767155s |  0.19% | 11.45% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.651206s |  0.14% |  9.34% )   ( 1.479427s |  0.16% |  9.59% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.807530s |  0.16% | 10.23% )   ( 1.732103s |  0.18% | 11.23% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.619887s |  0.14% |  9.16% )   ( 1.405689s |  0.15% |  9.11% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.160073s |  0.10% |  6.56% )   ( 0.935300s |  0.10% |  6.06% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.638704s |  0.05% |  3.61% )   ( 0.502441s |  0.05% |  3.25% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.185955s |  0.10% |  6.71% )   ( 0.974767s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.568381s |  0.05% |  3.21% )   ( 0.449574s |  0.04% |  2.91% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.477325s |  0.13% |  8.36% )   ( 1.302652s |  0.14% |  8.44% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.025595s |  0.26% | 17.12% )   ( 2.843741s |  0.30% | 18.43% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554401s |  0.04% |  3.13% )   ( 0.494638s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.548782s |  0.04% |  3.10% )   ( 0.485548s |  0.05% |  3.14% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004566s |  0.00% |  0.00% )   ( 0.005090s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004638s |  0.00% |  0.00% )   ( 0.005192s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005392s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005187s |  0.00% |  0.02% )   ( 0.005252s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 18.010369s |  1.59% |  3.20% )   ( 15.464637s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001002s |  0.00% |  0.00% )   ( 0.001028s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.009144s |  1.59% | 99.99% )   ( 15.463364s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p20
30.5.0:         ( 0.046915s |  0.00% |  0.26% )   ( 0.046382s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046461s |  0.00% |  0.25% )   ( 0.046248s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046399s |  0.00% |  0.25% )   ( 0.046186s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046402s |  0.00% |  0.25% )   ( 0.046202s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046311s |  0.00% |  0.25% )   ( 0.046098s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005085s |  0.00% |  0.00% )   ( 0.005662s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004839s |  0.00% |  0.00% )   ( 0.005414s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005895s |  0.00% |  0.00% )   ( 0.006458s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p20
41.5.0:         ( 0.247417s |  0.02% |  0.05% )   ( 0.007280s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005208s |  0.00% |  0.00% )   ( 0.005730s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005531s |  0.00% |  0.00% )   ( 0.006108s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004713s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007596s |  0.00% |  0.00% )   ( 0.005823s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040373s |  0.00% |  0.00% )   ( 0.035794s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008604s |  0.00% |  0.00% )   ( 0.005977s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005886s |  0.00% |  0.00% )   ( 0.006464s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p20
54.5.0:         ( 0.004837s |  0.00% |  0.00% )   ( 0.005401s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.005038s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.401148s |  1.54% |  3.71% )   ( 15.099205s |  1.63% |  3.75% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004565s |  0.00% |  0.02% )   ( 0.005091s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.205079s |  0.10% |  6.92% )   ( 1.012036s |  0.10% |  6.70% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.097537s |  0.18% | 12.05% )   ( 1.706819s |  0.18% | 11.30% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.749629s |  0.15% | 10.05% )   ( 1.446612s |  0.15% |  9.58% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.926900s |  0.17% | 11.07% )   ( 1.684118s |  0.18% | 11.15% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.537261s |  0.13% |  8.83% )   ( 1.393178s |  0.15% |  9.22% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016519s |  0.09% |  5.84% )   ( 0.931735s |  0.10% |  6.17% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.606478s |  0.05% |  3.48% )   ( 0.523256s |  0.05% |  3.46% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.086038s |  0.09% |  6.24% )   ( 0.952895s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.606962s |  0.05% |  3.48% )   ( 0.461127s |  0.04% |  3.05% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.489746s |  0.13% |  8.56% )   ( 1.265618s |  0.13% |  8.38% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.870261s |  0.25% | 16.49% )   ( 2.693715s |  0.29% | 17.84% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.604726s |  0.05% |  3.47% )   ( 0.519547s |  0.05% |  3.44% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.599447s |  0.05% |  3.44% )   ( 0.503458s |  0.05% |  3.33% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004511s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004617s |  0.00% |  0.00% )   ( 0.005124s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004773s |  0.00% |  0.00% )   ( 0.005332s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009461s |  0.00% |  0.05% )   ( 0.009244s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000223s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 21.440807s |  1.90% |  3.81% )   ( 18.809379s |  2.03% |  4.07% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.000940s |  0.00% |  0.00% )   ( 0.000966s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 21.439659s |  1.90% | 99.99% )   ( 18.808181s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000273s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p21
30.5.0:         ( 0.046270s |  0.00% |  0.21% )   ( 0.046085s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046480s |  0.00% |  0.21% )   ( 0.046302s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.046187s |  0.00% |  0.21% )   ( 0.046017s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046393s |  0.00% |  0.21% )   ( 0.046210s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.046319s |  0.00% |  0.21% )   ( 0.046134s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.008471s |  0.00% |  0.00% )   ( 0.006063s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.005011s |  0.00% |  0.00% )   ( 0.005605s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005887s |  0.00% |  0.00% )   ( 0.006483s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p21
41.5.0:         ( 0.408008s |  0.03% |  0.06% )   ( 0.007787s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005432s |  0.00% |  0.00% )   ( 0.006047s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.006014s |  0.00% |  0.00% )   ( 0.006640s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.005027s |  0.00% |  0.00% )   ( 0.005644s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005556s |  0.00% |  0.00% )   ( 0.006140s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.042515s |  0.00% |  0.00% )   ( 0.035305s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005367s |  0.00% |  0.00% )   ( 0.005976s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006142s |  0.00% |  0.00% )   ( 0.006750s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p21
54.5.0:         ( 0.008639s |  0.00% |  0.00% )   ( 0.006227s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005299s |  0.00% |  0.00% )   ( 0.005872s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.668682s |  1.83% |  3.44% )   ( 18.443070s |  1.99% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004915s |  0.00% |  0.02% )   ( 0.005499s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.771759s |  0.15% |  8.57% )   ( 1.382312s |  0.14% |  7.49% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.316726s |  0.20% | 11.20% )   ( 2.093617s |  0.22% | 11.35% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.918428s |  0.17% |  9.28% )   ( 1.723695s |  0.18% |  9.34% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.291589s |  0.20% | 11.08% )   ( 2.052297s |  0.22% | 11.12% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.873195s |  0.16% |  9.06% )   ( 1.661070s |  0.17% |  9.00% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.382998s |  0.12% |  6.69% )   ( 1.215288s |  0.13% |  6.58% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.694209s |  0.06% |  3.35% )   ( 0.587591s |  0.06% |  3.18% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.313193s |  0.11% |  6.35% )   ( 1.230052s |  0.13% |  6.66% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.607379s |  0.05% |  2.93% )   ( 0.514905s |  0.05% |  2.79% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.665170s |  0.14% |  8.05% )   ( 1.512185s |  0.16% |  8.19% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.545862s |  0.31% | 17.15% )   ( 3.323867s |  0.35% | 18.02% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.638235s |  0.05% |  3.08% )   ( 0.578159s |  0.06% |  3.13% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.645024s |  0.05% |  3.12% )   ( 0.562533s |  0.06% |  3.05% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004986s |  0.00% |  0.00% )   ( 0.005553s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004883s |  0.00% |  0.00% )   ( 0.005457s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005268s |  0.00% |  0.00% )   ( 0.005815s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005347s |  0.00% |  0.02% )   ( 0.005422s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000208s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 20.964154s |  1.86% |  3.73% )   ( 18.227012s |  1.97% |  3.94% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001070s |  0.00% |  0.00% )   ( 0.001095s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 20.962910s |  1.86% | 99.99% )   ( 18.225716s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p22
30.5.0:         ( 0.051516s |  0.00% |  0.24% )   ( 0.051055s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.056142s |  0.00% |  0.26% )   ( 0.055628s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.044664s |  0.00% |  0.21% )   ( 0.044274s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.048756s |  0.00% |  0.23% )   ( 0.048330s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.048959s |  0.00% |  0.23% )   ( 0.048525s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.007030s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000293s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004274s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p22
41.5.0:         ( 0.328728s |  0.02% |  0.07% )   ( 0.005797s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006711s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003706s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032546s |  0.00% |  0.00% )   ( 0.026525s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.014350s |  0.00% |  0.00% )   ( 0.004522s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004885s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p22
54.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003832s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.267573s |  1.79% |  4.83% )   ( 17.873122s |  1.93% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003532s |  0.00% |  0.01% )   ( 0.003990s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.536840s |  0.13% |  7.58% )   ( 1.284154s |  0.13% |  7.18% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.517043s |  0.22% | 12.41% )   ( 2.192433s |  0.23% | 12.26% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.997634s |  0.17% |  9.85% )   ( 1.671735s |  0.18% |  9.35% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.418424s |  0.21% | 11.93% )   ( 2.103355s |  0.22% | 11.76% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.785612s |  0.15% |  8.81% )   ( 1.630659s |  0.17% |  9.12% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.236278s |  0.10% |  6.09% )   ( 1.110747s |  0.12% |  6.21% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551728s |  0.04% |  2.72% )   ( 0.473148s |  0.05% |  2.64% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.324911s |  0.11% |  6.53% )   ( 1.157636s |  0.12% |  6.47% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489044s |  0.04% |  2.41% )   ( 0.403095s |  0.04% |  2.25% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.686238s |  0.14% |  8.31% )   ( 1.446449s |  0.15% |  8.09% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.692599s |  0.32% | 18.21% )   ( 3.508607s |  0.37% | 19.63% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487735s |  0.04% |  2.40% )   ( 0.460087s |  0.04% |  2.57% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.539955s |  0.04% |  2.66% )   ( 0.427027s |  0.04% |  2.38% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005351s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003839s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.010329s |  0.00% |  0.04% )   ( 0.010282s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.925845s |  1.59% |  3.18% )   ( 15.830839s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001073s |  0.00% |  0.00% )   ( 0.001095s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.924594s |  1.59% | 99.99% )   ( 15.829541s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000262s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p23
30.5.0:         ( 0.044380s |  0.00% |  0.24% )   ( 0.044138s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044529s |  0.00% |  0.24% )   ( 0.044315s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.044751s |  0.00% |  0.24% )   ( 0.044529s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.044707s |  0.00% |  0.24% )   ( 0.044472s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.044483s |  0.00% |  0.24% )   ( 0.044271s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005266s |  0.00% |  0.00% )   ( 0.005846s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004904s |  0.00% |  0.00% )   ( 0.005493s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000257s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006087s |  0.00% |  0.00% )   ( 0.006686s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p23
41.5.0:         ( 0.308741s |  0.02% |  0.06% )   ( 0.007563s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005156s |  0.00% |  0.00% )   ( 0.005726s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005515s |  0.00% |  0.00% )   ( 0.006141s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005162s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005363s |  0.00% |  0.00% )   ( 0.005929s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.053464s |  0.00% |  0.01% )   ( 0.035089s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007261s |  0.00% |  0.00% )   ( 0.005768s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006021s |  0.00% |  0.00% )   ( 0.006612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p23
54.5.0:         ( 0.004905s |  0.00% |  0.00% )   ( 0.005483s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004770s |  0.00% |  0.00% )   ( 0.005242s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000303s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.250227s |  1.53% |  3.56% )   ( 15.473678s |  1.67% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005981s |  0.00% |  0.03% )   ( 0.005364s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.312753s |  0.11% |  7.61% )   ( 1.061518s |  0.11% |  6.86% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.032798s |  0.18% | 11.78% )   ( 1.751451s |  0.18% | 11.31% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.600187s |  0.14% |  9.27% )   ( 1.491486s |  0.16% |  9.63% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.880094s |  0.16% | 10.89% )   ( 1.717180s |  0.18% | 11.09% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597613s |  0.14% |  9.26% )   ( 1.429902s |  0.15% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.019250s |  0.09% |  5.90% )   ( 0.956869s |  0.10% |  6.18% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.611848s |  0.05% |  3.54% )   ( 0.537669s |  0.05% |  3.47% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.094951s |  0.09% |  6.34% )   ( 0.976243s |  0.10% |  6.30% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.552278s |  0.04% |  3.20% )   ( 0.477896s |  0.05% |  3.08% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.401246s |  0.12% |  8.12% )   ( 1.299656s |  0.14% |  8.39% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.839988s |  0.25% | 16.46% )   ( 2.720650s |  0.29% | 17.58% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.630688s |  0.05% |  3.65% )   ( 0.526985s |  0.05% |  3.40% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.670552s |  0.05% |  3.88% )   ( 0.520809s |  0.05% |  3.36% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004782s |  0.00% |  0.00% )   ( 0.005359s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005091s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008386s |  0.00% |  0.00% )   ( 0.005493s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009155s |  0.00% |  0.05% )   ( 0.009239s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.935294s |  1.59% |  3.19% )   ( 14.611956s |  1.58% |  3.16% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001115s |  0.00% |  0.00% )   ( 0.001136s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.934007s |  1.59% | 99.99% )   ( 14.610623s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p24
30.5.0:         ( 0.063526s |  0.00% |  0.35% )   ( 0.049175s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.066486s |  0.00% |  0.37% )   ( 0.053356s |  0.00% |  0.36% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.049933s |  0.00% |  0.27% )   ( 0.049303s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.050229s |  0.00% |  0.28% )   ( 0.050040s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.051820s |  0.00% |  0.28% )   ( 0.051626s |  0.00% |  0.35% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004940s |  0.00% |  0.00% )   ( 0.005529s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004528s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005551s |  0.00% |  0.00% )   ( 0.006153s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p24
41.5.0:         ( 0.233908s |  0.02% |  0.04% )   ( 0.007136s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005057s |  0.00% |  0.00% )   ( 0.005637s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005708s |  0.00% |  0.00% )   ( 0.006320s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004885s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005174s |  0.00% |  0.00% )   ( 0.005730s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043069s |  0.00% |  0.00% )   ( 0.034226s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010133s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006251s |  0.00% |  0.00% )   ( 0.006852s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p24
54.5.0:         ( 0.005276s |  0.00% |  0.00% )   ( 0.005766s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004820s |  0.00% |  0.00% )   ( 0.005359s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.291781s |  1.53% |  3.70% )   ( 14.229499s |  1.54% |  3.74% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004976s |  0.00% |  0.02% )   ( 0.005598s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.317965s |  0.11% |  7.62% )   ( 0.966597s |  0.10% |  6.79% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.026804s |  0.17% | 11.72% )   ( 1.592404s |  0.17% | 11.19% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.585590s |  0.14% |  9.16% )   ( 1.373380s |  0.14% |  9.65% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.003718s |  0.17% | 11.58% )   ( 1.571818s |  0.17% | 11.04% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.424218s |  0.12% |  8.23% )   ( 1.296915s |  0.14% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.978162s |  0.08% |  5.65% )   ( 0.869176s |  0.09% |  6.10% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.606555s |  0.05% |  3.50% )   ( 0.507248s |  0.05% |  3.56% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.060517s |  0.09% |  6.13% )   ( 0.894394s |  0.09% |  6.28% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.601115s |  0.05% |  3.47% )   ( 0.457563s |  0.04% |  3.21% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.482898s |  0.13% |  8.57% )   ( 1.207486s |  0.13% |  8.48% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.910001s |  0.25% | 16.82% )   ( 2.452555s |  0.26% | 17.23% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.657035s |  0.05% |  3.79% )   ( 0.523872s |  0.05% |  3.68% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.632227s |  0.05% |  3.65% )   ( 0.510493s |  0.05% |  3.58% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004533s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004995s |  0.00% |  0.00% )   ( 0.005558s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004966s |  0.00% |  0.00% )   ( 0.005484s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005159s |  0.00% |  0.02% )   ( 0.005262s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 18.331950s |  1.62% |  3.26% )   ( 15.258878s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001058s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 18.330712s |  1.62% | 99.99% )   ( 15.257592s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p25
30.5.0:         ( 0.050161s |  0.00% |  0.27% )   ( 0.049751s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050731s |  0.00% |  0.27% )   ( 0.049095s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.048502s |  0.00% |  0.26% )   ( 0.048301s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.050687s |  0.00% |  0.27% )   ( 0.050468s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.052744s |  0.00% |  0.28% )   ( 0.052512s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004409s |  0.00% |  0.00% )   ( 0.004875s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000281s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007871s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p25
41.5.0:         ( 0.227329s |  0.02% |  0.05% )   ( 0.005797s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004764s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004374s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007354s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036534s |  0.00% |  0.00% )   ( 0.027766s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009512s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005124s |  0.00% |  0.00% )   ( 0.005601s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p25
54.5.0:         ( 0.004291s |  0.00% |  0.00% )   ( 0.004782s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.731855s |  1.57% |  4.39% )   ( 14.895655s |  1.61% |  4.43% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004011s |  0.00% |  0.02% )   ( 0.004498s |  0.00% |  0.03% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.248303s |  0.11% |  7.03% )   ( 0.982838s |  0.10% |  6.59% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.059898s |  0.18% | 11.61% )   ( 1.715058s |  0.18% | 11.51% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.631471s |  0.14% |  9.20% )   ( 1.420083s |  0.15% |  9.53% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.013004s |  0.17% | 11.35% )   ( 1.731045s |  0.18% | 11.62% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.694634s |  0.15% |  9.55% )   ( 1.385801s |  0.15% |  9.30% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.019769s |  0.09% |  5.75% )   ( 0.903819s |  0.09% |  6.06% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.540310s |  0.04% |  3.04% )   ( 0.457984s |  0.04% |  3.07% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.111516s |  0.09% |  6.26% )   ( 0.946829s |  0.10% |  6.35% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503065s |  0.04% |  2.83% )   ( 0.406559s |  0.04% |  2.72% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.518844s |  0.13% |  8.56% )   ( 1.259320s |  0.13% |  8.45% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.114968s |  0.27% | 17.56% )   ( 2.774410s |  0.30% | 18.62% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.636302s |  0.05% |  3.58% )   ( 0.459293s |  0.04% |  3.08% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.635760s |  0.05% |  3.58% )   ( 0.448118s |  0.04% |  3.00% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004689s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009167s |  0.00% |  0.05% )   ( 0.009195s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000180s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.769764s |  1.57% |  3.16% )   ( 14.619730s |  1.58% |  3.16% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001095s |  0.00% |  0.00% )   ( 0.001119s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.768504s |  1.57% | 99.99% )   ( 14.618421s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000247s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p26
30.5.0:         ( 0.059682s |  0.00% |  0.33% )   ( 0.050964s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047898s |  0.00% |  0.26% )   ( 0.047722s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.049945s |  0.00% |  0.28% )   ( 0.049742s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.047776s |  0.00% |  0.26% )   ( 0.047593s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.045258s |  0.00% |  0.25% )   ( 0.045108s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.008731s |  0.00% |  0.00% )   ( 0.006325s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.005084s |  0.00% |  0.00% )   ( 0.005677s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005943s |  0.00% |  0.00% )   ( 0.006534s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p26
41.5.0:         ( 0.243372s |  0.02% |  0.05% )   ( 0.006905s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005014s |  0.00% |  0.00% )   ( 0.005599s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.005571s |  0.00% |  0.00% )   ( 0.006189s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004779s |  0.00% |  0.00% )   ( 0.005315s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005038s |  0.00% |  0.00% )   ( 0.005508s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040569s |  0.00% |  0.00% )   ( 0.035867s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.019838s |  0.00% |  0.00% )   ( 0.006075s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006311s |  0.00% |  0.00% )   ( 0.006876s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p26
54.5.0:         ( 0.005364s |  0.00% |  0.00% )   ( 0.005989s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004637s |  0.00% |  0.00% )   ( 0.005176s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.132147s |  1.52% |  3.70% )   ( 14.241790s |  1.54% |  3.74% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.008089s |  0.00% |  0.04% )   ( 0.005684s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.227346s |  0.10% |  7.16% )   ( 0.965836s |  0.10% |  6.78% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.846316s |  0.16% | 10.77% )   ( 1.573254s |  0.17% | 11.04% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.553681s |  0.13% |  9.06% )   ( 1.362908s |  0.14% |  9.56% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.816171s |  0.16% | 10.60% )   ( 1.552321s |  0.16% | 10.89% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.576298s |  0.13% |  9.20% )   ( 1.315304s |  0.14% |  9.23% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.125020s |  0.09% |  6.56% )   ( 0.878329s |  0.09% |  6.16% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.657873s |  0.05% |  3.83% )   ( 0.508106s |  0.05% |  3.56% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.096711s |  0.09% |  6.40% )   ( 0.896687s |  0.09% |  6.29% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.627742s |  0.05% |  3.66% )   ( 0.464026s |  0.05% |  3.25% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.488140s |  0.13% |  8.68% )   ( 1.229183s |  0.13% |  8.63% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.760209s |  0.24% | 16.11% )   ( 2.464007s |  0.26% | 17.30% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.665335s |  0.05% |  3.88% )   ( 0.514995s |  0.05% |  3.61% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.683216s |  0.06% |  3.98% )   ( 0.511150s |  0.05% |  3.58% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004888s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004613s |  0.00% |  0.00% )   ( 0.005163s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004926s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000265s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009360s |  0.00% |  0.05% )   ( 0.009453s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.920791s |  1.59% |  3.18% )   ( 15.176703s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001093s |  0.00% |  0.00% )   ( 0.001121s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.919519s |  1.58% | 99.99% )   ( 15.175377s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ef8XGD"
26.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p27
30.5.0:         ( 0.046231s |  0.00% |  0.25% )   ( 0.046029s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046074s |  0.00% |  0.25% )   ( 0.045881s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1847200 ${BASHPID}' INT
33.5.0:         ( 0.045911s |  0.00% |  0.25% )   ( 0.045729s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1847200 ${BASHPID}' TERM
34.5.0:         ( 0.046030s |  0.00% |  0.25% )   ( 0.045850s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1847200 ${BASHPID}' HUP
35.5.0:         ( 0.048857s |  0.00% |  0.27% )   ( 0.048661s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004937s |  0.00% |  0.00% )   ( 0.005508s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004772s |  0.00% |  0.00% )   ( 0.005350s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ef8XGD"/.nLines
38.5.2:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005752s |  0.00% |  0.00% )   ( 0.006343s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p27
41.5.0:         ( 0.287042s |  0.02% |  0.05% )   ( 0.006656s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004860s |  0.00% |  0.00% )   ( 0.005424s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.quit ]]
46.5.0:         ( 0.004969s |  0.00% |  0.00% )   ( 0.005542s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.done ]]
46.5.1:         ( 0.004485s |  0.00% |  0.00% )   ( 0.004920s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005348s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.047907s |  0.00% |  0.01% )   ( 0.033930s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004830s |  0.00% |  0.00% )   ( 0.005362s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005613s |  0.00% |  0.00% )   ( 0.006169s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ef8XGD"/.wait/p27
54.5.0:         ( 0.005050s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004524s |  0.00% |  0.00% )   ( 0.005053s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.271868s |  1.53% |  3.70% )   ( 14.815354s |  1.60% |  3.75% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004439s |  0.00% |  0.02% )   ( 0.004999s |  0.00% |  0.03% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.262971s |  0.11% |  7.31% )   ( 1.000229s |  0.10% |  6.75% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.010118s |  0.17% | 11.63% )   ( 1.673148s |  0.18% | 11.29% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.625569s |  0.14% |  9.41% )   ( 1.435568s |  0.15% |  9.68% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.825503s |  0.16% | 10.56% )   ( 1.649483s |  0.17% | 11.13% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.514309s |  0.13% |  8.76% )   ( 1.363255s |  0.14% |  9.20% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982845s |  0.08% |  5.69% )   ( 0.907182s |  0.09% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.609730s |  0.05% |  3.53% )   ( 0.517206s |  0.05% |  3.49% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.154238s |  0.10% |  6.68% )   ( 0.935732s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.627751s |  0.05% |  3.63% )   ( 0.462690s |  0.05% |  3.12% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.562131s |  0.13% |  9.04% )   ( 1.255363s |  0.13% |  8.47% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.894890s |  0.25% | 16.76% )   ( 2.582714s |  0.27% | 17.43% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.571007s |  0.05% |  3.30% )   ( 0.521830s |  0.05% |  3.52% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.626367s |  0.05% |  3.62% )   ( 0.505955s |  0.05% |  3.41% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004429s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004183s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004579s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000245s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000259s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009715s |  0.00% |  0.05% )   ( 0.009690s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000177s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001410s |  0.00% |  0.00% )   ( 0.001428s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 23.823472s |  2.11% |  4.23% )   ( 0.001689s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000309s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000290s |  0.00% |  0.00% )   ( 0.000331s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.049176s |  0.00% |  0.00% )   ( 0.049393s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ef8XGD"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.ef8XGD"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1847214  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.ef8XGD"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000162s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007003s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.ef8XGD" 2>/dev/null

TOTAL RUN TIME: 1127.031841s
TOTAL CPU TIME: 923.657941s

