LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 551.678334s | 50.20% )            ( 498.797946s | 49.99% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000674s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 551.677660s | 50.20% | 99.99% )   ( 498.797606s | 49.99% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
.2.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  ├─
24.2.0:         ( 0.041311s |  0.00% |  0.00% )   ( 0.041191s |  0.00% |  0.00% )    	(1x)	│  │   trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001111s |  0.00% |  0.00% )   ( 0.000962s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008173s |  0.00% |  0.00% )   ( 0.008173s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.008173s |  0.00% |100.00% )   ( 0.008173s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001064s |  0.00% |  0.00% )   ( 0.001139s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026405s |  0.00% |  0.00% )   ( 0.000514s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 551.590674s | 50.20% | 99.98% )   ( 498.739050s | 49.99% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
.3.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  ├─
235.3.0:        ( 0.000294s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001428s |  0.00% |  0.00% )   ( 0.001649s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001428s |  0.00% |100.00% )   ( 0.001649s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000155s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000155s |  0.00% |100.00% )   ( 0.000180s |  0.00% |100.00% )    	(1x)	│  │  │  └─  :
238.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000187s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000559s |  0.00% |  0.00% )   ( 0.000332s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000111s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000111s |  0.00% |100.00% )   ( 0.000125s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000863s |  0.00% |  0.00% )   ( 0.000998s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  8.22% )   ( 0.000082s |  0.00% |  8.21% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000066s |  0.00% |  7.64% )   ( 0.000077s |  0.00% |  7.71% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000065s |  0.00% |  7.53% )   ( 0.000076s |  0.00% |  7.61% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000067s |  0.00% |  7.76% )   ( 0.000078s |  0.00% |  7.81% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000065s |  0.00% |  7.53% )   ( 0.000077s |  0.00% |  7.71% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000070s |  0.00% |  8.11% )   ( 0.000082s |  0.00% |  8.21% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000071s |  0.00% |  8.22% )   ( 0.000078s |  0.00% |  7.81% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000115s |  0.00% | 13.32% )   ( 0.000128s |  0.00% | 12.82% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.64% )   ( 0.000078s |  0.00% |  7.81% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000066s |  0.00% |  7.64% )   ( 0.000077s |  0.00% |  7.71% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.76% )   ( 0.000079s |  0.00% |  7.91% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000074s |  0.00% |  8.57% )   ( 0.000086s |  0.00% |  8.61% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000901s |  0.00% |  0.00% )   ( 0.000703s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.003509s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000367s |  0.00% | 10.45% )   ( 0.000386s |  0.00% | 10.59% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.003142s |  0.00% | 89.54% )   ( 0.003257s |  0.00% | 89.40% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.001582s |  0.00% |  0.00% )   ( 0.001468s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000330s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000330s |  0.00% |100.00% )   ( 0.000374s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001806s |  0.00% |  0.00% )   ( 0.001881s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000537s |  0.00% |  0.00% )   ( 0.000533s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.136859s |  0.01% |  0.02% )   ( 0.136540s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000089s |  0.00% |  0.06% )   ( 0.000101s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021075s |  0.00% | 15.39% )   ( 0.021028s |  0.00% | 15.40% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.025756s |  0.00% | 18.81% )   ( 0.025690s |  0.00% | 18.81% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023567s |  0.00% | 17.21% )   ( 0.023460s |  0.00% | 17.18% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023426s |  0.00% | 17.11% )   ( 0.023379s |  0.00% | 17.12% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023448s |  0.00% | 17.13% )   ( 0.023404s |  0.00% | 17.14% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000063s |  0.00% |  0.04% )   ( 0.000074s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.019196s |  0.00% | 14.02% )   ( 0.019133s |  0.00% | 14.01% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000087s |  0.00% |  0.06% )   ( 0.000099s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000086s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000078s |  0.00% |  0.05% )   ( 0.000086s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000385s |  0.00% |  0.00% )   ( 0.000415s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.186238s |  0.38% |  0.75% )   ( 1.832711s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
.4.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─
508.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │   export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024621s |  0.00% |  0.58% )   ( 0.024555s |  0.00% |  1.33% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023528s |  0.00% |  0.56% )   ( 0.023476s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023406s |  0.00% |  0.55% )   ( 0.023339s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023499s |  0.00% |  0.56% )   ( 0.023451s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023431s |  0.00% |  0.55% )   ( 0.023375s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090525s |  0.00% |  0.00% )   ( 0.103333s |  0.01% |  0.00% )    	(675x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.663656s |  0.24% |  0.09% )   ( 0.123165s |  0.01% |  0.00% )    	(674x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001253s |  0.00% |  0.00% )   ( 0.001406s |  0.00% |  0.01% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.089022s |  0.00% |  0.00% )   ( 0.102109s |  0.01% |  0.00% )    	(668x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089846s |  0.00% |  0.00% )   ( 0.102879s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.088575s |  0.00% |  0.00% )   ( 0.101568s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.091499s |  0.00% |  0.00% )   ( 0.104354s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091186s |  0.00% |  0.00% )   ( 0.104136s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.088809s |  0.00% |  0.00% )   ( 0.101091s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.087291s |  0.00% |  0.00% )   ( 0.100175s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.088495s |  0.00% |  0.00% )   ( 0.100523s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000702s |  0.00% |  0.01% )   ( 0.000536s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.003067s |  0.00% |  0.07% )   ( 0.003438s |  0.00% |  0.18% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.003067s |  0.00% |100.00% )   ( 0.003438s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086452s |  0.00% |  0.00% )   ( 0.099286s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085836s |  0.00% |  0.00% )   ( 0.098618s |  0.00% |  0.00% )    	(668x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.083861s |  0.00% |  0.00% )   ( 0.096244s |  0.00% |  0.00% )    	(647x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.090254s |  0.00% |  0.00% )   ( 0.103239s |  0.01% |  0.00% )    	(668x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.088031s |  0.00% |  0.00% )   ( 0.100875s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087948s |  0.00% |  0.00% )   ( 0.100827s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002837s |  0.00% |  0.00% )   ( 0.003257s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002710s |  0.00% |  0.00% )   ( 0.003120s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.048525s |  0.00% |  0.05% )   ( 0.041247s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003080s |  0.00% |  0.00% )   ( 0.003491s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002920s |  0.00% |  0.00% )   ( 0.003337s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003142s |  0.00% |  0.00% )   ( 0.003573s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.01% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000202s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.005819s |  0.00% |  0.13% )   ( 0.005905s |  0.00% |  0.32% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/pAuto
598.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001965s |  0.00% |  0.00% )   ( 0.001164s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006367s |  0.00% |  0.00% )   ( 0.007309s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000447s |  0.00% |  7.02% )   ( 0.000513s |  0.00% |  7.01% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000083s |  0.00% |  1.30% )   ( 0.000095s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000080s |  0.00% |  1.25% )   ( 0.000092s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000221s |  0.00% |  3.47% )   ( 0.000234s |  0.00% |  3.20% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000073s |  0.00% |  1.14% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000073s |  0.00% |  1.14% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000073s |  0.00% |  1.14% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000078s |  0.00% |  1.22% )   ( 0.000093s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000081s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000073s |  0.00% |  1.14% )   ( 0.000084s |  0.00% |  1.14% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000088s |  0.00% |  1.38% )   ( 0.000099s |  0.00% |  1.35% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000086s |  0.00% |  1.17% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000100s |  0.00% |  1.36% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000099s |  0.00% |  1.55% )   ( 0.000110s |  0.00% |  1.50% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000095s |  0.00% |  1.49% )   ( 0.000106s |  0.00% |  1.45% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000079s |  0.00% |  1.24% )   ( 0.000087s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000085s |  0.00% |  1.33% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000081s |  0.00% |  1.27% )   ( 0.000092s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000082s |  0.00% |  1.28% )   ( 0.000094s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000093s |  0.00% |  1.46% )   ( 0.000106s |  0.00% |  1.45% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000101s |  0.00% |  1.58% )   ( 0.000111s |  0.00% |  1.51% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000080s |  0.00% |  1.25% )   ( 0.000091s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000081s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000081s |  0.00% |  1.27% )   ( 0.000092s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000119s |  0.00% |  1.86% )   ( 0.000126s |  0.00% |  1.72% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000089s |  0.00% |  1.39% )   ( 0.000101s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000097s |  0.00% |  1.32% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000064s |  0.00% |  1.00% )   ( 0.000075s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000077s |  0.00% |  1.20% )   ( 0.000089s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000093s |  0.00% |  1.46% )   ( 0.000099s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000090s |  0.00% |  1.41% )   ( 0.000102s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  1.03% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000086s |  0.00% |  1.17% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000070s |  0.00% |  1.09% )   ( 0.000081s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000076s |  0.00% |  1.19% )   ( 0.000088s |  0.00% |  1.20% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000068s |  0.00% |  1.06% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000087s |  0.00% |  1.36% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023830s |  0.00% |  0.00% )   ( 0.023784s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023884s |  0.00% |  0.00% )   ( 0.023842s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023851s |  0.00% |  0.00% )   ( 0.170320s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023597s |  0.00% |  0.00% )   ( 0.023534s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002854s |  0.00% |  0.00% )   ( 0.003277s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002704s |  0.00% |  0.00% )   ( 0.003109s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 20.511494s |  1.86% |  3.71% )   ( 19.186081s |  1.92% |  3.84% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000604s |  0.00% |  0.00% )   ( 0.000620s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 20.510800s |  1.86% | 99.99% )   ( 19.185358s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p0
30.5.0:         ( 0.023320s |  0.00% |  0.11% )   ( 0.023278s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023656s |  0.00% |  0.11% )   ( 0.023619s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.023557s |  0.00% |  0.11% )   ( 0.023516s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.023787s |  0.00% |  0.11% )   ( 0.023748s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.048693s |  0.00% |  0.23% )   ( 0.048557s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003936s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000297s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004607s |  0.00% |  0.00% )   ( 0.005128s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p0
41.5.0:         ( 0.527262s |  0.04% |  0.09% )   ( 0.006909s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034660s |  0.00% |  0.00% )   ( 0.032062s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005738s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p0
66.5.0:         ( 0.003624s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.003996s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 19.734072s |  1.79% |  3.70% )   ( 18.925282s |  1.89% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003820s |  0.00% |  0.01% )   ( 0.004352s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.456848s |  0.13% |  7.38% )   ( 1.384567s |  0.13% |  7.31% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.627132s |  0.23% | 13.31% )   ( 2.511717s |  0.25% | 13.27% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.023873s |  0.18% | 10.25% )   ( 1.960276s |  0.19% | 10.35% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.598967s |  0.23% | 13.16% )   ( 2.504718s |  0.25% | 13.23% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.982624s |  0.18% | 10.04% )   ( 1.933525s |  0.19% | 10.21% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.307102s |  0.11% |  6.62% )   ( 1.219206s |  0.12% |  6.44% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.585058s |  0.05% |  2.96% )   ( 0.526810s |  0.05% |  2.78% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.240062s |  0.11% |  6.28% )   ( 1.164506s |  0.11% |  6.15% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502432s |  0.04% |  2.54% )   ( 0.463627s |  0.04% |  2.44% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.407490s |  0.12% |  7.13% )   ( 1.349424s |  0.13% |  7.13% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.946578s |  0.26% | 14.93% )   ( 2.888210s |  0.28% | 15.26% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.538467s |  0.04% |  2.72% )   ( 0.521519s |  0.05% |  2.75% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.513619s |  0.04% |  2.60% )   ( 0.492825s |  0.04% |  2.60% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003358s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003306s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004428s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005063s |  0.00% |  0.02% )   ( 0.005137s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002749s |  0.00% |  0.00% )   ( 0.003124s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 19.072050s |  1.73% |  3.45% )   ( 18.193636s |  1.82% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000583s |  0.00% |  0.00% )   ( 0.000600s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 19.071379s |  1.73% | 99.99% )   ( 18.192936s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000332s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p1
30.5.0:         ( 0.023522s |  0.00% |  0.12% )   ( 0.023485s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023707s |  0.00% |  0.12% )   ( 0.023665s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.023662s |  0.00% |  0.12% )   ( 0.023620s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024048s |  0.00% |  0.12% )   ( 0.024000s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.023989s |  0.00% |  0.12% )   ( 0.023946s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002756s |  0.00% |  0.00% )   ( 0.003121s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002585s |  0.00% |  0.00% )   ( 0.002933s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003008s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p1
41.5.0:         ( 0.374010s |  0.03% |  0.10% )   ( 0.004264s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002910s |  0.00% |  0.00% )   ( 0.003267s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.002379s |  0.00% |  0.00% )   ( 0.002709s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002332s |  0.00% |  0.00% )   ( 0.002652s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002399s |  0.00% |  0.00% )   ( 0.002725s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019132s |  0.00% |  0.00% )   ( 0.019383s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002161s |  0.00% |  0.00% )   ( 0.002474s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002109s |  0.00% |  0.00% )   ( 0.002414s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002464s |  0.00% |  0.00% )   ( 0.002783s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002905s |  0.00% |  0.00% )   ( 0.003236s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p1
66.5.0:         ( 0.002356s |  0.00% |  0.00% )   ( 0.002685s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002188s |  0.00% |  0.00% )   ( 0.002495s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.509615s |  1.68% |  5.70% )   ( 17.995388s |  1.80% |  5.81% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002420s |  0.00% |  0.01% )   ( 0.002754s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.272991s |  0.11% |  6.87% )   ( 1.170109s |  0.11% |  6.50% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.336213s |  0.21% | 12.62% )   ( 2.256970s |  0.22% | 12.54% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.751388s |  0.15% |  9.46% )   ( 1.735400s |  0.17% |  9.64% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.266899s |  0.20% | 12.24% )   ( 2.197528s |  0.22% | 12.21% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.749535s |  0.15% |  9.45% )   ( 1.698485s |  0.17% |  9.43% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.069807s |  0.09% |  5.77% )   ( 1.045289s |  0.10% |  5.80% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.437191s |  0.03% |  2.36% )   ( 0.408227s |  0.04% |  2.26% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.175129s |  0.10% |  6.34% )   ( 1.150464s |  0.11% |  6.39% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.352680s |  0.03% |  1.90% )   ( 0.338304s |  0.03% |  1.87% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.455586s |  0.13% |  7.86% )   ( 1.433032s |  0.14% |  7.96% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.860456s |  0.35% | 20.85% )   ( 3.830430s |  0.38% | 21.28% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.414310s |  0.03% |  2.23% )   ( 0.381115s |  0.03% |  2.11% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.365010s |  0.03% |  1.97% )   ( 0.347281s |  0.03% |  1.92% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002488s |  0.00% |  0.00% )   ( 0.002788s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001929s |  0.00% |  0.00% )   ( 0.002194s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002226s |  0.00% |  0.00% )   ( 0.002514s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008388s |  0.00% |  0.04% )   ( 0.008456s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 20.335703s |  1.85% |  3.68% )   ( 19.403315s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000583s |  0.00% |  0.00% )   ( 0.000602s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 20.335035s |  1.85% | 99.99% )   ( 19.402616s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p2
30.5.0:         ( 0.023840s |  0.00% |  0.11% )   ( 0.023780s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023808s |  0.00% |  0.11% )   ( 0.023764s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024098s |  0.00% |  0.11% )   ( 0.024055s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024311s |  0.00% |  0.11% )   ( 0.024257s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024312s |  0.00% |  0.11% )   ( 0.024261s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003531s |  0.00% |  0.00% )   ( 0.003953s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003201s |  0.00% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p2
41.5.0:         ( 0.231800s |  0.02% |  0.04% )   ( 0.005190s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003615s |  0.00% |  0.00% )   ( 0.004048s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003514s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003239s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027144s |  0.00% |  0.00% )   ( 0.025487s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003008s |  0.00% |  0.00% )   ( 0.003417s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002961s |  0.00% |  0.00% )   ( 0.003341s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006581s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003780s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p2
66.5.0:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003548s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003045s |  0.00% |  0.00% )   ( 0.003469s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 19.893574s |  1.81% |  4.44% )   ( 19.185776s |  1.92% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003106s |  0.00% |  0.01% )   ( 0.003528s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.393960s |  0.12% |  7.00% )   ( 1.344283s |  0.13% |  7.00% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.635068s |  0.23% | 13.24% )   ( 2.534236s |  0.25% | 13.20% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.057886s |  0.18% | 10.34% )   ( 1.984764s |  0.19% | 10.34% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.601125s |  0.23% | 13.07% )   ( 2.537530s |  0.25% | 13.22% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.967321s |  0.17% |  9.88% )   ( 1.936250s |  0.19% | 10.09% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.234720s |  0.11% |  6.20% )   ( 1.209752s |  0.12% |  6.30% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.522100s |  0.04% |  2.62% )   ( 0.495094s |  0.04% |  2.58% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.331251s |  0.12% |  6.69% )   ( 1.277101s |  0.12% |  6.65% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.441467s |  0.04% |  2.21% )   ( 0.413639s |  0.04% |  2.15% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.467408s |  0.13% |  7.37% )   ( 1.373715s |  0.13% |  7.16% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.257314s |  0.29% | 16.37% )   ( 3.183990s |  0.31% | 16.59% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.517296s |  0.04% |  2.60% )   ( 0.460546s |  0.04% |  2.40% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.463552s |  0.04% |  2.33% )   ( 0.431348s |  0.04% |  2.24% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003014s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002959s |  0.00% |  0.00% )   ( 0.003354s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003342s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005106s |  0.00% |  0.02% )   ( 0.005178s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 17.882728s |  1.62% |  3.24% )   ( 17.177453s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000590s |  0.00% |  0.00% )   ( 0.000609s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 17.882053s |  1.62% | 99.99% )   ( 17.176746s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000324s |  0.00% |  0.00% )   ( 0.000357s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p3
30.5.0:         ( 0.023555s |  0.00% |  0.13% )   ( 0.023514s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023758s |  0.00% |  0.13% )   ( 0.023715s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024104s |  0.00% |  0.13% )   ( 0.024048s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024080s |  0.00% |  0.13% )   ( 0.024034s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024032s |  0.00% |  0.13% )   ( 0.023984s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003889s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004897s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p3
41.5.0:         ( 0.286849s |  0.02% |  0.06% )   ( 0.006010s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004554s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003628s |  0.00% |  0.00% )   ( 0.004103s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003643s |  0.00% |  0.00% )   ( 0.004087s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028017s |  0.00% |  0.00% )   ( 0.028438s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003868s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003337s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006925s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006118s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p3
66.5.0:         ( 0.003524s |  0.00% |  0.00% )   ( 0.004006s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003327s |  0.00% |  0.00% )   ( 0.003773s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000249s |  0.00% |  0.00% )   ( 0.000284s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.366511s |  1.58% |  4.04% )   ( 16.944672s |  1.69% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003497s |  0.00% |  0.02% )   ( 0.003993s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.176469s |  0.10% |  6.77% )   ( 1.108418s |  0.11% |  6.54% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.041457s |  0.18% | 11.75% )   ( 1.994803s |  0.19% | 11.77% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.628454s |  0.14% |  9.37% )   ( 1.615227s |  0.16% |  9.53% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.072073s |  0.18% | 11.93% )   ( 2.022617s |  0.20% | 11.93% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.636279s |  0.14% |  9.42% )   ( 1.600572s |  0.16% |  9.44% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009771s |  0.09% |  5.81% )   ( 1.000337s |  0.10% |  5.90% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475173s |  0.04% |  2.73% )   ( 0.466207s |  0.04% |  2.75% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.075302s |  0.09% |  6.19% )   ( 1.055147s |  0.10% |  6.22% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442340s |  0.04% |  2.54% )   ( 0.425978s |  0.04% |  2.51% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439575s |  0.13% |  8.28% )   ( 1.389317s |  0.13% |  8.19% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.385864s |  0.30% | 19.49% )   ( 3.325833s |  0.33% | 19.62% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.491442s |  0.04% |  2.82% )   ( 0.478353s |  0.04% |  2.82% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.488815s |  0.04% |  2.81% )   ( 0.457870s |  0.04% |  2.70% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003387s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003108s |  0.00% |  0.00% )   ( 0.003552s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003444s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit
80.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p* 1>&21
81.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.014626s |  0.00% |  0.08% )   ( 0.008908s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.720869s |  1.61% |  3.21% )   ( 16.809863s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000620s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.720179s |  1.61% | 99.99% )   ( 16.809143s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p4
30.5.0:         ( 0.023433s |  0.00% |  0.13% )   ( 0.023384s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024047s |  0.00% |  0.13% )   ( 0.023998s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024058s |  0.00% |  0.13% )   ( 0.024011s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.023952s |  0.00% |  0.13% )   ( 0.023902s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024031s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004107s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004231s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004625s |  0.00% |  0.00% )   ( 0.005156s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p4
41.5.0:         ( 0.417509s |  0.03% |  0.09% )   ( 0.006395s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004166s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003887s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030877s |  0.00% |  0.00% )   ( 0.031291s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003724s |  0.00% |  0.00% )   ( 0.004229s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007893s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004388s |  0.00% |  0.00% )   ( 0.004933s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p4
66.5.0:         ( 0.003549s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003370s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.074794s |  1.55% |  3.85% )   ( 16.573569s |  1.66% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003558s |  0.00% |  0.02% )   ( 0.004054s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.168403s |  0.10% |  6.84% )   ( 1.090618s |  0.10% |  6.58% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.952222s |  0.17% | 11.43% )   ( 1.902628s |  0.19% | 11.47% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.571682s |  0.14% |  9.20% )   ( 1.553181s |  0.15% |  9.37% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.990239s |  0.18% | 11.65% )   ( 1.908702s |  0.19% | 11.51% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.555649s |  0.14% |  9.11% )   ( 1.543587s |  0.15% |  9.31% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.040599s |  0.09% |  6.09% )   ( 0.997738s |  0.10% |  6.02% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.529239s |  0.04% |  3.09% )   ( 0.507794s |  0.05% |  3.06% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.074189s |  0.09% |  6.29% )   ( 1.033801s |  0.10% |  6.23% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450555s |  0.04% |  2.63% )   ( 0.444797s |  0.04% |  2.68% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.404547s |  0.12% |  8.22% )   ( 1.379316s |  0.13% |  8.32% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.288635s |  0.29% | 19.26% )   ( 3.204643s |  0.32% | 19.33% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.531085s |  0.04% |  3.11% )   ( 0.511540s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.514192s |  0.04% |  3.01% )   ( 0.491170s |  0.04% |  2.96% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004230s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003236s |  0.00% |  0.00% )   ( 0.003710s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006732s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009186s |  0.00% |  0.05% )   ( 0.009261s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.604437s |  1.60% |  3.19% )   ( 16.710861s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000620s |  0.00% |  0.00% )   ( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.603724s |  1.60% | 99.99% )   ( 16.710130s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000325s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p5
30.5.0:         ( 0.023926s |  0.00% |  0.13% )   ( 0.023887s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024083s |  0.00% |  0.13% )   ( 0.024040s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024125s |  0.00% |  0.13% )   ( 0.024081s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024062s |  0.00% |  0.13% )   ( 0.024017s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024176s |  0.00% |  0.13% )   ( 0.024128s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004835s |  0.00% |  0.00% )   ( 0.005405s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004312s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005219s |  0.00% |  0.00% )   ( 0.005818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p5
41.5.0:         ( 0.291987s |  0.02% |  0.05% )   ( 0.006606s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004510s |  0.00% |  0.00% )   ( 0.005081s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004933s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004452s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004723s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032035s |  0.00% |  0.00% )   ( 0.032473s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007125s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005417s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p5
66.5.0:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.077344s |  1.55% |  3.59% )   ( 16.462966s |  1.65% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004031s |  0.00% |  0.02% )   ( 0.004593s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.167504s |  0.10% |  6.83% )   ( 1.082730s |  0.10% |  6.57% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.939642s |  0.17% | 11.35% )   ( 1.867622s |  0.18% | 11.34% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.631583s |  0.14% |  9.55% )   ( 1.564861s |  0.15% |  9.50% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.895067s |  0.17% | 11.09% )   ( 1.870073s |  0.18% | 11.35% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.563735s |  0.14% |  9.15% )   ( 1.529773s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051906s |  0.09% |  6.15% )   ( 0.996676s |  0.09% |  6.05% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565972s |  0.05% |  3.31% )   ( 0.535195s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.050828s |  0.09% |  6.15% )   ( 1.047335s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508913s |  0.04% |  2.98% )   ( 0.475167s |  0.04% |  2.88% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.482869s |  0.13% |  8.68% )   ( 1.395881s |  0.13% |  8.47% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.123027s |  0.28% | 18.28% )   ( 3.038766s |  0.30% | 18.45% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.543305s |  0.04% |  3.18% )   ( 0.537584s |  0.05% |  3.26% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.548962s |  0.04% |  3.21% )   ( 0.516710s |  0.05% |  3.13% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004757s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004359s |  0.00% |  0.00% )   ( 0.004903s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008775s |  0.00% |  0.04% )   ( 0.008848s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 19.295578s |  1.75% |  3.49% )   ( 18.827491s |  1.88% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000608s |  0.00% |  0.00% )   ( 0.000623s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 19.294879s |  1.75% | 99.99% )   ( 18.826765s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p6
30.5.0:         ( 0.023948s |  0.00% |  0.12% )   ( 0.023904s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024020s |  0.00% |  0.12% )   ( 0.023980s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024030s |  0.00% |  0.12% )   ( 0.023982s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.025585s |  0.00% |  0.13% )   ( 0.025534s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.023888s |  0.00% |  0.12% )   ( 0.023841s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001880s |  0.00% |  0.00% )   ( 0.002127s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   true
38.5.0:         ( 0.001755s |  0.00% |  0.00% )   ( 0.002000s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002146s |  0.00% |  0.00% )   ( 0.002391s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p6
41.5.0:         ( 0.096077s |  0.00% |  0.03% )   ( 0.002616s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001849s |  0.00% |  0.00% )   ( 0.002100s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.001644s |  0.00% |  0.00% )   ( 0.001857s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.001537s |  0.00% |  0.00% )   ( 0.001744s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001658s |  0.00% |  0.00% )   ( 0.001877s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.015006s |  0.00% |  0.00% )   ( 0.012199s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001531s |  0.00% |  0.00% )   ( 0.001749s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001644s |  0.00% |  0.00% )   ( 0.001869s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001745s |  0.00% |  0.00% )   ( 0.001975s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002087s |  0.00% |  0.00% )   ( 0.002322s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p6
66.5.0:         ( 0.001675s |  0.00% |  0.00% )   ( 0.001886s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001604s |  0.00% |  0.00% )   ( 0.001828s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.025612s |  1.73% |  8.21% )   ( 18.653307s |  1.86% |  8.25% )    	(12x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001679s |  0.00% |  0.00% )   ( 0.001916s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.155759s |  0.10% |  6.07% )   ( 1.145199s |  0.11% |  6.13% )    	(12x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.361618s |  0.21% | 12.41% )   ( 2.352013s |  0.23% | 12.60% )    	(12x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.865455s |  0.16% |  9.80% )   ( 1.800868s |  0.18% |  9.65% )    	(12x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.475432s |  0.22% | 13.01% )   ( 2.416524s |  0.24% | 12.95% )    	(12x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.781907s |  0.16% |  9.36% )   ( 1.735285s |  0.17% |  9.30% )    	(12x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.160455s |  0.10% |  6.09% )   ( 1.097246s |  0.10% |  5.88% )    	(12x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.353306s |  0.03% |  1.85% )   ( 0.351016s |  0.03% |  1.88% )    	(12x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.179820s |  0.10% |  6.20% )   ( 1.174389s |  0.11% |  6.29% )    	(12x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.283635s |  0.02% |  1.49% )   ( 0.283769s |  0.02% |  1.52% )    	(12x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.504847s |  0.13% |  7.90% )   ( 1.485230s |  0.14% |  7.96% )    	(12x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.242700s |  0.38% | 22.29% )   ( 4.188743s |  0.41% | 22.45% )    	(12x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.339279s |  0.03% |  1.78% )   ( 0.325810s |  0.03% |  1.74% )    	(12x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.319720s |  0.02% |  1.68% )   ( 0.295299s |  0.02% |  1.58% )    	(12x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001660s |  0.00% |  0.00% )   ( 0.001891s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001523s |  0.00% |  0.00% )   ( 0.001730s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004980s |  0.00% |  0.00% )   ( 0.002078s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004991s |  0.00% |  0.02% )   ( 0.005058s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.495641s |  1.59% |  3.17% )   ( 16.388020s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000652s |  0.00% |  0.00% )   ( 0.000671s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.494902s |  1.59% | 99.99% )   ( 16.387249s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000338s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000362s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p7
30.5.0:         ( 0.024054s |  0.00% |  0.13% )   ( 0.024009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024067s |  0.00% |  0.13% )   ( 0.024021s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024105s |  0.00% |  0.13% )   ( 0.024058s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.023975s |  0.00% |  0.13% )   ( 0.023928s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024117s |  0.00% |  0.13% )   ( 0.024067s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005093s |  0.00% |  0.00% )   ( 0.005668s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005364s |  0.00% |  0.00% )   ( 0.005962s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p7
41.5.0:         ( 0.499744s |  0.04% |  0.09% )   ( 0.007600s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005016s |  0.00% |  0.00% )   ( 0.005622s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004666s |  0.00% |  0.00% )   ( 0.005251s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004323s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004546s |  0.00% |  0.00% )   ( 0.005123s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034950s |  0.00% |  0.00% )   ( 0.035416s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004424s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004784s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007370s |  0.00% |  0.00% )   ( 0.004919s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005184s |  0.00% |  0.00% )   ( 0.005764s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p7
66.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.747523s |  1.52% |  3.30% )   ( 16.131363s |  1.61% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003958s |  0.00% |  0.02% )   ( 0.004530s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.151439s |  0.10% |  6.87% )   ( 1.070670s |  0.10% |  6.63% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.811472s |  0.16% | 10.81% )   ( 1.800564s |  0.18% | 11.16% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642341s |  0.14% |  9.80% )   ( 1.562414s |  0.15% |  9.68% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.837360s |  0.16% | 10.97% )   ( 1.796805s |  0.18% | 11.13% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.562312s |  0.14% |  9.32% )   ( 1.480052s |  0.14% |  9.17% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.045854s |  0.09% |  6.24% )   ( 0.979438s |  0.09% |  6.07% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.635407s |  0.05% |  3.79% )   ( 0.568534s |  0.05% |  3.52% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.042498s |  0.09% |  6.22% )   ( 1.030713s |  0.10% |  6.38% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508721s |  0.04% |  3.03% )   ( 0.496776s |  0.04% |  3.07% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.397568s |  0.12% |  8.34% )   ( 1.363078s |  0.13% |  8.44% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.924586s |  0.26% | 17.46% )   ( 2.867460s |  0.28% | 17.77% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.598431s |  0.05% |  3.57% )   ( 0.565615s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.585576s |  0.05% |  3.49% )   ( 0.544714s |  0.05% |  3.37% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004240s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.006934s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007584s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009132s |  0.00% |  0.05% )   ( 0.009212s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.870685s |  1.62% |  3.23% )   ( 17.024346s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000632s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.869964s |  1.62% | 99.99% )   ( 17.023597s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p8
30.5.0:         ( 0.024023s |  0.00% |  0.13% )   ( 0.023981s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024018s |  0.00% |  0.13% )   ( 0.023977s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.025347s |  0.00% |  0.14% )   ( 0.025298s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.023879s |  0.00% |  0.13% )   ( 0.023835s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024172s |  0.00% |  0.13% )   ( 0.024122s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003700s |  0.00% |  0.00% )   ( 0.004186s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p8
41.5.0:         ( 0.255097s |  0.02% |  0.05% )   ( 0.006043s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004153s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003478s |  0.00% |  0.00% )   ( 0.003967s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026300s |  0.00% |  0.00% )   ( 0.026680s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003411s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003390s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004272s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p8
66.5.0:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003958s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003377s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.398882s |  1.58% |  4.05% )   ( 16.793983s |  1.68% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003501s |  0.00% |  0.02% )   ( 0.003971s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.197592s |  0.10% |  6.88% )   ( 1.113475s |  0.11% |  6.63% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.047663s |  0.18% | 11.76% )   ( 1.971745s |  0.19% | 11.74% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.619462s |  0.14% |  9.30% )   ( 1.606631s |  0.16% |  9.56% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.988330s |  0.18% | 11.42% )   ( 1.946820s |  0.19% | 11.59% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.656048s |  0.15% |  9.51% )   ( 1.563807s |  0.15% |  9.31% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021233s |  0.09% |  5.86% )   ( 0.986160s |  0.09% |  5.87% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.517489s |  0.04% |  2.97% )   ( 0.495161s |  0.04% |  2.94% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.155584s |  0.10% |  6.64% )   ( 1.064159s |  0.10% |  6.33% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456344s |  0.04% |  2.62% )   ( 0.438037s |  0.04% |  2.60% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472819s |  0.13% |  8.46% )   ( 1.411725s |  0.14% |  8.40% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.265817s |  0.29% | 18.77% )   ( 3.217764s |  0.32% | 19.16% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.515040s |  0.04% |  2.96% )   ( 0.495940s |  0.04% |  2.95% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.481960s |  0.04% |  2.77% )   ( 0.478588s |  0.04% |  2.84% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003554s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003512s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003675s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007099s |  0.00% |  0.03% )   ( 0.007195s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.558796s |  1.59% |  3.18% )   ( 16.463164s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000640s |  0.00% |  0.00% )   ( 0.000660s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.558068s |  1.59% | 99.99% )   ( 16.462404s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000346s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p9
30.5.0:         ( 0.023979s |  0.00% |  0.13% )   ( 0.023931s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024966s |  0.00% |  0.14% )   ( 0.024916s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024040s |  0.00% |  0.13% )   ( 0.023992s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024054s |  0.00% |  0.13% )   ( 0.024009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.023903s |  0.00% |  0.13% )   ( 0.023856s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004759s |  0.00% |  0.00% )   ( 0.005302s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004135s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005249s |  0.00% |  0.00% )   ( 0.005844s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p9
41.5.0:         ( 0.368284s |  0.03% |  0.07% )   ( 0.006900s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004873s |  0.00% |  0.00% )   ( 0.005471s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004512s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004774s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034437s |  0.00% |  0.00% )   ( 0.034603s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004161s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010785s |  0.00% |  0.00% )   ( 0.005061s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004854s |  0.00% |  0.00% )   ( 0.005417s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p9
66.5.0:         ( 0.003955s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004452s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.945778s |  1.54% |  3.44% )   ( 16.211679s |  1.62% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004051s |  0.00% |  0.02% )   ( 0.004619s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.180287s |  0.10% |  6.96% )   ( 1.070565s |  0.10% |  6.60% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.893778s |  0.17% | 11.17% )   ( 1.844925s |  0.18% | 11.38% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.649192s |  0.15% |  9.73% )   ( 1.586562s |  0.15% |  9.78% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.920684s |  0.17% | 11.33% )   ( 1.831493s |  0.18% | 11.29% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.544640s |  0.14% |  9.11% )   ( 1.511148s |  0.15% |  9.32% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.034720s |  0.09% |  6.10% )   ( 0.994248s |  0.09% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.550488s |  0.05% |  3.24% )   ( 0.538054s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.058465s |  0.09% |  6.24% )   ( 1.026266s |  0.10% |  6.33% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.514917s |  0.04% |  3.03% )   ( 0.494488s |  0.04% |  3.05% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.434205s |  0.13% |  8.46% )   ( 1.352163s |  0.13% |  8.34% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.015025s |  0.27% | 17.79% )   ( 2.881322s |  0.28% | 17.77% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.592234s |  0.05% |  3.49% )   ( 0.542914s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.553092s |  0.05% |  3.26% )   ( 0.532912s |  0.05% |  3.28% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004237s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007299s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008487s |  0.00% |  0.04% )   ( 0.008568s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.050390s |  1.73% |  3.45% )   ( 17.891537s |  1.79% |  3.58% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000646s |  0.00% |  0.00% )   ( 0.000660s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.049654s |  1.73% | 99.99% )   ( 17.890774s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p10
30.5.0:         ( 0.025707s |  0.00% |  0.13% )   ( 0.025655s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024125s |  0.00% |  0.12% )   ( 0.024076s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024946s |  0.00% |  0.13% )   ( 0.024881s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024044s |  0.00% |  0.12% )   ( 0.024000s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024023s |  0.00% |  0.12% )   ( 0.023977s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005326s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006611s |  0.00% |  0.00% )   ( 0.005511s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p10
41.5.0:         ( 0.414166s |  0.03% |  0.07% )   ( 0.007058s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004417s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004103s |  0.00% |  0.00% )   ( 0.004640s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005023s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043305s |  0.00% |  0.00% )   ( 0.034925s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004126s |  0.00% |  0.00% )   ( 0.004669s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007250s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004891s |  0.00% |  0.00% )   ( 0.005454s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p10
66.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003891s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.385308s |  1.67% |  3.44% )   ( 17.640851s |  1.76% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004161s |  0.00% |  0.02% )   ( 0.004712s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.325608s |  0.12% |  7.21% )   ( 1.246944s |  0.12% |  7.06% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.226634s |  0.20% | 12.11% )   ( 2.144443s |  0.21% | 12.15% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.880476s |  0.17% | 10.22% )   ( 1.794813s |  0.17% | 10.17% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.205491s |  0.20% | 11.99% )   ( 2.113663s |  0.21% | 11.98% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.637681s |  0.14% |  8.90% )   ( 1.555891s |  0.15% |  8.81% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.128753s |  0.10% |  6.13% )   ( 1.068388s |  0.10% |  6.05% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560897s |  0.05% |  3.05% )   ( 0.551453s |  0.05% |  3.12% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.161513s |  0.10% |  6.31% )   ( 1.103145s |  0.11% |  6.25% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.516101s |  0.04% |  2.80% )   ( 0.498182s |  0.04% |  2.82% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474115s |  0.13% |  8.01% )   ( 1.407722s |  0.14% |  7.97% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.120771s |  0.28% | 16.97% )   ( 3.047451s |  0.30% | 17.27% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.583757s |  0.05% |  3.17% )   ( 0.561317s |  0.05% |  3.18% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.559350s |  0.05% |  3.04% )   ( 0.542727s |  0.05% |  3.07% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007280s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006510s |  0.00% |  0.03% )   ( 0.006575s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 18.659013s |  1.69% |  3.38% )   ( 17.832923s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000669s |  0.00% |  0.00% )   ( 0.000682s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.658253s |  1.69% | 99.99% )   ( 17.832139s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p11
30.5.0:         ( 0.032227s |  0.00% |  0.17% )   ( 0.032123s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026644s |  0.00% |  0.14% )   ( 0.026565s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024226s |  0.00% |  0.12% )   ( 0.024055s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024049s |  0.00% |  0.12% )   ( 0.024006s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.023950s |  0.00% |  0.12% )   ( 0.023903s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003518s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003728s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p11
41.5.0:         ( 0.274902s |  0.02% |  0.06% )   ( 0.005172s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003220s |  0.00% |  0.00% )   ( 0.003651s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003168s |  0.00% |  0.00% )   ( 0.003589s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003681s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026467s |  0.00% |  0.00% )   ( 0.026783s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003029s |  0.00% |  0.00% )   ( 0.003446s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003118s |  0.00% |  0.00% )   ( 0.003566s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003237s |  0.00% |  0.00% )   ( 0.003658s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003712s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p11
66.5.0:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003394s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002928s |  0.00% |  0.00% )   ( 0.003313s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.168046s |  1.65% |  4.63% )   ( 17.605003s |  1.76% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003046s |  0.00% |  0.01% )   ( 0.003473s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.200474s |  0.10% |  6.60% )   ( 1.174105s |  0.11% |  6.66% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.199140s |  0.20% | 12.10% )   ( 2.129429s |  0.21% | 12.09% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.750252s |  0.15% |  9.63% )   ( 1.704392s |  0.17% |  9.68% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.172389s |  0.19% | 11.95% )   ( 2.107560s |  0.21% | 11.97% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.693730s |  0.15% |  9.32% )   ( 1.614033s |  0.16% |  9.16% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.077695s |  0.09% |  5.93% )   ( 1.047505s |  0.10% |  5.95% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512657s |  0.04% |  2.82% )   ( 0.457266s |  0.04% |  2.59% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140855s |  0.10% |  6.27% )   ( 1.115024s |  0.11% |  6.33% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.419535s |  0.03% |  2.30% )   ( 0.406322s |  0.04% |  2.30% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442311s |  0.13% |  7.93% )   ( 1.437381s |  0.14% |  8.16% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.543048s |  0.32% | 19.50% )   ( 3.514104s |  0.35% | 19.96% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.516488s |  0.04% |  2.84% )   ( 0.462642s |  0.04% |  2.62% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.496426s |  0.04% |  2.73% )   ( 0.431767s |  0.04% |  2.45% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003206s |  0.00% |  0.00% )   ( 0.003537s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002761s |  0.00% |  0.00% )   ( 0.003143s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003367s |  0.00% |  0.00% )   ( 0.003749s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005022s |  0.00% |  0.02% )   ( 0.005093s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.447876s |  1.76% |  3.52% )   ( 18.405215s |  1.84% |  3.69% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000752s |  0.00% |  0.00% )   ( 0.000767s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.447035s |  1.76% | 99.99% )   ( 18.404346s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p12
30.5.0:         ( 0.043174s |  0.00% |  0.22% )   ( 0.042994s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041018s |  0.00% |  0.21% )   ( 0.040874s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.025042s |  0.00% |  0.12% )   ( 0.024988s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.025035s |  0.00% |  0.12% )   ( 0.024967s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.026214s |  0.00% |  0.13% )   ( 0.026159s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004621s |  0.00% |  0.00% )   ( 0.005182s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004947s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p12
41.5.0:         ( 0.342225s |  0.03% |  0.06% )   ( 0.006879s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004789s |  0.00% |  0.00% )   ( 0.005358s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004304s |  0.00% |  0.00% )   ( 0.004843s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032267s |  0.00% |  0.00% )   ( 0.032695s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.007176s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004184s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004843s |  0.00% |  0.00% )   ( 0.005392s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p12
66.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004359s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.834849s |  1.71% |  3.58% )   ( 18.122100s |  1.81% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004112s |  0.00% |  0.02% )   ( 0.004679s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.318877s |  0.12% |  7.00% )   ( 1.298196s |  0.13% |  7.16% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.257713s |  0.20% | 11.98% )   ( 2.178476s |  0.21% | 12.02% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.751233s |  0.15% |  9.29% )   ( 1.709810s |  0.17% |  9.43% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.051165s |  0.18% | 10.89% )   ( 2.016816s |  0.20% | 11.12% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.722779s |  0.15% |  9.14% )   ( 1.656464s |  0.16% |  9.14% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.217371s |  0.11% |  6.46% )   ( 1.149211s |  0.11% |  6.34% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590458s |  0.05% |  3.13% )   ( 0.566757s |  0.05% |  3.12% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.311532s |  0.11% |  6.96% )   ( 1.178402s |  0.11% |  6.50% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536748s |  0.04% |  2.84% )   ( 0.485570s |  0.04% |  2.67% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.537392s |  0.13% |  8.16% )   ( 1.470950s |  0.14% |  8.11% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.372817s |  0.30% | 17.90% )   ( 3.323731s |  0.33% | 18.34% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.606754s |  0.05% |  3.22% )   ( 0.550843s |  0.05% |  3.03% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555898s |  0.05% |  2.95% )   ( 0.532195s |  0.05% |  2.93% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004689s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005183s |  0.00% |  0.02% )   ( 0.005261s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.883360s |  1.62% |  3.24% )   ( 17.011410s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000759s |  0.00% |  0.00% )   ( 0.000770s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.882508s |  1.62% | 99.99% )   ( 17.010534s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p13
30.5.0:         ( 0.031403s |  0.00% |  0.17% )   ( 0.031232s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024284s |  0.00% |  0.13% )   ( 0.024229s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.024163s |  0.00% |  0.13% )   ( 0.024119s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.024163s |  0.00% |  0.13% )   ( 0.024115s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.024261s |  0.00% |  0.13% )   ( 0.024213s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004395s |  0.00% |  0.00% )   ( 0.004904s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003981s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004800s |  0.00% |  0.00% )   ( 0.005357s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p13
41.5.0:         ( 0.283867s |  0.02% |  0.06% )   ( 0.006279s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003992s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033364s |  0.00% |  0.00% )   ( 0.031842s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004119s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003648s |  0.00% |  0.00% )   ( 0.004143s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006781s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004508s |  0.00% |  0.00% )   ( 0.005021s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p13
66.5.0:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.359523s |  1.57% |  3.88% )   ( 16.761939s |  1.68% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003869s |  0.00% |  0.02% )   ( 0.004404s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.183614s |  0.10% |  6.81% )   ( 1.129069s |  0.11% |  6.73% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.008072s |  0.18% | 11.56% )   ( 1.987946s |  0.19% | 11.85% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.670656s |  0.15% |  9.62% )   ( 1.612523s |  0.16% |  9.62% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.102574s |  0.19% | 12.11% )   ( 1.967407s |  0.19% | 11.73% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.661763s |  0.15% |  9.57% )   ( 1.580723s |  0.15% |  9.43% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.067600s |  0.09% |  6.14% )   ( 0.996640s |  0.09% |  5.94% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.544925s |  0.04% |  3.13% )   ( 0.516087s |  0.05% |  3.07% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.083859s |  0.09% |  6.24% )   ( 1.065940s |  0.10% |  6.35% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.470559s |  0.04% |  2.71% )   ( 0.451896s |  0.04% |  2.69% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.475041s |  0.13% |  8.49% )   ( 1.426369s |  0.14% |  8.50% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.088646s |  0.28% | 17.79% )   ( 3.030246s |  0.30% | 18.07% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507299s |  0.04% |  2.92% )   ( 0.503537s |  0.05% |  3.00% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491046s |  0.04% |  2.82% )   ( 0.489152s |  0.04% |  2.91% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003652s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008569s |  0.00% |  0.04% )   ( 0.008642s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.115952s |  1.55% |  3.10% )   ( 15.784531s |  1.58% |  3.16% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000940s |  0.00% |  0.00% )   ( 0.000964s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.114822s |  1.55% | 99.99% )   ( 15.783356s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p14
30.5.0:         ( 0.046040s |  0.00% |  0.26% )   ( 0.045890s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046454s |  0.00% |  0.27% )   ( 0.046291s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.046169s |  0.00% |  0.26% )   ( 0.046003s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.046064s |  0.00% |  0.26% )   ( 0.045902s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.046522s |  0.00% |  0.27% )   ( 0.046348s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005149s |  0.00% |  0.00% )   ( 0.005747s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005124s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005443s |  0.00% |  0.00% )   ( 0.006052s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p14
41.5.0:         ( 0.564814s |  0.05% |  0.11% )   ( 0.007847s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007134s |  0.00% |  0.00% )   ( 0.005746s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004523s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004833s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004612s |  0.00% |  0.00% )   ( 0.005201s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038530s |  0.00% |  0.00% )   ( 0.036027s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004389s |  0.00% |  0.00% )   ( 0.004975s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004772s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004738s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005500s |  0.00% |  0.00% )   ( 0.006105s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p14
66.5.0:         ( 0.004522s |  0.00% |  0.00% )   ( 0.005144s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004367s |  0.00% |  0.00% )   ( 0.004955s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.190291s |  1.47% |  3.26% )   ( 15.414736s |  1.54% |  3.36% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004223s |  0.00% |  0.02% )   ( 0.004800s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.121077s |  0.10% |  6.92% )   ( 1.045041s |  0.10% |  6.77% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.819593s |  0.16% | 11.23% )   ( 1.713454s |  0.17% | 11.11% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.661745s |  0.15% | 10.26% )   ( 1.490220s |  0.14% |  9.66% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.774883s |  0.16% | 10.96% )   ( 1.690318s |  0.16% | 10.96% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.504839s |  0.13% |  9.29% )   ( 1.426212s |  0.14% |  9.25% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.988059s |  0.08% |  6.10% )   ( 0.949074s |  0.09% |  6.15% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.603890s |  0.05% |  3.72% )   ( 0.559995s |  0.05% |  3.63% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.983589s |  0.08% |  6.07% )   ( 0.966831s |  0.09% |  6.27% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.525049s |  0.04% |  3.24% )   ( 0.487341s |  0.04% |  3.16% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.334267s |  0.12% |  8.24% )   ( 1.311012s |  0.13% |  8.50% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.712305s |  0.24% | 16.75% )   ( 2.672339s |  0.26% | 17.33% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.597803s |  0.05% |  3.69% )   ( 0.554819s |  0.05% |  3.59% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.558969s |  0.05% |  3.45% )   ( 0.543280s |  0.05% |  3.52% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004166s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007516s |  0.00% |  0.00% )   ( 0.005072s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009088s |  0.00% |  0.05% )   ( 0.009069s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.660548s |  1.60% |  3.20% )   ( 16.565630s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001055s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.659336s |  1.60% | 99.99% )   ( 16.564375s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p15
30.5.0:         ( 0.036968s |  0.00% |  0.20% )   ( 0.036807s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024301s |  0.00% |  0.13% )   ( 0.024234s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.033662s |  0.00% |  0.19% )   ( 0.033555s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.040864s |  0.00% |  0.23% )   ( 0.040720s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.043883s |  0.00% |  0.24% )   ( 0.043735s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003670s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p15
41.5.0:         ( 0.357768s |  0.03% |  0.07% )   ( 0.006451s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004602s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003724s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031359s |  0.00% |  0.00% )   ( 0.031775s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003671s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010149s |  0.00% |  0.00% )   ( 0.004542s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004533s |  0.00% |  0.00% )   ( 0.005075s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p15
66.5.0:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003459s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.011440s |  1.54% |  3.85% )   ( 16.266042s |  1.63% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003482s |  0.00% |  0.02% )   ( 0.003967s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.112478s |  0.10% |  6.53% )   ( 1.082810s |  0.10% |  6.65% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.041509s |  0.18% | 12.00% )   ( 1.892259s |  0.18% | 11.63% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612711s |  0.14% |  9.48% )   ( 1.552788s |  0.15% |  9.54% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.876704s |  0.17% | 11.03% )   ( 1.846895s |  0.18% | 11.35% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.580303s |  0.14% |  9.28% )   ( 1.489581s |  0.14% |  9.15% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982122s |  0.08% |  5.77% )   ( 0.965354s |  0.09% |  5.93% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.532263s |  0.04% |  3.12% )   ( 0.506405s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.100838s |  0.10% |  6.47% )   ( 1.038618s |  0.10% |  6.38% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497929s |  0.04% |  2.92% )   ( 0.452637s |  0.04% |  2.78% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.453910s |  0.13% |  8.54% )   ( 1.373091s |  0.13% |  8.44% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.157983s |  0.28% | 18.56% )   ( 3.053120s |  0.30% | 18.76% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.536040s |  0.04% |  3.15% )   ( 0.512545s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523168s |  0.04% |  3.07% )   ( 0.495972s |  0.04% |  3.04% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003577s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003420s |  0.00% |  0.00% )   ( 0.003879s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003708s |  0.00% |  0.00% )   ( 0.004174s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009035s |  0.00% |  0.05% )   ( 0.009111s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 21.080208s |  1.91% |  3.82% )   ( 20.401527s |  2.04% |  4.09% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000989s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 21.079059s |  1.91% | 99.99% )   ( 20.400968s |  2.04% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p16
30.5.0:         ( 0.041419s |  0.00% |  0.19% )   ( 0.041267s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029609s |  0.00% |  0.14% )   ( 0.029509s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.029669s |  0.00% |  0.14% )   ( 0.029578s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.036522s |  0.00% |  0.17% )   ( 0.036396s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.028155s |  0.00% |  0.13% )   ( 0.028065s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002921s |  0.00% |  0.00% )   ( 0.003317s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005078s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p16
41.5.0:         ( 0.342021s |  0.03% |  0.08% )   ( 0.004933s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003044s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002807s |  0.00% |  0.00% )   ( 0.003189s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003106s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025023s |  0.00% |  0.00% )   ( 0.022329s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002866s |  0.00% |  0.00% )   ( 0.003249s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002739s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002858s |  0.00% |  0.00% )   ( 0.003238s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003414s |  0.00% |  0.00% )   ( 0.003816s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p16
66.5.0:         ( 0.002806s |  0.00% |  0.00% )   ( 0.003193s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004301s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.489372s |  1.86% |  5.11% )   ( 20.148004s |  2.01% |  5.19% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002878s |  0.00% |  0.01% )   ( 0.003268s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.476372s |  0.13% |  7.20% )   ( 1.453203s |  0.14% |  7.21% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.644150s |  0.24% | 12.90% )   ( 2.627340s |  0.26% | 13.04% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.909475s |  0.17% |  9.31% )   ( 1.876879s |  0.18% |  9.31% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.467725s |  0.22% | 12.04% )   ( 2.420487s |  0.24% | 12.01% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.831633s |  0.16% |  8.93% )   ( 1.820189s |  0.18% |  9.03% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.241242s |  0.11% |  6.05% )   ( 1.223944s |  0.12% |  6.07% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.484388s |  0.04% |  2.36% )   ( 0.469702s |  0.04% |  2.33% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.372781s |  0.12% |  6.69% )   ( 1.347753s |  0.13% |  6.68% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403805s |  0.03% |  1.97% )   ( 0.393729s |  0.03% |  1.95% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.619629s |  0.14% |  7.90% )   ( 1.575229s |  0.15% |  7.81% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.129553s |  0.37% | 20.15% )   ( 4.073187s |  0.40% | 20.21% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.479143s |  0.04% |  2.33% )   ( 0.454745s |  0.04% |  2.25% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.426598s |  0.03% |  2.08% )   ( 0.408349s |  0.04% |  2.02% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002862s |  0.00% |  0.00% )   ( 0.003240s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002624s |  0.00% |  0.00% )   ( 0.002983s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002889s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004877s |  0.00% |  0.02% )   ( 0.004942s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.656569s |  1.60% |  3.20% )   ( 16.502933s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001051s |  0.00% |  0.00% )   ( 0.000462s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.655368s |  1.60% | 99.99% )   ( 16.502301s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p17
30.5.0:         ( 0.043242s |  0.00% |  0.24% )   ( 0.043107s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045551s |  0.00% |  0.25% )   ( 0.045399s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.045336s |  0.00% |  0.25% )   ( 0.045191s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.046704s |  0.00% |  0.26% )   ( 0.046539s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.044588s |  0.00% |  0.25% )   ( 0.044447s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004456s |  0.00% |  0.00% )   ( 0.004966s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004908s |  0.00% |  0.00% )   ( 0.005453s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p17
41.5.0:         ( 0.385409s |  0.03% |  0.08% )   ( 0.006342s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004427s |  0.00% |  0.00% )   ( 0.004974s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003535s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004388s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032660s |  0.00% |  0.00% )   ( 0.033052s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003650s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003866s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004659s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005153s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p17
66.5.0:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004344s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.938535s |  1.54% |  3.68% )   ( 16.159015s |  1.61% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003895s |  0.00% |  0.02% )   ( 0.004417s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.142453s |  0.10% |  6.74% )   ( 1.063087s |  0.10% |  6.57% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.876010s |  0.17% | 11.07% )   ( 1.839362s |  0.18% | 11.38% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.648180s |  0.15% |  9.73% )   ( 1.561079s |  0.15% |  9.66% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.890744s |  0.17% | 11.16% )   ( 1.827587s |  0.18% | 11.31% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.571560s |  0.14% |  9.27% )   ( 1.495573s |  0.14% |  9.25% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005977s |  0.09% |  5.93% )   ( 0.978598s |  0.09% |  6.05% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568453s |  0.05% |  3.35% )   ( 0.522438s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107951s |  0.10% |  6.54% )   ( 1.035183s |  0.10% |  6.40% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503745s |  0.04% |  2.97% )   ( 0.461649s |  0.04% |  2.85% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.415978s |  0.12% |  8.35% )   ( 1.357277s |  0.13% |  8.39% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.086395s |  0.28% | 18.22% )   ( 2.984946s |  0.29% | 18.47% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.560412s |  0.05% |  3.30% )   ( 0.521661s |  0.05% |  3.22% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.556782s |  0.05% |  3.28% )   ( 0.506158s |  0.05% |  3.13% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003740s |  0.00% |  0.00% )   ( 0.004245s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006666s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004945s |  0.00% |  0.02% )   ( 0.005010s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 19.350432s |  1.76% |  3.50% )   ( 18.830785s |  1.88% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001069s |  0.00% |  0.00% )   ( 0.001091s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 19.349210s |  1.76% | 99.99% )   ( 18.829522s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p18
30.5.0:         ( 0.043085s |  0.00% |  0.22% )   ( 0.042953s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050693s |  0.00% |  0.26% )   ( 0.050518s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.045933s |  0.00% |  0.23% )   ( 0.045766s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.045860s |  0.00% |  0.23% )   ( 0.045689s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.045707s |  0.00% |  0.23% )   ( 0.045452s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003830s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003125s |  0.00% |  0.00% )   ( 0.003553s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004058s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p18
41.5.0:         ( 0.270931s |  0.02% |  0.07% )   ( 0.005023s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003216s |  0.00% |  0.00% )   ( 0.003586s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003195s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002754s |  0.00% |  0.00% )   ( 0.003131s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002914s |  0.00% |  0.00% )   ( 0.003300s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023587s |  0.00% |  0.00% )   ( 0.022882s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002751s |  0.00% |  0.00% )   ( 0.003118s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002745s |  0.00% |  0.00% )   ( 0.003141s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004612s |  0.00% |  0.00% )   ( 0.003334s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003462s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p18
66.5.0:         ( 0.002834s |  0.00% |  0.00% )   ( 0.003228s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002764s |  0.00% |  0.00% )   ( 0.003158s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.762346s |  1.70% |  5.10% )   ( 18.505312s |  1.85% |  5.17% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002837s |  0.00% |  0.01% )   ( 0.003226s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.250608s |  0.11% |  6.66% )   ( 1.245695s |  0.12% |  6.73% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.444597s |  0.22% | 13.02% )   ( 2.407804s |  0.24% | 13.01% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.876162s |  0.17% |  9.99% )   ( 1.864235s |  0.18% | 10.07% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.486495s |  0.22% | 13.25% )   ( 2.436480s |  0.24% | 13.16% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.867301s |  0.16% |  9.95% )   ( 1.860197s |  0.18% | 10.05% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.133611s |  0.10% |  6.04% )   ( 1.119816s |  0.11% |  6.05% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.454380s |  0.04% |  2.42% )   ( 0.447376s |  0.04% |  2.41% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.253400s |  0.11% |  6.68% )   ( 1.237993s |  0.12% |  6.68% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.433505s |  0.03% |  2.31% )   ( 0.388499s |  0.03% |  2.09% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.598528s |  0.14% |  8.51% )   ( 1.562254s |  0.15% |  8.44% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.137782s |  0.28% | 16.72% )   ( 3.129958s |  0.31% | 16.91% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.427791s |  0.03% |  2.28% )   ( 0.412497s |  0.04% |  2.22% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.395349s |  0.03% |  2.10% )   ( 0.389282s |  0.03% |  2.10% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002936s |  0.00% |  0.00% )   ( 0.003313s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002747s |  0.00% |  0.00% )   ( 0.003105s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003418s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009536s |  0.00% |  0.04% )   ( 0.009592s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.941289s |  1.63% |  3.25% )   ( 16.989463s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001071s |  0.00% |  0.00% )   ( 0.001095s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.940064s |  1.63% | 99.99% )   ( 16.988194s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p19
30.5.0:         ( 0.026409s |  0.00% |  0.14% )   ( 0.026343s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027744s |  0.00% |  0.15% )   ( 0.027658s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.032744s |  0.00% |  0.18% )   ( 0.032628s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.039822s |  0.00% |  0.22% )   ( 0.039683s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.050047s |  0.00% |  0.27% )   ( 0.049857s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004222s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003303s |  0.00% |  0.00% )   ( 0.003760s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p19
41.5.0:         ( 0.293399s |  0.02% |  0.07% )   ( 0.005548s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003710s |  0.00% |  0.00% )   ( 0.004166s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003300s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003149s |  0.00% |  0.00% )   ( 0.003562s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003285s |  0.00% |  0.00% )   ( 0.003729s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025530s |  0.00% |  0.00% )   ( 0.025862s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003043s |  0.00% |  0.00% )   ( 0.003463s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003082s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006287s |  0.00% |  0.00% )   ( 0.003715s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p19
66.5.0:         ( 0.003294s |  0.00% |  0.00% )   ( 0.003766s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003230s |  0.00% |  0.00% )   ( 0.003644s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.377716s |  1.58% |  4.61% )   ( 16.709930s |  1.67% |  4.68% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003083s |  0.00% |  0.01% )   ( 0.003496s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.126102s |  0.10% |  6.48% )   ( 1.106314s |  0.11% |  6.62% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.033255s |  0.18% | 11.70% )   ( 1.972283s |  0.19% | 11.80% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.688910s |  0.15% |  9.71% )   ( 1.634025s |  0.16% |  9.77% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.081462s |  0.18% | 11.97% )   ( 2.005825s |  0.20% | 12.00% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.603819s |  0.14% |  9.22% )   ( 1.560077s |  0.15% |  9.33% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001410s |  0.09% |  5.76% )   ( 0.975171s |  0.09% |  5.83% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.454270s |  0.04% |  2.61% )   ( 0.443198s |  0.04% |  2.65% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.113213s |  0.10% |  6.40% )   ( 1.048563s |  0.10% |  6.27% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.405107s |  0.03% |  2.33% )   ( 0.396034s |  0.03% |  2.37% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.395567s |  0.12% |  8.03% )   ( 1.362983s |  0.13% |  8.15% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.471874s |  0.31% | 19.97% )   ( 3.332200s |  0.33% | 19.94% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.515860s |  0.04% |  2.96% )   ( 0.449188s |  0.04% |  2.68% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483784s |  0.04% |  2.78% )   ( 0.420573s |  0.04% |  2.51% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003101s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002893s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003577s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008771s |  0.00% |  0.04% )   ( 0.008853s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 19.929875s |  1.81% |  3.61% )   ( 18.930125s |  1.89% |  3.79% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001102s |  0.00% |  0.00% )   ( 0.001126s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 19.928617s |  1.81% | 99.99% )   ( 18.928824s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p20
30.5.0:         ( 0.046106s |  0.00% |  0.23% )   ( 0.045851s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042300s |  0.00% |  0.21% )   ( 0.042137s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.030189s |  0.00% |  0.15% )   ( 0.030088s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.047837s |  0.00% |  0.24% )   ( 0.047667s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.045859s |  0.00% |  0.23% )   ( 0.045688s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005116s |  0.00% |  0.00% )   ( 0.005682s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p20
41.5.0:         ( 0.485360s |  0.04% |  0.08% )   ( 0.006728s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005047s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004452s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004372s |  0.00% |  0.00% )   ( 0.004902s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033869s |  0.00% |  0.00% )   ( 0.034336s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004927s |  0.00% |  0.00% )   ( 0.004840s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004901s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p20
66.5.0:         ( 0.004083s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.119310s |  1.74% |  3.55% )   ( 18.593327s |  1.86% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003853s |  0.00% |  0.02% )   ( 0.004405s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.422675s |  0.12% |  7.44% )   ( 1.369687s |  0.13% |  7.36% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.197007s |  0.19% | 11.49% )   ( 2.165476s |  0.21% | 11.64% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.830029s |  0.16% |  9.57% )   ( 1.756343s |  0.17% |  9.44% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.164993s |  0.19% | 11.32% )   ( 2.092400s |  0.20% | 11.25% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.715881s |  0.15% |  8.97% )   ( 1.671591s |  0.16% |  8.99% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.209805s |  0.11% |  6.32% )   ( 1.187993s |  0.11% |  6.38% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.582104s |  0.05% |  3.04% )   ( 0.560187s |  0.05% |  3.01% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.277544s |  0.11% |  6.68% )   ( 1.234052s |  0.12% |  6.63% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.507839s |  0.04% |  2.65% )   ( 0.494071s |  0.04% |  2.65% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.547656s |  0.14% |  8.09% )   ( 1.505257s |  0.15% |  8.09% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.520297s |  0.32% | 18.41% )   ( 3.452717s |  0.34% | 18.56% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.585457s |  0.05% |  3.06% )   ( 0.565796s |  0.05% |  3.04% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.554170s |  0.05% |  2.89% )   ( 0.533352s |  0.05% |  2.86% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004170s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003671s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007033s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004939s |  0.00% |  0.02% )   ( 0.005010s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 16.915741s |  1.53% |  3.06% )   ( 16.092865s |  1.61% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001082s |  0.00% |  0.00% )   ( 0.001101s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 16.914510s |  1.53% | 99.99% )   ( 16.091595s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p21
30.5.0:         ( 0.045869s |  0.00% |  0.27% )   ( 0.045535s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045874s |  0.00% |  0.27% )   ( 0.045551s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.045737s |  0.00% |  0.27% )   ( 0.045356s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.032665s |  0.00% |  0.19% )   ( 0.032440s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.039480s |  0.00% |  0.23% )   ( 0.039228s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005285s |  0.00% |  0.00% )   ( 0.005920s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005438s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005635s |  0.00% |  0.00% )   ( 0.006261s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p21
41.5.0:         ( 0.338780s |  0.03% |  0.06% )   ( 0.007442s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005026s |  0.00% |  0.00% )   ( 0.005649s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004929s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004574s |  0.00% |  0.00% )   ( 0.005170s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004831s |  0.00% |  0.00% )   ( 0.005446s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036684s |  0.00% |  0.00% )   ( 0.037201s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004676s |  0.00% |  0.00% )   ( 0.005299s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004417s |  0.00% |  0.00% )   ( 0.005019s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009091s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005712s |  0.00% |  0.00% )   ( 0.006354s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p21
66.5.0:         ( 0.004392s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004829s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.236399s |  1.47% |  3.19% )   ( 15.740573s |  1.57% |  3.26% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004301s |  0.00% |  0.02% )   ( 0.004869s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.092580s |  0.09% |  6.72% )   ( 1.051538s |  0.10% |  6.68% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.784689s |  0.16% | 10.99% )   ( 1.734626s |  0.17% | 11.02% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.536126s |  0.13% |  9.46% )   ( 1.510212s |  0.15% |  9.59% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.767957s |  0.16% | 10.88% )   ( 1.710565s |  0.17% | 10.86% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.487204s |  0.13% |  9.15% )   ( 1.450681s |  0.14% |  9.21% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.976091s |  0.08% |  6.01% )   ( 0.955264s |  0.09% |  6.06% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.607089s |  0.05% |  3.73% )   ( 0.578738s |  0.05% |  3.67% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038853s |  0.09% |  6.39% )   ( 0.998464s |  0.10% |  6.34% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.541294s |  0.04% |  3.33% )   ( 0.515048s |  0.05% |  3.27% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.384035s |  0.12% |  8.52% )   ( 1.348866s |  0.13% |  8.56% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.814588s |  0.25% | 17.33% )   ( 2.737373s |  0.27% | 17.39% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.625992s |  0.05% |  3.85% )   ( 0.582742s |  0.05% |  3.70% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575600s |  0.05% |  3.54% )   ( 0.561587s |  0.05% |  3.56% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005445s |  0.00% |  0.00% )   ( 0.005300s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit
80.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p* 1>&21
81.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009071s |  0.00% |  0.05% )   ( 0.009043s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.233220s |  1.56% |  3.12% )   ( 16.148495s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001102s |  0.00% |  0.00% )   ( 0.001123s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.231959s |  1.56% | 99.99% )   ( 16.147193s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p22
30.5.0:         ( 0.051814s |  0.00% |  0.30% )   ( 0.051630s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044639s |  0.00% |  0.25% )   ( 0.044452s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.032403s |  0.00% |  0.18% )   ( 0.032295s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.045529s |  0.00% |  0.26% )   ( 0.045083s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.047277s |  0.00% |  0.27% )   ( 0.047121s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004632s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004950s |  0.00% |  0.00% )   ( 0.005516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p22
41.5.0:         ( 0.406090s |  0.03% |  0.08% )   ( 0.007066s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004895s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004163s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037672s |  0.00% |  0.00% )   ( 0.032090s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004475s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005105s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004715s |  0.00% |  0.00% )   ( 0.005251s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p22
66.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004399s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003866s |  0.00% |  0.00% )   ( 0.004382s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.488244s |  1.50% |  3.68% )   ( 15.801463s |  1.58% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003836s |  0.00% |  0.02% )   ( 0.004371s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.181357s |  0.10% |  7.16% )   ( 1.060119s |  0.10% |  6.70% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.970950s |  0.17% | 11.95% )   ( 1.813918s |  0.18% | 11.47% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.534612s |  0.13% |  9.30% )   ( 1.513510s |  0.15% |  9.57% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.823445s |  0.16% | 11.05% )   ( 1.792370s |  0.17% | 11.34% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.544395s |  0.14% |  9.36% )   ( 1.468977s |  0.14% |  9.29% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.990905s |  0.09% |  6.00% )   ( 0.955477s |  0.09% |  6.04% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546249s |  0.04% |  3.31% )   ( 0.527581s |  0.05% |  3.33% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.043465s |  0.09% |  6.32% )   ( 1.004509s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.480470s |  0.04% |  2.91% )   ( 0.452797s |  0.04% |  2.86% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.384682s |  0.12% |  8.39% )   ( 1.310701s |  0.13% |  8.29% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.928758s |  0.26% | 17.76% )   ( 2.870590s |  0.28% | 18.16% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.548109s |  0.04% |  3.32% )   ( 0.520023s |  0.05% |  3.29% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507011s |  0.04% |  3.07% )   ( 0.506520s |  0.05% |  3.20% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003716s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009263s |  0.00% |  0.05% )   ( 0.009242s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 18.192752s |  1.65% |  3.29% )   ( 17.558859s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001090s |  0.00% |  0.00% )   ( 0.001113s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 18.191507s |  1.65% | 99.99% )   ( 17.557572s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p23
30.5.0:         ( 0.053823s |  0.00% |  0.29% )   ( 0.053612s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048315s |  0.00% |  0.26% )   ( 0.048142s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.049944s |  0.00% |  0.27% )   ( 0.049753s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.037801s |  0.00% |  0.20% )   ( 0.037652s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.049925s |  0.00% |  0.27% )   ( 0.049730s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002983s |  0.00% |  0.00% )   ( 0.003323s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002580s |  0.00% |  0.00% )   ( 0.002932s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p23
41.5.0:         ( 0.250915s |  0.02% |  0.08% )   ( 0.004208s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003257s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.002630s |  0.00% |  0.00% )   ( 0.002976s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002390s |  0.00% |  0.00% )   ( 0.002736s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002403s |  0.00% |  0.00% )   ( 0.002702s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018649s |  0.00% |  0.00% )   ( 0.018915s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002407s |  0.00% |  0.00% )   ( 0.002713s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002291s |  0.00% |  0.00% )   ( 0.002598s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002495s |  0.00% |  0.00% )   ( 0.002813s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003002s |  0.00% |  0.00% )   ( 0.003348s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p23
66.5.0:         ( 0.002255s |  0.00% |  0.00% )   ( 0.002553s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002252s |  0.00% |  0.00% )   ( 0.002571s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.628264s |  1.60% |  6.05% )   ( 17.236158s |  1.72% |  6.13% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002255s |  0.00% |  0.01% )   ( 0.002563s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.122305s |  0.10% |  6.36% )   ( 1.121535s |  0.11% |  6.50% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.137557s |  0.19% | 12.12% )   ( 2.123292s |  0.21% | 12.31% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.719601s |  0.15% |  9.75% )   ( 1.649005s |  0.16% |  9.56% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.217945s |  0.20% | 12.58% )   ( 2.150210s |  0.21% | 12.47% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.621640s |  0.14% |  9.19% )   ( 1.594535s |  0.15% |  9.25% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982324s |  0.08% |  5.57% )   ( 0.969182s |  0.09% |  5.62% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.432171s |  0.03% |  2.45% )   ( 0.405571s |  0.04% |  2.35% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140382s |  0.10% |  6.46% )   ( 1.111895s |  0.11% |  6.45% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.359590s |  0.03% |  2.03% )   ( 0.335466s |  0.03% |  1.94% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379537s |  0.12% |  7.82% )   ( 1.363517s |  0.13% |  7.91% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.771680s |  0.34% | 21.39% )   ( 3.677059s |  0.36% | 21.33% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.388080s |  0.03% |  2.20% )   ( 0.384345s |  0.03% |  2.22% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.353197s |  0.03% |  2.00% )   ( 0.347983s |  0.03% |  2.01% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002415s |  0.00% |  0.00% )   ( 0.002738s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002141s |  0.00% |  0.00% )   ( 0.002428s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002482s |  0.00% |  0.00% )   ( 0.002794s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.011230s |  0.00% |  0.06% )   ( 0.011312s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.912992s |  1.63% |  3.24% )   ( 17.181982s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.000970s |  0.00% |  0.00% )   ( 0.000996s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.911825s |  1.63% | 99.99% )   ( 17.180772s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p24
30.5.0:         ( 0.046184s |  0.00% |  0.25% )   ( 0.046010s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046377s |  0.00% |  0.25% )   ( 0.046208s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.041183s |  0.00% |  0.22% )   ( 0.041026s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.045035s |  0.00% |  0.25% )   ( 0.044848s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.046101s |  0.00% |  0.25% )   ( 0.045877s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p24
41.5.0:         ( 0.262703s |  0.02% |  0.06% )   ( 0.005229s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003335s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002801s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003393s |  0.00% |  0.00% )   ( 0.003718s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027133s |  0.00% |  0.00% )   ( 0.027477s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003016s |  0.00% |  0.00% )   ( 0.003416s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002891s |  0.00% |  0.00% )   ( 0.003280s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002987s |  0.00% |  0.00% )   ( 0.003384s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003539s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p24
66.5.0:         ( 0.002811s |  0.00% |  0.00% )   ( 0.003199s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002641s |  0.00% |  0.00% )   ( 0.003018s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.340980s |  1.57% |  4.84% )   ( 16.861432s |  1.69% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002992s |  0.00% |  0.01% )   ( 0.003399s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.093756s |  0.09% |  6.30% )   ( 1.077100s |  0.10% |  6.38% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.070168s |  0.18% | 11.93% )   ( 2.030864s |  0.20% | 12.04% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.658814s |  0.15% |  9.56% )   ( 1.615995s |  0.16% |  9.58% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.157616s |  0.19% | 12.44% )   ( 2.020736s |  0.20% | 11.98% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.581526s |  0.14% |  9.12% )   ( 1.576331s |  0.15% |  9.34% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035958s |  0.09% |  5.97% )   ( 0.976891s |  0.09% |  5.79% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.477425s |  0.04% |  2.75% )   ( 0.449954s |  0.04% |  2.66% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148536s |  0.10% |  6.62% )   ( 1.088252s |  0.10% |  6.45% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.395252s |  0.03% |  2.27% )   ( 0.389965s |  0.03% |  2.31% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.431281s |  0.13% |  8.25% )   ( 1.395020s |  0.13% |  8.27% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.406317s |  0.31% | 19.64% )   ( 3.375927s |  0.33% | 20.02% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.464588s |  0.04% |  2.67% )   ( 0.443232s |  0.04% |  2.62% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.416751s |  0.03% |  2.40% )   ( 0.417766s |  0.04% |  2.47% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002915s |  0.00% |  0.00% )   ( 0.003304s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002622s |  0.00% |  0.00% )   ( 0.002949s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002952s |  0.00% |  0.00% )   ( 0.003318s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005049s |  0.00% |  0.02% )   ( 0.005151s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000197s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 18.598428s |  1.69% |  3.37% )   ( 17.906825s |  1.79% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001070s |  0.00% |  0.00% )   ( 0.001094s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 18.597204s |  1.69% | 99.99% )   ( 17.905558s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p25
30.5.0:         ( 0.048835s |  0.00% |  0.26% )   ( 0.045721s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047643s |  0.00% |  0.25% )   ( 0.047458s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.049159s |  0.00% |  0.26% )   ( 0.048977s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.047456s |  0.00% |  0.25% )   ( 0.047283s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.048997s |  0.00% |  0.26% )   ( 0.048820s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003207s |  0.00% |  0.00% )   ( 0.003586s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002825s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p25
41.5.0:         ( 0.186561s |  0.01% |  0.05% )   ( 0.004055s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003023s |  0.00% |  0.00% )   ( 0.003408s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.002721s |  0.00% |  0.00% )   ( 0.003073s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.002477s |  0.00% |  0.00% )   ( 0.002825s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002712s |  0.00% |  0.00% )   ( 0.003052s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028863s |  0.00% |  0.00% )   ( 0.021151s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002654s |  0.00% |  0.00% )   ( 0.002999s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002598s |  0.00% |  0.00% )   ( 0.002953s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007855s |  0.00% |  0.00% )   ( 0.003171s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003184s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p25
66.5.0:         ( 0.002571s |  0.00% |  0.00% )   ( 0.002925s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002599s |  0.00% |  0.00% )   ( 0.002922s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.075594s |  1.64% |  5.39% )   ( 17.580100s |  1.76% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002573s |  0.00% |  0.01% )   ( 0.002924s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.175870s |  0.10% |  6.50% )   ( 1.167267s |  0.11% |  6.63% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.269604s |  0.20% | 12.55% )   ( 2.199433s |  0.22% | 12.51% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.817397s |  0.16% | 10.05% )   ( 1.695295s |  0.16% |  9.64% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.137066s |  0.19% | 11.82% )   ( 2.112661s |  0.21% | 12.01% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.638862s |  0.14% |  9.06% )   ( 1.607023s |  0.16% |  9.14% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.058396s |  0.09% |  5.85% )   ( 1.039113s |  0.10% |  5.91% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.448561s |  0.04% |  2.48% )   ( 0.425716s |  0.04% |  2.42% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.154986s |  0.10% |  6.38% )   ( 1.137851s |  0.11% |  6.47% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.379942s |  0.03% |  2.10% )   ( 0.357570s |  0.03% |  2.03% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.473774s |  0.13% |  8.15% )   ( 1.421042s |  0.14% |  8.08% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.713958s |  0.33% | 20.54% )   ( 3.633949s |  0.36% | 20.67% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.422288s |  0.03% |  2.33% )   ( 0.408515s |  0.04% |  2.32% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.382317s |  0.03% |  2.11% )   ( 0.371741s |  0.03% |  2.11% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002686s |  0.00% |  0.00% )   ( 0.003031s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002386s |  0.00% |  0.00% )   ( 0.002716s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005834s |  0.00% |  0.00% )   ( 0.003182s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009859s |  0.00% |  0.05% )   ( 0.009912s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 22.126998s |  2.01% |  4.01% )   ( 21.014700s |  2.10% |  4.21% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.001053s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 22.125810s |  2.01% | 99.99% )   ( 21.013467s |  2.10% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p26
30.5.0:         ( 0.041910s |  0.00% |  0.18% )   ( 0.041756s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046343s |  0.00% |  0.20% )   ( 0.046159s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.048225s |  0.00% |  0.21% )   ( 0.048053s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.050184s |  0.00% |  0.22% )   ( 0.049992s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.051052s |  0.00% |  0.23% )   ( 0.050878s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004906s |  0.00% |  0.00% )   ( 0.005486s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004428s |  0.00% |  0.00% )   ( 0.005029s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005368s |  0.00% |  0.00% )   ( 0.005956s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p26
41.5.0:         ( 0.330846s |  0.03% |  0.05% )   ( 0.007051s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005264s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004846s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004485s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037062s |  0.00% |  0.00% )   ( 0.037473s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004967s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004430s |  0.00% |  0.00% )   ( 0.004989s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008733s |  0.00% |  0.00% )   ( 0.005282s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005338s |  0.00% |  0.00% )   ( 0.005915s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p26
66.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.435997s |  1.95% |  3.46% )   ( 20.643524s |  2.06% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004113s |  0.00% |  0.01% )   ( 0.004705s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.618251s |  0.14% |  7.54% )   ( 1.543925s |  0.15% |  7.47% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.480217s |  0.22% | 11.57% )   ( 2.403785s |  0.24% | 11.64% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.001722s |  0.18% |  9.33% )   ( 1.934202s |  0.19% |  9.36% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.452096s |  0.22% | 11.43% )   ( 2.348998s |  0.23% | 11.37% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.002324s |  0.18% |  9.34% )   ( 1.875847s |  0.18% |  9.08% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.449858s |  0.13% |  6.76% )   ( 1.364857s |  0.13% |  6.61% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.659137s |  0.05% |  3.07% )   ( 0.609445s |  0.06% |  2.95% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.420965s |  0.12% |  6.62% )   ( 1.390167s |  0.13% |  6.73% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.534918s |  0.04% |  2.49% )   ( 0.526764s |  0.05% |  2.55% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.675958s |  0.15% |  7.81% )   ( 1.661072s |  0.16% |  8.04% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.886587s |  0.35% | 18.13% )   ( 3.821063s |  0.38% | 18.50% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.633140s |  0.05% |  2.95% )   ( 0.594314s |  0.05% |  2.87% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.616711s |  0.05% |  2.87% )   ( 0.564380s |  0.05% |  2.73% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004281s |  0.00% |  0.00% )   ( 0.004848s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005336s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005005s |  0.00% |  0.02% )   ( 0.005079s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 20.479528s |  1.86% |  3.71% )   ( 19.200937s |  1.92% |  3.84% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001076s |  0.00% |  0.00% )   ( 0.001099s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 20.478300s |  1.86% | 99.99% )   ( 19.199666s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.c4VwWO"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p27
30.5.0:         ( 0.050229s |  0.00% |  0.24% )   ( 0.044443s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.050002s |  0.00% |  0.24% )   ( 0.049813s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1611342 ${BASHPID}' INT
33.5.0:         ( 0.052218s |  0.00% |  0.25% )   ( 0.052020s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1611342 ${BASHPID}' TERM
34.5.0:         ( 0.053340s |  0.00% |  0.26% )   ( 0.053156s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1611342 ${BASHPID}' HUP
35.5.0:         ( 0.053260s |  0.00% |  0.26% )   ( 0.053079s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004856s |  0.00% |  0.00% )   ( 0.005457s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004872s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.c4VwWO"/.nLines
38.5.2:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005354s |  0.00% |  0.00% )   ( 0.005959s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p27
41.5.0:         ( 0.458751s |  0.04% |  0.07% )   ( 0.007242s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004829s |  0.00% |  0.00% )   ( 0.005414s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.quit ]]
46.5.0:         ( 0.004666s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.done ]]
46.5.1:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004641s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035888s |  0.00% |  0.00% )   ( 0.035073s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004258s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010813s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005190s |  0.00% |  0.00% )   ( 0.005786s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.c4VwWO"/.wait/p27
66.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004749s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004130s |  0.00% |  0.00% )   ( 0.004674s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.637662s |  1.78% |  3.42% )   ( 18.817791s |  1.88% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004036s |  0.00% |  0.02% )   ( 0.004592s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.453255s |  0.13% |  7.40% )   ( 1.363548s |  0.13% |  7.24% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.299688s |  0.20% | 11.71% )   ( 2.172050s |  0.21% | 11.54% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.878238s |  0.17% |  9.56% )   ( 1.768925s |  0.17% |  9.40% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.192738s |  0.19% | 11.16% )   ( 2.136014s |  0.21% | 11.35% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.760702s |  0.16% |  8.96% )   ( 1.701832s |  0.17% |  9.04% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.257163s |  0.11% |  6.40% )   ( 1.218096s |  0.12% |  6.47% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.645967s |  0.05% |  3.28% )   ( 0.589581s |  0.05% |  3.13% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.298219s |  0.11% |  6.61% )   ( 1.255374s |  0.12% |  6.67% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.575938s |  0.05% |  2.93% )   ( 0.511428s |  0.05% |  2.71% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.575293s |  0.14% |  8.02% )   ( 1.535451s |  0.15% |  8.15% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.480192s |  0.31% | 17.72% )   ( 3.425012s |  0.34% | 18.20% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.599264s |  0.05% |  3.05% )   ( 0.579924s |  0.05% |  3.08% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.616969s |  0.05% |  3.14% )   ( 0.555964s |  0.05% |  2.95% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004797s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007215s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005070s |  0.00% |  0.02% )   ( 0.005157s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001426s |  0.00% |  0.00% )   ( 0.001433s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.500863s |  2.22% |  4.44% )   ( 0.001947s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000317s |  0.00% |  0.00% )   ( 0.000351s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000304s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.050192s |  0.00% |  0.00% )   ( 0.050520s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.c4VwWO"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.c4VwWO"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1611354  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.c4VwWO"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000234s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007165s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.c4VwWO" 2>/dev/null

10.0.0:         ( 547.076396s | 49.79% )            ( 498.826531s | 50.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000684s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 547.075712s | 49.79% | 99.99% )   ( 498.826153s | 50.00% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
.2.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  ├─
24.2.0:         ( 0.042007s |  0.00% |  0.00% )   ( 0.041900s |  0.00% |  0.00% )    	(1x)	│  │   trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001191s |  0.00% |  0.00% )   ( 0.001022s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005207s |  0.00% |  0.00% )   ( 0.005207s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.005207s |  0.00% |100.00% )   ( 0.005207s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002865s |  0.00% |  0.00% )   ( 0.002929s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026873s |  0.00% |  0.00% )   ( 0.000952s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 546.987913s | 49.78% | 99.98% )   ( 498.767168s | 49.99% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
.3.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  ├─
235.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000702s |  0.00% |  0.00% )   ( 0.000825s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.000702s |  0.00% |100.00% )   ( 0.000825s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.005297s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000198s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.006996s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000588s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000121s |  0.00% |100.00% )   ( 0.000134s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000879s |  0.00% |  0.00% )   ( 0.001009s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000076s |  0.00% |  8.64% )   ( 0.000084s |  0.00% |  8.32% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000072s |  0.00% |  8.19% )   ( 0.000084s |  0.00% |  8.32% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000066s |  0.00% |  7.50% )   ( 0.000077s |  0.00% |  7.63% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000069s |  0.00% |  7.84% )   ( 0.000081s |  0.00% |  8.02% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000068s |  0.00% |  7.73% )   ( 0.000078s |  0.00% |  7.73% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000071s |  0.00% |  8.07% )   ( 0.000083s |  0.00% |  8.22% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000071s |  0.00% |  8.07% )   ( 0.000080s |  0.00% |  7.92% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000115s |  0.00% | 13.08% )   ( 0.000127s |  0.00% | 12.58% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.50% )   ( 0.000078s |  0.00% |  7.73% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000068s |  0.00% |  7.73% )   ( 0.000079s |  0.00% |  7.82% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.62% )   ( 0.000077s |  0.00% |  7.63% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000070s |  0.00% |  7.96% )   ( 0.000081s |  0.00% |  8.02% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000906s |  0.00% |  0.00% )   ( 0.000715s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002530s |  0.00% |  0.00% )   ( 0.002675s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000316s |  0.00% | 12.49% )   ( 0.000340s |  0.00% | 12.71% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002214s |  0.00% | 87.50% )   ( 0.002335s |  0.00% | 87.28% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.004631s |  0.00% |  0.00% )   ( 0.005650s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000586s |  0.00% |  0.00% )   ( 0.000454s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000089s |  0.00% |100.00% )   ( 0.000102s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001126s |  0.00% |  0.00% )   ( 0.001216s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000532s |  0.00% |  0.00% )   ( 0.000543s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134752s |  0.01% |  0.02% )   ( 0.134551s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000088s |  0.00% |  0.06% )   ( 0.000100s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021046s |  0.00% | 15.61% )   ( 0.021005s |  0.00% | 15.61% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023634s |  0.00% | 17.53% )   ( 0.023588s |  0.00% | 17.53% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023608s |  0.00% | 17.51% )   ( 0.023557s |  0.00% | 17.50% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023593s |  0.00% | 17.50% )   ( 0.023543s |  0.00% | 17.49% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023499s |  0.00% | 17.43% )   ( 0.023455s |  0.00% | 17.43% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000095s |  0.00% |  0.07% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018975s |  0.00% | 14.08% )   ( 0.018935s |  0.00% | 14.07% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000101s |  0.00% |  0.07% )   ( 0.000109s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000077s |  0.00% |  0.05% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000087s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000393s |  0.00% |  0.00% )   ( 0.000414s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.760929s |  0.34% |  0.68% )   ( 1.837221s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
.4.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─
508.4.0:        ( 0.000115s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │   export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024843s |  0.00% |  0.66% )   ( 0.024779s |  0.00% |  1.34% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023624s |  0.00% |  0.62% )   ( 0.023577s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023590s |  0.00% |  0.62% )   ( 0.023541s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023718s |  0.00% |  0.63% )   ( 0.023676s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023458s |  0.00% |  0.62% )   ( 0.023412s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090028s |  0.00% |  0.00% )   ( 0.103042s |  0.01% |  0.00% )    	(671x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.218489s |  0.20% |  0.08% )   ( 0.121909s |  0.01% |  0.00% )    	(670x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000636s |  0.00% |  0.00% )   ( 0.000711s |  0.00% |  0.01% )    	(3x)	│  │  │  │   continue
521.4.0:        ( 0.088333s |  0.00% |  0.00% )   ( 0.101397s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089144s |  0.00% |  0.00% )   ( 0.102330s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.088209s |  0.00% |  0.00% )   ( 0.101229s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090145s |  0.00% |  0.00% )   ( 0.102947s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091139s |  0.00% |  0.00% )   ( 0.104054s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.087460s |  0.00% |  0.00% )   ( 0.100457s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.087916s |  0.00% |  0.00% )   ( 0.100885s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.088608s |  0.00% |  0.00% )   ( 0.100577s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000622s |  0.00% |  0.01% )   ( 0.000452s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002588s |  0.00% |  0.06% )   ( 0.002961s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002588s |  0.00% |100.00% )   ( 0.002961s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.087328s |  0.00% |  0.00% )   ( 0.100278s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.086727s |  0.00% |  0.00% )   ( 0.099778s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085332s |  0.00% |  0.00% )   ( 0.097726s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.094452s |  0.00% |  0.00% )   ( 0.104678s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.088476s |  0.00% |  0.00% )   ( 0.101385s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087774s |  0.00% |  0.00% )   ( 0.100716s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002780s |  0.00% |  0.00% )   ( 0.003205s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002718s |  0.00% |  0.00% )   ( 0.003127s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.063697s |  0.00% |  0.08% )   ( 0.043537s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003344s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003167s |  0.00% |  0.00% )   ( 0.003597s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003025s |  0.00% |  0.00% )   ( 0.003478s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007187s |  0.00% |  0.19% )   ( 0.007273s |  0.00% |  0.39% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/pAuto
598.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001288s |  0.00% |  0.00% )   ( 0.000437s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005152s |  0.00% |  0.00% )   ( 0.005881s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000160s |  0.00% |  3.10% )   ( 0.000173s |  0.00% |  2.94% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000105s |  0.00% |  2.03% )   ( 0.000121s |  0.00% |  2.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000091s |  0.00% |  1.76% )   ( 0.000103s |  0.00% |  1.75% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000236s |  0.00% |  4.58% )   ( 0.000246s |  0.00% |  4.18% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000073s |  0.00% |  1.41% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000068s |  0.00% |  1.31% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000070s |  0.00% |  1.35% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000068s |  0.00% |  1.31% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000076s |  0.00% |  1.47% )   ( 0.000084s |  0.00% |  1.42% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000071s |  0.00% |  1.37% )   ( 0.000082s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000072s |  0.00% |  1.39% )   ( 0.000084s |  0.00% |  1.42% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000072s |  0.00% |  1.39% )   ( 0.000084s |  0.00% |  1.42% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000068s |  0.00% |  1.31% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000070s |  0.00% |  1.35% )   ( 0.000082s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000074s |  0.00% |  1.43% )   ( 0.000085s |  0.00% |  1.44% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000074s |  0.00% |  1.43% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000068s |  0.00% |  1.31% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000098s |  0.00% |  1.90% )   ( 0.000110s |  0.00% |  1.87% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000076s |  0.00% |  1.47% )   ( 0.000087s |  0.00% |  1.47% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000077s |  0.00% |  1.49% )   ( 0.000088s |  0.00% |  1.49% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000102s |  0.00% |  1.97% )   ( 0.000114s |  0.00% |  1.93% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.28% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000079s |  0.00% |  1.53% )   ( 0.000091s |  0.00% |  1.54% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.53% )   ( 0.000091s |  0.00% |  1.54% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000093s |  0.00% |  1.80% )   ( 0.000101s |  0.00% |  1.71% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000072s |  0.00% |  1.39% )   ( 0.000083s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000085s |  0.00% |  1.64% )   ( 0.000098s |  0.00% |  1.66% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000082s |  0.00% |  1.59% )   ( 0.000094s |  0.00% |  1.59% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000082s |  0.00% |  1.59% )   ( 0.000094s |  0.00% |  1.59% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000074s |  0.00% |  1.43% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.47% )   ( 0.000088s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000090s |  0.00% |  1.74% )   ( 0.000101s |  0.00% |  1.71% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000083s |  0.00% |  1.61% )   ( 0.000095s |  0.00% |  1.61% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000071s |  0.00% |  1.37% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000070s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000065s |  0.00% |  1.26% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000089s |  0.00% |  1.72% )   ( 0.000101s |  0.00% |  1.71% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000072s |  0.00% |  1.39% )   ( 0.000085s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000069s |  0.00% |  1.33% )   ( 0.000081s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000093s |  0.00% |  1.80% )   ( 0.000105s |  0.00% |  1.78% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000067s |  0.00% |  1.30% )   ( 0.000078s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000066s |  0.00% |  1.28% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000068s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000101s |  0.00% |  1.96% )   ( 0.000113s |  0.00% |  1.92% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.39% )   ( 0.000083s |  0.00% |  1.41% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000071s |  0.00% |  1.37% )   ( 0.000082s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000065s |  0.00% |  1.26% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000088s |  0.00% |  1.70% )   ( 0.000100s |  0.00% |  1.70% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000073s |  0.00% |  1.41% )   ( 0.000084s |  0.00% |  1.42% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000071s |  0.00% |  1.37% )   ( 0.000082s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000070s |  0.00% |  1.35% )   ( 0.000082s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000100s |  0.00% |  1.94% )   ( 0.000112s |  0.00% |  1.90% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000272s |  0.00% |  0.00% )   ( 0.000311s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000291s |  0.00% |  0.00% )   ( 0.000323s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023994s |  0.00% |  0.00% )   ( 0.023947s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023906s |  0.00% |  0.00% )   ( 0.023865s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023989s |  0.00% |  0.00% )   ( 0.170007s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023582s |  0.00% |  0.00% )   ( 0.023527s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002973s |  0.00% |  0.00% )   ( 0.003407s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002779s |  0.00% |  0.00% )   ( 0.003189s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 17.276204s |  1.57% |  3.15% )   ( 16.217639s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000597s |  0.00% |  0.00% )   ( 0.000615s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 17.275527s |  1.57% | 99.99% )   ( 16.216931s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p0
30.5.0:         ( 0.023408s |  0.00% |  0.13% )   ( 0.023355s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023557s |  0.00% |  0.13% )   ( 0.023514s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.023931s |  0.00% |  0.13% )   ( 0.023886s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024118s |  0.00% |  0.13% )   ( 0.024076s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024061s |  0.00% |  0.13% )   ( 0.024017s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004882s |  0.00% |  0.00% )   ( 0.005481s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004441s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000269s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005628s |  0.00% |  0.00% )   ( 0.006235s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p0
41.5.0:         ( 0.174683s |  0.01% |  0.03% )   ( 0.006766s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004964s |  0.00% |  0.00% )   ( 0.005605s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005236s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004392s |  0.00% |  0.00% )   ( 0.004961s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004477s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037912s |  0.00% |  0.00% )   ( 0.035413s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007801s |  0.00% |  0.00% )   ( 0.005288s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005096s |  0.00% |  0.00% )   ( 0.005689s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p0
54.5.0:         ( 0.004063s |  0.00% |  0.00% )   ( 0.004640s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.864197s |  1.53% |  3.36% )   ( 15.972776s |  1.60% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004274s |  0.00% |  0.02% )   ( 0.004869s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.131012s |  0.10% |  6.70% )   ( 1.072033s |  0.10% |  6.71% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.838852s |  0.16% | 10.90% )   ( 1.810066s |  0.18% | 11.33% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.560013s |  0.14% |  9.25% )   ( 1.528238s |  0.15% |  9.56% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.873483s |  0.17% | 11.10% )   ( 1.765455s |  0.17% | 11.05% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.618806s |  0.14% |  9.59% )   ( 1.463422s |  0.14% |  9.16% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021770s |  0.09% |  6.05% )   ( 0.970700s |  0.09% |  6.07% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.589504s |  0.05% |  3.49% )   ( 0.548933s |  0.05% |  3.43% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.109304s |  0.10% |  6.57% )   ( 1.022334s |  0.10% |  6.40% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.542759s |  0.04% |  3.21% )   ( 0.488337s |  0.04% |  3.05% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.404245s |  0.12% |  8.32% )   ( 1.348811s |  0.13% |  8.44% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.969788s |  0.27% | 17.61% )   ( 2.834498s |  0.28% | 17.74% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.613120s |  0.05% |  3.63% )   ( 0.565420s |  0.05% |  3.53% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.587267s |  0.05% |  3.48% )   ( 0.549660s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.006115s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009129s |  0.00% |  0.05% )   ( 0.009092s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002764s |  0.00% |  0.00% )   ( 0.003177s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 19.986673s |  1.81% |  3.65% )   ( 19.134508s |  1.91% |  3.83% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000593s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 19.985999s |  1.81% | 99.99% )   ( 19.133807s |  1.91% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p1
30.5.0:         ( 0.023499s |  0.00% |  0.11% )   ( 0.023453s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023812s |  0.00% |  0.11% )   ( 0.023768s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024152s |  0.00% |  0.12% )   ( 0.024106s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024107s |  0.00% |  0.12% )   ( 0.024060s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024056s |  0.00% |  0.12% )   ( 0.024006s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004435s |  0.00% |  0.00% )   ( 0.004943s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p1
41.5.0:         ( 0.268215s |  0.02% |  0.05% )   ( 0.005930s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003547s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004356s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032370s |  0.00% |  0.00% )   ( 0.030174s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004739s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p1
54.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003443s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 19.505250s |  1.77% |  4.06% )   ( 18.911403s |  1.89% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003476s |  0.00% |  0.01% )   ( 0.003951s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.373505s |  0.12% |  7.04% )   ( 1.347442s |  0.13% |  7.12% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.513554s |  0.22% | 12.88% )   ( 2.480148s |  0.24% | 13.11% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.005938s |  0.18% | 10.28% )   ( 1.955880s |  0.19% | 10.34% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.505339s |  0.22% | 12.84% )   ( 2.461436s |  0.24% | 13.01% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.938832s |  0.17% |  9.94% )   ( 1.917822s |  0.19% | 10.14% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.274700s |  0.11% |  6.53% )   ( 1.215181s |  0.12% |  6.42% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.550256s |  0.05% |  2.82% )   ( 0.513645s |  0.05% |  2.71% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.340696s |  0.12% |  6.87% )   ( 1.252792s |  0.12% |  6.62% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.480326s |  0.04% |  2.46% )   ( 0.437899s |  0.04% |  2.31% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.424717s |  0.12% |  7.30% )   ( 1.338036s |  0.13% |  7.07% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.047342s |  0.27% | 15.62% )   ( 3.034361s |  0.30% | 16.04% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.501259s |  0.04% |  2.56% )   ( 0.483988s |  0.04% |  2.55% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.545310s |  0.04% |  2.79% )   ( 0.468822s |  0.04% |  2.47% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003249s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003810s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005097s |  0.00% |  0.02% )   ( 0.005166s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 18.903959s |  1.72% |  3.45% )   ( 18.499283s |  1.85% |  3.70% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000576s |  0.00% |  0.00% )   ( 0.000597s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 18.903300s |  1.72% | 99.99% )   ( 18.498589s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p2
30.5.0:         ( 0.023646s |  0.00% |  0.12% )   ( 0.023605s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023972s |  0.00% |  0.12% )   ( 0.023933s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024200s |  0.00% |  0.12% )   ( 0.024152s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024096s |  0.00% |  0.12% )   ( 0.024050s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024120s |  0.00% |  0.12% )   ( 0.024073s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002020s |  0.00% |  0.00% )   ( 0.002286s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   true
38.5.0:         ( 0.001829s |  0.00% |  0.00% )   ( 0.002072s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002300s |  0.00% |  0.00% )   ( 0.002564s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p2
41.5.0:         ( 0.022887s |  0.00% |  0.00% )   ( 0.002406s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001962s |  0.00% |  0.00% )   ( 0.002234s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.001804s |  0.00% |  0.00% )   ( 0.002033s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.001725s |  0.00% |  0.00% )   ( 0.001969s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001873s |  0.00% |  0.00% )   ( 0.002116s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.013531s |  0.00% |  0.00% )   ( 0.013739s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004902s |  0.00% |  0.00% )   ( 0.002132s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002064s |  0.00% |  0.00% )   ( 0.002318s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p2
54.5.0:         ( 0.001807s |  0.00% |  0.00% )   ( 0.002081s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001750s |  0.00% |  0.00% )   ( 0.002001s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000262s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.708057s |  1.70% |  7.61% )   ( 18.323134s |  1.83% |  7.61% )    	(13x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001755s |  0.00% |  0.00% )   ( 0.001997s |  0.00% |  0.01% )    	(13x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.189512s |  0.10% |  6.35% )   ( 1.179974s |  0.11% |  6.43% )    	(13x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.358689s |  0.21% | 12.60% )   ( 2.339110s |  0.23% | 12.76% )    	(13x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.771791s |  0.16% |  9.47% )   ( 1.751512s |  0.17% |  9.55% )    	(13x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.380778s |  0.21% | 12.72% )   ( 2.337202s |  0.23% | 12.75% )    	(13x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.755336s |  0.15% |  9.38% )   ( 1.720189s |  0.17% |  9.38% )    	(13x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.071759s |  0.09% |  5.72% )   ( 1.028185s |  0.10% |  5.61% )    	(13x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.389876s |  0.03% |  2.08% )   ( 0.344136s |  0.03% |  1.87% )    	(13x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.286189s |  0.11% |  6.87% )   ( 1.191894s |  0.11% |  6.50% )    	(13x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.303728s |  0.02% |  1.62% )   ( 0.278772s |  0.02% |  1.52% )    	(13x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.457804s |  0.13% |  7.79% )   ( 1.432076s |  0.14% |  7.81% )    	(13x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.109823s |  0.37% | 21.96% )   ( 4.091182s |  0.41% | 22.32% )    	(13x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.340834s |  0.03% |  1.82% )   ( 0.336155s |  0.03% |  1.83% )    	(13x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.290183s |  0.02% |  1.55% )   ( 0.290750s |  0.02% |  1.58% )    	(13x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.001699s |  0.00% |  0.00% )   ( 0.001923s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001507s |  0.00% |  0.00% )   ( 0.001728s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001705s |  0.00% |  0.00% )   ( 0.001917s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008307s |  0.00% |  0.04% )   ( 0.008382s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 20.384449s |  1.85% |  3.72% )   ( 19.609400s |  1.96% |  3.93% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000591s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 20.383770s |  1.85% | 99.99% )   ( 19.608693s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000357s |  0.00% |  0.00% )   ( 0.000400s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p3
30.5.0:         ( 0.023836s |  0.00% |  0.11% )   ( 0.023794s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024125s |  0.00% |  0.11% )   ( 0.024084s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024088s |  0.00% |  0.11% )   ( 0.024038s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024067s |  0.00% |  0.11% )   ( 0.024020s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024039s |  0.00% |  0.11% )   ( 0.023990s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004863s |  0.00% |  0.00% )   ( 0.005446s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004440s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005130s |  0.00% |  0.00% )   ( 0.005703s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p3
41.5.0:         ( 0.116724s |  0.01% |  0.01% )   ( 0.006242s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006813s |  0.00% |  0.00% )   ( 0.005309s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004953s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004173s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033674s |  0.00% |  0.00% )   ( 0.034150s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004724s |  0.00% |  0.00% )   ( 0.005320s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005070s |  0.00% |  0.00% )   ( 0.005634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p3
54.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.039520s |  1.82% |  3.51% )   ( 19.371710s |  1.94% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004241s |  0.00% |  0.02% )   ( 0.004796s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.419431s |  0.12% |  7.08% )   ( 1.377144s |  0.13% |  7.10% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.323744s |  0.21% | 11.59% )   ( 2.179124s |  0.21% | 11.24% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.876306s |  0.17% |  9.36% )   ( 1.811532s |  0.18% |  9.35% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.296467s |  0.20% | 11.45% )   ( 2.201107s |  0.22% | 11.36% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.840575s |  0.16% |  9.18% )   ( 1.780418s |  0.17% |  9.19% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.266720s |  0.11% |  6.32% )   ( 1.241883s |  0.12% |  6.41% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.602524s |  0.05% |  3.00% )   ( 0.586518s |  0.05% |  3.02% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.317143s |  0.11% |  6.57% )   ( 1.288343s |  0.12% |  6.65% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.533761s |  0.04% |  2.66% )   ( 0.517707s |  0.05% |  2.67% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.678177s |  0.15% |  8.37% )   ( 1.602748s |  0.16% |  8.27% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.694872s |  0.33% | 18.43% )   ( 3.644173s |  0.36% | 18.81% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.618434s |  0.05% |  3.08% )   ( 0.580018s |  0.05% |  2.99% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.567125s |  0.05% |  2.83% )   ( 0.556199s |  0.05% |  2.87% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004249s |  0.00% |  0.00% )   ( 0.004810s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007337s |  0.00% |  0.00% )   ( 0.004848s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004820s |  0.00% |  0.02% )   ( 0.004887s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 20.599638s |  1.87% |  3.76% )   ( 19.910610s |  1.99% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000583s |  0.00% |  0.00% )   ( 0.000598s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 20.598970s |  1.87% | 99.99% )   ( 19.909913s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p4
30.5.0:         ( 0.023972s |  0.00% |  0.11% )   ( 0.023931s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024038s |  0.00% |  0.11% )   ( 0.023997s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024117s |  0.00% |  0.11% )   ( 0.024070s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024041s |  0.00% |  0.11% )   ( 0.023996s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024080s |  0.00% |  0.11% )   ( 0.024025s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004602s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p4
41.5.0:         ( 0.088741s |  0.00% |  0.01% )   ( 0.004849s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003673s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003187s |  0.00% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003900s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027484s |  0.00% |  0.00% )   ( 0.027857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006647s |  0.00% |  0.00% )   ( 0.004119s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p4
54.5.0:         ( 0.003401s |  0.00% |  0.00% )   ( 0.003872s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003625s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.304127s |  1.84% |  4.28% )   ( 19.695311s |  1.97% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003403s |  0.00% |  0.01% )   ( 0.003866s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.457883s |  0.13% |  7.18% )   ( 1.410463s |  0.14% |  7.16% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.801726s |  0.25% | 13.79% )   ( 2.650897s |  0.26% | 13.45% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.082670s |  0.18% | 10.25% )   ( 2.048199s |  0.20% | 10.39% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.638773s |  0.24% | 12.99% )   ( 2.592807s |  0.25% | 13.16% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.071078s |  0.18% | 10.20% )   ( 2.044441s |  0.20% | 10.38% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.256553s |  0.11% |  6.18% )   ( 1.232640s |  0.12% |  6.25% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531939s |  0.04% |  2.61% )   ( 0.504484s |  0.05% |  2.56% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.280203s |  0.11% |  6.30% )   ( 1.210143s |  0.12% |  6.14% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.490888s |  0.04% |  2.41% )   ( 0.445070s |  0.04% |  2.25% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.465269s |  0.13% |  7.21% )   ( 1.396308s |  0.13% |  7.08% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.181307s |  0.28% | 15.66% )   ( 3.170806s |  0.31% | 16.09% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.513838s |  0.04% |  2.53% )   ( 0.504306s |  0.05% |  2.56% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.528597s |  0.04% |  2.60% )   ( 0.480881s |  0.04% |  2.44% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003311s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003057s |  0.00% |  0.00% )   ( 0.003480s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003784s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005095s |  0.00% |  0.02% )   ( 0.005161s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 21.319748s |  1.94% |  3.89% )   ( 20.338293s |  2.03% |  4.07% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000621s |  0.00% |  0.00% )   ( 0.000637s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 21.319044s |  1.94% | 99.99% )   ( 20.337558s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000337s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000364s |  0.00% |  0.00% )   ( 0.000417s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p5
30.5.0:         ( 0.024038s |  0.00% |  0.11% )   ( 0.023997s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024068s |  0.00% |  0.11% )   ( 0.024027s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024056s |  0.00% |  0.11% )   ( 0.024010s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024836s |  0.00% |  0.11% )   ( 0.024784s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024078s |  0.00% |  0.11% )   ( 0.024032s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003929s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003597s |  0.00% |  0.00% )   ( 0.004065s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p5
41.5.0:         ( 0.212882s |  0.01% |  0.04% )   ( 0.005731s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003952s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003344s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026654s |  0.00% |  0.00% )   ( 0.027015s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003915s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p5
54.5.0:         ( 0.003304s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003279s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.900096s |  1.90% |  4.26% )   ( 20.118947s |  2.01% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003263s |  0.00% |  0.01% )   ( 0.003707s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.545434s |  0.14% |  7.39% )   ( 1.459804s |  0.14% |  7.25% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.493061s |  0.22% | 11.92% )   ( 2.382768s |  0.23% | 11.84% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.021010s |  0.18% |  9.66% )   ( 1.874840s |  0.18% |  9.31% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.410227s |  0.21% | 11.53% )   ( 2.360696s |  0.23% | 11.73% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.902647s |  0.17% |  9.10% )   ( 1.833265s |  0.18% |  9.11% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.281761s |  0.11% |  6.13% )   ( 1.262474s |  0.12% |  6.27% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573128s |  0.05% |  2.74% )   ( 0.534565s |  0.05% |  2.65% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.391011s |  0.12% |  6.65% )   ( 1.355442s |  0.13% |  6.73% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462582s |  0.04% |  2.21% )   ( 0.454213s |  0.04% |  2.25% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.676892s |  0.15% |  8.02% )   ( 1.615311s |  0.16% |  8.02% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.062623s |  0.36% | 19.43% )   ( 3.994453s |  0.40% | 19.85% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552507s |  0.05% |  2.64% )   ( 0.511148s |  0.05% |  2.54% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523950s |  0.04% |  2.50% )   ( 0.476261s |  0.04% |  2.36% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003489s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003212s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003617s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006679s |  0.00% |  0.03% )   ( 0.006707s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.887577s |  1.62% |  3.27% )   ( 16.955291s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000600s |  0.00% |  0.00% )   ( 0.000621s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.886893s |  1.62% | 99.99% )   ( 16.954571s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p6
30.5.0:         ( 0.023993s |  0.00% |  0.13% )   ( 0.023950s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024056s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024061s |  0.00% |  0.13% )   ( 0.024010s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024076s |  0.00% |  0.13% )   ( 0.024031s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024046s |  0.00% |  0.13% )   ( 0.023996s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004953s |  0.00% |  0.00% )   ( 0.005531s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005268s |  0.00% |  0.00% )   ( 0.005867s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p6
41.5.0:         ( 0.209038s |  0.01% |  0.04% )   ( 0.006908s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007839s |  0.00% |  0.00% )   ( 0.005469s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004485s |  0.00% |  0.00% )   ( 0.005075s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004401s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034363s |  0.00% |  0.00% )   ( 0.034835s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008480s |  0.00% |  0.00% )   ( 0.005210s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004907s |  0.00% |  0.00% )   ( 0.005480s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p6
54.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004108s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.438715s |  1.58% |  3.48% )   ( 16.710497s |  1.67% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004468s |  0.00% |  0.02% )   ( 0.005059s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.264627s |  0.11% |  7.25% )   ( 1.124182s |  0.11% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.059093s |  0.18% | 11.80% )   ( 1.926138s |  0.19% | 11.52% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.673532s |  0.15% |  9.59% )   ( 1.610449s |  0.16% |  9.63% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.905252s |  0.17% | 10.92% )   ( 1.862461s |  0.18% | 11.14% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.613322s |  0.14% |  9.25% )   ( 1.582292s |  0.15% |  9.46% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051299s |  0.09% |  6.02% )   ( 1.035172s |  0.10% |  6.19% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.576140s |  0.05% |  3.30% )   ( 0.544868s |  0.05% |  3.26% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.144813s |  0.10% |  6.56% )   ( 1.063567s |  0.10% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497902s |  0.04% |  2.85% )   ( 0.477412s |  0.04% |  2.85% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445117s |  0.13% |  8.28% )   ( 1.389489s |  0.13% |  8.31% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.079247s |  0.28% | 17.65% )   ( 3.003948s |  0.30% | 17.97% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.580500s |  0.05% |  3.32% )   ( 0.555644s |  0.05% |  3.32% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.543403s |  0.04% |  3.11% )   ( 0.529816s |  0.05% |  3.17% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004250s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003985s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008165s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009654s |  0.00% |  0.05% )   ( 0.009720s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.328337s |  1.57% |  3.16% )   ( 16.456448s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000621s |  0.00% |  0.00% )   ( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.327632s |  1.57% | 99.99% )   ( 16.455713s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p7
30.5.0:         ( 0.023963s |  0.00% |  0.13% )   ( 0.023921s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024217s |  0.00% |  0.13% )   ( 0.024168s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024121s |  0.00% |  0.13% )   ( 0.024069s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024201s |  0.00% |  0.13% )   ( 0.024155s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024138s |  0.00% |  0.13% )   ( 0.024088s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005108s |  0.00% |  0.00% )   ( 0.005728s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004603s |  0.00% |  0.00% )   ( 0.005192s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005677s |  0.00% |  0.00% )   ( 0.006297s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p7
41.5.0:         ( 0.176978s |  0.01% |  0.03% )   ( 0.006593s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004834s |  0.00% |  0.00% )   ( 0.005433s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005179s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004449s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038281s |  0.00% |  0.00% )   ( 0.036200s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004603s |  0.00% |  0.00% )   ( 0.005169s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005088s |  0.00% |  0.00% )   ( 0.005654s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p7
54.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004875s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.916363s |  1.53% |  3.36% )   ( 16.208886s |  1.62% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004187s |  0.00% |  0.02% )   ( 0.004760s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.141770s |  0.10% |  6.74% )   ( 1.086299s |  0.10% |  6.70% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.917678s |  0.17% | 11.33% )   ( 1.800895s |  0.18% | 11.11% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.678028s |  0.15% |  9.91% )   ( 1.555140s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.848003s |  0.16% | 10.92% )   ( 1.816914s |  0.18% | 11.20% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.537170s |  0.13% |  9.08% )   ( 1.509019s |  0.15% |  9.30% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.044598s |  0.09% |  6.17% )   ( 0.991021s |  0.09% |  6.11% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.630850s |  0.05% |  3.72% )   ( 0.573342s |  0.05% |  3.53% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.113356s |  0.10% |  6.58% )   ( 1.026249s |  0.10% |  6.33% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.514003s |  0.04% |  3.03% )   ( 0.500812s |  0.05% |  3.08% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405528s |  0.12% |  8.30% )   ( 1.360966s |  0.13% |  8.39% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.873909s |  0.26% | 16.98% )   ( 2.837606s |  0.28% | 17.50% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.610424s |  0.05% |  3.60% )   ( 0.578367s |  0.05% |  3.56% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596859s |  0.05% |  3.52% )   ( 0.567496s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004632s |  0.00% |  0.00% )   ( 0.005196s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009077s |  0.00% |  0.05% )   ( 0.009155s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 18.461835s |  1.68% |  3.37% )   ( 17.602558s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000609s |  0.00% |  0.00% )   ( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 18.461140s |  1.68% | 99.99% )   ( 17.601827s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p8
30.5.0:         ( 0.025304s |  0.00% |  0.13% )   ( 0.025255s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024211s |  0.00% |  0.13% )   ( 0.024162s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024247s |  0.00% |  0.13% )   ( 0.024193s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024322s |  0.00% |  0.13% )   ( 0.024259s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024327s |  0.00% |  0.13% )   ( 0.024267s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003667s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004446s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p8
41.5.0:         ( 0.182878s |  0.01% |  0.03% )   ( 0.005817s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003338s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031486s |  0.00% |  0.00% )   ( 0.028880s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007471s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004300s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p8
54.5.0:         ( 0.006484s |  0.00% |  0.00% )   ( 0.003960s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003382s |  0.00% |  0.00% )   ( 0.003846s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.054516s |  1.64% |  4.07% )   ( 17.374954s |  1.74% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003573s |  0.00% |  0.01% )   ( 0.004045s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.220750s |  0.11% |  6.76% )   ( 1.165818s |  0.11% |  6.70% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.168315s |  0.19% | 12.00% )   ( 2.105059s |  0.21% | 12.11% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.749889s |  0.15% |  9.69% )   ( 1.666002s |  0.16% |  9.58% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.141410s |  0.19% | 11.86% )   ( 2.025157s |  0.20% | 11.65% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.653819s |  0.15% |  9.16% )   ( 1.614183s |  0.16% |  9.29% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.076772s |  0.09% |  5.96% )   ( 1.043116s |  0.10% |  6.00% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.520392s |  0.04% |  2.88% )   ( 0.502350s |  0.05% |  2.89% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.161181s |  0.10% |  6.43% )   ( 1.094412s |  0.10% |  6.29% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.454165s |  0.04% |  2.51% )   ( 0.432397s |  0.04% |  2.48% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.467362s |  0.13% |  8.12% )   ( 1.417780s |  0.14% |  8.15% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.403085s |  0.30% | 18.84% )   ( 3.341889s |  0.33% | 19.23% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.530105s |  0.04% |  2.93% )   ( 0.492363s |  0.04% |  2.83% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.503698s |  0.04% |  2.78% )   ( 0.470383s |  0.04% |  2.70% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003707s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003288s |  0.00% |  0.00% )   ( 0.003710s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003595s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009652s |  0.00% |  0.05% )   ( 0.009707s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 19.160401s |  1.74% |  3.50% )   ( 18.229150s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000615s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.159697s |  1.74% | 99.99% )   ( 18.228414s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000336s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p9
30.5.0:         ( 0.023997s |  0.00% |  0.12% )   ( 0.023952s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024098s |  0.00% |  0.12% )   ( 0.024054s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024123s |  0.00% |  0.12% )   ( 0.024074s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.024132s |  0.00% |  0.12% )   ( 0.024086s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024065s |  0.00% |  0.12% )   ( 0.024018s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005113s |  0.00% |  0.00% )   ( 0.005721s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p9
41.5.0:         ( 0.279978s |  0.02% |  0.05% )   ( 0.006527s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004673s |  0.00% |  0.00% )   ( 0.005233s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.005130s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004898s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004532s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039959s |  0.00% |  0.00% )   ( 0.034391s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007714s |  0.00% |  0.00% )   ( 0.005185s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004998s |  0.00% |  0.00% )   ( 0.005561s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p9
54.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004041s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.645404s |  1.69% |  3.47% )   ( 17.988385s |  1.80% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004171s |  0.00% |  0.02% )   ( 0.004736s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.331279s |  0.12% |  7.13% )   ( 1.278778s |  0.12% |  7.10% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.168466s |  0.19% | 11.63% )   ( 2.085148s |  0.20% | 11.59% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.785389s |  0.16% |  9.57% )   ( 1.683505s |  0.16% |  9.35% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.052067s |  0.18% | 11.00% )   ( 2.001162s |  0.20% | 11.12% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.705283s |  0.15% |  9.14% )   ( 1.629261s |  0.16% |  9.05% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.136225s |  0.10% |  6.09% )   ( 1.127821s |  0.11% |  6.26% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.614677s |  0.05% |  3.29% )   ( 0.580783s |  0.05% |  3.22% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.234467s |  0.11% |  6.62% )   ( 1.172548s |  0.11% |  6.51% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.519371s |  0.04% |  2.78% )   ( 0.494142s |  0.04% |  2.74% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.538032s |  0.13% |  8.24% )   ( 1.487582s |  0.14% |  8.26% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.375185s |  0.30% | 18.10% )   ( 3.313536s |  0.33% | 18.42% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.599240s |  0.05% |  3.21% )   ( 0.580710s |  0.05% |  3.22% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.581552s |  0.05% |  3.11% )   ( 0.548673s |  0.05% |  3.05% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004735s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004648s |  0.00% |  0.00% )   ( 0.005198s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007210s |  0.00% |  0.03% )   ( 0.007265s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.297314s |  1.75% |  3.52% )   ( 18.752591s |  1.87% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000608s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.296619s |  1.75% | 99.99% )   ( 18.751865s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p10
30.5.0:         ( 0.024104s |  0.00% |  0.12% )   ( 0.024042s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024220s |  0.00% |  0.12% )   ( 0.024169s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024075s |  0.00% |  0.12% )   ( 0.024023s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.023965s |  0.00% |  0.12% )   ( 0.023916s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024027s |  0.00% |  0.12% )   ( 0.023978s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005092s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p10
41.5.0:         ( 0.151127s |  0.01% |  0.03% )   ( 0.005800s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004534s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003954s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004200s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031864s |  0.00% |  0.00% )   ( 0.029396s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010086s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004381s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p10
54.5.0:         ( 0.006504s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003463s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.924435s |  1.72% |  4.08% )   ( 18.529952s |  1.85% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003512s |  0.00% |  0.01% )   ( 0.003972s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.319782s |  0.12% |  6.97% )   ( 1.279006s |  0.12% |  6.90% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.416006s |  0.21% | 12.76% )   ( 2.341412s |  0.23% | 12.63% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.917099s |  0.17% | 10.13% )   ( 1.879653s |  0.18% | 10.14% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.300074s |  0.20% | 12.15% )   ( 2.269430s |  0.22% | 12.24% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.693979s |  0.15% |  8.95% )   ( 1.674026s |  0.16% |  9.03% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.129153s |  0.10% |  5.96% )   ( 1.119230s |  0.11% |  6.04% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.510769s |  0.04% |  2.69% )   ( 0.507745s |  0.05% |  2.74% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.176457s |  0.10% |  6.21% )   ( 1.170634s |  0.11% |  6.31% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.472920s |  0.04% |  2.49% )   ( 0.445014s |  0.04% |  2.40% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.476611s |  0.13% |  7.80% )   ( 1.452739s |  0.14% |  7.83% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.457497s |  0.31% | 18.27% )   ( 3.399318s |  0.34% | 18.34% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524195s |  0.04% |  2.76% )   ( 0.505810s |  0.05% |  2.72% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.526381s |  0.04% |  2.78% )   ( 0.481963s |  0.04% |  2.60% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003719s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003377s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003741s |  0.00% |  0.00% )   ( 0.004217s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005399s |  0.00% |  0.02% )   ( 0.005469s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.775741s |  1.61% |  3.24% )   ( 17.112928s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000658s |  0.00% |  0.00% )   ( 0.000681s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.774997s |  1.61% | 99.99% )   ( 17.112147s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p11
30.5.0:         ( 0.023963s |  0.00% |  0.13% )   ( 0.023896s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024058s |  0.00% |  0.13% )   ( 0.024011s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024065s |  0.00% |  0.13% )   ( 0.024015s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.023963s |  0.00% |  0.13% )   ( 0.023919s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.024078s |  0.00% |  0.13% )   ( 0.024026s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004598s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p11
41.5.0:         ( 0.090355s |  0.00% |  0.02% )   ( 0.005145s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004313s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003159s |  0.00% |  0.00% )   ( 0.003597s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029385s |  0.00% |  0.00% )   ( 0.029775s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004282s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004281s |  0.00% |  0.00% )   ( 0.004774s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p11
54.5.0:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003203s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.473532s |  1.59% |  4.27% )   ( 16.889014s |  1.69% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003429s |  0.00% |  0.01% )   ( 0.003909s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120861s |  0.10% |  6.41% )   ( 1.089549s |  0.10% |  6.45% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.123266s |  0.19% | 12.15% )   ( 1.966603s |  0.19% | 11.64% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.639576s |  0.14% |  9.38% )   ( 1.619862s |  0.16% |  9.59% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.015311s |  0.18% | 11.53% )   ( 1.971208s |  0.19% | 11.67% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.603077s |  0.14% |  9.17% )   ( 1.571090s |  0.15% |  9.30% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035711s |  0.09% |  5.92% )   ( 1.014635s |  0.10% |  6.00% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501897s |  0.04% |  2.87% )   ( 0.486449s |  0.04% |  2.88% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.100137s |  0.10% |  6.29% )   ( 1.085290s |  0.10% |  6.42% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.454911s |  0.04% |  2.60% )   ( 0.425896s |  0.04% |  2.52% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.419644s |  0.12% |  8.12% )   ( 1.402806s |  0.14% |  8.30% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.464717s |  0.31% | 19.82% )   ( 3.299306s |  0.33% | 19.53% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.516839s |  0.04% |  2.95% )   ( 0.484759s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.474156s |  0.04% |  2.71% )   ( 0.467652s |  0.04% |  2.76% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003272s |  0.00% |  0.00% )   ( 0.003715s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003717s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008751s |  0.00% |  0.04% )   ( 0.008827s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 18.320342s |  1.66% |  3.34% )   ( 17.826588s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000650s |  0.00% |  0.00% )   ( 0.000668s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 18.319607s |  1.66% | 99.99% )   ( 17.825821s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p12
30.5.0:         ( 0.024344s |  0.00% |  0.13% )   ( 0.024220s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024106s |  0.00% |  0.13% )   ( 0.024053s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.024356s |  0.00% |  0.13% )   ( 0.024309s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.037954s |  0.00% |  0.20% )   ( 0.037825s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.029758s |  0.00% |  0.16% )   ( 0.029662s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002820s |  0.00% |  0.00% )   ( 0.003156s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002516s |  0.00% |  0.00% )   ( 0.002859s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002993s |  0.00% |  0.00% )   ( 0.003353s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p12
41.5.0:         ( 0.053670s |  0.00% |  0.01% )   ( 0.003473s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002608s |  0.00% |  0.00% )   ( 0.002935s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.002284s |  0.00% |  0.00% )   ( 0.002595s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.002196s |  0.00% |  0.00% )   ( 0.002509s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002275s |  0.00% |  0.00% )   ( 0.002583s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018758s |  0.00% |  0.00% )   ( 0.019002s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002593s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002805s |  0.00% |  0.00% )   ( 0.003128s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p12
54.5.0:         ( 0.002388s |  0.00% |  0.00% )   ( 0.002705s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002303s |  0.00% |  0.00% )   ( 0.002615s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.061951s |  1.64% |  6.16% )   ( 17.613747s |  1.76% |  6.17% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002491s |  0.00% |  0.01% )   ( 0.002838s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.231610s |  0.11% |  6.81% )   ( 1.159916s |  0.11% |  6.58% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.177768s |  0.19% | 12.05% )   ( 2.150122s |  0.21% | 12.20% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.695275s |  0.15% |  9.38% )   ( 1.656108s |  0.16% |  9.40% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.220609s |  0.20% | 12.29% )   ( 2.161444s |  0.21% | 12.27% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.712473s |  0.15% |  9.48% )   ( 1.637041s |  0.16% |  9.29% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.055938s |  0.09% |  5.84% )   ( 1.050211s |  0.10% |  5.96% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.404497s |  0.03% |  2.23% )   ( 0.399513s |  0.04% |  2.26% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.156252s |  0.10% |  6.40% )   ( 1.128293s |  0.11% |  6.40% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.349952s |  0.03% |  1.93% )   ( 0.345697s |  0.03% |  1.96% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.462821s |  0.13% |  8.09% )   ( 1.424010s |  0.14% |  8.08% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.806619s |  0.34% | 21.07% )   ( 3.755784s |  0.37% | 21.32% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.395131s |  0.03% |  2.18% )   ( 0.382727s |  0.03% |  2.17% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.390515s |  0.03% |  2.16% )   ( 0.360043s |  0.03% |  2.04% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002459s |  0.00% |  0.00% )   ( 0.002798s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002342s |  0.00% |  0.00% )   ( 0.002677s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002532s |  0.00% |  0.00% )   ( 0.002871s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008658s |  0.00% |  0.04% )   ( 0.008741s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.763379s |  1.70% |  3.43% )   ( 18.337761s |  1.83% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000798s |  0.00% |  0.00% )   ( 0.000826s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.762413s |  1.70% | 99.99% )   ( 18.336742s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p13
30.5.0:         ( 0.046079s |  0.00% |  0.24% )   ( 0.045923s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046220s |  0.00% |  0.24% )   ( 0.046065s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.046074s |  0.00% |  0.24% )   ( 0.045930s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.045836s |  0.00% |  0.24% )   ( 0.045675s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.046344s |  0.00% |  0.24% )   ( 0.046173s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002948s |  0.00% |  0.00% )   ( 0.003269s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002668s |  0.00% |  0.00% )   ( 0.003017s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003283s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p13
41.5.0:         ( 0.109688s |  0.00% |  0.03% )   ( 0.003856s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005680s |  0.00% |  0.00% )   ( 0.003072s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.002554s |  0.00% |  0.00% )   ( 0.002903s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.002452s |  0.00% |  0.00% )   ( 0.002800s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002789s |  0.00% |  0.00% )   ( 0.003162s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021757s |  0.00% |  0.00% )   ( 0.022047s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005779s |  0.00% |  0.00% )   ( 0.003119s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003130s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p13
54.5.0:         ( 0.002431s |  0.00% |  0.00% )   ( 0.002792s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002423s |  0.00% |  0.00% )   ( 0.002752s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.350750s |  1.67% |  5.75% )   ( 18.032332s |  1.80% |  5.78% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002545s |  0.00% |  0.01% )   ( 0.002900s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.225994s |  0.11% |  6.68% )   ( 1.203134s |  0.12% |  6.67% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.291840s |  0.20% | 12.48% )   ( 2.258530s |  0.22% | 12.52% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.738920s |  0.15% |  9.47% )   ( 1.727107s |  0.17% |  9.57% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.210359s |  0.20% | 12.04% )   ( 2.198135s |  0.22% | 12.18% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.706019s |  0.15% |  9.29% )   ( 1.676428s |  0.16% |  9.29% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021432s |  0.09% |  5.56% )   ( 1.017682s |  0.10% |  5.64% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.411641s |  0.03% |  2.24% )   ( 0.404605s |  0.04% |  2.24% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.165333s |  0.10% |  6.35% )   ( 1.132156s |  0.11% |  6.27% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.368058s |  0.03% |  2.00% )   ( 0.349238s |  0.03% |  1.93% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.570597s |  0.14% |  8.55% )   ( 1.482420s |  0.14% |  8.22% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.835891s |  0.34% | 20.90% )   ( 3.812755s |  0.38% | 21.14% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.412856s |  0.03% |  2.24% )   ( 0.398618s |  0.03% |  2.21% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.389265s |  0.03% |  2.12% )   ( 0.368624s |  0.03% |  2.04% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002492s |  0.00% |  0.00% )   ( 0.002817s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002321s |  0.00% |  0.00% )   ( 0.002657s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002462s |  0.00% |  0.00% )   ( 0.002776s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004941s |  0.00% |  0.02% )   ( 0.005007s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 22.557566s |  2.05% |  4.12% )   ( 21.736239s |  2.17% |  4.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000910s |  0.00% |  0.00% )   ( 0.000931s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 22.556514s |  2.05% | 99.99% )   ( 21.735145s |  2.17% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p14
30.5.0:         ( 0.037635s |  0.00% |  0.16% )   ( 0.037504s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026855s |  0.00% |  0.11% )   ( 0.026777s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.026944s |  0.00% |  0.11% )   ( 0.026865s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.026751s |  0.00% |  0.11% )   ( 0.026669s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.027322s |  0.00% |  0.12% )   ( 0.027242s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004702s |  0.00% |  0.00% )   ( 0.005257s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004236s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005207s |  0.00% |  0.00% )   ( 0.005791s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p14
41.5.0:         ( 0.199633s |  0.01% |  0.03% )   ( 0.006381s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004571s |  0.00% |  0.00% )   ( 0.005103s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004296s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033636s |  0.00% |  0.00% )   ( 0.034101s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007433s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004955s |  0.00% |  0.00% )   ( 0.005513s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p14
54.5.0:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 22.107789s |  2.01% |  3.63% )   ( 21.474993s |  2.15% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004097s |  0.00% |  0.01% )   ( 0.004671s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.581776s |  0.14% |  7.15% )   ( 1.543398s |  0.15% |  7.18% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.586828s |  0.23% | 11.70% )   ( 2.520053s |  0.25% | 11.73% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.045175s |  0.18% |  9.25% )   ( 2.004948s |  0.20% |  9.33% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.561698s |  0.23% | 11.58% )   ( 2.456744s |  0.24% | 11.44% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.964643s |  0.17% |  8.88% )   ( 1.927092s |  0.19% |  8.97% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.441384s |  0.13% |  6.51% )   ( 1.410126s |  0.14% |  6.56% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.612876s |  0.05% |  2.77% )   ( 0.599537s |  0.06% |  2.79% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.491701s |  0.13% |  6.74% )   ( 1.460005s |  0.14% |  6.79% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.561483s |  0.05% |  2.53% )   ( 0.519599s |  0.05% |  2.41% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.784581s |  0.16% |  8.07% )   ( 1.731295s |  0.17% |  8.06% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.239544s |  0.38% | 19.17% )   ( 4.149672s |  0.41% | 19.32% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.624107s |  0.05% |  2.82% )   ( 0.590689s |  0.05% |  2.75% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.607896s |  0.05% |  2.74% )   ( 0.557164s |  0.05% |  2.59% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004083s |  0.00% |  0.00% )   ( 0.004606s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004286s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004914s |  0.00% |  0.02% )   ( 0.004973s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.637987s |  1.60% |  3.22% )   ( 16.860010s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000941s |  0.00% |  0.00% )   ( 0.000966s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.636903s |  1.60% | 99.99% )   ( 16.858881s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p15
30.5.0:         ( 0.042557s |  0.00% |  0.24% )   ( 0.042427s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043493s |  0.00% |  0.24% )   ( 0.043340s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.040122s |  0.00% |  0.22% )   ( 0.039989s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.032542s |  0.00% |  0.18% )   ( 0.032434s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.029256s |  0.00% |  0.16% )   ( 0.029161s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003785s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p15
41.5.0:         ( 0.119200s |  0.01% |  0.02% )   ( 0.005181s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003348s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003474s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027433s |  0.00% |  0.00% )   ( 0.027820s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006642s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p15
54.5.0:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003621s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.234837s |  1.56% |  4.24% )   ( 16.570340s |  1.66% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003543s |  0.00% |  0.02% )   ( 0.004036s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.203617s |  0.10% |  6.98% )   ( 1.112744s |  0.11% |  6.71% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.075814s |  0.18% | 12.04% )   ( 1.950444s |  0.19% | 11.77% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.659451s |  0.15% |  9.62% )   ( 1.585008s |  0.15% |  9.56% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.978727s |  0.18% | 11.48% )   ( 1.922244s |  0.19% | 11.60% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.567099s |  0.14% |  9.09% )   ( 1.519187s |  0.15% |  9.16% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.029489s |  0.09% |  5.97% )   ( 0.989044s |  0.09% |  5.96% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501468s |  0.04% |  2.90% )   ( 0.483709s |  0.04% |  2.91% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107460s |  0.10% |  6.42% )   ( 1.059077s |  0.10% |  6.39% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.467736s |  0.04% |  2.71% )   ( 0.427505s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.413695s |  0.12% |  8.20% )   ( 1.387898s |  0.13% |  8.37% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.247995s |  0.29% | 18.84% )   ( 3.180218s |  0.31% | 19.19% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.501813s |  0.04% |  2.91% )   ( 0.482883s |  0.04% |  2.91% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.476930s |  0.04% |  2.76% )   ( 0.466343s |  0.04% |  2.81% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003419s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003106s |  0.00% |  0.00% )   ( 0.003548s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006621s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009332s |  0.00% |  0.05% )   ( 0.009404s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.622471s |  1.60% |  3.22% )   ( 16.746537s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000942s |  0.00% |  0.00% )   ( 0.000974s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.621376s |  1.60% | 99.99% )   ( 16.745387s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p16
30.5.0:         ( 0.039883s |  0.00% |  0.22% )   ( 0.039756s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045568s |  0.00% |  0.25% )   ( 0.045423s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.045461s |  0.00% |  0.25% )   ( 0.045309s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.045628s |  0.00% |  0.25% )   ( 0.045489s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.045573s |  0.00% |  0.25% )   ( 0.045434s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003319s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p16
41.5.0:         ( 0.269205s |  0.02% |  0.06% )   ( 0.005673s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003240s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026015s |  0.00% |  0.00% )   ( 0.026378s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006383s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003867s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p16
54.5.0:         ( 0.003213s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003062s |  0.00% |  0.00% )   ( 0.003491s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.041469s |  1.55% |  4.39% )   ( 16.425962s |  1.64% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003189s |  0.00% |  0.01% )   ( 0.003643s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.146252s |  0.10% |  6.72% )   ( 1.092860s |  0.10% |  6.65% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.008017s |  0.18% | 11.78% )   ( 1.928710s |  0.19% | 11.74% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.626877s |  0.14% |  9.54% )   ( 1.569144s |  0.15% |  9.55% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.954118s |  0.17% | 11.46% )   ( 1.917679s |  0.19% | 11.67% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.545730s |  0.14% |  9.07% )   ( 1.527412s |  0.15% |  9.29% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013240s |  0.09% |  5.94% )   ( 0.987862s |  0.09% |  6.01% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.497855s |  0.04% |  2.92% )   ( 0.464322s |  0.04% |  2.82% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.147994s |  0.10% |  6.73% )   ( 1.050726s |  0.10% |  6.39% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.454024s |  0.04% |  2.66% )   ( 0.405323s |  0.04% |  2.46% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.393047s |  0.12% |  8.17% )   ( 1.350861s |  0.13% |  8.22% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.266292s |  0.29% | 19.16% )   ( 3.232348s |  0.32% | 19.67% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.476753s |  0.04% |  2.79% )   ( 0.455381s |  0.04% |  2.77% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.508081s |  0.04% |  2.98% )   ( 0.439691s |  0.04% |  2.67% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003265s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002972s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008902s |  0.00% |  0.05% )   ( 0.008966s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.876621s |  1.62% |  3.26% )   ( 17.196993s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.000994s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.875478s |  1.62% | 99.99% )   ( 17.195801s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p17
30.5.0:         ( 0.045572s |  0.00% |  0.25% )   ( 0.045419s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045760s |  0.00% |  0.25% )   ( 0.045607s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.045637s |  0.00% |  0.25% )   ( 0.045486s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.045613s |  0.00% |  0.25% )   ( 0.045468s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.036250s |  0.00% |  0.20% )   ( 0.036129s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003152s |  0.00% |  0.00% )   ( 0.003561s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p17
41.5.0:         ( 0.224032s |  0.02% |  0.05% )   ( 0.005389s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003558s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003318s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.002951s |  0.00% |  0.00% )   ( 0.003327s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003124s |  0.00% |  0.00% )   ( 0.003510s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025219s |  0.00% |  0.00% )   ( 0.025583s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003435s |  0.00% |  0.00% )   ( 0.003819s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004175s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p17
54.5.0:         ( 0.002945s |  0.00% |  0.00% )   ( 0.003341s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003077s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.354897s |  1.57% |  4.62% )   ( 16.888161s |  1.69% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003199s |  0.00% |  0.01% )   ( 0.003627s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.097163s |  0.09% |  6.32% )   ( 1.097568s |  0.11% |  6.49% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.046816s |  0.18% | 11.79% )   ( 2.008054s |  0.20% | 11.89% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.660336s |  0.15% |  9.56% )   ( 1.625668s |  0.16% |  9.62% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.061951s |  0.18% | 11.88% )   ( 2.015464s |  0.20% | 11.93% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.627400s |  0.14% |  9.37% )   ( 1.587187s |  0.15% |  9.39% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.018918s |  0.09% |  5.87% )   ( 1.000203s |  0.10% |  5.92% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.493350s |  0.04% |  2.84% )   ( 0.470960s |  0.04% |  2.78% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.117393s |  0.10% |  6.43% )   ( 1.078874s |  0.10% |  6.38% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.430916s |  0.03% |  2.48% )   ( 0.392502s |  0.03% |  2.32% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.493785s |  0.13% |  8.60% )   ( 1.385376s |  0.13% |  8.20% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.400540s |  0.30% | 19.59% )   ( 3.344766s |  0.33% | 19.80% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.470381s |  0.04% |  2.71% )   ( 0.454108s |  0.04% |  2.68% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.432749s |  0.03% |  2.49% )   ( 0.423804s |  0.04% |  2.50% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002960s |  0.00% |  0.00% )   ( 0.003384s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005311s |  0.00% |  0.02% )   ( 0.005409s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.291446s |  1.57% |  3.16% )   ( 16.418986s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.000950s |  0.00% |  0.00% )   ( 0.000975s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.290346s |  1.57% | 99.99% )   ( 16.417838s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p18
30.5.0:         ( 0.045706s |  0.00% |  0.26% )   ( 0.045549s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045492s |  0.00% |  0.26% )   ( 0.045335s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.045675s |  0.00% |  0.26% )   ( 0.045522s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.045679s |  0.00% |  0.26% )   ( 0.045521s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.045714s |  0.00% |  0.26% )   ( 0.045571s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004857s |  0.00% |  0.00% )   ( 0.005427s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004288s |  0.00% |  0.00% )   ( 0.004849s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005165s |  0.00% |  0.00% )   ( 0.005725s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p18
41.5.0:         ( 0.255665s |  0.02% |  0.05% )   ( 0.006694s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005227s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004468s |  0.00% |  0.00% )   ( 0.005072s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004558s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004345s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033107s |  0.00% |  0.00% )   ( 0.033542s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007458s |  0.00% |  0.00% )   ( 0.005001s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005105s |  0.00% |  0.00% )   ( 0.005671s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p18
54.5.0:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004606s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005729s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.696658s |  1.51% |  3.71% )   ( 16.070575s |  1.61% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003996s |  0.00% |  0.02% )   ( 0.004554s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138924s |  0.10% |  6.82% )   ( 1.080890s |  0.10% |  6.72% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.927291s |  0.17% | 11.54% )   ( 1.835124s |  0.18% | 11.41% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602880s |  0.14% |  9.60% )   ( 1.546112s |  0.15% |  9.62% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.880700s |  0.17% | 11.26% )   ( 1.808705s |  0.18% | 11.25% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.549250s |  0.14% |  9.27% )   ( 1.475965s |  0.14% |  9.18% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015516s |  0.09% |  6.08% )   ( 0.982750s |  0.09% |  6.11% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.579536s |  0.05% |  3.47% )   ( 0.521102s |  0.05% |  3.24% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.065873s |  0.09% |  6.38% )   ( 1.023931s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473336s |  0.04% |  2.83% )   ( 0.456209s |  0.04% |  2.83% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.402419s |  0.12% |  8.39% )   ( 1.349963s |  0.13% |  8.40% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.985733s |  0.27% | 17.88% )   ( 2.958128s |  0.29% | 18.40% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.535671s |  0.04% |  3.20% )   ( 0.526356s |  0.05% |  3.27% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.535533s |  0.04% |  3.20% )   ( 0.500786s |  0.05% |  3.11% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004226s |  0.00% |  0.00% )   ( 0.004748s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009119s |  0.00% |  0.05% )   ( 0.009193s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 19.200838s |  1.74% |  3.51% )   ( 18.628282s |  1.86% |  3.73% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001017s |  0.00% |  0.00% )   ( 0.001040s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 19.199658s |  1.74% | 99.99% )   ( 18.627061s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p19
30.5.0:         ( 0.045541s |  0.00% |  0.23% )   ( 0.045380s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045682s |  0.00% |  0.23% )   ( 0.045526s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.045699s |  0.00% |  0.23% )   ( 0.045542s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.045693s |  0.00% |  0.23% )   ( 0.045538s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.046053s |  0.00% |  0.23% )   ( 0.045897s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003303s |  0.00% |  0.00% )   ( 0.003714s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003033s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003692s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p19
41.5.0:         ( 0.178143s |  0.01% |  0.04% )   ( 0.005049s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003352s |  0.00% |  0.00% )   ( 0.003771s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003217s |  0.00% |  0.00% )   ( 0.003632s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.002987s |  0.00% |  0.00% )   ( 0.003375s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003494s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024029s |  0.00% |  0.00% )   ( 0.024333s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008463s |  0.00% |  0.00% )   ( 0.003448s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p19
54.5.0:         ( 0.002972s |  0.00% |  0.00% )   ( 0.003341s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002804s |  0.00% |  0.00% )   ( 0.003205s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.713459s |  1.70% |  5.12% )   ( 18.314117s |  1.83% |  5.17% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002668s |  0.00% |  0.01% )   ( 0.003049s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.304830s |  0.11% |  6.97% )   ( 1.252799s |  0.12% |  6.84% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.415944s |  0.21% | 12.91% )   ( 2.391336s |  0.23% | 13.05% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.908806s |  0.17% | 10.20% )   ( 1.848998s |  0.18% | 10.09% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.381562s |  0.21% | 12.72% )   ( 2.362509s |  0.23% | 12.89% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.815280s |  0.16% |  9.70% )   ( 1.796792s |  0.18% |  9.81% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.179456s |  0.10% |  6.30% )   ( 1.125767s |  0.11% |  6.14% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475294s |  0.04% |  2.53% )   ( 0.459218s |  0.04% |  2.50% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.260157s |  0.11% |  6.73% )   ( 1.247650s |  0.12% |  6.81% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.390668s |  0.03% |  2.08% )   ( 0.386379s |  0.03% |  2.10% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.595205s |  0.14% |  8.52% )   ( 1.538512s |  0.15% |  8.40% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.118262s |  0.28% | 16.66% )   ( 3.078558s |  0.30% | 16.80% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.435788s |  0.03% |  2.32% )   ( 0.420755s |  0.04% |  2.29% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.429539s |  0.03% |  2.29% )   ( 0.401795s |  0.04% |  2.19% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002765s |  0.00% |  0.00% )   ( 0.003109s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002723s |  0.00% |  0.00% )   ( 0.003105s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002901s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005181s |  0.00% |  0.02% )   ( 0.005251s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 17.425611s |  1.58% |  3.18% )   ( 16.132085s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.000992s |  0.00% |  0.00% )   ( 0.001016s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 17.424462s |  1.58% | 99.99% )   ( 16.130889s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p20
30.5.0:         ( 0.048586s |  0.00% |  0.27% )   ( 0.048399s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036727s |  0.00% |  0.21% )   ( 0.036615s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.039718s |  0.00% |  0.22% )   ( 0.039608s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.046379s |  0.00% |  0.26% )   ( 0.046243s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.050073s |  0.00% |  0.28% )   ( 0.049917s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003481s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004618s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p20
41.5.0:         ( 0.172791s |  0.01% |  0.04% )   ( 0.005233s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003523s |  0.00% |  0.00% )   ( 0.004002s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003847s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029222s |  0.00% |  0.00% )   ( 0.026586s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006444s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004231s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p20
54.5.0:         ( 0.006458s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003616s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.928854s |  1.54% |  4.41% )   ( 15.810026s |  1.58% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003219s |  0.00% |  0.01% )   ( 0.003665s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132576s |  0.10% |  6.69% )   ( 1.046772s |  0.10% |  6.62% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.069750s |  0.18% | 12.22% )   ( 1.848054s |  0.18% | 11.68% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.571330s |  0.14% |  9.28% )   ( 1.535073s |  0.15% |  9.70% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.919038s |  0.17% | 11.33% )   ( 1.851072s |  0.18% | 11.70% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.555840s |  0.14% |  9.19% )   ( 1.461435s |  0.14% |  9.24% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.987832s |  0.08% |  5.83% )   ( 0.951213s |  0.09% |  6.01% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.520440s |  0.04% |  3.07% )   ( 0.467393s |  0.04% |  2.95% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.044141s |  0.09% |  6.16% )   ( 1.006354s |  0.10% |  6.36% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.446942s |  0.04% |  2.64% )   ( 0.405615s |  0.04% |  2.56% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.368621s |  0.12% |  8.08% )   ( 1.285538s |  0.12% |  8.13% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.223829s |  0.29% | 19.04% )   ( 3.048040s |  0.30% | 19.27% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.496918s |  0.04% |  2.93% )   ( 0.454679s |  0.04% |  2.87% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.588378s |  0.05% |  3.47% )   ( 0.445123s |  0.04% |  2.81% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003023s |  0.00% |  0.00% )   ( 0.003437s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003340s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit
68.5.0:         ( 0.000224s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p* 1>&21
69.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.014214s |  0.00% |  0.08% )   ( 0.009259s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.020432s |  1.54% |  3.11% )   ( 16.293705s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.000972s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.019308s |  1.54% | 99.99% )   ( 16.293151s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p21
30.5.0:         ( 0.034798s |  0.00% |  0.20% )   ( 0.034662s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046850s |  0.00% |  0.27% )   ( 0.046679s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.042179s |  0.00% |  0.24% )   ( 0.042030s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.046229s |  0.00% |  0.27% )   ( 0.046062s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.046149s |  0.00% |  0.27% )   ( 0.045971s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004724s |  0.00% |  0.00% )   ( 0.005293s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004498s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005238s |  0.00% |  0.00% )   ( 0.005825s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p21
41.5.0:         ( 0.131291s |  0.01% |  0.02% )   ( 0.006061s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005263s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004274s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004510s |  0.00% |  0.00% )   ( 0.005079s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033949s |  0.00% |  0.00% )   ( 0.034431s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010535s |  0.00% |  0.00% )   ( 0.005110s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005037s |  0.00% |  0.00% )   ( 0.005633s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p21
54.5.0:         ( 0.009041s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003969s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.554479s |  1.50% |  3.60% )   ( 15.956966s |  1.59% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004058s |  0.00% |  0.02% )   ( 0.004605s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.121236s |  0.10% |  6.77% )   ( 1.071095s |  0.10% |  6.71% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.883191s |  0.17% | 11.37% )   ( 1.811277s |  0.18% | 11.35% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.615592s |  0.14% |  9.75% )   ( 1.543214s |  0.15% |  9.67% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.899761s |  0.17% | 11.47% )   ( 1.799698s |  0.18% | 11.27% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.536080s |  0.13% |  9.27% )   ( 1.482839s |  0.14% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013799s |  0.09% |  6.12% )   ( 0.961040s |  0.09% |  6.02% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539278s |  0.04% |  3.25% )   ( 0.531517s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.022904s |  0.09% |  6.17% )   ( 1.004274s |  0.10% |  6.29% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.496074s |  0.04% |  2.99% )   ( 0.474651s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.388234s |  0.12% |  8.38% )   ( 1.349808s |  0.13% |  8.45% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.937443s |  0.26% | 17.74% )   ( 2.866203s |  0.28% | 17.96% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554643s |  0.05% |  3.35% )   ( 0.540578s |  0.05% |  3.38% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542186s |  0.04% |  3.27% )   ( 0.516167s |  0.05% |  3.23% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004457s |  0.00% |  0.00% )   ( 0.004756s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004305s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004187s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008728s |  0.00% |  0.05% )   ( 0.008804s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.488070s |  1.59% |  3.19% )   ( 16.891422s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001020s |  0.00% |  0.00% )   ( 0.001049s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.486893s |  1.59% | 99.99% )   ( 16.890193s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p22
30.5.0:         ( 0.045015s |  0.00% |  0.25% )   ( 0.044852s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036891s |  0.00% |  0.21% )   ( 0.036760s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.046029s |  0.00% |  0.26% )   ( 0.045840s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.047720s |  0.00% |  0.27% )   ( 0.047546s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.045502s |  0.00% |  0.26% )   ( 0.045343s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004698s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005015s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p22
41.5.0:         ( 0.132771s |  0.01% |  0.02% )   ( 0.006267s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004355s |  0.00% |  0.00% )   ( 0.004929s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003970s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035972s |  0.00% |  0.00% )   ( 0.033412s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005369s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p22
54.5.0:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004387s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003755s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.026732s |  1.54% |  3.74% )   ( 16.552076s |  1.65% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003809s |  0.00% |  0.02% )   ( 0.004350s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.157193s |  0.10% |  6.79% )   ( 1.107753s |  0.11% |  6.69% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.932148s |  0.17% | 11.34% )   ( 1.915486s |  0.19% | 11.57% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.696232s |  0.15% |  9.96% )   ( 1.614475s |  0.16% |  9.75% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.916285s |  0.17% | 11.25% )   ( 1.895621s |  0.19% | 11.45% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.593070s |  0.14% |  9.35% )   ( 1.536335s |  0.15% |  9.28% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.052717s |  0.09% |  6.18% )   ( 1.009111s |  0.10% |  6.09% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.552449s |  0.05% |  3.24% )   ( 0.531513s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.082650s |  0.09% |  6.35% )   ( 1.051744s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.488779s |  0.04% |  2.87% )   ( 0.463989s |  0.04% |  2.80% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.422708s |  0.12% |  8.35% )   ( 1.379411s |  0.13% |  8.33% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.085002s |  0.28% | 18.11% )   ( 3.019177s |  0.30% | 18.24% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.530160s |  0.04% |  3.11% )   ( 0.523003s |  0.05% |  3.15% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.513530s |  0.04% |  3.01% )   ( 0.500108s |  0.05% |  3.02% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003965s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004085s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.010532s |  0.00% |  0.06% )   ( 0.010617s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 18.085063s |  1.64% |  3.30% )   ( 17.376909s |  1.74% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.000881s |  0.00% |  0.00% )   ( 0.000908s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 18.084000s |  1.64% | 99.99% )   ( 17.375790s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p23
30.5.0:         ( 0.045738s |  0.00% |  0.25% )   ( 0.045569s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046305s |  0.00% |  0.25% )   ( 0.046119s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.046059s |  0.00% |  0.25% )   ( 0.045891s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.049195s |  0.00% |  0.27% )   ( 0.049025s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.045951s |  0.00% |  0.25% )   ( 0.045812s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002565s |  0.00% |  0.00% )   ( 0.002862s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.002332s |  0.00% |  0.00% )   ( 0.002628s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002734s |  0.00% |  0.00% )   ( 0.003055s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p23
41.5.0:         ( 0.034726s |  0.00% |  0.01% )   ( 0.002870s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002256s |  0.00% |  0.00% )   ( 0.002547s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.002026s |  0.00% |  0.00% )   ( 0.002307s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.001999s |  0.00% |  0.00% )   ( 0.002275s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002118s |  0.00% |  0.00% )   ( 0.002403s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.015106s |  0.00% |  0.00% )   ( 0.015339s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002161s |  0.00% |  0.00% )   ( 0.002442s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002483s |  0.00% |  0.00% )   ( 0.002762s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p23
54.5.0:         ( 0.001998s |  0.00% |  0.00% )   ( 0.002285s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002029s |  0.00% |  0.00% )   ( 0.002304s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.759501s |  1.61% |  7.01% )   ( 17.079498s |  1.71% |  7.02% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002035s |  0.00% |  0.01% )   ( 0.002316s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.129458s |  0.10% |  6.35% )   ( 1.110085s |  0.11% |  6.49% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.173506s |  0.19% | 12.23% )   ( 2.134832s |  0.21% | 12.49% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.645052s |  0.14% |  9.26% )   ( 1.626095s |  0.16% |  9.52% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.185224s |  0.19% | 12.30% )   ( 2.142341s |  0.21% | 12.54% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.708493s |  0.15% |  9.62% )   ( 1.606278s |  0.16% |  9.40% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.041854s |  0.09% |  5.86% )   ( 0.984684s |  0.09% |  5.76% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.424146s |  0.03% |  2.38% )   ( 0.362066s |  0.03% |  2.11% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.154779s |  0.10% |  6.50% )   ( 1.107779s |  0.11% |  6.48% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.329525s |  0.02% |  1.85% )   ( 0.298725s |  0.02% |  1.74% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.415064s |  0.12% |  7.96% )   ( 1.350259s |  0.13% |  7.90% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.841251s |  0.34% | 21.62% )   ( 3.686823s |  0.36% | 21.58% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.370922s |  0.03% |  2.08% )   ( 0.349068s |  0.03% |  2.04% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.338192s |  0.03% |  1.90% )   ( 0.318147s |  0.03% |  1.86% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002146s |  0.00% |  0.00% )   ( 0.002429s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001872s |  0.00% |  0.00% )   ( 0.002131s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002140s |  0.00% |  0.00% )   ( 0.002408s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009130s |  0.00% |  0.05% )   ( 0.009211s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000182s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 16.893178s |  1.53% |  3.08% )   ( 15.849015s |  1.58% |  3.17% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001036s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 16.891981s |  1.53% | 99.99% )   ( 15.847774s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p24
30.5.0:         ( 0.044994s |  0.00% |  0.26% )   ( 0.044835s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.039699s |  0.00% |  0.23% )   ( 0.039565s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.048099s |  0.00% |  0.28% )   ( 0.047928s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.050104s |  0.00% |  0.29% )   ( 0.049913s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.052285s |  0.00% |  0.30% )   ( 0.052094s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005453s |  0.00% |  0.00% )   ( 0.006096s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004870s |  0.00% |  0.00% )   ( 0.005483s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005716s |  0.00% |  0.00% )   ( 0.006395s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p24
41.5.0:         ( 0.181176s |  0.01% |  0.03% )   ( 0.007111s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005227s |  0.00% |  0.00% )   ( 0.005880s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004806s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005279s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004720s |  0.00% |  0.00% )   ( 0.005326s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037534s |  0.00% |  0.00% )   ( 0.036922s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004796s |  0.00% |  0.00% )   ( 0.005393s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005556s |  0.00% |  0.00% )   ( 0.006190s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p24
54.5.0:         ( 0.004552s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004418s |  0.00% |  0.00% )   ( 0.005035s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.356052s |  1.48% |  3.22% )   ( 15.481346s |  1.55% |  3.25% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004518s |  0.00% |  0.02% )   ( 0.005158s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.244338s |  0.11% |  7.60% )   ( 1.065178s |  0.10% |  6.88% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.788082s |  0.16% | 10.93% )   ( 1.706046s |  0.17% | 11.02% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.518149s |  0.13% |  9.28% )   ( 1.493825s |  0.14% |  9.64% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.738739s |  0.15% | 10.63% )   ( 1.698145s |  0.17% | 10.96% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.484004s |  0.13% |  9.07% )   ( 1.437839s |  0.14% |  9.28% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021061s |  0.09% |  6.24% )   ( 0.964037s |  0.09% |  6.22% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625398s |  0.05% |  3.82% )   ( 0.578524s |  0.05% |  3.73% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.095827s |  0.09% |  6.69% )   ( 0.997062s |  0.09% |  6.44% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.581019s |  0.05% |  3.55% )   ( 0.515083s |  0.05% |  3.32% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.440403s |  0.13% |  8.80% )   ( 1.319577s |  0.13% |  8.52% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.635739s |  0.23% | 16.11% )   ( 2.562076s |  0.25% | 16.54% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.591313s |  0.05% |  3.61% )   ( 0.574564s |  0.05% |  3.71% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.587462s |  0.05% |  3.59% )   ( 0.564232s |  0.05% |  3.64% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004689s |  0.00% |  0.00% )   ( 0.005303s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004379s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007755s |  0.00% |  0.00% )   ( 0.005318s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008998s |  0.00% |  0.05% )   ( 0.009080s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 16.996427s |  1.54% |  3.10% )   ( 16.151962s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001026s |  0.00% |  0.00% )   ( 0.001050s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 16.995244s |  1.54% | 99.99% )   ( 16.150738s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000237s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p25
30.5.0:         ( 0.047264s |  0.00% |  0.27% )   ( 0.046804s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052113s |  0.00% |  0.30% )   ( 0.051637s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.046751s |  0.00% |  0.27% )   ( 0.046290s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.049119s |  0.00% |  0.28% )   ( 0.048667s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.046686s |  0.00% |  0.27% )   ( 0.046314s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004955s |  0.00% |  0.00% )   ( 0.005538s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004606s |  0.00% |  0.00% )   ( 0.005206s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005276s |  0.00% |  0.00% )   ( 0.005874s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p25
41.5.0:         ( 0.096917s |  0.00% |  0.02% )   ( 0.006006s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.007395s |  0.00% |  0.00% )   ( 0.004819s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032856s |  0.00% |  0.00% )   ( 0.033243s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005534s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004874s |  0.00% |  0.00% )   ( 0.005448s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p25
54.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004524s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.543480s |  1.50% |  3.60% )   ( 15.790986s |  1.58% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004131s |  0.00% |  0.02% )   ( 0.004660s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.134773s |  0.10% |  6.85% )   ( 1.064163s |  0.10% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.828287s |  0.16% | 11.05% )   ( 1.789881s |  0.17% | 11.33% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.578350s |  0.14% |  9.54% )   ( 1.521234s |  0.15% |  9.63% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.795931s |  0.16% | 10.85% )   ( 1.764641s |  0.17% | 11.17% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.533280s |  0.13% |  9.26% )   ( 1.445859s |  0.14% |  9.15% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.006079s |  0.09% |  6.08% )   ( 0.954669s |  0.09% |  6.04% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.556265s |  0.05% |  3.36% )   ( 0.526773s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.073502s |  0.09% |  6.48% )   ( 0.991119s |  0.09% |  6.27% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.532672s |  0.04% |  3.21% )   ( 0.469212s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.400867s |  0.12% |  8.46% )   ( 1.326209s |  0.13% |  8.39% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.939620s |  0.26% | 17.76% )   ( 2.872834s |  0.28% | 18.19% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.592997s |  0.05% |  3.58% )   ( 0.541389s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.566726s |  0.05% |  3.42% )   ( 0.518343s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007293s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009524s |  0.00% |  0.05% )   ( 0.009614s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.488727s |  1.59% |  3.19% )   ( 16.492483s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001023s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.487544s |  1.59% | 99.99% )   ( 16.491260s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p26
30.5.0:         ( 0.046702s |  0.00% |  0.26% )   ( 0.046530s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049297s |  0.00% |  0.28% )   ( 0.049123s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.052837s |  0.00% |  0.30% )   ( 0.052654s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.049939s |  0.00% |  0.28% )   ( 0.049763s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.048603s |  0.00% |  0.27% )   ( 0.048433s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003719s |  0.00% |  0.00% )   ( 0.004211s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004618s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p26
41.5.0:         ( 0.181024s |  0.01% |  0.04% )   ( 0.005854s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004478s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003731s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034958s |  0.00% |  0.00% )   ( 0.030580s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003774s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004388s |  0.00% |  0.00% )   ( 0.004898s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p26
54.5.0:         ( 0.003539s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003517s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.960531s |  1.54% |  4.04% )   ( 16.137789s |  1.61% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003689s |  0.00% |  0.02% )   ( 0.004219s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.166347s |  0.10% |  6.87% )   ( 1.098864s |  0.11% |  6.80% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.095852s |  0.19% | 12.35% )   ( 1.894238s |  0.18% | 11.73% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.684898s |  0.15% |  9.93% )   ( 1.569245s |  0.15% |  9.72% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.016060s |  0.18% | 11.88% )   ( 1.894365s |  0.18% | 11.73% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.570051s |  0.14% |  9.25% )   ( 1.525711s |  0.15% |  9.45% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.998146s |  0.09% |  5.88% )   ( 0.967323s |  0.09% |  5.99% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.538945s |  0.04% |  3.17% )   ( 0.498446s |  0.04% |  3.08% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.095407s |  0.09% |  6.45% )   ( 1.038263s |  0.10% |  6.43% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.446448s |  0.04% |  2.63% )   ( 0.433317s |  0.04% |  2.68% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.376929s |  0.12% |  8.11% )   ( 1.341873s |  0.13% |  8.31% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.981061s |  0.27% | 17.57% )   ( 2.918056s |  0.29% | 18.08% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498318s |  0.04% |  2.93% )   ( 0.487416s |  0.04% |  3.02% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.488380s |  0.04% |  2.87% )   ( 0.466453s |  0.04% |  2.89% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004169s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003444s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008192s |  0.00% |  0.04% )   ( 0.008272s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 19.450506s |  1.77% |  3.55% )   ( 18.689109s |  1.87% |  3.74% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001042s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 19.449311s |  1.77% | 99.99% )   ( 18.687867s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
.5.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.HRouQ7"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p27
30.5.0:         ( 0.050955s |  0.00% |  0.26% )   ( 0.045625s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045161s |  0.00% |  0.23% )   ( 0.044987s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1620137 ${BASHPID}' INT
33.5.0:         ( 0.048092s |  0.00% |  0.24% )   ( 0.047891s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1620137 ${BASHPID}' TERM
34.5.0:         ( 0.048889s |  0.00% |  0.25% )   ( 0.048686s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1620137 ${BASHPID}' HUP
35.5.0:         ( 0.054608s |  0.00% |  0.28% )   ( 0.054377s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005170s |  0.00% |  0.00% )   ( 0.005800s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004721s |  0.00% |  0.00% )   ( 0.005310s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.HRouQ7"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005516s |  0.00% |  0.00% )   ( 0.006138s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p27
41.5.0:         ( 0.258608s |  0.02% |  0.04% )   ( 0.006940s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004608s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.quit ]]
46.5.0:         ( 0.004233s |  0.00% |  0.00% )   ( 0.004782s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.done ]]
46.5.1:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004604s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004737s |  0.00% |  0.00% )   ( 0.005332s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035780s |  0.00% |  0.00% )   ( 0.036256s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007820s |  0.00% |  0.00% )   ( 0.005371s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005469s |  0.00% |  0.00% )   ( 0.006094s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.HRouQ7"/.wait/p27
54.5.0:         ( 0.004443s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004903s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.832640s |  1.71% |  3.33% )   ( 18.323174s |  1.83% |  3.38% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004367s |  0.00% |  0.02% )   ( 0.004960s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.370950s |  0.12% |  7.27% )   ( 1.335592s |  0.13% |  7.28% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.120414s |  0.19% | 11.25% )   ( 2.083641s |  0.20% | 11.37% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.752139s |  0.15% |  9.30% )   ( 1.714826s |  0.17% |  9.35% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.077102s |  0.18% | 11.02% )   ( 2.042100s |  0.20% | 11.14% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.694788s |  0.15% |  8.99% )   ( 1.683131s |  0.16% |  9.18% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.228955s |  0.11% |  6.52% )   ( 1.177523s |  0.11% |  6.42% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.633702s |  0.05% |  3.36% )   ( 0.606512s |  0.06% |  3.31% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.255223s |  0.11% |  6.66% )   ( 1.213886s |  0.12% |  6.62% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.562401s |  0.05% |  2.98% )   ( 0.520372s |  0.05% |  2.83% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.572149s |  0.14% |  8.34% )   ( 1.505030s |  0.15% |  8.21% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.366061s |  0.30% | 17.87% )   ( 3.283556s |  0.32% | 17.92% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.604585s |  0.05% |  3.21% )   ( 0.585573s |  0.05% |  3.19% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.589804s |  0.05% |  3.13% )   ( 0.566472s |  0.05% |  3.09% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004443s |  0.00% |  0.00% )   ( 0.005017s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004450s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005089s |  0.00% |  0.02% )   ( 0.005158s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001432s |  0.00% |  0.00% )   ( 0.001441s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.406773s |  2.22% |  4.46% )   ( 0.002056s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000285s |  0.00% |  0.00% )   ( 0.000327s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000298s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.051300s |  0.00% |  0.00% )   ( 0.051557s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.HRouQ7"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.HRouQ7"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1620151  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.HRouQ7"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000338s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007238s |  0.00% |  0.00% )   ( 0.004129s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.HRouQ7" 2>/dev/null

WALL CLOCK TIME: 51.194945s
TOTAL RUN TIME:  1098.754730s
TOTAL CPU TIME:  997.624477s

