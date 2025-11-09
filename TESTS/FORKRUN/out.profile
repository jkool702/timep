LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 550.585711s | 50.11% )            ( 498.480778s | 49.86% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000696s |  0.00% |  0.00% )   ( 0.000367s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 550.585015s | 50.11% | 99.99% )   ( 498.480411s | 49.86% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.043893s |  0.00% |  0.00% )   ( 0.043319s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001191s |  0.00% |  0.00% )   ( 0.001059s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008245s |  0.00% |  0.00% )   ( 0.008245s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.008245s |  0.00% |100.00% )   ( 0.008245s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002993s |  0.00% |  0.00% )   ( 0.003049s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.027040s |  0.00% |  0.00% )   ( 0.001027s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 550.492655s | 50.10% | 99.98% )   ( 498.417143s | 49.85% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001452s |  0.00% |  0.00% )   ( 0.001656s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001452s |  0.00% |100.00% )   ( 0.001656s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000153s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000153s |  0.00% |100.00% )   ( 0.000178s |  0.00% |100.00% )    	(1x)	│  │  │  └─  :
238.3.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.008758s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000243s |  0.00% |  0.00% )   ( 0.000255s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003074s |  0.00% |  0.00% )   ( 0.003126s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000108s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000889s |  0.00% |  0.00% )   ( 0.001026s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000075s |  0.00% |  8.43% )   ( 0.000083s |  0.00% |  8.08% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000073s |  0.00% |  8.21% )   ( 0.000085s |  0.00% |  8.28% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000069s |  0.00% |  7.76% )   ( 0.000081s |  0.00% |  7.89% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  7.98% )   ( 0.000082s |  0.00% |  7.99% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.42% )   ( 0.000078s |  0.00% |  7.60% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  7.76% )   ( 0.000082s |  0.00% |  7.99% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000069s |  0.00% |  7.76% )   ( 0.000077s |  0.00% |  7.50% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000123s |  0.00% | 13.83% )   ( 0.000136s |  0.00% | 13.25% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.42% )   ( 0.000078s |  0.00% |  7.60% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000066s |  0.00% |  7.42% )   ( 0.000077s |  0.00% |  7.50% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000068s |  0.00% |  7.64% )   ( 0.000080s |  0.00% |  7.79% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000074s |  0.00% |  8.32% )   ( 0.000087s |  0.00% |  8.47% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.007883s |  0.00% |  0.00% )   ( 0.007948s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002993s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000301s |  0.00% | 10.05% )   ( 0.000317s |  0.00% | 10.36% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002692s |  0.00% | 89.94% )   ( 0.002740s |  0.00% | 89.63% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003578s |  0.00% |  0.00% )   ( 0.003698s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000116s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000116s |  0.00% |100.00% )   ( 0.000132s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001333s |  0.00% |  0.00% )   ( 0.001407s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000540s |  0.00% |  0.00% )   ( 0.000553s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.133327s |  0.01% |  0.02% )   ( 0.133072s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000085s |  0.00% |  0.06% )   ( 0.000097s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020785s |  0.00% | 15.58% )   ( 0.020725s |  0.00% | 15.57% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023617s |  0.00% | 17.71% )   ( 0.023564s |  0.00% | 17.70% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023596s |  0.00% | 17.69% )   ( 0.023540s |  0.00% | 17.68% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023541s |  0.00% | 17.65% )   ( 0.023490s |  0.00% | 17.65% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023442s |  0.00% | 17.58% )   ( 0.023389s |  0.00% | 17.57% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000076s |  0.00% |  0.05% )   ( 0.000084s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.017954s |  0.00% | 13.46% )   ( 0.017917s |  0.00% | 13.46% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000096s |  0.00% |  0.07% )   ( 0.000109s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000067s |  0.00% |  0.05% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000401s |  0.00% |  0.00% )   ( 0.000425s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.325530s |  0.39% |  0.78% )   ( 1.822970s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.025727s |  0.00% |  0.59% )   ( 0.025674s |  0.00% |  1.40% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023532s |  0.00% |  0.54% )   ( 0.023487s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023610s |  0.00% |  0.54% )   ( 0.023562s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023446s |  0.00% |  0.54% )   ( 0.023403s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023349s |  0.00% |  0.53% )   ( 0.023293s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.088770s |  0.00% |  0.00% )   ( 0.101465s |  0.01% |  0.00% )    	(676x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.805661s |  0.25% |  0.09% )   ( 0.121204s |  0.01% |  0.00% )    	(675x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001275s |  0.00% |  0.00% )   ( 0.001426s |  0.00% |  0.00% )    	(8x)	│  │  │  │   continue
521.4.0:        ( 0.086758s |  0.00% |  0.00% )   ( 0.099495s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.087582s |  0.00% |  0.00% )   ( 0.100621s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.086521s |  0.00% |  0.00% )   ( 0.099342s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.093128s |  0.00% |  0.00% )   ( 0.102845s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090791s |  0.00% |  0.00% )   ( 0.103560s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086585s |  0.00% |  0.00% )   ( 0.099454s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086399s |  0.00% |  0.00% )   ( 0.099277s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.086965s |  0.00% |  0.00% )   ( 0.099729s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005838s |  0.00% |  0.13% )   ( 0.006277s |  0.00% |  0.34% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002557s |  0.00% |  0.05% )   ( 0.002903s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002557s |  0.00% |100.00% )   ( 0.002903s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086250s |  0.00% |  0.00% )   ( 0.099101s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085786s |  0.00% |  0.00% )   ( 0.098596s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.083987s |  0.00% |  0.00% )   ( 0.096407s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.089967s |  0.00% |  0.00% )   ( 0.102951s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.086812s |  0.00% |  0.00% )   ( 0.099580s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.086326s |  0.00% |  0.00% )   ( 0.099040s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002994s |  0.00% |  0.00% )   ( 0.003421s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.003028s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.052849s |  0.00% |  0.05% )   ( 0.042601s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003167s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003067s |  0.00% |  0.00% )   ( 0.003498s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.002970s |  0.00% |  0.00% )   ( 0.003374s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000223s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006902s |  0.00% |  0.15% )   ( 0.006987s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/pAuto
598.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.073256s |  0.00% |  0.01% )   ( 0.073421s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006122s |  0.00% |  0.00% )   ( 0.007006s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000439s |  0.00% |  7.17% )   ( 0.000476s |  0.00% |  6.79% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000068s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000080s |  0.00% |  1.30% )   ( 0.000091s |  0.00% |  1.29% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000218s |  0.00% |  3.56% )   ( 0.000231s |  0.00% |  3.29% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000072s |  0.00% |  1.17% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000065s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000074s |  0.00% |  1.20% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000072s |  0.00% |  1.17% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000067s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000068s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000070s |  0.00% |  1.14% )   ( 0.000079s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000070s |  0.00% |  1.14% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000073s |  0.00% |  1.19% )   ( 0.000084s |  0.00% |  1.19% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000068s |  0.00% |  1.11% )   ( 0.000079s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000065s |  0.00% |  1.06% )   ( 0.000076s |  0.00% |  1.08% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000075s |  0.00% |  1.22% )   ( 0.000086s |  0.00% |  1.22% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000067s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000067s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.05% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000097s |  0.00% |  1.58% )   ( 0.000107s |  0.00% |  1.52% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000075s |  0.00% |  1.22% )   ( 0.000086s |  0.00% |  1.22% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000072s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.42% )   ( 0.000098s |  0.00% |  1.39% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000078s |  0.00% |  1.27% )   ( 0.000090s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000078s |  0.00% |  1.27% )   ( 0.000089s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000084s |  0.00% |  1.37% )   ( 0.000095s |  0.00% |  1.35% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000091s |  0.00% |  1.48% )   ( 0.000102s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000098s |  0.00% |  1.60% )   ( 0.000107s |  0.00% |  1.52% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000075s |  0.00% |  1.22% )   ( 0.000087s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000087s |  0.00% |  1.42% )   ( 0.000099s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000095s |  0.00% |  1.55% )   ( 0.000107s |  0.00% |  1.52% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000063s |  0.00% |  1.02% )   ( 0.000074s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000065s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000063s |  0.00% |  1.02% )   ( 0.000074s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000085s |  0.00% |  1.38% )   ( 0.000093s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000073s |  0.00% |  1.19% )   ( 0.000085s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.11% )   ( 0.000079s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000089s |  0.00% |  1.45% )   ( 0.000100s |  0.00% |  1.42% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000063s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000083s |  0.00% |  1.35% )   ( 0.000095s |  0.00% |  1.35% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000070s |  0.00% |  1.14% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000079s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000066s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000087s |  0.00% |  1.42% )   ( 0.000098s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000088s |  0.00% |  1.43% )   ( 0.000097s |  0.00% |  1.38% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.12% )   ( 0.000081s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000086s |  0.00% |  1.40% )   ( 0.000099s |  0.00% |  1.41% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000299s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023905s |  0.00% |  0.00% )   ( 0.023859s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023950s |  0.00% |  0.00% )   ( 0.023878s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023699s |  0.00% |  0.00% )   ( 0.166612s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023128s |  0.00% |  0.00% )   ( 0.023076s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000081s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003227s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.003069s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 20.436614s |  1.86% |  3.71% )   ( 19.477363s |  1.94% |  3.90% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000610s |  0.00% |  0.00% )   ( 0.000640s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 20.435917s |  1.85% | 99.99% )   ( 19.476623s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p0
30.5.0:         ( 0.023144s |  0.00% |  0.11% )   ( 0.023105s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023542s |  0.00% |  0.11% )   ( 0.023500s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023698s |  0.00% |  0.11% )   ( 0.023658s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.023987s |  0.00% |  0.11% )   ( 0.023946s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023924s |  0.00% |  0.11% )   ( 0.023883s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003153s |  0.00% |  0.00% )   ( 0.003508s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003660s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p0
41.5.0:         ( 0.399222s |  0.03% |  0.09% )   ( 0.005251s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003441s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003183s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.002898s |  0.00% |  0.00% )   ( 0.003214s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003470s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022279s |  0.00% |  0.00% )   ( 0.022612s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002804s |  0.00% |  0.00% )   ( 0.003191s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002773s |  0.00% |  0.00% )   ( 0.003147s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003118s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003546s |  0.00% |  0.00% )   ( 0.003945s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p0
66.5.0:         ( 0.002741s |  0.00% |  0.00% )   ( 0.003130s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002621s |  0.00% |  0.00% )   ( 0.002991s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 19.839223s |  1.80% |  4.85% )   ( 19.269156s |  1.92% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005778s |  0.00% |  0.02% )   ( 0.003151s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.413309s |  0.12% |  7.12% )   ( 1.336051s |  0.13% |  6.93% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.630511s |  0.23% | 13.25% )   ( 2.584128s |  0.25% | 13.41% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.076439s |  0.18% | 10.46% )   ( 1.988405s |  0.19% | 10.31% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.612111s |  0.23% | 13.16% )   ( 2.563361s |  0.25% | 13.30% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.947906s |  0.17% |  9.81% )   ( 1.922225s |  0.19% |  9.97% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.312516s |  0.11% |  6.61% )   ( 1.257109s |  0.12% |  6.52% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501139s |  0.04% |  2.52% )   ( 0.471984s |  0.04% |  2.44% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.306702s |  0.11% |  6.58% )   ( 1.284373s |  0.12% |  6.66% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.402527s |  0.03% |  2.02% )   ( 0.390618s |  0.03% |  2.02% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.413286s |  0.12% |  7.12% )   ( 1.361979s |  0.13% |  7.06% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.287929s |  0.29% | 16.57% )   ( 3.255512s |  0.32% | 16.89% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.497249s |  0.04% |  2.50% )   ( 0.430685s |  0.04% |  2.23% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.431821s |  0.03% |  2.17% )   ( 0.419575s |  0.04% |  2.17% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003289s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004351s |  0.00% |  0.00% )   ( 0.003021s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002869s |  0.00% |  0.00% )   ( 0.003232s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005097s |  0.00% |  0.02% )   ( 0.005186s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.003039s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 21.084586s |  1.91% |  3.83% )   ( 20.031401s |  2.00% |  4.01% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000594s |  0.00% |  0.00% )   ( 0.000609s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 21.083901s |  1.91% | 99.99% )   ( 20.030692s |  2.00% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000394s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p1
30.5.0:         ( 0.023449s |  0.00% |  0.11% )   ( 0.023410s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023700s |  0.00% |  0.11% )   ( 0.023660s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023844s |  0.00% |  0.11% )   ( 0.023802s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024058s |  0.00% |  0.11% )   ( 0.023997s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023962s |  0.00% |  0.11% )   ( 0.023923s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004675s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000244s |  0.00% |  0.00% )   ( 0.000275s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000276s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005177s |  0.00% |  0.00% )   ( 0.005683s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p1
41.5.0:         ( 0.448019s |  0.04% |  0.07% )   ( 0.007294s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005004s |  0.00% |  0.00% )   ( 0.005620s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.004945s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003985s |  0.00% |  0.00% )   ( 0.004525s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004424s |  0.00% |  0.00% )   ( 0.004988s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034926s |  0.00% |  0.00% )   ( 0.033373s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004403s |  0.00% |  0.00% )   ( 0.004951s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005105s |  0.00% |  0.00% )   ( 0.005712s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p1
66.5.0:         ( 0.004137s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 20.403463s |  1.85% |  3.45% )   ( 19.785054s |  1.97% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004060s |  0.00% |  0.01% )   ( 0.004637s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.469022s |  0.13% |  7.19% )   ( 1.416445s |  0.14% |  7.15% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.373766s |  0.21% | 11.63% )   ( 2.313929s |  0.23% | 11.69% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.930860s |  0.17% |  9.46% )   ( 1.826118s |  0.18% |  9.22% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.350839s |  0.21% | 11.52% )   ( 2.247919s |  0.22% | 11.36% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.828164s |  0.16% |  8.96% )   ( 1.811028s |  0.18% |  9.15% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.301316s |  0.11% |  6.37% )   ( 1.283068s |  0.12% |  6.48% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.613586s |  0.05% |  3.00% )   ( 0.586317s |  0.05% |  2.96% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.334407s |  0.12% |  6.54% )   ( 1.316758s |  0.13% |  6.65% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.548231s |  0.04% |  2.68% )   ( 0.505756s |  0.05% |  2.55% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.675018s |  0.15% |  8.20% )   ( 1.604393s |  0.16% |  8.10% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.816733s |  0.34% | 18.70% )   ( 3.736408s |  0.37% | 18.88% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.597593s |  0.05% |  2.92% )   ( 0.581909s |  0.05% |  2.94% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.559868s |  0.05% |  2.74% )   ( 0.550369s |  0.05% |  2.78% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004573s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005668s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004977s |  0.00% |  0.02% )   ( 0.005057s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.962984s |  1.63% |  3.26% )   ( 17.042125s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000633s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.962281s |  1.63% | 99.99% )   ( 17.041393s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p2
30.5.0:         ( 0.023428s |  0.00% |  0.13% )   ( 0.023390s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023795s |  0.00% |  0.13% )   ( 0.023754s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023992s |  0.00% |  0.13% )   ( 0.023948s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024016s |  0.00% |  0.13% )   ( 0.023977s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023854s |  0.00% |  0.13% )   ( 0.023811s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004186s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003912s |  0.00% |  0.00% )   ( 0.004437s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004797s |  0.00% |  0.00% )   ( 0.005328s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p2
41.5.0:         ( 0.338736s |  0.03% |  0.06% )   ( 0.006265s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007251s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030830s |  0.00% |  0.00% )   ( 0.031269s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004268s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004148s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004639s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p2
66.5.0:         ( 0.006780s |  0.00% |  0.00% )   ( 0.004277s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003688s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.392367s |  1.58% |  3.72% )   ( 16.802219s |  1.68% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003837s |  0.00% |  0.02% )   ( 0.004351s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.124761s |  0.10% |  6.46% )   ( 1.113445s |  0.11% |  6.62% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.959590s |  0.17% | 11.26% )   ( 1.930963s |  0.19% | 11.49% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.667004s |  0.15% |  9.58% )   ( 1.620934s |  0.16% |  9.64% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.964737s |  0.17% | 11.29% )   ( 1.912093s |  0.19% | 11.38% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.630350s |  0.14% |  9.37% )   ( 1.563454s |  0.15% |  9.30% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.018058s |  0.09% |  5.85% )   ( 1.009531s |  0.10% |  6.00% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551510s |  0.05% |  3.17% )   ( 0.531095s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.160080s |  0.10% |  6.67% )   ( 1.090435s |  0.10% |  6.48% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.490574s |  0.04% |  2.82% )   ( 0.454469s |  0.04% |  2.70% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.466159s |  0.13% |  8.42% )   ( 1.401699s |  0.14% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.288367s |  0.29% | 18.90% )   ( 3.165663s |  0.31% | 18.84% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.541632s |  0.04% |  3.11% )   ( 0.509615s |  0.05% |  3.03% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.525708s |  0.04% |  3.02% )   ( 0.494472s |  0.04% |  2.94% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004282s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003648s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004710s |  0.00% |  0.00% )   ( 0.004350s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008648s |  0.00% |  0.04% )   ( 0.008729s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 20.111677s |  1.83% |  3.65% )   ( 19.556067s |  1.95% |  3.92% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 20.110967s |  1.83% | 99.99% )   ( 19.555340s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000338s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000361s |  0.00% |  0.00% )   ( 0.000399s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p3
30.5.0:         ( 0.023693s |  0.00% |  0.11% )   ( 0.023654s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024015s |  0.00% |  0.11% )   ( 0.023975s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023953s |  0.00% |  0.11% )   ( 0.023910s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.023963s |  0.00% |  0.11% )   ( 0.023924s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023978s |  0.00% |  0.11% )   ( 0.023934s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002653s |  0.00% |  0.00% )   ( 0.002985s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002385s |  0.00% |  0.00% )   ( 0.002711s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002762s |  0.00% |  0.00% )   ( 0.003093s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p3
41.5.0:         ( 0.239352s |  0.02% |  0.07% )   ( 0.003507s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002597s |  0.00% |  0.00% )   ( 0.002930s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.002369s |  0.00% |  0.00% )   ( 0.002670s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.002733s |  0.00% |  0.00% )   ( 0.002529s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002284s |  0.00% |  0.00% )   ( 0.002578s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018185s |  0.00% |  0.00% )   ( 0.018440s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002125s |  0.00% |  0.00% )   ( 0.002388s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002080s |  0.00% |  0.00% )   ( 0.002350s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002239s |  0.00% |  0.00% )   ( 0.002515s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002480s |  0.00% |  0.00% )   ( 0.002767s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p3
66.5.0:         ( 0.002012s |  0.00% |  0.00% )   ( 0.002304s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002024s |  0.00% |  0.00% )   ( 0.002291s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.685474s |  1.79% |  6.52% )   ( 19.361172s |  1.93% |  6.60% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002028s |  0.00% |  0.01% )   ( 0.002322s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.324923s |  0.12% |  6.73% )   ( 1.286674s |  0.12% |  6.64% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.569113s |  0.23% | 13.05% )   ( 2.545853s |  0.25% | 13.14% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.913692s |  0.17% |  9.72% )   ( 1.893615s |  0.18% |  9.78% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.598458s |  0.23% | 13.19% )   ( 2.568693s |  0.25% | 13.26% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.920946s |  0.17% |  9.75% )   ( 1.907957s |  0.19% |  9.85% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.160870s |  0.10% |  5.89% )   ( 1.131285s |  0.11% |  5.84% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.415576s |  0.03% |  2.11% )   ( 0.404548s |  0.04% |  2.08% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.322377s |  0.12% |  6.71% )   ( 1.296459s |  0.12% |  6.69% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.357560s |  0.03% |  1.81% )   ( 0.339981s |  0.03% |  1.75% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.638475s |  0.14% |  8.32% )   ( 1.610347s |  0.16% |  8.31% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.702141s |  0.33% | 18.80% )   ( 3.663293s |  0.36% | 18.92% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.401597s |  0.03% |  2.04% )   ( 0.367773s |  0.03% |  1.89% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.357718s |  0.03% |  1.81% )   ( 0.342372s |  0.03% |  1.76% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002333s |  0.00% |  0.00% )   ( 0.002644s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001973s |  0.00% |  0.00% )   ( 0.002257s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002214s |  0.00% |  0.00% )   ( 0.002492s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009671s |  0.00% |  0.04% )   ( 0.009722s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 18.400626s |  1.67% |  3.34% )   ( 17.541010s |  1.75% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000635s |  0.00% |  0.00% )   ( 0.000651s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 18.399892s |  1.67% | 99.99% )   ( 17.540252s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p4
30.5.0:         ( 0.023880s |  0.00% |  0.12% )   ( 0.023837s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023992s |  0.00% |  0.13% )   ( 0.023950s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023997s |  0.00% |  0.13% )   ( 0.023956s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.023895s |  0.00% |  0.12% )   ( 0.023852s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023969s |  0.00% |  0.13% )   ( 0.023927s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002973s |  0.00% |  0.00% )   ( 0.003319s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002662s |  0.00% |  0.00% )   ( 0.003022s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003431s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p4
41.5.0:         ( 0.347059s |  0.03% |  0.09% )   ( 0.004358s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003277s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.002666s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.002522s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002636s |  0.00% |  0.00% )   ( 0.002981s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019376s |  0.00% |  0.00% )   ( 0.019671s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002609s |  0.00% |  0.00% )   ( 0.002963s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002560s |  0.00% |  0.00% )   ( 0.002924s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002711s |  0.00% |  0.00% )   ( 0.003045s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003175s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p4
66.5.0:         ( 0.002525s |  0.00% |  0.00% )   ( 0.002875s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002483s |  0.00% |  0.00% )   ( 0.002831s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.859345s |  1.62% |  5.39% )   ( 17.336476s |  1.73% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002404s |  0.00% |  0.01% )   ( 0.002752s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.126053s |  0.10% |  6.30% )   ( 1.104992s |  0.11% |  6.37% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.172152s |  0.19% | 12.16% )   ( 2.130368s |  0.21% | 12.28% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.714719s |  0.15% |  9.60% )   ( 1.671264s |  0.16% |  9.64% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.192483s |  0.19% | 12.27% )   ( 2.082699s |  0.20% | 12.01% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.634380s |  0.14% |  9.15% )   ( 1.605014s |  0.16% |  9.25% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.142380s |  0.10% |  6.39% )   ( 1.028379s |  0.10% |  5.93% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.465337s |  0.04% |  2.60% )   ( 0.412654s |  0.04% |  2.38% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148544s |  0.10% |  6.43% )   ( 1.126064s |  0.11% |  6.49% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.367664s |  0.03% |  2.05% )   ( 0.358019s |  0.03% |  2.06% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.447894s |  0.13% |  8.10% )   ( 1.425557s |  0.14% |  8.22% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.644351s |  0.33% | 20.40% )   ( 3.600495s |  0.36% | 20.76% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.410993s |  0.03% |  2.30% )   ( 0.412101s |  0.04% |  2.37% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.389991s |  0.03% |  2.18% )   ( 0.376118s |  0.03% |  2.16% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002609s |  0.00% |  0.00% )   ( 0.002961s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002406s |  0.00% |  0.00% )   ( 0.002731s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002783s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009662s |  0.00% |  0.05% )   ( 0.009740s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 19.465313s |  1.77% |  3.53% )   ( 18.683217s |  1.86% |  3.74% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000592s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 19.464635s |  1.77% | 99.99% )   ( 18.682508s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000325s |  0.00% |  0.00% )   ( 0.000366s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p5
30.5.0:         ( 0.024059s |  0.00% |  0.12% )   ( 0.024017s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024211s |  0.00% |  0.12% )   ( 0.024165s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024165s |  0.00% |  0.12% )   ( 0.024115s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024004s |  0.00% |  0.12% )   ( 0.023960s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.024061s |  0.00% |  0.12% )   ( 0.024013s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004736s |  0.00% |  0.00% )   ( 0.005309s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004702s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005076s |  0.00% |  0.00% )   ( 0.005641s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p5
41.5.0:         ( 0.314024s |  0.02% |  0.05% )   ( 0.006868s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004896s |  0.00% |  0.00% )   ( 0.005462s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004402s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032971s |  0.00% |  0.00% )   ( 0.033418s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005938s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004904s |  0.00% |  0.00% )   ( 0.005450s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p5
66.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003839s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.920029s |  1.72% |  3.60% )   ( 18.437596s |  1.84% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004127s |  0.00% |  0.02% )   ( 0.004685s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.374339s |  0.12% |  7.26% )   ( 1.300890s |  0.13% |  7.05% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.202764s |  0.20% | 11.64% )   ( 2.153215s |  0.21% | 11.67% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.804932s |  0.16% |  9.53% )   ( 1.719571s |  0.17% |  9.32% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.137615s |  0.19% | 11.29% )   ( 2.096118s |  0.20% | 11.36% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.704938s |  0.15% |  9.01% )   ( 1.668192s |  0.16% |  9.04% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.176123s |  0.10% |  6.21% )   ( 1.160257s |  0.11% |  6.29% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.571236s |  0.05% |  3.01% )   ( 0.555908s |  0.05% |  3.01% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.223675s |  0.11% |  6.46% )   ( 1.211571s |  0.12% |  6.57% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.517086s |  0.04% |  2.73% )   ( 0.488642s |  0.04% |  2.65% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.578671s |  0.14% |  8.34% )   ( 1.528321s |  0.15% |  8.28% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.473034s |  0.31% | 18.35% )   ( 3.438420s |  0.34% | 18.64% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.586303s |  0.05% |  3.09% )   ( 0.564748s |  0.05% |  3.06% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.565186s |  0.05% |  2.98% )   ( 0.547058s |  0.05% |  2.96% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004582s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003845s |  0.00% |  0.00% )   ( 0.004401s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005208s |  0.00% |  0.02% )   ( 0.005281s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.918377s |  1.63% |  3.25% )   ( 16.581867s |  1.65% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000612s |  0.00% |  0.00% )   ( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.917677s |  1.63% | 99.99% )   ( 16.581135s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p6
30.5.0:         ( 0.024018s |  0.00% |  0.13% )   ( 0.023974s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023858s |  0.00% |  0.13% )   ( 0.023815s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024020s |  0.00% |  0.13% )   ( 0.023970s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024021s |  0.00% |  0.13% )   ( 0.023975s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023988s |  0.00% |  0.13% )   ( 0.023940s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005022s |  0.00% |  0.00% )   ( 0.005628s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004811s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005584s |  0.00% |  0.00% )   ( 0.006184s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p6
41.5.0:         ( 0.512814s |  0.04% |  0.09% )   ( 0.007348s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.008074s |  0.00% |  0.00% )   ( 0.005659s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004678s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034476s |  0.00% |  0.00% )   ( 0.034979s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004233s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007700s |  0.00% |  0.00% )   ( 0.005257s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005393s |  0.00% |  0.00% )   ( 0.005967s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p6
66.5.0:         ( 0.004387s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004241s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.165262s |  1.56% |  3.30% )   ( 16.330652s |  1.63% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004380s |  0.00% |  0.02% )   ( 0.004966s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138581s |  0.10% |  6.63% )   ( 1.097642s |  0.10% |  6.72% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.900086s |  0.17% | 11.06% )   ( 1.846961s |  0.18% | 11.30% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.701448s |  0.15% |  9.91% )   ( 1.567344s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.907893s |  0.17% | 11.11% )   ( 1.804378s |  0.18% | 11.04% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.554790s |  0.14% |  9.05% )   ( 1.506313s |  0.15% |  9.22% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.069134s |  0.09% |  6.22% )   ( 1.011933s |  0.10% |  6.19% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573474s |  0.05% |  3.34% )   ( 0.557067s |  0.05% |  3.41% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.175024s |  0.10% |  6.84% )   ( 1.040380s |  0.10% |  6.37% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.543682s |  0.04% |  3.16% )   ( 0.493545s |  0.04% |  3.02% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439356s |  0.13% |  8.38% )   ( 1.372725s |  0.13% |  8.40% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.995148s |  0.27% | 17.44% )   ( 2.916927s |  0.29% | 17.86% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.565894s |  0.05% |  3.29% )   ( 0.561020s |  0.05% |  3.43% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596372s |  0.05% |  3.47% )   ( 0.549451s |  0.05% |  3.36% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004437s |  0.00% |  0.00% )   ( 0.004994s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004696s |  0.00% |  0.00% )   ( 0.005257s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004983s |  0.00% |  0.02% )   ( 0.005022s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 18.561255s |  1.68% |  3.37% )   ( 17.665469s |  1.76% |  3.54% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000633s |  0.00% |  0.00% )   ( 0.000644s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 18.560532s |  1.68% | 99.99% )   ( 17.664722s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000313s |  0.00% |  0.00% )   ( 0.000355s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p7
30.5.0:         ( 0.023918s |  0.00% |  0.12% )   ( 0.023876s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023965s |  0.00% |  0.12% )   ( 0.023921s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023975s |  0.00% |  0.12% )   ( 0.023929s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.023997s |  0.00% |  0.12% )   ( 0.023953s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023831s |  0.00% |  0.12% )   ( 0.023785s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004446s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003513s |  0.00% |  0.00% )   ( 0.003964s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004784s |  0.00% |  0.00% )   ( 0.005300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p7
41.5.0:         ( 0.407774s |  0.03% |  0.08% )   ( 0.006411s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004215s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003682s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033974s |  0.00% |  0.00% )   ( 0.030860s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003645s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005075s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004332s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p7
66.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003499s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.926240s |  1.63% |  3.86% )   ( 17.431324s |  1.74% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003580s |  0.00% |  0.01% )   ( 0.004070s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.221973s |  0.11% |  6.81% )   ( 1.168440s |  0.11% |  6.70% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.103304s |  0.19% | 11.73% )   ( 2.052577s |  0.20% | 11.77% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.723863s |  0.15% |  9.61% )   ( 1.676315s |  0.16% |  9.61% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.063857s |  0.18% | 11.51% )   ( 2.019555s |  0.20% | 11.58% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616823s |  0.14% |  9.01% )   ( 1.595774s |  0.15% |  9.15% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.122018s |  0.10% |  6.25% )   ( 1.065187s |  0.10% |  6.11% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.536807s |  0.04% |  2.99% )   ( 0.528903s |  0.05% |  3.03% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.153548s |  0.10% |  6.43% )   ( 1.122743s |  0.11% |  6.44% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.480235s |  0.04% |  2.67% )   ( 0.449546s |  0.04% |  2.57% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.479806s |  0.13% |  8.25% )   ( 1.430459s |  0.14% |  8.20% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.358208s |  0.30% | 18.73% )   ( 3.307707s |  0.33% | 18.97% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554283s |  0.05% |  3.09% )   ( 0.518786s |  0.05% |  2.97% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507935s |  0.04% |  2.83% )   ( 0.491262s |  0.04% |  2.81% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003481s |  0.00% |  0.00% )   ( 0.003950s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003465s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006941s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005437s |  0.00% |  0.02% )   ( 0.005497s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 20.615887s |  1.87% |  3.74% )   ( 19.803533s |  1.98% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000619s |  0.00% |  0.00% )   ( 0.000635s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 20.615181s |  1.87% | 99.99% )   ( 19.802798s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p8
30.5.0:         ( 0.023915s |  0.00% |  0.11% )   ( 0.023872s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024000s |  0.00% |  0.11% )   ( 0.023956s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024040s |  0.00% |  0.11% )   ( 0.023989s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024007s |  0.00% |  0.11% )   ( 0.023963s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023973s |  0.00% |  0.11% )   ( 0.023932s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004387s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003569s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004262s |  0.00% |  0.00% )   ( 0.004741s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p8
41.5.0:         ( 0.337595s |  0.03% |  0.06% )   ( 0.005784s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003594s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003826s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003502s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032121s |  0.00% |  0.00% )   ( 0.029518s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003400s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003799s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003588s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p8
66.5.0:         ( 0.006218s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003200s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.058135s |  1.82% |  4.23% )   ( 19.575833s |  1.95% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003315s |  0.00% |  0.01% )   ( 0.003761s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.397291s |  0.12% |  6.96% )   ( 1.385049s |  0.13% |  7.07% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.682717s |  0.24% | 13.37% )   ( 2.635294s |  0.26% | 13.46% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.037509s |  0.18% | 10.15% )   ( 2.022903s |  0.20% | 10.33% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.681063s |  0.24% | 13.36% )   ( 2.609597s |  0.26% | 13.33% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.022205s |  0.18% | 10.08% )   ( 1.979720s |  0.19% | 10.11% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.334958s |  0.12% |  6.65% )   ( 1.293049s |  0.12% |  6.60% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.543232s |  0.04% |  2.70% )   ( 0.520477s |  0.05% |  2.65% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.268568s |  0.11% |  6.32% )   ( 1.217599s |  0.12% |  6.21% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473010s |  0.04% |  2.35% )   ( 0.444639s |  0.04% |  2.27% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389702s |  0.12% |  6.92% )   ( 1.369789s |  0.13% |  6.99% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.174969s |  0.28% | 15.82% )   ( 3.134187s |  0.31% | 16.01% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.547677s |  0.04% |  2.73% )   ( 0.498739s |  0.04% |  2.54% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.501919s |  0.04% |  2.50% )   ( 0.461030s |  0.04% |  2.35% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003399s |  0.00% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003206s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006381s |  0.00% |  0.03% )   ( 0.006413s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.816762s |  1.62% |  3.23% )   ( 16.716548s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000631s |  0.00% |  0.00% )   ( 0.000646s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.816038s |  1.62% | 99.99% )   ( 16.715796s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p9
30.5.0:         ( 0.024041s |  0.00% |  0.13% )   ( 0.023916s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024061s |  0.00% |  0.13% )   ( 0.023975s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024143s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024087s |  0.00% |  0.13% )   ( 0.023999s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.024079s |  0.00% |  0.13% )   ( 0.023949s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005315s |  0.00% |  0.00% )   ( 0.005928s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005161s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005780s |  0.00% |  0.00% )   ( 0.006439s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p9
41.5.0:         ( 0.416462s |  0.03% |  0.07% )   ( 0.007867s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005134s |  0.00% |  0.00% )   ( 0.005750s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004739s |  0.00% |  0.00% )   ( 0.005349s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004467s |  0.00% |  0.00% )   ( 0.005050s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004790s |  0.00% |  0.00% )   ( 0.005393s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.042747s |  0.00% |  0.00% )   ( 0.037773s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004497s |  0.00% |  0.00% )   ( 0.005113s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009286s |  0.00% |  0.00% )   ( 0.005528s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005634s |  0.00% |  0.00% )   ( 0.006300s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p9
66.5.0:         ( 0.004436s |  0.00% |  0.00% )   ( 0.005036s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004239s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.149073s |  1.56% |  3.20% )   ( 16.457452s |  1.64% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004344s |  0.00% |  0.02% )   ( 0.004957s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.225317s |  0.11% |  7.14% )   ( 1.126666s |  0.11% |  6.84% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.872900s |  0.17% | 10.92% )   ( 1.830204s |  0.18% | 11.12% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.657984s |  0.15% |  9.66% )   ( 1.597178s |  0.15% |  9.70% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.887667s |  0.17% | 11.00% )   ( 1.844715s |  0.18% | 11.20% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.588515s |  0.14% |  9.26% )   ( 1.509772s |  0.15% |  9.17% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.079868s |  0.09% |  6.29% )   ( 1.016153s |  0.10% |  6.17% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577828s |  0.05% |  3.36% )   ( 0.568330s |  0.05% |  3.45% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.061807s |  0.09% |  6.19% )   ( 1.041713s |  0.10% |  6.32% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.548351s |  0.04% |  3.19% )   ( 0.514974s |  0.05% |  3.12% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.466249s |  0.13% |  8.55% )   ( 1.390039s |  0.13% |  8.44% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.999698s |  0.27% | 17.49% )   ( 2.881800s |  0.28% | 17.51% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.582015s |  0.05% |  3.39% )   ( 0.571752s |  0.05% |  3.47% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596530s |  0.05% |  3.47% )   ( 0.559199s |  0.05% |  3.39% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004641s |  0.00% |  0.00% )   ( 0.005246s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004289s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004837s |  0.00% |  0.00% )   ( 0.005409s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005155s |  0.00% |  0.02% )   ( 0.005225s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.020033s |  1.73% |  3.45% )   ( 18.593808s |  1.86% |  3.73% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000650s |  0.00% |  0.00% )   ( 0.000670s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.019294s |  1.73% | 99.99% )   ( 18.593036s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p10
30.5.0:         ( 0.023966s |  0.00% |  0.12% )   ( 0.023895s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023972s |  0.00% |  0.12% )   ( 0.023919s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023994s |  0.00% |  0.12% )   ( 0.023944s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.026339s |  0.00% |  0.13% )   ( 0.026274s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023864s |  0.00% |  0.12% )   ( 0.023807s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001516s |  0.00% |  0.00% )   ( 0.001707s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001308s |  0.00% |  0.00% )   ( 0.001490s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001630s |  0.00% |  0.00% )   ( 0.001823s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p10
41.5.0:         ( 0.151027s |  0.01% |  0.07% )   ( 0.002319s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001618s |  0.00% |  0.00% )   ( 0.001830s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.001257s |  0.00% |  0.00% )   ( 0.001422s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.001179s |  0.00% |  0.00% )   ( 0.001345s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001309s |  0.00% |  0.00% )   ( 0.001470s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.009663s |  0.00% |  0.00% )   ( 0.009792s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001084s |  0.00% |  0.00% )   ( 0.001249s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001164s |  0.00% |  0.00% )   ( 0.001315s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001251s |  0.00% |  0.00% )   ( 0.001412s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001466s |  0.00% |  0.00% )   ( 0.001612s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p10
66.5.0:         ( 0.001150s |  0.00% |  0.00% )   ( 0.001317s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001183s |  0.00% |  0.00% )   ( 0.001343s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.702383s |  1.70% | 10.92% )   ( 18.425288s |  1.84% | 11.01% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001218s |  0.00% |  0.00% )   ( 0.001393s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.200935s |  0.10% |  6.42% )   ( 1.161160s |  0.11% |  6.30% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.434160s |  0.22% | 13.01% )   ( 2.406407s |  0.24% | 13.06% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.724452s |  0.15% |  9.22% )   ( 1.718369s |  0.17% |  9.32% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.367952s |  0.21% | 12.66% )   ( 2.359386s |  0.23% | 12.80% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.733408s |  0.15% |  9.26% )   ( 1.719396s |  0.17% |  9.33% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.076499s |  0.09% |  5.75% )   ( 1.050571s |  0.10% |  5.70% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.325455s |  0.02% |  1.74% )   ( 0.303500s |  0.03% |  1.64% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.252926s |  0.11% |  6.69% )   ( 1.216794s |  0.12% |  6.60% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.263245s |  0.02% |  1.40% )   ( 0.242216s |  0.02% |  1.31% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.478314s |  0.13% |  7.90% )   ( 1.464439s |  0.14% |  7.94% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.281143s |  0.38% | 22.89% )   ( 4.255853s |  0.42% | 23.09% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.297479s |  0.02% |  1.59% )   ( 0.286286s |  0.02% |  1.55% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.265197s |  0.02% |  1.41% )   ( 0.239518s |  0.02% |  1.29% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001244s |  0.00% |  0.00% )   ( 0.001406s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001027s |  0.00% |  0.00% )   ( 0.001175s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.001326s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009294s |  0.00% |  0.04% )   ( 0.009369s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 20.430368s |  1.85% |  3.71% )   ( 19.418140s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000924s |  0.00% |  0.00% )   ( 0.000945s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 20.429293s |  1.85% | 99.99% )   ( 19.417028s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p11
30.5.0:         ( 0.024202s |  0.00% |  0.11% )   ( 0.024053s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023997s |  0.00% |  0.11% )   ( 0.023952s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024011s |  0.00% |  0.11% )   ( 0.023964s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024019s |  0.00% |  0.11% )   ( 0.023974s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.023973s |  0.00% |  0.11% )   ( 0.023926s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004353s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004702s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p11
41.5.0:         ( 0.380624s |  0.03% |  0.06% )   ( 0.006632s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004153s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003597s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004566s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037234s |  0.00% |  0.00% )   ( 0.032106s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007176s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005117s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p11
66.5.0:         ( 0.003576s |  0.00% |  0.00% )   ( 0.004084s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003467s |  0.00% |  0.00% )   ( 0.003964s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.819229s |  1.80% |  3.73% )   ( 19.181235s |  1.91% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003791s |  0.00% |  0.01% )   ( 0.004322s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.377847s |  0.12% |  6.95% )   ( 1.358650s |  0.13% |  7.08% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.226480s |  0.20% | 11.23% )   ( 2.209108s |  0.22% | 11.51% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.861033s |  0.16% |  9.39% )   ( 1.779745s |  0.17% |  9.27% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.248215s |  0.20% | 11.34% )   ( 2.204739s |  0.22% | 11.49% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.808283s |  0.16% |  9.12% )   ( 1.747447s |  0.17% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.254539s |  0.11% |  6.32% )   ( 1.236618s |  0.12% |  6.44% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577013s |  0.05% |  2.91% )   ( 0.556103s |  0.05% |  2.89% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.348043s |  0.12% |  6.80% )   ( 1.275983s |  0.12% |  6.65% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.516627s |  0.04% |  2.60% )   ( 0.485702s |  0.04% |  2.53% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.608653s |  0.14% |  8.11% )   ( 1.570460s |  0.15% |  8.18% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.799502s |  0.34% | 19.17% )   ( 3.676556s |  0.36% | 19.16% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.615258s |  0.05% |  3.10% )   ( 0.548494s |  0.05% |  2.85% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.573945s |  0.05% |  2.89% )   ( 0.527308s |  0.05% |  2.74% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003359s |  0.00% |  0.00% )   ( 0.003837s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004242s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005052s |  0.00% |  0.02% )   ( 0.005136s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.502222s |  1.77% |  3.54% )   ( 18.828531s |  1.88% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.001002s |  0.00% |  0.00% )   ( 0.001020s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.501066s |  1.77% | 99.99% )   ( 18.827338s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p12
30.5.0:         ( 0.024089s |  0.00% |  0.12% )   ( 0.024040s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024088s |  0.00% |  0.12% )   ( 0.024045s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.024265s |  0.00% |  0.12% )   ( 0.024211s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024458s |  0.00% |  0.12% )   ( 0.024401s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.026870s |  0.00% |  0.13% )   ( 0.026794s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003359s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004214s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p12
41.5.0:         ( 0.261416s |  0.02% |  0.05% )   ( 0.005409s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003537s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003540s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026666s |  0.00% |  0.00% )   ( 0.026995s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003308s |  0.00% |  0.00% )   ( 0.003753s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003226s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003499s |  0.00% |  0.00% )   ( 0.003961s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003993s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p12
66.5.0:         ( 0.003176s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003121s |  0.00% |  0.00% )   ( 0.003532s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.027588s |  1.73% |  4.43% )   ( 18.602622s |  1.86% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003207s |  0.00% |  0.01% )   ( 0.003611s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.335420s |  0.12% |  7.01% )   ( 1.296378s |  0.12% |  6.96% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.371088s |  0.21% | 12.46% )   ( 2.347817s |  0.23% | 12.62% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.913362s |  0.17% | 10.05% )   ( 1.854853s |  0.18% |  9.97% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.402872s |  0.21% | 12.62% )   ( 2.345565s |  0.23% | 12.60% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.735888s |  0.15% |  9.12% )   ( 1.679353s |  0.16% |  9.02% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.143081s |  0.10% |  6.00% )   ( 1.134413s |  0.11% |  6.09% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.513199s |  0.04% |  2.69% )   ( 0.495565s |  0.04% |  2.66% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.191074s |  0.10% |  6.25% )   ( 1.169166s |  0.11% |  6.28% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.448216s |  0.04% |  2.35% )   ( 0.423218s |  0.04% |  2.27% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474167s |  0.13% |  7.74% )   ( 1.442562s |  0.14% |  7.75% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.527799s |  0.32% | 18.54% )   ( 3.469096s |  0.34% | 18.64% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498268s |  0.04% |  2.61% )   ( 0.487738s |  0.04% |  2.62% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.469947s |  0.04% |  2.46% )   ( 0.453287s |  0.04% |  2.43% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003331s |  0.00% |  0.00% )   ( 0.003738s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002909s |  0.00% |  0.00% )   ( 0.003296s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003276s |  0.00% |  0.00% )   ( 0.003688s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005183s |  0.00% |  0.02% )   ( 0.005240s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.841312s |  1.62% |  3.24% )   ( 16.924629s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001010s |  0.00% |  0.00% )   ( 0.001029s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.840144s |  1.62% | 99.99% )   ( 16.923420s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p13
30.5.0:         ( 0.024121s |  0.00% |  0.13% )   ( 0.024064s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024036s |  0.00% |  0.13% )   ( 0.023987s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.023933s |  0.00% |  0.13% )   ( 0.023887s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.024113s |  0.00% |  0.13% )   ( 0.024066s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.024045s |  0.00% |  0.13% )   ( 0.023998s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003697s |  0.00% |  0.00% )   ( 0.004178s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004350s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p13
41.5.0:         ( 0.310877s |  0.02% |  0.07% )   ( 0.005699s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003744s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003525s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033022s |  0.00% |  0.00% )   ( 0.028713s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003392s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003278s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009705s |  0.00% |  0.00% )   ( 0.004180s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p13
66.5.0:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003909s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003323s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.300945s |  1.57% |  4.21% )   ( 16.692425s |  1.66% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003380s |  0.00% |  0.01% )   ( 0.003838s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.094282s |  0.09% |  6.32% )   ( 1.087805s |  0.10% |  6.51% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.995210s |  0.18% | 11.53% )   ( 1.957227s |  0.19% | 11.72% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.640717s |  0.14% |  9.48% )   ( 1.603244s |  0.16% |  9.60% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.961935s |  0.17% | 11.34% )   ( 1.949587s |  0.19% | 11.67% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.592252s |  0.14% |  9.20% )   ( 1.540824s |  0.15% |  9.23% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.032941s |  0.09% |  5.97% )   ( 0.993557s |  0.09% |  5.95% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542650s |  0.04% |  3.13% )   ( 0.496510s |  0.04% |  2.97% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.128445s |  0.10% |  6.52% )   ( 1.075435s |  0.10% |  6.44% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.457159s |  0.04% |  2.64% )   ( 0.421860s |  0.04% |  2.52% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.529375s |  0.13% |  8.83% )   ( 1.398403s |  0.13% |  8.37% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.266624s |  0.29% | 18.88% )   ( 3.218947s |  0.32% | 19.28% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.509941s |  0.04% |  2.94% )   ( 0.483343s |  0.04% |  2.89% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.546034s |  0.04% |  3.15% )   ( 0.461845s |  0.04% |  2.76% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009566s |  0.00% |  0.05% )   ( 0.009657s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.357388s |  1.57% |  3.15% )   ( 16.326273s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001023s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.356219s |  1.57% | 99.99% )   ( 16.325066s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p14
30.5.0:         ( 0.033746s |  0.00% |  0.19% )   ( 0.033649s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038243s |  0.00% |  0.22% )   ( 0.038128s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.040797s |  0.00% |  0.23% )   ( 0.040676s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.035390s |  0.00% |  0.20% )   ( 0.035266s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.035060s |  0.00% |  0.20% )   ( 0.034933s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004979s |  0.00% |  0.00% )   ( 0.005551s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004532s |  0.00% |  0.00% )   ( 0.005098s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005450s |  0.00% |  0.00% )   ( 0.006060s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p14
41.5.0:         ( 0.388163s |  0.03% |  0.07% )   ( 0.007049s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004762s |  0.00% |  0.00% )   ( 0.005322s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004387s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004156s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007381s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.044666s |  0.00% |  0.00% )   ( 0.035086s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004338s |  0.00% |  0.00% )   ( 0.004844s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007027s |  0.00% |  0.00% )   ( 0.004903s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004981s |  0.00% |  0.00% )   ( 0.005572s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p14
66.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.652806s |  1.51% |  3.42% )   ( 16.009461s |  1.60% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004153s |  0.00% |  0.02% )   ( 0.004664s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.058753s |  0.09% |  6.35% )   ( 1.050252s |  0.10% |  6.56% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.838345s |  0.16% | 11.03% )   ( 1.766154s |  0.17% | 11.03% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612421s |  0.14% |  9.68% )   ( 1.554241s |  0.15% |  9.70% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.875680s |  0.17% | 11.26% )   ( 1.802290s |  0.18% | 11.25% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.586867s |  0.14% |  9.52% )   ( 1.495837s |  0.14% |  9.34% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023323s |  0.09% |  6.14% )   ( 0.980572s |  0.09% |  6.12% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.588955s |  0.05% |  3.53% )   ( 0.552877s |  0.05% |  3.45% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.085047s |  0.09% |  6.51% )   ( 1.026583s |  0.10% |  6.41% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.512521s |  0.04% |  3.07% )   ( 0.484623s |  0.04% |  3.02% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.390400s |  0.12% |  8.34% )   ( 1.351471s |  0.13% |  8.44% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.933914s |  0.26% | 17.61% )   ( 2.854263s |  0.28% | 17.82% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.547447s |  0.04% |  3.28% )   ( 0.545136s |  0.05% |  3.40% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.594980s |  0.05% |  3.57% )   ( 0.540498s |  0.05% |  3.37% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004500s |  0.00% |  0.00% )   ( 0.005077s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009125s |  0.00% |  0.05% )   ( 0.009206s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.806728s |  1.62% |  3.23% )   ( 17.196573s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001048s |  0.00% |  0.00% )   ( 0.001071s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.805518s |  1.62% | 99.99% )   ( 17.195325s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p15
30.5.0:         ( 0.040189s |  0.00% |  0.22% )   ( 0.040074s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031300s |  0.00% |  0.17% )   ( 0.031216s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.026704s |  0.00% |  0.14% )   ( 0.026630s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.026664s |  0.00% |  0.14% )   ( 0.026588s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.029359s |  0.00% |  0.16% )   ( 0.029265s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003945s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003577s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003958s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p15
41.5.0:         ( 0.327391s |  0.02% |  0.07% )   ( 0.005399s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003677s |  0.00% |  0.00% )   ( 0.004129s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003560s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003250s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029476s |  0.00% |  0.00% )   ( 0.029845s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003504s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003133s |  0.00% |  0.00% )   ( 0.003549s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007311s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p15
66.5.0:         ( 0.003186s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003138s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.228876s |  1.56% |  4.39% )   ( 16.937298s |  1.69% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003039s |  0.00% |  0.01% )   ( 0.003454s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.144271s |  0.10% |  6.64% )   ( 1.119353s |  0.11% |  6.60% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.047204s |  0.18% | 11.88% )   ( 2.018421s |  0.20% | 11.91% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.682417s |  0.15% |  9.76% )   ( 1.619882s |  0.16% |  9.56% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.006358s |  0.18% | 11.64% )   ( 1.991120s |  0.19% | 11.75% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.592230s |  0.14% |  9.24% )   ( 1.568275s |  0.15% |  9.25% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022438s |  0.09% |  5.93% )   ( 1.009107s |  0.10% |  5.95% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.490529s |  0.04% |  2.84% )   ( 0.483883s |  0.04% |  2.85% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.093971s |  0.09% |  6.34% )   ( 1.085879s |  0.10% |  6.41% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.423659s |  0.03% |  2.45% )   ( 0.413872s |  0.04% |  2.44% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.409910s |  0.12% |  8.18% )   ( 1.392165s |  0.13% |  8.21% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.379997s |  0.30% | 19.61% )   ( 3.318208s |  0.33% | 19.59% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.472064s |  0.04% |  2.73% )   ( 0.469463s |  0.04% |  2.77% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.460789s |  0.04% |  2.67% )   ( 0.444216s |  0.04% |  2.62% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003641s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003303s |  0.00% |  0.00% )   ( 0.003711s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006495s |  0.00% |  0.03% )   ( 0.006594s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.020598s |  1.64% |  3.27% )   ( 17.240150s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001047s |  0.00% |  0.00% )   ( 0.001068s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.019388s |  1.64% | 99.99% )   ( 17.238898s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p16
30.5.0:         ( 0.026955s |  0.00% |  0.14% )   ( 0.026778s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029667s |  0.00% |  0.16% )   ( 0.029442s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.028701s |  0.00% |  0.15% )   ( 0.028569s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.027247s |  0.00% |  0.15% )   ( 0.027075s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.032250s |  0.00% |  0.17% )   ( 0.032022s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003029s |  0.00% |  0.00% )   ( 0.003382s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002656s |  0.00% |  0.00% )   ( 0.003013s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006311s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p16
41.5.0:         ( 0.372102s |  0.03% |  0.10% )   ( 0.004534s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.002876s |  0.00% |  0.00% )   ( 0.003265s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.002656s |  0.00% |  0.00% )   ( 0.003000s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002848s |  0.00% |  0.00% )   ( 0.003194s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023196s |  0.00% |  0.00% )   ( 0.023504s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002769s |  0.00% |  0.00% )   ( 0.003128s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002666s |  0.00% |  0.00% )   ( 0.003020s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003267s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003218s |  0.00% |  0.00% )   ( 0.003602s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p16
66.5.0:         ( 0.002555s |  0.00% |  0.00% )   ( 0.002929s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002519s |  0.00% |  0.00% )   ( 0.002866s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.419574s |  1.58% |  5.37% )   ( 17.005661s |  1.70% |  5.48% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002754s |  0.00% |  0.01% )   ( 0.003128s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.162221s |  0.10% |  6.67% )   ( 1.127558s |  0.11% |  6.63% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.096110s |  0.19% | 12.03% )   ( 2.072485s |  0.20% | 12.18% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.672309s |  0.15% |  9.60% )   ( 1.635934s |  0.16% |  9.61% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.148951s |  0.19% | 12.33% )   ( 2.071766s |  0.20% | 12.18% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.623260s |  0.14% |  9.31% )   ( 1.595237s |  0.15% |  9.38% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001802s |  0.09% |  5.75% )   ( 0.987537s |  0.09% |  5.80% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.433851s |  0.03% |  2.49% )   ( 0.414928s |  0.04% |  2.43% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107498s |  0.10% |  6.35% )   ( 1.093646s |  0.10% |  6.43% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.364446s |  0.03% |  2.09% )   ( 0.356482s |  0.03% |  2.09% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.403907s |  0.12% |  8.05% )   ( 1.359983s |  0.13% |  7.99% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.588344s |  0.32% | 20.59% )   ( 3.505831s |  0.35% | 20.61% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.415111s |  0.03% |  2.38% )   ( 0.396935s |  0.03% |  2.33% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.399010s |  0.03% |  2.29% )   ( 0.384211s |  0.03% |  2.25% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002638s |  0.00% |  0.00% )   ( 0.002977s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002418s |  0.00% |  0.00% )   ( 0.002772s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002818s |  0.00% |  0.00% )   ( 0.003151s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008883s |  0.00% |  0.04% )   ( 0.008922s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.276146s |  1.57% |  3.13% )   ( 16.392917s |  1.63% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.274946s |  1.57% | 99.99% )   ( 16.391685s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p17
30.5.0:         ( 0.029000s |  0.00% |  0.16% )   ( 0.028897s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.030673s |  0.00% |  0.17% )   ( 0.030573s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.030671s |  0.00% |  0.17% )   ( 0.030573s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.039435s |  0.00% |  0.22% )   ( 0.039295s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.043958s |  0.00% |  0.25% )   ( 0.043804s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004535s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004718s |  0.00% |  0.00% )   ( 0.005265s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p17
41.5.0:         ( 0.323267s |  0.02% |  0.07% )   ( 0.006895s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004491s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004669s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003818s |  0.00% |  0.00% )   ( 0.004326s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039028s |  0.00% |  0.00% )   ( 0.030465s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003884s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004277s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010420s |  0.00% |  0.00% )   ( 0.004764s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004551s |  0.00% |  0.00% )   ( 0.005078s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p17
66.5.0:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004211s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003605s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.651460s |  1.51% |  3.85% )   ( 16.096452s |  1.61% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003708s |  0.00% |  0.02% )   ( 0.004206s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138378s |  0.10% |  6.83% )   ( 1.066728s |  0.10% |  6.62% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.952757s |  0.17% | 11.72% )   ( 1.891871s |  0.18% | 11.75% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.573971s |  0.14% |  9.45% )   ( 1.534677s |  0.15% |  9.53% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.999691s |  0.18% | 12.00% )   ( 1.840527s |  0.18% | 11.43% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.559217s |  0.14% |  9.36% )   ( 1.493206s |  0.14% |  9.27% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.986975s |  0.08% |  5.92% )   ( 0.957095s |  0.09% |  5.94% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.500687s |  0.04% |  3.00% )   ( 0.495122s |  0.04% |  3.07% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.020033s |  0.09% |  6.12% )   ( 1.012791s |  0.10% |  6.29% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452363s |  0.04% |  2.71% )   ( 0.444633s |  0.04% |  2.76% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383267s |  0.12% |  8.30% )   ( 1.353871s |  0.13% |  8.41% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.023906s |  0.27% | 18.16% )   ( 3.005260s |  0.30% | 18.67% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.525091s |  0.04% |  3.15% )   ( 0.508447s |  0.05% |  3.15% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.531416s |  0.04% |  3.19% )   ( 0.488018s |  0.04% |  3.03% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004812s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.003200s |  0.00% |  0.01% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit
80.5.0:         ( 0.000250s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p* 1>&21
81.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.010320s |  0.00% |  0.05% )   ( 0.009140s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.246696s |  1.56% |  3.13% )   ( 15.885858s |  1.58% |  3.18% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001067s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.245473s |  1.56% | 99.99% )   ( 15.884598s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p18
30.5.0:         ( 0.040693s |  0.00% |  0.23% )   ( 0.040553s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036849s |  0.00% |  0.21% )   ( 0.036729s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.045524s |  0.00% |  0.26% )   ( 0.045374s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.045502s |  0.00% |  0.26% )   ( 0.045351s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.045506s |  0.00% |  0.26% )   ( 0.045351s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005317s |  0.00% |  0.00% )   ( 0.005878s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004866s |  0.00% |  0.00% )   ( 0.005497s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005678s |  0.00% |  0.00% )   ( 0.006337s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p18
41.5.0:         ( 0.518802s |  0.04% |  0.09% )   ( 0.007978s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005682s |  0.00% |  0.00% )   ( 0.006029s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005399s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004969s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004946s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037297s |  0.00% |  0.00% )   ( 0.037712s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005208s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004489s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011032s |  0.00% |  0.00% )   ( 0.005578s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005552s |  0.00% |  0.00% )   ( 0.006209s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p18
66.5.0:         ( 0.004589s |  0.00% |  0.00% )   ( 0.005198s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.376180s |  1.49% |  3.16% )   ( 15.525795s |  1.55% |  3.25% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004439s |  0.00% |  0.02% )   ( 0.005018s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.098648s |  0.09% |  6.70% )   ( 1.062513s |  0.10% |  6.84% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.843826s |  0.16% | 11.25% )   ( 1.736330s |  0.17% | 11.18% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.680266s |  0.15% | 10.26% )   ( 1.495137s |  0.14% |  9.63% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.791090s |  0.16% | 10.93% )   ( 1.696260s |  0.16% | 10.92% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.477893s |  0.13% |  9.02% )   ( 1.443119s |  0.14% |  9.29% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001206s |  0.09% |  6.11% )   ( 0.983550s |  0.09% |  6.33% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.618692s |  0.05% |  3.77% )   ( 0.581163s |  0.05% |  3.74% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.086365s |  0.09% |  6.63% )   ( 0.994714s |  0.09% |  6.40% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.543268s |  0.04% |  3.31% )   ( 0.514086s |  0.05% |  3.31% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.408261s |  0.12% |  8.59% )   ( 1.338337s |  0.13% |  8.62% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.672920s |  0.24% | 16.32% )   ( 2.555801s |  0.25% | 16.46% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.574065s |  0.05% |  3.50% )   ( 0.557561s |  0.05% |  3.59% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575241s |  0.05% |  3.51% )   ( 0.562206s |  0.05% |  3.62% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004530s |  0.00% |  0.00% )   ( 0.005135s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.007377s |  0.00% |  0.00% )   ( 0.004968s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004864s |  0.00% |  0.00% )   ( 0.005437s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000228s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.010310s |  0.00% |  0.05% )   ( 0.010397s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.325094s |  1.57% |  3.14% )   ( 16.124230s |  1.61% |  3.23% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001062s |  0.00% |  0.00% )   ( 0.001082s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.323880s |  1.57% | 99.99% )   ( 16.122976s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p19
30.5.0:         ( 0.046242s |  0.00% |  0.26% )   ( 0.046077s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042839s |  0.00% |  0.24% )   ( 0.042703s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.045203s |  0.00% |  0.26% )   ( 0.045037s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.042160s |  0.00% |  0.24% )   ( 0.042010s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.049540s |  0.00% |  0.28% )   ( 0.049355s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004927s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004967s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005290s |  0.00% |  0.00% )   ( 0.005865s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p19
41.5.0:         ( 0.531949s |  0.04% |  0.10% )   ( 0.007356s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004897s |  0.00% |  0.00% )   ( 0.005473s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004880s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004185s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034195s |  0.00% |  0.00% )   ( 0.034681s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007288s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004844s |  0.00% |  0.00% )   ( 0.005422s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p19
66.5.0:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004365s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.448307s |  1.49% |  3.39% )   ( 15.767328s |  1.57% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003926s |  0.00% |  0.02% )   ( 0.004466s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.107320s |  0.10% |  6.73% )   ( 1.044316s |  0.10% |  6.62% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.797357s |  0.16% | 10.92% )   ( 1.741566s |  0.17% | 11.04% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.589432s |  0.14% |  9.66% )   ( 1.504314s |  0.15% |  9.54% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.838099s |  0.16% | 11.17% )   ( 1.764638s |  0.17% | 11.19% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.508254s |  0.13% |  9.16% )   ( 1.463375s |  0.14% |  9.28% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.995177s |  0.09% |  6.05% )   ( 0.967399s |  0.09% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.591308s |  0.05% |  3.59% )   ( 0.545040s |  0.05% |  3.45% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.076853s |  0.09% |  6.54% )   ( 1.006166s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.526385s |  0.04% |  3.20% )   ( 0.487640s |  0.04% |  3.09% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.420067s |  0.12% |  8.63% )   ( 1.362960s |  0.13% |  8.64% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.852693s |  0.25% | 17.34% )   ( 2.793496s |  0.27% | 17.71% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.599501s |  0.05% |  3.64% )   ( 0.551356s |  0.05% |  3.49% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.541935s |  0.04% |  3.29% )   ( 0.530596s |  0.05% |  3.36% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004097s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003766s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005291s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008905s |  0.00% |  0.05% )   ( 0.008980s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 17.364518s |  1.58% |  3.15% )   ( 16.269004s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001082s |  0.00% |  0.00% )   ( 0.001101s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 17.363266s |  1.58% | 99.99% )   ( 16.267713s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p20
30.5.0:         ( 0.045537s |  0.00% |  0.26% )   ( 0.045383s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045520s |  0.00% |  0.26% )   ( 0.045348s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.045579s |  0.00% |  0.26% )   ( 0.045422s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.046641s |  0.00% |  0.26% )   ( 0.046472s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.050638s |  0.00% |  0.29% )   ( 0.050444s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003825s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005319s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p20
41.5.0:         ( 0.499376s |  0.04% |  0.11% )   ( 0.006663s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003731s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030497s |  0.00% |  0.00% )   ( 0.030873s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006469s |  0.00% |  0.00% )   ( 0.004803s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004519s |  0.00% |  0.00% )   ( 0.005024s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p20
66.5.0:         ( 0.003642s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003546s |  0.00% |  0.00% )   ( 0.004012s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.523626s |  1.50% |  3.80% )   ( 15.915177s |  1.59% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003647s |  0.00% |  0.02% )   ( 0.004124s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.108433s |  0.10% |  6.70% )   ( 1.046540s |  0.10% |  6.57% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.911831s |  0.17% | 11.57% )   ( 1.829865s |  0.18% | 11.49% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.581440s |  0.14% |  9.57% )   ( 1.514456s |  0.15% |  9.51% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.874368s |  0.17% | 11.34% )   ( 1.823738s |  0.18% | 11.45% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.527803s |  0.13% |  9.24% )   ( 1.462862s |  0.14% |  9.19% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.968125s |  0.08% |  5.85% )   ( 0.951252s |  0.09% |  5.97% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541974s |  0.04% |  3.27% )   ( 0.517914s |  0.05% |  3.25% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.046413s |  0.09% |  6.33% )   ( 1.013863s |  0.10% |  6.37% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473934s |  0.04% |  2.86% )   ( 0.462979s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.421647s |  0.12% |  8.60% )   ( 1.342171s |  0.13% |  8.43% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.039866s |  0.27% | 18.39% )   ( 2.944451s |  0.29% | 18.50% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.516801s |  0.04% |  3.12% )   ( 0.511840s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507344s |  0.04% |  3.07% )   ( 0.489122s |  0.04% |  3.07% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004407s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003546s |  0.00% |  0.00% )   ( 0.004034s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003870s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008777s |  0.00% |  0.05% )   ( 0.008851s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 22.406779s |  2.03% |  4.07% )   ( 21.582619s |  2.15% |  4.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001101s |  0.00% |  0.00% )   ( 0.001121s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 22.405511s |  2.03% | 99.99% )   ( 21.581315s |  2.15% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p21
30.5.0:         ( 0.047235s |  0.00% |  0.21% )   ( 0.047067s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046675s |  0.00% |  0.20% )   ( 0.046505s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.048619s |  0.00% |  0.21% )   ( 0.048418s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.051121s |  0.00% |  0.22% )   ( 0.050861s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.049557s |  0.00% |  0.22% )   ( 0.049374s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005119s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004104s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004985s |  0.00% |  0.00% )   ( 0.005548s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p21
41.5.0:         ( 0.325236s |  0.02% |  0.05% )   ( 0.006571s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033654s |  0.00% |  0.00% )   ( 0.034117s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003968s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004262s |  0.00% |  0.00% )   ( 0.004820s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004902s |  0.00% |  0.00% )   ( 0.005460s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p21
66.5.0:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.729506s |  1.97% |  3.73% )   ( 21.215674s |  2.12% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003959s |  0.00% |  0.01% )   ( 0.004504s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.619058s |  0.14% |  7.45% )   ( 1.579505s |  0.15% |  7.44% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.551761s |  0.23% | 11.74% )   ( 2.470666s |  0.24% | 11.64% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.060121s |  0.18% |  9.48% )   ( 1.991073s |  0.19% |  9.38% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.479127s |  0.22% | 11.40% )   ( 2.442574s |  0.24% | 11.51% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.927288s |  0.17% |  8.86% )   ( 1.897087s |  0.18% |  8.94% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.446398s |  0.13% |  6.65% )   ( 1.397953s |  0.13% |  6.58% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.609394s |  0.05% |  2.80% )   ( 0.584173s |  0.05% |  2.75% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.510630s |  0.13% |  6.95% )   ( 1.466881s |  0.14% |  6.91% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.537041s |  0.04% |  2.47% )   ( 0.510524s |  0.05% |  2.40% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.730176s |  0.15% |  7.96% )   ( 1.714270s |  0.17% |  8.08% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.084520s |  0.37% | 18.79% )   ( 4.041349s |  0.40% | 19.04% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.594862s |  0.05% |  2.73% )   ( 0.568858s |  0.05% |  2.68% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575171s |  0.05% |  2.64% )   ( 0.546257s |  0.05% |  2.57% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004982s |  0.00% |  0.02% )   ( 0.005061s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000167s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.480520s |  1.59% |  3.17% )   ( 16.762583s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001097s |  0.00% |  0.00% )   ( 0.001114s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.479256s |  1.59% | 99.99% )   ( 16.761286s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p22
30.5.0:         ( 0.049083s |  0.00% |  0.28% )   ( 0.048902s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047416s |  0.00% |  0.27% )   ( 0.047230s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.048584s |  0.00% |  0.27% )   ( 0.048407s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.047592s |  0.00% |  0.27% )   ( 0.047418s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.051517s |  0.00% |  0.29% )   ( 0.051340s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004207s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003818s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004509s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p22
41.5.0:         ( 0.223909s |  0.02% |  0.05% )   ( 0.005980s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004247s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003863s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029357s |  0.00% |  0.00% )   ( 0.029774s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003554s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003527s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009981s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004724s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p22
66.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003315s |  0.00% |  0.00% )   ( 0.003786s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.902281s |  1.53% |  4.02% )   ( 16.404044s |  1.64% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003561s |  0.00% |  0.02% )   ( 0.004063s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.136754s |  0.10% |  6.72% )   ( 1.098385s |  0.10% |  6.69% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.011641s |  0.18% | 11.90% )   ( 1.929807s |  0.19% | 11.76% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.598242s |  0.14% |  9.45% )   ( 1.552417s |  0.15% |  9.46% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.916463s |  0.17% | 11.33% )   ( 1.892951s |  0.18% | 11.53% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.589266s |  0.14% |  9.40% )   ( 1.536028s |  0.15% |  9.36% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.003260s |  0.09% |  5.93% )   ( 0.987018s |  0.09% |  6.01% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546072s |  0.04% |  3.23% )   ( 0.503312s |  0.05% |  3.06% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.057071s |  0.09% |  6.25% )   ( 1.032927s |  0.10% |  6.29% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.468746s |  0.04% |  2.77% )   ( 0.432092s |  0.04% |  2.63% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.403605s |  0.12% |  8.30% )   ( 1.359560s |  0.13% |  8.28% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.192527s |  0.29% | 18.88% )   ( 3.116522s |  0.31% | 18.99% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.492812s |  0.04% |  2.91% )   ( 0.490969s |  0.04% |  2.99% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.482261s |  0.04% |  2.85% )   ( 0.467993s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003527s |  0.00% |  0.00% )   ( 0.003939s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006976s |  0.00% |  0.00% )   ( 0.004360s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007853s |  0.00% |  0.04% )   ( 0.007935s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000167s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 20.174676s |  1.83% |  3.66% )   ( 19.305867s |  1.93% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001104s |  0.00% |  0.00% )   ( 0.001128s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 20.173403s |  1.83% | 99.99% )   ( 19.304555s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p23
30.5.0:         ( 0.037105s |  0.00% |  0.18% )   ( 0.036967s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.039599s |  0.00% |  0.19% )   ( 0.039443s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.045652s |  0.00% |  0.22% )   ( 0.045501s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.045448s |  0.00% |  0.22% )   ( 0.045284s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.045466s |  0.00% |  0.22% )   ( 0.045297s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003753s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p23
41.5.0:         ( 0.337009s |  0.03% |  0.06% )   ( 0.006330s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004428s |  0.00% |  0.00% )   ( 0.004968s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003755s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029137s |  0.00% |  0.00% )   ( 0.029545s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003593s |  0.00% |  0.00% )   ( 0.004054s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004291s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004467s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p23
66.5.0:         ( 0.003454s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003627s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.526054s |  1.77% |  3.87% )   ( 18.980075s |  1.89% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003686s |  0.00% |  0.01% )   ( 0.004211s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.463883s |  0.13% |  7.49% )   ( 1.357141s |  0.13% |  7.15% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.413199s |  0.21% | 12.35% )   ( 2.352476s |  0.23% | 12.39% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.811546s |  0.16% |  9.27% )   ( 1.756789s |  0.17% |  9.25% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.223198s |  0.20% | 11.38% )   ( 2.163636s |  0.21% | 11.39% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.753998s |  0.15% |  8.98% )   ( 1.716110s |  0.17% |  9.04% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.217386s |  0.11% |  6.23% )   ( 1.186600s |  0.11% |  6.25% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.558038s |  0.05% |  2.85% )   ( 0.542347s |  0.05% |  2.85% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.256141s |  0.11% |  6.43% )   ( 1.236677s |  0.12% |  6.51% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502928s |  0.04% |  2.57% )   ( 0.471128s |  0.04% |  2.48% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.588652s |  0.14% |  8.13% )   ( 1.543187s |  0.15% |  8.13% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.645429s |  0.33% | 18.66% )   ( 3.623924s |  0.36% | 19.09% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552626s |  0.05% |  2.83% )   ( 0.523538s |  0.05% |  2.75% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.535344s |  0.04% |  2.74% )   ( 0.502311s |  0.05% |  2.64% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003927s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003793s |  0.00% |  0.00% )   ( 0.004283s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004801s |  0.00% |  0.02% )   ( 0.004869s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000169s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.449140s |  1.58% |  3.16% )   ( 16.575630s |  1.65% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001080s |  0.00% |  0.00% )   ( 0.001099s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.447896s |  1.58% | 99.99% )   ( 16.574346s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p24
30.5.0:         ( 0.048558s |  0.00% |  0.27% )   ( 0.048400s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049910s |  0.00% |  0.28% )   ( 0.049733s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.049833s |  0.00% |  0.28% )   ( 0.049659s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.045964s |  0.00% |  0.26% )   ( 0.045791s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.047534s |  0.00% |  0.27% )   ( 0.047358s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004475s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004287s |  0.00% |  0.00% )   ( 0.004730s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p24
41.5.0:         ( 0.339495s |  0.03% |  0.08% )   ( 0.005672s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004241s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004852s |  0.00% |  0.00% )   ( 0.004103s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003711s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003585s |  0.00% |  0.00% )   ( 0.003983s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032842s |  0.00% |  0.00% )   ( 0.025231s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003312s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003320s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006540s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004677s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p24
66.5.0:         ( 0.003434s |  0.00% |  0.00% )   ( 0.003870s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003260s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.760892s |  1.52% |  4.36% )   ( 16.226480s |  1.62% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003306s |  0.00% |  0.01% )   ( 0.003746s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.083465s |  0.09% |  6.46% )   ( 1.070118s |  0.10% |  6.59% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.992907s |  0.18% | 11.89% )   ( 1.918799s |  0.19% | 11.82% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.597160s |  0.14% |  9.52% )   ( 1.541695s |  0.15% |  9.50% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.963883s |  0.17% | 11.71% )   ( 1.904996s |  0.19% | 11.74% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.542293s |  0.14% |  9.20% )   ( 1.514714s |  0.15% |  9.33% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982006s |  0.08% |  5.85% )   ( 0.969263s |  0.09% |  5.97% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486180s |  0.04% |  2.90% )   ( 0.471690s |  0.04% |  2.90% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.089487s |  0.09% |  6.50% )   ( 1.052879s |  0.10% |  6.48% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.419203s |  0.03% |  2.50% )   ( 0.412584s |  0.04% |  2.54% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.402198s |  0.12% |  8.36% )   ( 1.330615s |  0.13% |  8.20% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.296750s |  0.30% | 19.66% )   ( 3.140480s |  0.31% | 19.35% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.458718s |  0.04% |  2.73% )   ( 0.457632s |  0.04% |  2.82% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.443336s |  0.04% |  2.64% )   ( 0.437269s |  0.04% |  2.69% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003420s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003530s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003396s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit
80.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p* 1>&21
81.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009042s |  0.00% |  0.05% )   ( 0.009025s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 16.947030s |  1.54% |  3.07% )   ( 16.064535s |  1.60% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001094s |  0.00% |  0.00% )   ( 0.001114s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 16.945768s |  1.54% | 99.99% )   ( 16.063232s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p25
30.5.0:         ( 0.045474s |  0.00% |  0.26% )   ( 0.045276s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045489s |  0.00% |  0.26% )   ( 0.045317s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.045500s |  0.00% |  0.26% )   ( 0.045321s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.045767s |  0.00% |  0.27% )   ( 0.045585s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.047725s |  0.00% |  0.28% )   ( 0.047495s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005023s |  0.00% |  0.00% )   ( 0.005631s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004365s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005462s |  0.00% |  0.00% )   ( 0.006072s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p25
41.5.0:         ( 0.524864s |  0.04% |  0.10% )   ( 0.007854s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004669s |  0.00% |  0.00% )   ( 0.005233s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.004905s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004820s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004559s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035677s |  0.00% |  0.00% )   ( 0.036126s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004280s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004231s |  0.00% |  0.00% )   ( 0.004811s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005279s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005199s |  0.00% |  0.00% )   ( 0.005738s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p25
66.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004595s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004129s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.068613s |  1.46% |  3.38% )   ( 15.698235s |  1.57% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004025s |  0.00% |  0.02% )   ( 0.004563s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.078127s |  0.09% |  6.70% )   ( 1.049756s |  0.10% |  6.68% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.771758s |  0.16% | 11.02% )   ( 1.757407s |  0.17% | 11.19% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.537926s |  0.13% |  9.57% )   ( 1.510392s |  0.15% |  9.62% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.800716s |  0.16% | 11.20% )   ( 1.750093s |  0.17% | 11.14% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.522391s |  0.13% |  9.47% )   ( 1.463750s |  0.14% |  9.32% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.976536s |  0.08% |  6.07% )   ( 0.951853s |  0.09% |  6.06% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.578302s |  0.05% |  3.59% )   ( 0.543029s |  0.05% |  3.45% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.025723s |  0.09% |  6.38% )   ( 0.992727s |  0.09% |  6.32% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.504013s |  0.04% |  3.13% )   ( 0.491178s |  0.04% |  3.12% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.346006s |  0.12% |  8.37% )   ( 1.332024s |  0.13% |  8.48% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.782381s |  0.25% | 17.31% )   ( 2.761566s |  0.27% | 17.59% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.589106s |  0.05% |  3.66% )   ( 0.552626s |  0.05% |  3.52% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.551603s |  0.05% |  3.43% )   ( 0.537271s |  0.05% |  3.42% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004126s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003900s |  0.00% |  0.00% )   ( 0.004445s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007471s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009252s |  0.00% |  0.05% )   ( 0.009297s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.774746s |  1.61% |  3.22% )   ( 16.882982s |  1.68% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001098s |  0.00% |  0.00% )   ( 0.001115s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.773478s |  1.61% | 99.99% )   ( 16.881679s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p26
30.5.0:         ( 0.049488s |  0.00% |  0.27% )   ( 0.049310s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052818s |  0.00% |  0.29% )   ( 0.052603s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.049465s |  0.00% |  0.27% )   ( 0.049286s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.045231s |  0.00% |  0.25% )   ( 0.045024s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.051380s |  0.00% |  0.28% )   ( 0.051172s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004322s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004170s |  0.00% |  0.00% )   ( 0.004640s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p26
41.5.0:         ( 0.369522s |  0.03% |  0.09% )   ( 0.005890s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003670s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003065s |  0.00% |  0.00% )   ( 0.003454s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003703s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027450s |  0.00% |  0.00% )   ( 0.027812s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003054s |  0.00% |  0.00% )   ( 0.003464s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003401s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004071s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p26
66.5.0:         ( 0.003340s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003380s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.066895s |  1.55% |  4.36% )   ( 16.532068s |  1.65% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003231s |  0.00% |  0.01% )   ( 0.003683s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120782s |  0.10% |  6.56% )   ( 1.067294s |  0.10% |  6.45% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.993340s |  0.18% | 11.67% )   ( 1.967283s |  0.19% | 11.89% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.676081s |  0.15% |  9.82% )   ( 1.608032s |  0.16% |  9.72% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.009807s |  0.18% | 11.77% )   ( 1.958174s |  0.19% | 11.84% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.633046s |  0.14% |  9.56% )   ( 1.579039s |  0.15% |  9.55% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.993182s |  0.09% |  5.81% )   ( 0.988057s |  0.09% |  5.97% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.495077s |  0.04% |  2.90% )   ( 0.472138s |  0.04% |  2.85% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.084970s |  0.09% |  6.35% )   ( 1.046199s |  0.10% |  6.32% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.455372s |  0.04% |  2.66% )   ( 0.416594s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435168s |  0.13% |  8.40% )   ( 1.379868s |  0.13% |  8.34% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.228502s |  0.29% | 18.91% )   ( 3.149229s |  0.31% | 19.04% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.477439s |  0.04% |  2.79% )   ( 0.459423s |  0.04% |  2.77% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.460898s |  0.04% |  2.70% )   ( 0.437055s |  0.04% |  2.64% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003100s |  0.00% |  0.00% )   ( 0.003528s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003249s |  0.00% |  0.00% )   ( 0.003686s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003921s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005026s |  0.00% |  0.02% )   ( 0.005093s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.536681s |  1.59% |  3.18% )   ( 16.566204s |  1.65% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001144s |  0.00% |  0.00% )   ( 0.001163s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.535378s |  1.59% | 99.99% )   ( 16.564862s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X2F6tJ"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p27
30.5.0:         ( 0.052136s |  0.00% |  0.29% )   ( 0.046716s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052984s |  0.00% |  0.30% )   ( 0.052785s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2104112 ${BASHPID}' INT
33.5.0:         ( 0.047638s |  0.00% |  0.27% )   ( 0.047447s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2104112 ${BASHPID}' TERM
34.5.0:         ( 0.049772s |  0.00% |  0.28% )   ( 0.049582s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2104112 ${BASHPID}' HUP
35.5.0:         ( 0.047104s |  0.00% |  0.26% )   ( 0.046947s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003518s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X2F6tJ"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p27
41.5.0:         ( 0.375780s |  0.03% |  0.09% )   ( 0.005869s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit ]]
46.5.0:         ( 0.003591s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.done ]]
46.5.1:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003684s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003337s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026883s |  0.00% |  0.00% )   ( 0.027228s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003248s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003386s |  0.00% |  0.00% )   ( 0.003814s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X2F6tJ"/.wait/p27
66.5.0:         ( 0.003135s |  0.00% |  0.00% )   ( 0.003551s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003250s |  0.00% |  0.00% )   ( 0.003699s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.816909s |  1.53% |  4.35% )   ( 16.214849s |  1.62% |  4.44% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003217s |  0.00% |  0.01% )   ( 0.003669s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.184424s |  0.10% |  7.04% )   ( 1.081079s |  0.10% |  6.66% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.970143s |  0.17% | 11.71% )   ( 1.927011s |  0.19% | 11.88% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.587142s |  0.14% |  9.43% )   ( 1.556407s |  0.15% |  9.59% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.939152s |  0.17% | 11.53% )   ( 1.886054s |  0.18% | 11.63% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.569896s |  0.14% |  9.33% )   ( 1.499475s |  0.15% |  9.24% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.019646s |  0.09% |  6.06% )   ( 0.966706s |  0.09% |  5.96% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.508968s |  0.04% |  3.02% )   ( 0.468515s |  0.04% |  2.88% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.114778s |  0.10% |  6.62% )   ( 1.026325s |  0.10% |  6.32% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.436272s |  0.03% |  2.59% )   ( 0.410224s |  0.04% |  2.52% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.396978s |  0.12% |  8.30% )   ( 1.365043s |  0.13% |  8.41% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.157496s |  0.28% | 18.77% )   ( 3.124343s |  0.31% | 19.26% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.467208s |  0.04% |  2.77% )   ( 0.463412s |  0.04% |  2.85% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.461589s |  0.04% |  2.74% )   ( 0.436586s |  0.04% |  2.69% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003312s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003059s |  0.00% |  0.00% )   ( 0.003478s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009069s |  0.00% |  0.05% )   ( 0.009160s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001414s |  0.00% |  0.00% )   ( 0.001430s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.434838s |  2.22% |  4.43% )   ( 0.001724s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000311s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000309s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.048588s |  0.00% |  0.00% )   ( 0.048809s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.X2F6tJ"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 2104124  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.X2F6tJ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000174s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007291s |  0.00% |  0.00% )   ( 0.004573s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.X2F6tJ" 2>/dev/null

10.0.0:         ( 548.125916s | 49.88% )            ( 501.155000s | 50.13% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000686s |  0.00% |  0.00% )   ( 0.000417s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 548.125230s | 49.88% | 99.99% )   ( 501.154583s | 50.13% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.040355s |  0.00% |  0.00% )   ( 0.040169s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000890s |  0.00% |  0.00% )   ( 0.000730s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005897s |  0.00% |  0.00% )   ( 0.005897s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.005897s |  0.00% |100.00% )   ( 0.005897s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001108s |  0.00% |  0.00% )   ( 0.001194s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026451s |  0.00% |  0.00% )   ( 0.000964s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 548.042507s | 49.88% | 99.98% )   ( 501.099344s | 50.12% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001751s |  0.00% |  0.00% )   ( 0.002045s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001751s |  0.00% |100.00% )   ( 0.002045s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000188s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.021010s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003107s |  0.00% |  0.00% )   ( 0.003151s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000135s |  0.00% |100.00% )   ( 0.000138s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000881s |  0.00% |  0.00% )   ( 0.001020s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000070s |  0.00% |  7.94% )   ( 0.000082s |  0.00% |  8.03% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000068s |  0.00% |  7.71% )   ( 0.000079s |  0.00% |  7.74% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.71% )   ( 0.000080s |  0.00% |  7.84% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000072s |  0.00% |  8.17% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.49% )   ( 0.000078s |  0.00% |  7.64% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000071s |  0.00% |  8.05% )   ( 0.000083s |  0.00% |  8.13% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000066s |  0.00% |  7.49% )   ( 0.000078s |  0.00% |  7.64% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000118s |  0.00% | 13.39% )   ( 0.000130s |  0.00% | 12.74% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000070s |  0.00% |  7.94% )   ( 0.000082s |  0.00% |  8.03% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000070s |  0.00% |  7.94% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000069s |  0.00% |  7.83% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000073s |  0.00% |  8.28% )   ( 0.000085s |  0.00% |  8.33% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.009822s |  0.00% |  0.00% )   ( 0.009947s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002702s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000400s |  0.00% | 14.80% )   ( 0.000424s |  0.00% | 14.78% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002302s |  0.00% | 85.19% )   ( 0.002443s |  0.00% | 85.21% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000106s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.004039s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003085s |  0.00% |  0.00% )   ( 0.003201s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000086s |  0.00% |100.00% )   ( 0.000099s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001201s |  0.00% |  0.00% )   ( 0.001285s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000552s |  0.00% |  0.00% )   ( 0.000567s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.133922s |  0.01% |  0.02% )   ( 0.133671s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000080s |  0.00% |  0.05% )   ( 0.000093s |  0.00% |  0.06% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021116s |  0.00% | 15.76% )   ( 0.021067s |  0.00% | 15.76% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023689s |  0.00% | 17.68% )   ( 0.023633s |  0.00% | 17.67% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023718s |  0.00% | 17.71% )   ( 0.023656s |  0.00% | 17.69% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023717s |  0.00% | 17.70% )   ( 0.023666s |  0.00% | 17.70% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023479s |  0.00% | 17.53% )   ( 0.023428s |  0.00% | 17.52% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000065s |  0.00% |  0.04% )   ( 0.000076s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.017803s |  0.00% | 13.29% )   ( 0.017765s |  0.00% | 13.29% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000107s |  0.00% |  0.07% )   ( 0.000116s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000080s |  0.00% |  0.05% )   ( 0.000092s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000400s |  0.00% |  0.00% )   ( 0.000419s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.901711s |  0.35% |  0.71% )   ( 1.869475s |  0.18% |  0.37% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000310s |  0.00% |  0.00% )   ( 0.000347s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023606s |  0.00% |  0.60% )   ( 0.023561s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023686s |  0.00% |  0.60% )   ( 0.023641s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023655s |  0.00% |  0.60% )   ( 0.023611s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023599s |  0.00% |  0.60% )   ( 0.023556s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023585s |  0.00% |  0.60% )   ( 0.023543s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090868s |  0.00% |  0.00% )   ( 0.104060s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.331928s |  0.21% |  0.08% )   ( 0.124025s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000678s |  0.00% |  0.00% )   ( 0.000765s |  0.00% |  0.01% )    	(4x)	│  │  │  │   continue
521.4.0:        ( 0.089981s |  0.00% |  0.00% )   ( 0.103218s |  0.01% |  0.00% )    	(668x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.091117s |  0.00% |  0.00% )   ( 0.104358s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089829s |  0.00% |  0.00% )   ( 0.102785s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092788s |  0.00% |  0.00% )   ( 0.105713s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.093499s |  0.00% |  0.00% )   ( 0.106687s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.089362s |  0.00% |  0.00% )   ( 0.102323s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.089071s |  0.00% |  0.00% )   ( 0.101935s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.088875s |  0.00% |  0.00% )   ( 0.101973s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.006101s |  0.00% |  0.15% )   ( 0.006565s |  0.00% |  0.35% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002620s |  0.00% |  0.06% )   ( 0.003006s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002620s |  0.00% |100.00% )   ( 0.003006s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088846s |  0.00% |  0.00% )   ( 0.101963s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.088077s |  0.00% |  0.00% )   ( 0.101205s |  0.01% |  0.00% )    	(668x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.086665s |  0.00% |  0.00% )   ( 0.099386s |  0.00% |  0.00% )    	(647x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092563s |  0.00% |  0.00% )   ( 0.105779s |  0.01% |  0.00% )    	(668x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.090039s |  0.00% |  0.00% )   ( 0.103028s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.089459s |  0.00% |  0.00% )   ( 0.102557s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002892s |  0.00% |  0.00% )   ( 0.003334s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002886s |  0.00% |  0.00% )   ( 0.003297s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.066092s |  0.00% |  0.08% )   ( 0.042607s |  0.00% |  0.10% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003238s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003019s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.002962s |  0.00% |  0.00% )   ( 0.003368s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000137s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007219s |  0.00% |  0.18% )   ( 0.007208s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/pAuto
598.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.062521s |  0.00% |  0.01% )   ( 0.061555s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005745s |  0.00% |  0.00% )   ( 0.006154s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000160s |  0.00% |  2.78% )   ( 0.000177s |  0.00% |  2.87% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000095s |  0.00% |  1.65% )   ( 0.000110s |  0.00% |  1.78% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000306s |  0.00% |  5.32% )   ( 0.000163s |  0.00% |  2.64% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000289s |  0.00% |  5.03% )   ( 0.000306s |  0.00% |  4.97% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000093s |  0.00% |  1.61% )   ( 0.000108s |  0.00% |  1.75% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000089s |  0.00% |  1.54% )   ( 0.000105s |  0.00% |  1.70% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000094s |  0.00% |  1.63% )   ( 0.000108s |  0.00% |  1.75% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000091s |  0.00% |  1.58% )   ( 0.000106s |  0.00% |  1.72% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.20% )   ( 0.000080s |  0.00% |  1.29% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000084s |  0.00% |  1.46% )   ( 0.000097s |  0.00% |  1.57% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000070s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000077s |  0.00% |  1.34% )   ( 0.000086s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.21% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000076s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000084s |  0.00% |  1.46% )   ( 0.000095s |  0.00% |  1.54% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000071s |  0.00% |  1.23% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000071s |  0.00% |  1.23% )   ( 0.000083s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000067s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000098s |  0.00% |  1.70% )   ( 0.000108s |  0.00% |  1.75% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000078s |  0.00% |  1.35% )   ( 0.000087s |  0.00% |  1.41% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000070s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000102s |  0.00% |  1.77% )   ( 0.000113s |  0.00% |  1.83% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000091s |  0.00% |  1.58% )   ( 0.000104s |  0.00% |  1.68% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.37% )   ( 0.000092s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000073s |  0.00% |  1.27% )   ( 0.000086s |  0.00% |  1.39% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000071s |  0.00% |  1.23% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000077s |  0.00% |  1.34% )   ( 0.000104s |  0.00% |  1.68% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000067s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000095s |  0.00% |  1.65% )   ( 0.000105s |  0.00% |  1.70% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000214s |  0.00% |  3.72% )   ( 0.000122s |  0.00% |  1.98% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000086s |  0.00% |  1.49% )   ( 0.000093s |  0.00% |  1.51% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000089s |  0.00% |  1.54% )   ( 0.000100s |  0.00% |  1.62% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000081s |  0.00% |  1.40% )   ( 0.000093s |  0.00% |  1.51% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000069s |  0.00% |  1.20% )   ( 0.000080s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000078s |  0.00% |  1.35% )   ( 0.000090s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000075s |  0.00% |  1.30% )   ( 0.000087s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.18% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000091s |  0.00% |  1.58% )   ( 0.000102s |  0.00% |  1.65% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000066s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000076s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000063s |  0.00% |  1.09% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.11% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000099s |  0.00% |  1.72% )   ( 0.000110s |  0.00% |  1.78% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000220s |  0.00% |  3.82% )   ( 0.000125s |  0.00% |  2.03% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000072s |  0.00% |  1.25% )   ( 0.000086s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000065s |  0.00% |  1.13% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000073s |  0.00% |  1.27% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000073s |  0.00% |  1.27% )   ( 0.000084s |  0.00% |  1.36% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000074s |  0.00% |  1.28% )   ( 0.000083s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000116s |  0.00% |  2.01% )   ( 0.000126s |  0.00% |  2.04% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.025956s |  0.00% |  0.00% )   ( 0.025899s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023740s |  0.00% |  0.00% )   ( 0.023696s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023927s |  0.00% |  0.00% )   ( 0.167577s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023475s |  0.00% |  0.00% )   ( 0.023423s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003058s |  0.00% |  0.00% )   ( 0.003506s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002935s |  0.00% |  0.00% )   ( 0.003349s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.475754s |  1.68% |  3.37% )   ( 17.623808s |  1.76% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000601s |  0.00% |  0.00% )   ( 0.000613s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.475057s |  1.68% | 99.99% )   ( 17.623087s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p0
30.5.0:         ( 0.023564s |  0.00% |  0.12% )   ( 0.023523s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023568s |  0.00% |  0.12% )   ( 0.023527s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023841s |  0.00% |  0.12% )   ( 0.023797s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023908s |  0.00% |  0.12% )   ( 0.023863s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023985s |  0.00% |  0.12% )   ( 0.023941s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003310s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p0
41.5.0:         ( 0.148164s |  0.01% |  0.03% )   ( 0.005150s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003820s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003148s |  0.00% |  0.00% )   ( 0.003567s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003314s |  0.00% |  0.00% )   ( 0.003753s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025581s |  0.00% |  0.00% )   ( 0.025931s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006522s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004409s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p0
54.5.0:         ( 0.003321s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003222s |  0.00% |  0.00% )   ( 0.003665s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.120902s |  1.64% |  4.26% )   ( 17.408173s |  1.74% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003338s |  0.00% |  0.01% )   ( 0.003789s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.306740s |  0.11% |  7.21% )   ( 1.167339s |  0.11% |  6.70% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.171828s |  0.19% | 11.98% )   ( 2.076651s |  0.20% | 11.92% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.700135s |  0.15% |  9.38% )   ( 1.688115s |  0.16% |  9.69% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.062690s |  0.18% | 11.38% )   ( 2.039386s |  0.20% | 11.71% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.649649s |  0.15% |  9.10% )   ( 1.598999s |  0.15% |  9.18% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.110211s |  0.10% |  6.12% )   ( 1.043118s |  0.10% |  5.99% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.527257s |  0.04% |  2.90% )   ( 0.489396s |  0.04% |  2.81% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.178923s |  0.10% |  6.50% )   ( 1.113232s |  0.11% |  6.39% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.461656s |  0.04% |  2.54% )   ( 0.416995s |  0.04% |  2.39% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.430905s |  0.13% |  7.89% )   ( 1.407227s |  0.14% |  8.08% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.517533s |  0.32% | 19.41% )   ( 3.433810s |  0.34% | 19.72% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507976s |  0.04% |  2.80% )   ( 0.478896s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.492061s |  0.04% |  2.71% )   ( 0.451220s |  0.04% |  2.59% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003288s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003535s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004018s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008457s |  0.00% |  0.04% )   ( 0.008537s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002866s |  0.00% |  0.00% )   ( 0.003307s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.695812s |  1.61% |  3.22% )   ( 16.830663s |  1.68% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000591s |  0.00% |  0.00% )   ( 0.000606s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.695126s |  1.61% | 99.99% )   ( 16.829949s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p1
30.5.0:         ( 0.023927s |  0.00% |  0.13% )   ( 0.023840s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023911s |  0.00% |  0.13% )   ( 0.023831s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024254s |  0.00% |  0.13% )   ( 0.024167s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.024157s |  0.00% |  0.13% )   ( 0.024097s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.024214s |  0.00% |  0.13% )   ( 0.024147s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000271s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004833s |  0.00% |  0.00% )   ( 0.005388s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p1
41.5.0:         ( 0.175923s |  0.01% |  0.03% )   ( 0.005967s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003545s |  0.00% |  0.00% )   ( 0.004022s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029715s |  0.00% |  0.00% )   ( 0.029399s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006860s |  0.00% |  0.00% )   ( 0.004346s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004412s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p1
54.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003832s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.301637s |  1.57% |  3.91% )   ( 16.602886s |  1.66% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003660s |  0.00% |  0.02% )   ( 0.004153s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.240850s |  0.11% |  7.17% )   ( 1.099124s |  0.10% |  6.62% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.967871s |  0.17% | 11.37% )   ( 1.938895s |  0.19% | 11.67% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.639020s |  0.14% |  9.47% )   ( 1.578429s |  0.15% |  9.50% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.969004s |  0.17% | 11.38% )   ( 1.937443s |  0.19% | 11.66% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.581563s |  0.14% |  9.14% )   ( 1.542360s |  0.15% |  9.28% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016157s |  0.09% |  5.87% )   ( 0.998730s |  0.09% |  6.01% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.526710s |  0.04% |  3.04% )   ( 0.490059s |  0.04% |  2.95% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.093635s |  0.09% |  6.32% )   ( 1.065243s |  0.10% |  6.41% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450628s |  0.04% |  2.60% )   ( 0.437526s |  0.04% |  2.63% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442339s |  0.13% |  8.33% )   ( 1.376815s |  0.13% |  8.29% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.314804s |  0.30% | 19.15% )   ( 3.154173s |  0.31% | 18.99% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.525212s |  0.04% |  3.03% )   ( 0.497974s |  0.04% |  2.99% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530184s |  0.04% |  3.06% )   ( 0.481962s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003235s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004231s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008803s |  0.00% |  0.04% )   ( 0.008880s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.323982s |  1.57% |  3.16% )   ( 16.572335s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000585s |  0.00% |  0.00% )   ( 0.000602s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.323304s |  1.57% | 99.99% )   ( 16.571626s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000343s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p2
30.5.0:         ( 0.023726s |  0.00% |  0.13% )   ( 0.023584s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023902s |  0.00% |  0.13% )   ( 0.023764s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024249s |  0.00% |  0.13% )   ( 0.024018s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.024005s |  0.00% |  0.13% )   ( 0.023948s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.024005s |  0.00% |  0.13% )   ( 0.023951s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005093s |  0.00% |  0.00% )   ( 0.005726s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005397s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000272s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005637s |  0.00% |  0.00% )   ( 0.006273s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p2
41.5.0:         ( 0.151480s |  0.01% |  0.02% )   ( 0.006289s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004834s |  0.00% |  0.00% )   ( 0.005432s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005079s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.004161s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004454s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038668s |  0.00% |  0.00% )   ( 0.036173s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006110s |  0.00% |  0.00% )   ( 0.005287s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.008007s |  0.00% |  0.00% )   ( 0.005978s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p2
54.5.0:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004745s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003978s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.930585s |  1.54% |  3.25% )   ( 16.325662s |  1.63% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004376s |  0.00% |  0.02% )   ( 0.004957s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.187783s |  0.10% |  7.01% )   ( 1.091201s |  0.10% |  6.68% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.862135s |  0.16% | 10.99% )   ( 1.818963s |  0.18% | 11.14% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.594815s |  0.14% |  9.41% )   ( 1.568474s |  0.15% |  9.60% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.864159s |  0.16% | 11.01% )   ( 1.799755s |  0.18% | 11.02% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.591677s |  0.14% |  9.40% )   ( 1.504769s |  0.15% |  9.21% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.039066s |  0.09% |  6.13% )   ( 1.017644s |  0.10% |  6.23% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581259s |  0.05% |  3.43% )   ( 0.570790s |  0.05% |  3.49% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.065925s |  0.09% |  6.29% )   ( 1.042307s |  0.10% |  6.38% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549880s |  0.05% |  3.24% )   ( 0.515447s |  0.05% |  3.15% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.433696s |  0.13% |  8.46% )   ( 1.390829s |  0.13% |  8.51% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.933386s |  0.26% | 17.32% )   ( 2.865863s |  0.28% | 17.55% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.628061s |  0.05% |  3.70% )   ( 0.575347s |  0.05% |  3.52% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.594367s |  0.05% |  3.51% )   ( 0.559316s |  0.05% |  3.42% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004401s |  0.00% |  0.00% )   ( 0.005012s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007520s |  0.00% |  0.00% )   ( 0.005065s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009310s |  0.00% |  0.05% )   ( 0.009392s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 22.753063s |  2.07% |  4.15% )   ( 21.999976s |  2.20% |  4.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000590s |  0.00% |  0.00% )   ( 0.000604s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 22.752381s |  2.07% | 99.99% )   ( 21.999268s |  2.20% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p3
30.5.0:         ( 0.023662s |  0.00% |  0.10% )   ( 0.023620s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023983s |  0.00% |  0.10% )   ( 0.023942s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023982s |  0.00% |  0.10% )   ( 0.023936s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023986s |  0.00% |  0.10% )   ( 0.023947s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023811s |  0.00% |  0.10% )   ( 0.023763s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004766s |  0.00% |  0.00% )   ( 0.005336s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004981s |  0.00% |  0.00% )   ( 0.005545s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p3
41.5.0:         ( 0.190806s |  0.01% |  0.02% )   ( 0.006428s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006225s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004741s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004755s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035989s |  0.00% |  0.00% )   ( 0.035435s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005004s |  0.00% |  0.00% )   ( 0.005043s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004995s |  0.00% |  0.00% )   ( 0.005566s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p3
54.5.0:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004440s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 22.337727s |  2.03% |  3.50% )   ( 21.764100s |  2.17% |  3.53% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004035s |  0.00% |  0.01% )   ( 0.004577s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.635261s |  0.14% |  7.32% )   ( 1.610518s |  0.16% |  7.39% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.584434s |  0.23% | 11.56% )   ( 2.548579s |  0.25% | 11.71% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.087133s |  0.18% |  9.34% )   ( 2.046569s |  0.20% |  9.40% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.592679s |  0.23% | 11.60% )   ( 2.510677s |  0.25% | 11.53% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.035643s |  0.18% |  9.11% )   ( 1.991620s |  0.19% |  9.15% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.507172s |  0.13% |  6.74% )   ( 1.447198s |  0.14% |  6.64% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.646229s |  0.05% |  2.89% )   ( 0.615638s |  0.06% |  2.82% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.549301s |  0.14% |  6.93% )   ( 1.473061s |  0.14% |  6.76% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.561637s |  0.05% |  2.51% )   ( 0.519684s |  0.05% |  2.38% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.799168s |  0.16% |  8.05% )   ( 1.748731s |  0.17% |  8.03% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.159349s |  0.37% | 18.62% )   ( 4.104598s |  0.41% | 18.85% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.604173s |  0.05% |  2.70% )   ( 0.584056s |  0.05% |  2.68% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.571513s |  0.05% |  2.55% )   ( 0.558594s |  0.05% |  2.56% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003629s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004085s |  0.00% |  0.00% )   ( 0.004583s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004958s |  0.00% |  0.02% )   ( 0.005032s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.658316s |  1.60% |  3.22% )   ( 16.892516s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000607s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.657627s |  1.60% | 99.99% )   ( 16.891802s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000353s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p4
30.5.0:         ( 0.023945s |  0.00% |  0.13% )   ( 0.023903s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023930s |  0.00% |  0.13% )   ( 0.023887s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023979s |  0.00% |  0.13% )   ( 0.023937s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023838s |  0.00% |  0.13% )   ( 0.023794s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023825s |  0.00% |  0.13% )   ( 0.023779s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004619s |  0.00% |  0.00% )   ( 0.005141s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005239s |  0.00% |  0.00% )   ( 0.005818s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p4
41.5.0:         ( 0.175823s |  0.01% |  0.03% )   ( 0.006157s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004729s |  0.00% |  0.00% )   ( 0.005305s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.007281s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.004059s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035158s |  0.00% |  0.00% )   ( 0.032569s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007477s |  0.00% |  0.00% )   ( 0.004840s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004712s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p4
54.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003717s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.254556s |  1.57% |  3.75% )   ( 16.659775s |  1.66% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003838s |  0.00% |  0.02% )   ( 0.004363s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.153437s |  0.10% |  6.68% )   ( 1.098082s |  0.10% |  6.59% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.019544s |  0.18% | 11.70% )   ( 1.905729s |  0.19% | 11.43% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642579s |  0.14% |  9.51% )   ( 1.592803s |  0.15% |  9.56% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.926456s |  0.17% | 11.16% )   ( 1.905836s |  0.19% | 11.43% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.613360s |  0.14% |  9.35% )   ( 1.541621s |  0.15% |  9.25% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.010095s |  0.09% |  5.85% )   ( 1.004815s |  0.10% |  6.03% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568523s |  0.05% |  3.29% )   ( 0.530637s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148256s |  0.10% |  6.65% )   ( 1.073133s |  0.10% |  6.44% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489544s |  0.04% |  2.83% )   ( 0.473295s |  0.04% |  2.84% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.444146s |  0.13% |  8.36% )   ( 1.419748s |  0.14% |  8.52% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.124164s |  0.28% | 18.10% )   ( 3.079623s |  0.30% | 18.48% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.562137s |  0.05% |  3.25% )   ( 0.526391s |  0.05% |  3.15% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.548477s |  0.04% |  3.17% )   ( 0.503699s |  0.05% |  3.02% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004237s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004651s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004983s |  0.00% |  0.02% )   ( 0.005050s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 19.422119s |  1.76% |  3.54% )   ( 18.900522s |  1.89% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000581s |  0.00% |  0.00% )   ( 0.000598s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 19.421438s |  1.76% | 99.99% )   ( 18.899811s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p5
30.5.0:         ( 0.023941s |  0.00% |  0.12% )   ( 0.023900s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023988s |  0.00% |  0.12% )   ( 0.023945s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023997s |  0.00% |  0.12% )   ( 0.023954s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.024008s |  0.00% |  0.12% )   ( 0.023963s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023961s |  0.00% |  0.12% )   ( 0.023917s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004487s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004627s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005168s |  0.00% |  0.00% )   ( 0.005762s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p5
41.5.0:         ( 0.103652s |  0.00% |  0.01% )   ( 0.006072s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004096s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004590s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036203s |  0.00% |  0.00% )   ( 0.033347s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007954s |  0.00% |  0.00% )   ( 0.004765s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005032s |  0.00% |  0.00% )   ( 0.005590s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p5
54.5.0:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003914s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.092813s |  1.73% |  3.64% )   ( 18.667874s |  1.86% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003918s |  0.00% |  0.02% )   ( 0.004447s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.373581s |  0.12% |  7.19% )   ( 1.317074s |  0.13% |  7.05% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.213114s |  0.20% | 11.59% )   ( 2.179173s |  0.21% | 11.67% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.779037s |  0.16% |  9.31% )   ( 1.755556s |  0.17% |  9.40% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.182381s |  0.19% | 11.43% )   ( 2.160979s |  0.21% | 11.57% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.752185s |  0.15% |  9.17% )   ( 1.729492s |  0.17% |  9.26% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.216708s |  0.11% |  6.37% )   ( 1.181448s |  0.11% |  6.32% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575739s |  0.05% |  3.01% )   ( 0.563741s |  0.05% |  3.01% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.225626s |  0.11% |  6.41% )   ( 1.211852s |  0.12% |  6.49% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522716s |  0.04% |  2.73% )   ( 0.497396s |  0.04% |  2.66% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.567736s |  0.14% |  8.21% )   ( 1.519585s |  0.15% |  8.14% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.493196s |  0.31% | 18.29% )   ( 3.450823s |  0.34% | 18.48% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.613398s |  0.05% |  3.21% )   ( 0.559654s |  0.05% |  2.99% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.573478s |  0.05% |  3.00% )   ( 0.536654s |  0.05% |  2.87% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004061s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003736s |  0.00% |  0.00% )   ( 0.004241s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005225s |  0.00% |  0.02% )   ( 0.005302s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.866937s |  1.62% |  3.26% )   ( 17.192961s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000592s |  0.00% |  0.00% )   ( 0.000611s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.866253s |  1.62% | 99.99% )   ( 17.192245s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000356s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000360s |  0.00% |  0.00% )   ( 0.000399s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p6
30.5.0:         ( 0.024085s |  0.00% |  0.13% )   ( 0.023949s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024038s |  0.00% |  0.13% )   ( 0.023952s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024128s |  0.00% |  0.13% )   ( 0.023963s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023898s |  0.00% |  0.13% )   ( 0.023806s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023988s |  0.00% |  0.13% )   ( 0.023842s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003760s |  0.00% |  0.00% )   ( 0.004268s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004460s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p6
41.5.0:         ( 0.148274s |  0.01% |  0.03% )   ( 0.005570s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003531s |  0.00% |  0.00% )   ( 0.004015s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003745s |  0.00% |  0.00% )   ( 0.004241s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029361s |  0.00% |  0.00% )   ( 0.029761s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004431s |  0.00% |  0.00% )   ( 0.004897s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p6
54.5.0:         ( 0.006521s |  0.00% |  0.00% )   ( 0.003989s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.502133s |  1.59% |  4.08% )   ( 16.967074s |  1.69% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003447s |  0.00% |  0.01% )   ( 0.003915s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.121870s |  0.10% |  6.40% )   ( 1.114555s |  0.11% |  6.56% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.011978s |  0.18% | 11.49% )   ( 1.981118s |  0.19% | 11.67% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.671679s |  0.15% |  9.55% )   ( 1.628311s |  0.16% |  9.59% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.004160s |  0.18% | 11.45% )   ( 1.970231s |  0.19% | 11.61% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.672021s |  0.15% |  9.55% )   ( 1.566257s |  0.15% |  9.23% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.110737s |  0.10% |  6.34% )   ( 1.013500s |  0.10% |  5.97% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.566905s |  0.05% |  3.23% )   ( 0.517979s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107266s |  0.10% |  6.32% )   ( 1.086009s |  0.10% |  6.40% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452906s |  0.04% |  2.58% )   ( 0.438432s |  0.04% |  2.58% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.461541s |  0.13% |  8.35% )   ( 1.418417s |  0.14% |  8.35% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.300394s |  0.30% | 18.85% )   ( 3.241057s |  0.32% | 19.10% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.515799s |  0.04% |  2.94% )   ( 0.502680s |  0.05% |  2.96% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.501430s |  0.04% |  2.86% )   ( 0.484613s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003629s |  0.00% |  0.00% )   ( 0.004101s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003785s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003736s |  0.00% |  0.00% )   ( 0.004196s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008675s |  0.00% |  0.04% )   ( 0.008759s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 18.118236s |  1.64% |  3.30% )   ( 17.429891s |  1.74% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000622s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 18.117522s |  1.64% | 99.99% )   ( 17.429149s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p7
30.5.0:         ( 0.024140s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024085s |  0.00% |  0.13% )   ( 0.024000s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023998s |  0.00% |  0.13% )   ( 0.023952s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023998s |  0.00% |  0.13% )   ( 0.023955s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023990s |  0.00% |  0.13% )   ( 0.023943s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005162s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005081s |  0.00% |  0.00% )   ( 0.005655s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p7
41.5.0:         ( 0.056999s |  0.00% |  0.01% )   ( 0.005390s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004269s |  0.00% |  0.00% )   ( 0.004815s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003787s |  0.00% |  0.00% )   ( 0.004321s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032924s |  0.00% |  0.00% )   ( 0.033369s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004226s |  0.00% |  0.00% )   ( 0.004762s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004701s |  0.00% |  0.00% )   ( 0.005240s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p7
54.5.0:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004305s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003580s |  0.00% |  0.00% )   ( 0.004079s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.840398s |  1.62% |  3.78% )   ( 17.196012s |  1.72% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003670s |  0.00% |  0.02% )   ( 0.004177s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.196145s |  0.10% |  6.70% )   ( 1.153441s |  0.11% |  6.70% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.096991s |  0.19% | 11.75% )   ( 2.023232s |  0.20% | 11.76% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.662014s |  0.15% |  9.31% )   ( 1.636232s |  0.16% |  9.51% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.028505s |  0.18% | 11.37% )   ( 1.987366s |  0.19% | 11.55% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.703977s |  0.15% |  9.55% )   ( 1.604234s |  0.16% |  9.32% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.079496s |  0.09% |  6.05% )   ( 1.050205s |  0.10% |  6.10% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.543228s |  0.04% |  3.04% )   ( 0.529573s |  0.05% |  3.07% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.164299s |  0.10% |  6.52% )   ( 1.099472s |  0.10% |  6.39% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487774s |  0.04% |  2.73% )   ( 0.469146s |  0.04% |  2.72% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.483570s |  0.13% |  8.31% )   ( 1.412355s |  0.14% |  8.21% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.281250s |  0.29% | 18.39% )   ( 3.187792s |  0.31% | 18.53% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.579461s |  0.05% |  3.24% )   ( 0.538738s |  0.05% |  3.13% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530018s |  0.04% |  2.97% )   ( 0.500049s |  0.05% |  2.90% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003556s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003944s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008464s |  0.00% |  0.04% )   ( 0.008515s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.682580s |  1.60% |  3.22% )   ( 16.798349s |  1.68% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000620s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.681869s |  1.60% | 99.99% )   ( 16.797607s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000408s |  0.00% |  0.00% )   ( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000364s |  0.00% |  0.00% )   ( 0.000401s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p8
30.5.0:         ( 0.023904s |  0.00% |  0.13% )   ( 0.023864s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024066s |  0.00% |  0.13% )   ( 0.024008s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024128s |  0.00% |  0.13% )   ( 0.024075s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.024164s |  0.00% |  0.13% )   ( 0.024110s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.024094s |  0.00% |  0.13% )   ( 0.024040s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004767s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004340s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005220s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p8
41.5.0:         ( 0.157234s |  0.01% |  0.03% )   ( 0.005674s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004109s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003615s |  0.00% |  0.00% )   ( 0.004110s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003866s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031947s |  0.00% |  0.00% )   ( 0.029362s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004606s |  0.00% |  0.00% )   ( 0.005147s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p8
54.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004137s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003431s |  0.00% |  0.00% )   ( 0.003906s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.303878s |  1.57% |  3.91% )   ( 16.569981s |  1.65% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003747s |  0.00% |  0.02% )   ( 0.004257s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138005s |  0.10% |  6.57% )   ( 1.100755s |  0.11% |  6.64% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.974622s |  0.17% | 11.41% )   ( 1.918539s |  0.19% | 11.57% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.715792s |  0.15% |  9.91% )   ( 1.588205s |  0.15% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.981914s |  0.18% | 11.45% )   ( 1.907455s |  0.19% | 11.51% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.657425s |  0.15% |  9.57% )   ( 1.537384s |  0.15% |  9.27% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.089696s |  0.09% |  6.29% )   ( 1.009610s |  0.10% |  6.09% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.522191s |  0.04% |  3.01% )   ( 0.502535s |  0.05% |  3.03% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.089027s |  0.09% |  6.29% )   ( 1.040124s |  0.10% |  6.27% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.471895s |  0.04% |  2.72% )   ( 0.451450s |  0.04% |  2.72% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435149s |  0.13% |  8.29% )   ( 1.379694s |  0.13% |  8.32% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.177775s |  0.28% | 18.36% )   ( 3.128964s |  0.31% | 18.88% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.527631s |  0.04% |  3.04% )   ( 0.503803s |  0.05% |  3.04% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.519009s |  0.04% |  2.99% )   ( 0.497206s |  0.04% |  3.00% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003394s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006929s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009085s |  0.00% |  0.05% )   ( 0.009165s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 19.322531s |  1.75% |  3.52% )   ( 18.557214s |  1.85% |  3.70% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000623s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.321817s |  1.75% | 99.99% )   ( 18.556472s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p9
30.5.0:         ( 0.023899s |  0.00% |  0.12% )   ( 0.023856s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023963s |  0.00% |  0.12% )   ( 0.023921s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024016s |  0.00% |  0.12% )   ( 0.023970s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.024015s |  0.00% |  0.12% )   ( 0.023973s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023823s |  0.00% |  0.12% )   ( 0.023779s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p9
41.5.0:         ( 0.220452s |  0.02% |  0.04% )   ( 0.005824s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003377s |  0.00% |  0.00% )   ( 0.003842s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003553s |  0.00% |  0.00% )   ( 0.004001s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032594s |  0.00% |  0.00% )   ( 0.029986s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003558s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004880s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p9
54.5.0:         ( 0.003446s |  0.00% |  0.00% )   ( 0.003939s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.890787s |  1.71% |  4.25% )   ( 18.336935s |  1.83% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003308s |  0.00% |  0.01% )   ( 0.003753s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.338480s |  0.12% |  7.08% )   ( 1.246581s |  0.12% |  6.79% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.425336s |  0.22% | 12.83% )   ( 2.296426s |  0.22% | 12.52% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.936186s |  0.17% | 10.24% )   ( 1.829496s |  0.18% |  9.97% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.343905s |  0.21% | 12.40% )   ( 2.298774s |  0.22% | 12.53% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.650195s |  0.15% |  8.73% )   ( 1.637668s |  0.16% |  8.93% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.113162s |  0.10% |  5.89% )   ( 1.109566s |  0.11% |  6.05% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503757s |  0.04% |  2.66% )   ( 0.495796s |  0.04% |  2.70% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.173959s |  0.10% |  6.21% )   ( 1.169375s |  0.11% |  6.37% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.434658s |  0.03% |  2.30% )   ( 0.432773s |  0.04% |  2.36% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.489651s |  0.13% |  7.88% )   ( 1.452380s |  0.14% |  7.92% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.423781s |  0.31% | 18.12% )   ( 3.398588s |  0.33% | 18.53% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.536782s |  0.04% |  2.84% )   ( 0.498281s |  0.04% |  2.71% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.517627s |  0.04% |  2.74% )   ( 0.467478s |  0.04% |  2.54% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003510s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003252s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005133s |  0.00% |  0.02% )   ( 0.005220s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.628650s |  1.60% |  3.21% )   ( 16.641671s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000651s |  0.00% |  0.00% )   ( 0.000670s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.627905s |  1.60% | 99.99% )   ( 16.640894s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p10
30.5.0:         ( 0.023988s |  0.00% |  0.13% )   ( 0.023940s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023953s |  0.00% |  0.13% )   ( 0.023908s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.023985s |  0.00% |  0.13% )   ( 0.023935s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023855s |  0.00% |  0.13% )   ( 0.023810s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.024001s |  0.00% |  0.13% )   ( 0.023955s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004633s |  0.00% |  0.00% )   ( 0.005178s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.007209s |  0.00% |  0.00% )   ( 0.004764s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005007s |  0.00% |  0.00% )   ( 0.005579s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p10
41.5.0:         ( 0.308599s |  0.02% |  0.06% )   ( 0.007139s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004666s |  0.00% |  0.00% )   ( 0.005226s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004798s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.004111s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033205s |  0.00% |  0.00% )   ( 0.033636s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010460s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004837s |  0.00% |  0.00% )   ( 0.005390s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p10
54.5.0:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004365s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.087005s |  1.55% |  3.59% )   ( 16.402429s |  1.64% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003992s |  0.00% |  0.02% )   ( 0.004536s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116664s |  0.10% |  6.53% )   ( 1.095597s |  0.10% |  6.67% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.931194s |  0.17% | 11.30% )   ( 1.849117s |  0.18% | 11.27% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.615430s |  0.14% |  9.45% )   ( 1.562928s |  0.15% |  9.52% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.957346s |  0.17% | 11.45% )   ( 1.851304s |  0.18% | 11.28% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.560670s |  0.14% |  9.13% )   ( 1.525632s |  0.15% |  9.30% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022554s |  0.09% |  5.98% )   ( 0.998608s |  0.09% |  6.08% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581512s |  0.05% |  3.40% )   ( 0.545993s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.130420s |  0.10% |  6.61% )   ( 1.040392s |  0.10% |  6.34% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.500459s |  0.04% |  2.92% )   ( 0.487407s |  0.04% |  2.97% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.499060s |  0.13% |  8.77% )   ( 1.400456s |  0.14% |  8.53% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.077620s |  0.28% | 18.01% )   ( 2.983343s |  0.29% | 18.18% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.547564s |  0.04% |  3.20% )   ( 0.538958s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542520s |  0.04% |  3.17% )   ( 0.518158s |  0.05% |  3.15% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008689s |  0.00% |  0.04% )   ( 0.008776s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 21.235332s |  1.93% |  3.87% )   ( 20.423970s |  2.04% |  4.07% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000833s |  0.00% |  0.00% )   ( 0.000857s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 21.234322s |  1.93% | 99.99% )   ( 20.422914s |  2.04% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p11
30.5.0:         ( 0.045858s |  0.00% |  0.21% )   ( 0.045712s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046029s |  0.00% |  0.21% )   ( 0.045863s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.046091s |  0.00% |  0.21% )   ( 0.045924s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.045920s |  0.00% |  0.21% )   ( 0.045769s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.045894s |  0.00% |  0.21% )   ( 0.045730s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003439s |  0.00% |  0.00% )   ( 0.003890s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p11
41.5.0:         ( 0.090783s |  0.00% |  0.01% )   ( 0.004841s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003545s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003246s |  0.00% |  0.00% )   ( 0.003683s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003107s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003271s |  0.00% |  0.00% )   ( 0.003700s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027773s |  0.00% |  0.00% )   ( 0.027387s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004256s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p11
54.5.0:         ( 0.003084s |  0.00% |  0.00% )   ( 0.003508s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003128s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.831635s |  1.89% |  4.45% )   ( 20.101595s |  2.01% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003113s |  0.00% |  0.01% )   ( 0.003545s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.481147s |  0.13% |  7.11% )   ( 1.454938s |  0.14% |  7.23% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.554202s |  0.23% | 12.26% )   ( 2.398097s |  0.23% | 11.92% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.983380s |  0.18% |  9.52% )   ( 1.876435s |  0.18% |  9.33% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.429045s |  0.22% | 11.66% )   ( 2.401308s |  0.24% | 11.94% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.909461s |  0.17% |  9.16% )   ( 1.842331s |  0.18% |  9.16% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.284190s |  0.11% |  6.16% )   ( 1.252306s |  0.12% |  6.22% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541154s |  0.04% |  2.59% )   ( 0.518139s |  0.05% |  2.57% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.376400s |  0.12% |  6.60% )   ( 1.355687s |  0.13% |  6.74% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.453489s |  0.04% |  2.17% )   ( 0.439992s |  0.04% |  2.18% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.711465s |  0.15% |  8.21% )   ( 1.623278s |  0.16% |  8.07% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.044084s |  0.36% | 19.41% )   ( 3.965597s |  0.39% | 19.72% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.539101s |  0.04% |  2.58% )   ( 0.502559s |  0.05% |  2.50% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.521404s |  0.04% |  2.50% )   ( 0.467383s |  0.04% |  2.32% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003717s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002879s |  0.00% |  0.00% )   ( 0.003280s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003242s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005091s |  0.00% |  0.02% )   ( 0.005182s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 20.363952s |  1.85% |  3.71% )   ( 19.438809s |  1.94% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000898s |  0.00% |  0.00% )   ( 0.000924s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 20.362905s |  1.85% | 99.99% )   ( 19.437716s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p12
30.5.0:         ( 0.024140s |  0.00% |  0.11% )   ( 0.024050s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023949s |  0.00% |  0.11% )   ( 0.023905s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.024001s |  0.00% |  0.11% )   ( 0.023954s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.023854s |  0.00% |  0.11% )   ( 0.023808s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.023961s |  0.00% |  0.11% )   ( 0.023915s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004902s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p12
41.5.0:         ( 0.173718s |  0.01% |  0.03% )   ( 0.005187s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004166s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003960s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003289s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003567s |  0.00% |  0.00% )   ( 0.004015s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031224s |  0.00% |  0.00% )   ( 0.029844s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003702s |  0.00% |  0.00% )   ( 0.004162s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p12
54.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003875s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.980662s |  1.81% |  4.08% )   ( 19.218911s |  1.92% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003471s |  0.00% |  0.01% )   ( 0.003949s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.412670s |  0.12% |  7.07% )   ( 1.367651s |  0.13% |  7.11% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.692694s |  0.24% | 13.47% )   ( 2.555563s |  0.25% | 13.29% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.143183s |  0.19% | 10.72% )   ( 2.019712s |  0.20% | 10.50% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.644702s |  0.24% | 13.23% )   ( 2.547776s |  0.25% | 13.25% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.085864s |  0.18% | 10.43% )   ( 1.984933s |  0.19% | 10.32% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.287576s |  0.11% |  6.44% )   ( 1.245925s |  0.12% |  6.48% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560824s |  0.05% |  2.80% )   ( 0.532891s |  0.05% |  2.77% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.242365s |  0.11% |  6.21% )   ( 1.196976s |  0.11% |  6.22% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.464967s |  0.04% |  2.32% )   ( 0.450578s |  0.04% |  2.34% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412426s |  0.12% |  7.06% )   ( 1.356089s |  0.13% |  7.05% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.020290s |  0.27% | 15.11% )   ( 2.981975s |  0.29% | 15.51% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.506370s |  0.04% |  2.53% )   ( 0.498867s |  0.04% |  2.59% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.503260s |  0.04% |  2.51% )   ( 0.476026s |  0.04% |  2.47% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003532s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003256s |  0.00% |  0.00% )   ( 0.003703s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003749s |  0.00% |  0.00% )   ( 0.004225s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005133s |  0.00% |  0.02% )   ( 0.005198s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 20.318761s |  1.84% |  3.70% )   ( 19.827474s |  1.98% |  3.95% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001012s |  0.00% |  0.00% )   ( 0.001030s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 20.317590s |  1.84% | 99.99% )   ( 19.826269s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p13
30.5.0:         ( 0.042306s |  0.00% |  0.20% )   ( 0.042175s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.039097s |  0.00% |  0.19% )   ( 0.038960s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.029823s |  0.00% |  0.14% )   ( 0.029731s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.026815s |  0.00% |  0.13% )   ( 0.026738s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.026756s |  0.00% |  0.13% )   ( 0.026679s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002933s |  0.00% |  0.00% )   ( 0.003273s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002621s |  0.00% |  0.00% )   ( 0.002981s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003688s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p13
41.5.0:         ( 0.153551s |  0.01% |  0.04% )   ( 0.004358s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003010s |  0.00% |  0.00% )   ( 0.003276s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.002660s |  0.00% |  0.00% )   ( 0.003034s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.002523s |  0.00% |  0.00% )   ( 0.002863s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002535s |  0.00% |  0.00% )   ( 0.002871s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023392s |  0.00% |  0.00% )   ( 0.020684s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.003120s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002991s |  0.00% |  0.00% )   ( 0.003337s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p13
54.5.0:         ( 0.002485s |  0.00% |  0.00% )   ( 0.002834s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002351s |  0.00% |  0.00% )   ( 0.002691s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.931098s |  1.81% |  5.77% )   ( 19.588308s |  1.95% |  5.81% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002558s |  0.00% |  0.01% )   ( 0.002911s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.379188s |  0.12% |  6.91% )   ( 1.327478s |  0.13% |  6.77% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.731103s |  0.24% | 13.70% )   ( 2.684271s |  0.26% | 13.70% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.063842s |  0.18% | 10.35% )   ( 2.030192s |  0.20% | 10.36% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.692719s |  0.24% | 13.51% )   ( 2.682271s |  0.26% | 13.69% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.015384s |  0.18% | 10.11% )   ( 1.993823s |  0.19% | 10.17% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.231367s |  0.11% |  6.17% )   ( 1.214496s |  0.12% |  6.20% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.469784s |  0.04% |  2.35% )   ( 0.445460s |  0.04% |  2.27% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.357616s |  0.12% |  6.81% )   ( 1.343191s |  0.13% |  6.85% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.357544s |  0.03% |  1.79% )   ( 0.353517s |  0.03% |  1.80% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.395620s |  0.12% |  7.00% )   ( 1.366940s |  0.13% |  6.97% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.408234s |  0.31% | 17.10% )   ( 3.374307s |  0.33% | 17.22% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.426792s |  0.03% |  2.14% )   ( 0.398698s |  0.03% |  2.03% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.399347s |  0.03% |  2.00% )   ( 0.370753s |  0.03% |  1.89% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002492s |  0.00% |  0.00% )   ( 0.002811s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002406s |  0.00% |  0.00% )   ( 0.002739s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002565s |  0.00% |  0.00% )   ( 0.002880s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005169s |  0.00% |  0.02% )   ( 0.005254s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 20.770855s |  1.89% |  3.79% )   ( 20.166456s |  2.01% |  4.02% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001000s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 20.769698s |  1.89% | 99.99% )   ( 20.165263s |  2.01% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p14
30.5.0:         ( 0.026709s |  0.00% |  0.12% )   ( 0.026637s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026649s |  0.00% |  0.12% )   ( 0.026574s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.026715s |  0.00% |  0.12% )   ( 0.026637s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.026703s |  0.00% |  0.12% )   ( 0.026624s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.029254s |  0.00% |  0.14% )   ( 0.029163s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003220s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002788s |  0.00% |  0.00% )   ( 0.003178s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003816s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p14
41.5.0:         ( 0.145161s |  0.01% |  0.03% )   ( 0.004093s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.002830s |  0.00% |  0.00% )   ( 0.003204s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.002749s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030279s |  0.00% |  0.00% )   ( 0.024616s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003153s |  0.00% |  0.00% )   ( 0.003530s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003813s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p14
54.5.0:         ( 0.002693s |  0.00% |  0.00% )   ( 0.003060s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002665s |  0.00% |  0.00% )   ( 0.003042s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.410259s |  1.85% |  5.17% )   ( 19.948153s |  1.99% |  5.20% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004729s |  0.00% |  0.02% )   ( 0.003103s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.528922s |  0.13% |  7.49% )   ( 1.402444s |  0.14% |  7.03% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.559728s |  0.23% | 12.54% )   ( 2.512253s |  0.25% | 12.59% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.864407s |  0.16% |  9.13% )   ( 1.844114s |  0.18% |  9.24% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.439530s |  0.22% | 11.95% )   ( 2.398575s |  0.23% | 12.02% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.921082s |  0.17% |  9.41% )   ( 1.835756s |  0.18% |  9.20% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.228964s |  0.11% |  6.02% )   ( 1.225859s |  0.12% |  6.14% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.502138s |  0.04% |  2.46% )   ( 0.473239s |  0.04% |  2.37% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.332272s |  0.12% |  6.52% )   ( 1.311794s |  0.13% |  6.57% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.407152s |  0.03% |  1.99% )   ( 0.400398s |  0.04% |  2.00% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.599181s |  0.14% |  7.83% )   ( 1.582081s |  0.15% |  7.93% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.135280s |  0.37% | 20.26% )   ( 4.101223s |  0.41% | 20.55% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.457662s |  0.04% |  2.24% )   ( 0.447610s |  0.04% |  2.24% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.429212s |  0.03% |  2.10% )   ( 0.409704s |  0.04% |  2.05% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002673s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002654s |  0.00% |  0.00% )   ( 0.003025s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002932s |  0.00% |  0.00% )   ( 0.003306s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005065s |  0.00% |  0.02% )   ( 0.005135s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.241142s |  1.56% |  3.14% )   ( 16.543283s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000987s |  0.00% |  0.00% )   ( 0.001006s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.239999s |  1.56% | 99.99% )   ( 16.542101s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p15
30.5.0:         ( 0.039289s |  0.00% |  0.22% )   ( 0.039168s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037252s |  0.00% |  0.21% )   ( 0.037144s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.027757s |  0.00% |  0.16% )   ( 0.027675s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.029693s |  0.00% |  0.17% )   ( 0.029592s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.030033s |  0.00% |  0.17% )   ( 0.029935s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005063s |  0.00% |  0.00% )   ( 0.005659s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004443s |  0.00% |  0.00% )   ( 0.005040s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005458s |  0.00% |  0.00% )   ( 0.006089s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p15
41.5.0:         ( 0.167678s |  0.01% |  0.03% )   ( 0.006825s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004872s |  0.00% |  0.00% )   ( 0.005458s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004585s |  0.00% |  0.00% )   ( 0.005192s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.004063s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004387s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037493s |  0.00% |  0.00% )   ( 0.034269s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004456s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005093s |  0.00% |  0.00% )   ( 0.005648s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p15
54.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.793696s |  1.52% |  3.47% )   ( 16.255170s |  1.62% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004172s |  0.00% |  0.02% )   ( 0.004748s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.094293s |  0.09% |  6.51% )   ( 1.076764s |  0.10% |  6.62% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.851282s |  0.16% | 11.02% )   ( 1.825572s |  0.18% | 11.23% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.572329s |  0.14% |  9.36% )   ( 1.545214s |  0.15% |  9.50% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.858063s |  0.16% | 11.06% )   ( 1.816365s |  0.18% | 11.17% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651393s |  0.15% |  9.83% )   ( 1.514596s |  0.15% |  9.31% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020892s |  0.09% |  6.07% )   ( 0.976158s |  0.09% |  6.00% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.616058s |  0.05% |  3.66% )   ( 0.553801s |  0.05% |  3.40% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.070579s |  0.09% |  6.37% )   ( 1.048594s |  0.10% |  6.45% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509319s |  0.04% |  3.03% )   ( 0.497445s |  0.04% |  3.06% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442637s |  0.13% |  8.59% )   ( 1.384689s |  0.13% |  8.51% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.983806s |  0.27% | 17.76% )   ( 2.917531s |  0.29% | 17.94% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.557863s |  0.05% |  3.32% )   ( 0.551026s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561010s |  0.05% |  3.34% )   ( 0.542667s |  0.05% |  3.33% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004385s |  0.00% |  0.00% )   ( 0.004967s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004097s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007528s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009200s |  0.00% |  0.05% )   ( 0.009289s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.561604s |  1.59% |  3.20% )   ( 16.898066s |  1.69% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001042s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.560406s |  1.59% | 99.99% )   ( 16.896825s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p16
30.5.0:         ( 0.040247s |  0.00% |  0.22% )   ( 0.040120s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027123s |  0.00% |  0.15% )   ( 0.027031s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.028979s |  0.00% |  0.16% )   ( 0.028884s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.034470s |  0.00% |  0.19% )   ( 0.034359s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.045358s |  0.00% |  0.25% )   ( 0.045211s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004520s |  0.00% |  0.00% )   ( 0.005061s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004914s |  0.00% |  0.00% )   ( 0.005440s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p16
41.5.0:         ( 0.168790s |  0.01% |  0.03% )   ( 0.005994s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036599s |  0.00% |  0.00% )   ( 0.031471s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003974s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004555s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p16
54.5.0:         ( 0.006852s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003594s |  0.00% |  0.00% )   ( 0.004062s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.109714s |  1.55% |  4.05% )   ( 16.610411s |  1.66% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003533s |  0.00% |  0.02% )   ( 0.004024s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.114347s |  0.10% |  6.51% )   ( 1.093051s |  0.10% |  6.58% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.980869s |  0.18% | 11.57% )   ( 1.936820s |  0.19% | 11.66% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.659816s |  0.15% |  9.70% )   ( 1.582422s |  0.15% |  9.52% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.958638s |  0.17% | 11.44% )   ( 1.914261s |  0.19% | 11.52% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.581840s |  0.14% |  9.24% )   ( 1.540158s |  0.15% |  9.27% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.024698s |  0.09% |  5.98% )   ( 0.998608s |  0.09% |  6.01% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.524987s |  0.04% |  3.06% )   ( 0.495883s |  0.04% |  2.98% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.092610s |  0.09% |  6.38% )   ( 1.031452s |  0.10% |  6.20% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462384s |  0.04% |  2.70% )   ( 0.442367s |  0.04% |  2.66% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.440250s |  0.13% |  8.41% )   ( 1.388315s |  0.13% |  8.35% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.245528s |  0.29% | 18.96% )   ( 3.189508s |  0.31% | 19.20% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.528422s |  0.04% |  3.08% )   ( 0.506274s |  0.05% |  3.04% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491792s |  0.04% |  2.87% )   ( 0.487268s |  0.04% |  2.93% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003533s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004196s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008791s |  0.00% |  0.05% )   ( 0.008868s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 18.397661s |  1.67% |  3.35% )   ( 17.895403s |  1.79% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.396475s |  1.67% | 99.99% )   ( 17.894181s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p17
30.5.0:         ( 0.039903s |  0.00% |  0.21% )   ( 0.039777s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035725s |  0.00% |  0.19% )   ( 0.035610s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.027610s |  0.00% |  0.15% )   ( 0.027534s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.047532s |  0.00% |  0.25% )   ( 0.047373s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.046528s |  0.00% |  0.25% )   ( 0.046366s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002167s |  0.00% |  0.00% )   ( 0.002388s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   true
38.5.0:         ( 0.001842s |  0.00% |  0.00% )   ( 0.002094s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002202s |  0.00% |  0.00% )   ( 0.002454s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p17
41.5.0:         ( 0.044229s |  0.00% |  0.02% )   ( 0.002426s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001881s |  0.00% |  0.00% )   ( 0.002121s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.001835s |  0.00% |  0.00% )   ( 0.002101s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.001804s |  0.00% |  0.00% )   ( 0.002035s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001867s |  0.00% |  0.00% )   ( 0.002125s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.013718s |  0.00% |  0.00% )   ( 0.013935s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004975s |  0.00% |  0.00% )   ( 0.002115s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002120s |  0.00% |  0.00% )   ( 0.002351s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p17
54.5.0:         ( 0.001748s |  0.00% |  0.00% )   ( 0.001993s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001487s |  0.00% |  0.00% )   ( 0.001711s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.099424s |  1.64% |  8.94% )   ( 17.640860s |  1.76% |  8.96% )    	(11x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001524s |  0.00% |  0.00% )   ( 0.001748s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.124456s |  0.10% |  6.21% )   ( 1.066013s |  0.10% |  6.04% )    	(11x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.314170s |  0.21% | 12.78% )   ( 2.289390s |  0.22% | 12.97% )    	(11x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.723457s |  0.15% |  9.52% )   ( 1.706913s |  0.17% |  9.67% )    	(11x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.389019s |  0.21% | 13.19% )   ( 2.258404s |  0.22% | 12.80% )    	(11x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.652323s |  0.15% |  9.12% )   ( 1.637316s |  0.16% |  9.28% )    	(11x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.017641s |  0.09% |  5.62% )   ( 1.012930s |  0.10% |  5.74% )    	(11x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.328855s |  0.02% |  1.81% )   ( 0.327493s |  0.03% |  1.85% )    	(11x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.179370s |  0.10% |  6.51% )   ( 1.138250s |  0.11% |  6.45% )    	(11x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.298124s |  0.02% |  1.64% )   ( 0.263053s |  0.02% |  1.49% )    	(11x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.467917s |  0.13% |  8.11% )   ( 1.422083s |  0.14% |  8.06% )    	(11x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.014643s |  0.36% | 22.18% )   ( 3.952245s |  0.39% | 22.40% )    	(11x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.300151s |  0.02% |  1.65% )   ( 0.298467s |  0.02% |  1.69% )    	(11x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.287774s |  0.02% |  1.58% )   ( 0.266555s |  0.02% |  1.51% )    	(11x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001598s |  0.00% |  0.00% )   ( 0.001813s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001487s |  0.00% |  0.00% )   ( 0.001708s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001574s |  0.00% |  0.00% )   ( 0.001769s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.kebbAi"/.quit
68.5.0:         ( 0.000261s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p* 1>&21
69.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.011099s |  0.00% |  0.06% )   ( 0.009152s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.622968s |  1.69% |  3.39% )   ( 18.109300s |  1.81% |  3.61% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001032s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.621784s |  1.69% | 99.99% )   ( 18.108074s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p18
30.5.0:         ( 0.045678s |  0.00% |  0.24% )   ( 0.045352s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045883s |  0.00% |  0.24% )   ( 0.045278s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.051554s |  0.00% |  0.27% )   ( 0.050723s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.039142s |  0.00% |  0.21% )   ( 0.038693s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.046858s |  0.00% |  0.25% )   ( 0.046083s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003349s |  0.00% |  0.00% )   ( 0.003749s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002977s |  0.00% |  0.00% )   ( 0.003368s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p18
41.5.0:         ( 0.109044s |  0.00% |  0.03% )   ( 0.004375s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003174s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003078s |  0.00% |  0.00% )   ( 0.003488s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.002822s |  0.00% |  0.00% )   ( 0.003191s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002870s |  0.00% |  0.00% )   ( 0.003239s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024601s |  0.00% |  0.00% )   ( 0.020874s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002816s |  0.00% |  0.00% )   ( 0.003170s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p18
54.5.0:         ( 0.002648s |  0.00% |  0.00% )   ( 0.003017s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002640s |  0.00% |  0.00% )   ( 0.003004s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.211257s |  1.65% |  5.43% )   ( 17.803366s |  1.78% |  5.46% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002603s |  0.00% |  0.01% )   ( 0.002954s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.273773s |  0.11% |  6.99% )   ( 1.208071s |  0.12% |  6.78% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.296730s |  0.20% | 12.61% )   ( 2.246264s |  0.22% | 12.61% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.771373s |  0.16% |  9.72% )   ( 1.688639s |  0.16% |  9.48% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.176368s |  0.19% | 11.95% )   ( 2.164951s |  0.21% | 12.16% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.673222s |  0.15% |  9.18% )   ( 1.657189s |  0.16% |  9.30% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.090047s |  0.09% |  5.98% )   ( 1.063563s |  0.10% |  5.97% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.442992s |  0.04% |  2.43% )   ( 0.418699s |  0.04% |  2.35% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.179752s |  0.10% |  6.47% )   ( 1.162532s |  0.11% |  6.52% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.372871s |  0.03% |  2.04% )   ( 0.354705s |  0.03% |  1.99% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432068s |  0.13% |  7.86% )   ( 1.415127s |  0.14% |  7.94% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.667369s |  0.33% | 20.13% )   ( 3.631265s |  0.36% | 20.39% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.431021s |  0.03% |  2.36% )   ( 0.409285s |  0.04% |  2.29% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.401068s |  0.03% |  2.20% )   ( 0.380122s |  0.03% |  2.13% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002740s |  0.00% |  0.00% )   ( 0.003108s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002540s |  0.00% |  0.00% )   ( 0.002896s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002807s |  0.00% |  0.00% )   ( 0.003162s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004935s |  0.00% |  0.02% )   ( 0.005004s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.442510s |  1.58% |  3.18% )   ( 16.637557s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001013s |  0.00% |  0.00% )   ( 0.001032s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.441345s |  1.58% | 99.99% )   ( 16.636354s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p19
30.5.0:         ( 0.045855s |  0.00% |  0.26% )   ( 0.045676s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047679s |  0.00% |  0.27% )   ( 0.047529s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.041554s |  0.00% |  0.23% )   ( 0.041426s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.048753s |  0.00% |  0.27% )   ( 0.048581s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.048311s |  0.00% |  0.27% )   ( 0.048140s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004695s |  0.00% |  0.00% )   ( 0.005256s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005095s |  0.00% |  0.00% )   ( 0.005652s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p19
41.5.0:         ( 0.196350s |  0.01% |  0.04% )   ( 0.006280s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004928s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003940s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033482s |  0.00% |  0.00% )   ( 0.033914s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007258s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004715s |  0.00% |  0.00% )   ( 0.005269s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p19
54.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003678s |  0.00% |  0.00% )   ( 0.004199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.907677s |  1.53% |  3.72% )   ( 16.288472s |  1.62% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003706s |  0.00% |  0.02% )   ( 0.004228s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.167030s |  0.10% |  6.90% )   ( 1.096803s |  0.10% |  6.73% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.978498s |  0.18% | 11.70% )   ( 1.884329s |  0.18% | 11.56% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.578678s |  0.14% |  9.33% )   ( 1.568059s |  0.15% |  9.62% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.915907s |  0.17% | 11.33% )   ( 1.859516s |  0.18% | 11.41% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.567031s |  0.14% |  9.26% )   ( 1.499826s |  0.15% |  9.20% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.042681s |  0.09% |  6.16% )   ( 0.988677s |  0.09% |  6.06% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560831s |  0.05% |  3.31% )   ( 0.527436s |  0.05% |  3.23% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.076704s |  0.09% |  6.36% )   ( 1.036661s |  0.10% |  6.36% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487782s |  0.04% |  2.88% )   ( 0.472550s |  0.04% |  2.90% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.385255s |  0.12% |  8.19% )   ( 1.355578s |  0.13% |  8.32% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.030147s |  0.27% | 17.92% )   ( 2.953959s |  0.29% | 18.13% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.564118s |  0.05% |  3.33% )   ( 0.525024s |  0.05% |  3.22% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.549309s |  0.04% |  3.24% )   ( 0.515826s |  0.05% |  3.16% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004217s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004084s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008946s |  0.00% |  0.05% )   ( 0.009031s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 20.276103s |  1.84% |  3.69% )   ( 19.528518s |  1.95% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001016s |  0.00% |  0.00% )   ( 0.001033s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 20.274908s |  1.84% | 99.99% )   ( 19.527293s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p20
30.5.0:         ( 0.045370s |  0.00% |  0.22% )   ( 0.045223s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045684s |  0.00% |  0.22% )   ( 0.045502s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.028833s |  0.00% |  0.14% )   ( 0.028742s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.043133s |  0.00% |  0.21% )   ( 0.042975s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.052128s |  0.00% |  0.25% )   ( 0.051940s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004910s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003916s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005329s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p20
41.5.0:         ( 0.176609s |  0.01% |  0.03% )   ( 0.005956s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004199s |  0.00% |  0.00% )   ( 0.004728s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003821s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033239s |  0.00% |  0.00% )   ( 0.030630s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007206s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004732s |  0.00% |  0.00% )   ( 0.005253s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p20
54.5.0:         ( 0.006753s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004152s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.780600s |  1.80% |  3.90% )   ( 19.205759s |  1.92% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003689s |  0.00% |  0.01% )   ( 0.004197s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.429114s |  0.13% |  7.22% )   ( 1.391208s |  0.13% |  7.24% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.368692s |  0.21% | 11.97% )   ( 2.345115s |  0.23% | 12.21% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.898746s |  0.17% |  9.59% )   ( 1.814267s |  0.18% |  9.44% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.233285s |  0.20% | 11.29% )   ( 2.202074s |  0.22% | 11.46% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.746927s |  0.15% |  8.83% )   ( 1.727926s |  0.17% |  8.99% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.232622s |  0.11% |  6.23% )   ( 1.203210s |  0.12% |  6.26% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.566197s |  0.05% |  2.86% )   ( 0.543180s |  0.05% |  2.82% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.333140s |  0.12% |  6.73% )   ( 1.261728s |  0.12% |  6.56% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.511342s |  0.04% |  2.58% )   ( 0.470139s |  0.04% |  2.44% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.649167s |  0.15% |  8.33% )   ( 1.556024s |  0.15% |  8.10% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.732205s |  0.33% | 18.86% )   ( 3.642162s |  0.36% | 18.96% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.562082s |  0.05% |  2.84% )   ( 0.536870s |  0.05% |  2.79% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.513392s |  0.04% |  2.59% )   ( 0.507659s |  0.05% |  2.64% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003508s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005073s |  0.00% |  0.02% )   ( 0.005099s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 19.091452s |  1.73% |  3.48% )   ( 18.364785s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.000923s |  0.00% |  0.00% )   ( 0.000947s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 19.090346s |  1.73% | 99.99% )   ( 18.363637s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p21
30.5.0:         ( 0.045964s |  0.00% |  0.24% )   ( 0.045777s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046057s |  0.00% |  0.24% )   ( 0.045870s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.045825s |  0.00% |  0.24% )   ( 0.045651s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.045979s |  0.00% |  0.24% )   ( 0.045812s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.049131s |  0.00% |  0.25% )   ( 0.048934s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003501s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003199s |  0.00% |  0.00% )   ( 0.003619s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p21
41.5.0:         ( 0.110013s |  0.01% |  0.02% )   ( 0.004649s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003250s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003394s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003074s |  0.00% |  0.00% )   ( 0.003457s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024576s |  0.00% |  0.00% )   ( 0.024912s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003550s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003507s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p21
54.5.0:         ( 0.002911s |  0.00% |  0.00% )   ( 0.003290s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002752s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.672189s |  1.69% |  4.89% )   ( 18.045514s |  1.80% |  4.91% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003025s |  0.00% |  0.01% )   ( 0.003463s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.313395s |  0.11% |  7.03% )   ( 1.238857s |  0.12% |  6.86% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.397173s |  0.21% | 12.83% )   ( 2.338628s |  0.23% | 12.95% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.838613s |  0.16% |  9.84% )   ( 1.797784s |  0.17% |  9.96% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.353567s |  0.21% | 12.60% )   ( 2.317136s |  0.23% | 12.84% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.891073s |  0.17% | 10.12% )   ( 1.788445s |  0.17% |  9.91% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.157238s |  0.10% |  6.19% )   ( 1.105271s |  0.11% |  6.12% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.522704s |  0.04% |  2.79% )   ( 0.468653s |  0.04% |  2.59% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.273797s |  0.11% |  6.82% )   ( 1.208772s |  0.12% |  6.69% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447407s |  0.04% |  2.39% )   ( 0.401477s |  0.04% |  2.22% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.575780s |  0.14% |  8.43% )   ( 1.540162s |  0.15% |  8.53% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.001415s |  0.27% | 16.07% )   ( 2.968945s |  0.29% | 16.45% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.461381s |  0.04% |  2.47% )   ( 0.444838s |  0.04% |  2.46% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.435621s |  0.03% |  2.33% )   ( 0.423083s |  0.04% |  2.34% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002988s |  0.00% |  0.00% )   ( 0.003398s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002690s |  0.00% |  0.00% )   ( 0.003056s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003008s |  0.00% |  0.00% )   ( 0.003377s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004955s |  0.00% |  0.02% )   ( 0.005022s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000183s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.447210s |  1.58% |  3.18% )   ( 16.656149s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001049s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.445999s |  1.58% | 99.99% )   ( 16.654897s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p22
30.5.0:         ( 0.044527s |  0.00% |  0.25% )   ( 0.044385s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044353s |  0.00% |  0.25% )   ( 0.044201s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.046327s |  0.00% |  0.26% )   ( 0.046151s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.045283s |  0.00% |  0.25% )   ( 0.045119s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.046692s |  0.00% |  0.26% )   ( 0.046517s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004551s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p22
41.5.0:         ( 0.144203s |  0.01% |  0.03% )   ( 0.005284s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003462s |  0.00% |  0.00% )   ( 0.003931s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003733s |  0.00% |  0.00% )   ( 0.004214s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028970s |  0.00% |  0.00% )   ( 0.029443s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p22
54.5.0:         ( 0.003487s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003941s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.982642s |  1.54% |  4.05% )   ( 16.326767s |  1.63% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.006743s |  0.00% |  0.03% )   ( 0.004225s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.147343s |  0.10% |  6.75% )   ( 1.090825s |  0.10% |  6.68% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.957182s |  0.17% | 11.52% )   ( 1.901207s |  0.19% | 11.64% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.625403s |  0.14% |  9.57% )   ( 1.554772s |  0.15% |  9.52% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.965450s |  0.17% | 11.57% )   ( 1.880174s |  0.18% | 11.51% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.548642s |  0.14% |  9.11% )   ( 1.493193s |  0.14% |  9.14% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015044s |  0.09% |  5.97% )   ( 0.969556s |  0.09% |  5.93% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.524802s |  0.04% |  3.09% )   ( 0.500364s |  0.05% |  3.06% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.075339s |  0.09% |  6.33% )   ( 1.046095s |  0.10% |  6.40% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.465196s |  0.04% |  2.73% )   ( 0.443125s |  0.04% |  2.71% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.433078s |  0.13% |  8.43% )   ( 1.370004s |  0.13% |  8.39% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.202284s |  0.29% | 18.85% )   ( 3.105776s |  0.31% | 19.02% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.530631s |  0.04% |  3.12% )   ( 0.494459s |  0.04% |  3.02% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.485505s |  0.04% |  2.85% )   ( 0.472992s |  0.04% |  2.89% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004154s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003850s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006792s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005345s |  0.00% |  0.03% )   ( 0.005453s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.207914s |  1.56% |  3.13% )   ( 16.342964s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001065s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.206712s |  1.56% | 99.99% )   ( 16.341722s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p23
30.5.0:         ( 0.045109s |  0.00% |  0.26% )   ( 0.043732s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046207s |  0.00% |  0.26% )   ( 0.044829s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.051234s |  0.00% |  0.29% )   ( 0.051015s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.051809s |  0.00% |  0.30% )   ( 0.051610s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.047266s |  0.00% |  0.27% )   ( 0.047079s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004994s |  0.00% |  0.00% )   ( 0.005588s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004470s |  0.00% |  0.00% )   ( 0.005004s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005443s |  0.00% |  0.00% )   ( 0.006064s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p23
41.5.0:         ( 0.168653s |  0.01% |  0.03% )   ( 0.006404s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004491s |  0.00% |  0.00% )   ( 0.005046s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004352s |  0.00% |  0.00% )   ( 0.004922s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004299s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033422s |  0.00% |  0.00% )   ( 0.033916s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005223s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005017s |  0.00% |  0.00% )   ( 0.005600s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p23
54.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004773s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.693736s |  1.51% |  3.46% )   ( 15.985704s |  1.59% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004232s |  0.00% |  0.02% )   ( 0.004797s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.139361s |  0.10% |  6.82% )   ( 1.078638s |  0.10% |  6.74% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.894730s |  0.17% | 11.34% )   ( 1.810907s |  0.18% | 11.32% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.550357s |  0.14% |  9.28% )   ( 1.532409s |  0.15% |  9.58% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.896631s |  0.17% | 11.36% )   ( 1.798767s |  0.17% | 11.25% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597322s |  0.14% |  9.56% )   ( 1.487384s |  0.14% |  9.30% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.071314s |  0.09% |  6.41% )   ( 0.991562s |  0.09% |  6.20% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573374s |  0.05% |  3.43% )   ( 0.555843s |  0.05% |  3.47% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.030188s |  0.09% |  6.17% )   ( 1.019998s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.520615s |  0.04% |  3.11% )   ( 0.487695s |  0.04% |  3.05% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.391381s |  0.12% |  8.33% )   ( 1.361172s |  0.13% |  8.51% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.839212s |  0.25% | 17.00% )   ( 2.780448s |  0.27% | 17.39% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.592333s |  0.05% |  3.54% )   ( 0.546310s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.592686s |  0.05% |  3.55% )   ( 0.529774s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004945s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004512s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004964s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004996s |  0.00% |  0.02% )   ( 0.005065s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.186503s |  1.56% |  3.13% )   ( 16.510936s |  1.65% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001022s |  0.00% |  0.00% )   ( 0.001040s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.185328s |  1.56% | 99.99% )   ( 16.509724s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p24
30.5.0:         ( 0.037006s |  0.00% |  0.21% )   ( 0.036881s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051586s |  0.00% |  0.30% )   ( 0.051413s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.049098s |  0.00% |  0.28% )   ( 0.048932s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.049335s |  0.00% |  0.28% )   ( 0.049179s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.052207s |  0.00% |  0.30% )   ( 0.052036s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004583s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004028s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005052s |  0.00% |  0.00% )   ( 0.005581s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p24
41.5.0:         ( 0.090634s |  0.00% |  0.02% )   ( 0.005433s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004601s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032409s |  0.00% |  0.00% )   ( 0.032816s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007306s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004737s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p24
54.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004382s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004101s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.751834s |  1.52% |  3.89% )   ( 16.157557s |  1.61% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003725s |  0.00% |  0.02% )   ( 0.004247s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.140875s |  0.10% |  6.81% )   ( 1.080946s |  0.10% |  6.69% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.900855s |  0.17% | 11.34% )   ( 1.858282s |  0.18% | 11.50% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.582846s |  0.14% |  9.44% )   ( 1.551690s |  0.15% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.893096s |  0.17% | 11.30% )   ( 1.859387s |  0.18% | 11.50% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.571739s |  0.14% |  9.38% )   ( 1.496638s |  0.14% |  9.26% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.006303s |  0.09% |  6.00% )   ( 0.973161s |  0.09% |  6.02% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547435s |  0.04% |  3.26% )   ( 0.515010s |  0.05% |  3.18% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.099609s |  0.10% |  6.56% )   ( 1.024340s |  0.10% |  6.33% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.484931s |  0.04% |  2.89% )   ( 0.445027s |  0.04% |  2.75% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.429834s |  0.13% |  8.53% )   ( 1.358681s |  0.13% |  8.40% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.060384s |  0.27% | 18.26% )   ( 2.998475s |  0.29% | 18.55% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.512657s |  0.04% |  3.06% )   ( 0.497966s |  0.04% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.517545s |  0.04% |  3.08% )   ( 0.493707s |  0.04% |  3.05% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003869s |  0.00% |  0.00% )   ( 0.004375s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003624s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009161s |  0.00% |  0.05% )   ( 0.009234s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.189048s |  1.56% |  3.13% )   ( 16.459578s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001083s |  0.00% |  0.00% )   ( 0.001101s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.187807s |  1.56% | 99.99% )   ( 16.458299s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p25
30.5.0:         ( 0.045836s |  0.00% |  0.26% )   ( 0.045646s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052208s |  0.00% |  0.30% )   ( 0.051985s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.047834s |  0.00% |  0.27% )   ( 0.047630s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.050964s |  0.00% |  0.29% )   ( 0.050769s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.053881s |  0.00% |  0.31% )   ( 0.053692s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004510s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004108s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005409s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p25
41.5.0:         ( 0.139657s |  0.01% |  0.03% )   ( 0.006098s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004385s |  0.00% |  0.00% )   ( 0.004948s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.004166s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003787s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003881s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030105s |  0.00% |  0.00% )   ( 0.030462s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007968s |  0.00% |  0.00% )   ( 0.004734s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004713s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p25
54.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.694087s |  1.51% |  3.73% )   ( 16.095766s |  1.61% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003987s |  0.00% |  0.02% )   ( 0.004548s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.107372s |  0.10% |  6.63% )   ( 1.069556s |  0.10% |  6.64% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.928597s |  0.17% | 11.55% )   ( 1.845272s |  0.18% | 11.46% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.583843s |  0.14% |  9.48% )   ( 1.545247s |  0.15% |  9.60% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.899015s |  0.17% | 11.37% )   ( 1.828142s |  0.18% | 11.35% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.541477s |  0.14% |  9.23% )   ( 1.501407s |  0.15% |  9.32% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.043879s |  0.09% |  6.25% )   ( 0.977724s |  0.09% |  6.07% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541131s |  0.04% |  3.24% )   ( 0.522443s |  0.05% |  3.24% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.072677s |  0.09% |  6.42% )   ( 1.023051s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.472242s |  0.04% |  2.82% )   ( 0.462959s |  0.04% |  2.87% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.373036s |  0.12% |  8.22% )   ( 1.336450s |  0.13% |  8.30% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.037443s |  0.27% | 18.19% )   ( 2.952282s |  0.29% | 18.34% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.555668s |  0.05% |  3.32% )   ( 0.527270s |  0.05% |  3.27% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533720s |  0.04% |  3.19% )   ( 0.499415s |  0.04% |  3.10% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004793s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004833s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008615s |  0.00% |  0.05% )   ( 0.008699s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.335143s |  1.57% |  3.16% )   ( 16.475608s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001077s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.333903s |  1.57% | 99.99% )   ( 16.474328s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p26
30.5.0:         ( 0.050779s |  0.00% |  0.29% )   ( 0.050052s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049323s |  0.00% |  0.28% )   ( 0.049113s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.045808s |  0.00% |  0.26% )   ( 0.045599s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.050266s |  0.00% |  0.28% )   ( 0.050056s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.050642s |  0.00% |  0.29% )   ( 0.050385s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004320s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004409s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004720s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p26
41.5.0:         ( 0.122524s |  0.01% |  0.02% )   ( 0.005701s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004505s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003680s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003459s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003677s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027788s |  0.00% |  0.00% )   ( 0.028178s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011194s |  0.00% |  0.00% )   ( 0.004382s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004411s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p26
54.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003495s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000111s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.865190s |  1.53% |  4.05% )   ( 16.124042s |  1.61% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003639s |  0.00% |  0.02% )   ( 0.004108s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.200767s |  0.10% |  7.11% )   ( 1.064588s |  0.10% |  6.60% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.962375s |  0.17% | 11.63% )   ( 1.880337s |  0.18% | 11.66% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.611246s |  0.14% |  9.55% )   ( 1.565526s |  0.15% |  9.70% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.959014s |  0.17% | 11.61% )   ( 1.875765s |  0.18% | 11.63% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.544690s |  0.14% |  9.15% )   ( 1.509153s |  0.15% |  9.35% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.024662s |  0.09% |  6.07% )   ( 0.982622s |  0.09% |  6.09% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.544666s |  0.04% |  3.22% )   ( 0.495350s |  0.04% |  3.07% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.035992s |  0.09% |  6.14% )   ( 1.014492s |  0.10% |  6.29% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447787s |  0.04% |  2.65% )   ( 0.428012s |  0.04% |  2.65% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.368410s |  0.12% |  8.11% )   ( 1.328242s |  0.13% |  8.23% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.130873s |  0.28% | 18.56% )   ( 2.999077s |  0.30% | 18.60% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.512202s |  0.04% |  3.03% )   ( 0.497165s |  0.04% |  3.08% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.518867s |  0.04% |  3.07% )   ( 0.479605s |  0.04% |  2.97% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003736s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003326s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003650s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008979s |  0.00% |  0.05% )   ( 0.009048s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.728722s |  1.61% |  3.23% )   ( 16.945428s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001059s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.727527s |  1.61% | 99.99% )   ( 16.944192s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.kebbAi"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p27
30.5.0:         ( 0.046182s |  0.00% |  0.26% )   ( 0.045855s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046081s |  0.00% |  0.25% )   ( 0.045749s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2112904 ${BASHPID}' INT
33.5.0:         ( 0.046109s |  0.00% |  0.26% )   ( 0.045804s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2112904 ${BASHPID}' TERM
34.5.0:         ( 0.048566s |  0.00% |  0.27% )   ( 0.048183s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2112904 ${BASHPID}' HUP
35.5.0:         ( 0.047925s |  0.00% |  0.27% )   ( 0.047583s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003772s |  0.00% |  0.00% )   ( 0.004211s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003858s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.kebbAi"/.nLines
38.5.2:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004312s |  0.00% |  0.00% )   ( 0.004705s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p27
41.5.0:         ( 0.185426s |  0.01% |  0.04% )   ( 0.005050s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.quit ]]
46.5.0:         ( 0.003818s |  0.00% |  0.00% )   ( 0.004330s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.done ]]
46.5.1:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003821s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028089s |  0.00% |  0.00% )   ( 0.028413s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003650s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.kebbAi"/.wait/p27
54.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.003694s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003652s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.222239s |  1.56% |  4.41% )   ( 16.614811s |  1.66% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003095s |  0.00% |  0.01% )   ( 0.003525s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.182077s |  0.10% |  6.86% )   ( 1.097536s |  0.10% |  6.60% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.017191s |  0.18% | 11.71% )   ( 1.971965s |  0.19% | 11.86% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.662155s |  0.15% |  9.65% )   ( 1.593108s |  0.15% |  9.58% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.006607s |  0.18% | 11.65% )   ( 1.976580s |  0.19% | 11.89% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.603706s |  0.14% |  9.31% )   ( 1.556000s |  0.15% |  9.36% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.067821s |  0.09% |  6.20% )   ( 1.012177s |  0.10% |  6.09% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.506259s |  0.04% |  2.93% )   ( 0.482911s |  0.04% |  2.90% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148642s |  0.10% |  6.66% )   ( 1.078863s |  0.10% |  6.49% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.425867s |  0.03% |  2.47% )   ( 0.412200s |  0.04% |  2.48% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439562s |  0.13% |  8.35% )   ( 1.397593s |  0.13% |  8.41% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.153697s |  0.28% | 18.31% )   ( 3.115040s |  0.31% | 18.74% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.525744s |  0.04% |  3.05% )   ( 0.469654s |  0.04% |  2.82% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.479816s |  0.04% |  2.78% )   ( 0.447659s |  0.04% |  2.69% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003358s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003531s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003822s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005066s |  0.00% |  0.02% )   ( 0.005136s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000178s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001401s |  0.00% |  0.00% )   ( 0.001418s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.380242s |  2.21% |  4.44% )   ( 0.001549s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000295s |  0.00% |  0.00% )   ( 0.000339s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000292s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.049936s |  0.00% |  0.00% )   ( 0.050202s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.kebbAi"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.kebbAi"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 2112918  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.kebbAi"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000322s |  0.00% |  0.00% )   ( 0.000371s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005572s |  0.00% |  0.00% )   ( 0.003436s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.kebbAi" 2>/dev/null

WALL CLOCK TIME: 51.163680s
TOTAL RUN TIME:  1098.711627s
TOTAL CPU TIME:  999.635778s

