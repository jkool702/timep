LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

10.0.0:         ( 2083.635678s |100.00% )            ( 7915.694776s |100.00% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001300s |  0.00% |  0.00% )   ( 0.001090s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 2083.634378s | 99.99% | 99.99% )   ( 7915.693686s | 99.99% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042195s |  0.00% |  0.00% )   ( 0.042104s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001221s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
231.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002786s |  0.00% |  0.00% )   ( 0.002843s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026429s |  0.00% |  0.00% )   ( 0.000465s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 2083.553848s | 99.99% | 99.99% )   ( 3957.820626s | 49.99% | 49.99% )    	(1x)	│  │   << (BACKGROUND FORK) >>
235.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000933s |  0.00% |  0.00% )   ( 0.001071s |  0.00% |  0.00% )    	(3x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.000933s |  0.00% |100.00% )   ( 0.001071s |  0.00% |100.00% )    	(3x)	│  │  │  └─  :
1084.3.1:       ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
1084.3.3:       ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
1084.3.5:       ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
238.3.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000206s |  0.00% |  0.00% )   ( 0.028352s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003206s |  0.00% |  0.00% )   ( 0.003260s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.001780s |  0.00% |  0.00% )   ( 0.002070s |  0.00% |  0.00% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000144s |  0.00% |  8.08% )   ( 0.000168s |  0.00% |  8.11% )    	(2x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000144s |  0.00% |  8.08% )   ( 0.000168s |  0.00% |  8.11% )    	(2x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000136s |  0.00% |  7.64% )   ( 0.000160s |  0.00% |  7.72% )    	(2x)	│  │  │  │   local vOut
26.4.0:         ( 0.000142s |  0.00% |  7.97% )   ( 0.000168s |  0.00% |  8.11% )    	(2x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000136s |  0.00% |  7.64% )   ( 0.000160s |  0.00% |  7.72% )    	(2x)	│  │  │  │   shift 1
28.4.0:         ( 0.000140s |  0.00% |  7.86% )   ( 0.000164s |  0.00% |  7.92% )    	(2x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000136s |  0.00% |  7.64% )   ( 0.000160s |  0.00% |  7.72% )    	(2x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000234s |  0.00% | 13.14% )   ( 0.000260s |  0.00% | 12.56% )    	(2x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000136s |  0.00% |  7.64% )   ( 0.000160s |  0.00% |  7.72% )    	(2x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000140s |  0.00% |  7.86% )   ( 0.000164s |  0.00% |  7.92% )    	(2x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000146s |  0.00% |  8.20% )   ( 0.000168s |  0.00% |  8.11% )    	(2x)	│  │  │  │   continue
42.4.0:         ( 0.000146s |  0.00% |  8.20% )   ( 0.000170s |  0.00% |  8.21% )    	(2x)	│  │  │  └─  local +n vOut
335.3.0:        ( 0.008116s |  0.00% |  0.00% )   ( 0.008208s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
336.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000169s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000118s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003961s |  0.00% |  0.00% )   ( 0.005036s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003560s |  0.00% |  0.00% )   ( 0.003676s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000109s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
410.4.0:        ( 0.000109s |  0.00% |100.00% )   ( 0.000121s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
410.3.2:        ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
411.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001170s |  0.00% |  0.00% )   ( 0.001261s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000604s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.136310s |  0.00% |  0.00% )   ( 0.136044s |  0.00% |  0.00% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000104s |  0.00% |  0.07% )   ( 0.000116s |  0.00% |  0.08% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021289s |  0.00% | 15.61% )   ( 0.021216s |  0.00% | 15.59% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023897s |  0.00% | 17.53% )   ( 0.023833s |  0.00% | 17.51% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023971s |  0.00% | 17.58% )   ( 0.023918s |  0.00% | 17.58% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023809s |  0.00% | 17.46% )   ( 0.023763s |  0.00% | 17.46% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023892s |  0.00% | 17.52% )   ( 0.023834s |  0.00% | 17.51% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000088s |  0.00% |  0.06% )   ( 0.000096s |  0.00% |  0.07% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018993s |  0.00% | 13.93% )   ( 0.018964s |  0.00% | 13.93% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000103s |  0.00% |  0.07% )   ( 0.000116s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000079s |  0.00% |  0.05% )   ( 0.000091s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000085s |  0.00% |  0.06% )   ( 0.000097s |  0.00% |  0.07% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
473.3.1:        ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
495.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000448s |  0.00% |  0.00% )   ( 0.000479s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.849246s |  0.18% |  0.18% )   ( 1.867702s |  0.02% |  0.04% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023749s |  0.00% |  0.61% )   ( 0.023693s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.024815s |  0.00% |  0.64% )   ( 0.024744s |  0.00% |  1.32% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023748s |  0.00% |  0.61% )   ( 0.023685s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023839s |  0.00% |  0.61% )   ( 0.023784s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023881s |  0.00% |  0.62% )   ( 0.023828s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.091740s |  0.00% |  0.00% )   ( 0.104635s |  0.00% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.291090s |  0.10% |  0.08% )   ( 0.123458s |  0.00% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000710s |  0.00% |  0.00% )   ( 0.000804s |  0.00% |  0.01% )    	(4x)	│  │  │  │   continue
521.4.0:        ( 0.093304s |  0.00% |  0.00% )   ( 0.103564s |  0.00% |  0.00% )    	(668x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.090627s |  0.00% |  0.00% )   ( 0.102837s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089494s |  0.00% |  0.00% )   ( 0.102537s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092754s |  0.00% |  0.00% )   ( 0.105712s |  0.00% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.093058s |  0.00% |  0.00% )   ( 0.106083s |  0.00% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.088942s |  0.00% |  0.00% )   ( 0.102212s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.089363s |  0.00% |  0.00% )   ( 0.102536s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.088475s |  0.00% |  0.00% )   ( 0.101595s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.007024s |  0.00% |  0.18% )   ( 0.007264s |  0.00% |  0.38% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002702s |  0.00% |  0.07% )   ( 0.003081s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002702s |  0.00% |100.00% )   ( 0.003081s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088278s |  0.00% |  0.00% )   ( 0.101303s |  0.00% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.087049s |  0.00% |  0.00% )   ( 0.100123s |  0.00% |  0.00% )    	(668x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085954s |  0.00% |  0.00% )   ( 0.098444s |  0.00% |  0.00% )    	(647x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092580s |  0.00% |  0.00% )   ( 0.105885s |  0.00% |  0.00% )    	(668x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.089246s |  0.00% |  0.00% )   ( 0.102256s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.090004s |  0.00% |  0.00% )   ( 0.103284s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002915s |  0.00% |  0.00% )   ( 0.003331s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002922s |  0.00% |  0.00% )   ( 0.003330s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.052602s |  0.00% |  0.06% )   ( 0.043454s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003289s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003015s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003062s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000240s |  0.00% |  0.00% )   ( 0.000267s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.01% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.005537s |  0.00% |  0.14% )   ( 0.005631s |  0.00% |  0.30% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/pAuto
508.3.1:        ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>1
598.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.064669s |  0.00% |  0.00% )   ( 0.063197s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
981.3.0:        ( 0.000314s |  0.00% |  0.00% )   ( 0.000349s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.024319s |  0.00% |  0.00% )   ( 0.024267s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.024223s |  0.00% |  0.00% )   ( 0.024178s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.024466s |  0.00% |  0.00% )   ( 0.170541s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.024055s |  0.00% |  0.00% )   ( 0.023999s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003136s |  0.00% |  0.00% )   ( 0.003594s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.003068s |  0.00% |  0.00% )   ( 0.003512s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 81.102844s |  3.89% |  1.94% )   ( 154.740078s |  1.95% |  1.95% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.001294s |  0.00% |  0.00% )   ( 0.001322s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 81.101322s |  3.89% | 99.99% )   ( 77.369252s |  0.97% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p0
30.5.0:         ( 0.047582s |  0.00% |  0.05% )   ( 0.047488s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047616s |  0.00% |  0.05% )   ( 0.047506s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048364s |  0.00% |  0.05% )   ( 0.048272s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.048092s |  0.00% |  0.05% )   ( 0.048008s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.047930s |  0.00% |  0.05% )   ( 0.047840s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008384s |  0.00% |  0.00% )   ( 0.009472s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000404s |  0.00% |  0.00% )   ( 0.000470s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000410s |  0.00% |  0.00% )   ( 0.000472s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000400s |  0.00% |  0.00% )   ( 0.000462s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010242s |  0.00% |  0.00% )   ( 0.011410s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p0
41.5.0:         ( 0.292958s |  0.01% |  0.01% )   ( 0.012444s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008606s |  0.00% |  0.00% )   ( 0.009738s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008390s |  0.00% |  0.00% )   ( 0.009558s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007644s |  0.00% |  0.00% )   ( 0.008696s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008232s |  0.00% |  0.00% )   ( 0.009324s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.068498s |  0.00% |  0.00% )   ( 0.064890s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008672s |  0.00% |  0.00% )   ( 0.009826s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009878s |  0.00% |  0.00% )   ( 0.011016s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p0
54.5.0:         ( 0.007992s |  0.00% |  0.00% )   ( 0.009094s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007764s |  0.00% |  0.00% )   ( 0.008886s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000438s |  0.00% |  0.00% )   ( 0.000498s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000386s |  0.00% |  0.00% )   ( 0.000446s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 80.375032s |  3.85% |  1.76% )   ( 76.915172s |  0.97% |  1.77% )    	(112x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.016364s |  0.00% |  0.02% )   ( 0.018684s |  0.00% |  0.02% )    	(112x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.686364s |  0.27% |  7.07% )   ( 5.558784s |  0.07% |  7.22% )    	(112x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.218344s |  0.44% | 11.46% )   ( 8.930788s |  0.11% | 11.61% )    	(112x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.646964s |  0.36% |  9.51% )   ( 7.217168s |  0.09% |  9.38% )    	(112x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.226744s |  0.44% | 11.47% )   ( 8.758656s |  0.11% | 11.38% )    	(112x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.479100s |  0.35% |  9.30% )   ( 6.893104s |  0.08% |  8.96% )    	(112x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.007968s |  0.24% |  6.23% )   ( 4.850756s |  0.06% |  6.30% )    	(112x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.340796s |  0.11% |  2.91% )   ( 2.255608s |  0.02% |  2.93% )    	(112x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 5.259740s |  0.25% |  6.54% )   ( 5.072780s |  0.06% |  6.59% )    	(112x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.193788s |  0.10% |  2.72% )   ( 2.004424s |  0.02% |  2.60% )    	(112x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.495520s |  0.31% |  8.08% )   ( 6.386456s |  0.08% |  8.30% )    	(112x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.100016s |  0.72% | 18.78% )   ( 14.534044s |  0.18% | 18.89% )    	(112x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.425172s |  0.11% |  3.01% )   ( 2.257568s |  0.02% |  2.93% )    	(112x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.278152s |  0.10% |  2.83% )   ( 2.176352s |  0.02% |  2.82% )    	(112x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.010678s |  0.00% |  0.00% )   ( 0.009160s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007516s |  0.00% |  0.00% )   ( 0.008568s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008224s |  0.00% |  0.00% )   ( 0.009248s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009874s |  0.00% |  0.01% )   ( 0.010012s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000228s |  0.00% |  0.00% )   ( 0.000252s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p0_PID})
1016.3.0:       ( 71.062128s |  3.41% |  1.70% )   ( 135.140984s |  1.70% |  1.70% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.001356s |  0.00% |  0.00% )   ( 0.001396s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 71.060588s |  3.41% | 99.99% )   ( 67.569690s |  0.85% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000500s |  0.00% |  0.00% )   ( 0.000564s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000698s |  0.00% |  0.00% )   ( 0.000630s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p1
30.5.0:         ( 0.048542s |  0.00% |  0.06% )   ( 0.047328s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048844s |  0.00% |  0.06% )   ( 0.048256s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.049430s |  0.00% |  0.06% )   ( 0.048270s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.049388s |  0.00% |  0.06% )   ( 0.048334s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.049866s |  0.00% |  0.07% )   ( 0.048444s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007724s |  0.00% |  0.00% )   ( 0.008750s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000508s |  0.00% |  0.00% )   ( 0.000572s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000398s |  0.00% |  0.00% )   ( 0.000462s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000406s |  0.00% |  0.00% )   ( 0.000474s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009618s |  0.00% |  0.00% )   ( 0.010692s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p1
41.5.0:         ( 0.365142s |  0.01% |  0.01% )   ( 0.012164s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008184s |  0.00% |  0.00% )   ( 0.009190s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007648s |  0.00% |  0.00% )   ( 0.008640s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007102s |  0.00% |  0.00% )   ( 0.008022s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.013618s |  0.00% |  0.00% )   ( 0.008616s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.059406s |  0.00% |  0.00% )   ( 0.060192s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007976s |  0.00% |  0.00% )   ( 0.008950s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009166s |  0.00% |  0.00% )   ( 0.010218s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p1
54.5.0:         ( 0.007138s |  0.00% |  0.00% )   ( 0.008138s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007094s |  0.00% |  0.00% )   ( 0.008030s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000312s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000280s |  0.00% |  0.00% )   ( 0.000328s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 70.256564s |  3.37% |  1.90% )   ( 67.121924s |  0.84% |  1.91% )    	(104x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.015432s |  0.00% |  0.02% )   ( 0.017588s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.588948s |  0.22% |  6.53% )   ( 4.430716s |  0.05% |  6.60% )    	(104x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.074468s |  0.38% | 11.49% )   ( 7.756204s |  0.09% | 11.55% )    	(104x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.654016s |  0.31% |  9.47% )   ( 6.465292s |  0.08% |  9.63% )    	(104x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.077240s |  0.38% | 11.49% )   ( 7.778336s |  0.09% | 11.58% )    	(104x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.472256s |  0.31% |  9.21% )   ( 6.280204s |  0.07% |  9.35% )    	(104x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.660880s |  0.22% |  6.63% )   ( 4.189792s |  0.05% |  6.24% )    	(104x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.266840s |  0.10% |  3.22% )   ( 2.084552s |  0.02% |  3.10% )    	(104x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.659252s |  0.22% |  6.63% )   ( 4.333032s |  0.05% |  6.45% )    	(104x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.875540s |  0.09% |  2.66% )   ( 1.816460s |  0.02% |  2.70% )    	(104x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.916764s |  0.28% |  8.42% )   ( 5.629784s |  0.07% |  8.38% )    	(104x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.681260s |  0.60% | 18.04% )   ( 12.399588s |  0.15% | 18.47% )    	(104x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.211708s |  0.10% |  3.14% )   ( 2.009060s |  0.02% |  2.99% )    	(104x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.101960s |  0.10% |  2.99% )   ( 1.931316s |  0.02% |  2.87% )    	(104x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.007302s |  0.00% |  0.00% )   ( 0.008284s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.012904s |  0.00% |  0.00% )   ( 0.007846s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007592s |  0.00% |  0.00% )   ( 0.008492s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.016408s |  0.00% |  0.02% )   ( 0.016578s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000184s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 77.074036s |  3.69% |  1.84% )   ( 148.074068s |  1.87% |  1.87% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.001342s |  0.00% |  0.00% )   ( 0.001382s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 77.072518s |  3.69% | 99.99% )   ( 74.036242s |  0.93% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p2
30.5.0:         ( 0.050526s |  0.00% |  0.06% )   ( 0.050234s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048460s |  0.00% |  0.06% )   ( 0.048222s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048306s |  0.00% |  0.06% )   ( 0.048042s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.048346s |  0.00% |  0.06% )   ( 0.048096s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.048344s |  0.00% |  0.06% )   ( 0.048074s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008246s |  0.00% |  0.00% )   ( 0.009370s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000486s |  0.00% |  0.00% )   ( 0.000548s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000404s |  0.00% |  0.00% )   ( 0.000466s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000398s |  0.00% |  0.00% )   ( 0.000460s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009830s |  0.00% |  0.00% )   ( 0.010998s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p2
41.5.0:         ( 0.327768s |  0.01% |  0.01% )   ( 0.012248s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008458s |  0.00% |  0.00% )   ( 0.009538s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008170s |  0.00% |  0.00% )   ( 0.009190s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007938s |  0.00% |  0.00% )   ( 0.008978s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008428s |  0.00% |  0.00% )   ( 0.009462s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.080414s |  0.00% |  0.00% )   ( 0.066490s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.014570s |  0.00% |  0.00% )   ( 0.009662s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009782s |  0.00% |  0.00% )   ( 0.010906s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p2
54.5.0:         ( 0.008050s |  0.00% |  0.00% )   ( 0.009172s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.009658s |  0.00% |  0.00% )   ( 0.009344s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000466s |  0.00% |  0.00% )   ( 0.000536s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000428s |  0.00% |  0.00% )   ( 0.000490s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 76.283084s |  3.66% |  1.76% )   ( 73.574536s |  0.92% |  1.77% )    	(112x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.016540s |  0.00% |  0.02% )   ( 0.018988s |  0.00% |  0.02% )    	(112x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.560600s |  0.26% |  7.28% )   ( 5.250420s |  0.06% |  7.13% )    	(112x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.031768s |  0.43% | 11.83% )   ( 8.754196s |  0.11% | 11.89% )    	(112x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.067896s |  0.33% |  9.26% )   ( 6.842312s |  0.08% |  9.29% )    	(112x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.511664s |  0.40% | 11.15% )   ( 8.281620s |  0.10% | 11.25% )    	(112x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.990836s |  0.33% |  9.16% )   ( 6.713716s |  0.08% |  9.12% )    	(112x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.679756s |  0.22% |  6.13% )   ( 4.654292s |  0.05% |  6.32% )    	(112x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.322856s |  0.11% |  3.04% )   ( 2.250596s |  0.02% |  3.05% )    	(112x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 5.267924s |  0.25% |  6.90% )   ( 4.826140s |  0.06% |  6.55% )    	(112x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.112084s |  0.10% |  2.76% )   ( 1.955536s |  0.02% |  2.65% )    	(112x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.373060s |  0.30% |  8.35% )   ( 6.100256s |  0.07% |  8.29% )    	(112x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.740924s |  0.65% | 18.01% )   ( 13.526680s |  0.17% | 18.38% )    	(112x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.322984s |  0.11% |  3.04% )   ( 2.222188s |  0.02% |  3.02% )    	(112x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.284192s |  0.10% |  2.99% )   ( 2.177596s |  0.02% |  2.95% )    	(112x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000308s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.007858s |  0.00% |  0.00% )   ( 0.008952s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007370s |  0.00% |  0.00% )   ( 0.008396s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.012850s |  0.00% |  0.00% )   ( 0.009664s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.012640s |  0.00% |  0.01% )   ( 0.012766s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 71.752482s |  3.44% |  1.72% )   ( 138.639234s |  1.75% |  1.75% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.001420s |  0.00% |  0.00% )   ( 0.001460s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 71.750860s |  3.44% | 99.99% )   ( 69.318778s |  0.87% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000662s |  0.00% |  0.00% )   ( 0.000732s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p3
30.5.0:         ( 0.048044s |  0.00% |  0.06% )   ( 0.047954s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048164s |  0.00% |  0.06% )   ( 0.048068s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.047956s |  0.00% |  0.06% )   ( 0.047864s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.048026s |  0.00% |  0.06% )   ( 0.047926s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.047594s |  0.00% |  0.06% )   ( 0.047496s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008518s |  0.00% |  0.00% )   ( 0.009684s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000482s |  0.00% |  0.00% )   ( 0.000532s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000386s |  0.00% |  0.00% )   ( 0.000448s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000388s |  0.00% |  0.00% )   ( 0.000448s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010662s |  0.00% |  0.00% )   ( 0.011752s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p3
41.5.0:         ( 0.321168s |  0.01% |  0.01% )   ( 0.012914s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009214s |  0.00% |  0.00% )   ( 0.010394s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008812s |  0.00% |  0.00% )   ( 0.010010s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008202s |  0.00% |  0.00% )   ( 0.009328s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008882s |  0.00% |  0.00% )   ( 0.010052s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.080680s |  0.00% |  0.00% )   ( 0.069668s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.015788s |  0.00% |  0.00% )   ( 0.010626s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.010788s |  0.00% |  0.00% )   ( 0.011984s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p3
54.5.0:         ( 0.008680s |  0.00% |  0.00% )   ( 0.009846s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008024s |  0.00% |  0.00% )   ( 0.009146s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000424s |  0.00% |  0.00% )   ( 0.000484s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000400s |  0.00% |  0.00% )   ( 0.000450s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 70.966604s |  3.40% |  1.70% )   ( 68.851096s |  0.86% |  1.71% )    	(116x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.028828s |  0.00% |  0.04% )   ( 0.018480s |  0.00% |  0.02% )    	(116x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.830840s |  0.23% |  6.80% )   ( 4.683624s |  0.05% |  6.80% )    	(116x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.106264s |  0.38% | 11.42% )   ( 7.944796s |  0.10% | 11.53% )    	(116x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.874248s |  0.32% |  9.68% )   ( 6.609508s |  0.08% |  9.59% )    	(116x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.877672s |  0.37% | 11.10% )   ( 7.684524s |  0.09% | 11.16% )    	(116x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.669580s |  0.32% |  9.39% )   ( 6.309296s |  0.07% |  9.16% )    	(116x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.465760s |  0.21% |  6.29% )   ( 4.250016s |  0.05% |  6.17% )    	(116x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.287000s |  0.10% |  3.22% )   ( 2.227404s |  0.02% |  3.23% )    	(116x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.454876s |  0.21% |  6.27% )   ( 4.345340s |  0.05% |  6.31% )    	(116x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.018452s |  0.09% |  2.84% )   ( 1.983348s |  0.02% |  2.88% )    	(116x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.920536s |  0.28% |  8.34% )   ( 5.805148s |  0.07% |  8.43% )    	(116x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.760984s |  0.61% | 17.98% )   ( 12.534040s |  0.15% | 18.20% )    	(116x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.368460s |  0.11% |  3.33% )   ( 2.255668s |  0.02% |  3.27% )    	(116x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.303104s |  0.11% |  3.24% )   ( 2.199904s |  0.02% |  3.19% )    	(116x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000250s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.008414s |  0.00% |  0.00% )   ( 0.009536s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.014212s |  0.00% |  0.00% )   ( 0.009298s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008952s |  0.00% |  0.00% )   ( 0.010040s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009816s |  0.00% |  0.01% )   ( 0.009948s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000202s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 70.306324s |  3.37% |  1.68% )   ( 135.388904s |  1.71% |  1.71% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.001316s |  0.00% |  0.00% )   ( 0.001350s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 70.304822s |  3.37% | 99.99% )   ( 67.693670s |  0.85% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000324s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p4
30.5.0:         ( 0.052224s |  0.00% |  0.07% )   ( 0.052114s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048096s |  0.00% |  0.06% )   ( 0.048006s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048180s |  0.00% |  0.06% )   ( 0.048088s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.052166s |  0.00% |  0.07% )   ( 0.052064s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.048306s |  0.00% |  0.06% )   ( 0.048202s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007602s |  0.00% |  0.00% )   ( 0.008584s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009170s |  0.00% |  0.00% )   ( 0.010222s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p4
41.5.0:         ( 0.327386s |  0.01% |  0.01% )   ( 0.011892s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008132s |  0.00% |  0.00% )   ( 0.009136s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007228s |  0.00% |  0.00% )   ( 0.008190s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.006812s |  0.00% |  0.00% )   ( 0.007742s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007268s |  0.00% |  0.00% )   ( 0.008234s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.059744s |  0.00% |  0.00% )   ( 0.060582s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.015338s |  0.00% |  0.00% )   ( 0.009198s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008948s |  0.00% |  0.00% )   ( 0.010016s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p4
54.5.0:         ( 0.007300s |  0.00% |  0.00% )   ( 0.008310s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007146s |  0.00% |  0.00% )   ( 0.008112s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 69.544292s |  3.33% |  1.97% )   ( 67.242188s |  0.84% |  1.98% )    	(100x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.015708s |  0.00% |  0.02% )   ( 0.017756s |  0.00% |  0.02% )    	(100x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.689556s |  0.22% |  6.74% )   ( 4.455504s |  0.05% |  6.62% )    	(100x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.117564s |  0.38% | 11.67% )   ( 7.708592s |  0.09% | 11.46% )    	(100x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.554156s |  0.31% |  9.42% )   ( 6.527028s |  0.08% |  9.70% )    	(100x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.108400s |  0.38% | 11.65% )   ( 7.808340s |  0.09% | 11.61% )    	(100x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.522556s |  0.31% |  9.37% )   ( 6.338148s |  0.08% |  9.42% )    	(100x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.210868s |  0.20% |  6.05% )   ( 4.028404s |  0.05% |  5.99% )    	(100x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.148424s |  0.10% |  3.08% )   ( 2.033820s |  0.02% |  3.02% )    	(100x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.419292s |  0.21% |  6.35% )   ( 4.253760s |  0.05% |  6.32% )    	(100x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.872548s |  0.08% |  2.69% )   ( 1.812796s |  0.02% |  2.69% )    	(100x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.749744s |  0.27% |  8.26% )   ( 5.609604s |  0.07% |  8.34% )    	(100x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.000468s |  0.62% | 18.69% )   ( 12.663968s |  0.15% | 18.83% )    	(100x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.081948s |  0.09% |  2.99% )   ( 2.012856s |  0.02% |  2.99% )    	(100x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.053060s |  0.09% |  2.95% )   ( 1.971612s |  0.02% |  2.93% )    	(100x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007404s |  0.00% |  0.00% )   ( 0.008376s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006952s |  0.00% |  0.00% )   ( 0.007930s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007804s |  0.00% |  0.00% )   ( 0.008716s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000292s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000298s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.015070s |  0.00% |  0.02% )   ( 0.015208s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 68.796860s |  3.30% |  1.65% )   ( 132.153150s |  1.66% |  1.66% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.001428s |  0.00% |  0.00% )   ( 0.001450s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 68.795240s |  3.30% | 99.99% )   ( 66.075742s |  0.83% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000412s |  0.00% |  0.00% )   ( 0.000454s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000428s |  0.00% |  0.00% )   ( 0.000468s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p5
30.5.0:         ( 0.052554s |  0.00% |  0.07% )   ( 0.052444s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049982s |  0.00% |  0.07% )   ( 0.049890s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048238s |  0.00% |  0.07% )   ( 0.048130s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.052586s |  0.00% |  0.07% )   ( 0.052478s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.052382s |  0.00% |  0.07% )   ( 0.052266s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.009206s |  0.00% |  0.00% )   ( 0.010374s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.016756s |  0.00% |  0.00% )   ( 0.011958s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p5
41.5.0:         ( 0.240400s |  0.01% |  0.01% )   ( 0.012788s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009090s |  0.00% |  0.00% )   ( 0.010258s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008400s |  0.00% |  0.00% )   ( 0.009500s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007982s |  0.00% |  0.00% )   ( 0.009068s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008442s |  0.00% |  0.00% )   ( 0.009472s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.074784s |  0.00% |  0.00% )   ( 0.069676s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.022562s |  0.00% |  0.00% )   ( 0.010260s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009914s |  0.00% |  0.00% )   ( 0.011058s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p5
54.5.0:         ( 0.014148s |  0.00% |  0.00% )   ( 0.009312s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007920s |  0.00% |  0.00% )   ( 0.009018s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 68.060032s |  3.26% |  1.76% )   ( 65.587708s |  0.82% |  1.77% )    	(112x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.016088s |  0.00% |  0.02% )   ( 0.018288s |  0.00% |  0.02% )    	(112x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.544696s |  0.21% |  6.67% )   ( 4.338720s |  0.05% |  6.61% )    	(112x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.612292s |  0.36% | 11.18% )   ( 7.454896s |  0.09% | 11.36% )    	(112x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.364424s |  0.30% |  9.35% )   ( 6.266188s |  0.07% |  9.55% )    	(112x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.590996s |  0.36% | 11.15% )   ( 7.404428s |  0.09% | 11.28% )    	(112x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.194396s |  0.29% |  9.10% )   ( 6.054204s |  0.07% |  9.23% )    	(112x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.226308s |  0.20% |  6.20% )   ( 4.044724s |  0.05% |  6.16% )    	(112x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.402928s |  0.11% |  3.53% )   ( 2.206588s |  0.02% |  3.36% )    	(112x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.318992s |  0.20% |  6.34% )   ( 4.105764s |  0.05% |  6.25% )    	(112x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.126064s |  0.10% |  3.12% )   ( 1.962124s |  0.02% |  2.99% )    	(112x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.873556s |  0.28% |  8.62% )   ( 5.527284s |  0.06% |  8.42% )    	(112x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.163376s |  0.58% | 17.87% )   ( 11.826156s |  0.14% | 18.03% )    	(112x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.274920s |  0.10% |  3.34% )   ( 2.221888s |  0.02% |  3.38% )    	(112x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.350996s |  0.11% |  3.45% )   ( 2.156456s |  0.02% |  3.28% )    	(112x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008742s |  0.00% |  0.00% )   ( 0.009890s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.011652s |  0.00% |  0.00% )   ( 0.009174s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008908s |  0.00% |  0.00% )   ( 0.009994s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017992s |  0.00% |  0.02% )   ( 0.018146s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 82.631960s |  3.96% |  1.98% )   ( 159.834200s |  2.01% |  2.01% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.001422s |  0.00% |  0.00% )   ( 0.001454s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 82.630348s |  3.96% | 99.99% )   ( 79.916266s |  1.00% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000640s |  0.00% |  0.00% )   ( 0.000726s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000676s |  0.00% |  0.00% )   ( 0.000764s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p6
30.5.0:         ( 0.047874s |  0.00% |  0.05% )   ( 0.047782s |  0.00% |  0.05% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048080s |  0.00% |  0.05% )   ( 0.047986s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048200s |  0.00% |  0.05% )   ( 0.048102s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.048492s |  0.00% |  0.05% )   ( 0.048378s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.048544s |  0.00% |  0.05% )   ( 0.048430s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.006236s |  0.00% |  0.00% )   ( 0.007048s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007860s |  0.00% |  0.00% )   ( 0.008738s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p6
41.5.0:         ( 0.263864s |  0.01% |  0.01% )   ( 0.009518s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006818s |  0.00% |  0.00% )   ( 0.007692s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.006520s |  0.00% |  0.00% )   ( 0.007354s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.005894s |  0.00% |  0.00% )   ( 0.006754s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.006392s |  0.00% |  0.00% )   ( 0.007216s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.050850s |  0.00% |  0.00% )   ( 0.051562s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.012552s |  0.00% |  0.00% )   ( 0.007384s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.007766s |  0.00% |  0.00% )   ( 0.008690s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p6
54.5.0:         ( 0.006136s |  0.00% |  0.00% )   ( 0.006958s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006106s |  0.00% |  0.00% )   ( 0.006930s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 81.970700s |  3.93% |  2.36% )   ( 79.505260s |  1.00% |  2.36% )    	(84x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.024688s |  0.00% |  0.03% )   ( 0.015088s |  0.00% |  0.01% )    	(84x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.834176s |  0.27% |  7.11% )   ( 5.670460s |  0.07% |  7.13% )    	(84x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 10.856504s |  0.52% | 13.24% )   ( 10.742240s |  0.13% | 13.51% )    	(84x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 8.380328s |  0.40% | 10.22% )   ( 8.250496s |  0.10% | 10.37% )    	(84x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 10.975960s |  0.52% | 13.39% )   ( 10.702708s |  0.13% | 13.46% )    	(84x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 8.417364s |  0.40% | 10.26% )   ( 8.164184s |  0.10% | 10.26% )    	(84x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.223532s |  0.25% |  6.37% )   ( 5.073188s |  0.06% |  6.38% )    	(84x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.030388s |  0.09% |  2.47% )   ( 1.930104s |  0.02% |  2.42% )    	(84x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.903940s |  0.23% |  5.98% )   ( 4.850060s |  0.06% |  6.10% )    	(84x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.828404s |  0.08% |  2.23% )   ( 1.682152s |  0.02% |  2.11% )    	(84x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.965480s |  0.28% |  7.27% )   ( 5.657652s |  0.07% |  7.11% )    	(84x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.733128s |  0.65% | 16.75% )   ( 13.087240s |  0.16% | 16.46% )    	(84x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.918280s |  0.09% |  2.34% )   ( 1.884164s |  0.02% |  2.36% )    	(84x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.878528s |  0.09% |  2.29% )   ( 1.795524s |  0.02% |  2.25% )    	(84x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006036s |  0.00% |  0.00% )   ( 0.006832s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005966s |  0.00% |  0.00% )   ( 0.006808s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006694s |  0.00% |  0.00% )   ( 0.007548s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.010114s |  0.00% |  0.01% )   ( 0.010248s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 74.435458s |  3.57% |  1.78% )   ( 144.465082s |  1.82% |  1.82% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.001474s |  0.00% |  0.00% )   ( 0.001506s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 74.433794s |  3.57% | 99.99% )   ( 72.231680s |  0.91% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000638s |  0.00% |  0.00% )   ( 0.000722s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p7
30.5.0:         ( 0.047992s |  0.00% |  0.06% )   ( 0.047902s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048306s |  0.00% |  0.06% )   ( 0.048202s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.048216s |  0.00% |  0.06% )   ( 0.048118s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.048220s |  0.00% |  0.06% )   ( 0.048124s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.049506s |  0.00% |  0.06% )   ( 0.049398s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.004426s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005110s |  0.00% |  0.00% )   ( 0.005666s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p7
41.5.0:         ( 0.235508s |  0.01% |  0.02% )   ( 0.006626s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004884s |  0.00% |  0.00% )   ( 0.005494s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004856s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031092s |  0.00% |  0.00% )   ( 0.031540s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004820s |  0.00% |  0.00% )   ( 0.005354s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p7
54.5.0:         ( 0.003914s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 73.849900s |  3.54% |  3.54% )   ( 71.875496s |  0.90% |  3.55% )    	(56x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007624s |  0.00% |  0.01% )   ( 0.008708s |  0.00% |  0.01% )    	(56x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.747184s |  0.22% |  6.42% )   ( 4.592924s |  0.05% |  6.39% )    	(56x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.228320s |  0.44% | 12.49% )   ( 9.114908s |  0.11% | 12.68% )    	(56x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.052260s |  0.33% |  9.54% )   ( 6.914588s |  0.08% |  9.62% )    	(56x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.141196s |  0.43% | 12.37% )   ( 9.030292s |  0.11% | 12.56% )    	(56x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.146284s |  0.34% |  9.67% )   ( 6.626592s |  0.08% |  9.21% )    	(56x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.366868s |  0.20% |  5.91% )   ( 4.064520s |  0.05% |  5.65% )    	(56x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.669136s |  0.08% |  2.26% )   ( 1.457388s |  0.01% |  2.02% )    	(56x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.649104s |  0.22% |  6.29% )   ( 4.526332s |  0.05% |  6.29% )    	(56x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.232404s |  0.05% |  1.66% )   ( 1.215316s |  0.01% |  1.69% )    	(56x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.944600s |  0.28% |  8.04% )   ( 5.829812s |  0.07% |  8.11% )    	(56x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.877648s |  0.76% | 21.49% )   ( 15.792332s |  0.19% | 21.97% )    	(56x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.479096s |  0.07% |  2.00% )   ( 1.405364s |  0.01% |  1.95% )    	(56x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.308176s |  0.06% |  1.77% )   ( 1.296420s |  0.01% |  1.80% )    	(56x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.010334s |  0.00% |  0.00% )   ( 0.004542s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000416s |  0.00% |  0.00% )   ( 0.000468s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000418s |  0.00% |  0.00% )   ( 0.000474s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.011088s |  0.00% |  0.01% )   ( 0.011252s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 80.964414s |  3.88% |  1.94% )   ( 157.751794s |  1.99% |  1.99% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.001404s |  0.00% |  0.00% )   ( 0.001444s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 80.962814s |  3.88% | 99.99% )   ( 78.875064s |  0.99% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000460s |  0.00% |  0.00% )   ( 0.000494s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000460s |  0.00% |  0.00% )   ( 0.000518s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p8
30.5.0:         ( 0.052052s |  0.00% |  0.06% )   ( 0.051936s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.074294s |  0.00% |  0.09% )   ( 0.074060s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091956s |  0.00% |  0.11% )   ( 0.091630s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091898s |  0.00% |  0.11% )   ( 0.091582s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.091800s |  0.00% |  0.11% )   ( 0.091472s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000270s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007456s |  0.00% |  0.00% )   ( 0.008458s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000302s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000280s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000258s |  0.00% |  0.00% )   ( 0.000296s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009394s |  0.00% |  0.00% )   ( 0.010440s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p8
41.5.0:         ( 0.236894s |  0.01% |  0.01% )   ( 0.010930s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008034s |  0.00% |  0.00% )   ( 0.008972s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007494s |  0.00% |  0.00% )   ( 0.008478s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.006862s |  0.00% |  0.00% )   ( 0.007806s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007398s |  0.00% |  0.00% )   ( 0.008340s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.056284s |  0.00% |  0.00% )   ( 0.057094s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009226s |  0.00% |  0.00% )   ( 0.008744s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008456s |  0.00% |  0.00% )   ( 0.009404s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p8
54.5.0:         ( 0.007130s |  0.00% |  0.00% )   ( 0.008024s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006988s |  0.00% |  0.00% )   ( 0.007966s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000284s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000244s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 80.152880s |  3.84% |  2.06% )   ( 78.282168s |  0.98% |  2.06% )    	(96x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.014044s |  0.00% |  0.01% )   ( 0.015956s |  0.00% |  0.02% )    	(96x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.793756s |  0.27% |  7.22% )   ( 5.621280s |  0.07% |  7.18% )    	(96x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.445768s |  0.45% | 11.78% )   ( 9.363948s |  0.11% | 11.96% )    	(96x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.586784s |  0.36% |  9.46% )   ( 7.357876s |  0.09% |  9.39% )    	(96x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.249792s |  0.44% | 11.54% )   ( 9.154400s |  0.11% | 11.69% )    	(96x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.421776s |  0.35% |  9.25% )   ( 7.166668s |  0.09% |  9.15% )    	(96x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.126720s |  0.24% |  6.39% )   ( 4.958708s |  0.06% |  6.33% )    	(96x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.224308s |  0.10% |  2.77% )   ( 2.151976s |  0.02% |  2.74% )    	(96x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 5.398388s |  0.25% |  6.73% )   ( 5.193512s |  0.06% |  6.63% )    	(96x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.880804s |  0.09% |  2.34% )   ( 1.854836s |  0.02% |  2.36% )    	(96x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.524580s |  0.31% |  8.14% )   ( 6.343456s |  0.08% |  8.10% )    	(96x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.092176s |  0.72% | 18.82% )   ( 15.029512s |  0.18% | 19.19% )    	(96x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.182472s |  0.10% |  2.72% )   ( 2.096472s |  0.02% |  2.67% )    	(96x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.211512s |  0.10% |  2.75% )   ( 1.973568s |  0.02% |  2.52% )    	(96x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007086s |  0.00% |  0.00% )   ( 0.008050s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.009016s |  0.00% |  0.00% )   ( 0.007870s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007506s |  0.00% |  0.00% )   ( 0.008434s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009574s |  0.00% |  0.01% )   ( 0.009698s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000196s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 68.198228s |  3.27% |  1.63% )   ( 131.769196s |  1.66% |  1.66% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.001456s |  0.00% |  0.00% )   ( 0.001490s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 68.196584s |  3.27% | 99.99% )   ( 65.883746s |  0.83% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000506s |  0.00% |  0.00% )   ( 0.000568s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p9
30.5.0:         ( 0.050068s |  0.00% |  0.07% )   ( 0.049952s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048166s |  0.00% |  0.07% )   ( 0.048068s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.049878s |  0.00% |  0.07% )   ( 0.049760s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.052992s |  0.00% |  0.07% )   ( 0.052866s |  0.00% |  0.08% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.049498s |  0.00% |  0.07% )   ( 0.049392s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008878s |  0.00% |  0.00% )   ( 0.010082s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010586s |  0.00% |  0.00% )   ( 0.011790s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p9
41.5.0:         ( 0.489798s |  0.02% |  0.02% )   ( 0.013950s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009274s |  0.00% |  0.00% )   ( 0.010450s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.009338s |  0.00% |  0.00% )   ( 0.010552s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008256s |  0.00% |  0.00% )   ( 0.009378s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008878s |  0.00% |  0.00% )   ( 0.009998s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.103352s |  0.00% |  0.00% )   ( 0.073820s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.017362s |  0.00% |  0.00% )   ( 0.010642s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.010460s |  0.00% |  0.00% )   ( 0.011672s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p9
54.5.0:         ( 0.008194s |  0.00% |  0.00% )   ( 0.009346s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008226s |  0.00% |  0.00% )   ( 0.009216s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 67.207416s |  3.22% |  1.69% )   ( 65.393188s |  0.82% |  1.71% )    	(116x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.016212s |  0.00% |  0.02% )   ( 0.018376s |  0.00% |  0.02% )    	(116x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.624828s |  0.22% |  6.88% )   ( 4.406352s |  0.05% |  6.73% )    	(116x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.511344s |  0.36% | 11.17% )   ( 7.364336s |  0.09% | 11.26% )    	(116x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.527844s |  0.31% |  9.71% )   ( 6.240824s |  0.07% |  9.54% )    	(116x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.479968s |  0.35% | 11.12% )   ( 7.336148s |  0.09% | 11.21% )    	(116x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.069452s |  0.29% |  9.03% )   ( 6.038120s |  0.07% |  9.23% )    	(116x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.098252s |  0.19% |  6.09% )   ( 4.020092s |  0.05% |  6.14% )    	(116x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.306680s |  0.11% |  3.43% )   ( 2.253784s |  0.02% |  3.44% )    	(116x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.393832s |  0.21% |  6.53% )   ( 4.162296s |  0.05% |  6.36% )    	(116x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.063832s |  0.09% |  3.07% )   ( 1.980948s |  0.02% |  3.02% )    	(116x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.795904s |  0.27% |  8.62% )   ( 5.474224s |  0.06% |  8.37% )    	(116x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.721712s |  0.56% | 17.44% )   ( 11.602284s |  0.14% | 17.74% )    	(116x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.291504s |  0.10% |  3.40% )   ( 2.271864s |  0.02% |  3.47% )    	(116x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.306052s |  0.11% |  3.43% )   ( 2.223540s |  0.02% |  3.40% )    	(116x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008996s |  0.00% |  0.00% )   ( 0.010146s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.008144s |  0.00% |  0.00% )   ( 0.009090s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008584s |  0.00% |  0.00% )   ( 0.009682s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000284s |  0.00% |  0.00% )   ( 0.000322s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000282s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017920s |  0.00% |  0.02% )   ( 0.018060s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000188s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 89.105106s |  4.27% |  2.13% )   ( 169.573944s |  2.14% |  2.14% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.001688s |  0.00% |  0.00% )   ( 0.001738s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 89.103062s |  4.27% | 99.99% )   ( 84.785902s |  1.07% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000310s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p10
30.5.0:         ( 0.092034s |  0.00% |  0.10% )   ( 0.091736s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.092280s |  0.00% |  0.10% )   ( 0.091954s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.092042s |  0.00% |  0.10% )   ( 0.091722s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091894s |  0.00% |  0.10% )   ( 0.091580s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.092454s |  0.00% |  0.10% )   ( 0.092126s |  0.00% |  0.10% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.009066s |  0.00% |  0.00% )   ( 0.010274s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000298s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000294s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010866s |  0.00% |  0.00% )   ( 0.012112s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p10
41.5.0:         ( 0.281766s |  0.01% |  0.01% )   ( 0.013718s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009936s |  0.00% |  0.00% )   ( 0.011144s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.009468s |  0.00% |  0.00% )   ( 0.010674s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008536s |  0.00% |  0.00% )   ( 0.009722s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.009652s |  0.00% |  0.00% )   ( 0.010790s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.082664s |  0.00% |  0.00% )   ( 0.077656s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.015866s |  0.00% |  0.00% )   ( 0.011034s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.010744s |  0.00% |  0.00% )   ( 0.011948s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p10
54.5.0:         ( 0.008668s |  0.00% |  0.00% )   ( 0.009848s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008300s |  0.00% |  0.00% )   ( 0.009450s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 88.129104s |  4.22% |  1.70% )   ( 84.085160s |  1.06% |  1.70% )    	(116x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.018212s |  0.00% |  0.02% )   ( 0.020772s |  0.00% |  0.02% )    	(116x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 6.549564s |  0.31% |  7.43% )   ( 6.211024s |  0.07% |  7.38% )    	(116x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 10.156000s |  0.48% | 11.52% )   ( 9.630616s |  0.12% | 11.45% )    	(116x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 8.365180s |  0.40% |  9.49% )   ( 7.826220s |  0.09% |  9.30% )    	(116x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 10.350820s |  0.49% | 11.74% )   ( 9.660276s |  0.12% | 11.48% )    	(116x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 8.039908s |  0.38% |  9.12% )   ( 7.602852s |  0.09% |  9.04% )    	(116x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.852876s |  0.28% |  6.64% )   ( 5.636148s |  0.07% |  6.70% )    	(116x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.645652s |  0.12% |  3.00% )   ( 2.556664s |  0.03% |  3.04% )    	(116x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 6.004168s |  0.28% |  6.81% )   ( 5.747620s |  0.07% |  6.83% )    	(116x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.241120s |  0.10% |  2.54% )   ( 2.185184s |  0.02% |  2.59% )    	(116x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 7.206120s |  0.34% |  8.17% )   ( 6.824008s |  0.08% |  8.11% )    	(116x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.648364s |  0.75% | 17.75% )   ( 15.428464s |  0.19% | 18.34% )    	(116x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.480328s |  0.11% |  2.81% )   ( 2.427184s |  0.03% |  2.88% )    	(116x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.570792s |  0.12% |  2.91% )   ( 2.328128s |  0.02% |  2.76% )    	(116x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008766s |  0.00% |  0.00% )   ( 0.009900s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.008232s |  0.00% |  0.00% )   ( 0.009372s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.017966s |  0.00% |  0.00% )   ( 0.010726s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009976s |  0.00% |  0.01% )   ( 0.010100s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000356s |  0.00% |  0.00% )   ( 0.000402s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 71.282056s |  3.42% |  1.71% )   ( 137.916148s |  1.74% |  1.74% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.001918s |  0.00% |  0.00% )   ( 0.001956s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 71.279836s |  3.42% | 99.99% )   ( 68.956926s |  0.87% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000562s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p11
30.5.0:         ( 0.065564s |  0.00% |  0.09% )   ( 0.065226s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.065466s |  0.00% |  0.09% )   ( 0.065224s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.066160s |  0.00% |  0.09% )   ( 0.065934s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.066876s |  0.00% |  0.09% )   ( 0.066658s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.064926s |  0.00% |  0.09% )   ( 0.064706s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000292s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007770s |  0.00% |  0.00% )   ( 0.008800s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000306s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000274s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009790s |  0.00% |  0.00% )   ( 0.010880s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p11
41.5.0:         ( 0.266028s |  0.01% |  0.01% )   ( 0.011980s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008512s |  0.00% |  0.00% )   ( 0.009634s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007984s |  0.00% |  0.00% )   ( 0.009040s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007570s |  0.00% |  0.00% )   ( 0.008604s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008268s |  0.00% |  0.00% )   ( 0.009328s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.068952s |  0.00% |  0.00% )   ( 0.063786s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008492s |  0.00% |  0.00% )   ( 0.009542s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009646s |  0.00% |  0.00% )   ( 0.010750s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p11
54.5.0:         ( 0.007580s |  0.00% |  0.00% )   ( 0.008614s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007366s |  0.00% |  0.00% )   ( 0.008364s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 70.496684s |  3.38% |  1.90% )   ( 68.420420s |  0.86% |  1.90% )    	(104x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.015064s |  0.00% |  0.02% )   ( 0.017112s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.975324s |  0.23% |  7.05% )   ( 4.598420s |  0.05% |  6.72% )    	(104x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.262164s |  0.39% | 11.71% )   ( 7.999824s |  0.10% | 11.69% )    	(104x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.791084s |  0.32% |  9.63% )   ( 6.689540s |  0.08% |  9.77% )    	(104x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.099696s |  0.38% | 11.48% )   ( 7.945864s |  0.10% | 11.61% )    	(104x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.782716s |  0.32% |  9.62% )   ( 6.366148s |  0.08% |  9.30% )    	(104x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.220892s |  0.20% |  5.98% )   ( 4.144220s |  0.05% |  6.05% )    	(104x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.167000s |  0.10% |  3.07% )   ( 2.083700s |  0.02% |  3.04% )    	(104x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.412448s |  0.21% |  6.25% )   ( 4.341372s |  0.05% |  6.34% )    	(104x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.915804s |  0.09% |  2.71% )   ( 1.839256s |  0.02% |  2.68% )    	(104x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.815720s |  0.27% |  8.24% )   ( 5.608976s |  0.07% |  8.19% )    	(104x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.743768s |  0.61% | 18.07% )   ( 12.625364s |  0.15% | 18.45% )    	(104x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.144020s |  0.10% |  3.04% )   ( 2.126756s |  0.02% |  3.10% )    	(104x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.150984s |  0.10% |  3.05% )   ( 2.033868s |  0.02% |  2.97% )    	(104x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007638s |  0.00% |  0.00% )   ( 0.008662s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007632s |  0.00% |  0.00% )   ( 0.008674s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008420s |  0.00% |  0.00% )   ( 0.009436s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009828s |  0.00% |  0.01% )   ( 0.009974s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000302s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 68.195388s |  3.27% |  1.63% )   ( 129.128622s |  1.63% |  1.63% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.001990s |  0.00% |  0.00% )   ( 0.002032s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 68.193082s |  3.27% | 99.99% )   ( 64.563122s |  0.81% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p12
30.5.0:         ( 0.077956s |  0.00% |  0.11% )   ( 0.077564s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.092200s |  0.00% |  0.13% )   ( 0.091858s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.054916s |  0.00% |  0.08% )   ( 0.054742s |  0.00% |  0.08% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.056356s |  0.00% |  0.08% )   ( 0.056148s |  0.00% |  0.08% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.062664s |  0.00% |  0.09% )   ( 0.062462s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008884s |  0.00% |  0.00% )   ( 0.010050s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.011124s |  0.00% |  0.00% )   ( 0.012282s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p12
41.5.0:         ( 0.435432s |  0.02% |  0.02% )   ( 0.013168s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.015756s |  0.00% |  0.00% )   ( 0.010936s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.009300s |  0.00% |  0.00% )   ( 0.010540s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008658s |  0.00% |  0.00% )   ( 0.009834s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.009108s |  0.00% |  0.00% )   ( 0.010270s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.079972s |  0.00% |  0.00% )   ( 0.072908s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009308s |  0.00% |  0.00% )   ( 0.010430s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.010270s |  0.00% |  0.00% )   ( 0.011432s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p12
54.5.0:         ( 0.007936s |  0.00% |  0.00% )   ( 0.009026s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008516s |  0.00% |  0.00% )   ( 0.009678s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 67.182920s |  3.22% |  1.69% )   ( 63.980120s |  0.80% |  1.70% )    	(116x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.017220s |  0.00% |  0.02% )   ( 0.019600s |  0.00% |  0.03% )    	(116x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.391436s |  0.21% |  6.53% )   ( 4.273004s |  0.05% |  6.67% )    	(116x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.411344s |  0.35% | 11.03% )   ( 7.088404s |  0.08% | 11.07% )    	(116x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.473036s |  0.31% |  9.63% )   ( 6.237932s |  0.07% |  9.74% )    	(116x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.419244s |  0.35% | 11.04% )   ( 7.045332s |  0.08% | 11.01% )    	(116x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.284148s |  0.30% |  9.35% )   ( 5.939932s |  0.07% |  9.28% )    	(116x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.326556s |  0.20% |  6.43% )   ( 3.947796s |  0.04% |  6.17% )    	(116x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.460072s |  0.11% |  3.66% )   ( 2.251464s |  0.02% |  3.51% )    	(116x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.275960s |  0.20% |  6.36% )   ( 4.061392s |  0.05% |  6.34% )    	(116x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.246080s |  0.10% |  3.34% )   ( 2.056132s |  0.02% |  3.21% )    	(116x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.759424s |  0.27% |  8.57% )   ( 5.441580s |  0.06% |  8.50% )    	(116x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.331628s |  0.54% | 16.86% )   ( 11.140556s |  0.14% | 17.41% )    	(116x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.454032s |  0.11% |  3.65% )   ( 2.275652s |  0.02% |  3.55% )    	(116x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.332740s |  0.11% |  3.47% )   ( 2.201344s |  0.02% |  3.44% )    	(116x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008688s |  0.00% |  0.00% )   ( 0.009866s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.008130s |  0.00% |  0.00% )   ( 0.009250s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.015270s |  0.00% |  0.00% )   ( 0.010378s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000308s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017660s |  0.00% |  0.02% )   ( 0.017836s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000316s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 69.478874s |  3.33% |  1.66% )   ( 132.669446s |  1.67% |  1.67% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.002072s |  0.00% |  0.00% )   ( 0.002116s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 69.476502s |  3.33% | 99.99% )   ( 66.333496s |  0.83% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p13
30.5.0:         ( 0.048320s |  0.00% |  0.06% )   ( 0.048214s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052628s |  0.00% |  0.07% )   ( 0.052514s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.086760s |  0.00% |  0.12% )   ( 0.086480s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091092s |  0.00% |  0.13% )   ( 0.090808s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.090518s |  0.00% |  0.13% )   ( 0.090220s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000260s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007614s |  0.00% |  0.00% )   ( 0.008564s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000302s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000258s |  0.00% |  0.00% )   ( 0.000296s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008776s |  0.00% |  0.00% )   ( 0.009740s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p13
41.5.0:         ( 0.448582s |  0.02% |  0.02% )   ( 0.011750s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007590s |  0.00% |  0.00% )   ( 0.008518s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007322s |  0.00% |  0.00% )   ( 0.008302s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.006686s |  0.00% |  0.00% )   ( 0.007590s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007062s |  0.00% |  0.00% )   ( 0.007972s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.062820s |  0.00% |  0.00% )   ( 0.055552s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007134s |  0.00% |  0.00% )   ( 0.008058s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008148s |  0.00% |  0.00% )   ( 0.009076s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p13
54.5.0:         ( 0.012842s |  0.00% |  0.00% )   ( 0.007756s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006728s |  0.00% |  0.00% )   ( 0.007654s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000284s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000246s |  0.00% |  0.00% )   ( 0.000282s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 68.467556s |  3.28% |  2.14% )   ( 65.770016s |  0.83% |  2.15% )    	(92x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.013100s |  0.00% |  0.01% )   ( 0.015004s |  0.00% |  0.02% )    	(92x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.381152s |  0.21% |  6.39% )   ( 4.284588s |  0.05% |  6.51% )    	(92x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.973528s |  0.38% | 11.64% )   ( 7.684604s |  0.09% | 11.68% )    	(92x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.547372s |  0.31% |  9.56% )   ( 6.288132s |  0.07% |  9.56% )    	(92x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.888604s |  0.37% | 11.52% )   ( 7.732620s |  0.09% | 11.75% )    	(92x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.253364s |  0.30% |  9.13% )   ( 6.119964s |  0.07% |  9.30% )    	(92x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.130680s |  0.19% |  6.03% )   ( 3.935616s |  0.04% |  5.98% )    	(92x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.229124s |  0.10% |  3.25% )   ( 1.932900s |  0.02% |  2.93% )    	(92x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.440116s |  0.21% |  6.48% )   ( 4.113944s |  0.05% |  6.25% )    	(92x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.738128s |  0.08% |  2.53% )   ( 1.669436s |  0.02% |  2.53% )    	(92x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.776716s |  0.27% |  8.43% )   ( 5.424828s |  0.06% |  8.24% )    	(92x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.001672s |  0.62% | 18.98% )   ( 12.786632s |  0.16% | 19.44% )    	(92x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.077956s |  0.09% |  3.03% )   ( 1.934224s |  0.02% |  2.94% )    	(92x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.016044s |  0.09% |  2.94% )   ( 1.847524s |  0.02% |  2.80% )    	(92x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006984s |  0.00% |  0.00% )   ( 0.007930s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006414s |  0.00% |  0.00% )   ( 0.007288s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.013404s |  0.00% |  0.00% )   ( 0.008232s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.018648s |  0.00% |  0.02% )   ( 0.018024s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000300s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 82.278906s |  3.94% |  1.97% )   ( 159.354802s |  2.01% |  2.01% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.002076s |  0.00% |  0.00% )   ( 0.002112s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 82.276506s |  3.94% | 99.99% )   ( 79.676168s |  1.00% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p14
30.5.0:         ( 0.060942s |  0.00% |  0.07% )   ( 0.060592s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.057484s |  0.00% |  0.06% )   ( 0.057120s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.054820s |  0.00% |  0.06% )   ( 0.054508s |  0.00% |  0.06% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.059748s |  0.00% |  0.07% )   ( 0.059428s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.056756s |  0.00% |  0.06% )   ( 0.056424s |  0.00% |  0.07% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000306s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008004s |  0.00% |  0.00% )   ( 0.009058s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000306s |  0.00% |  0.00% )   ( 0.000352s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009576s |  0.00% |  0.00% )   ( 0.010672s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p14
41.5.0:         ( 0.428352s |  0.02% |  0.01% )   ( 0.012964s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008300s |  0.00% |  0.00% )   ( 0.009296s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008176s |  0.00% |  0.00% )   ( 0.009224s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007432s |  0.00% |  0.00% )   ( 0.008418s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008268s |  0.00% |  0.00% )   ( 0.009314s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.073268s |  0.00% |  0.00% )   ( 0.063714s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.014638s |  0.00% |  0.00% )   ( 0.009686s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009672s |  0.00% |  0.00% )   ( 0.010804s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p14
54.5.0:         ( 0.013998s |  0.00% |  0.00% )   ( 0.009086s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007528s |  0.00% |  0.00% )   ( 0.008586s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000304s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000270s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 81.347756s |  3.90% |  1.90% )   ( 79.177968s |  1.00% |  1.91% )    	(104x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.014688s |  0.00% |  0.01% )   ( 0.016732s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.786780s |  0.27% |  7.11% )   ( 5.656284s |  0.07% |  7.14% )    	(104x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.331392s |  0.44% | 11.47% )   ( 9.208936s |  0.11% | 11.63% )    	(104x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.571904s |  0.36% |  9.30% )   ( 7.437904s |  0.09% |  9.39% )    	(104x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.318196s |  0.44% | 11.45% )   ( 9.082932s |  0.11% | 11.47% )    	(104x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.315708s |  0.35% |  8.99% )   ( 7.179964s |  0.09% |  9.06% )    	(104x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.248052s |  0.25% |  6.45% )   ( 5.065456s |  0.06% |  6.39% )    	(104x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.392984s |  0.11% |  2.94% )   ( 2.267584s |  0.02% |  2.86% )    	(104x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 5.540684s |  0.26% |  6.81% )   ( 5.280084s |  0.06% |  6.66% )    	(104x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.176524s |  0.10% |  2.67% )   ( 1.960768s |  0.02% |  2.47% )    	(104x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.536992s |  0.31% |  8.03% )   ( 6.370644s |  0.08% |  8.04% )    	(104x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.479316s |  0.74% | 19.02% )   ( 15.321848s |  0.19% | 19.35% )    	(104x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.353016s |  0.11% |  2.89% )   ( 2.228960s |  0.02% |  2.81% )    	(104x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.281520s |  0.10% |  2.80% )   ( 2.099872s |  0.02% |  2.65% )    	(104x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007582s |  0.00% |  0.00% )   ( 0.008608s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007688s |  0.00% |  0.00% )   ( 0.008736s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.014268s |  0.00% |  0.00% )   ( 0.009260s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009854s |  0.00% |  0.01% )   ( 0.009978s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000324s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 67.283326s |  3.22% |  1.61% )   ( 126.184124s |  1.59% |  1.59% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.002062s |  0.00% |  0.00% )   ( 0.002106s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 67.280958s |  3.22% | 99.99% )   ( 63.090836s |  0.79% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000310s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000310s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p15
30.5.0:         ( 0.091328s |  0.00% |  0.13% )   ( 0.091034s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.091310s |  0.00% |  0.13% )   ( 0.091014s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091658s |  0.00% |  0.13% )   ( 0.091334s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.090458s |  0.00% |  0.13% )   ( 0.090096s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.084448s |  0.00% |  0.12% )   ( 0.084184s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.009084s |  0.00% |  0.00% )   ( 0.010284s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000300s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000248s |  0.00% |  0.00% )   ( 0.000284s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.011268s |  0.00% |  0.00% )   ( 0.012538s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p15
41.5.0:         ( 0.171996s |  0.00% |  0.00% )   ( 0.012776s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.009498s |  0.00% |  0.00% )   ( 0.010726s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.009298s |  0.00% |  0.00% )   ( 0.010526s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008948s |  0.00% |  0.00% )   ( 0.010118s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.009616s |  0.00% |  0.00% )   ( 0.010838s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.086112s |  0.00% |  0.00% )   ( 0.077504s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010380s |  0.00% |  0.00% )   ( 0.011320s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.010864s |  0.00% |  0.00% )   ( 0.012066s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p15
54.5.0:         ( 0.011028s |  0.00% |  0.00% )   ( 0.009858s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008378s |  0.00% |  0.00% )   ( 0.009526s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000318s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000266s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 66.426416s |  3.18% |  1.70% )   ( 62.392208s |  0.78% |  1.70% )    	(116x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.017304s |  0.00% |  0.02% )   ( 0.019612s |  0.00% |  0.03% )    	(116x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.544156s |  0.21% |  6.84% )   ( 4.163340s |  0.05% |  6.67% )    	(116x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.398760s |  0.35% | 11.13% )   ( 6.903656s |  0.08% | 11.06% )    	(116x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.554184s |  0.31% |  9.86% )   ( 5.986764s |  0.07% |  9.59% )    	(116x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.531044s |  0.36% | 11.33% )   ( 6.934404s |  0.08% | 11.11% )    	(116x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.134748s |  0.29% |  9.23% )   ( 5.815692s |  0.07% |  9.32% )    	(116x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.041644s |  0.19% |  6.08% )   ( 3.858604s |  0.04% |  6.18% )    	(116x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.470888s |  0.11% |  3.71% )   ( 2.264696s |  0.02% |  3.62% )    	(116x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.172244s |  0.20% |  6.28% )   ( 3.931364s |  0.04% |  6.30% )    	(116x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.274668s |  0.10% |  3.42% )   ( 2.019464s |  0.02% |  3.23% )    	(116x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.664248s |  0.27% |  8.52% )   ( 5.267528s |  0.06% |  8.44% )    	(116x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.138632s |  0.53% | 16.76% )   ( 10.783844s |  0.13% | 17.28% )    	(116x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.269708s |  0.10% |  3.41% )   ( 2.248700s |  0.02% |  3.60% )    	(116x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.214188s |  0.10% |  3.33% )   ( 2.194540s |  0.02% |  3.51% )    	(116x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008894s |  0.00% |  0.00% )   ( 0.010076s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.008174s |  0.00% |  0.00% )   ( 0.009280s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008988s |  0.00% |  0.00% )   ( 0.010094s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000416s |  0.00% |  0.00% )   ( 0.000470s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000404s |  0.00% |  0.00% )   ( 0.000458s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000442s |  0.00% |  0.00% )   ( 0.000496s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000480s |  0.00% |  0.00% )   ( 0.000536s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit
68.5.0:         ( 0.000654s |  0.00% |  0.00% )   ( 0.000726s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p* 1>&21
69.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-69.5.0:        ( 0.017602s |  0.00% |  0.02% )   ( 0.017564s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000306s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 70.647716s |  3.39% |  1.69% )   ( 137.235770s |  1.73% |  1.73% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.002150s |  0.00% |  0.00% )   ( 0.002192s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 70.645260s |  3.39% | 99.99% )   ( 68.616616s |  0.86% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000404s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000356s |  0.00% |  0.00% )   ( 0.000402s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p16
30.5.0:         ( 0.091052s |  0.00% |  0.12% )   ( 0.090744s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.092428s |  0.00% |  0.13% )   ( 0.092086s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091322s |  0.00% |  0.12% )   ( 0.090998s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091266s |  0.00% |  0.12% )   ( 0.090948s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.090968s |  0.00% |  0.12% )   ( 0.090674s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000270s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.006424s |  0.00% |  0.00% )   ( 0.007220s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000300s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007954s |  0.00% |  0.00% )   ( 0.008774s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p16
41.5.0:         ( 0.212666s |  0.01% |  0.01% )   ( 0.009480s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006768s |  0.00% |  0.00% )   ( 0.007674s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.012626s |  0.00% |  0.00% )   ( 0.007448s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.006408s |  0.00% |  0.00% )   ( 0.006802s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.006312s |  0.00% |  0.00% )   ( 0.007108s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.055558s |  0.00% |  0.00% )   ( 0.050178s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006224s |  0.00% |  0.00% )   ( 0.007028s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.007122s |  0.00% |  0.00% )   ( 0.007888s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p16
54.5.0:         ( 0.006030s |  0.00% |  0.00% )   ( 0.006868s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005894s |  0.00% |  0.00% )   ( 0.006706s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000284s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000308s |  0.00% |  0.00% )   ( 0.000370s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 69.808440s |  3.35% |  2.47% )   ( 67.985412s |  0.85% |  2.47% )    	(80x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.011840s |  0.00% |  0.01% )   ( 0.013452s |  0.00% |  0.01% )    	(80x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.446324s |  0.21% |  6.36% )   ( 4.374644s |  0.05% |  6.43% )    	(80x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.319372s |  0.39% | 11.91% )   ( 8.189904s |  0.10% | 12.04% )    	(80x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.768580s |  0.32% |  9.69% )   ( 6.554216s |  0.08% |  9.64% )    	(80x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.236836s |  0.39% | 11.79% )   ( 8.121816s |  0.10% | 11.94% )    	(80x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.605828s |  0.31% |  9.46% )   ( 6.307000s |  0.07% |  9.27% )    	(80x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.108464s |  0.19% |  5.88% )   ( 4.042112s |  0.05% |  5.94% )    	(80x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.874816s |  0.08% |  2.68% )   ( 1.809572s |  0.02% |  2.66% )    	(80x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.631104s |  0.22% |  6.63% )   ( 4.338876s |  0.05% |  6.38% )    	(80x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.667556s |  0.08% |  2.38% )   ( 1.522964s |  0.01% |  2.24% )    	(80x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.640352s |  0.27% |  8.07% )   ( 5.578044s |  0.07% |  8.20% )    	(80x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.895140s |  0.66% | 19.90% )   ( 13.770500s |  0.17% | 20.25% )    	(80x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.795968s |  0.08% |  2.57% )   ( 1.734180s |  0.02% |  2.55% )    	(80x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.806260s |  0.08% |  2.58% )   ( 1.628132s |  0.02% |  2.39% )    	(80x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006248s |  0.00% |  0.00% )   ( 0.007000s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005758s |  0.00% |  0.00% )   ( 0.006494s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006352s |  0.00% |  0.00% )   ( 0.007156s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000320s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000312s |  0.00% |  0.00% )   ( 0.000352s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.018154s |  0.00% |  0.02% )   ( 0.018198s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000306s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 74.054090s |  3.55% |  1.77% )   ( 144.672950s |  1.82% |  1.82% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.002008s |  0.00% |  0.00% )   ( 0.002044s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 74.051778s |  3.55% | 99.99% )   ( 72.335282s |  0.91% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p17
30.5.0:         ( 0.069606s |  0.00% |  0.09% )   ( 0.069336s |  0.00% |  0.09% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.091032s |  0.00% |  0.12% )   ( 0.090584s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.090348s |  0.00% |  0.12% )   ( 0.089912s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.090236s |  0.00% |  0.12% )   ( 0.089864s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.100094s |  0.00% |  0.13% )   ( 0.099718s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000336s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000294s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000266s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004176s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p17
41.5.0:         ( 0.137358s |  0.00% |  0.01% )   ( 0.004698s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.003024s |  0.00% |  0.00% )   ( 0.003412s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.002564s |  0.00% |  0.00% )   ( 0.002932s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002768s |  0.00% |  0.00% )   ( 0.003154s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023600s |  0.00% |  0.00% )   ( 0.023930s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003258s |  0.00% |  0.00% )   ( 0.003676s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004058s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p17
54.5.0:         ( 0.002986s |  0.00% |  0.00% )   ( 0.003370s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007208s |  0.00% |  0.00% )   ( 0.003250s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000308s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000260s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 73.384444s |  3.52% |  4.95% )   ( 71.800792s |  0.90% |  4.96% )    	(40x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005452s |  0.00% |  0.00% )   ( 0.006156s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.442980s |  0.21% |  6.05% )   ( 4.350052s |  0.05% |  6.05% )    	(40x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.354652s |  0.44% | 12.74% )   ( 9.115176s |  0.11% | 12.69% )    	(40x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.803884s |  0.32% |  9.27% )   ( 6.755488s |  0.08% |  9.40% )    	(40x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.448780s |  0.45% | 12.87% )   ( 9.286864s |  0.11% | 12.93% )    	(40x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.906440s |  0.33% |  9.41% )   ( 6.838168s |  0.08% |  9.52% )    	(40x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.209960s |  0.20% |  5.73% )   ( 4.077708s |  0.05% |  5.67% )    	(40x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.347600s |  0.06% |  1.83% )   ( 1.263052s |  0.01% |  1.75% )    	(40x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.868740s |  0.23% |  6.63% )   ( 4.681268s |  0.05% |  6.51% )    	(40x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.053368s |  0.05% |  1.43% )   ( 1.028396s |  0.01% |  1.43% )    	(40x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.010672s |  0.28% |  8.19% )   ( 5.825164s |  0.07% |  8.11% )    	(40x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 16.583816s |  0.79% | 22.59% )   ( 16.437492s |  0.20% | 22.89% )    	(40x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.322316s |  0.06% |  1.80% )   ( 1.147832s |  0.01% |  1.59% )    	(40x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.025784s |  0.04% |  1.39% )   ( 0.987976s |  0.01% |  1.37% )    	(40x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003104s |  0.00% |  0.00% )   ( 0.003480s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002558s |  0.00% |  0.00% )   ( 0.002900s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002674s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000294s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017794s |  0.00% |  0.02% )   ( 0.017952s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000304s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 72.723180s |  3.49% |  1.74% )   ( 139.867826s |  1.76% |  1.76% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.002050s |  0.00% |  0.00% )   ( 0.002096s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 72.720824s |  3.49% | 99.99% )   ( 69.932692s |  0.88% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000310s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000302s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p18
30.5.0:         ( 0.089074s |  0.00% |  0.12% )   ( 0.088788s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.090786s |  0.00% |  0.12% )   ( 0.090440s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.084226s |  0.00% |  0.11% )   ( 0.083920s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.089786s |  0.00% |  0.12% )   ( 0.089418s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.087948s |  0.00% |  0.12% )   ( 0.087662s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000274s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005288s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000300s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005418s |  0.00% |  0.00% )   ( 0.006006s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p18
41.5.0:         ( 0.259796s |  0.01% |  0.02% )   ( 0.006796s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004692s |  0.00% |  0.00% )   ( 0.005322s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.004372s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004722s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004654s |  0.00% |  0.00% )   ( 0.005256s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040714s |  0.00% |  0.00% )   ( 0.035218s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005440s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005362s |  0.00% |  0.00% )   ( 0.005996s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p18
54.5.0:         ( 0.004622s |  0.00% |  0.00% )   ( 0.005206s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004326s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000250s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 71.898556s |  3.45% |  3.29% )   ( 69.362244s |  0.87% |  3.30% )    	(60x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.008616s |  0.00% |  0.01% )   ( 0.009832s |  0.00% |  0.01% )    	(60x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.608280s |  0.22% |  6.40% )   ( 4.447988s |  0.05% |  6.41% )    	(60x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.569180s |  0.45% | 13.30% )   ( 8.787548s |  0.11% | 12.66% )    	(60x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.111008s |  0.34% |  9.89% )   ( 6.630312s |  0.08% |  9.55% )    	(60x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.900556s |  0.42% | 12.37% )   ( 8.793628s |  0.11% | 12.67% )    	(60x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.770752s |  0.32% |  9.41% )   ( 6.583380s |  0.08% |  9.49% )    	(60x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.189396s |  0.20% |  5.82% )   ( 4.021572s |  0.05% |  5.79% )    	(60x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.611868s |  0.07% |  2.24% )   ( 1.515896s |  0.01% |  2.18% )    	(60x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.625292s |  0.22% |  6.43% )   ( 4.538376s |  0.05% |  6.54% )    	(60x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.280268s |  0.06% |  1.78% )   ( 1.229064s |  0.01% |  1.77% )    	(60x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.611080s |  0.26% |  7.80% )   ( 5.500292s |  0.06% |  7.92% )    	(60x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 14.729620s |  0.70% | 20.48% )   ( 14.610188s |  0.18% | 21.06% )    	(60x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.511796s |  0.07% |  2.10% )   ( 1.403472s |  0.01% |  2.02% )    	(60x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.370844s |  0.06% |  1.90% )   ( 1.290696s |  0.01% |  1.86% )    	(60x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004048s |  0.00% |  0.00% )   ( 0.004608s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004236s |  0.00% |  0.00% )   ( 0.004788s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004562s |  0.00% |  0.00% )   ( 0.005134s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000274s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.016950s |  0.00% |  0.02% )   ( 0.017112s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000306s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 74.276912s |  3.56% |  1.78% )   ( 141.235912s |  1.78% |  1.78% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.002106s |  0.00% |  0.00% )   ( 0.002160s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 74.274488s |  3.56% | 99.99% )   ( 70.616698s |  0.89% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000314s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p19
30.5.0:         ( 0.091458s |  0.00% |  0.12% )   ( 0.091072s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.091318s |  0.00% |  0.12% )   ( 0.090994s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091060s |  0.00% |  0.12% )   ( 0.090744s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.088868s |  0.00% |  0.11% )   ( 0.088526s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.095818s |  0.00% |  0.12% )   ( 0.095442s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000458s |  0.00% |  0.00% )   ( 0.000492s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008308s |  0.00% |  0.00% )   ( 0.009418s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000244s |  0.00% |  0.00% )   ( 0.000282s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000246s |  0.00% |  0.00% )   ( 0.000284s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009894s |  0.00% |  0.00% )   ( 0.011022s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p19
41.5.0:         ( 0.467384s |  0.02% |  0.02% )   ( 0.013498s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008912s |  0.00% |  0.00% )   ( 0.009966s |  0.00% |  0.00% )    	(56x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008538s |  0.00% |  0.00% )   ( 0.009610s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008046s |  0.00% |  0.00% )   ( 0.008772s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.008632s |  0.00% |  0.00% )   ( 0.009712s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.066588s |  0.00% |  0.00% )   ( 0.067456s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.028506s |  0.00% |  0.00% )   ( 0.010146s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009590s |  0.00% |  0.00% )   ( 0.010702s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p19
54.5.0:         ( 0.008100s |  0.00% |  0.00% )   ( 0.009178s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007690s |  0.00% |  0.00% )   ( 0.008746s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000374s |  0.00% |  0.00% )   ( 0.000428s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000370s |  0.00% |  0.00% )   ( 0.000420s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 73.131540s |  3.50% |  1.82% )   ( 69.933860s |  0.88% |  1.83% )    	(108x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.015876s |  0.00% |  0.02% )   ( 0.018024s |  0.00% |  0.02% )    	(108x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.358044s |  0.25% |  7.32% )   ( 4.842516s |  0.06% |  6.92% )    	(108x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.115308s |  0.43% | 12.46% )   ( 8.567220s |  0.10% | 12.25% )    	(108x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.577964s |  0.36% | 10.36% )   ( 7.094516s |  0.08% | 10.14% )    	(108x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.732680s |  0.41% | 11.94% )   ( 8.467008s |  0.10% | 12.10% )    	(108x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.716712s |  0.32% |  9.18% )   ( 6.229480s |  0.07% |  8.90% )    	(108x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.349104s |  0.20% |  5.94% )   ( 4.272500s |  0.05% |  6.10% )    	(108x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.224960s |  0.10% |  3.04% )   ( 2.165564s |  0.02% |  3.09% )    	(108x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.706292s |  0.22% |  6.43% )   ( 4.444896s |  0.05% |  6.35% )    	(108x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.998208s |  0.09% |  2.73% )   ( 1.908312s |  0.02% |  2.72% )    	(108x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.669680s |  0.27% |  7.75% )   ( 5.565460s |  0.07% |  7.95% )    	(108x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.249912s |  0.58% | 16.75% )   ( 12.145592s |  0.15% | 17.36% )    	(108x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.264072s |  0.10% |  3.09% )   ( 2.151524s |  0.02% |  3.07% )    	(108x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.152728s |  0.10% |  2.94% )   ( 2.061248s |  0.02% |  2.94% )    	(108x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007896s |  0.00% |  0.00% )   ( 0.008908s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007626s |  0.00% |  0.00% )   ( 0.008628s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008030s |  0.00% |  0.00% )   ( 0.009012s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000296s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017174s |  0.00% |  0.02% )   ( 0.017316s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000318s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 70.993516s |  3.40% |  1.70% )   ( 136.602290s |  1.72% |  1.72% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001904s |  0.00% |  0.00% )   ( 0.001950s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 70.991220s |  3.40% | 99.99% )   ( 68.299956s |  0.86% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000318s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000346s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p20
30.5.0:         ( 0.091932s |  0.00% |  0.12% )   ( 0.091610s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.092596s |  0.00% |  0.13% )   ( 0.092252s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091938s |  0.00% |  0.12% )   ( 0.091604s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.092486s |  0.00% |  0.13% )   ( 0.092146s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.091726s |  0.00% |  0.12% )   ( 0.091404s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000346s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.006280s |  0.00% |  0.00% )   ( 0.007074s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000310s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007338s |  0.00% |  0.00% )   ( 0.008166s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p20
41.5.0:         ( 0.059624s |  0.00% |  0.00% )   ( 0.008074s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006534s |  0.00% |  0.00% )   ( 0.007420s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.006010s |  0.00% |  0.00% )   ( 0.006810s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.005720s |  0.00% |  0.00% )   ( 0.006504s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005866s |  0.00% |  0.00% )   ( 0.006588s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.058086s |  0.00% |  0.00% )   ( 0.052750s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.012398s |  0.00% |  0.00% )   ( 0.007226s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006806s |  0.00% |  0.00% )   ( 0.007590s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p20
54.5.0:         ( 0.005716s |  0.00% |  0.00% )   ( 0.006490s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005344s |  0.00% |  0.00% )   ( 0.006074s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000290s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 70.307240s |  3.37% |  2.60% )   ( 67.669868s |  0.85% |  2.60% )    	(76x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.011400s |  0.00% |  0.01% )   ( 0.013052s |  0.00% |  0.01% )    	(76x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.743832s |  0.22% |  6.74% )   ( 4.469392s |  0.05% |  6.60% )    	(76x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.262244s |  0.39% | 11.75% )   ( 8.129268s |  0.10% | 12.01% )    	(76x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.961440s |  0.33% |  9.90% )   ( 6.519608s |  0.08% |  9.63% )    	(76x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 8.587084s |  0.41% | 12.21% )   ( 8.159240s |  0.10% | 12.05% )    	(76x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.732472s |  0.32% |  9.57% )   ( 6.400716s |  0.08% |  9.45% )    	(76x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.192008s |  0.20% |  5.96% )   ( 3.961736s |  0.05% |  5.85% )    	(76x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.881848s |  0.09% |  2.67% )   ( 1.757712s |  0.02% |  2.59% )    	(76x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.449028s |  0.21% |  6.32% )   ( 4.288508s |  0.05% |  6.33% )    	(76x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.602748s |  0.07% |  2.27% )   ( 1.499872s |  0.01% |  2.21% )    	(76x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.600984s |  0.26% |  7.96% )   ( 5.510356s |  0.06% |  8.14% )    	(76x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.899956s |  0.66% | 19.77% )   ( 13.739244s |  0.17% | 20.30% )    	(76x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.699652s |  0.08% |  2.41% )   ( 1.645008s |  0.02% |  2.43% )    	(76x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.682544s |  0.08% |  2.39% )   ( 1.576156s |  0.01% |  2.32% )    	(76x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005774s |  0.00% |  0.00% )   ( 0.006528s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005070s |  0.00% |  0.00% )   ( 0.005784s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005684s |  0.00% |  0.00% )   ( 0.006368s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000292s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.017746s |  0.00% |  0.02% )   ( 0.017888s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000392s |  0.00% |  0.00% )   ( 0.000428s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 66.812126s |  3.20% |  1.60% )   ( 128.406772s |  1.62% |  1.62% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.002248s |  0.00% |  0.00% )   ( 0.002288s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 66.809538s |  3.20% | 99.99% )   ( 64.202056s |  0.81% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000374s |  0.00% |  0.00% )   ( 0.000420s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p21
30.5.0:         ( 0.101622s |  0.00% |  0.15% )   ( 0.100762s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.102596s |  0.00% |  0.15% )   ( 0.101480s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.100048s |  0.00% |  0.14% )   ( 0.098968s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.103650s |  0.00% |  0.15% )   ( 0.102904s |  0.00% |  0.16% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.098610s |  0.00% |  0.14% )   ( 0.097856s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000266s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008842s |  0.00% |  0.00% )   ( 0.010006s |  0.00% |  0.00% )    	(62x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000302s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.010982s |  0.00% |  0.00% )   ( 0.012194s |  0.00% |  0.00% )    	(62x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p21
41.5.0:         ( 0.356658s |  0.01% |  0.01% )   ( 0.013692s |  0.00% |  0.00% )    	(62x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.010366s |  0.00% |  0.00% )   ( 0.011684s |  0.00% |  0.00% )    	(62x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.009162s |  0.00% |  0.00% )   ( 0.010392s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.008630s |  0.00% |  0.00% )   ( 0.009810s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.009230s |  0.00% |  0.00% )   ( 0.010442s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.072954s |  0.00% |  0.00% )   ( 0.073980s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.015724s |  0.00% |  0.00% )   ( 0.011154s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.011034s |  0.00% |  0.00% )   ( 0.012294s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p21
54.5.0:         ( 0.009146s |  0.00% |  0.00% )   ( 0.010366s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.008910s |  0.00% |  0.00% )   ( 0.010154s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000318s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 65.718260s |  3.15% |  1.63% )   ( 63.446620s |  0.80% |  1.64% )    	(120x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.017828s |  0.00% |  0.02% )   ( 0.020276s |  0.00% |  0.03% )    	(120x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.401128s |  0.21% |  6.69% )   ( 4.299516s |  0.05% |  6.77% )    	(120x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.327552s |  0.35% | 11.14% )   ( 7.037780s |  0.08% | 11.09% )    	(120x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.305648s |  0.30% |  9.59% )   ( 6.038992s |  0.07% |  9.51% )    	(120x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.095820s |  0.34% | 10.79% )   ( 6.932020s |  0.08% | 10.92% )    	(120x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.117416s |  0.29% |  9.30% )   ( 5.836636s |  0.07% |  9.19% )    	(120x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 3.994916s |  0.19% |  6.07% )   ( 3.945392s |  0.04% |  6.21% )    	(120x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.442364s |  0.11% |  3.71% )   ( 2.363160s |  0.02% |  3.72% )    	(120x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.361908s |  0.20% |  6.63% )   ( 4.011728s |  0.05% |  6.32% )    	(120x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.104940s |  0.10% |  3.20% )   ( 2.067428s |  0.02% |  3.25% )    	(120x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.628820s |  0.27% |  8.56% )   ( 5.427720s |  0.06% |  8.55% )    	(120x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.253448s |  0.54% | 17.12% )   ( 10.895828s |  0.13% | 17.17% )    	(120x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.364276s |  0.11% |  3.59% )   ( 2.321892s |  0.02% |  3.65% )    	(120x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.302196s |  0.11% |  3.50% )   ( 2.248252s |  0.02% |  3.54% )    	(120x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.008732s |  0.00% |  0.00% )   ( 0.009862s |  0.00% |  0.00% )    	(60x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.008584s |  0.00% |  0.00% )   ( 0.009774s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.009488s |  0.00% |  0.00% )   ( 0.010710s |  0.00% |  0.00% )    	(58x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000418s |  0.00% |  0.00% )   ( 0.000478s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000430s |  0.00% |  0.00% )   ( 0.000480s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.022752s |  0.00% |  0.03% )   ( 0.022922s |  0.00% |  0.03% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000340s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 68.422518s |  3.28% |  1.64% )   ( 130.697790s |  1.65% |  1.65% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.002096s |  0.00% |  0.00% )   ( 0.002154s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 68.420102s |  3.28% | 99.99% )   ( 65.347640s |  0.82% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000390s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p22
30.5.0:         ( 0.094984s |  0.00% |  0.13% )   ( 0.093054s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.095232s |  0.00% |  0.13% )   ( 0.094580s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.094118s |  0.00% |  0.13% )   ( 0.093426s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.100752s |  0.00% |  0.14% )   ( 0.100044s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.091292s |  0.00% |  0.13% )   ( 0.090750s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000288s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.008082s |  0.00% |  0.00% )   ( 0.009130s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000304s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000288s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009702s |  0.00% |  0.00% )   ( 0.010806s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p22
41.5.0:         ( 0.212576s |  0.01% |  0.01% )   ( 0.011578s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008386s |  0.00% |  0.00% )   ( 0.009480s |  0.00% |  0.00% )    	(54x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.008242s |  0.00% |  0.00% )   ( 0.009396s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007478s |  0.00% |  0.00% )   ( 0.008484s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.010462s |  0.00% |  0.00% )   ( 0.009288s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.070052s |  0.00% |  0.00% )   ( 0.064918s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007990s |  0.00% |  0.00% )   ( 0.008980s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009296s |  0.00% |  0.00% )   ( 0.010270s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p22
54.5.0:         ( 0.007434s |  0.00% |  0.00% )   ( 0.008462s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007488s |  0.00% |  0.00% )   ( 0.008504s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 67.533552s |  3.24% |  1.89% )   ( 64.659896s |  0.81% |  1.90% )    	(104x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.016080s |  0.00% |  0.02% )   ( 0.018212s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.618740s |  0.22% |  6.83% )   ( 4.332908s |  0.05% |  6.70% )    	(104x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.636488s |  0.36% | 11.30% )   ( 7.434172s |  0.09% | 11.49% )    	(104x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.646528s |  0.31% |  9.84% )   ( 6.211344s |  0.07% |  9.60% )    	(104x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.685888s |  0.36% | 11.38% )   ( 7.318792s |  0.09% | 11.31% )    	(104x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.242508s |  0.29% |  9.24% )   ( 5.980452s |  0.07% |  9.24% )    	(104x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 3.998836s |  0.19% |  5.92% )   ( 3.922720s |  0.04% |  6.06% )    	(104x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.286008s |  0.10% |  3.38% )   ( 2.113128s |  0.02% |  3.26% )    	(104x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.303608s |  0.20% |  6.37% )   ( 4.094008s |  0.05% |  6.33% )    	(104x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.898284s |  0.09% |  2.81% )   ( 1.818816s |  0.02% |  2.81% )    	(104x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.692256s |  0.27% |  8.42% )   ( 5.461988s |  0.06% |  8.44% )    	(104x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.198272s |  0.58% | 18.06% )   ( 11.876484s |  0.15% | 18.36% )    	(104x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.236252s |  0.10% |  3.31% )   ( 2.083060s |  0.02% |  3.22% )    	(104x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.073804s |  0.09% |  3.07% )   ( 1.993812s |  0.02% |  3.08% )    	(104x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007968s |  0.00% |  0.00% )   ( 0.008966s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.007418s |  0.00% |  0.00% )   ( 0.008424s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008216s |  0.00% |  0.00% )   ( 0.009242s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000286s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.016310s |  0.00% |  0.02% )   ( 0.016476s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000320s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 78.890798s |  3.78% |  1.89% )   ( 154.145444s |  1.94% |  1.94% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.002128s |  0.00% |  0.00% )   ( 0.002174s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 78.888348s |  3.78% | 99.99% )   ( 77.071454s |  0.97% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000326s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000370s |  0.00% |  0.00% )   ( 0.000406s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p23
30.5.0:         ( 0.086486s |  0.00% |  0.10% )   ( 0.086170s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.091042s |  0.00% |  0.11% )   ( 0.090696s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091084s |  0.00% |  0.11% )   ( 0.090754s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091134s |  0.00% |  0.11% )   ( 0.090806s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.090870s |  0.00% |  0.11% )   ( 0.090550s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000282s |  0.00% |  0.00% )   ( 0.000308s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.005744s |  0.00% |  0.00% )   ( 0.006512s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000320s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000258s |  0.00% |  0.00% )   ( 0.000294s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000294s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007174s |  0.00% |  0.00% )   ( 0.007944s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p23
41.5.0:         ( 0.316744s |  0.01% |  0.02% )   ( 0.009302s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006534s |  0.00% |  0.00% )   ( 0.007334s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.006626s |  0.00% |  0.00% )   ( 0.007344s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.005784s |  0.00% |  0.00% )   ( 0.006488s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.006106s |  0.00% |  0.00% )   ( 0.006876s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.050856s |  0.00% |  0.00% )   ( 0.045368s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008606s |  0.00% |  0.00% )   ( 0.006700s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006424s |  0.00% |  0.00% )   ( 0.007170s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p23
54.5.0:         ( 0.011888s |  0.00% |  0.00% )   ( 0.006636s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005542s |  0.00% |  0.00% )   ( 0.006338s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000278s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000252s |  0.00% |  0.00% )   ( 0.000286s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 77.969312s |  3.74% |  2.60% )   ( 76.465344s |  0.96% |  2.61% )    	(76x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.011400s |  0.00% |  0.01% )   ( 0.012832s |  0.00% |  0.01% )    	(76x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.469688s |  0.26% |  7.01% )   ( 5.387024s |  0.06% |  7.04% )    	(76x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 10.492980s |  0.50% | 13.45% )   ( 10.323480s |  0.13% | 13.50% )    	(76x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 8.037300s |  0.38% | 10.30% )   ( 7.906980s |  0.09% | 10.34% )    	(76x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 10.435996s |  0.50% | 13.38% )   ( 10.246196s |  0.12% | 13.39% )    	(76x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.896064s |  0.37% | 10.12% )   ( 7.742024s |  0.09% | 10.12% )    	(76x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 5.025884s |  0.24% |  6.44% )   ( 4.889580s |  0.06% |  6.39% )    	(76x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.908228s |  0.09% |  2.44% )   ( 1.845100s |  0.02% |  2.41% )    	(76x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 5.158560s |  0.24% |  6.61% )   ( 5.040852s |  0.06% |  6.59% )    	(76x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.628672s |  0.07% |  2.08% )   ( 1.516672s |  0.01% |  1.98% )    	(76x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.504728s |  0.26% |  7.06% )   ( 5.404232s |  0.06% |  7.06% )    	(76x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 13.003432s |  0.62% | 16.67% )   ( 12.840836s |  0.16% | 16.79% )    	(76x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.718636s |  0.08% |  2.20% )   ( 1.711832s |  0.02% |  2.23% )    	(76x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.677744s |  0.08% |  2.15% )   ( 1.597704s |  0.02% |  2.08% )    	(76x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005704s |  0.00% |  0.00% )   ( 0.006438s |  0.00% |  0.00% )    	(38x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005462s |  0.00% |  0.00% )   ( 0.006218s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005910s |  0.00% |  0.00% )   ( 0.006642s |  0.00% |  0.00% )    	(36x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.010422s |  0.00% |  0.01% )   ( 0.010582s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000322s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 68.414326s |  3.28% |  1.64% )   ( 132.940954s |  1.67% |  1.67% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.002150s |  0.00% |  0.00% )   ( 0.002192s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 68.411858s |  3.28% | 99.99% )   ( 66.469202s |  0.83% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000326s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p24
30.5.0:         ( 0.091176s |  0.00% |  0.13% )   ( 0.090664s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.090968s |  0.00% |  0.13% )   ( 0.090586s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.091140s |  0.00% |  0.13% )   ( 0.090800s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.091090s |  0.00% |  0.13% )   ( 0.090742s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.091846s |  0.00% |  0.13% )   ( 0.091452s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000286s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007354s |  0.00% |  0.00% )   ( 0.008282s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000304s |  0.00% |  0.00% )   ( 0.000346s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000268s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008656s |  0.00% |  0.00% )   ( 0.009610s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p24
41.5.0:         ( 0.345944s |  0.01% |  0.02% )   ( 0.011000s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008108s |  0.00% |  0.00% )   ( 0.009056s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007730s |  0.00% |  0.00% )   ( 0.008744s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.010110s |  0.00% |  0.00% )   ( 0.008166s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007494s |  0.00% |  0.00% )   ( 0.008424s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.059220s |  0.00% |  0.00% )   ( 0.060012s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009990s |  0.00% |  0.00% )   ( 0.009002s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008834s |  0.00% |  0.00% )   ( 0.009830s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p24
54.5.0:         ( 0.007020s |  0.00% |  0.00% )   ( 0.007966s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006920s |  0.00% |  0.00% )   ( 0.007886s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000280s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 67.427144s |  3.23% |  2.05% )   ( 65.812584s |  0.83% |  2.06% )    	(96x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.013780s |  0.00% |  0.02% )   ( 0.015724s |  0.00% |  0.02% )    	(96x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.427880s |  0.21% |  6.56% )   ( 4.321860s |  0.05% |  6.56% )    	(96x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 8.111988s |  0.38% | 12.03% )   ( 7.695224s |  0.09% | 11.69% )    	(96x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.367796s |  0.30% |  9.44% )   ( 6.279372s |  0.07% |  9.54% )    	(96x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.681748s |  0.36% | 11.39% )   ( 7.614928s |  0.09% | 11.57% )    	(96x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.186512s |  0.29% |  9.17% )   ( 6.112992s |  0.07% |  9.28% )    	(96x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.037880s |  0.19% |  5.98% )   ( 3.951880s |  0.04% |  6.00% )    	(96x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.205800s |  0.10% |  3.27% )   ( 2.010832s |  0.02% |  3.05% )    	(96x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.256512s |  0.20% |  6.31% )   ( 4.178944s |  0.05% |  6.34% )    	(96x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.749600s |  0.08% |  2.59% )   ( 1.732440s |  0.02% |  2.63% )    	(96x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.600060s |  0.26% |  8.30% )   ( 5.530092s |  0.06% |  8.40% )    	(96x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 12.618752s |  0.60% | 18.71% )   ( 12.471628s |  0.15% | 18.95% )    	(96x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.097324s |  0.10% |  3.11% )   ( 1.981508s |  0.02% |  3.01% )    	(96x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.071512s |  0.09% |  3.07% )   ( 1.915160s |  0.02% |  2.91% )    	(96x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007032s |  0.00% |  0.00% )   ( 0.007862s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006842s |  0.00% |  0.00% )   ( 0.007780s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007376s |  0.00% |  0.00% )   ( 0.008314s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000290s |  0.00% |  0.00% )   ( 0.000332s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.016602s |  0.00% |  0.02% )   ( 0.016742s |  0.00% |  0.02% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000318s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 73.519428s |  3.52% |  1.76% )   ( 142.961398s |  1.80% |  1.80% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.002158s |  0.00% |  0.00% )   ( 0.002212s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 73.516968s |  3.52% | 99.99% )   ( 71.479422s |  0.90% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000354s |  0.00% |  0.00% )   ( 0.000404s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000334s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p25
30.5.0:         ( 0.095928s |  0.00% |  0.13% )   ( 0.095564s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.096536s |  0.00% |  0.13% )   ( 0.096134s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.093996s |  0.00% |  0.12% )   ( 0.093680s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.106194s |  0.00% |  0.14% )   ( 0.105798s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.083500s |  0.00% |  0.11% )   ( 0.083218s |  0.00% |  0.11% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000276s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.004718s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000308s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000266s |  0.00% |  0.00% )   ( 0.000306s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000274s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006054s |  0.00% |  0.00% )   ( 0.006708s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p25
41.5.0:         ( 0.201232s |  0.00% |  0.01% )   ( 0.007812s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005088s |  0.00% |  0.00% )   ( 0.005710s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.004698s |  0.00% |  0.00% )   ( 0.005352s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.004496s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.005580s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038542s |  0.00% |  0.00% )   ( 0.038058s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004764s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005480s |  0.00% |  0.00% )   ( 0.006114s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p25
54.5.0:         ( 0.004536s |  0.00% |  0.00% )   ( 0.005130s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004640s |  0.00% |  0.00% )   ( 0.005312s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000280s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000306s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000296s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 72.725260s |  3.49% |  3.29% )   ( 70.874720s |  0.89% |  3.30% )    	(60x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.009524s |  0.00% |  0.01% )   ( 0.010796s |  0.00% |  0.01% )    	(60x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.711176s |  0.22% |  6.47% )   ( 4.650336s |  0.05% |  6.56% )    	(60x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.145120s |  0.43% | 12.57% )   ( 8.905996s |  0.11% | 12.56% )    	(60x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.944448s |  0.33% |  9.54% )   ( 6.794336s |  0.08% |  9.58% )    	(60x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.194072s |  0.44% | 12.64% )   ( 8.982584s |  0.11% | 12.67% )    	(60x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.684956s |  0.32% |  9.19% )   ( 6.554332s |  0.08% |  9.24% )    	(60x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.262648s |  0.20% |  5.86% )   ( 4.140648s |  0.05% |  5.84% )    	(60x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 1.533300s |  0.07% |  2.10% )   ( 1.514692s |  0.01% |  2.13% )    	(60x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.676900s |  0.22% |  6.43% )   ( 4.542380s |  0.05% |  6.40% )    	(60x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.265568s |  0.06% |  1.74% )   ( 1.264580s |  0.01% |  1.78% )    	(60x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.738440s |  0.27% |  7.89% )   ( 5.558256s |  0.07% |  7.84% )    	(60x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 15.479048s |  0.74% | 21.28% )   ( 15.183092s |  0.19% | 21.42% )    	(60x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.534912s |  0.07% |  2.11% )   ( 1.430700s |  0.01% |  2.01% )    	(60x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.545148s |  0.07% |  2.12% )   ( 1.341992s |  0.01% |  1.89% )    	(60x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004448s |  0.00% |  0.00% )   ( 0.005044s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004288s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004658s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009966s |  0.00% |  0.01% )   ( 0.010108s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000302s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 68.525216s |  3.28% |  1.64% )   ( 127.678906s |  1.61% |  1.61% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.002212s |  0.00% |  0.00% )   ( 0.002260s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 68.522664s |  3.28% | 99.99% )   ( 63.838134s |  0.80% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000446s |  0.00% |  0.00% )   ( 0.000494s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000444s |  0.00% |  0.00% )   ( 0.000500s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p26
30.5.0:         ( 0.097528s |  0.00% |  0.14% )   ( 0.097102s |  0.00% |  0.15% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.089850s |  0.00% |  0.13% )   ( 0.089466s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.087840s |  0.00% |  0.12% )   ( 0.087480s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.094628s |  0.00% |  0.13% )   ( 0.094244s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.096408s |  0.00% |  0.14% )   ( 0.093388s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000370s |  0.00% |  0.00% )   ( 0.000422s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007902s |  0.00% |  0.00% )   ( 0.008938s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000378s |  0.00% |  0.00% )   ( 0.000424s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000262s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000318s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.009554s |  0.00% |  0.00% )   ( 0.010624s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p26
41.5.0:         ( 0.342704s |  0.01% |  0.01% )   ( 0.011000s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007912s |  0.00% |  0.00% )   ( 0.008960s |  0.00% |  0.00% )    	(52x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007630s |  0.00% |  0.00% )   ( 0.008620s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.007374s |  0.00% |  0.00% )   ( 0.008424s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007698s |  0.00% |  0.00% )   ( 0.008658s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.062114s |  0.00% |  0.00% )   ( 0.062938s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007974s |  0.00% |  0.00% )   ( 0.008988s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.009156s |  0.00% |  0.00% )   ( 0.010150s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p26
54.5.0:         ( 0.007300s |  0.00% |  0.00% )   ( 0.008308s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.007070s |  0.00% |  0.00% )   ( 0.007944s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 67.536260s |  3.24% |  1.97% )   ( 63.173600s |  0.79% |  1.97% )    	(100x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.015156s |  0.00% |  0.02% )   ( 0.017288s |  0.00% |  0.02% )    	(100x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 4.473604s |  0.21% |  6.62% )   ( 4.250756s |  0.05% |  6.72% )    	(100x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 7.678848s |  0.36% | 11.36% )   ( 7.320004s |  0.09% | 11.58% )    	(100x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 6.422000s |  0.30% |  9.50% )   ( 6.068296s |  0.07% |  9.60% )    	(100x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 7.986308s |  0.38% | 11.82% )   ( 7.306664s |  0.09% | 11.56% )    	(100x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 6.659824s |  0.31% |  9.86% )   ( 5.901936s |  0.07% |  9.34% )    	(100x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.393340s |  0.21% |  6.50% )   ( 3.904720s |  0.04% |  6.18% )    	(100x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.104420s |  0.10% |  3.11% )   ( 2.023904s |  0.02% |  3.20% )    	(100x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.251724s |  0.20% |  6.29% )   ( 3.994640s |  0.05% |  6.32% )    	(100x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 2.025184s |  0.09% |  2.99% )   ( 1.784060s |  0.02% |  2.82% )    	(100x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 5.953532s |  0.28% |  8.81% )   ( 5.430612s |  0.06% |  8.59% )    	(100x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.472560s |  0.55% | 16.98% )   ( 11.258848s |  0.14% | 17.82% )    	(100x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 2.008168s |  0.09% |  2.97% )   ( 1.994468s |  0.02% |  3.15% )    	(100x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 2.091592s |  0.10% |  3.09% )   ( 1.917404s |  0.02% |  3.03% )    	(100x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007606s |  0.00% |  0.00% )   ( 0.008600s |  0.00% |  0.00% )    	(50x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006886s |  0.00% |  0.00% )   ( 0.007832s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008136s |  0.00% |  0.00% )   ( 0.009184s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.009972s |  0.00% |  0.01% )   ( 0.010104s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000340s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 73.713494s |  3.53% |  1.76% )   ( 144.153902s |  1.82% |  1.82% )    	(2x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.002186s |  0.00% |  0.00% )   ( 0.002228s |  0.00% |  0.00% )    	(2x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 73.710978s |  3.53% | 99.99% )   ( 72.075652s |  0.91% | 49.99% )    	(2x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000470s |  0.00% |  0.00% )   ( 0.000524s |  0.00% |  0.00% )    	(2x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.ZByplJ"
26.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000400s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p27
30.5.0:         ( 0.131554s |  0.00% |  0.17% )   ( 0.097050s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.091322s |  0.00% |  0.12% )   ( 0.091016s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1450659 ${BASHPID}' INT
33.5.0:         ( 0.093796s |  0.00% |  0.12% )   ( 0.093396s |  0.00% |  0.12% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1450659 ${BASHPID}' TERM
34.5.0:         ( 0.099486s |  0.00% |  0.13% )   ( 0.099134s |  0.00% |  0.13% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1450659 ${BASHPID}' HUP
35.5.0:         ( 0.105694s |  0.00% |  0.14% )   ( 0.105234s |  0.00% |  0.14% )    	(2x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.000266s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   true
38.5.0:         ( 0.007398s |  0.00% |  0.00% )   ( 0.008404s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000302s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.ZByplJ"/.nLines
38.5.2:         ( 0.000248s |  0.00% |  0.00% )   ( 0.000284s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000254s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.014652s |  0.00% |  0.00% )   ( 0.010080s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p27
41.5.0:         ( 0.242662s |  0.01% |  0.01% )   ( 0.010660s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007710s |  0.00% |  0.00% )   ( 0.008616s |  0.00% |  0.00% )    	(48x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.quit ]]
46.5.0:         ( 0.007408s |  0.00% |  0.00% )   ( 0.008402s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.done ]]
46.5.1:         ( 0.006774s |  0.00% |  0.00% )   ( 0.007668s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007470s |  0.00% |  0.00% )   ( 0.008396s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.072764s |  0.00% |  0.00% )   ( 0.061552s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011548s |  0.00% |  0.00% )   ( 0.008406s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008554s |  0.00% |  0.00% )   ( 0.009506s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.ZByplJ"/.wait/p27
54.5.0:         ( 0.006766s |  0.00% |  0.00% )   ( 0.007682s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006632s |  0.00% |  0.00% )   ( 0.007564s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000300s |  0.00% |  0.00% )   ( 0.000332s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000284s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 72.752300s |  3.49% |  2.14% )   ( 71.395164s |  0.90% |  2.15% )    	(92x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.013512s |  0.00% |  0.01% )   ( 0.015368s |  0.00% |  0.02% )    	(92x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 5.000592s |  0.23% |  6.87% )   ( 4.971520s |  0.06% |  6.96% )    	(92x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 9.168936s |  0.44% | 12.60% )   ( 9.068200s |  0.11% | 12.70% )    	(92x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 7.450012s |  0.35% | 10.24% )   ( 7.280188s |  0.09% | 10.19% )    	(92x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 9.097916s |  0.43% | 12.50% )   ( 9.024028s |  0.11% | 12.63% )    	(92x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 7.121396s |  0.34% |  9.78% )   ( 6.995780s |  0.08% |  9.79% )    	(92x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 4.579348s |  0.21% |  6.29% )   ( 4.383768s |  0.05% |  6.14% )    	(92x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 2.057524s |  0.09% |  2.82% )   ( 1.993712s |  0.02% |  2.79% )    	(92x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 4.869852s |  0.23% |  6.69% )   ( 4.755332s |  0.06% |  6.66% )    	(92x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 1.942116s |  0.09% |  2.66% )   ( 1.787264s |  0.02% |  2.50% )    	(92x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 6.208004s |  0.29% |  8.53% )   ( 6.039196s |  0.07% |  8.45% )    	(92x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 11.395124s |  0.54% | 15.66% )   ( 11.347384s |  0.14% | 15.89% )    	(92x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 1.953832s |  0.09% |  2.68% )   ( 1.904760s |  0.02% |  2.66% )    	(92x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 1.894136s |  0.09% |  2.60% )   ( 1.828664s |  0.02% |  2.56% )    	(92x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007364s |  0.00% |  0.00% )   ( 0.008328s |  0.00% |  0.00% )    	(46x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006446s |  0.00% |  0.00% )   ( 0.007342s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.009238s |  0.00% |  0.00% )   ( 0.008064s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   break
-44.5.0:        ( 0.010368s |  0.00% |  0.01% )   ( 0.010510s |  0.00% |  0.01% )    	(2x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000330s |  0.00% |  0.00% )   ( 0.000370s |  0.00% |  0.00% )    	(2x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001403s |  0.00% |  0.00% )   ( 0.001420s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.375405s |  1.16% |  1.16% )   ( 0.001757s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000295s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000286s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.047492s |  0.00% |  0.00% )   ( 0.047743s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.ZByplJ"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.ZByplJ"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1450673  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.ZByplJ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1084.2.1:       ( 0.000001s |  0.00% |  0.00% )   ( 0.000001s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>1
1085.2.0:       ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005712s |  0.00% |  0.00% )   ( 0.003374s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.ZByplJ" 2>/dev/null

WALL CLOCK TIME: 0.081830s
TOTAL RUN TIME:  2083.635678s
TOTAL CPU TIME:  7915.694776s

