LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 549.229493s | 50.06% )            ( 498.176475s | 49.95% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000654s |  0.00% |  0.00% )   ( 0.000322s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 549.228839s | 50.06% | 99.99% )   ( 498.176153s | 49.95% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041673s |  0.00% |  0.00% )   ( 0.041010s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001171s |  0.00% |  0.00% )   ( 0.001039s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.007245s |  0.00% |  0.00% )   ( 0.007245s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.007245s |  0.00% |100.00% )   ( 0.007245s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001037s |  0.00% |  0.00% )   ( 0.001110s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026759s |  0.00% |  0.00% )   ( 0.000982s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 549.141823s | 50.05% | 99.98% )   ( 498.118237s | 49.94% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001735s |  0.00% |  0.00% )   ( 0.002033s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001735s |  0.00% |100.00% )   ( 0.002033s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.007229s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.008974s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000194s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000542s |  0.00% |  0.00% )   ( 0.000319s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000112s |  0.00% |100.00% )   ( 0.000128s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000887s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000069s |  0.00% |  7.77% )   ( 0.000080s |  0.00% |  7.83% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000067s |  0.00% |  7.55% )   ( 0.000078s |  0.00% |  7.63% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000089s |  0.00% | 10.03% )   ( 0.000096s |  0.00% |  9.40% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.66% )   ( 0.000080s |  0.00% |  7.83% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.44% )   ( 0.000077s |  0.00% |  7.54% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  7.77% )   ( 0.000081s |  0.00% |  7.93% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.55% )   ( 0.000079s |  0.00% |  7.73% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000121s |  0.00% | 13.64% )   ( 0.000133s |  0.00% | 13.02% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000068s |  0.00% |  7.66% )   ( 0.000081s |  0.00% |  7.93% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000067s |  0.00% |  7.55% )   ( 0.000078s |  0.00% |  7.63% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.55% )   ( 0.000078s |  0.00% |  7.63% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000069s |  0.00% |  7.77% )   ( 0.000080s |  0.00% |  7.83% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000892s |  0.00% |  0.00% )   ( 0.000700s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.001986s |  0.00% |  0.00% )   ( 0.002078s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000186s |  0.00% |  9.36% )   ( 0.000203s |  0.00% |  9.76% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001800s |  0.00% | 90.63% )   ( 0.001875s |  0.00% | 90.23% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000679s |  0.00% |  0.00% )   ( 0.000545s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000119s |  0.00% |100.00% )   ( 0.000139s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.002248s |  0.00% |  0.00% )   ( 0.002312s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000524s |  0.00% |  0.00% )   ( 0.000542s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134833s |  0.01% |  0.02% )   ( 0.134643s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000313s |  0.00% |  0.23% )   ( 0.000362s |  0.00% |  0.26% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020948s |  0.00% | 15.53% )   ( 0.020912s |  0.00% | 15.53% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023859s |  0.00% | 17.69% )   ( 0.023816s |  0.00% | 17.68% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023524s |  0.00% | 17.44% )   ( 0.023466s |  0.00% | 17.42% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023587s |  0.00% | 17.49% )   ( 0.023534s |  0.00% | 17.47% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023313s |  0.00% | 17.29% )   ( 0.023260s |  0.00% | 17.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000064s |  0.00% |  0.04% )   ( 0.000075s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018993s |  0.00% | 14.08% )   ( 0.018951s |  0.00% | 14.07% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000092s |  0.00% |  0.06% )   ( 0.000104s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000086s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000077s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000424s |  0.00% |  0.00% )   ( 0.000448s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.169676s |  0.38% |  0.75% )   ( 1.832734s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
.4.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─
508.4.0:        ( 0.000184s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.01% )    	(1x)	│  │  │  │   export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.026746s |  0.00% |  0.64% )   ( 0.026690s |  0.00% |  1.45% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023781s |  0.00% |  0.57% )   ( 0.023740s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023495s |  0.00% |  0.56% )   ( 0.023452s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023510s |  0.00% |  0.56% )   ( 0.023458s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023207s |  0.00% |  0.55% )   ( 0.023169s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090490s |  0.00% |  0.00% )   ( 0.103572s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.638499s |  0.24% |  0.09% )   ( 0.122798s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000898s |  0.00% |  0.00% )   ( 0.001013s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.091911s |  0.00% |  0.00% )   ( 0.101559s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.090039s |  0.00% |  0.00% )   ( 0.103136s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.088156s |  0.00% |  0.00% )   ( 0.100941s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090337s |  0.00% |  0.00% )   ( 0.103022s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090550s |  0.00% |  0.00% )   ( 0.103409s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086590s |  0.00% |  0.00% )   ( 0.099418s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086587s |  0.00% |  0.00% )   ( 0.099419s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.086988s |  0.00% |  0.00% )   ( 0.099737s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000661s |  0.00% |  0.01% )   ( 0.000489s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002598s |  0.00% |  0.06% )   ( 0.002965s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002598s |  0.00% |100.00% )   ( 0.002965s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086548s |  0.00% |  0.00% )   ( 0.099264s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085854s |  0.00% |  0.00% )   ( 0.098679s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.084498s |  0.00% |  0.00% )   ( 0.096969s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.091567s |  0.00% |  0.00% )   ( 0.104673s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087819s |  0.00% |  0.00% )   ( 0.100613s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087534s |  0.00% |  0.00% )   ( 0.100327s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002837s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002762s |  0.00% |  0.00% )   ( 0.003171s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.056730s |  0.00% |  0.06% )   ( 0.043548s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003188s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003013s |  0.00% |  0.00% )   ( 0.003450s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003124s |  0.00% |  0.00% )   ( 0.003547s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.006826s |  0.00% |  0.16% )   ( 0.006909s |  0.00% |  0.37% )    	(1x)	│  │  │  └─  ${nSpawnFlag}
598.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001286s |  0.00% |  0.00% )   ( 0.000439s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005964s |  0.00% |  0.00% )   ( 0.006837s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000156s |  0.00% |  2.61% )   ( 0.000175s |  0.00% |  2.55% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000099s |  0.00% |  1.65% )   ( 0.000114s |  0.00% |  1.66% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000118s |  0.00% |  1.97% )   ( 0.000134s |  0.00% |  1.95% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000303s |  0.00% |  5.08% )   ( 0.000315s |  0.00% |  4.60% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000079s |  0.00% |  1.32% )   ( 0.000091s |  0.00% |  1.33% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000069s |  0.00% |  1.15% )   ( 0.000080s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000064s |  0.00% |  1.07% )   ( 0.000075s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000072s |  0.00% |  1.20% )   ( 0.000083s |  0.00% |  1.21% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000064s |  0.00% |  1.07% )   ( 0.000075s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000079s |  0.00% |  1.32% )   ( 0.000087s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000069s |  0.00% |  1.15% )   ( 0.000080s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000073s |  0.00% |  1.22% )   ( 0.000085s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000072s |  0.00% |  1.20% )   ( 0.000083s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000075s |  0.00% |  1.09% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000075s |  0.00% |  1.25% )   ( 0.000086s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000068s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000108s |  0.00% |  1.81% )   ( 0.000120s |  0.00% |  1.75% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000070s |  0.00% |  1.17% )   ( 0.000081s |  0.00% |  1.18% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000103s |  0.00% |  1.72% )   ( 0.000116s |  0.00% |  1.69% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000069s |  0.00% |  1.15% )   ( 0.000080s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000077s |  0.00% |  1.29% )   ( 0.000088s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000076s |  0.00% |  1.27% )   ( 0.000085s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.45% )   ( 0.000098s |  0.00% |  1.43% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000081s |  0.00% |  1.35% )   ( 0.000093s |  0.00% |  1.36% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000080s |  0.00% |  1.34% )   ( 0.000092s |  0.00% |  1.34% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000063s |  0.00% |  1.05% )   ( 0.000074s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000074s |  0.00% |  1.24% )   ( 0.000083s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000068s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000073s |  0.00% |  1.22% )   ( 0.000085s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000079s |  0.00% |  1.32% )   ( 0.000091s |  0.00% |  1.33% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000080s |  0.00% |  1.34% )   ( 0.000091s |  0.00% |  1.33% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000068s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000075s |  0.00% |  1.25% )   ( 0.000085s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000062s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000074s |  0.00% |  1.24% )   ( 0.000085s |  0.00% |  1.24% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000064s |  0.00% |  1.07% )   ( 0.000075s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.37% )   ( 0.000094s |  0.00% |  1.37% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000076s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000064s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000086s |  0.00% |  1.44% )   ( 0.000097s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000090s |  0.00% |  1.50% )   ( 0.000100s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000062s |  0.00% |  1.03% )   ( 0.000073s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000064s |  0.00% |  1.07% )   ( 0.000074s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000086s |  0.00% |  1.44% )   ( 0.000097s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000071s |  0.00% |  1.19% )   ( 0.000082s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000060s |  0.00% |  1.00% )   ( 0.000072s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000061s |  0.00% |  1.02% )   ( 0.000071s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000060s |  0.00% |  1.00% )   ( 0.000070s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000082s |  0.00% |  1.37% )   ( 0.000094s |  0.00% |  1.37% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000070s |  0.00% |  1.17% )   ( 0.000081s |  0.00% |  1.18% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000066s |  0.00% |  1.10% )   ( 0.000077s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000062s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000083s |  0.00% |  1.39% )   ( 0.000095s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000067s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000068s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000072s |  0.00% |  1.20% )   ( 0.000080s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000082s |  0.00% |  1.37% )   ( 0.000093s |  0.00% |  1.36% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000304s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000309s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023883s |  0.00% |  0.00% )   ( 0.023843s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023645s |  0.00% |  0.00% )   ( 0.023607s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023848s |  0.00% |  0.00% )   ( 0.172319s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023291s |  0.00% |  0.00% )   ( 0.023240s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000071s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003044s |  0.00% |  0.00% )   ( 0.003490s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002807s |  0.00% |  0.00% )   ( 0.003234s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.684416s |  1.70% |  3.40% )   ( 18.084702s |  1.81% |  3.63% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000578s |  0.00% |  0.00% )   ( 0.000593s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.683751s |  1.70% | 99.99% )   ( 18.084009s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p0
30.5.0:         ( 0.023281s |  0.00% |  0.12% )   ( 0.023240s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023390s |  0.00% |  0.12% )   ( 0.023350s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.023709s |  0.00% |  0.12% )   ( 0.023671s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.023947s |  0.00% |  0.12% )   ( 0.023907s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023933s |  0.00% |  0.12% )   ( 0.023889s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002664s |  0.00% |  0.00% )   ( 0.003006s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002421s |  0.00% |  0.00% )   ( 0.002734s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002814s |  0.00% |  0.00% )   ( 0.003138s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p0
41.5.0:         ( 0.136422s |  0.01% |  0.04% )   ( 0.003536s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.002575s |  0.00% |  0.00% )   ( 0.002881s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.002361s |  0.00% |  0.00% )   ( 0.002705s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.002166s |  0.00% |  0.00% )   ( 0.002471s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002277s |  0.00% |  0.00% )   ( 0.002565s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.016330s |  0.00% |  0.00% )   ( 0.016596s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.002150s |  0.00% |  0.00% )   ( 0.002430s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002146s |  0.00% |  0.00% )   ( 0.002421s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003673s |  0.00% |  0.00% )   ( 0.002692s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.002796s |  0.00% |  0.00% )   ( 0.003119s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p0
66.5.0:         ( 0.002221s |  0.00% |  0.00% )   ( 0.002509s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002176s |  0.00% |  0.00% )   ( 0.002483s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.362175s |  1.67% |  6.14% )   ( 17.891416s |  1.79% |  6.18% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002294s |  0.00% |  0.01% )   ( 0.002606s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.170640s |  0.10% |  6.37% )   ( 1.160554s |  0.11% |  6.48% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.294588s |  0.20% | 12.49% )   ( 2.231759s |  0.22% | 12.47% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.735840s |  0.15% |  9.45% )   ( 1.711857s |  0.17% |  9.56% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.314067s |  0.21% | 12.60% )   ( 2.253758s |  0.22% | 12.59% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.753530s |  0.15% |  9.54% )   ( 1.670755s |  0.16% |  9.33% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.074681s |  0.09% |  5.85% )   ( 1.044672s |  0.10% |  5.83% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.386476s |  0.03% |  2.10% )   ( 0.385622s |  0.03% |  2.15% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.186912s |  0.10% |  6.46% )   ( 1.153606s |  0.11% |  6.44% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.327040s |  0.02% |  1.78% )   ( 0.325188s |  0.03% |  1.81% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.456174s |  0.13% |  7.93% )   ( 1.435917s |  0.14% |  8.02% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.914105s |  0.35% | 21.31% )   ( 3.838269s |  0.38% | 21.45% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.402837s |  0.03% |  2.19% )   ( 0.354454s |  0.03% |  1.98% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.342991s |  0.03% |  1.86% )   ( 0.322399s |  0.03% |  1.80% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002254s |  0.00% |  0.00% )   ( 0.002548s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001960s |  0.00% |  0.00% )   ( 0.002232s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002212s |  0.00% |  0.00% )   ( 0.002492s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.010307s |  0.00% |  0.05% )   ( 0.010388s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002964s |  0.00% |  0.00% )   ( 0.003397s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 20.692894s |  1.88% |  3.76% )   ( 19.897838s |  1.99% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 20.692213s |  1.88% | 99.99% )   ( 19.897129s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000307s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p1
30.5.0:         ( 0.023359s |  0.00% |  0.11% )   ( 0.023331s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023799s |  0.00% |  0.11% )   ( 0.023761s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.023969s |  0.00% |  0.11% )   ( 0.023924s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024030s |  0.00% |  0.11% )   ( 0.023987s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023959s |  0.00% |  0.11% )   ( 0.023918s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004015s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004226s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p1
41.5.0:         ( 0.276526s |  0.02% |  0.05% )   ( 0.005517s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003711s |  0.00% |  0.00% )   ( 0.004170s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.005478s |  0.00% |  0.00% )   ( 0.003912s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003643s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035852s |  0.00% |  0.00% )   ( 0.027406s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003384s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003241s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003950s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p1
66.5.0:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003747s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 20.190083s |  1.84% |  4.06% )   ( 19.669038s |  1.97% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003461s |  0.00% |  0.01% )   ( 0.003929s |  0.00% |  0.01% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.487594s |  0.13% |  7.36% )   ( 1.416911s |  0.14% |  7.20% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.688875s |  0.24% | 13.31% )   ( 2.631457s |  0.26% | 13.37% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.082548s |  0.18% | 10.31% )   ( 2.052776s |  0.20% | 10.43% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.662600s |  0.24% | 13.18% )   ( 2.622808s |  0.26% | 13.33% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.073341s |  0.18% | 10.26% )   ( 2.025565s |  0.20% | 10.29% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.291679s |  0.11% |  6.39% )   ( 1.254551s |  0.12% |  6.37% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512002s |  0.04% |  2.53% )   ( 0.507376s |  0.05% |  2.57% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.275094s |  0.11% |  6.31% )   ( 1.203790s |  0.12% |  6.12% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.464065s |  0.04% |  2.29% )   ( 0.432990s |  0.04% |  2.20% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.443455s |  0.13% |  7.14% )   ( 1.392803s |  0.13% |  7.08% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.209471s |  0.29% | 15.89% )   ( 3.166275s |  0.31% | 16.09% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.495826s |  0.04% |  2.45% )   ( 0.487516s |  0.04% |  2.47% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.500072s |  0.04% |  2.47% )   ( 0.470291s |  0.04% |  2.39% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003457s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003186s |  0.00% |  0.00% )   ( 0.003619s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003533s |  0.00% |  0.00% )   ( 0.003974s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009587s |  0.00% |  0.04% )   ( 0.009642s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 18.101014s |  1.64% |  3.29% )   ( 17.319932s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000597s |  0.00% |  0.00% )   ( 0.000612s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 18.100331s |  1.64% | 99.99% )   ( 17.319223s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000344s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p2
30.5.0:         ( 0.023437s |  0.00% |  0.12% )   ( 0.023394s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023777s |  0.00% |  0.13% )   ( 0.023735s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024037s |  0.00% |  0.13% )   ( 0.023990s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024040s |  0.00% |  0.13% )   ( 0.023992s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023982s |  0.00% |  0.13% )   ( 0.023934s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003308s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003017s |  0.00% |  0.00% )   ( 0.003435s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p2
41.5.0:         ( 0.209233s |  0.01% |  0.05% )   ( 0.004950s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003902s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003276s |  0.00% |  0.00% )   ( 0.003705s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003406s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003150s |  0.00% |  0.00% )   ( 0.003556s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.024705s |  0.00% |  0.00% )   ( 0.025020s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003038s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003147s |  0.00% |  0.00% )   ( 0.003503s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003250s |  0.00% |  0.00% )   ( 0.003661s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003569s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p2
66.5.0:         ( 0.002835s |  0.00% |  0.00% )   ( 0.003229s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002714s |  0.00% |  0.00% )   ( 0.003087s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.685388s |  1.61% |  4.65% )   ( 17.101643s |  1.71% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003046s |  0.00% |  0.01% )   ( 0.003461s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.178295s |  0.10% |  6.66% )   ( 1.126337s |  0.11% |  6.58% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.129778s |  0.19% | 12.04% )   ( 2.084673s |  0.20% | 12.18% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.695275s |  0.15% |  9.58% )   ( 1.654062s |  0.16% |  9.67% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.138031s |  0.19% | 12.08% )   ( 2.069622s |  0.20% | 12.10% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616167s |  0.14% |  9.13% )   ( 1.585874s |  0.15% |  9.27% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.010024s |  0.09% |  5.71% )   ( 0.980981s |  0.09% |  5.73% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.476844s |  0.04% |  2.69% )   ( 0.451985s |  0.04% |  2.64% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.238165s |  0.11% |  7.00% )   ( 1.088745s |  0.10% |  6.36% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.411537s |  0.03% |  2.32% )   ( 0.392718s |  0.03% |  2.29% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.377081s |  0.12% |  7.78% )   ( 1.355825s |  0.13% |  7.92% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.551001s |  0.32% | 20.07% )   ( 3.461244s |  0.34% | 20.23% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.441415s |  0.04% |  2.49% )   ( 0.432393s |  0.04% |  2.52% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.418729s |  0.03% |  2.36% )   ( 0.413723s |  0.04% |  2.41% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003006s |  0.00% |  0.00% )   ( 0.003425s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002729s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003441s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009463s |  0.00% |  0.05% )   ( 0.009536s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.056370s |  1.64% |  3.28% )   ( 17.124420s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000598s |  0.00% |  0.00% )   ( 0.000615s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.055688s |  1.64% | 99.99% )   ( 17.123705s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000370s |  0.00% |  0.00% )   ( 0.000407s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p3
30.5.0:         ( 0.023666s |  0.00% |  0.13% )   ( 0.023629s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024012s |  0.00% |  0.13% )   ( 0.023971s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.023975s |  0.00% |  0.13% )   ( 0.023936s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.023989s |  0.00% |  0.13% )   ( 0.023950s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024070s |  0.00% |  0.13% )   ( 0.024018s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004317s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003477s |  0.00% |  0.00% )   ( 0.003934s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p3
41.5.0:         ( 0.296259s |  0.02% |  0.06% )   ( 0.005722s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003597s |  0.00% |  0.00% )   ( 0.004084s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003448s |  0.00% |  0.00% )   ( 0.003900s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003630s |  0.00% |  0.00% )   ( 0.004093s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.027104s |  0.00% |  0.00% )   ( 0.027482s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003456s |  0.00% |  0.00% )   ( 0.003904s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003428s |  0.00% |  0.00% )   ( 0.003874s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007978s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004409s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p3
66.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003200s |  0.00% |  0.00% )   ( 0.003646s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.540760s |  1.59% |  4.22% )   ( 16.895908s |  1.69% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003243s |  0.00% |  0.01% )   ( 0.003694s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.145210s |  0.10% |  6.52% )   ( 1.116214s |  0.11% |  6.60% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.083628s |  0.18% | 11.87% )   ( 1.986786s |  0.19% | 11.75% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.730885s |  0.15% |  9.86% )   ( 1.615765s |  0.16% |  9.56% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.045733s |  0.18% | 11.66% )   ( 1.984423s |  0.19% | 11.74% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611058s |  0.14% |  9.18% )   ( 1.585733s |  0.15% |  9.38% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.129150s |  0.10% |  6.43% )   ( 1.042769s |  0.10% |  6.17% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.494757s |  0.04% |  2.82% )   ( 0.489850s |  0.04% |  2.89% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107104s |  0.10% |  6.31% )   ( 1.060373s |  0.10% |  6.27% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.448748s |  0.04% |  2.55% )   ( 0.420115s |  0.04% |  2.48% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.440211s |  0.13% |  8.21% )   ( 1.375063s |  0.13% |  8.13% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.340385s |  0.30% | 19.04% )   ( 3.281162s |  0.32% | 19.41% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.488107s |  0.04% |  2.78% )   ( 0.475393s |  0.04% |  2.81% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.472541s |  0.04% |  2.69% )   ( 0.458568s |  0.04% |  2.71% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003211s |  0.00% |  0.00% )   ( 0.003637s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008700s |  0.00% |  0.04% )   ( 0.008786s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 22.887910s |  2.08% |  4.16% )   ( 21.923279s |  2.19% |  4.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000588s |  0.00% |  0.00% )   ( 0.000607s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 22.887238s |  2.08% | 99.99% )   ( 21.922575s |  2.19% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p4
30.5.0:         ( 0.023870s |  0.00% |  0.10% )   ( 0.023828s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024004s |  0.00% |  0.10% )   ( 0.023964s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.023981s |  0.00% |  0.10% )   ( 0.023938s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024007s |  0.00% |  0.10% )   ( 0.023966s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023971s |  0.00% |  0.10% )   ( 0.023927s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004469s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004215s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004663s |  0.00% |  0.00% )   ( 0.005204s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p4
41.5.0:         ( 0.458815s |  0.04% |  0.07% )   ( 0.006616s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004351s |  0.00% |  0.00% )   ( 0.004895s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004084s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.030172s |  0.00% |  0.00% )   ( 0.030084s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003617s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003657s |  0.00% |  0.00% )   ( 0.004110s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004571s |  0.00% |  0.00% )   ( 0.005100s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p4
66.5.0:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004238s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003675s |  0.00% |  0.00% )   ( 0.004186s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 22.209065s |  2.02% |  3.73% )   ( 21.688655s |  2.17% |  3.80% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003771s |  0.00% |  0.01% )   ( 0.004271s |  0.00% |  0.01% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.612229s |  0.14% |  7.25% )   ( 1.601200s |  0.16% |  7.38% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.584655s |  0.23% | 11.63% )   ( 2.525690s |  0.25% | 11.64% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.069910s |  0.18% |  9.32% )   ( 2.015604s |  0.20% |  9.29% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.583187s |  0.23% | 11.63% )   ( 2.535582s |  0.25% | 11.69% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.967875s |  0.17% |  8.86% )   ( 1.941663s |  0.19% |  8.95% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.469652s |  0.13% |  6.61% )   ( 1.425968s |  0.14% |  6.57% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.634176s |  0.05% |  2.85% )   ( 0.590296s |  0.05% |  2.72% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.505036s |  0.13% |  6.77% )   ( 1.460708s |  0.14% |  6.73% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.533809s |  0.04% |  2.40% )   ( 0.510409s |  0.05% |  2.35% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.801330s |  0.16% |  8.11% )   ( 1.757914s |  0.17% |  8.10% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.250423s |  0.38% | 19.13% )   ( 4.189076s |  0.42% | 19.31% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.620084s |  0.05% |  2.79% )   ( 0.584011s |  0.05% |  2.69% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.572928s |  0.05% |  2.57% )   ( 0.546263s |  0.05% |  2.51% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003545s |  0.00% |  0.00% )   ( 0.004020s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004518s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004993s |  0.00% |  0.02% )   ( 0.005047s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 20.920626s |  1.90% |  3.80% )   ( 19.990445s |  2.00% |  4.01% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 20.919932s |  1.90% | 99.99% )   ( 19.989712s |  2.00% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000359s |  0.00% |  0.00% )   ( 0.000403s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p5
30.5.0:         ( 0.024239s |  0.00% |  0.11% )   ( 0.024186s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023999s |  0.00% |  0.11% )   ( 0.023956s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024019s |  0.00% |  0.11% )   ( 0.023976s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024002s |  0.00% |  0.11% )   ( 0.023957s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023849s |  0.00% |  0.11% )   ( 0.023802s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004768s |  0.00% |  0.00% )   ( 0.005327s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004207s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005059s |  0.00% |  0.00% )   ( 0.005625s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p5
41.5.0:         ( 0.307031s |  0.02% |  0.05% )   ( 0.006434s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004410s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004165s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003876s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035156s |  0.00% |  0.00% )   ( 0.032607s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005329s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004696s |  0.00% |  0.00% )   ( 0.005263s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p5
66.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.379748s |  1.85% |  3.60% )   ( 19.748371s |  1.98% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003993s |  0.00% |  0.01% )   ( 0.004548s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.501781s |  0.13% |  7.36% )   ( 1.433221s |  0.14% |  7.25% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.293988s |  0.20% | 11.25% )   ( 2.263800s |  0.22% | 11.46% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.878019s |  0.17% |  9.21% )   ( 1.846603s |  0.18% |  9.35% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.341121s |  0.21% | 11.48% )   ( 2.286974s |  0.22% | 11.58% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.852432s |  0.16% |  9.08% )   ( 1.806086s |  0.18% |  9.14% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.310780s |  0.11% |  6.43% )   ( 1.262101s |  0.12% |  6.39% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.626047s |  0.05% |  3.07% )   ( 0.584706s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.382251s |  0.12% |  6.78% )   ( 1.328739s |  0.13% |  6.72% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513065s |  0.04% |  2.51% )   ( 0.502270s |  0.05% |  2.54% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.652541s |  0.15% |  8.10% )   ( 1.605233s |  0.16% |  8.12% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.788911s |  0.34% | 18.59% )   ( 3.714880s |  0.37% | 18.81% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.632912s |  0.05% |  3.10% )   ( 0.571062s |  0.05% |  2.89% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.601907s |  0.05% |  2.95% )   ( 0.538148s |  0.05% |  2.72% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004179s |  0.00% |  0.00% )   ( 0.004737s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004214s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007359s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005008s |  0.00% |  0.02% )   ( 0.005098s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.461650s |  1.59% |  3.17% )   ( 16.502525s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000641s |  0.00% |  0.00% )   ( 0.000658s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.460922s |  1.59% | 99.99% )   ( 16.501764s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000331s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p6
30.5.0:         ( 0.023944s |  0.00% |  0.13% )   ( 0.023900s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023993s |  0.00% |  0.13% )   ( 0.023954s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.023997s |  0.00% |  0.13% )   ( 0.023946s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.023997s |  0.00% |  0.13% )   ( 0.023951s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024097s |  0.00% |  0.13% )   ( 0.024042s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005470s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004265s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005125s |  0.00% |  0.00% )   ( 0.005673s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p6
41.5.0:         ( 0.371001s |  0.03% |  0.07% )   ( 0.006808s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004689s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.006904s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004542s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.033677s |  0.00% |  0.00% )   ( 0.034140s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006004s |  0.00% |  0.00% )   ( 0.004829s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.005084s |  0.00% |  0.00% )   ( 0.005602s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p6
66.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.851482s |  1.53% |  3.44% )   ( 16.251992s |  1.62% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004115s |  0.00% |  0.02% )   ( 0.004691s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116430s |  0.10% |  6.62% )   ( 1.085336s |  0.10% |  6.67% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.846006s |  0.16% | 10.95% )   ( 1.834517s |  0.18% | 11.28% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.596374s |  0.14% |  9.47% )   ( 1.544859s |  0.15% |  9.50% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.893789s |  0.17% | 11.23% )   ( 1.824652s |  0.18% | 11.22% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.575674s |  0.14% |  9.35% )   ( 1.494918s |  0.14% |  9.19% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051192s |  0.09% |  6.23% )   ( 1.010572s |  0.10% |  6.21% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.603418s |  0.05% |  3.58% )   ( 0.556435s |  0.05% |  3.42% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.071687s |  0.09% |  6.35% )   ( 1.033539s |  0.10% |  6.35% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.523269s |  0.04% |  3.10% )   ( 0.486842s |  0.04% |  2.99% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.453576s |  0.13% |  8.62% )   ( 1.374924s |  0.13% |  8.46% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.003161s |  0.27% | 17.82% )   ( 2.919939s |  0.29% | 17.96% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.555135s |  0.05% |  3.29% )   ( 0.544716s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.557656s |  0.05% |  3.30% )   ( 0.536052s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004512s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003866s |  0.00% |  0.00% )   ( 0.004399s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004288s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009207s |  0.00% |  0.05% )   ( 0.009293s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.297489s |  1.57% |  3.14% )   ( 16.221858s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000626s |  0.00% |  0.00% )   ( 0.000641s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.296769s |  1.57% | 99.99% )   ( 16.221112s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000373s |  0.00% |  0.00% )   ( 0.000410s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000368s |  0.00% |  0.00% )   ( 0.000412s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p7
30.5.0:         ( 0.024207s |  0.00% |  0.13% )   ( 0.024160s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024169s |  0.00% |  0.13% )   ( 0.024111s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024180s |  0.00% |  0.13% )   ( 0.024129s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024151s |  0.00% |  0.13% )   ( 0.024101s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023941s |  0.00% |  0.13% )   ( 0.023888s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004778s |  0.00% |  0.00% )   ( 0.005389s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005568s |  0.00% |  0.00% )   ( 0.006211s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p7
41.5.0:         ( 0.324488s |  0.02% |  0.06% )   ( 0.007507s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004965s |  0.00% |  0.00% )   ( 0.005573s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004464s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004908s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.038007s |  0.00% |  0.00% )   ( 0.036113s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004028s |  0.00% |  0.00% )   ( 0.004568s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008186s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.005336s |  0.00% |  0.00% )   ( 0.005943s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p7
66.5.0:         ( 0.004300s |  0.00% |  0.00% )   ( 0.004921s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004185s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.726939s |  1.52% |  3.22% )   ( 15.964596s |  1.60% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004219s |  0.00% |  0.02% )   ( 0.004814s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.127901s |  0.10% |  6.74% )   ( 1.050970s |  0.10% |  6.58% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.859475s |  0.16% | 11.11% )   ( 1.765045s |  0.17% | 11.05% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629769s |  0.14% |  9.74% )   ( 1.544160s |  0.15% |  9.67% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.799733s |  0.16% | 10.75% )   ( 1.753367s |  0.17% | 10.98% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.487447s |  0.13% |  8.89% )   ( 1.472292s |  0.14% |  9.22% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.996731s |  0.09% |  5.95% )   ( 0.985926s |  0.09% |  6.17% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.604627s |  0.05% |  3.61% )   ( 0.564015s |  0.05% |  3.53% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.097500s |  0.10% |  6.56% )   ( 1.013694s |  0.10% |  6.34% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.556372s |  0.05% |  3.32% )   ( 0.513437s |  0.05% |  3.21% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474764s |  0.13% |  8.81% )   ( 1.368921s |  0.13% |  8.57% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.849995s |  0.25% | 17.03% )   ( 2.781882s |  0.27% | 17.42% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.628226s |  0.05% |  3.75% )   ( 0.580354s |  0.05% |  3.63% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.610180s |  0.05% |  3.64% )   ( 0.565719s |  0.05% |  3.54% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004499s |  0.00% |  0.00% )   ( 0.005099s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004433s |  0.00% |  0.00% )   ( 0.005005s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009285s |  0.00% |  0.05% )   ( 0.009368s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.726792s |  1.61% |  3.22% )   ( 16.907852s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000629s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.726077s |  1.61% | 99.99% )   ( 16.907104s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p8
30.5.0:         ( 0.023956s |  0.00% |  0.13% )   ( 0.023913s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024082s |  0.00% |  0.13% )   ( 0.024034s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024110s |  0.00% |  0.13% )   ( 0.024062s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024100s |  0.00% |  0.13% )   ( 0.024051s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024075s |  0.00% |  0.13% )   ( 0.024019s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004674s |  0.00% |  0.00% )   ( 0.005206s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p8
41.5.0:         ( 0.341666s |  0.03% |  0.07% )   ( 0.006329s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003795s |  0.00% |  0.00% )   ( 0.004291s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003588s |  0.00% |  0.00% )   ( 0.004073s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004213s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.029380s |  0.00% |  0.00% )   ( 0.029693s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004055s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003624s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003621s |  0.00% |  0.00% )   ( 0.004058s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p8
66.5.0:         ( 0.003703s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003557s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.165100s |  1.56% |  3.87% )   ( 16.674978s |  1.67% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003634s |  0.00% |  0.02% )   ( 0.004111s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.108324s |  0.10% |  6.45% )   ( 1.065401s |  0.10% |  6.38% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.995547s |  0.18% | 11.62% )   ( 1.939704s |  0.19% | 11.63% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.661171s |  0.15% |  9.67% )   ( 1.622156s |  0.16% |  9.72% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.011324s |  0.18% | 11.71% )   ( 1.937034s |  0.19% | 11.61% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.583318s |  0.14% |  9.22% )   ( 1.557956s |  0.15% |  9.34% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035654s |  0.09% |  6.03% )   ( 1.004264s |  0.10% |  6.02% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.524261s |  0.04% |  3.05% )   ( 0.507158s |  0.05% |  3.04% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091931s |  0.09% |  6.36% )   ( 1.046329s |  0.10% |  6.27% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.459096s |  0.04% |  2.67% )   ( 0.454623s |  0.04% |  2.72% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.434365s |  0.13% |  8.35% )   ( 1.403378s |  0.14% |  8.41% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.192732s |  0.29% | 18.60% )   ( 3.139628s |  0.31% | 18.82% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.543220s |  0.04% |  3.16% )   ( 0.508714s |  0.05% |  3.05% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.520523s |  0.04% |  3.03% )   ( 0.484522s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005869s |  0.00% |  0.00% )   ( 0.004698s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005254s |  0.00% |  0.02% )   ( 0.005352s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.275334s |  1.57% |  3.14% )   ( 16.479366s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000661s |  0.00% |  0.00% )   ( 0.000674s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.274584s |  1.57% | 99.99% )   ( 16.478588s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000347s |  0.00% |  0.00% )   ( 0.000387s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000360s |  0.00% |  0.00% )   ( 0.000404s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p9
30.5.0:         ( 0.024051s |  0.00% |  0.13% )   ( 0.024006s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024021s |  0.00% |  0.13% )   ( 0.023976s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024028s |  0.00% |  0.13% )   ( 0.023982s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024036s |  0.00% |  0.13% )   ( 0.023989s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.023917s |  0.00% |  0.13% )   ( 0.023873s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005335s |  0.00% |  0.00% )   ( 0.005988s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004617s |  0.00% |  0.00% )   ( 0.005226s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005270s |  0.00% |  0.00% )   ( 0.005867s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p9
41.5.0:         ( 0.273640s |  0.02% |  0.05% )   ( 0.006582s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005188s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004834s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007484s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034107s |  0.00% |  0.00% )   ( 0.034551s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004326s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004350s |  0.00% |  0.00% )   ( 0.004932s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010607s |  0.00% |  0.00% )   ( 0.005248s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.008360s |  0.00% |  0.00% )   ( 0.005975s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p9
66.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.750642s |  1.52% |  3.34% )   ( 16.224955s |  1.62% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004298s |  0.00% |  0.02% )   ( 0.004902s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.182033s |  0.10% |  7.05% )   ( 1.097985s |  0.11% |  6.76% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.863494s |  0.16% | 11.12% )   ( 1.809771s |  0.18% | 11.15% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.671651s |  0.15% |  9.97% )   ( 1.568751s |  0.15% |  9.66% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.917204s |  0.17% | 11.44% )   ( 1.840556s |  0.18% | 11.34% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.538779s |  0.14% |  9.18% )   ( 1.514426s |  0.15% |  9.33% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009809s |  0.09% |  6.02% )   ( 0.981908s |  0.09% |  6.05% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.562073s |  0.05% |  3.35% )   ( 0.548206s |  0.05% |  3.37% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.032278s |  0.09% |  6.16% )   ( 1.013171s |  0.10% |  6.24% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509141s |  0.04% |  3.03% )   ( 0.499791s |  0.05% |  3.08% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.384912s |  0.12% |  8.26% )   ( 1.368384s |  0.13% |  8.43% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.913621s |  0.26% | 17.39% )   ( 2.858997s |  0.28% | 17.62% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.589468s |  0.05% |  3.51% )   ( 0.563863s |  0.05% |  3.47% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.571881s |  0.05% |  3.41% )   ( 0.554244s |  0.05% |  3.41% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004491s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005534s |  0.00% |  0.00% )   ( 0.005080s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008911s |  0.00% |  0.05% )   ( 0.008997s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 18.014729s |  1.64% |  3.28% )   ( 17.321813s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000695s |  0.00% |  0.00% )   ( 0.000713s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.013946s |  1.64% | 99.99% )   ( 17.320998s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p10
30.5.0:         ( 0.024235s |  0.00% |  0.13% )   ( 0.024065s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024101s |  0.00% |  0.13% )   ( 0.024002s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024228s |  0.00% |  0.13% )   ( 0.024074s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024119s |  0.00% |  0.13% )   ( 0.024021s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024146s |  0.00% |  0.13% )   ( 0.023995s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003400s |  0.00% |  0.00% )   ( 0.003818s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003073s |  0.00% |  0.00% )   ( 0.003490s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003580s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p10
41.5.0:         ( 0.223348s |  0.02% |  0.05% )   ( 0.004960s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003841s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.002968s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003042s |  0.00% |  0.00% )   ( 0.003434s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.026420s |  0.00% |  0.00% )   ( 0.024609s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003543s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002960s |  0.00% |  0.00% )   ( 0.003353s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003051s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003857s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p10
66.5.0:         ( 0.002940s |  0.00% |  0.00% )   ( 0.003331s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002835s |  0.00% |  0.00% )   ( 0.003230s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.582939s |  1.60% |  4.88% )   ( 17.104320s |  1.71% |  4.93% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002738s |  0.00% |  0.01% )   ( 0.003110s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.102712s |  0.10% |  6.27% )   ( 1.078677s |  0.10% |  6.30% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.131453s |  0.19% | 12.12% )   ( 2.067361s |  0.20% | 12.08% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.729431s |  0.15% |  9.83% )   ( 1.650723s |  0.16% |  9.65% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.105301s |  0.19% | 11.97% )   ( 2.050155s |  0.20% | 11.98% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.669457s |  0.15% |  9.49% )   ( 1.616490s |  0.16% |  9.45% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022861s |  0.09% |  5.81% )   ( 1.000724s |  0.10% |  5.85% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.450059s |  0.04% |  2.55% )   ( 0.434537s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.151142s |  0.10% |  6.54% )   ( 1.076147s |  0.10% |  6.29% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.400815s |  0.03% |  2.27% )   ( 0.383257s |  0.03% |  2.24% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.414521s |  0.12% |  8.04% )   ( 1.403090s |  0.14% |  8.20% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.504920s |  0.31% | 19.93% )   ( 3.484209s |  0.34% | 20.37% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.446306s |  0.04% |  2.53% )   ( 0.436920s |  0.04% |  2.55% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.451223s |  0.04% |  2.56% )   ( 0.418920s |  0.04% |  2.44% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003064s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002907s |  0.00% |  0.00% )   ( 0.003271s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003133s |  0.00% |  0.00% )   ( 0.003498s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009034s |  0.00% |  0.05% )   ( 0.009114s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 20.409591s |  1.86% |  3.71% )   ( 19.592455s |  1.96% |  3.93% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000702s |  0.00% |  0.00% )   ( 0.000717s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 20.408804s |  1.86% | 99.99% )   ( 19.591640s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p11
30.5.0:         ( 0.024167s |  0.00% |  0.11% )   ( 0.024062s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024170s |  0.00% |  0.11% )   ( 0.024127s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024095s |  0.00% |  0.11% )   ( 0.024044s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024079s |  0.00% |  0.11% )   ( 0.024037s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024197s |  0.00% |  0.11% )   ( 0.024145s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004345s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004671s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p11
41.5.0:         ( 0.276908s |  0.02% |  0.05% )   ( 0.005801s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004378s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.031998s |  0.00% |  0.00% )   ( 0.030008s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003330s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003802s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006809s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p11
66.5.0:         ( 0.003504s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003895s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.908489s |  1.81% |  3.90% )   ( 19.360077s |  1.94% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003545s |  0.00% |  0.01% )   ( 0.004046s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.444368s |  0.13% |  7.25% )   ( 1.372122s |  0.13% |  7.08% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.386875s |  0.21% | 11.98% )   ( 2.268473s |  0.22% | 11.71% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.850824s |  0.16% |  9.29% )   ( 1.825053s |  0.18% |  9.42% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.271108s |  0.20% | 11.40% )   ( 2.248179s |  0.22% | 11.61% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.790188s |  0.16% |  8.99% )   ( 1.769156s |  0.17% |  9.13% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.265361s |  0.11% |  6.35% )   ( 1.226407s |  0.12% |  6.33% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573046s |  0.05% |  2.87% )   ( 0.545353s |  0.05% |  2.81% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.319531s |  0.12% |  6.62% )   ( 1.279934s |  0.12% |  6.61% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.540491s |  0.04% |  2.71% )   ( 0.485608s |  0.04% |  2.50% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.575559s |  0.14% |  7.91% )   ( 1.548235s |  0.15% |  7.99% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.778952s |  0.34% | 18.98% )   ( 3.733474s |  0.37% | 19.28% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.558631s |  0.05% |  2.80% )   ( 0.539840s |  0.05% |  2.78% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.550010s |  0.05% |  2.76% )   ( 0.514197s |  0.05% |  2.65% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003536s |  0.00% |  0.00% )   ( 0.003992s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004232s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006266s |  0.00% |  0.03% )   ( 0.006310s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 18.401341s |  1.67% |  3.35% )   ( 17.765330s |  1.78% |  3.56% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000826s |  0.00% |  0.00% )   ( 0.000461s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 18.400340s |  1.67% | 99.99% )   ( 17.764666s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p12
30.5.0:         ( 0.046040s |  0.00% |  0.25% )   ( 0.045887s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046317s |  0.00% |  0.25% )   ( 0.046157s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.046152s |  0.00% |  0.25% )   ( 0.046007s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.046238s |  0.00% |  0.25% )   ( 0.046085s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.046212s |  0.00% |  0.25% )   ( 0.046050s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002994s |  0.00% |  0.00% )   ( 0.003345s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002690s |  0.00% |  0.00% )   ( 0.003042s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003358s |  0.00% |  0.00% )   ( 0.003761s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p12
41.5.0:         ( 0.236089s |  0.02% |  0.06% )   ( 0.004469s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003052s |  0.00% |  0.00% )   ( 0.003448s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.002856s |  0.00% |  0.00% )   ( 0.003248s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.002567s |  0.00% |  0.00% )   ( 0.002940s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002871s |  0.00% |  0.00% )   ( 0.003229s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.024239s |  0.00% |  0.00% )   ( 0.022495s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.002533s |  0.00% |  0.00% )   ( 0.002879s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002565s |  0.00% |  0.00% )   ( 0.002919s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005397s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003623s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p12
66.5.0:         ( 0.005676s |  0.00% |  0.00% )   ( 0.003029s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002581s |  0.00% |  0.00% )   ( 0.002956s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.852456s |  1.62% |  5.39% )   ( 17.450374s |  1.74% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002538s |  0.00% |  0.01% )   ( 0.002903s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.173266s |  0.10% |  6.57% )   ( 1.146973s |  0.11% |  6.57% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.165437s |  0.19% | 12.12% )   ( 2.155538s |  0.21% | 12.35% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.710386s |  0.15% |  9.58% )   ( 1.690444s |  0.16% |  9.68% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.260785s |  0.20% | 12.66% )   ( 2.169947s |  0.21% | 12.43% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.693558s |  0.15% |  9.48% )   ( 1.617100s |  0.16% |  9.26% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026508s |  0.09% |  5.74% )   ( 0.995933s |  0.09% |  5.70% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.433529s |  0.03% |  2.42% )   ( 0.425822s |  0.04% |  2.44% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.151402s |  0.10% |  6.44% )   ( 1.134717s |  0.11% |  6.50% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.376088s |  0.03% |  2.10% )   ( 0.358639s |  0.03% |  2.05% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.433647s |  0.13% |  8.03% )   ( 1.413528s |  0.14% |  8.10% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.602978s |  0.32% | 20.18% )   ( 3.556266s |  0.35% | 20.37% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.422550s |  0.03% |  2.36% )   ( 0.402153s |  0.04% |  2.30% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.399784s |  0.03% |  2.23% )   ( 0.380411s |  0.03% |  2.17% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002594s |  0.00% |  0.00% )   ( 0.002950s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002499s |  0.00% |  0.00% )   ( 0.002847s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002844s |  0.00% |  0.00% )   ( 0.003216s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005019s |  0.00% |  0.02% )   ( 0.005092s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.925595s |  1.72% |  3.44% )   ( 18.491418s |  1.85% |  3.71% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001019s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.924430s |  1.72% | 99.99% )   ( 18.490211s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p13
30.5.0:         ( 0.047422s |  0.00% |  0.25% )   ( 0.047256s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.040868s |  0.00% |  0.21% )   ( 0.040743s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.030030s |  0.00% |  0.15% )   ( 0.029938s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024210s |  0.00% |  0.12% )   ( 0.024150s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.024078s |  0.00% |  0.12% )   ( 0.024033s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001667s |  0.00% |  0.00% )   ( 0.001894s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   true
38.5.0:         ( 0.001682s |  0.00% |  0.00% )   ( 0.001904s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001907s |  0.00% |  0.00% )   ( 0.002123s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p13
41.5.0:         ( 0.095027s |  0.00% |  0.04% )   ( 0.002321s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.001702s |  0.00% |  0.00% )   ( 0.001927s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.001396s |  0.00% |  0.00% )   ( 0.001587s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.001344s |  0.00% |  0.00% )   ( 0.001529s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001514s |  0.00% |  0.00% )   ( 0.001712s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.011435s |  0.00% |  0.00% )   ( 0.011608s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.001364s |  0.00% |  0.00% )   ( 0.001555s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001400s |  0.00% |  0.00% )   ( 0.001579s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001487s |  0.00% |  0.00% )   ( 0.001667s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.001735s |  0.00% |  0.00% )   ( 0.001929s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p13
66.5.0:         ( 0.001384s |  0.00% |  0.00% )   ( 0.001593s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001376s |  0.00% |  0.00% )   ( 0.001564s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.617089s |  1.69% |  9.83% )   ( 18.272462s |  1.83% |  9.88% )    	(10x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001386s |  0.00% |  0.00% )   ( 0.001585s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.158301s |  0.10% |  6.22% )   ( 1.152009s |  0.11% |  6.30% )    	(10x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.392686s |  0.21% | 12.85% )   ( 2.373225s |  0.23% | 12.98% )    	(10x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.768380s |  0.16% |  9.49% )   ( 1.732146s |  0.17% |  9.47% )    	(10x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.384914s |  0.21% | 12.81% )   ( 2.362771s |  0.23% | 12.93% )    	(10x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.793023s |  0.16% |  9.63% )   ( 1.723074s |  0.17% |  9.42% )    	(10x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.990451s |  0.09% |  5.32% )   ( 0.987849s |  0.09% |  5.40% )    	(10x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.330085s |  0.03% |  1.77% )   ( 0.315292s |  0.03% |  1.72% )    	(10x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.198459s |  0.10% |  6.43% )   ( 1.177730s |  0.11% |  6.44% )    	(10x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.270887s |  0.02% |  1.45% )   ( 0.262182s |  0.02% |  1.43% )    	(10x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.476273s |  0.13% |  7.92% )   ( 1.451856s |  0.14% |  7.94% )    	(10x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.262081s |  0.38% | 22.89% )   ( 4.177629s |  0.41% | 22.86% )    	(10x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.305747s |  0.02% |  1.64% )   ( 0.296543s |  0.02% |  1.62% )    	(10x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.284416s |  0.02% |  1.52% )   ( 0.258571s |  0.02% |  1.41% )    	(10x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001603s |  0.00% |  0.00% )   ( 0.001821s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001274s |  0.00% |  0.00% )   ( 0.001443s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001409s |  0.00% |  0.00% )   ( 0.001589s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008792s |  0.00% |  0.04% )   ( 0.008871s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.422074s |  1.58% |  3.17% )   ( 16.422235s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000967s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.420958s |  1.58% | 99.99% )   ( 16.421710s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p14
30.5.0:         ( 0.026930s |  0.00% |  0.15% )   ( 0.026858s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024111s |  0.00% |  0.13% )   ( 0.024052s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.029287s |  0.00% |  0.16% )   ( 0.029196s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.027033s |  0.00% |  0.15% )   ( 0.026966s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.026417s |  0.00% |  0.15% )   ( 0.026336s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004962s |  0.00% |  0.00% )   ( 0.005565s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004515s |  0.00% |  0.00% )   ( 0.005107s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005450s |  0.00% |  0.00% )   ( 0.006102s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p14
41.5.0:         ( 0.288795s |  0.02% |  0.05% )   ( 0.006859s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005048s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004239s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003832s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034550s |  0.00% |  0.00% )   ( 0.034030s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004483s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004230s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004748s |  0.00% |  0.00% )   ( 0.005287s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p14
66.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.889204s |  1.53% |  3.46% )   ( 16.163805s |  1.62% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004077s |  0.00% |  0.02% )   ( 0.004638s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.117442s |  0.10% |  6.61% )   ( 1.070462s |  0.10% |  6.62% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.953343s |  0.17% | 11.56% )   ( 1.819545s |  0.18% | 11.25% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.568337s |  0.14% |  9.28% )   ( 1.533608s |  0.15% |  9.48% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.904192s |  0.17% | 11.27% )   ( 1.827162s |  0.18% | 11.30% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.554489s |  0.14% |  9.20% )   ( 1.504795s |  0.15% |  9.30% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023080s |  0.09% |  6.05% )   ( 0.983802s |  0.09% |  6.08% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.556433s |  0.05% |  3.29% )   ( 0.546982s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.058369s |  0.09% |  6.26% )   ( 1.023528s |  0.10% |  6.33% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.528122s |  0.04% |  3.12% )   ( 0.487499s |  0.04% |  3.01% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435403s |  0.13% |  8.49% )   ( 1.359056s |  0.13% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.023193s |  0.27% | 17.90% )   ( 2.916383s |  0.29% | 18.04% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.606947s |  0.05% |  3.59% )   ( 0.550603s |  0.05% |  3.40% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555777s |  0.05% |  3.29% )   ( 0.535742s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005012s |  0.00% |  0.02% )   ( 0.005078s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 20.355662s |  1.85% |  3.70% )   ( 19.355566s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001022s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 20.354494s |  1.85% | 99.99% )   ( 19.354352s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p15
30.5.0:         ( 0.044207s |  0.00% |  0.21% )   ( 0.044065s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.044763s |  0.00% |  0.21% )   ( 0.044629s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.045091s |  0.00% |  0.22% )   ( 0.044944s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.028816s |  0.00% |  0.14% )   ( 0.028749s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.046878s |  0.00% |  0.23% )   ( 0.046723s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004375s |  0.00% |  0.00% )   ( 0.004921s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004522s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p15
41.5.0:         ( 0.301694s |  0.02% |  0.05% )   ( 0.006255s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003678s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003792s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034411s |  0.00% |  0.00% )   ( 0.031811s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004579s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p15
66.5.0:         ( 0.006738s |  0.00% |  0.00% )   ( 0.004232s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004131s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.735228s |  1.79% |  3.72% )   ( 19.028298s |  1.90% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003851s |  0.00% |  0.01% )   ( 0.004381s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.452383s |  0.13% |  7.35% )   ( 1.383147s |  0.13% |  7.26% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.361720s |  0.21% | 11.96% )   ( 2.322531s |  0.23% | 12.20% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.829364s |  0.16% |  9.26% )   ( 1.762629s |  0.17% |  9.26% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.276076s |  0.20% | 11.53% )   ( 2.164502s |  0.21% | 11.37% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.764341s |  0.16% |  8.94% )   ( 1.723234s |  0.17% |  9.05% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.238227s |  0.11% |  6.27% )   ( 1.219138s |  0.12% |  6.40% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.593244s |  0.05% |  3.00% )   ( 0.564583s |  0.05% |  2.96% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.317100s |  0.12% |  6.67% )   ( 1.254330s |  0.12% |  6.59% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.539299s |  0.04% |  2.73% )   ( 0.478631s |  0.04% |  2.51% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.565438s |  0.14% |  7.93% )   ( 1.533378s |  0.15% |  8.05% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.672679s |  0.33% | 18.60% )   ( 3.556415s |  0.35% | 18.69% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581759s |  0.05% |  2.94% )   ( 0.547630s |  0.05% |  2.87% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.539747s |  0.04% |  2.73% )   ( 0.513769s |  0.05% |  2.70% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003807s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004225s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005010s |  0.00% |  0.02% )   ( 0.005089s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.893767s |  1.63% |  3.25% )   ( 16.896832s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.001052s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.892596s |  1.63% | 99.99% )   ( 16.895614s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p16
30.5.0:         ( 0.042369s |  0.00% |  0.23% )   ( 0.042232s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.030808s |  0.00% |  0.17% )   ( 0.030717s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.024253s |  0.00% |  0.13% )   ( 0.024200s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.024302s |  0.00% |  0.13% )   ( 0.024246s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.035532s |  0.00% |  0.19% )   ( 0.035425s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004420s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004901s |  0.00% |  0.00% )   ( 0.005417s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p16
41.5.0:         ( 0.382083s |  0.03% |  0.07% )   ( 0.006280s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004665s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004213s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034595s |  0.00% |  0.00% )   ( 0.032127s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006814s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004598s |  0.00% |  0.00% )   ( 0.005137s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p16
66.5.0:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003809s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.245034s |  1.57% |  3.70% )   ( 16.620954s |  1.66% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003610s |  0.00% |  0.02% )   ( 0.004140s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.143094s |  0.10% |  6.62% )   ( 1.112963s |  0.11% |  6.69% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.066560s |  0.18% | 11.98% )   ( 1.980337s |  0.19% | 11.91% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.607343s |  0.14% |  9.32% )   ( 1.579989s |  0.15% |  9.50% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.049494s |  0.18% | 11.88% )   ( 1.901388s |  0.19% | 11.43% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.586611s |  0.14% |  9.20% )   ( 1.549671s |  0.15% |  9.32% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.031161s |  0.09% |  5.97% )   ( 1.011604s |  0.10% |  6.08% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575657s |  0.05% |  3.33% )   ( 0.524705s |  0.05% |  3.15% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.077681s |  0.09% |  6.24% )   ( 1.048460s |  0.10% |  6.30% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509937s |  0.04% |  2.95% )   ( 0.453686s |  0.04% |  2.72% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412450s |  0.12% |  8.19% )   ( 1.371282s |  0.13% |  8.25% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.099160s |  0.28% | 17.97% )   ( 3.064574s |  0.30% | 18.43% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552646s |  0.05% |  3.20% )   ( 0.518388s |  0.05% |  3.11% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.529630s |  0.04% |  3.07% )   ( 0.499767s |  0.05% |  3.00% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005061s |  0.00% |  0.02% )   ( 0.005132s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.167813s |  1.56% |  3.12% )   ( 16.128765s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001038s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.166627s |  1.56% | 99.99% )   ( 16.127533s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p17
30.5.0:         ( 0.026955s |  0.00% |  0.15% )   ( 0.026867s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.028672s |  0.00% |  0.16% )   ( 0.028593s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.029650s |  0.00% |  0.17% )   ( 0.029561s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.026989s |  0.00% |  0.15% )   ( 0.026914s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.030843s |  0.00% |  0.17% )   ( 0.030742s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004823s |  0.00% |  0.00% )   ( 0.005344s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004282s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005257s |  0.00% |  0.00% )   ( 0.005824s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p17
41.5.0:         ( 0.322412s |  0.02% |  0.06% )   ( 0.006788s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004605s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004773s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004352s |  0.00% |  0.00% )   ( 0.004817s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.033857s |  0.00% |  0.00% )   ( 0.034299s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004253s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009787s |  0.00% |  0.00% )   ( 0.004922s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.005143s |  0.00% |  0.00% )   ( 0.005746s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p17
66.5.0:         ( 0.004088s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003860s |  0.00% |  0.00% )   ( 0.004392s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.581945s |  1.51% |  3.57% )   ( 15.855187s |  1.58% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004079s |  0.00% |  0.02% )   ( 0.004626s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.151566s |  0.10% |  6.94% )   ( 1.063896s |  0.10% |  6.71% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.860719s |  0.16% | 11.22% )   ( 1.781973s |  0.17% | 11.23% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.596187s |  0.14% |  9.62% )   ( 1.529533s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.825308s |  0.16% | 11.00% )   ( 1.777420s |  0.17% | 11.21% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.520199s |  0.13% |  9.16% )   ( 1.464944s |  0.14% |  9.23% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.997502s |  0.09% |  6.01% )   ( 0.968759s |  0.09% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.569031s |  0.05% |  3.43% )   ( 0.545363s |  0.05% |  3.43% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.036970s |  0.09% |  6.25% )   ( 0.999516s |  0.10% |  6.30% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497881s |  0.04% |  3.00% )   ( 0.470908s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.450968s |  0.13% |  8.75% )   ( 1.340816s |  0.13% |  8.45% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.892165s |  0.26% | 17.44% )   ( 2.842150s |  0.28% | 17.92% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.599399s |  0.05% |  3.61% )   ( 0.542697s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.579971s |  0.05% |  3.49% )   ( 0.522586s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003712s |  0.00% |  0.00% )   ( 0.004234s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009262s |  0.00% |  0.05% )   ( 0.009160s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.956654s |  1.72% |  3.45% )   ( 18.098688s |  1.81% |  3.63% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001054s |  0.00% |  0.00% )   ( 0.001075s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.955447s |  1.72% | 99.99% )   ( 18.097438s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p18
30.5.0:         ( 0.044425s |  0.00% |  0.23% )   ( 0.044139s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.050372s |  0.00% |  0.26% )   ( 0.050008s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.040616s |  0.00% |  0.21% )   ( 0.040321s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.046343s |  0.00% |  0.24% )   ( 0.045955s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.041376s |  0.00% |  0.21% )   ( 0.041110s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003608s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p18
41.5.0:         ( 0.434143s |  0.03% |  0.09% )   ( 0.006432s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003567s |  0.00% |  0.00% )   ( 0.004030s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003383s |  0.00% |  0.00% )   ( 0.003846s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003663s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.028179s |  0.00% |  0.00% )   ( 0.028492s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004129s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003579s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003682s |  0.00% |  0.00% )   ( 0.004153s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p18
66.5.0:         ( 0.003378s |  0.00% |  0.00% )   ( 0.003837s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003134s |  0.00% |  0.00% )   ( 0.003579s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.205380s |  1.65% |  4.17% )   ( 17.768687s |  1.78% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003285s |  0.00% |  0.01% )   ( 0.003750s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.292514s |  0.11% |  7.09% )   ( 1.239192s |  0.12% |  6.97% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.332669s |  0.21% | 12.81% )   ( 2.278656s |  0.22% | 12.82% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.816359s |  0.16% |  9.97% )   ( 1.794481s |  0.17% | 10.09% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.209241s |  0.20% | 12.13% )   ( 2.162339s |  0.21% | 12.16% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.784643s |  0.16% |  9.80% )   ( 1.745969s |  0.17% |  9.82% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.133891s |  0.10% |  6.22% )   ( 1.119037s |  0.11% |  6.29% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512835s |  0.04% |  2.81% )   ( 0.497809s |  0.04% |  2.80% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.243571s |  0.11% |  6.83% )   ( 1.194397s |  0.11% |  6.72% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450033s |  0.04% |  2.47% )   ( 0.439313s |  0.04% |  2.47% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.540424s |  0.14% |  8.46% )   ( 1.529817s |  0.15% |  8.60% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.888516s |  0.26% | 15.86% )   ( 2.824321s |  0.28% | 15.89% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.514431s |  0.04% |  2.82% )   ( 0.480149s |  0.04% |  2.70% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.482968s |  0.04% |  2.65% )   ( 0.459457s |  0.04% |  2.58% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003840s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003128s |  0.00% |  0.00% )   ( 0.003554s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003544s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004951s |  0.00% |  0.02% )   ( 0.005022s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.822163s |  1.62% |  3.24% )   ( 16.594382s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001011s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.821002s |  1.62% | 99.99% )   ( 16.593822s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p19
30.5.0:         ( 0.037436s |  0.00% |  0.21% )   ( 0.037305s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.028189s |  0.00% |  0.15% )   ( 0.028095s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.032522s |  0.00% |  0.18% )   ( 0.032394s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.040363s |  0.00% |  0.22% )   ( 0.040214s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.043621s |  0.00% |  0.24% )   ( 0.043451s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004919s |  0.00% |  0.00% )   ( 0.005503s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004872s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005311s |  0.00% |  0.00% )   ( 0.005912s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p19
41.5.0:         ( 0.441037s |  0.04% |  0.08% )   ( 0.007253s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004961s |  0.00% |  0.00% )   ( 0.005546s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004789s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.004096s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004688s |  0.00% |  0.00% )   ( 0.004969s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035123s |  0.00% |  0.00% )   ( 0.035431s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004896s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004162s |  0.00% |  0.00% )   ( 0.004711s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007674s |  0.00% |  0.00% )   ( 0.005102s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.005111s |  0.00% |  0.00% )   ( 0.005716s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p19
66.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.082046s |  1.55% |  3.42% )   ( 16.283125s |  1.63% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004346s |  0.00% |  0.02% )   ( 0.004951s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.162082s |  0.10% |  6.80% )   ( 1.114243s |  0.11% |  6.84% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.901651s |  0.17% | 11.13% )   ( 1.873953s |  0.18% | 11.50% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.610244s |  0.14% |  9.42% )   ( 1.555186s |  0.15% |  9.55% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.832265s |  0.16% | 10.72% )   ( 1.803909s |  0.18% | 11.07% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.595445s |  0.14% |  9.33% )   ( 1.499545s |  0.15% |  9.20% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.061573s |  0.09% |  6.21% )   ( 1.021668s |  0.10% |  6.27% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590868s |  0.05% |  3.45% )   ( 0.549209s |  0.05% |  3.37% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102321s |  0.10% |  6.45% )   ( 1.042754s |  0.10% |  6.40% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536901s |  0.04% |  3.14% )   ( 0.483325s |  0.04% |  2.96% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432371s |  0.13% |  8.38% )   ( 1.368904s |  0.13% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.045713s |  0.27% | 17.82% )   ( 2.880994s |  0.28% | 17.69% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.592355s |  0.05% |  3.46% )   ( 0.555623s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.613911s |  0.05% |  3.59% )   ( 0.528861s |  0.05% |  3.24% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004241s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003975s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004381s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004935s |  0.00% |  0.02% )   ( 0.005006s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 20.000181s |  1.82% |  3.64% )   ( 19.257299s |  1.93% |  3.86% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001056s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 19.998974s |  1.82% | 99.99% )   ( 19.256047s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p20
30.5.0:         ( 0.032480s |  0.00% |  0.16% )   ( 0.032339s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.042694s |  0.00% |  0.21% )   ( 0.042544s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.047201s |  0.00% |  0.23% )   ( 0.047020s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.050544s |  0.00% |  0.25% )   ( 0.050366s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.053221s |  0.00% |  0.26% )   ( 0.053041s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002900s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003441s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p20
41.5.0:         ( 0.289530s |  0.02% |  0.07% )   ( 0.004948s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003282s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003046s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.002723s |  0.00% |  0.00% )   ( 0.003093s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002837s |  0.00% |  0.00% )   ( 0.003192s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.025080s |  0.00% |  0.00% )   ( 0.022349s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.002690s |  0.00% |  0.00% )   ( 0.003037s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002793s |  0.00% |  0.00% )   ( 0.003160s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002854s |  0.00% |  0.00% )   ( 0.003223s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003831s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p20
66.5.0:         ( 0.002840s |  0.00% |  0.00% )   ( 0.003220s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002816s |  0.00% |  0.00% )   ( 0.003194s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.401521s |  1.76% |  5.10% )   ( 18.943473s |  1.89% |  5.17% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002882s |  0.00% |  0.01% )   ( 0.003183s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.404087s |  0.12% |  7.23% )   ( 1.356978s |  0.13% |  7.16% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.620782s |  0.23% | 13.50% )   ( 2.557858s |  0.25% | 13.50% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.986761s |  0.18% | 10.24% )   ( 1.955110s |  0.19% | 10.32% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.597113s |  0.23% | 13.38% )   ( 2.544080s |  0.25% | 13.42% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.937494s |  0.17% |  9.98% )   ( 1.912050s |  0.19% | 10.09% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.223671s |  0.11% |  6.30% )   ( 1.173751s |  0.11% |  6.19% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.454282s |  0.04% |  2.34% )   ( 0.454383s |  0.04% |  2.39% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.280352s |  0.11% |  6.59% )   ( 1.260821s |  0.12% |  6.65% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.387649s |  0.03% |  1.99% )   ( 0.377582s |  0.03% |  1.99% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412831s |  0.12% |  7.28% )   ( 1.329910s |  0.13% |  7.02% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.225882s |  0.29% | 16.62% )   ( 3.184957s |  0.31% | 16.81% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.442517s |  0.04% |  2.28% )   ( 0.436136s |  0.04% |  2.30% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.425218s |  0.03% |  2.19% )   ( 0.396674s |  0.03% |  2.09% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002752s |  0.00% |  0.00% )   ( 0.003105s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002614s |  0.00% |  0.00% )   ( 0.002992s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005952s |  0.00% |  0.00% )   ( 0.003303s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005057s |  0.00% |  0.02% )   ( 0.005128s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 19.074635s |  1.73% |  3.47% )   ( 18.045811s |  1.80% |  3.62% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001076s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 19.073408s |  1.73% | 99.99% )   ( 18.044540s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p21
30.5.0:         ( 0.048241s |  0.00% |  0.25% )   ( 0.043998s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.040109s |  0.00% |  0.21% )   ( 0.039951s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.027438s |  0.00% |  0.14% )   ( 0.027373s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.050307s |  0.00% |  0.26% )   ( 0.050120s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.049981s |  0.00% |  0.26% )   ( 0.049809s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005117s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004931s |  0.00% |  0.00% )   ( 0.005472s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p21
41.5.0:         ( 0.316144s |  0.02% |  0.05% )   ( 0.006761s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005155s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003994s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004253s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035021s |  0.00% |  0.00% )   ( 0.035442s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003975s |  0.00% |  0.00% )   ( 0.004522s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008410s |  0.00% |  0.00% )   ( 0.004884s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004885s |  0.00% |  0.00% )   ( 0.005473s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p21
66.5.0:         ( 0.003952s |  0.00% |  0.00% )   ( 0.004493s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.426510s |  1.67% |  3.57% )   ( 17.706524s |  1.77% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004104s |  0.00% |  0.02% )   ( 0.004674s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.348151s |  0.12% |  7.31% )   ( 1.261282s |  0.12% |  7.12% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.162338s |  0.19% | 11.73% )   ( 2.083870s |  0.20% | 11.76% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.793229s |  0.16% |  9.73% )   ( 1.681236s |  0.16% |  9.49% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.087394s |  0.19% | 11.32% )   ( 1.991265s |  0.19% | 11.24% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.669637s |  0.15% |  9.06% )   ( 1.604234s |  0.16% |  9.06% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.158111s |  0.10% |  6.28% )   ( 1.116488s |  0.11% |  6.30% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.569338s |  0.05% |  3.08% )   ( 0.552739s |  0.05% |  3.12% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.208324s |  0.11% |  6.55% )   ( 1.151082s |  0.11% |  6.50% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.512437s |  0.04% |  2.78% )   ( 0.487236s |  0.04% |  2.75% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.507753s |  0.13% |  8.18% )   ( 1.469252s |  0.14% |  8.29% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.284587s |  0.29% | 17.82% )   ( 3.214973s |  0.32% | 18.15% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.576365s |  0.05% |  3.12% )   ( 0.554109s |  0.05% |  3.12% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544742s |  0.04% |  2.95% )   ( 0.534084s |  0.05% |  3.01% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004330s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004866s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006491s |  0.00% |  0.03% )   ( 0.006552s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.795061s |  1.62% |  3.24% )   ( 16.879983s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000958s |  0.00% |  0.00% )   ( 0.000983s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.793930s |  1.62% | 99.99% )   ( 16.878798s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p22
30.5.0:         ( 0.046139s |  0.00% |  0.25% )   ( 0.045973s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046122s |  0.00% |  0.25% )   ( 0.045951s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.045977s |  0.00% |  0.25% )   ( 0.045798s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.045696s |  0.00% |  0.25% )   ( 0.045527s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.047395s |  0.00% |  0.26% )   ( 0.047220s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003825s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003439s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004076s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p22
41.5.0:         ( 0.311752s |  0.02% |  0.07% )   ( 0.005616s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003731s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003448s |  0.00% |  0.00% )   ( 0.003871s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003475s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003698s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.026423s |  0.00% |  0.00% )   ( 0.026769s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003061s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003064s |  0.00% |  0.00% )   ( 0.003489s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003251s |  0.00% |  0.00% )   ( 0.003668s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003706s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p22
66.5.0:         ( 0.006095s |  0.00% |  0.00% )   ( 0.003518s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003002s |  0.00% |  0.00% )   ( 0.003407s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.156748s |  1.56% |  4.59% )   ( 16.545701s |  1.65% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003098s |  0.00% |  0.01% )   ( 0.003533s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.183532s |  0.10% |  6.89% )   ( 1.091775s |  0.10% |  6.59% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.992872s |  0.18% | 11.61% )   ( 1.939591s |  0.19% | 11.72% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.617815s |  0.14% |  9.42% )   ( 1.561813s |  0.15% |  9.43% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.087995s |  0.19% | 12.17% )   ( 1.950880s |  0.19% | 11.79% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.605908s |  0.14% |  9.36% )   ( 1.531404s |  0.15% |  9.25% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001721s |  0.09% |  5.83% )   ( 0.988297s |  0.09% |  5.97% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.477560s |  0.04% |  2.78% )   ( 0.455915s |  0.04% |  2.75% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.094706s |  0.09% |  6.38% )   ( 1.066297s |  0.10% |  6.44% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.405069s |  0.03% |  2.36% )   ( 0.393851s |  0.03% |  2.38% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405985s |  0.12% |  8.19% )   ( 1.373725s |  0.13% |  8.30% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.335244s |  0.30% | 19.43% )   ( 3.303496s |  0.33% | 19.96% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.483038s |  0.04% |  2.81% )   ( 0.457684s |  0.04% |  2.76% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.462205s |  0.04% |  2.69% )   ( 0.427440s |  0.04% |  2.58% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004521s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003202s |  0.00% |  0.00% )   ( 0.003607s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008199s |  0.00% |  0.04% )   ( 0.008281s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000173s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.123559s |  1.56% |  3.11% )   ( 16.242292s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001115s |  0.00% |  0.00% )   ( 0.001137s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.122290s |  1.56% | 99.99% )   ( 16.240978s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p23
30.5.0:         ( 0.046134s |  0.00% |  0.26% )   ( 0.045965s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046197s |  0.00% |  0.26% )   ( 0.045993s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.046150s |  0.00% |  0.26% )   ( 0.045983s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.045930s |  0.00% |  0.26% )   ( 0.045761s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.045971s |  0.00% |  0.26% )   ( 0.045792s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003753s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004640s |  0.00% |  0.00% )   ( 0.005135s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p23
41.5.0:         ( 0.276327s |  0.02% |  0.06% )   ( 0.005945s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004534s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035384s |  0.00% |  0.00% )   ( 0.030369s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004321s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004031s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004508s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p23
66.5.0:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.497251s |  1.50% |  4.01% )   ( 15.892634s |  1.59% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003712s |  0.00% |  0.02% )   ( 0.004206s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138182s |  0.10% |  6.89% )   ( 1.056617s |  0.10% |  6.64% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.938930s |  0.17% | 11.75% )   ( 1.828435s |  0.18% | 11.50% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.659602s |  0.15% | 10.05% )   ( 1.513020s |  0.15% |  9.52% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.844042s |  0.16% | 11.17% )   ( 1.792400s |  0.17% | 11.27% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.464604s |  0.13% |  8.87% )   ( 1.441841s |  0.14% |  9.07% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.981764s |  0.08% |  5.95% )   ( 0.962031s |  0.09% |  6.05% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503475s |  0.04% |  3.05% )   ( 0.499898s |  0.05% |  3.14% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.039952s |  0.09% |  6.30% )   ( 1.015330s |  0.10% |  6.38% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.427228s |  0.03% |  2.58% )   ( 0.426514s |  0.04% |  2.68% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.386479s |  0.12% |  8.40% )   ( 1.343676s |  0.13% |  8.45% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.101217s |  0.28% | 18.79% )   ( 3.060011s |  0.30% | 19.25% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498959s |  0.04% |  3.02% )   ( 0.483859s |  0.04% |  3.04% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.509105s |  0.04% |  3.08% )   ( 0.464796s |  0.04% |  2.92% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003636s |  0.00% |  0.00% )   ( 0.004129s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006771s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.djNoad"/.quit
80.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000249s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.djNoad"/.run/p* 1>&20
81.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.015681s |  0.00% |  0.09% )   ( 0.010423s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.584709s |  1.60% |  3.20% )   ( 16.342467s |  1.63% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001059s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.583495s |  1.60% | 99.99% )   ( 16.341204s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p24
30.5.0:         ( 0.046454s |  0.00% |  0.26% )   ( 0.046300s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.049461s |  0.00% |  0.28% )   ( 0.049276s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.045503s |  0.00% |  0.25% )   ( 0.045357s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.045562s |  0.00% |  0.25% )   ( 0.045412s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.045493s |  0.00% |  0.25% )   ( 0.045344s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004439s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004618s |  0.00% |  0.00% )   ( 0.005156s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p24
41.5.0:         ( 0.395516s |  0.03% |  0.08% )   ( 0.006669s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.004932s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004179s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003655s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003748s |  0.00% |  0.00% )   ( 0.004230s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034759s |  0.00% |  0.00% )   ( 0.032126s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003740s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004271s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004723s |  0.00% |  0.00% )   ( 0.005281s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p24
66.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003657s |  0.00% |  0.00% )   ( 0.004175s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.850442s |  1.53% |  3.83% )   ( 15.992094s |  1.60% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003634s |  0.00% |  0.02% )   ( 0.004159s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.172088s |  0.10% |  6.95% )   ( 1.068235s |  0.10% |  6.67% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.974996s |  0.18% | 11.72% )   ( 1.859803s |  0.18% | 11.62% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.605200s |  0.14% |  9.52% )   ( 1.541957s |  0.15% |  9.64% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.940469s |  0.17% | 11.51% )   ( 1.849072s |  0.18% | 11.56% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.602145s |  0.14% |  9.50% )   ( 1.506223s |  0.15% |  9.41% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005712s |  0.09% |  5.96% )   ( 0.967231s |  0.09% |  6.04% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.538818s |  0.04% |  3.19% )   ( 0.514613s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148504s |  0.10% |  6.81% )   ( 1.028022s |  0.10% |  6.42% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.493045s |  0.04% |  2.92% )   ( 0.447442s |  0.04% |  2.79% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412073s |  0.12% |  8.38% )   ( 1.349993s |  0.13% |  8.44% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.900782s |  0.26% | 17.21% )   ( 2.863047s |  0.28% | 17.90% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.522699s |  0.04% |  3.10% )   ( 0.501184s |  0.05% |  3.13% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530277s |  0.04% |  3.14% )   ( 0.491113s |  0.04% |  3.07% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003663s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003868s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005379s |  0.00% |  0.03% )   ( 0.005450s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 19.238068s |  1.75% |  3.50% )   ( 18.628804s |  1.86% |  3.73% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001076s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 19.236844s |  1.75% | 99.99% )   ( 18.627537s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p25
30.5.0:         ( 0.063099s |  0.00% |  0.32% )   ( 0.049333s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.053824s |  0.00% |  0.27% )   ( 0.053618s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.053773s |  0.00% |  0.27% )   ( 0.053587s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.052605s |  0.00% |  0.27% )   ( 0.052405s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.050188s |  0.00% |  0.26% )   ( 0.050018s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003372s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p25
41.5.0:         ( 0.248079s |  0.02% |  0.05% )   ( 0.005087s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003204s |  0.00% |  0.00% )   ( 0.003645s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003062s |  0.00% |  0.00% )   ( 0.003430s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003337s |  0.00% |  0.00% )   ( 0.003749s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.025119s |  0.00% |  0.00% )   ( 0.025432s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003214s |  0.00% |  0.00% )   ( 0.003630s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003455s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003262s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.003845s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p25
66.5.0:         ( 0.002931s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003013s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.631031s |  1.69% |  4.61% )   ( 18.271963s |  1.83% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003135s |  0.00% |  0.01% )   ( 0.003554s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.296525s |  0.11% |  6.95% )   ( 1.230732s |  0.12% |  6.73% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.320164s |  0.21% | 12.45% )   ( 2.307421s |  0.23% | 12.62% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.842274s |  0.16% |  9.88% )   ( 1.829259s |  0.18% | 10.01% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.365265s |  0.21% | 12.69% )   ( 2.303052s |  0.23% | 12.60% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.780127s |  0.16% |  9.55% )   ( 1.752588s |  0.17% |  9.59% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.142318s |  0.10% |  6.13% )   ( 1.104263s |  0.11% |  6.04% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.473451s |  0.04% |  2.54% )   ( 0.464443s |  0.04% |  2.54% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.185209s |  0.10% |  6.36% )   ( 1.141177s |  0.11% |  6.24% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.406918s |  0.03% |  2.18% )   ( 0.394645s |  0.03% |  2.15% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.429948s |  0.13% |  7.67% )   ( 1.417987s |  0.14% |  7.76% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.460485s |  0.31% | 18.57% )   ( 3.430053s |  0.34% | 18.77% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.467684s |  0.04% |  2.51% )   ( 0.454130s |  0.04% |  2.48% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.457528s |  0.04% |  2.45% )   ( 0.438659s |  0.04% |  2.40% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003199s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002839s |  0.00% |  0.00% )   ( 0.003230s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003328s |  0.00% |  0.00% )   ( 0.003743s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005049s |  0.00% |  0.02% )   ( 0.005127s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.944330s |  1.63% |  3.26% )   ( 17.191196s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001141s |  0.00% |  0.00% )   ( 0.001161s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.943030s |  1.63% | 99.99% )   ( 17.189862s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p26
30.5.0:         ( 0.053120s |  0.00% |  0.29% )   ( 0.052912s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.054125s |  0.00% |  0.30% )   ( 0.053926s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.051491s |  0.00% |  0.28% )   ( 0.051312s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.053402s |  0.00% |  0.29% )   ( 0.053199s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.054810s |  0.00% |  0.30% )   ( 0.054602s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003724s |  0.00% |  0.00% )   ( 0.004128s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p26
41.5.0:         ( 0.371573s |  0.03% |  0.09% )   ( 0.005891s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003695s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003096s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003355s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.026148s |  0.00% |  0.00% )   ( 0.026501s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.003278s |  0.00% |  0.00% )   ( 0.003728s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003166s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003364s |  0.00% |  0.00% )   ( 0.003807s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004502s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p26
66.5.0:         ( 0.003279s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003173s |  0.00% |  0.00% )   ( 0.003593s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.210884s |  1.56% |  4.35% )   ( 16.819735s |  1.68% |  4.44% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003280s |  0.00% |  0.01% )   ( 0.003767s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132643s |  0.10% |  6.58% )   ( 1.116036s |  0.11% |  6.63% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.045693s |  0.18% | 11.88% )   ( 2.016143s |  0.20% | 11.98% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.675494s |  0.15% |  9.73% )   ( 1.630127s |  0.16% |  9.69% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.078525s |  0.18% | 12.07% )   ( 2.029365s |  0.20% | 12.06% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597282s |  0.14% |  9.28% )   ( 1.572673s |  0.15% |  9.35% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013759s |  0.09% |  5.89% )   ( 1.013609s |  0.10% |  6.02% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.470659s |  0.04% |  2.73% )   ( 0.470009s |  0.04% |  2.79% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.139618s |  0.10% |  6.62% )   ( 1.070002s |  0.10% |  6.36% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.433097s |  0.03% |  2.51% )   ( 0.402533s |  0.04% |  2.39% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389714s |  0.12% |  8.07% )   ( 1.368290s |  0.13% |  8.13% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.241958s |  0.29% | 18.83% )   ( 3.215750s |  0.32% | 19.11% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.492433s |  0.04% |  2.86% )   ( 0.465810s |  0.04% |  2.76% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.496729s |  0.04% |  2.88% )   ( 0.445621s |  0.04% |  2.64% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003288s |  0.00% |  0.00% )   ( 0.003727s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.005900s |  0.00% |  0.00% )   ( 0.003284s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003846s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008269s |  0.00% |  0.04% )   ( 0.008344s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 16.992571s |  1.54% |  3.09% )   ( 16.094754s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001080s |  0.00% |  0.00% )   ( 0.001106s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 16.991340s |  1.54% | 99.99% )   ( 16.093476s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.djNoad"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.djNoad"/.run/p27
30.5.0:         ( 0.045532s |  0.00% |  0.26% )   ( 0.045375s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.djNoad"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.djNoad"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.045520s |  0.00% |  0.26% )   ( 0.045336s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3350840 ${BASHPID}' INT
33.5.0:         ( 0.045484s |  0.00% |  0.26% )   ( 0.045332s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3350840 ${BASHPID}' TERM
34.5.0:         ( 0.047107s |  0.00% |  0.27% )   ( 0.046904s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3350840 ${BASHPID}' HUP
35.5.0:         ( 0.053895s |  0.00% |  0.31% )   ( 0.053710s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.djNoad"/.nLines
38.5.2:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005248s |  0.00% |  0.00% )   ( 0.005795s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p27
41.5.0:         ( 0.347151s |  0.03% |  0.07% )   ( 0.006838s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004595s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.quit ]]
46.5.0:         ( 0.004205s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.djNoad"/.done ]]
46.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004133s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.040563s |  0.00% |  0.00% )   ( 0.034476s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 A
51.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008761s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
65.5.0:         ( 0.004788s |  0.00% |  0.00% )   ( 0.005357s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.djNoad"/.wait/p27
66.5.0:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004450s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.283651s |  1.48% |  3.54% )   ( 15.728790s |  1.57% |  3.61% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003955s |  0.00% |  0.02% )   ( 0.004479s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.081608s |  0.09% |  6.64% )   ( 1.056085s |  0.10% |  6.71% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.841276s |  0.16% | 11.30% )   ( 1.781025s |  0.17% | 11.32% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.526272s |  0.13% |  9.37% )   ( 1.510382s |  0.15% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.826365s |  0.16% | 11.21% )   ( 1.730181s |  0.17% | 11.00% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.457441s |  0.13% |  8.95% )   ( 1.433130s |  0.14% |  9.11% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011809s |  0.09% |  6.21% )   ( 0.961749s |  0.09% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.559866s |  0.05% |  3.43% )   ( 0.544593s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.030015s |  0.09% |  6.32% )   ( 1.000936s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.523913s |  0.04% |  3.21% )   ( 0.478392s |  0.04% |  3.04% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.408485s |  0.12% |  8.64% )   ( 1.339609s |  0.13% |  8.51% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.890183s |  0.26% | 17.74% )   ( 2.829182s |  0.28% | 17.98% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566640s |  0.05% |  3.47% )   ( 0.536685s |  0.05% |  3.41% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555823s |  0.05% |  3.41% )   ( 0.522362s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003785s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004182s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008837s |  0.00% |  0.05% )   ( 0.008928s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001413s |  0.00% |  0.00% )   ( 0.001427s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.430551s |  2.22% |  4.44% )   ( 0.001652s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000307s |  0.00% |  0.00% )   ( 0.000343s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000296s |  0.00% |  0.00% )   ( 0.000331s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
25.3.0:         ( 0.049059s |  0.00% |  0.00% )   ( 0.049218s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000209s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.007418s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(1x)	└─ └─  wait
9.0.1:          ( 547.824474s | 49.93% )            ( 499.086662s | 50.04% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001267s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 547.823207s | 49.93% | 99.99% )   ( 499.085602s | 50.04% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042360s |  0.00% |  0.00% )   ( 0.042259s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001171s |  0.00% |  0.00% )   ( 0.001044s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008223s |  0.00% |  0.00% )   ( 0.008223s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.008223s |  0.00% |100.00% )   ( 0.008223s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001117s |  0.00% |  0.00% )   ( 0.001191s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026420s |  0.00% |  0.00% )   ( 0.000962s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 547.737056s | 49.92% | 99.98% )   ( 499.027021s | 50.03% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001897s |  0.00% |  0.00% )   ( 0.002239s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001897s |  0.00% |100.00% )   ( 0.002239s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000200s |  0.00% |  0.00% )   ( 0.009060s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000555s |  0.00% |  0.00% )   ( 0.000333s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000114s |  0.00% |100.00% )   ( 0.000129s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000859s |  0.00% |  0.00% )   ( 0.000993s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.91% )   ( 0.000079s |  0.00% |  7.95% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000068s |  0.00% |  7.91% )   ( 0.000079s |  0.00% |  7.95% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.91% )   ( 0.000080s |  0.00% |  8.05% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.91% )   ( 0.000079s |  0.00% |  7.95% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.79% )   ( 0.000078s |  0.00% |  7.85% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000071s |  0.00% |  8.26% )   ( 0.000083s |  0.00% |  8.35% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000070s |  0.00% |  8.14% )   ( 0.000079s |  0.00% |  7.95% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000115s |  0.00% | 13.38% )   ( 0.000127s |  0.00% | 12.78% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000065s |  0.00% |  7.56% )   ( 0.000077s |  0.00% |  7.75% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000063s |  0.00% |  7.33% )   ( 0.000074s |  0.00% |  7.45% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000066s |  0.00% |  7.68% )   ( 0.000077s |  0.00% |  7.75% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000070s |  0.00% |  8.14% )   ( 0.000081s |  0.00% |  8.15% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000864s |  0.00% |  0.00% )   ( 0.000672s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002368s |  0.00% |  0.00% )   ( 0.002449s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000296s |  0.00% | 12.50% )   ( 0.000317s |  0.00% | 12.94% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002072s |  0.00% | 87.50% )   ( 0.002132s |  0.00% | 87.05% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003127s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000576s |  0.00% |  0.00% )   ( 0.000423s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000089s |  0.00% |100.00% )   ( 0.000103s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001307s |  0.00% |  0.00% )   ( 0.001386s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000551s |  0.00% |  0.00% )   ( 0.000560s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.136015s |  0.01% |  0.02% )   ( 0.135786s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000121s |  0.00% |  0.08% )   ( 0.000135s |  0.00% |  0.09% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.022704s |  0.00% | 16.69% )   ( 0.022653s |  0.00% | 16.68% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023536s |  0.00% | 17.30% )   ( 0.023480s |  0.00% | 17.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023573s |  0.00% | 17.33% )   ( 0.023527s |  0.00% | 17.32% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023452s |  0.00% | 17.24% )   ( 0.023401s |  0.00% | 17.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023788s |  0.00% | 17.48% )   ( 0.023738s |  0.00% | 17.48% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000067s |  0.00% |  0.04% )   ( 0.000079s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018543s |  0.00% | 13.63% )   ( 0.018510s |  0.00% | 13.63% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000099s |  0.00% |  0.07% )   ( 0.000108s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000077s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000395s |  0.00% |  0.00% )   ( 0.000424s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.167820s |  0.37% |  0.76% )   ( 1.825534s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
.4.0:           ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─
508.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │   export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023500s |  0.00% |  0.56% )   ( 0.023395s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023700s |  0.00% |  0.56% )   ( 0.023562s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023556s |  0.00% |  0.56% )   ( 0.023460s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023595s |  0.00% |  0.56% )   ( 0.023465s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023671s |  0.00% |  0.56% )   ( 0.023583s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090719s |  0.00% |  0.00% )   ( 0.103605s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.635190s |  0.24% |  0.09% )   ( 0.121493s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000952s |  0.00% |  0.00% )   ( 0.001071s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.088451s |  0.00% |  0.00% )   ( 0.101366s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.088203s |  0.00% |  0.00% )   ( 0.101100s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.087957s |  0.00% |  0.00% )   ( 0.100706s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090358s |  0.00% |  0.00% )   ( 0.103105s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090476s |  0.00% |  0.00% )   ( 0.103292s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086689s |  0.00% |  0.00% )   ( 0.099483s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086701s |  0.00% |  0.00% )   ( 0.099474s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.086490s |  0.00% |  0.00% )   ( 0.099306s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000655s |  0.00% |  0.01% )   ( 0.000496s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002635s |  0.00% |  0.06% )   ( 0.003009s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002635s |  0.00% |100.00% )   ( 0.003009s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086102s |  0.00% |  0.00% )   ( 0.098838s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085969s |  0.00% |  0.00% )   ( 0.098813s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.084927s |  0.00% |  0.00% )   ( 0.097494s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.091655s |  0.00% |  0.00% )   ( 0.104807s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087827s |  0.00% |  0.00% )   ( 0.100588s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087120s |  0.00% |  0.00% )   ( 0.099834s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002907s |  0.00% |  0.00% )   ( 0.003322s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002853s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.066637s |  0.00% |  0.07% )   ( 0.043589s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003102s |  0.00% |  0.00% )   ( 0.003513s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003012s |  0.00% |  0.00% )   ( 0.003431s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003137s |  0.00% |  0.00% )   ( 0.003543s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.006844s |  0.00% |  0.16% )   ( 0.006946s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  ${nSpawnFlag}
598.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000111s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.002027s |  0.00% |  0.00% )   ( 0.001256s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005446s |  0.00% |  0.00% )   ( 0.006230s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000447s |  0.00% |  8.20% )   ( 0.000499s |  0.00% |  8.00% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000282s |  0.00% |  5.17% )   ( 0.000323s |  0.00% |  5.18% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000081s |  0.00% |  1.48% )   ( 0.000092s |  0.00% |  1.47% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000218s |  0.00% |  4.00% )   ( 0.000230s |  0.00% |  3.69% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000084s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000078s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.17% )   ( 0.000075s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000081s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000081s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000070s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.31% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.33% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000072s |  0.00% |  1.32% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000083s |  0.00% |  1.52% )   ( 0.000094s |  0.00% |  1.50% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.31% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000078s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000096s |  0.00% |  1.76% )   ( 0.000107s |  0.00% |  1.71% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000075s |  0.00% |  1.37% )   ( 0.000086s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.34% )   ( 0.000085s |  0.00% |  1.36% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000080s |  0.00% |  1.46% )   ( 0.000091s |  0.00% |  1.46% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000105s |  0.00% |  1.92% )   ( 0.000114s |  0.00% |  1.82% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000077s |  0.00% |  1.41% )   ( 0.000089s |  0.00% |  1.42% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.41% )   ( 0.000089s |  0.00% |  1.42% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000064s |  0.00% |  1.17% )   ( 0.000075s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000068s |  0.00% |  1.24% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000068s |  0.00% |  1.24% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000079s |  0.00% |  1.45% )   ( 0.000090s |  0.00% |  1.44% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000094s |  0.00% |  1.72% )   ( 0.000105s |  0.00% |  1.68% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000089s |  0.00% |  1.63% )   ( 0.000100s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000088s |  0.00% |  1.61% )   ( 0.000099s |  0.00% |  1.58% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.50% )   ( 0.000093s |  0.00% |  1.49% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000077s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000063s |  0.00% |  1.15% )   ( 0.000074s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.33% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000090s |  0.00% |  1.65% )   ( 0.000102s |  0.00% |  1.63% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.17% )   ( 0.000075s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.17% )   ( 0.000074s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000066s |  0.00% |  1.21% )   ( 0.000075s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000082s |  0.00% |  1.50% )   ( 0.000092s |  0.00% |  1.47% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000071s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.31% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000067s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.17% )   ( 0.000074s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000088s |  0.00% |  1.61% )   ( 0.000098s |  0.00% |  1.57% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000068s |  0.00% |  1.24% )   ( 0.000080s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000069s |  0.00% |  1.26% )   ( 0.000081s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000068s |  0.00% |  1.24% )   ( 0.000080s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000087s |  0.00% |  1.59% )   ( 0.000099s |  0.00% |  1.58% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000291s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000293s |  0.00% |  0.00% )   ( 0.000333s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023891s |  0.00% |  0.00% )   ( 0.023841s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.024031s |  0.00% |  0.00% )   ( 0.023979s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023822s |  0.00% |  0.00% )   ( 0.170118s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023729s |  0.00% |  0.00% )   ( 0.023677s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003013s |  0.00% |  0.00% )   ( 0.003440s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002906s |  0.00% |  0.00% )   ( 0.003321s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 17.345828s |  1.58% |  3.16% )   ( 16.569565s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000587s |  0.00% |  0.00% )   ( 0.000599s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 17.345156s |  1.58% | 99.99% )   ( 16.568866s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p0
30.5.0:         ( 0.023248s |  0.00% |  0.13% )   ( 0.023208s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023631s |  0.00% |  0.13% )   ( 0.023577s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.023679s |  0.00% |  0.13% )   ( 0.023645s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024013s |  0.00% |  0.13% )   ( 0.023964s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.023986s |  0.00% |  0.13% )   ( 0.023939s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004823s |  0.00% |  0.00% )   ( 0.005425s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004389s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005329s |  0.00% |  0.00% )   ( 0.005960s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p0
41.5.0:         ( 0.159957s |  0.01% |  0.03% )   ( 0.006093s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004971s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004648s |  0.00% |  0.00% )   ( 0.005260s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004337s |  0.00% |  0.00% )   ( 0.004921s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004564s |  0.00% |  0.00% )   ( 0.005169s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.040408s |  0.00% |  0.00% )   ( 0.035329s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.006661s |  0.00% |  0.00% )   ( 0.005229s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005282s |  0.00% |  0.00% )   ( 0.005893s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p0
54.5.0:         ( 0.004424s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003989s |  0.00% |  0.00% )   ( 0.004551s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.949629s |  1.54% |  3.36% )   ( 16.326061s |  1.63% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004114s |  0.00% |  0.02% )   ( 0.004681s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.117508s |  0.10% |  6.59% )   ( 1.081975s |  0.10% |  6.62% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.893573s |  0.17% | 11.17% )   ( 1.835573s |  0.18% | 11.24% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642812s |  0.14% |  9.69% )   ( 1.566906s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.862467s |  0.16% | 10.98% )   ( 1.829442s |  0.18% | 11.20% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.600417s |  0.14% |  9.44% )   ( 1.530701s |  0.15% |  9.37% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.007433s |  0.09% |  5.94% )   ( 0.992410s |  0.09% |  6.07% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575748s |  0.05% |  3.39% )   ( 0.550401s |  0.05% |  3.37% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080197s |  0.09% |  6.37% )   ( 1.052708s |  0.10% |  6.44% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.544118s |  0.04% |  3.21% )   ( 0.493153s |  0.04% |  3.02% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.460154s |  0.13% |  8.61% )   ( 1.385239s |  0.13% |  8.48% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.001969s |  0.27% | 17.71% )   ( 2.912015s |  0.29% | 17.83% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.587258s |  0.05% |  3.46% )   ( 0.553359s |  0.05% |  3.38% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.571861s |  0.05% |  3.37% )   ( 0.537498s |  0.05% |  3.29% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003891s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.pqysCP"/.quit
68.5.0:         ( 0.000228s |  0.00% |  0.00% )   ( 0.000248s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p* 1>&20
69.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009383s |  0.00% |  0.05% )   ( 0.009357s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002953s |  0.00% |  0.00% )   ( 0.003382s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 18.411956s |  1.67% |  3.36% )   ( 17.841146s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000574s |  0.00% |  0.00% )   ( 0.000593s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 18.411297s |  1.67% | 99.99% )   ( 17.840454s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000337s |  0.00% |  0.00% )   ( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000363s |  0.00% |  0.00% )   ( 0.000399s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p1
30.5.0:         ( 0.023521s |  0.00% |  0.12% )   ( 0.023481s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023661s |  0.00% |  0.12% )   ( 0.023624s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024043s |  0.00% |  0.13% )   ( 0.023992s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024025s |  0.00% |  0.13% )   ( 0.023983s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.023978s |  0.00% |  0.13% )   ( 0.023932s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002854s |  0.00% |  0.00% )   ( 0.003202s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002494s |  0.00% |  0.00% )   ( 0.002827s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003048s |  0.00% |  0.00% )   ( 0.003388s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p1
41.5.0:         ( 0.122060s |  0.01% |  0.03% )   ( 0.003876s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.002705s |  0.00% |  0.00% )   ( 0.003058s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002455s |  0.00% |  0.00% )   ( 0.002799s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002273s |  0.00% |  0.00% )   ( 0.002590s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002381s |  0.00% |  0.00% )   ( 0.002690s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.017904s |  0.00% |  0.00% )   ( 0.018176s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.005609s |  0.00% |  0.00% )   ( 0.002837s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.002729s |  0.00% |  0.00% )   ( 0.003050s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p1
54.5.0:         ( 0.002232s |  0.00% |  0.00% )   ( 0.002559s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002212s |  0.00% |  0.00% )   ( 0.002507s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.107016s |  1.65% |  5.78% )   ( 17.652529s |  1.77% |  5.82% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002369s |  0.00% |  0.01% )   ( 0.002687s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.169216s |  0.10% |  6.45% )   ( 1.144761s |  0.11% |  6.48% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.192427s |  0.19% | 12.10% )   ( 2.169224s |  0.21% | 12.28% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.713158s |  0.15% |  9.46% )   ( 1.665730s |  0.16% |  9.43% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.200065s |  0.20% | 12.15% )   ( 2.176364s |  0.21% | 12.32% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.715271s |  0.15% |  9.47% )   ( 1.656376s |  0.16% |  9.38% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.053718s |  0.09% |  5.81% )   ( 1.026725s |  0.10% |  5.81% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.439112s |  0.04% |  2.42% )   ( 0.399523s |  0.04% |  2.26% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.150322s |  0.10% |  6.35% )   ( 1.124804s |  0.11% |  6.37% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.355345s |  0.03% |  1.96% )   ( 0.325868s |  0.03% |  1.84% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.479145s |  0.13% |  8.16% )   ( 1.409404s |  0.14% |  7.98% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.837117s |  0.34% | 21.19% )   ( 3.807137s |  0.38% | 21.56% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.410850s |  0.03% |  2.26% )   ( 0.384444s |  0.03% |  2.17% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.388901s |  0.03% |  2.14% )   ( 0.359482s |  0.03% |  2.03% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002358s |  0.00% |  0.00% )   ( 0.002664s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002131s |  0.00% |  0.00% )   ( 0.002414s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002399s |  0.00% |  0.00% )   ( 0.002700s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005269s |  0.00% |  0.02% )   ( 0.005377s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 23.940353s |  2.18% |  4.37% )   ( 23.502643s |  2.35% |  4.70% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000575s |  0.00% |  0.00% )   ( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 23.939699s |  2.18% | 99.99% )   ( 23.501955s |  2.35% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p2
30.5.0:         ( 0.023513s |  0.00% |  0.09% )   ( 0.023475s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023914s |  0.00% |  0.09% )   ( 0.023875s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024020s |  0.00% |  0.10% )   ( 0.023975s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.023990s |  0.00% |  0.10% )   ( 0.023949s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024018s |  0.00% |  0.10% )   ( 0.023972s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001914s |  0.00% |  0.00% )   ( 0.002153s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   true
38.5.0:         ( 0.001752s |  0.00% |  0.00% )   ( 0.002003s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002296s |  0.00% |  0.00% )   ( 0.002562s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p2
41.5.0:         ( 0.059998s |  0.00% |  0.01% )   ( 0.002631s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.001901s |  0.00% |  0.00% )   ( 0.002154s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.001676s |  0.00% |  0.00% )   ( 0.001913s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.001657s |  0.00% |  0.00% )   ( 0.001899s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001918s |  0.00% |  0.00% )   ( 0.002163s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.017539s |  0.00% |  0.00% )   ( 0.014146s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.001876s |  0.00% |  0.00% )   ( 0.002119s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.002097s |  0.00% |  0.00% )   ( 0.002343s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p2
54.5.0:         ( 0.001793s |  0.00% |  0.00% )   ( 0.002053s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001696s |  0.00% |  0.00% )   ( 0.001907s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 23.711289s |  2.16% |  7.61% )   ( 23.330904s |  2.33% |  7.63% )    	(13x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001705s |  0.00% |  0.00% )   ( 0.001949s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.722443s |  0.15% |  7.26% )   ( 1.683379s |  0.16% |  7.21% )    	(13x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 3.003090s |  0.27% | 12.66% )   ( 2.981252s |  0.29% | 12.77% )    	(13x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.188242s |  0.19% |  9.22% )   ( 2.169280s |  0.21% |  9.29% )    	(13x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 3.001748s |  0.27% | 12.65% )   ( 2.985823s |  0.29% | 12.79% )    	(13x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.124353s |  0.19% |  8.95% )   ( 2.114511s |  0.21% |  9.06% )    	(13x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.444629s |  0.13% |  6.09% )   ( 1.437575s |  0.14% |  6.16% )    	(13x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.414351s |  0.03% |  1.74% )   ( 0.404631s |  0.04% |  1.73% )    	(13x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.663245s |  0.15% |  7.01% )   ( 1.598990s |  0.16% |  6.85% )    	(13x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.355446s |  0.03% |  1.49% )   ( 0.325989s |  0.03% |  1.39% )    	(13x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.893218s |  0.17% |  7.98% )   ( 1.787336s |  0.17% |  7.66% )    	(13x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 5.187761s |  0.47% | 21.87% )   ( 5.157111s |  0.51% | 22.10% )    	(13x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.389269s |  0.03% |  1.64% )   ( 0.366307s |  0.03% |  1.57% )    	(13x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.321789s |  0.02% |  1.35% )   ( 0.316771s |  0.03% |  1.35% )    	(13x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.001688s |  0.00% |  0.00% )   ( 0.001925s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001560s |  0.00% |  0.00% )   ( 0.001774s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001621s |  0.00% |  0.00% )   ( 0.001828s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004818s |  0.00% |  0.02% )   ( 0.004894s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 20.090851s |  1.83% |  3.66% )   ( 19.005941s |  1.90% |  3.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000597s |  0.00% |  0.00% )   ( 0.000616s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 20.090172s |  1.83% | 99.99% )   ( 19.005229s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000337s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p3
30.5.0:         ( 0.023719s |  0.00% |  0.11% )   ( 0.023680s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024050s |  0.00% |  0.11% )   ( 0.024007s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024004s |  0.00% |  0.11% )   ( 0.023958s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024016s |  0.00% |  0.11% )   ( 0.023969s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.023888s |  0.00% |  0.11% )   ( 0.023841s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008070s |  0.00% |  0.00% )   ( 0.005627s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p3
41.5.0:         ( 0.134843s |  0.01% |  0.02% )   ( 0.006017s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004365s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035203s |  0.00% |  0.00% )   ( 0.032815s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.005808s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004697s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p3
54.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004567s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.730430s |  1.79% |  3.63% )   ( 18.773724s |  1.88% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003859s |  0.00% |  0.01% )   ( 0.004412s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.433748s |  0.13% |  7.26% )   ( 1.369304s |  0.13% |  7.29% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.249113s |  0.20% | 11.39% )   ( 2.153230s |  0.21% | 11.46% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.776005s |  0.16% |  9.00% )   ( 1.740648s |  0.17% |  9.27% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.225945s |  0.20% | 11.28% )   ( 2.127244s |  0.21% | 11.33% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.759403s |  0.16% |  8.91% )   ( 1.706787s |  0.17% |  9.09% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.257085s |  0.11% |  6.37% )   ( 1.197009s |  0.12% |  6.37% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.648488s |  0.05% |  3.28% )   ( 0.569902s |  0.05% |  3.03% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.336177s |  0.12% |  6.77% )   ( 1.243370s |  0.12% |  6.62% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.572777s |  0.05% |  2.90% )   ( 0.505257s |  0.05% |  2.69% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.680105s |  0.15% |  8.51% )   ( 1.546806s |  0.15% |  8.23% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.588542s |  0.32% | 18.18% )   ( 3.498598s |  0.35% | 18.63% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.598479s |  0.05% |  3.03% )   ( 0.571219s |  0.05% |  3.04% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.600704s |  0.05% |  3.04% )   ( 0.539938s |  0.05% |  2.87% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004096s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004886s |  0.00% |  0.02% )   ( 0.004961s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 20.964465s |  1.91% |  3.82% )   ( 20.345126s |  2.04% |  4.07% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000615s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 20.963788s |  1.91% | 99.99% )   ( 20.344415s |  2.04% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p4
30.5.0:         ( 0.023932s |  0.00% |  0.11% )   ( 0.023889s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024020s |  0.00% |  0.11% )   ( 0.023975s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.023998s |  0.00% |  0.11% )   ( 0.023951s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.023982s |  0.00% |  0.11% )   ( 0.023938s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024021s |  0.00% |  0.11% )   ( 0.023974s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002855s |  0.00% |  0.00% )   ( 0.003244s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003798s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p4
41.5.0:         ( 0.216284s |  0.01% |  0.05% )   ( 0.004949s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003226s |  0.00% |  0.00% )   ( 0.003623s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002836s |  0.00% |  0.00% )   ( 0.003203s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002632s |  0.00% |  0.00% )   ( 0.002989s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002763s |  0.00% |  0.00% )   ( 0.003107s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.022704s |  0.00% |  0.00% )   ( 0.023008s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003076s |  0.00% |  0.00% )   ( 0.003445s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003364s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p4
54.5.0:         ( 0.002717s |  0.00% |  0.00% )   ( 0.003100s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002680s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.558006s |  1.87% |  5.16% )   ( 20.144542s |  2.01% |  5.21% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002687s |  0.00% |  0.01% )   ( 0.003049s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.446096s |  0.13% |  7.03% )   ( 1.425486s |  0.14% |  7.07% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.822022s |  0.25% | 13.72% )   ( 2.739495s |  0.27% | 13.59% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.126774s |  0.19% | 10.34% )   ( 2.090068s |  0.20% | 10.37% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.797636s |  0.25% | 13.60% )   ( 2.761828s |  0.27% | 13.71% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.099638s |  0.19% | 10.21% )   ( 2.065150s |  0.20% | 10.25% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.334292s |  0.12% |  6.49% )   ( 1.280122s |  0.12% |  6.35% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486667s |  0.04% |  2.36% )   ( 0.476451s |  0.04% |  2.36% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.259417s |  0.11% |  6.12% )   ( 1.242641s |  0.12% |  6.16% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.431735s |  0.03% |  2.10% )   ( 0.390245s |  0.03% |  1.93% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410297s |  0.12% |  6.86% )   ( 1.402324s |  0.14% |  6.96% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.469317s |  0.31% | 16.87% )   ( 3.420294s |  0.34% | 16.97% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.444979s |  0.04% |  2.16% )   ( 0.439085s |  0.04% |  2.17% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.426449s |  0.03% |  2.07% )   ( 0.408304s |  0.04% |  2.02% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002710s |  0.00% |  0.00% )   ( 0.003049s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002585s |  0.00% |  0.00% )   ( 0.002945s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002899s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004988s |  0.00% |  0.02% )   ( 0.005056s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 18.686540s |  1.70% |  3.41% )   ( 17.950753s |  1.80% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000622s |  0.00% |  0.00% )   ( 0.000637s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 18.685835s |  1.70% | 99.99% )   ( 17.950019s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000334s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p5
30.5.0:         ( 0.023957s |  0.00% |  0.12% )   ( 0.023914s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024036s |  0.00% |  0.12% )   ( 0.023995s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024014s |  0.00% |  0.12% )   ( 0.023969s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024016s |  0.00% |  0.12% )   ( 0.023970s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024003s |  0.00% |  0.12% )   ( 0.023954s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003100s |  0.00% |  0.00% )   ( 0.003518s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p5
41.5.0:         ( 0.170713s |  0.01% |  0.04% )   ( 0.004860s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003066s |  0.00% |  0.00% )   ( 0.003452s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002886s |  0.00% |  0.00% )   ( 0.003284s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002767s |  0.00% |  0.00% )   ( 0.003169s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002954s |  0.00% |  0.00% )   ( 0.003347s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.024042s |  0.00% |  0.00% )   ( 0.024361s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003555s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p5
54.5.0:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002867s |  0.00% |  0.00% )   ( 0.003261s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.320841s |  1.67% |  4.90% )   ( 17.745292s |  1.77% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002934s |  0.00% |  0.01% )   ( 0.003348s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.159751s |  0.10% |  6.33% )   ( 1.123405s |  0.11% |  6.33% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.252738s |  0.20% | 12.29% )   ( 2.193477s |  0.21% | 12.36% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.717496s |  0.15% |  9.37% )   ( 1.668875s |  0.16% |  9.40% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.151869s |  0.19% | 11.74% )   ( 2.101800s |  0.21% | 11.84% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.748607s |  0.15% |  9.54% )   ( 1.662552s |  0.16% |  9.36% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.125773s |  0.10% |  6.14% )   ( 1.059106s |  0.10% |  5.96% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.519209s |  0.04% |  2.83% )   ( 0.463685s |  0.04% |  2.61% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.145972s |  0.10% |  6.25% )   ( 1.136490s |  0.11% |  6.40% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.398324s |  0.03% |  2.17% )   ( 0.397565s |  0.03% |  2.24% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.499839s |  0.13% |  8.18% )   ( 1.447330s |  0.14% |  8.15% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.681647s |  0.33% | 20.09% )   ( 3.618279s |  0.36% | 20.39% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.469087s |  0.04% |  2.56% )   ( 0.451898s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.447595s |  0.04% |  2.44% )   ( 0.417482s |  0.04% |  2.35% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002972s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002800s |  0.00% |  0.00% )   ( 0.003151s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003356s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005112s |  0.00% |  0.02% )   ( 0.005183s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.423112s |  1.58% |  3.18% )   ( 16.368416s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000628s |  0.00% |  0.00% )   ( 0.000643s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.422400s |  1.58% | 99.99% )   ( 16.367675s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p6
30.5.0:         ( 0.023945s |  0.00% |  0.13% )   ( 0.023900s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024028s |  0.00% |  0.13% )   ( 0.023986s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.023989s |  0.00% |  0.13% )   ( 0.023942s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024011s |  0.00% |  0.13% )   ( 0.023963s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.023975s |  0.00% |  0.13% )   ( 0.023928s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005016s |  0.00% |  0.00% )   ( 0.005617s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004533s |  0.00% |  0.00% )   ( 0.005134s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005569s |  0.00% |  0.00% )   ( 0.006169s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p6
41.5.0:         ( 0.173836s |  0.01% |  0.03% )   ( 0.006517s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004784s |  0.00% |  0.00% )   ( 0.005379s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.005054s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.005114s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035086s |  0.00% |  0.00% )   ( 0.035546s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.010935s |  0.00% |  0.00% )   ( 0.005416s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005419s |  0.00% |  0.00% )   ( 0.006061s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p6
54.5.0:         ( 0.004477s |  0.00% |  0.00% )   ( 0.005118s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.014804s |  1.55% |  3.25% )   ( 16.124700s |  1.61% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004372s |  0.00% |  0.02% )   ( 0.004971s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123012s |  0.10% |  6.60% )   ( 1.075231s |  0.10% |  6.66% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.873228s |  0.17% | 11.00% )   ( 1.794696s |  0.17% | 11.13% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.631585s |  0.14% |  9.58% )   ( 1.567146s |  0.15% |  9.71% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.864851s |  0.16% | 10.96% )   ( 1.766432s |  0.17% | 10.95% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.562524s |  0.14% |  9.18% )   ( 1.491857s |  0.14% |  9.25% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.043565s |  0.09% |  6.13% )   ( 1.000967s |  0.10% |  6.20% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.583088s |  0.05% |  3.42% )   ( 0.580684s |  0.05% |  3.60% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.182746s |  0.10% |  6.95% )   ( 1.012993s |  0.10% |  6.28% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.563567s |  0.05% |  3.31% )   ( 0.520577s |  0.05% |  3.22% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.476115s |  0.13% |  8.67% )   ( 1.392452s |  0.13% |  8.63% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.838039s |  0.25% | 16.67% )   ( 2.758285s |  0.27% | 17.10% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.643901s |  0.05% |  3.78% )   ( 0.587756s |  0.05% |  3.64% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.624211s |  0.05% |  3.66% )   ( 0.570653s |  0.05% |  3.53% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004573s |  0.00% |  0.00% )   ( 0.005166s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004895s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004631s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005973s |  0.00% |  0.03% )   ( 0.006065s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.979824s |  1.63% |  3.28% )   ( 17.290321s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000618s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.979115s |  1.63% | 99.99% )   ( 17.289582s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p7
30.5.0:         ( 0.023937s |  0.00% |  0.13% )   ( 0.023894s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024025s |  0.00% |  0.13% )   ( 0.023982s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024053s |  0.00% |  0.13% )   ( 0.024005s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.023889s |  0.00% |  0.13% )   ( 0.023849s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024011s |  0.00% |  0.13% )   ( 0.023962s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004112s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004290s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004532s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p7
41.5.0:         ( 0.124549s |  0.01% |  0.02% )   ( 0.005109s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003697s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003586s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003390s |  0.00% |  0.00% )   ( 0.003864s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035393s |  0.00% |  0.00% )   ( 0.029076s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004308s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p7
54.5.0:         ( 0.003443s |  0.00% |  0.00% )   ( 0.003913s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.640616s |  1.60% |  4.08% )   ( 17.070054s |  1.71% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003439s |  0.00% |  0.01% )   ( 0.003829s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.190261s |  0.10% |  6.74% )   ( 1.119997s |  0.11% |  6.56% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.143862s |  0.19% | 12.15% )   ( 2.018165s |  0.20% | 11.82% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.732634s |  0.15% |  9.82% )   ( 1.642398s |  0.16% |  9.62% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.019144s |  0.18% | 11.44% )   ( 2.000761s |  0.20% | 11.72% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.653216s |  0.15% |  9.37% )   ( 1.607110s |  0.16% |  9.41% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.056256s |  0.09% |  5.98% )   ( 1.029662s |  0.10% |  6.03% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.515686s |  0.04% |  2.92% )   ( 0.509850s |  0.05% |  2.98% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.150280s |  0.10% |  6.52% )   ( 1.105091s |  0.11% |  6.47% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.490361s |  0.04% |  2.77% )   ( 0.452554s |  0.04% |  2.65% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.463990s |  0.13% |  8.29% )   ( 1.425757s |  0.14% |  8.35% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.212315s |  0.29% | 18.20% )   ( 3.185208s |  0.31% | 18.65% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.502598s |  0.04% |  2.84% )   ( 0.490933s |  0.04% |  2.87% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.506574s |  0.04% |  2.87% )   ( 0.478739s |  0.04% |  2.80% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003714s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003363s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003728s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004933s |  0.00% |  0.02% )   ( 0.005016s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 20.104291s |  1.83% |  3.67% )   ( 19.343334s |  1.93% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000623s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 20.103582s |  1.83% | 99.99% )   ( 19.342593s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p8
30.5.0:         ( 0.024672s |  0.00% |  0.12% )   ( 0.024624s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024062s |  0.00% |  0.11% )   ( 0.024017s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024053s |  0.00% |  0.11% )   ( 0.024006s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024093s |  0.00% |  0.11% )   ( 0.024030s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024013s |  0.00% |  0.11% )   ( 0.023967s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004947s |  0.00% |  0.00% )   ( 0.005554s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005606s |  0.00% |  0.00% )   ( 0.006233s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p8
41.5.0:         ( 0.112967s |  0.01% |  0.01% )   ( 0.006169s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004681s |  0.00% |  0.00% )   ( 0.005298s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004520s |  0.00% |  0.00% )   ( 0.005130s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004262s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004557s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.036089s |  0.00% |  0.00% )   ( 0.036564s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004636s |  0.00% |  0.00% )   ( 0.005209s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005346s |  0.00% |  0.00% )   ( 0.005980s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p8
54.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004430s |  0.00% |  0.00% )   ( 0.005018s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.759245s |  1.80% |  3.27% )   ( 19.099302s |  1.91% |  3.29% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007527s |  0.00% |  0.03% )   ( 0.005121s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.425582s |  0.12% |  7.21% )   ( 1.383907s |  0.13% |  7.24% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.251133s |  0.20% | 11.39% )   ( 2.197693s |  0.22% | 11.50% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.824526s |  0.16% |  9.23% )   ( 1.780339s |  0.17% |  9.32% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.156656s |  0.19% | 10.91% )   ( 2.114805s |  0.21% | 11.07% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.793490s |  0.16% |  9.07% )   ( 1.724117s |  0.17% |  9.02% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.253657s |  0.11% |  6.34% )   ( 1.217062s |  0.12% |  6.37% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.641328s |  0.05% |  3.24% )   ( 0.607093s |  0.06% |  3.17% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.324301s |  0.12% |  6.70% )   ( 1.250729s |  0.12% |  6.54% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.581833s |  0.05% |  2.94% )   ( 0.547570s |  0.05% |  2.86% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.670766s |  0.15% |  8.45% )   ( 1.591537s |  0.15% |  8.33% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.583027s |  0.32% | 18.13% )   ( 3.481879s |  0.34% | 18.23% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.630355s |  0.05% |  3.19% )   ( 0.614209s |  0.06% |  3.21% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.615064s |  0.05% |  3.11% )   ( 0.583241s |  0.05% |  3.05% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005182s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007695s |  0.00% |  0.00% )   ( 0.005269s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005096s |  0.00% |  0.02% )   ( 0.005177s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.251847s |  1.57% |  3.14% )   ( 16.284476s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000630s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.251130s |  1.57% | 99.99% )   ( 16.283728s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000313s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p9
30.5.0:         ( 0.023910s |  0.00% |  0.13% )   ( 0.023864s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024069s |  0.00% |  0.13% )   ( 0.024021s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024160s |  0.00% |  0.14% )   ( 0.024106s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024058s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.023822s |  0.00% |  0.13% )   ( 0.023769s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005158s |  0.00% |  0.00% )   ( 0.005798s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004592s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005350s |  0.00% |  0.00% )   ( 0.005937s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p9
41.5.0:         ( 0.345214s |  0.03% |  0.06% )   ( 0.007257s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004898s |  0.00% |  0.00% )   ( 0.005511s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004495s |  0.00% |  0.00% )   ( 0.005053s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004711s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004352s |  0.00% |  0.00% )   ( 0.004889s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.037517s |  0.00% |  0.00% )   ( 0.034994s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005035s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005299s |  0.00% |  0.00% )   ( 0.005892s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p9
54.5.0:         ( 0.004290s |  0.00% |  0.00% )   ( 0.004878s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007195s |  0.00% |  0.00% )   ( 0.004763s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.670748s |  1.51% |  3.22% )   ( 16.038668s |  1.60% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004298s |  0.00% |  0.02% )   ( 0.004898s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.085667s |  0.09% |  6.51% )   ( 1.060092s |  0.10% |  6.60% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.772610s |  0.16% | 10.63% )   ( 1.752632s |  0.17% | 10.92% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.594130s |  0.14% |  9.56% )   ( 1.527397s |  0.15% |  9.52% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.832046s |  0.16% | 10.98% )   ( 1.755950s |  0.17% | 10.94% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.538476s |  0.14% |  9.22% )   ( 1.477990s |  0.14% |  9.21% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.043964s |  0.09% |  6.26% )   ( 0.996913s |  0.09% |  6.21% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.602737s |  0.05% |  3.61% )   ( 0.584221s |  0.05% |  3.64% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.146884s |  0.10% |  6.87% )   ( 1.025642s |  0.10% |  6.39% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.550260s |  0.05% |  3.30% )   ( 0.515742s |  0.05% |  3.21% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389785s |  0.12% |  8.33% )   ( 1.355819s |  0.13% |  8.45% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.876022s |  0.26% | 17.25% )   ( 2.835469s |  0.28% | 17.67% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.635784s |  0.05% |  3.81% )   ( 0.577947s |  0.05% |  3.60% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.598085s |  0.05% |  3.58% )   ( 0.567956s |  0.05% |  3.54% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005086s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008982s |  0.00% |  0.05% )   ( 0.009072s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.632035s |  1.60% |  3.21% )   ( 16.714659s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000622s |  0.00% |  0.00% )   ( 0.000641s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.631323s |  1.60% | 99.99% )   ( 16.713914s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p10
30.5.0:         ( 0.024353s |  0.00% |  0.13% )   ( 0.024257s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.024399s |  0.00% |  0.13% )   ( 0.024352s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024249s |  0.00% |  0.13% )   ( 0.024197s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024213s |  0.00% |  0.13% )   ( 0.024165s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024161s |  0.00% |  0.13% )   ( 0.024111s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004387s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004109s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004962s |  0.00% |  0.00% )   ( 0.005492s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p10
41.5.0:         ( 0.380790s |  0.03% |  0.07% )   ( 0.006838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.005046s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003832s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035633s |  0.00% |  0.00% )   ( 0.032988s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004034s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004659s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p10
54.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003722s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.026002s |  1.55% |  3.71% )   ( 16.478007s |  1.65% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003677s |  0.00% |  0.02% )   ( 0.004181s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.173114s |  0.10% |  6.89% )   ( 1.102900s |  0.11% |  6.69% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.909298s |  0.17% | 11.21% )   ( 1.892260s |  0.18% | 11.48% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.596800s |  0.14% |  9.37% )   ( 1.559014s |  0.15% |  9.46% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.943909s |  0.17% | 11.41% )   ( 1.871054s |  0.18% | 11.35% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.571905s |  0.14% |  9.23% )   ( 1.528901s |  0.15% |  9.27% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016460s |  0.09% |  5.97% )   ( 0.981595s |  0.09% |  5.95% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.530811s |  0.04% |  3.11% )   ( 0.520738s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080899s |  0.09% |  6.34% )   ( 1.045743s |  0.10% |  6.34% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.495448s |  0.04% |  2.90% )   ( 0.461877s |  0.04% |  2.80% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412623s |  0.12% |  8.29% )   ( 1.387117s |  0.13% |  8.41% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.145594s |  0.28% | 18.47% )   ( 3.081893s |  0.30% | 18.70% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.544843s |  0.04% |  3.20% )   ( 0.525332s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.600621s |  0.05% |  3.52% )   ( 0.515402s |  0.05% |  3.12% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004230s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008667s |  0.00% |  0.04% )   ( 0.008751s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.776033s |  1.62% |  3.24% )   ( 16.866249s |  1.69% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000639s |  0.00% |  0.00% )   ( 0.000655s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.775307s |  1.62% | 99.99% )   ( 16.865493s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p11
30.5.0:         ( 0.024287s |  0.00% |  0.13% )   ( 0.024172s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.023959s |  0.00% |  0.13% )   ( 0.023914s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024098s |  0.00% |  0.13% )   ( 0.024041s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024114s |  0.00% |  0.13% )   ( 0.024070s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.024096s |  0.00% |  0.13% )   ( 0.024049s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004328s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000114s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005061s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p11
41.5.0:         ( 0.286700s |  0.02% |  0.06% )   ( 0.005989s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.028938s |  0.00% |  0.00% )   ( 0.029318s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003942s |  0.00% |  0.00% )   ( 0.004425s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p11
54.5.0:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.275322s |  1.57% |  3.88% )   ( 16.639217s |  1.66% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003332s |  0.00% |  0.01% )   ( 0.003821s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.099849s |  0.10% |  6.36% )   ( 1.083337s |  0.10% |  6.51% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.969165s |  0.17% | 11.39% )   ( 1.913867s |  0.19% | 11.50% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.622925s |  0.14% |  9.39% )   ( 1.583724s |  0.15% |  9.51% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.995245s |  0.18% | 11.54% )   ( 1.918130s |  0.19% | 11.52% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.629136s |  0.14% |  9.43% )   ( 1.565173s |  0.15% |  9.40% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.053825s |  0.09% |  6.10% )   ( 0.997380s |  0.10% |  5.99% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.552700s |  0.05% |  3.19% )   ( 0.517386s |  0.05% |  3.10% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.078587s |  0.09% |  6.24% )   ( 1.052144s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.472262s |  0.04% |  2.73% )   ( 0.444995s |  0.04% |  2.67% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445491s |  0.13% |  8.36% )   ( 1.392525s |  0.13% |  8.36% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.223585s |  0.29% | 18.66% )   ( 3.154791s |  0.31% | 18.95% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.568169s |  0.05% |  3.28% )   ( 0.517691s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561051s |  0.05% |  3.24% )   ( 0.494253s |  0.04% |  2.97% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003554s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003766s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008530s |  0.00% |  0.04% )   ( 0.008616s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 17.560980s |  1.60% |  3.20% )   ( 16.588781s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000782s |  0.00% |  0.00% )   ( 0.000813s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 17.560026s |  1.60% | 99.99% )   ( 16.587771s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p12
30.5.0:         ( 0.046062s |  0.00% |  0.26% )   ( 0.045908s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046186s |  0.00% |  0.26% )   ( 0.046027s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.046174s |  0.00% |  0.26% )   ( 0.046022s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.046151s |  0.00% |  0.26% )   ( 0.045996s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.046083s |  0.00% |  0.26% )   ( 0.045915s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004722s |  0.00% |  0.00% )   ( 0.005304s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004422s |  0.00% |  0.00% )   ( 0.004949s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005458s |  0.00% |  0.00% )   ( 0.006045s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p12
41.5.0:         ( 0.136961s |  0.01% |  0.02% )   ( 0.006057s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004389s |  0.00% |  0.00% )   ( 0.004950s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004436s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004432s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.037928s |  0.00% |  0.00% )   ( 0.035410s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005034s |  0.00% |  0.00% )   ( 0.005589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p12
54.5.0:         ( 0.005766s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004457s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.081487s |  1.55% |  3.60% )   ( 16.240193s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004032s |  0.00% |  0.02% )   ( 0.004572s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123199s |  0.10% |  6.57% )   ( 1.094244s |  0.10% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.006486s |  0.18% | 11.74% )   ( 1.850923s |  0.18% | 11.39% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.603896s |  0.14% |  9.38% )   ( 1.556750s |  0.15% |  9.58% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.913511s |  0.17% | 11.20% )   ( 1.842184s |  0.18% | 11.34% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.619421s |  0.14% |  9.48% )   ( 1.522945s |  0.15% |  9.37% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.036785s |  0.09% |  6.06% )   ( 0.996914s |  0.09% |  6.13% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577465s |  0.05% |  3.38% )   ( 0.544684s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.084950s |  0.09% |  6.35% )   ( 1.040399s |  0.10% |  6.40% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.532641s |  0.04% |  3.11% )   ( 0.483523s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.450448s |  0.13% |  8.49% )   ( 1.375585s |  0.13% |  8.47% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.930588s |  0.26% | 17.15% )   ( 2.865362s |  0.28% | 17.64% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.613095s |  0.05% |  3.58% )   ( 0.537673s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.584970s |  0.05% |  3.42% )   ( 0.524435s |  0.05% |  3.22% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004199s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003835s |  0.00% |  0.00% )   ( 0.004356s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007347s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005354s |  0.00% |  0.03% )   ( 0.005461s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.437445s |  1.68% |  3.36% )   ( 17.855609s |  1.79% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000953s |  0.00% |  0.00% )   ( 0.000975s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.436348s |  1.68% | 99.99% )   ( 17.854468s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p13
30.5.0:         ( 0.047560s |  0.00% |  0.25% )   ( 0.047404s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.030950s |  0.00% |  0.16% )   ( 0.030849s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.027754s |  0.00% |  0.15% )   ( 0.027677s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.030035s |  0.00% |  0.16% )   ( 0.029951s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.029242s |  0.00% |  0.15% )   ( 0.029150s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002819s |  0.00% |  0.00% )   ( 0.003137s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002538s |  0.00% |  0.00% )   ( 0.002874s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003429s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p13
41.5.0:         ( 0.098645s |  0.00% |  0.03% )   ( 0.003603s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.002536s |  0.00% |  0.00% )   ( 0.002856s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002240s |  0.00% |  0.00% )   ( 0.002544s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002215s |  0.00% |  0.00% )   ( 0.002506s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002353s |  0.00% |  0.00% )   ( 0.002644s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.016551s |  0.00% |  0.00% )   ( 0.016797s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.002572s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.002626s |  0.00% |  0.00% )   ( 0.002928s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p13
54.5.0:         ( 0.002166s |  0.00% |  0.00% )   ( 0.002468s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002075s |  0.00% |  0.00% )   ( 0.002348s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.109512s |  1.65% |  6.54% )   ( 17.620588s |  1.76% |  6.57% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002280s |  0.00% |  0.01% )   ( 0.002597s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.191298s |  0.10% |  6.57% )   ( 1.142313s |  0.11% |  6.48% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.271052s |  0.20% | 12.54% )   ( 2.193690s |  0.21% | 12.44% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.733444s |  0.15% |  9.57% )   ( 1.693926s |  0.16% |  9.61% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.239971s |  0.20% | 12.36% )   ( 2.178054s |  0.21% | 12.36% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.685251s |  0.15% |  9.30% )   ( 1.647288s |  0.16% |  9.34% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.099415s |  0.10% |  6.07% )   ( 1.059296s |  0.10% |  6.01% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.415557s |  0.03% |  2.29% )   ( 0.389091s |  0.03% |  2.20% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.160641s |  0.10% |  6.40% )   ( 1.132273s |  0.11% |  6.42% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.343803s |  0.03% |  1.89% )   ( 0.319131s |  0.03% |  1.81% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.423201s |  0.12% |  7.85% )   ( 1.401883s |  0.14% |  7.95% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.796691s |  0.34% | 20.96% )   ( 3.755718s |  0.37% | 21.31% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.374351s |  0.03% |  2.06% )   ( 0.362469s |  0.03% |  2.05% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.372557s |  0.03% |  2.05% )   ( 0.342859s |  0.03% |  1.94% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002440s |  0.00% |  0.00% )   ( 0.002775s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002041s |  0.00% |  0.00% )   ( 0.002316s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002413s |  0.00% |  0.00% )   ( 0.002686s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008995s |  0.00% |  0.04% )   ( 0.009070s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 19.129914s |  1.74% |  3.49% )   ( 18.339357s |  1.83% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000995s |  0.00% |  0.00% )   ( 0.001018s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.128772s |  1.74% | 99.99% )   ( 18.338169s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p14
30.5.0:         ( 0.043675s |  0.00% |  0.22% )   ( 0.043545s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.040312s |  0.00% |  0.21% )   ( 0.040188s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.024269s |  0.00% |  0.12% )   ( 0.024206s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.024133s |  0.00% |  0.12% )   ( 0.024082s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.030149s |  0.00% |  0.15% )   ( 0.030063s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004466s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p14
41.5.0:         ( 0.178049s |  0.01% |  0.03% )   ( 0.005578s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004169s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003683s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.032897s |  0.00% |  0.00% )   ( 0.030300s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p14
54.5.0:         ( 0.003382s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003299s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.696278s |  1.70% |  4.07% )   ( 18.074358s |  1.81% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003491s |  0.00% |  0.01% )   ( 0.003976s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.261218s |  0.11% |  6.74% )   ( 1.236188s |  0.12% |  6.83% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.358810s |  0.21% | 12.61% )   ( 2.261072s |  0.22% | 12.50% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.882123s |  0.17% | 10.06% )   ( 1.809875s |  0.18% | 10.01% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.289368s |  0.20% | 12.24% )   ( 2.236471s |  0.22% | 12.37% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.730184s |  0.15% |  9.25% )   ( 1.651103s |  0.16% |  9.13% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.112532s |  0.10% |  5.95% )   ( 1.097816s |  0.11% |  6.07% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512260s |  0.04% |  2.73% )   ( 0.510769s |  0.05% |  2.82% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.205551s |  0.10% |  6.44% )   ( 1.128796s |  0.11% |  6.24% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483573s |  0.04% |  2.58% )   ( 0.444555s |  0.04% |  2.45% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.448511s |  0.13% |  7.74% )   ( 1.410948s |  0.14% |  7.80% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.366849s |  0.30% | 18.00% )   ( 3.289976s |  0.32% | 18.20% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.510949s |  0.04% |  2.73% )   ( 0.501009s |  0.05% |  2.77% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530859s |  0.04% |  2.83% )   ( 0.491804s |  0.04% |  2.72% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003605s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003178s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004167s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005137s |  0.00% |  0.02% )   ( 0.005208s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 18.049810s |  1.64% |  3.29% )   ( 17.416631s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000958s |  0.00% |  0.00% )   ( 0.000371s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 18.048696s |  1.64% | 99.99% )   ( 17.416087s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p15
30.5.0:         ( 0.027038s |  0.00% |  0.14% )   ( 0.026954s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.032072s |  0.00% |  0.17% )   ( 0.031968s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.029399s |  0.00% |  0.16% )   ( 0.029306s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.029255s |  0.00% |  0.16% )   ( 0.029160s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.031681s |  0.00% |  0.17% )   ( 0.031579s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003281s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002863s |  0.00% |  0.00% )   ( 0.003256s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003543s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p15
41.5.0:         ( 0.140997s |  0.01% |  0.03% )   ( 0.004383s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003598s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002912s |  0.00% |  0.00% )   ( 0.003291s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002647s |  0.00% |  0.00% )   ( 0.003032s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002795s |  0.00% |  0.00% )   ( 0.003165s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.022849s |  0.00% |  0.00% )   ( 0.023135s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.002858s |  0.00% |  0.00% )   ( 0.003241s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p15
54.5.0:         ( 0.002693s |  0.00% |  0.00% )   ( 0.003065s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002545s |  0.00% |  0.00% )   ( 0.002908s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.684800s |  1.61% |  5.15% )   ( 17.183395s |  1.72% |  5.19% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002747s |  0.00% |  0.01% )   ( 0.003128s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138981s |  0.10% |  6.44% )   ( 1.131436s |  0.11% |  6.58% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.138811s |  0.19% | 12.09% )   ( 2.119643s |  0.21% | 12.33% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.695621s |  0.15% |  9.58% )   ( 1.658545s |  0.16% |  9.65% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.121997s |  0.19% | 11.99% )   ( 2.076249s |  0.20% | 12.08% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.665315s |  0.15% |  9.41% )   ( 1.599936s |  0.16% |  9.31% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.055871s |  0.09% |  5.97% )   ( 0.997668s |  0.10% |  5.80% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.466537s |  0.04% |  2.63% )   ( 0.437998s |  0.04% |  2.54% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.115009s |  0.10% |  6.30% )   ( 1.087629s |  0.10% |  6.32% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.399304s |  0.03% |  2.25% )   ( 0.371610s |  0.03% |  2.16% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.452911s |  0.13% |  8.21% )   ( 1.383084s |  0.13% |  8.04% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.574948s |  0.32% | 20.21% )   ( 3.491948s |  0.35% | 20.32% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.440545s |  0.04% |  2.49% )   ( 0.427640s |  0.04% |  2.48% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.416203s |  0.03% |  2.35% )   ( 0.396881s |  0.03% |  2.30% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002720s |  0.00% |  0.00% )   ( 0.003096s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002533s |  0.00% |  0.00% )   ( 0.002893s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002870s |  0.00% |  0.00% )   ( 0.003236s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008747s |  0.00% |  0.04% )   ( 0.008840s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.401283s |  1.58% |  3.17% )   ( 16.652497s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001027s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.400129s |  1.58% | 99.99% )   ( 16.651298s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p16
30.5.0:         ( 0.044282s |  0.00% |  0.25% )   ( 0.044137s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.038806s |  0.00% |  0.22% )   ( 0.038693s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.045978s |  0.00% |  0.26% )   ( 0.045800s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.045844s |  0.00% |  0.26% )   ( 0.045701s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.045580s |  0.00% |  0.26% )   ( 0.045434s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003860s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004679s |  0.00% |  0.00% )   ( 0.005203s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p16
41.5.0:         ( 0.125193s |  0.01% |  0.02% )   ( 0.005534s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004505s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004358s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.029647s |  0.00% |  0.00% )   ( 0.030055s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003992s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004464s |  0.00% |  0.00% )   ( 0.004958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p16
54.5.0:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003388s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.958868s |  1.54% |  4.06% )   ( 16.323259s |  1.63% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003603s |  0.00% |  0.02% )   ( 0.004105s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.106106s |  0.10% |  6.52% )   ( 1.090992s |  0.10% |  6.68% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.026583s |  0.18% | 11.94% )   ( 1.919891s |  0.19% | 11.76% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629021s |  0.14% |  9.60% )   ( 1.573370s |  0.15% |  9.63% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.978653s |  0.18% | 11.66% )   ( 1.911724s |  0.19% | 11.71% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.560506s |  0.14% |  9.20% )   ( 1.524434s |  0.15% |  9.33% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.021080s |  0.09% |  6.02% )   ( 0.976818s |  0.09% |  5.98% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.530525s |  0.04% |  3.12% )   ( 0.487940s |  0.04% |  2.98% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.061055s |  0.09% |  6.25% )   ( 1.023947s |  0.10% |  6.27% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.512582s |  0.04% |  3.02% )   ( 0.439083s |  0.04% |  2.68% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.390710s |  0.12% |  8.20% )   ( 1.355323s |  0.13% |  8.30% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.139556s |  0.28% | 18.51% )   ( 3.059777s |  0.30% | 18.74% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.501547s |  0.04% |  2.95% )   ( 0.485554s |  0.04% |  2.97% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497341s |  0.04% |  2.93% )   ( 0.470301s |  0.04% |  2.88% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004278s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.pqysCP"/.quit
68.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p* 1>&20
69.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009088s |  0.00% |  0.05% )   ( 0.009170s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 20.385612s |  1.85% |  3.72% )   ( 19.574872s |  1.96% |  3.92% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001054s |  0.00% |  0.00% )   ( 0.001077s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 20.384408s |  1.85% | 99.99% )   ( 19.573622s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p17
30.5.0:         ( 0.045686s |  0.00% |  0.22% )   ( 0.045534s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.032362s |  0.00% |  0.15% )   ( 0.032263s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.030424s |  0.00% |  0.14% )   ( 0.030343s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.045294s |  0.00% |  0.22% )   ( 0.045137s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.039404s |  0.00% |  0.19% )   ( 0.039270s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005247s |  0.00% |  0.00% )   ( 0.005841s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004637s |  0.00% |  0.00% )   ( 0.005236s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005487s |  0.00% |  0.00% )   ( 0.006105s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p17
41.5.0:         ( 0.228438s |  0.02% |  0.03% )   ( 0.006725s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004793s |  0.00% |  0.00% )   ( 0.005395s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004543s |  0.00% |  0.00% )   ( 0.005132s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004394s |  0.00% |  0.00% )   ( 0.004984s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005266s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.040138s |  0.00% |  0.00% )   ( 0.037612s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.007761s |  0.00% |  0.00% )   ( 0.005421s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005296s |  0.00% |  0.00% )   ( 0.005872s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p17
54.5.0:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004797s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.848242s |  1.80% |  3.24% )   ( 19.256811s |  1.93% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004393s |  0.00% |  0.02% )   ( 0.004998s |  0.00% |  0.02% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.494326s |  0.13% |  7.52% )   ( 1.410539s |  0.14% |  7.32% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.240431s |  0.20% | 11.28% )   ( 2.189382s |  0.21% | 11.36% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.825307s |  0.16% |  9.19% )   ( 1.806654s |  0.18% |  9.38% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.216563s |  0.20% | 11.16% )   ( 2.148263s |  0.21% | 11.15% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.825027s |  0.16% |  9.19% )   ( 1.755388s |  0.17% |  9.11% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.291863s |  0.11% |  6.50% )   ( 1.269213s |  0.12% |  6.59% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.654506s |  0.05% |  3.29% )   ( 0.611947s |  0.06% |  3.17% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.336148s |  0.12% |  6.73% )   ( 1.287299s |  0.12% |  6.68% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.560241s |  0.05% |  2.82% )   ( 0.542473s |  0.05% |  2.81% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.647786s |  0.15% |  8.30% )   ( 1.575919s |  0.15% |  8.18% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.489142s |  0.31% | 17.57% )   ( 3.453567s |  0.34% | 17.93% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.639283s |  0.05% |  3.22% )   ( 0.613183s |  0.06% |  3.18% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.623226s |  0.05% |  3.13% )   ( 0.587986s |  0.05% |  3.05% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004486s |  0.00% |  0.00% )   ( 0.005055s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004776s |  0.00% |  0.02% )   ( 0.004851s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.087147s |  1.64% |  3.30% )   ( 17.536829s |  1.75% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.085971s |  1.64% | 99.99% )   ( 17.535609s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p18
30.5.0:         ( 0.038257s |  0.00% |  0.21% )   ( 0.038137s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.039444s |  0.00% |  0.21% )   ( 0.039312s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.048332s |  0.00% |  0.26% )   ( 0.048175s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.043810s |  0.00% |  0.24% )   ( 0.043653s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.037350s |  0.00% |  0.20% )   ( 0.037214s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003072s |  0.00% |  0.00% )   ( 0.003427s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002831s |  0.00% |  0.00% )   ( 0.003208s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003219s |  0.00% |  0.00% )   ( 0.003604s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p18
41.5.0:         ( 0.133016s |  0.01% |  0.04% )   ( 0.004377s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003115s |  0.00% |  0.00% )   ( 0.003502s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002612s |  0.00% |  0.00% )   ( 0.002968s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002524s |  0.00% |  0.00% )   ( 0.002860s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002739s |  0.00% |  0.00% )   ( 0.003077s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.023121s |  0.00% |  0.00% )   ( 0.020399s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.002799s |  0.00% |  0.00% )   ( 0.003142s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003474s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p18
54.5.0:         ( 0.002457s |  0.00% |  0.00% )   ( 0.002791s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002392s |  0.00% |  0.00% )   ( 0.002724s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.673646s |  1.61% |  5.74% )   ( 17.250180s |  1.72% |  5.78% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002525s |  0.00% |  0.01% )   ( 0.002888s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.118364s |  0.10% |  6.32% )   ( 1.111567s |  0.11% |  6.44% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.132027s |  0.19% | 12.06% )   ( 2.096200s |  0.21% | 12.15% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.711951s |  0.15% |  9.68% )   ( 1.652772s |  0.16% |  9.58% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.151986s |  0.19% | 12.17% )   ( 2.116424s |  0.21% | 12.26% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.649350s |  0.15% |  9.33% )   ( 1.599971s |  0.16% |  9.27% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035810s |  0.09% |  5.86% )   ( 1.007784s |  0.10% |  5.84% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.424534s |  0.03% |  2.40% )   ( 0.407120s |  0.04% |  2.36% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.164434s |  0.10% |  6.58% )   ( 1.126258s |  0.11% |  6.52% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.366866s |  0.03% |  2.07% )   ( 0.342831s |  0.03% |  1.98% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.406003s |  0.12% |  7.95% )   ( 1.398688s |  0.14% |  8.10% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.691824s |  0.33% | 20.88% )   ( 3.614474s |  0.36% | 20.95% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.442805s |  0.04% |  2.50% )   ( 0.402830s |  0.04% |  2.33% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.375167s |  0.03% |  2.12% )   ( 0.370373s |  0.03% |  2.14% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002727s |  0.00% |  0.00% )   ( 0.003086s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002453s |  0.00% |  0.00% )   ( 0.002775s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002663s |  0.00% |  0.00% )   ( 0.002961s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008773s |  0.00% |  0.04% )   ( 0.008851s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.844334s |  1.62% |  3.25% )   ( 16.766980s |  1.68% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001008s |  0.00% |  0.00% )   ( 0.001032s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.843173s |  1.62% | 99.99% )   ( 16.765772s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p19
30.5.0:         ( 0.045784s |  0.00% |  0.25% )   ( 0.045635s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.045404s |  0.00% |  0.25% )   ( 0.045258s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.045494s |  0.00% |  0.25% )   ( 0.045346s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.026827s |  0.00% |  0.15% )   ( 0.026751s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.038096s |  0.00% |  0.21% )   ( 0.037969s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005180s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005115s |  0.00% |  0.00% )   ( 0.005707s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p19
41.5.0:         ( 0.220941s |  0.02% |  0.04% )   ( 0.007039s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.005006s |  0.00% |  0.00% )   ( 0.005585s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005178s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004170s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004543s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.037183s |  0.00% |  0.00% )   ( 0.034626s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005180s |  0.00% |  0.00% )   ( 0.005748s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p19
54.5.0:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.314328s |  1.57% |  3.46% )   ( 16.445910s |  1.64% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003968s |  0.00% |  0.02% )   ( 0.004528s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.183751s |  0.10% |  6.83% )   ( 1.127565s |  0.11% |  6.85% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.978258s |  0.18% | 11.42% )   ( 1.914523s |  0.19% | 11.64% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.661086s |  0.15% |  9.59% )   ( 1.601110s |  0.16% |  9.73% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.887780s |  0.17% | 10.90% )   ( 1.824335s |  0.18% | 11.09% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.582660s |  0.14% |  9.14% )   ( 1.504410s |  0.15% |  9.14% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.125081s |  0.10% |  6.49% )   ( 1.029629s |  0.10% |  6.26% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.666472s |  0.06% |  3.84% )   ( 0.555218s |  0.05% |  3.37% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140089s |  0.10% |  6.58% )   ( 1.067740s |  0.10% |  6.49% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.580526s |  0.05% |  3.35% )   ( 0.499031s |  0.05% |  3.03% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379609s |  0.12% |  7.96% )   ( 1.352683s |  0.13% |  8.22% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.004289s |  0.27% | 17.35% )   ( 2.876806s |  0.28% | 17.49% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.573064s |  0.05% |  3.30% )   ( 0.553130s |  0.05% |  3.36% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.547695s |  0.04% |  3.16% )   ( 0.535202s |  0.05% |  3.25% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004577s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004555s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005161s |  0.00% |  0.02% )   ( 0.005234s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 19.302600s |  1.75% |  3.52% )   ( 18.738481s |  1.87% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001065s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 19.301399s |  1.75% | 99.99% )   ( 18.737243s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p20
30.5.0:         ( 0.047746s |  0.00% |  0.24% )   ( 0.047569s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.035208s |  0.00% |  0.18% )   ( 0.035083s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.039361s |  0.00% |  0.20% )   ( 0.039220s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.041877s |  0.00% |  0.21% )   ( 0.041726s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.047765s |  0.00% |  0.24% )   ( 0.047578s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003009s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002741s |  0.00% |  0.00% )   ( 0.003091s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003320s |  0.00% |  0.00% )   ( 0.003699s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p20
41.5.0:         ( 0.146078s |  0.01% |  0.04% )   ( 0.004360s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003084s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.002748s |  0.00% |  0.00% )   ( 0.003104s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.002513s |  0.00% |  0.00% )   ( 0.002876s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002724s |  0.00% |  0.00% )   ( 0.003066s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.020647s |  0.00% |  0.00% )   ( 0.020929s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.005758s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003017s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p20
54.5.0:         ( 0.002515s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002406s |  0.00% |  0.00% )   ( 0.002741s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.870826s |  1.72% |  5.75% )   ( 18.446748s |  1.84% |  5.79% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002613s |  0.00% |  0.01% )   ( 0.002968s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.250586s |  0.11% |  6.62% )   ( 1.248910s |  0.12% |  6.77% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.451030s |  0.22% | 12.98% )   ( 2.394212s |  0.24% | 12.97% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.872332s |  0.17% |  9.92% )   ( 1.853000s |  0.18% | 10.04% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.444508s |  0.22% | 12.95% )   ( 2.412566s |  0.24% | 13.07% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.836616s |  0.16% |  9.73% )   ( 1.802387s |  0.18% |  9.77% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.106073s |  0.10% |  5.86% )   ( 1.101339s |  0.11% |  5.97% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.458012s |  0.04% |  2.42% )   ( 0.427473s |  0.04% |  2.31% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.282952s |  0.11% |  6.79% )   ( 1.222971s |  0.12% |  6.62% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.372182s |  0.03% |  1.97% )   ( 0.356397s |  0.03% |  1.93% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.599134s |  0.14% |  8.47% )   ( 1.560155s |  0.15% |  8.45% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.346660s |  0.30% | 17.73% )   ( 3.295484s |  0.33% | 17.86% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.452502s |  0.04% |  2.39% )   ( 0.397214s |  0.03% |  2.15% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.395626s |  0.03% |  2.09% )   ( 0.371672s |  0.03% |  2.01% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002613s |  0.00% |  0.00% )   ( 0.002963s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002331s |  0.00% |  0.00% )   ( 0.002642s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002538s |  0.00% |  0.00% )   ( 0.002835s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008977s |  0.00% |  0.04% )   ( 0.009057s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.569410s |  1.60% |  3.20% )   ( 16.787610s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.568211s |  1.60% | 99.99% )   ( 16.786371s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p21
30.5.0:         ( 0.046319s |  0.00% |  0.26% )   ( 0.046046s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.045950s |  0.00% |  0.26% )   ( 0.045774s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.044590s |  0.00% |  0.25% )   ( 0.044433s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.048141s |  0.00% |  0.27% )   ( 0.047956s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.048566s |  0.00% |  0.27% )   ( 0.048403s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004869s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004573s |  0.00% |  0.00% )   ( 0.005086s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p21
41.5.0:         ( 0.171132s |  0.01% |  0.04% )   ( 0.005718s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003625s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003864s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003532s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.028040s |  0.00% |  0.00% )   ( 0.028419s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004091s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p21
54.5.0:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003285s |  0.00% |  0.00% )   ( 0.003732s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.071895s |  1.55% |  4.22% )   ( 16.450069s |  1.64% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003315s |  0.00% |  0.01% )   ( 0.003771s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201512s |  0.10% |  7.03% )   ( 1.102695s |  0.11% |  6.70% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.040436s |  0.18% | 11.95% )   ( 1.937334s |  0.19% | 11.77% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642377s |  0.14% |  9.62% )   ( 1.567147s |  0.15% |  9.52% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.957719s |  0.17% | 11.46% )   ( 1.918765s |  0.19% | 11.66% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.579924s |  0.14% |  9.25% )   ( 1.522012s |  0.15% |  9.25% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982235s |  0.08% |  5.75% )   ( 0.965382s |  0.09% |  5.86% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.485430s |  0.04% |  2.84% )   ( 0.475805s |  0.04% |  2.89% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.060100s |  0.09% |  6.20% )   ( 1.015450s |  0.10% |  6.17% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445319s |  0.04% |  2.60% )   ( 0.415815s |  0.04% |  2.52% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.391721s |  0.12% |  8.15% )   ( 1.375324s |  0.13% |  8.36% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.249848s |  0.29% | 19.03% )   ( 3.202548s |  0.32% | 19.46% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.517305s |  0.04% |  3.03% )   ( 0.481231s |  0.04% |  2.92% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.514654s |  0.04% |  3.01% )   ( 0.466790s |  0.04% |  2.83% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003599s |  0.00% |  0.00% )   ( 0.004060s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003207s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003488s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009148s |  0.00% |  0.05% )   ( 0.009220s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.220653s |  1.56% |  3.14% )   ( 16.438183s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000921s |  0.00% |  0.00% )   ( 0.000946s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.219553s |  1.56% | 99.99% )   ( 16.437027s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p22
30.5.0:         ( 0.046122s |  0.00% |  0.26% )   ( 0.045959s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046393s |  0.00% |  0.26% )   ( 0.046188s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.045995s |  0.00% |  0.26% )   ( 0.045820s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.046717s |  0.00% |  0.27% )   ( 0.046541s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.051604s |  0.00% |  0.29% )   ( 0.051399s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004364s |  0.00% |  0.00% )   ( 0.004891s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.007089s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005164s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p22
41.5.0:         ( 0.127083s |  0.01% |  0.02% )   ( 0.005180s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004123s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003568s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004284s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.029556s |  0.00% |  0.00% )   ( 0.029972s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003832s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p22
54.5.0:         ( 0.003510s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003500s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.758100s |  1.52% |  4.05% )   ( 16.093863s |  1.61% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003534s |  0.00% |  0.02% )   ( 0.004035s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.098322s |  0.10% |  6.55% )   ( 1.052884s |  0.10% |  6.54% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.886160s |  0.17% | 11.25% )   ( 1.858893s |  0.18% | 11.55% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.561774s |  0.14% |  9.31% )   ( 1.538122s |  0.15% |  9.55% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.864949s |  0.16% | 11.12% )   ( 1.836237s |  0.18% | 11.40% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.565357s |  0.14% |  9.34% )   ( 1.500681s |  0.15% |  9.32% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.004335s |  0.09% |  5.99% )   ( 0.971927s |  0.09% |  6.03% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.520300s |  0.04% |  3.10% )   ( 0.500231s |  0.05% |  3.10% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.108542s |  0.10% |  6.61% )   ( 1.026121s |  0.10% |  6.37% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509967s |  0.04% |  3.04% )   ( 0.439176s |  0.04% |  2.72% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474813s |  0.13% |  8.80% )   ( 1.362058s |  0.13% |  8.46% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.093469s |  0.28% | 18.45% )   ( 3.030496s |  0.30% | 18.83% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.532975s |  0.04% |  3.18% )   ( 0.498706s |  0.05% |  3.09% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533603s |  0.04% |  3.18% )   ( 0.474296s |  0.04% |  2.94% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003602s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003705s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009388s |  0.00% |  0.05% )   ( 0.009471s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.001640s |  1.54% |  3.10% )   ( 16.255723s |  1.63% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001052s |  0.00% |  0.00% )   ( 0.001076s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.000439s |  1.54% | 99.99% )   ( 16.254476s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p23
30.5.0:         ( 0.043034s |  0.00% |  0.25% )   ( 0.042874s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046743s |  0.00% |  0.27% )   ( 0.046572s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.051388s |  0.00% |  0.30% )   ( 0.051210s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.047747s |  0.00% |  0.28% )   ( 0.047586s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.053974s |  0.00% |  0.31% )   ( 0.053790s |  0.00% |  0.33% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005171s |  0.00% |  0.00% )   ( 0.005770s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004558s |  0.00% |  0.00% )   ( 0.005135s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005481s |  0.00% |  0.00% )   ( 0.006096s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p23
41.5.0:         ( 0.187565s |  0.01% |  0.03% )   ( 0.006335s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004549s |  0.00% |  0.00% )   ( 0.005107s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004833s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004431s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004772s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.037974s |  0.00% |  0.00% )   ( 0.035427s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004493s |  0.00% |  0.00% )   ( 0.005067s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.005198s |  0.00% |  0.00% )   ( 0.005802s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p23
54.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004740s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.458787s |  1.50% |  3.45% )   ( 15.889319s |  1.59% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004099s |  0.00% |  0.02% )   ( 0.004680s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.067563s |  0.09% |  6.48% )   ( 1.050717s |  0.10% |  6.61% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.835202s |  0.16% | 11.15% )   ( 1.758313s |  0.17% | 11.06% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.592155s |  0.14% |  9.67% )   ( 1.532215s |  0.15% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.781050s |  0.16% | 10.82% )   ( 1.775538s |  0.17% | 11.17% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.550051s |  0.14% |  9.41% )   ( 1.474113s |  0.14% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.994847s |  0.09% |  6.04% )   ( 0.958492s |  0.09% |  6.03% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.600107s |  0.05% |  3.64% )   ( 0.550046s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.071131s |  0.09% |  6.50% )   ( 1.002688s |  0.10% |  6.31% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.516017s |  0.04% |  3.13% )   ( 0.486253s |  0.04% |  3.06% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.386258s |  0.12% |  8.42% )   ( 1.341978s |  0.13% |  8.44% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.919186s |  0.26% | 17.73% )   ( 2.871318s |  0.28% | 18.07% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.579634s |  0.05% |  3.52% )   ( 0.552822s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561487s |  0.05% |  3.41% )   ( 0.530146s |  0.05% |  3.33% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004457s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004456s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004388s |  0.00% |  0.00% )   ( 0.004929s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008829s |  0.00% |  0.05% )   ( 0.008910s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 19.828396s |  1.80% |  3.62% )   ( 19.255158s |  1.93% |  3.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001034s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 19.827207s |  1.80% | 99.99% )   ( 19.253928s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000114s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p24
30.5.0:         ( 0.039265s |  0.00% |  0.19% )   ( 0.039116s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.046535s |  0.00% |  0.23% )   ( 0.046330s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.051263s |  0.00% |  0.25% )   ( 0.051047s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.052544s |  0.00% |  0.26% )   ( 0.052320s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.050334s |  0.00% |  0.25% )   ( 0.050148s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003073s |  0.00% |  0.00% )   ( 0.003486s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004042s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p24
41.5.0:         ( 0.185074s |  0.01% |  0.04% )   ( 0.004915s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003152s |  0.00% |  0.00% )   ( 0.003572s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003058s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003650s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.024465s |  0.00% |  0.00% )   ( 0.024819s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.003030s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p24
54.5.0:         ( 0.002948s |  0.00% |  0.00% )   ( 0.003342s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002951s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.325705s |  1.76% |  4.87% )   ( 18.927259s |  1.89% |  4.91% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003014s |  0.00% |  0.01% )   ( 0.003412s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.364062s |  0.12% |  7.05% )   ( 1.350147s |  0.13% |  7.13% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.549852s |  0.23% | 13.19% )   ( 2.529367s |  0.25% | 13.36% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.032830s |  0.18% | 10.51% )   ( 1.959546s |  0.19% | 10.35% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.564362s |  0.23% | 13.26% )   ( 2.515209s |  0.25% | 13.28% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.928999s |  0.17% |  9.98% )   ( 1.913722s |  0.19% | 10.11% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.241538s |  0.11% |  6.42% )   ( 1.186870s |  0.11% |  6.27% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.545469s |  0.04% |  2.82% )   ( 0.481883s |  0.04% |  2.54% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.281061s |  0.11% |  6.62% )   ( 1.258457s |  0.12% |  6.64% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.408275s |  0.03% |  2.11% )   ( 0.392954s |  0.03% |  2.07% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337453s |  0.12% |  6.92% )   ( 1.323296s |  0.13% |  6.99% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.163453s |  0.28% | 16.36% )   ( 3.147282s |  0.31% | 16.62% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.469150s |  0.04% |  2.42% )   ( 0.449308s |  0.04% |  2.37% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.436187s |  0.03% |  2.25% )   ( 0.415806s |  0.04% |  2.19% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002887s |  0.00% |  0.00% )   ( 0.003274s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002872s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003164s |  0.00% |  0.00% )   ( 0.003570s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006166s |  0.00% |  0.03% )   ( 0.006231s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.547131s |  1.59% |  3.20% )   ( 16.579476s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001032s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.545942s |  1.59% | 99.99% )   ( 16.578241s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p25
30.5.0:         ( 0.043903s |  0.00% |  0.25% )   ( 0.043711s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.045676s |  0.00% |  0.26% )   ( 0.045485s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.045646s |  0.00% |  0.26% )   ( 0.045494s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.045669s |  0.00% |  0.26% )   ( 0.045471s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.045565s |  0.00% |  0.25% )   ( 0.045416s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005018s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005059s |  0.00% |  0.00% )   ( 0.005615s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p25
41.5.0:         ( 0.244390s |  0.02% |  0.04% )   ( 0.006508s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004199s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004112s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.035328s |  0.00% |  0.00% )   ( 0.032776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.004420s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004926s |  0.00% |  0.00% )   ( 0.005477s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p25
54.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.972811s |  1.54% |  3.58% )   ( 16.238667s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004053s |  0.00% |  0.02% )   ( 0.004598s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.102913s |  0.10% |  6.49% )   ( 1.092280s |  0.10% |  6.72% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.894521s |  0.17% | 11.16% )   ( 1.854290s |  0.18% | 11.41% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.699737s |  0.15% | 10.01% )   ( 1.589406s |  0.15% |  9.78% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.851059s |  0.16% | 10.90% )   ( 1.836156s |  0.18% | 11.30% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.533502s |  0.13% |  9.03% )   ( 1.496415s |  0.15% |  9.21% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.090610s |  0.09% |  6.42% )   ( 0.993468s |  0.09% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.594679s |  0.05% |  3.50% )   ( 0.534815s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106751s |  0.10% |  6.52% )   ( 1.033955s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513245s |  0.04% |  3.02% )   ( 0.478421s |  0.04% |  2.94% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.406717s |  0.12% |  8.28% )   ( 1.345762s |  0.13% |  8.28% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.021955s |  0.27% | 17.80% )   ( 2.913099s |  0.29% | 17.93% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.587303s |  0.05% |  3.46% )   ( 0.540854s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.565766s |  0.05% |  3.33% )   ( 0.525148s |  0.05% |  3.23% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003652s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004568s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006514s |  0.00% |  0.03% )   ( 0.006566s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.127500s |  1.56% |  3.12% )   ( 16.202666s |  1.62% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001058s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.126285s |  1.56% | 99.99% )   ( 16.201392s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p26
30.5.0:         ( 0.045597s |  0.00% |  0.26% )   ( 0.045387s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.045641s |  0.00% |  0.26% )   ( 0.045453s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.045611s |  0.00% |  0.26% )   ( 0.045404s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.045603s |  0.00% |  0.26% )   ( 0.045452s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.046050s |  0.00% |  0.26% )   ( 0.045834s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004747s |  0.00% |  0.00% )   ( 0.005284s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p26
41.5.0:         ( 0.260952s |  0.02% |  0.05% )   ( 0.006348s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.003691s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.030256s |  0.00% |  0.00% )   ( 0.030703s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.007332s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p26
54.5.0:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004189s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004186s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.537659s |  1.50% |  3.86% )   ( 15.863837s |  1.59% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003823s |  0.00% |  0.02% )   ( 0.004392s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.154451s |  0.10% |  6.98% )   ( 1.066506s |  0.10% |  6.72% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.910263s |  0.17% | 11.55% )   ( 1.826647s |  0.18% | 11.51% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.606087s |  0.14% |  9.71% )   ( 1.530206s |  0.15% |  9.64% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.902158s |  0.17% | 11.50% )   ( 1.801628s |  0.18% | 11.35% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.527534s |  0.13% |  9.23% )   ( 1.482892s |  0.14% |  9.34% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.031461s |  0.09% |  6.23% )   ( 0.953973s |  0.09% |  6.01% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.553736s |  0.05% |  3.34% )   ( 0.509535s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.033876s |  0.09% |  6.25% )   ( 1.013368s |  0.10% |  6.38% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483979s |  0.04% |  2.92% )   ( 0.449365s |  0.04% |  2.83% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.345119s |  0.12% |  8.13% )   ( 1.330373s |  0.13% |  8.38% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.965835s |  0.27% | 17.93% )   ( 2.908074s |  0.29% | 18.33% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.505704s |  0.04% |  3.05% )   ( 0.500672s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.513633s |  0.04% |  3.10% )   ( 0.486206s |  0.04% |  3.06% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003376s |  0.00% |  0.00% )   ( 0.003832s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003671s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008882s |  0.00% |  0.05% )   ( 0.008967s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 18.801552s |  1.71% |  3.43% )   ( 17.652445s |  1.77% |  3.53% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001114s |  0.00% |  0.00% )   ( 0.001138s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 18.800274s |  1.71% | 99.99% )   ( 17.651125s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pqysCP"
26.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p27
30.5.0:         ( 0.069481s |  0.00% |  0.36% )   ( 0.052802s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pqysCP"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pqysCP"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&20\' EXIT
32.5.0:         ( 0.051085s |  0.00% |  0.27% )   ( 0.050896s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3359628 ${BASHPID}' INT
33.5.0:         ( 0.049742s |  0.00% |  0.26% )   ( 0.049520s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3359628 ${BASHPID}' TERM
34.5.0:         ( 0.052029s |  0.00% |  0.27% )   ( 0.051822s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3359628 ${BASHPID}' HUP
35.5.0:         ( 0.049507s |  0.00% |  0.26% )   ( 0.049331s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004842s |  0.00% |  0.00% )   ( 0.005431s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pqysCP"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005452s |  0.00% |  0.00% )   ( 0.006084s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p27
41.5.0:         ( 0.293171s |  0.02% |  0.05% )   ( 0.006925s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 20 _
42.5.0:         ( 0.004638s |  0.00% |  0.00% )   ( 0.005233s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.quit ]]
46.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005116s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pqysCP"/.done ]]
46.5.1:         ( 0.004228s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004470s |  0.00% |  0.00% )   ( 0.005044s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 24
49.5.0:         ( 0.034793s |  0.00% |  0.00% )   ( 0.035232s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 26 -t -d '' A
52.5.0:         ( 0.005900s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&20
53.5.0:         ( 0.004985s |  0.00% |  0.00% )   ( 0.005567s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pqysCP"/.wait/p27
54.5.0:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004064s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.129733s |  1.65% |  3.44% )   ( 17.276992s |  1.73% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004241s |  0.00% |  0.02% )   ( 0.004819s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.255461s |  0.11% |  6.92% )   ( 1.230028s |  0.12% |  7.11% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.183331s |  0.19% | 12.04% )   ( 2.079887s |  0.20% | 12.03% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.716581s |  0.15% |  9.46% )   ( 1.617124s |  0.16% |  9.35% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.059729s |  0.18% | 11.36% )   ( 1.908775s |  0.19% | 11.04% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.612699s |  0.14% |  8.89% )   ( 1.561487s |  0.15% |  9.03% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.137649s |  0.10% |  6.27% )   ( 1.087558s |  0.10% |  6.29% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.613408s |  0.05% |  3.38% )   ( 0.579521s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.157830s |  0.10% |  6.38% )   ( 1.119088s |  0.11% |  6.47% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553479s |  0.05% |  3.05% )   ( 0.496811s |  0.04% |  2.87% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.461200s |  0.13% |  8.05% )   ( 1.422270s |  0.14% |  8.23% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.152307s |  0.28% | 17.38% )   ( 3.070538s |  0.30% | 17.77% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.625274s |  0.05% |  3.44% )   ( 0.559718s |  0.05% |  3.23% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596544s |  0.05% |  3.29% )   ( 0.539368s |  0.05% |  3.12% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004403s |  0.00% |  0.00% )   ( 0.004984s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003900s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004215s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&20
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005244s |  0.00% |  0.02% )   ( 0.005313s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  break
245.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000168s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001392s |  0.00% |  0.00% )   ( 0.001407s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.349537s |  2.21% |  4.44% )   ( 0.001683s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000293s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000288s |  0.00% |  0.00% )   ( 0.000329s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
25.3.0:         ( 0.046335s |  0.00% |  0.00% )   ( 0.046597s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000091s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.004710s |  0.00% |  0.00% )   ( 0.002389s |  0.00% |  0.00% )    	(1x)	└─ └─  wait

WALL CLOCK TIME: 51.090641s
TOTAL RUN TIME:  1097.053967s
TOTAL CPU TIME:  997.263137s

