LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 549.463270s | 50.10% )            ( 498.710357s | 49.94% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000700s |  0.00% |  0.00% )   ( 0.000355s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 549.462570s | 50.10% | 99.99% )   ( 498.710002s | 49.94% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.049240s |  0.00% |  0.00% )   ( 0.048908s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001260s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
231.2.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002189s |  0.00% |  0.00% )   ( 0.002260s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026982s |  0.00% |  0.00% )   ( 0.000492s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 549.374801s | 50.10% | 99.98% )   ( 498.651943s | 49.94% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001245s |  0.00% |  0.00% )   ( 0.001441s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001245s |  0.00% |100.00% )   ( 0.001441s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000095s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000095s |  0.00% |100.00% )   ( 0.000110s |  0.00% |100.00% )    	(1x)	│  │  │  └─  :
238.3.0:        ( 0.000100s |  0.00% |  0.00% )   ( 0.007800s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000547s |  0.00% |  0.00% )   ( 0.000309s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000113s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000859s |  0.00% |  0.00% )   ( 0.000995s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.91% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000066s |  0.00% |  7.68% )   ( 0.000078s |  0.00% |  7.83% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.79% )   ( 0.000079s |  0.00% |  7.93% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  8.26% )   ( 0.000082s |  0.00% |  8.24% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000069s |  0.00% |  8.03% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  8.03% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000066s |  0.00% |  7.68% )   ( 0.000077s |  0.00% |  7.73% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000112s |  0.00% | 13.03% )   ( 0.000124s |  0.00% | 12.46% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.68% )   ( 0.000078s |  0.00% |  7.83% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.56% )   ( 0.000077s |  0.00% |  7.73% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000071s |  0.00% |  8.26% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000069s |  0.00% |  8.03% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.001108s |  0.00% |  0.00% )   ( 0.000919s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.003662s |  0.00% |  0.00% )   ( 0.003824s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000384s |  0.00% | 10.48% )   ( 0.000415s |  0.00% | 10.85% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.003278s |  0.00% | 89.51% )   ( 0.003409s |  0.00% | 89.14% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000695s |  0.00% |  0.00% )   ( 0.000562s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000115s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000115s |  0.00% |100.00% )   ( 0.000132s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001270s |  0.00% |  0.00% )   ( 0.001346s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000517s |  0.00% |  0.00% )   ( 0.000531s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000435s |  0.00% |  0.00% )   ( 0.000450s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.339751s |  0.39% |  0.78% )   ( 1.819402s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000210s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024543s |  0.00% |  0.56% )   ( 0.024494s |  0.00% |  1.34% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023833s |  0.00% |  0.54% )   ( 0.023779s |  0.00% |  1.30% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023511s |  0.00% |  0.54% )   ( 0.023459s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023491s |  0.00% |  0.54% )   ( 0.023446s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023522s |  0.00% |  0.54% )   ( 0.023475s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.089564s |  0.00% |  0.00% )   ( 0.102118s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.823663s |  0.25% |  0.09% )   ( 0.122115s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001012s |  0.00% |  0.00% )   ( 0.001139s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.091233s |  0.00% |  0.00% )   ( 0.101205s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.087387s |  0.00% |  0.00% )   ( 0.100448s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.086954s |  0.00% |  0.00% )   ( 0.099868s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090752s |  0.00% |  0.00% )   ( 0.103619s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090568s |  0.00% |  0.00% )   ( 0.103532s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086228s |  0.00% |  0.00% )   ( 0.098878s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086683s |  0.00% |  0.00% )   ( 0.099588s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.087109s |  0.00% |  0.00% )   ( 0.100043s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000623s |  0.00% |  0.01% )   ( 0.000472s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
559.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086693s |  0.00% |  0.00% )   ( 0.099621s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085954s |  0.00% |  0.00% )   ( 0.098884s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.083436s |  0.00% |  0.00% )   ( 0.095846s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.089718s |  0.00% |  0.00% )   ( 0.102813s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087100s |  0.00% |  0.00% )   ( 0.099920s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.086755s |  0.00% |  0.00% )   ( 0.099752s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002871s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002842s |  0.00% |  0.00% )   ( 0.003272s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.055354s |  0.00% |  0.06% )   ( 0.044210s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003235s |  0.00% |  0.00% )   ( 0.003663s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002939s |  0.00% |  0.00% )   ( 0.003368s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003016s |  0.00% |  0.00% )   ( 0.003446s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006691s |  0.00% |  0.15% )   ( 0.006771s |  0.00% |  0.37% )    	(1x)	│  │  │  └─  $'@TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/pAuto ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/pAuto1\t1762870558591180\t487\t-\t-\tF:2 main.forkrun\tS:3 57565.57578.57581.57594\tN:169 {0-57565}.1.0{0-57578}.25{0-57581}.78{0-57594}.33{0-57611}\t558\t::\t\'<< (SUBSHELL): 57611 >>\'
598.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001950s |  0.00% |  0.00% )   ( 0.001129s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006343s |  0.00% |  0.00% )   ( 0.007281s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000212s |  0.00% |  3.34% )   ( 0.000227s |  0.00% |  3.11% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000123s |  0.00% |  1.93% )   ( 0.000142s |  0.00% |  1.95% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000140s |  0.00% |  2.20% )   ( 0.000159s |  0.00% |  2.18% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000371s |  0.00% |  5.84% )   ( 0.000392s |  0.00% |  5.38% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000119s |  0.00% |  1.87% )   ( 0.000138s |  0.00% |  1.89% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000118s |  0.00% |  1.86% )   ( 0.000136s |  0.00% |  1.86% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000123s |  0.00% |  1.93% )   ( 0.000141s |  0.00% |  1.93% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000064s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000087s |  0.00% |  1.37% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000081s |  0.00% |  1.27% )   ( 0.000109s |  0.00% |  1.49% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000100s |  0.00% |  1.57% )   ( 0.000111s |  0.00% |  1.52% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000109s |  0.00% |  1.71% )   ( 0.000118s |  0.00% |  1.62% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000081s |  0.00% |  1.27% )   ( 0.000093s |  0.00% |  1.27% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000086s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000090s |  0.00% |  1.41% )   ( 0.000099s |  0.00% |  1.35% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000077s |  0.00% |  1.21% )   ( 0.000090s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.24% )   ( 0.000091s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000073s |  0.00% |  1.15% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000078s |  0.00% |  1.22% )   ( 0.000087s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000080s |  0.00% |  1.26% )   ( 0.000091s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000079s |  0.00% |  1.24% )   ( 0.000091s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.19% )   ( 0.000088s |  0.00% |  1.20% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000075s |  0.00% |  1.18% )   ( 0.000086s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.29% )   ( 0.000095s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000086s |  0.00% |  1.18% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000104s |  0.00% |  1.63% )   ( 0.000117s |  0.00% |  1.60% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000063s |  0.00% |  0.99% )   ( 0.000074s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.00% )   ( 0.000075s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000098s |  0.00% |  1.54% )   ( 0.000110s |  0.00% |  1.51% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000073s |  0.00% |  1.15% )   ( 0.000083s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000084s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000084s |  0.00% |  1.32% )   ( 0.000096s |  0.00% |  1.31% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000294s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000304s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000282s |  0.00% |  0.00% )   ( 0.000297s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023993s |  0.00% |  0.00% )   ( 0.023944s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023766s |  0.00% |  0.00% )   ( 0.023717s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023753s |  0.00% |  0.00% )   ( 0.175041s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023396s |  0.00% |  0.00% )   ( 0.023319s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002950s |  0.00% |  0.00% )   ( 0.003378s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002781s |  0.00% |  0.00% )   ( 0.003196s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 19.100929s |  1.74% |  3.47% )   ( 18.536403s |  1.85% |  3.71% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000614s |  0.00% |  0.00% )   ( 0.000635s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.100230s |  1.74% | 99.99% )   ( 18.535670s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p0
30.5.0:         ( 0.023586s |  0.00% |  0.12% )   ( 0.023538s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023735s |  0.00% |  0.12% )   ( 0.023681s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024034s |  0.00% |  0.12% )   ( 0.023986s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024048s |  0.00% |  0.12% )   ( 0.023997s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024261s |  0.00% |  0.12% )   ( 0.024212s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004793s |  0.00% |  0.00% )   ( 0.005348s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004278s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005026s |  0.00% |  0.00% )   ( 0.005596s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p0
41.5.0:         ( 0.241022s |  0.02% |  0.04% )   ( 0.006508s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004557s |  0.00% |  0.00% )   ( 0.005138s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004898s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034261s |  0.00% |  0.00% )   ( 0.034719s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003971s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004936s |  0.00% |  0.00% )   ( 0.005503s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p0
66.5.0:         ( 0.003915s |  0.00% |  0.00% )   ( 0.004448s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.629173s |  1.69% |  3.48% )   ( 18.291129s |  1.83% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004105s |  0.00% |  0.02% )   ( 0.004658s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.276074s |  0.11% |  6.84% )   ( 1.255721s |  0.12% |  6.86% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.277588s |  0.20% | 12.22% )   ( 2.251572s |  0.22% | 12.30% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.844688s |  0.16% |  9.90% )   ( 1.826827s |  0.18% |  9.98% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.250970s |  0.20% | 12.08% )   ( 2.225173s |  0.22% | 12.16% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.654481s |  0.15% |  8.88% )   ( 1.630203s |  0.16% |  8.91% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.130689s |  0.10% |  6.06% )   ( 1.117567s |  0.11% |  6.10% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.597359s |  0.05% |  3.20% )   ( 0.565874s |  0.05% |  3.09% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.172425s |  0.10% |  6.29% )   ( 1.161633s |  0.11% |  6.35% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.495994s |  0.04% |  2.66% )   ( 0.489003s |  0.04% |  2.67% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.507673s |  0.13% |  8.09% )   ( 1.451145s |  0.14% |  7.93% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.291129s |  0.30% | 17.66% )   ( 3.227337s |  0.32% | 17.64% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.563644s |  0.05% |  3.02% )   ( 0.552907s |  0.05% |  3.02% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.562354s |  0.05% |  3.01% )   ( 0.531509s |  0.05% |  2.90% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005360s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005335s |  0.00% |  0.02% )   ( 0.005399s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002762s |  0.00% |  0.00% )   ( 0.003183s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 20.221625s |  1.84% |  3.68% )   ( 19.281070s |  1.93% |  3.86% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000610s |  0.00% |  0.00% )   ( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 20.220931s |  1.84% | 99.99% )   ( 19.280344s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000252s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p1
30.5.0:         ( 0.024924s |  0.00% |  0.12% )   ( 0.024866s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023599s |  0.00% |  0.11% )   ( 0.023552s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.023757s |  0.00% |  0.11% )   ( 0.023703s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.023938s |  0.00% |  0.11% )   ( 0.023891s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024005s |  0.00% |  0.11% )   ( 0.023958s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003252s |  0.00% |  0.00% )   ( 0.003664s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002904s |  0.00% |  0.00% )   ( 0.003304s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000229s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003386s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p1
41.5.0:         ( 0.305119s |  0.02% |  0.07% )   ( 0.004637s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003417s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.002889s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.002652s |  0.00% |  0.00% )   ( 0.003022s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002801s |  0.00% |  0.00% )   ( 0.003165s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022179s |  0.00% |  0.00% )   ( 0.022526s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002708s |  0.00% |  0.00% )   ( 0.003078s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002653s |  0.00% |  0.00% )   ( 0.003014s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002862s |  0.00% |  0.00% )   ( 0.003226s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.006911s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p1
66.5.0:         ( 0.002679s |  0.00% |  0.00% )   ( 0.003039s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002636s |  0.00% |  0.00% )   ( 0.003016s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 19.715845s |  1.79% |  5.13% )   ( 19.072965s |  1.91% |  5.20% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002939s |  0.00% |  0.01% )   ( 0.003329s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.396490s |  0.12% |  7.08% )   ( 1.321168s |  0.13% |  6.92% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.498028s |  0.22% | 12.67% )   ( 2.414622s |  0.24% | 12.65% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.893878s |  0.17% |  9.60% )   ( 1.800802s |  0.18% |  9.44% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.360361s |  0.21% | 11.97% )   ( 2.311761s |  0.23% | 12.12% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.807754s |  0.16% |  9.16% )   ( 1.761192s |  0.17% |  9.23% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.241293s |  0.11% |  6.29% )   ( 1.154934s |  0.11% |  6.05% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.466682s |  0.04% |  2.36% )   ( 0.445611s |  0.04% |  2.33% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.275097s |  0.11% |  6.46% )   ( 1.249542s |  0.12% |  6.55% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.383097s |  0.03% |  1.94% )   ( 0.376716s |  0.03% |  1.97% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.580609s |  0.14% |  8.01% )   ( 1.518019s |  0.15% |  7.95% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.936261s |  0.35% | 19.96% )   ( 3.892416s |  0.38% | 20.40% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.449089s |  0.04% |  2.27% )   ( 0.428493s |  0.04% |  2.24% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.424267s |  0.03% |  2.15% )   ( 0.394360s |  0.03% |  2.06% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002728s |  0.00% |  0.00% )   ( 0.003065s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002491s |  0.00% |  0.00% )   ( 0.002820s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002811s |  0.00% |  0.00% )   ( 0.003162s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006404s |  0.00% |  0.03% )   ( 0.006455s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.718929s |  1.61% |  3.22% )   ( 16.676391s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.718225s |  1.61% | 99.99% )   ( 16.675659s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p2
30.5.0:         ( 0.023476s |  0.00% |  0.13% )   ( 0.023432s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023714s |  0.00% |  0.13% )   ( 0.023669s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.023869s |  0.00% |  0.13% )   ( 0.023822s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.023968s |  0.00% |  0.13% )   ( 0.023924s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.023895s |  0.00% |  0.13% )   ( 0.023849s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004820s |  0.00% |  0.00% )   ( 0.005353s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p2
41.5.0:         ( 0.326601s |  0.02% |  0.06% )   ( 0.006515s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.005042s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004340s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034753s |  0.00% |  0.00% )   ( 0.032079s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005085s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004687s |  0.00% |  0.00% )   ( 0.005247s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p2
66.5.0:         ( 0.003874s |  0.00% |  0.00% )   ( 0.004414s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003617s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.165313s |  1.56% |  3.58% )   ( 16.438477s |  1.64% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003830s |  0.00% |  0.02% )   ( 0.004356s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171572s |  0.10% |  6.82% )   ( 1.095629s |  0.10% |  6.66% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.974019s |  0.18% | 11.50% )   ( 1.888235s |  0.18% | 11.48% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.590145s |  0.14% |  9.26% )   ( 1.569727s |  0.15% |  9.54% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.950647s |  0.17% | 11.36% )   ( 1.880155s |  0.18% | 11.43% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.568622s |  0.14% |  9.13% )   ( 1.536471s |  0.15% |  9.34% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005987s |  0.09% |  5.86% )   ( 0.983514s |  0.09% |  5.98% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531089s |  0.04% |  3.09% )   ( 0.521861s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.067141s |  0.09% |  6.21% )   ( 1.042321s |  0.10% |  6.34% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.511019s |  0.04% |  2.97% )   ( 0.462687s |  0.04% |  2.81% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.536557s |  0.14% |  8.95% )   ( 1.387406s |  0.13% |  8.43% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.164008s |  0.28% | 18.43% )   ( 3.037386s |  0.30% | 18.47% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.559039s |  0.05% |  3.25% )   ( 0.522860s |  0.05% |  3.18% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.531638s |  0.04% |  3.09% )   ( 0.505869s |  0.05% |  3.07% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003823s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003476s |  0.00% |  0.00% )   ( 0.003943s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005026s |  0.00% |  0.02% )   ( 0.005111s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 20.591888s |  1.87% |  3.74% )   ( 19.863343s |  1.98% |  3.98% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000585s |  0.00% |  0.00% )   ( 0.000599s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 20.591219s |  1.87% | 99.99% )   ( 19.862648s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p3
30.5.0:         ( 0.023790s |  0.00% |  0.11% )   ( 0.023734s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023812s |  0.00% |  0.11% )   ( 0.023764s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.023966s |  0.00% |  0.11% )   ( 0.023923s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.023984s |  0.00% |  0.11% )   ( 0.023938s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.023969s |  0.00% |  0.11% )   ( 0.023925s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003411s |  0.00% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p3
41.5.0:         ( 0.229428s |  0.02% |  0.04% )   ( 0.005366s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004313s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003482s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003836s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026472s |  0.00% |  0.00% )   ( 0.026742s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003784s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003639s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008665s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004063s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p3
66.5.0:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003294s |  0.00% |  0.00% )   ( 0.003741s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.146443s |  1.83% |  4.25% )   ( 19.639572s |  1.96% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003347s |  0.00% |  0.01% )   ( 0.003815s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.425103s |  0.12% |  7.07% )   ( 1.406659s |  0.14% |  7.16% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.621828s |  0.23% | 13.01% )   ( 2.593647s |  0.25% | 13.20% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.152846s |  0.19% | 10.68% )   ( 2.040038s |  0.20% | 10.38% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.636518s |  0.24% | 13.08% )   ( 2.611200s |  0.26% | 13.29% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.115513s |  0.19% | 10.50% )   ( 2.015168s |  0.20% | 10.26% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.291690s |  0.11% |  6.41% )   ( 1.228731s |  0.12% |  6.25% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575888s |  0.05% |  2.85% )   ( 0.522829s |  0.05% |  2.66% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.235528s |  0.11% |  6.13% )   ( 1.209251s |  0.12% |  6.15% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442382s |  0.04% |  2.19% )   ( 0.435117s |  0.04% |  2.21% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439179s |  0.13% |  7.14% )   ( 1.404329s |  0.14% |  7.15% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.212404s |  0.29% | 15.94% )   ( 3.189622s |  0.31% | 16.24% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.509261s |  0.04% |  2.52% )   ( 0.502987s |  0.05% |  2.56% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.484956s |  0.04% |  2.40% )   ( 0.476179s |  0.04% |  2.42% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003417s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003550s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006426s |  0.00% |  0.03% )   ( 0.006396s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.736449s |  1.61% |  3.22% )   ( 16.753204s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000617s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.735761s |  1.61% | 99.99% )   ( 16.752490s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000114s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p4
30.5.0:         ( 0.023622s |  0.00% |  0.13% )   ( 0.023576s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023953s |  0.00% |  0.13% )   ( 0.023910s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024001s |  0.00% |  0.13% )   ( 0.023956s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024060s |  0.00% |  0.13% )   ( 0.024014s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.023870s |  0.00% |  0.13% )   ( 0.023821s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.004999s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004768s |  0.00% |  0.00% )   ( 0.005291s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p4
41.5.0:         ( 0.291457s |  0.02% |  0.06% )   ( 0.006127s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004299s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003745s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004439s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034438s |  0.00% |  0.00% )   ( 0.031765s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004242s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004995s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004539s |  0.00% |  0.00% )   ( 0.005066s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p4
66.5.0:         ( 0.003652s |  0.00% |  0.00% )   ( 0.004156s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.215967s |  1.57% |  3.73% )   ( 16.513624s |  1.65% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003735s |  0.00% |  0.02% )   ( 0.004216s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.100162s |  0.10% |  6.39% )   ( 1.084450s |  0.10% |  6.56% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.925664s |  0.17% | 11.18% )   ( 1.905936s |  0.19% | 11.54% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602217s |  0.14% |  9.30% )   ( 1.570819s |  0.15% |  9.51% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.924923s |  0.17% | 11.18% )   ( 1.892908s |  0.18% | 11.46% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.555733s |  0.14% |  9.03% )   ( 1.505152s |  0.15% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.098075s |  0.10% |  6.37% )   ( 1.012231s |  0.10% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560973s |  0.05% |  3.25% )   ( 0.528419s |  0.05% |  3.19% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.150558s |  0.10% |  6.68% )   ( 1.042708s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.499812s |  0.04% |  2.90% )   ( 0.462399s |  0.04% |  2.80% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.477384s |  0.13% |  8.58% )   ( 1.372254s |  0.13% |  8.30% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.227234s |  0.29% | 18.74% )   ( 3.097177s |  0.31% | 18.75% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.555563s |  0.05% |  3.22% )   ( 0.528871s |  0.05% |  3.20% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533934s |  0.04% |  3.10% )   ( 0.506084s |  0.05% |  3.06% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003769s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003968s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008599s |  0.00% |  0.04% )   ( 0.008683s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 20.847894s |  1.90% |  3.79% )   ( 19.942016s |  1.99% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000593s |  0.00% |  0.00% )   ( 0.000609s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 20.847214s |  1.90% | 99.99% )   ( 19.941308s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000318s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p5
30.5.0:         ( 0.023817s |  0.00% |  0.11% )   ( 0.023773s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024042s |  0.00% |  0.11% )   ( 0.023998s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024020s |  0.00% |  0.11% )   ( 0.023975s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024006s |  0.00% |  0.11% )   ( 0.023960s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.023977s |  0.00% |  0.11% )   ( 0.023929s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004617s |  0.00% |  0.00% )   ( 0.005171s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004551s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005147s |  0.00% |  0.00% )   ( 0.005736s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p5
41.5.0:         ( 0.405978s |  0.03% |  0.06% )   ( 0.007423s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004705s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004532s |  0.00% |  0.00% )   ( 0.005106s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034767s |  0.00% |  0.00% )   ( 0.032220s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003993s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013756s |  0.00% |  0.00% )   ( 0.005077s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005065s |  0.00% |  0.00% )   ( 0.005662s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p5
66.5.0:         ( 0.007206s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.198338s |  1.84% |  3.46% )   ( 19.696869s |  1.97% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004245s |  0.00% |  0.02% )   ( 0.004840s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.468739s |  0.13% |  7.27% )   ( 1.446712s |  0.14% |  7.34% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.294266s |  0.20% | 11.35% )   ( 2.250669s |  0.22% | 11.42% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.877921s |  0.17% |  9.29% )   ( 1.829329s |  0.18% |  9.28% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.358853s |  0.21% | 11.67% )   ( 2.245749s |  0.22% | 11.40% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.825952s |  0.16% |  9.04% )   ( 1.787575s |  0.17% |  9.07% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.296960s |  0.11% |  6.42% )   ( 1.263751s |  0.12% |  6.41% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.597894s |  0.05% |  2.96% )   ( 0.592756s |  0.05% |  3.00% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.367355s |  0.12% |  6.76% )   ( 1.315635s |  0.13% |  6.67% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.555664s |  0.05% |  2.75% )   ( 0.515525s |  0.05% |  2.61% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.651914s |  0.15% |  8.17% )   ( 1.615150s |  0.16% |  8.20% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.701500s |  0.33% | 18.32% )   ( 3.687940s |  0.36% | 18.72% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.614186s |  0.05% |  3.04% )   ( 0.589466s |  0.05% |  2.99% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.582889s |  0.05% |  2.88% )   ( 0.551772s |  0.05% |  2.80% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004689s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004329s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004982s |  0.00% |  0.02% )   ( 0.005078s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 20.237963s |  1.84% |  3.68% )   ( 19.417472s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000617s |  0.00% |  0.00% )   ( 0.000635s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 20.237261s |  1.84% | 99.99% )   ( 19.416739s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p6
30.5.0:         ( 0.023880s |  0.00% |  0.11% )   ( 0.023839s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024011s |  0.00% |  0.11% )   ( 0.023968s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024000s |  0.00% |  0.11% )   ( 0.023953s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024002s |  0.00% |  0.11% )   ( 0.023951s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.023815s |  0.00% |  0.11% )   ( 0.023769s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003715s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003056s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003848s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p6
41.5.0:         ( 0.317094s |  0.02% |  0.07% )   ( 0.005372s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003804s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003057s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003235s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024040s |  0.00% |  0.00% )   ( 0.024385s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003018s |  0.00% |  0.00% )   ( 0.003438s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002918s |  0.00% |  0.00% )   ( 0.003318s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003204s |  0.00% |  0.00% )   ( 0.003609s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p6
66.5.0:         ( 0.002956s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002892s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.718668s |  1.79% |  4.63% )   ( 19.202909s |  1.92% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002972s |  0.00% |  0.01% )   ( 0.003387s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.397238s |  0.12% |  7.08% )   ( 1.351333s |  0.13% |  7.03% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.673462s |  0.24% | 13.55% )   ( 2.592961s |  0.25% | 13.50% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.021507s |  0.18% | 10.25% )   ( 1.993179s |  0.19% | 10.37% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.572110s |  0.23% | 13.04% )   ( 2.531175s |  0.25% | 13.18% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.977394s |  0.18% | 10.02% )   ( 1.913947s |  0.19% |  9.96% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.231651s |  0.11% |  6.24% )   ( 1.186906s |  0.11% |  6.18% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.523577s |  0.04% |  2.65% )   ( 0.502610s |  0.05% |  2.61% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.369951s |  0.12% |  6.94% )   ( 1.341564s |  0.13% |  6.98% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.413061s |  0.03% |  2.09% )   ( 0.403044s |  0.04% |  2.09% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.378633s |  0.12% |  6.99% )   ( 1.343278s |  0.13% |  6.99% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.232389s |  0.29% | 16.39% )   ( 3.148868s |  0.31% | 16.39% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.473376s |  0.04% |  2.40% )   ( 0.455554s |  0.04% |  2.37% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.451347s |  0.04% |  2.28% )   ( 0.435103s |  0.04% |  2.26% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003056s |  0.00% |  0.00% )   ( 0.003456s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002851s |  0.00% |  0.00% )   ( 0.003227s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003048s |  0.00% |  0.00% )   ( 0.003437s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005120s |  0.00% |  0.02% )   ( 0.005206s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 18.841607s |  1.71% |  3.42% )   ( 18.298132s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000629s |  0.00% |  0.00% )   ( 0.000642s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 18.840890s |  1.71% | 99.99% )   ( 18.297389s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000329s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000354s |  0.00% |  0.00% )   ( 0.000399s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p7
30.5.0:         ( 0.024042s |  0.00% |  0.12% )   ( 0.024004s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024210s |  0.00% |  0.12% )   ( 0.024164s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024105s |  0.00% |  0.12% )   ( 0.024054s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024150s |  0.00% |  0.12% )   ( 0.024100s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024053s |  0.00% |  0.12% )   ( 0.024005s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002462s |  0.00% |  0.00% )   ( 0.002753s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002233s |  0.00% |  0.00% )   ( 0.002545s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002681s |  0.00% |  0.00% )   ( 0.003009s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p7
41.5.0:         ( 0.145879s |  0.01% |  0.04% )   ( 0.003562s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002559s |  0.00% |  0.00% )   ( 0.002865s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.002444s |  0.00% |  0.00% )   ( 0.002760s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.002299s |  0.00% |  0.00% )   ( 0.002610s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002439s |  0.00% |  0.00% )   ( 0.002770s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018768s |  0.00% |  0.00% )   ( 0.019030s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002075s |  0.00% |  0.00% )   ( 0.002371s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002166s |  0.00% |  0.00% )   ( 0.002463s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002375s |  0.00% |  0.00% )   ( 0.002690s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002620s |  0.00% |  0.00% )   ( 0.002924s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p7
66.5.0:         ( 0.002149s |  0.00% |  0.00% )   ( 0.002447s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002124s |  0.00% |  0.00% )   ( 0.002424s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.509115s |  1.68% |  6.54% )   ( 18.105778s |  1.81% |  6.59% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002052s |  0.00% |  0.01% )   ( 0.002346s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.121965s |  0.10% |  6.06% )   ( 1.116544s |  0.11% |  6.16% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.282789s |  0.20% | 12.33% )   ( 2.258613s |  0.22% | 12.47% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.751469s |  0.15% |  9.46% )   ( 1.735889s |  0.17% |  9.58% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.285494s |  0.20% | 12.34% )   ( 2.248279s |  0.22% | 12.41% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.770440s |  0.16% |  9.56% )   ( 1.692721s |  0.16% |  9.34% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.102561s |  0.10% |  5.95% )   ( 1.062184s |  0.10% |  5.86% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.430340s |  0.03% |  2.32% )   ( 0.396819s |  0.03% |  2.19% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.203654s |  0.10% |  6.50% )   ( 1.192879s |  0.11% |  6.58% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.344851s |  0.03% |  1.86% )   ( 0.327295s |  0.03% |  1.80% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.473061s |  0.13% |  7.95% )   ( 1.449986s |  0.14% |  8.00% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.988356s |  0.36% | 21.54% )   ( 3.933035s |  0.39% | 21.72% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.389194s |  0.03% |  2.10% )   ( 0.361277s |  0.03% |  1.99% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.362889s |  0.03% |  1.96% )   ( 0.327911s |  0.03% |  1.81% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002168s |  0.00% |  0.00% )   ( 0.002470s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.005010s |  0.00% |  0.00% )   ( 0.002287s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002212s |  0.00% |  0.00% )   ( 0.002476s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005028s |  0.00% |  0.02% )   ( 0.005097s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.913070s |  1.63% |  3.26% )   ( 17.041042s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000640s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.912343s |  1.63% | 99.99% )   ( 17.040286s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p8
30.5.0:         ( 0.023943s |  0.00% |  0.13% )   ( 0.023900s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024026s |  0.00% |  0.13% )   ( 0.023982s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024034s |  0.00% |  0.13% )   ( 0.023988s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024041s |  0.00% |  0.13% )   ( 0.023997s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024062s |  0.00% |  0.13% )   ( 0.024005s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003445s |  0.00% |  0.00% )   ( 0.003896s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004752s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p8
41.5.0:         ( 0.223384s |  0.02% |  0.05% )   ( 0.005640s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004251s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003565s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003568s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031708s |  0.00% |  0.00% )   ( 0.027642s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003345s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004008s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p8
66.5.0:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003265s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.466706s |  1.59% |  4.23% )   ( 16.813579s |  1.68% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003354s |  0.00% |  0.01% )   ( 0.003820s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.105035s |  0.10% |  6.32% )   ( 1.080594s |  0.10% |  6.42% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.040486s |  0.18% | 11.68% )   ( 1.998460s |  0.20% | 11.88% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.713078s |  0.15% |  9.80% )   ( 1.621612s |  0.16% |  9.64% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.028403s |  0.18% | 11.61% )   ( 1.970238s |  0.19% | 11.71% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.601937s |  0.14% |  9.17% )   ( 1.568920s |  0.15% |  9.33% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.993339s |  0.09% |  5.68% )   ( 0.987513s |  0.09% |  5.87% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.509061s |  0.04% |  2.91% )   ( 0.483764s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.150181s |  0.10% |  6.58% )   ( 1.064074s |  0.10% |  6.32% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473623s |  0.04% |  2.71% )   ( 0.423186s |  0.04% |  2.51% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.523974s |  0.13% |  8.72% )   ( 1.382671s |  0.13% |  8.22% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.336137s |  0.30% | 19.09% )   ( 3.283253s |  0.32% | 19.52% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.496368s |  0.04% |  2.84% )   ( 0.481607s |  0.04% |  2.86% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491730s |  0.04% |  2.81% )   ( 0.463867s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003481s |  0.00% |  0.00% )   ( 0.003958s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003150s |  0.00% |  0.00% )   ( 0.003609s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007304s |  0.00% |  0.00% )   ( 0.004078s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008149s |  0.00% |  0.04% )   ( 0.008233s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 18.406491s |  1.67% |  3.35% )   ( 17.708716s |  1.77% |  3.55% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000683s |  0.00% |  0.00% )   ( 0.000699s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 18.405723s |  1.67% | 99.99% )   ( 17.707920s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p9
30.5.0:         ( 0.025637s |  0.00% |  0.13% )   ( 0.025585s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040130s |  0.00% |  0.21% )   ( 0.039984s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.032522s |  0.00% |  0.17% )   ( 0.032419s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.038989s |  0.00% |  0.21% )   ( 0.038846s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.026753s |  0.00% |  0.14% )   ( 0.026670s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003331s |  0.00% |  0.00% )   ( 0.003750s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003011s |  0.00% |  0.00% )   ( 0.003425s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p9
41.5.0:         ( 0.229470s |  0.02% |  0.05% )   ( 0.005078s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003460s |  0.00% |  0.00% )   ( 0.003891s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003236s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.002828s |  0.00% |  0.00% )   ( 0.003233s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003089s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025730s |  0.00% |  0.00% )   ( 0.026044s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002759s |  0.00% |  0.00% )   ( 0.003139s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002882s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006139s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003599s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p9
66.5.0:         ( 0.002975s |  0.00% |  0.00% )   ( 0.003365s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002763s |  0.00% |  0.00% )   ( 0.003151s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.927917s |  1.63% |  4.87% )   ( 17.451195s |  1.74% |  4.92% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002752s |  0.00% |  0.01% )   ( 0.003135s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171311s |  0.10% |  6.53% )   ( 1.162611s |  0.11% |  6.66% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.142847s |  0.19% | 11.95% )   ( 2.107752s |  0.21% | 12.07% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.708721s |  0.15% |  9.53% )   ( 1.656629s |  0.16% |  9.49% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.149239s |  0.19% | 11.98% )   ( 2.100811s |  0.21% | 12.03% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.723878s |  0.15% |  9.61% )   ( 1.629995s |  0.16% |  9.34% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.107052s |  0.10% |  6.17% )   ( 1.035702s |  0.10% |  5.93% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.490792s |  0.04% |  2.73% )   ( 0.454131s |  0.04% |  2.60% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.133987s |  0.10% |  6.32% )   ( 1.104956s |  0.11% |  6.33% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.405492s |  0.03% |  2.26% )   ( 0.393060s |  0.03% |  2.25% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.449623s |  0.13% |  8.08% )   ( 1.428107s |  0.14% |  8.18% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.555264s |  0.32% | 19.83% )   ( 3.520324s |  0.35% | 20.17% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.457247s |  0.04% |  2.55% )   ( 0.438937s |  0.04% |  2.51% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.429712s |  0.03% |  2.39% )   ( 0.415045s |  0.04% |  2.37% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002883s |  0.00% |  0.00% )   ( 0.003292s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002688s |  0.00% |  0.00% )   ( 0.003068s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003002s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004972s |  0.00% |  0.02% )   ( 0.005039s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.704164s |  1.61% |  3.22% )   ( 17.003981s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000684s |  0.00% |  0.00% )   ( 0.000700s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.703394s |  1.61% | 99.99% )   ( 17.003182s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p10
30.5.0:         ( 0.030826s |  0.00% |  0.17% )   ( 0.030750s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045957s |  0.00% |  0.25% )   ( 0.045790s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.031466s |  0.00% |  0.17% )   ( 0.031367s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.037717s |  0.00% |  0.21% )   ( 0.037596s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.028927s |  0.00% |  0.16% )   ( 0.028841s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004509s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003540s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004501s |  0.00% |  0.00% )   ( 0.004998s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p10
41.5.0:         ( 0.221388s |  0.02% |  0.05% )   ( 0.005819s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003814s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003560s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028685s |  0.00% |  0.00% )   ( 0.029074s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003587s |  0.00% |  0.00% )   ( 0.004038s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011033s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004831s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p10
66.5.0:         ( 0.003407s |  0.00% |  0.00% )   ( 0.003882s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003799s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.201513s |  1.56% |  4.22% )   ( 16.716343s |  1.67% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003422s |  0.00% |  0.01% )   ( 0.003889s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.124454s |  0.10% |  6.53% )   ( 1.087313s |  0.10% |  6.50% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.996547s |  0.18% | 11.60% )   ( 1.958134s |  0.19% | 11.71% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.614843s |  0.14% |  9.38% )   ( 1.601620s |  0.16% |  9.58% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.075848s |  0.18% | 12.06% )   ( 1.964054s |  0.19% | 11.74% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.604708s |  0.14% |  9.32% )   ( 1.537784s |  0.15% |  9.19% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049476s |  0.09% |  6.10% )   ( 1.022766s |  0.10% |  6.11% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.497035s |  0.04% |  2.88% )   ( 0.482614s |  0.04% |  2.88% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106696s |  0.10% |  6.43% )   ( 1.083879s |  0.10% |  6.48% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.468355s |  0.04% |  2.72% )   ( 0.425229s |  0.04% |  2.54% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.430442s |  0.13% |  8.31% )   ( 1.399497s |  0.14% |  8.37% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.243915s |  0.29% | 18.85% )   ( 3.207238s |  0.32% | 19.18% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.506830s |  0.04% |  2.94% )   ( 0.482332s |  0.04% |  2.88% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.478942s |  0.04% |  2.78% )   ( 0.459994s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003597s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003274s |  0.00% |  0.00% )   ( 0.003735s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009129s |  0.00% |  0.05% )   ( 0.009198s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.462889s |  1.59% |  3.17% )   ( 16.416917s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000714s |  0.00% |  0.00% )   ( 0.000733s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.462090s |  1.59% | 99.99% )   ( 16.416087s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p11
30.5.0:         ( 0.024116s |  0.00% |  0.13% )   ( 0.024040s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024030s |  0.00% |  0.13% )   ( 0.023983s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024052s |  0.00% |  0.13% )   ( 0.024000s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024056s |  0.00% |  0.13% )   ( 0.024009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024134s |  0.00% |  0.13% )   ( 0.024084s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005060s |  0.00% |  0.00% )   ( 0.005651s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005110s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005351s |  0.00% |  0.00% )   ( 0.005944s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p11
41.5.0:         ( 0.499964s |  0.04% |  0.09% )   ( 0.007485s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006741s |  0.00% |  0.00% )   ( 0.005422s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004153s |  0.00% |  0.00% )   ( 0.004752s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004381s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036482s |  0.00% |  0.00% )   ( 0.033923s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004292s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005042s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005169s |  0.00% |  0.00% )   ( 0.005719s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p11
66.5.0:         ( 0.007261s |  0.00% |  0.00% )   ( 0.004843s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.719051s |  1.52% |  3.30% )   ( 16.167751s |  1.61% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003984s |  0.00% |  0.02% )   ( 0.004529s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.095299s |  0.09% |  6.55% )   ( 1.065871s |  0.10% |  6.59% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.922351s |  0.17% | 11.49% )   ( 1.787537s |  0.17% | 11.05% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602218s |  0.14% |  9.58% )   ( 1.543599s |  0.15% |  9.54% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.820489s |  0.16% | 10.88% )   ( 1.795095s |  0.17% | 11.10% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.501779s |  0.13% |  8.98% )   ( 1.484175s |  0.14% |  9.17% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.066904s |  0.09% |  6.38% )   ( 1.010354s |  0.10% |  6.24% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.563086s |  0.05% |  3.36% )   ( 0.555333s |  0.05% |  3.43% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.041438s |  0.09% |  6.22% )   ( 1.031370s |  0.10% |  6.37% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522181s |  0.04% |  3.12% )   ( 0.497250s |  0.04% |  3.07% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.473432s |  0.13% |  8.81% )   ( 1.391194s |  0.13% |  8.60% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.962171s |  0.27% | 17.71% )   ( 2.907233s |  0.29% | 17.98% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.582108s |  0.05% |  3.48% )   ( 0.557887s |  0.05% |  3.45% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561611s |  0.05% |  3.35% )   ( 0.536324s |  0.05% |  3.31% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004417s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.007001s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004457s |  0.00% |  0.00% )   ( 0.004990s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004971s |  0.00% |  0.02% )   ( 0.005072s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.169358s |  1.74% |  3.48% )   ( 18.573445s |  1.86% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000721s |  0.00% |  0.00% )   ( 0.000735s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.168548s |  1.74% | 99.99% )   ( 18.572609s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p12
30.5.0:         ( 0.025274s |  0.00% |  0.13% )   ( 0.025209s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025323s |  0.00% |  0.13% )   ( 0.025269s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.025258s |  0.00% |  0.13% )   ( 0.025207s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.025259s |  0.00% |  0.13% )   ( 0.025208s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.025269s |  0.00% |  0.13% )   ( 0.025214s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003633s |  0.00% |  0.00% )   ( 0.004076s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003238s |  0.00% |  0.00% )   ( 0.003679s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p12
41.5.0:         ( 0.324631s |  0.02% |  0.07% )   ( 0.005402s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004199s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003390s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003077s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003630s |  0.00% |  0.00% )   ( 0.003671s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027487s |  0.00% |  0.00% )   ( 0.027855s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003269s |  0.00% |  0.00% )   ( 0.003695s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003084s |  0.00% |  0.00% )   ( 0.003525s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006410s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p12
66.5.0:         ( 0.003141s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003011s |  0.00% |  0.00% )   ( 0.003428s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.625262s |  1.69% |  4.41% )   ( 18.345894s |  1.83% |  4.48% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003201s |  0.00% |  0.01% )   ( 0.003650s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.295202s |  0.11% |  6.95% )   ( 1.276446s |  0.12% |  6.95% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.359590s |  0.21% | 12.66% )   ( 2.318981s |  0.23% | 12.64% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.865864s |  0.17% | 10.01% )   ( 1.849038s |  0.18% | 10.07% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.349869s |  0.21% | 12.61% )   ( 2.317064s |  0.23% | 12.62% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.829971s |  0.16% |  9.82% )   ( 1.802899s |  0.18% |  9.82% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.151062s |  0.10% |  6.18% )   ( 1.140187s |  0.11% |  6.21% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.526087s |  0.04% |  2.82% )   ( 0.501067s |  0.05% |  2.73% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.256012s |  0.11% |  6.74% )   ( 1.231932s |  0.12% |  6.71% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452503s |  0.04% |  2.42% )   ( 0.429485s |  0.04% |  2.34% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.611066s |  0.14% |  8.64% )   ( 1.591665s |  0.15% |  8.67% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.988363s |  0.27% | 16.04% )   ( 2.962180s |  0.29% | 16.14% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.480241s |  0.04% |  2.57% )   ( 0.473436s |  0.04% |  2.58% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.456231s |  0.04% |  2.44% )   ( 0.447864s |  0.04% |  2.44% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003188s |  0.00% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003016s |  0.00% |  0.00% )   ( 0.003430s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004574s |  0.00% |  0.00% )   ( 0.003707s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005174s |  0.00% |  0.02% )   ( 0.005239s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 20.383508s |  1.85% |  3.71% )   ( 19.413009s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000741s |  0.00% |  0.00% )   ( 0.000755s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 20.382676s |  1.85% | 99.99% )   ( 19.412151s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p13
30.5.0:         ( 0.024185s |  0.00% |  0.11% )   ( 0.024068s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023944s |  0.00% |  0.11% )   ( 0.023894s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024146s |  0.00% |  0.11% )   ( 0.024092s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.024059s |  0.00% |  0.11% )   ( 0.024011s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.024022s |  0.00% |  0.11% )   ( 0.023972s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004386s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005146s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p13
41.5.0:         ( 0.265336s |  0.02% |  0.05% )   ( 0.006059s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003910s |  0.00% |  0.00% )   ( 0.004445s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003667s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003825s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029954s |  0.00% |  0.00% )   ( 0.030315s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003686s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006926s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004367s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p13
66.5.0:         ( 0.003636s |  0.00% |  0.00% )   ( 0.004153s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003507s |  0.00% |  0.00% )   ( 0.003977s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.895915s |  1.81% |  3.90% )   ( 19.179335s |  1.92% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003685s |  0.00% |  0.01% )   ( 0.004174s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.420608s |  0.12% |  7.14% )   ( 1.379494s |  0.13% |  7.19% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.319701s |  0.21% | 11.65% )   ( 2.259215s |  0.22% | 11.77% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.901148s |  0.17% |  9.55% )   ( 1.800501s |  0.18% |  9.38% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.272441s |  0.20% | 11.42% )   ( 2.226088s |  0.22% | 11.60% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.796208s |  0.16% |  9.02% )   ( 1.733790s |  0.17% |  9.03% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.259695s |  0.11% |  6.33% )   ( 1.210583s |  0.12% |  6.31% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.550205s |  0.05% |  2.76% )   ( 0.540802s |  0.05% |  2.81% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.340749s |  0.12% |  6.73% )   ( 1.265492s |  0.12% |  6.59% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475042s |  0.04% |  2.38% )   ( 0.471071s |  0.04% |  2.45% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.666436s |  0.15% |  8.37% )   ( 1.558166s |  0.15% |  8.12% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.791418s |  0.34% | 19.05% )   ( 3.680845s |  0.36% | 19.19% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.556194s |  0.05% |  2.79% )   ( 0.534271s |  0.05% |  2.78% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542385s |  0.04% |  2.72% )   ( 0.514843s |  0.05% |  2.68% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004357s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004097s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004313s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004856s |  0.00% |  0.02% )   ( 0.004951s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.466956s |  1.59% |  3.17% )   ( 16.782367s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000749s |  0.00% |  0.00% )   ( 0.000764s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.466119s |  1.59% | 99.99% )   ( 16.781503s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p14
30.5.0:         ( 0.024012s |  0.00% |  0.13% )   ( 0.023966s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023986s |  0.00% |  0.13% )   ( 0.023939s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.024100s |  0.00% |  0.13% )   ( 0.024048s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.040649s |  0.00% |  0.23% )   ( 0.040533s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.026942s |  0.00% |  0.15% )   ( 0.026865s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004853s |  0.00% |  0.00% )   ( 0.005422s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005053s |  0.00% |  0.00% )   ( 0.005620s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p14
41.5.0:         ( 0.293923s |  0.02% |  0.05% )   ( 0.006849s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004645s |  0.00% |  0.00% )   ( 0.005184s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004298s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004344s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033520s |  0.00% |  0.00% )   ( 0.033984s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004137s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004963s |  0.00% |  0.00% )   ( 0.005523s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p14
66.5.0:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004517s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.922687s |  1.54% |  3.46% )   ( 16.516769s |  1.65% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004083s |  0.00% |  0.02% )   ( 0.004615s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.118450s |  0.10% |  6.60% )   ( 1.094707s |  0.10% |  6.62% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.890245s |  0.17% | 11.16% )   ( 1.851030s |  0.18% | 11.20% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.645481s |  0.15% |  9.72% )   ( 1.578674s |  0.15% |  9.55% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.934938s |  0.17% | 11.43% )   ( 1.871640s |  0.18% | 11.33% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.590446s |  0.14% |  9.39% )   ( 1.557604s |  0.15% |  9.43% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015314s |  0.09% |  5.99% )   ( 1.012523s |  0.10% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555922s |  0.05% |  3.28% )   ( 0.552558s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.070531s |  0.09% |  6.32% )   ( 1.055022s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502936s |  0.04% |  2.97% )   ( 0.486083s |  0.04% |  2.94% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439393s |  0.13% |  8.50% )   ( 1.400125s |  0.14% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.050356s |  0.27% | 18.02% )   ( 2.981444s |  0.29% | 18.05% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.561654s |  0.05% |  3.31% )   ( 0.547596s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542938s |  0.04% |  3.20% )   ( 0.523148s |  0.05% |  3.16% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004929s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004915s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005135s |  0.00% |  0.02% )   ( 0.005191s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.125364s |  1.56% |  3.11% )   ( 15.823107s |  1.58% |  3.17% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000898s |  0.00% |  0.00% )   ( 0.000923s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.124296s |  1.56% | 99.99% )   ( 15.821990s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p15
30.5.0:         ( 0.045958s |  0.00% |  0.26% )   ( 0.045805s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046183s |  0.00% |  0.26% )   ( 0.046005s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.045973s |  0.00% |  0.26% )   ( 0.045807s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.045982s |  0.00% |  0.26% )   ( 0.045820s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.046321s |  0.00% |  0.27% )   ( 0.046153s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005193s |  0.00% |  0.00% )   ( 0.005821s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004862s |  0.00% |  0.00% )   ( 0.005477s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005599s |  0.00% |  0.00% )   ( 0.006221s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p15
41.5.0:         ( 0.332326s |  0.03% |  0.06% )   ( 0.007322s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004760s |  0.00% |  0.00% )   ( 0.005355s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004110s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034553s |  0.00% |  0.00% )   ( 0.035033s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004724s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005111s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005053s |  0.00% |  0.00% )   ( 0.005625s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p15
66.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004784s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.443847s |  1.49% |  3.31% )   ( 15.457397s |  1.54% |  3.36% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004274s |  0.00% |  0.02% )   ( 0.004871s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.168755s |  0.10% |  7.10% )   ( 1.041155s |  0.10% |  6.73% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.734474s |  0.15% | 10.54% )   ( 1.708272s |  0.17% | 11.05% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.553627s |  0.14% |  9.44% )   ( 1.488104s |  0.14% |  9.62% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.720726s |  0.15% | 10.46% )   ( 1.700938s |  0.17% | 11.00% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.494625s |  0.13% |  9.08% )   ( 1.423293s |  0.14% |  9.20% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.063798s |  0.09% |  6.46% )   ( 0.962286s |  0.09% |  6.22% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.594654s |  0.05% |  3.61% )   ( 0.556931s |  0.05% |  3.60% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.083788s |  0.09% |  6.59% )   ( 0.983292s |  0.09% |  6.36% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.539466s |  0.04% |  3.28% )   ( 0.495088s |  0.04% |  3.20% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.429330s |  0.13% |  8.69% )   ( 1.324320s |  0.13% |  8.56% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.847348s |  0.25% | 17.31% )   ( 2.668760s |  0.26% | 17.26% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.597468s |  0.05% |  3.63% )   ( 0.550812s |  0.05% |  3.56% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.611514s |  0.05% |  3.71% )   ( 0.549275s |  0.05% |  3.55% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004652s |  0.00% |  0.00% )   ( 0.005248s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005003s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008734s |  0.00% |  0.05% )   ( 0.008825s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.715474s |  1.70% |  3.40% )   ( 18.245558s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001055s |  0.00% |  0.00% )   ( 0.001077s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.714272s |  1.70% | 99.99% )   ( 18.244314s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p16
30.5.0:         ( 0.043702s |  0.00% |  0.23% )   ( 0.043561s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042412s |  0.00% |  0.22% )   ( 0.042260s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.045428s |  0.00% |  0.24% )   ( 0.045269s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.045515s |  0.00% |  0.24% )   ( 0.045345s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.036719s |  0.00% |  0.19% )   ( 0.036595s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001681s |  0.00% |  0.00% )   ( 0.001873s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001454s |  0.00% |  0.00% )   ( 0.001660s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001687s |  0.00% |  0.00% )   ( 0.001885s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p16
41.5.0:         ( 0.122089s |  0.01% |  0.06% )   ( 0.002242s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001534s |  0.00% |  0.00% )   ( 0.001738s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.001600s |  0.00% |  0.00% )   ( 0.001789s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.001373s |  0.00% |  0.00% )   ( 0.001564s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001603s |  0.00% |  0.00% )   ( 0.001804s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.013665s |  0.00% |  0.00% )   ( 0.010985s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001499s |  0.00% |  0.00% )   ( 0.001702s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001300s |  0.00% |  0.00% )   ( 0.001485s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001523s |  0.00% |  0.00% )   ( 0.001725s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001806s |  0.00% |  0.00% )   ( 0.002004s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p16
66.5.0:         ( 0.001406s |  0.00% |  0.00% )   ( 0.001576s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001187s |  0.00% |  0.00% )   ( 0.001348s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.329688s |  1.67% | 10.88% )   ( 17.979780s |  1.80% | 10.95% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001229s |  0.00% |  0.00% )   ( 0.001415s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.111119s |  0.10% |  6.06% )   ( 1.102590s |  0.11% |  6.13% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.386375s |  0.21% | 13.01% )   ( 2.336486s |  0.23% | 12.99% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.774823s |  0.16% |  9.68% )   ( 1.737761s |  0.17% |  9.66% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.368222s |  0.21% | 12.92% )   ( 2.347682s |  0.23% | 13.05% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.691160s |  0.15% |  9.22% )   ( 1.665703s |  0.16% |  9.26% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023627s |  0.09% |  5.58% )   ( 1.014980s |  0.10% |  5.64% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.313014s |  0.02% |  1.70% )   ( 0.312409s |  0.03% |  1.73% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.158144s |  0.10% |  6.31% )   ( 1.116722s |  0.11% |  6.21% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.254606s |  0.02% |  1.38% )   ( 0.235130s |  0.02% |  1.30% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.449500s |  0.13% |  7.90% )   ( 1.409348s |  0.14% |  7.83% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.258906s |  0.38% | 23.23% )   ( 4.177947s |  0.41% | 23.23% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.301807s |  0.02% |  1.64% )   ( 0.284613s |  0.02% |  1.58% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.237156s |  0.02% |  1.29% )   ( 0.236994s |  0.02% |  1.31% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001262s |  0.00% |  0.00% )   ( 0.001433s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001111s |  0.00% |  0.00% )   ( 0.001272s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001259s |  0.00% |  0.00% )   ( 0.001415s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit
80.5.0:         ( 0.000249s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p* 1>&21
81.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009679s |  0.00% |  0.05% )   ( 0.009646s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 18.119825s |  1.65% |  3.29% )   ( 17.075954s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001081s |  0.00% |  0.00% )   ( 0.001100s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.118597s |  1.65% | 99.99% )   ( 17.074687s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p17
30.5.0:         ( 0.041745s |  0.00% |  0.23% )   ( 0.041599s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026735s |  0.00% |  0.14% )   ( 0.026650s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.029467s |  0.00% |  0.16% )   ( 0.029378s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.029588s |  0.00% |  0.16% )   ( 0.029485s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.029276s |  0.00% |  0.16% )   ( 0.029179s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004639s |  0.00% |  0.00% )   ( 0.005168s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004566s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005591s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p17
41.5.0:         ( 0.365829s |  0.03% |  0.07% )   ( 0.006971s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004678s |  0.00% |  0.00% )   ( 0.005242s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004396s |  0.00% |  0.00% )   ( 0.004917s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004684s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033451s |  0.00% |  0.00% )   ( 0.032810s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003807s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008342s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005020s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p17
66.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003664s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.485819s |  1.59% |  3.71% )   ( 16.797831s |  1.68% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003758s |  0.00% |  0.02% )   ( 0.004275s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171355s |  0.10% |  6.69% )   ( 1.120577s |  0.11% |  6.67% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.048724s |  0.18% | 11.71% )   ( 1.990928s |  0.19% | 11.85% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.774225s |  0.16% | 10.14% )   ( 1.610786s |  0.16% |  9.58% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.987090s |  0.18% | 11.36% )   ( 1.907342s |  0.19% | 11.35% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.587411s |  0.14% |  9.07% )   ( 1.546452s |  0.15% |  9.20% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.054905s |  0.09% |  6.03% )   ( 1.030414s |  0.10% |  6.13% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.548593s |  0.05% |  3.13% )   ( 0.534492s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102389s |  0.10% |  6.30% )   ( 1.062149s |  0.10% |  6.32% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.486098s |  0.04% |  2.77% )   ( 0.464759s |  0.04% |  2.76% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.449268s |  0.13% |  8.28% )   ( 1.394094s |  0.13% |  8.29% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.140182s |  0.28% | 17.95% )   ( 3.089968s |  0.30% | 18.39% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.588410s |  0.05% |  3.36% )   ( 0.535117s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.543411s |  0.04% |  3.10% )   ( 0.506478s |  0.05% |  3.01% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003570s |  0.00% |  0.00% )   ( 0.004084s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005129s |  0.00% |  0.02% )   ( 0.005201s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.041538s |  1.64% |  3.28% )   ( 17.272675s |  1.72% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001046s |  0.00% |  0.00% )   ( 0.001062s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.040341s |  1.64% | 99.99% )   ( 17.271446s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p18
30.5.0:         ( 0.040261s |  0.00% |  0.22% )   ( 0.040109s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029528s |  0.00% |  0.16% )   ( 0.029436s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.029850s |  0.00% |  0.16% )   ( 0.029753s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.032851s |  0.00% |  0.18% )   ( 0.032744s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.036133s |  0.00% |  0.20% )   ( 0.036017s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003437s |  0.00% |  0.00% )   ( 0.003845s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003050s |  0.00% |  0.00% )   ( 0.003443s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p18
41.5.0:         ( 0.314536s |  0.02% |  0.08% )   ( 0.005016s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.002844s |  0.00% |  0.00% )   ( 0.003230s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.002692s |  0.00% |  0.00% )   ( 0.003067s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002862s |  0.00% |  0.00% )   ( 0.003224s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023822s |  0.00% |  0.00% )   ( 0.023622s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002650s |  0.00% |  0.00% )   ( 0.003012s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002686s |  0.00% |  0.00% )   ( 0.003060s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003536s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003447s |  0.00% |  0.00% )   ( 0.003841s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p18
66.5.0:         ( 0.002722s |  0.00% |  0.00% )   ( 0.003098s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002567s |  0.00% |  0.00% )   ( 0.002932s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.475000s |  1.59% |  5.09% )   ( 17.010582s |  1.70% |  5.18% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002855s |  0.00% |  0.01% )   ( 0.003236s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.121587s |  0.10% |  6.41% )   ( 1.084214s |  0.10% |  6.37% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.084213s |  0.19% | 11.92% )   ( 2.023601s |  0.20% | 11.89% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.656755s |  0.15% |  9.48% )   ( 1.615559s |  0.16% |  9.49% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.109314s |  0.19% | 12.07% )   ( 2.067561s |  0.20% | 12.15% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.642924s |  0.14% |  9.40% )   ( 1.622197s |  0.16% |  9.53% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.050820s |  0.09% |  6.01% )   ( 1.003286s |  0.10% |  5.89% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.446622s |  0.04% |  2.55% )   ( 0.429729s |  0.04% |  2.52% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.136708s |  0.10% |  6.50% )   ( 1.097420s |  0.10% |  6.45% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.379068s |  0.03% |  2.16% )   ( 0.377074s |  0.03% |  2.21% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.428624s |  0.13% |  8.17% )   ( 1.383292s |  0.13% |  8.13% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.563897s |  0.32% | 20.39% )   ( 3.476338s |  0.34% | 20.43% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.438088s |  0.03% |  2.50% )   ( 0.424920s |  0.04% |  2.49% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.413525s |  0.03% |  2.36% )   ( 0.402155s |  0.04% |  2.36% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002956s |  0.00% |  0.00% )   ( 0.003352s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002440s |  0.00% |  0.00% )   ( 0.002782s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002846s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009282s |  0.00% |  0.05% )   ( 0.009344s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.732944s |  1.61% |  3.22% )   ( 16.734279s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001095s |  0.00% |  0.00% )   ( 0.001119s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.731698s |  1.61% | 99.99% )   ( 16.732989s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p19
30.5.0:         ( 0.048190s |  0.00% |  0.27% )   ( 0.048035s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041436s |  0.00% |  0.23% )   ( 0.041307s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.033287s |  0.00% |  0.18% )   ( 0.033179s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.046325s |  0.00% |  0.26% )   ( 0.046182s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.047590s |  0.00% |  0.26% )   ( 0.047419s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004646s |  0.00% |  0.00% )   ( 0.005221s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004609s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005402s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p19
41.5.0:         ( 0.341648s |  0.03% |  0.06% )   ( 0.006534s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004498s |  0.00% |  0.00% )   ( 0.005058s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004934s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004184s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034089s |  0.00% |  0.00% )   ( 0.031538s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004896s |  0.00% |  0.00% )   ( 0.005486s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p19
66.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004583s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.062111s |  1.55% |  3.56% )   ( 16.394528s |  1.64% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003917s |  0.00% |  0.02% )   ( 0.004439s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.160868s |  0.10% |  6.80% )   ( 1.116346s |  0.11% |  6.80% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.985049s |  0.18% | 11.63% )   ( 1.922189s |  0.19% | 11.72% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.648162s |  0.15% |  9.65% )   ( 1.589690s |  0.15% |  9.69% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.880766s |  0.17% | 11.02% )   ( 1.863282s |  0.18% | 11.36% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.585481s |  0.14% |  9.29% )   ( 1.523809s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.044053s |  0.09% |  6.11% )   ( 0.997032s |  0.09% |  6.08% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551414s |  0.05% |  3.23% )   ( 0.520822s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.074513s |  0.09% |  6.29% )   ( 1.025260s |  0.10% |  6.25% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.517404s |  0.04% |  3.03% )   ( 0.469384s |  0.04% |  2.86% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.459873s |  0.13% |  8.55% )   ( 1.360522s |  0.13% |  8.29% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.073009s |  0.28% | 18.01% )   ( 2.970610s |  0.29% | 18.11% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549500s |  0.05% |  3.22% )   ( 0.524692s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.528102s |  0.04% |  3.09% )   ( 0.506451s |  0.05% |  3.08% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005571s |  0.00% |  0.00% )   ( 0.004430s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004005s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004353s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006350s |  0.00% |  0.03% )   ( 0.006397s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 17.631968s |  1.60% |  3.20% )   ( 16.686194s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001078s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 17.630734s |  1.60% | 99.99% )   ( 16.684921s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p20
30.5.0:         ( 0.037896s |  0.00% |  0.21% )   ( 0.037772s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038998s |  0.00% |  0.22% )   ( 0.038854s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.043780s |  0.00% |  0.24% )   ( 0.043639s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.044614s |  0.00% |  0.25% )   ( 0.044474s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.045482s |  0.00% |  0.25% )   ( 0.045340s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004441s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003648s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p20
41.5.0:         ( 0.336848s |  0.03% |  0.07% )   ( 0.005908s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003876s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003936s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003286s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003461s |  0.00% |  0.00% )   ( 0.003879s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027523s |  0.00% |  0.00% )   ( 0.027892s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003268s |  0.00% |  0.00% )   ( 0.003714s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003786s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003431s |  0.00% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p20
66.5.0:         ( 0.003327s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003162s |  0.00% |  0.00% )   ( 0.003610s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.989155s |  1.54% |  4.18% )   ( 16.367253s |  1.63% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003501s |  0.00% |  0.02% )   ( 0.003959s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.058802s |  0.09% |  6.23% )   ( 1.040414s |  0.10% |  6.35% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.928906s |  0.17% | 11.35% )   ( 1.909131s |  0.19% | 11.66% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.560061s |  0.14% |  9.18% )   ( 1.542956s |  0.15% |  9.42% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.998806s |  0.18% | 11.76% )   ( 1.933049s |  0.19% | 11.81% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.598251s |  0.14% |  9.40% )   ( 1.542104s |  0.15% |  9.42% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.043107s |  0.09% |  6.13% )   ( 0.974645s |  0.09% |  5.95% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.513043s |  0.04% |  3.01% )   ( 0.478038s |  0.04% |  2.92% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102941s |  0.10% |  6.49% )   ( 1.053457s |  0.10% |  6.43% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445212s |  0.04% |  2.62% )   ( 0.415009s |  0.04% |  2.53% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.465874s |  0.13% |  8.62% )   ( 1.369407s |  0.13% |  8.36% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.268056s |  0.29% | 19.23% )   ( 3.180117s |  0.31% | 19.42% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.510698s |  0.04% |  3.00% )   ( 0.470004s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491897s |  0.04% |  2.89% )   ( 0.454963s |  0.04% |  2.77% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003828s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003023s |  0.00% |  0.00% )   ( 0.003426s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003602s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008628s |  0.00% |  0.04% )   ( 0.008714s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.260603s |  1.57% |  3.14% )   ( 16.367424s |  1.63% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001069s |  0.00% |  0.00% )   ( 0.001094s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.259388s |  1.57% | 99.99% )   ( 16.366164s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p21
30.5.0:         ( 0.043786s |  0.00% |  0.25% )   ( 0.043632s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047593s |  0.00% |  0.27% )   ( 0.047431s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.052796s |  0.00% |  0.30% )   ( 0.052624s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.045823s |  0.00% |  0.26% )   ( 0.045651s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.041113s |  0.00% |  0.23% )   ( 0.040962s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004499s |  0.00% |  0.00% )   ( 0.005066s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005045s |  0.00% |  0.00% )   ( 0.005552s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p21
41.5.0:         ( 0.323030s |  0.02% |  0.07% )   ( 0.006566s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004825s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003945s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004189s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031842s |  0.00% |  0.00% )   ( 0.032132s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004198s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003872s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004608s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p21
66.5.0:         ( 0.003595s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.004101s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.596983s |  1.51% |  3.84% )   ( 16.014466s |  1.60% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003653s |  0.00% |  0.02% )   ( 0.004149s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.117197s |  0.10% |  6.73% )   ( 1.053818s |  0.10% |  6.58% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.910332s |  0.17% | 11.51% )   ( 1.830411s |  0.18% | 11.42% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.577197s |  0.14% |  9.50% )   ( 1.523152s |  0.15% |  9.51% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.860028s |  0.16% | 11.20% )   ( 1.835036s |  0.18% | 11.45% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.531507s |  0.13% |  9.22% )   ( 1.490219s |  0.14% |  9.30% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.037723s |  0.09% |  6.25% )   ( 0.965823s |  0.09% |  6.03% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565089s |  0.05% |  3.40% )   ( 0.512546s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.072794s |  0.09% |  6.46% )   ( 1.013434s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.458570s |  0.04% |  2.76% )   ( 0.445348s |  0.04% |  2.78% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.376335s |  0.12% |  8.29% )   ( 1.361625s |  0.13% |  8.50% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.042168s |  0.27% | 18.32% )   ( 2.975047s |  0.29% | 18.57% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.527469s |  0.04% |  3.17% )   ( 0.506910s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.516921s |  0.04% |  3.11% )   ( 0.496948s |  0.04% |  3.10% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003912s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003479s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006074s |  0.00% |  0.00% )   ( 0.004395s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008761s |  0.00% |  0.05% )   ( 0.008841s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.219693s |  1.57% |  3.13% )   ( 16.180278s |  1.62% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.000407s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.218519s |  1.57% | 99.99% )   ( 16.179706s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p22
30.5.0:         ( 0.046098s |  0.00% |  0.26% )   ( 0.045894s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044652s |  0.00% |  0.25% )   ( 0.044475s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.048653s |  0.00% |  0.28% )   ( 0.048459s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.049598s |  0.00% |  0.28% )   ( 0.049411s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.048729s |  0.00% |  0.28% )   ( 0.048533s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004670s |  0.00% |  0.00% )   ( 0.005248s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005177s |  0.00% |  0.00% )   ( 0.005779s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p22
41.5.0:         ( 0.281017s |  0.02% |  0.05% )   ( 0.006554s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004644s |  0.00% |  0.00% )   ( 0.005227s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004842s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004757s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035129s |  0.00% |  0.00% )   ( 0.035620s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003936s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003891s |  0.00% |  0.00% )   ( 0.004440s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005274s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005005s |  0.00% |  0.00% )   ( 0.005561s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p22
66.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003925s |  0.00% |  0.00% )   ( 0.004446s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.585370s |  1.51% |  3.44% )   ( 15.813362s |  1.58% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004265s |  0.00% |  0.02% )   ( 0.004847s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.149482s |  0.10% |  6.93% )   ( 1.073247s |  0.10% |  6.78% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.954630s |  0.17% | 11.78% )   ( 1.780816s |  0.17% | 11.26% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629827s |  0.14% |  9.82% )   ( 1.512896s |  0.15% |  9.56% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.796568s |  0.16% | 10.83% )   ( 1.744759s |  0.17% | 11.03% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.540690s |  0.14% |  9.28% )   ( 1.466982s |  0.14% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.012294s |  0.09% |  6.10% )   ( 0.964994s |  0.09% |  6.10% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.592154s |  0.05% |  3.57% )   ( 0.548633s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.018754s |  0.09% |  6.14% )   ( 0.995416s |  0.09% |  6.29% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.498313s |  0.04% |  3.00% )   ( 0.479829s |  0.04% |  3.03% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.378519s |  0.12% |  8.31% )   ( 1.355049s |  0.13% |  8.56% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.860219s |  0.26% | 17.24% )   ( 2.820092s |  0.28% | 17.83% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.598016s |  0.05% |  3.60% )   ( 0.539545s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.551639s |  0.05% |  3.32% )   ( 0.526257s |  0.05% |  3.32% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004591s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004417s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008201s |  0.00% |  0.04% )   ( 0.008221s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.457061s |  1.59% |  3.17% )   ( 16.695853s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001108s |  0.00% |  0.00% )   ( 0.001136s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.455793s |  1.59% | 99.99% )   ( 16.694542s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000255s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p23
30.5.0:         ( 0.048316s |  0.00% |  0.27% )   ( 0.047904s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046311s |  0.00% |  0.26% )   ( 0.045954s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.048344s |  0.00% |  0.27% )   ( 0.047964s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.047877s |  0.00% |  0.27% )   ( 0.047495s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.047335s |  0.00% |  0.27% )   ( 0.046934s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004326s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000224s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005078s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p23
41.5.0:         ( 0.268383s |  0.02% |  0.06% )   ( 0.006147s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005134s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.004030s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003726s |  0.00% |  0.00% )   ( 0.004197s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028958s |  0.00% |  0.00% )   ( 0.029324s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003478s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004127s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p23
66.5.0:         ( 0.003295s |  0.00% |  0.00% )   ( 0.003741s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003350s |  0.00% |  0.00% )   ( 0.003833s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.849326s |  1.53% |  4.19% )   ( 16.345017s |  1.63% |  4.25% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003409s |  0.00% |  0.02% )   ( 0.003876s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.094951s |  0.09% |  6.49% )   ( 1.081248s |  0.10% |  6.61% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.996713s |  0.18% | 11.85% )   ( 1.934532s |  0.19% | 11.83% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.636626s |  0.14% |  9.71% )   ( 1.537756s |  0.15% |  9.40% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.941113s |  0.17% | 11.52% )   ( 1.901105s |  0.19% | 11.63% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.552758s |  0.14% |  9.21% )   ( 1.525234s |  0.15% |  9.33% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.024259s |  0.09% |  6.07% )   ( 0.967990s |  0.09% |  5.92% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.487518s |  0.04% |  2.89% )   ( 0.482582s |  0.04% |  2.95% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.069304s |  0.09% |  6.34% )   ( 1.060552s |  0.10% |  6.48% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442873s |  0.04% |  2.62% )   ( 0.420197s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.408547s |  0.12% |  8.35% )   ( 1.339436s |  0.13% |  8.19% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.224472s |  0.29% | 19.13% )   ( 3.155274s |  0.31% | 19.30% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.486353s |  0.04% |  2.88% )   ( 0.478053s |  0.04% |  2.92% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.480430s |  0.04% |  2.85% )   ( 0.457182s |  0.04% |  2.79% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003239s |  0.00% |  0.00% )   ( 0.003689s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003507s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008941s |  0.00% |  0.05% )   ( 0.009025s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.019223s |  1.55% |  3.09% )   ( 16.068220s |  1.60% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001126s |  0.00% |  0.00% )   ( 0.001148s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.017943s |  1.55% | 99.99% )   ( 16.066899s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p24
30.5.0:         ( 0.047994s |  0.00% |  0.28% )   ( 0.047810s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038050s |  0.00% |  0.22% )   ( 0.037928s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.045862s |  0.00% |  0.26% )   ( 0.045708s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.045721s |  0.00% |  0.26% )   ( 0.045577s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.045569s |  0.00% |  0.26% )   ( 0.045416s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004682s |  0.00% |  0.00% )   ( 0.005257s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004242s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005244s |  0.00% |  0.00% )   ( 0.005833s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p24
41.5.0:         ( 0.360296s |  0.03% |  0.07% )   ( 0.007465s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004911s |  0.00% |  0.00% )   ( 0.005504s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004456s |  0.00% |  0.00% )   ( 0.005049s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005005s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040038s |  0.00% |  0.00% )   ( 0.034463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004660s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004972s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005052s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p24
66.5.0:         ( 0.004027s |  0.00% |  0.00% )   ( 0.004586s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.315809s |  1.48% |  3.55% )   ( 15.715221s |  1.57% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004382s |  0.00% |  0.02% )   ( 0.004423s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.102144s |  0.10% |  6.75% )   ( 1.058962s |  0.10% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.813055s |  0.16% | 11.11% )   ( 1.784432s |  0.17% | 11.35% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.537185s |  0.14% |  9.42% )   ( 1.503436s |  0.15% |  9.56% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.812779s |  0.16% | 11.11% )   ( 1.762903s |  0.17% | 11.21% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.514050s |  0.13% |  9.27% )   ( 1.453888s |  0.14% |  9.25% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020776s |  0.09% |  6.25% )   ( 0.956506s |  0.09% |  6.08% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581772s |  0.05% |  3.56% )   ( 0.535250s |  0.05% |  3.40% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.032293s |  0.09% |  6.32% )   ( 0.989332s |  0.09% |  6.29% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.518285s |  0.04% |  3.17% )   ( 0.472588s |  0.04% |  3.00% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389078s |  0.12% |  8.51% )   ( 1.333812s |  0.13% |  8.48% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.890145s |  0.26% | 17.71% )   ( 2.817208s |  0.28% | 17.92% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.560814s |  0.05% |  3.43% )   ( 0.526194s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.539051s |  0.04% |  3.30% )   ( 0.516287s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006345s |  0.00% |  0.03% )   ( 0.006442s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 20.175338s |  1.83% |  3.67% )   ( 19.321210s |  1.93% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.000971s |  0.00% |  0.00% )   ( 0.000999s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 20.174189s |  1.83% | 99.99% )   ( 19.320010s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p25
30.5.0:         ( 0.047494s |  0.00% |  0.23% )   ( 0.045781s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046265s |  0.00% |  0.22% )   ( 0.046095s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.041610s |  0.00% |  0.20% )   ( 0.041441s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.047321s |  0.00% |  0.23% )   ( 0.047166s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.051520s |  0.00% |  0.25% )   ( 0.051327s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003603s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004897s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p25
41.5.0:         ( 0.326699s |  0.02% |  0.06% )   ( 0.005758s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003591s |  0.00% |  0.00% )   ( 0.004021s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028604s |  0.00% |  0.00% )   ( 0.028995s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003874s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003197s |  0.00% |  0.00% )   ( 0.003637s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006715s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p25
66.5.0:         ( 0.003398s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003123s |  0.00% |  0.00% )   ( 0.003558s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.515158s |  1.77% |  4.20% )   ( 18.982445s |  1.90% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003227s |  0.00% |  0.01% )   ( 0.003695s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.431621s |  0.13% |  7.33% )   ( 1.352623s |  0.13% |  7.12% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.427858s |  0.22% | 12.44% )   ( 2.323424s |  0.23% | 12.23% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.849385s |  0.16% |  9.47% )   ( 1.763530s |  0.17% |  9.29% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.235171s |  0.20% | 11.45% )   ( 2.218903s |  0.22% | 11.68% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.814400s |  0.16% |  9.29% )   ( 1.739834s |  0.17% |  9.16% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.186565s |  0.10% |  6.08% )   ( 1.167998s |  0.11% |  6.15% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537696s |  0.04% |  2.75% )   ( 0.514783s |  0.05% |  2.71% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.273738s |  0.11% |  6.52% )   ( 1.244579s |  0.12% |  6.55% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501413s |  0.04% |  2.56% )   ( 0.454754s |  0.04% |  2.39% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.565895s |  0.14% |  8.02% )   ( 1.548642s |  0.15% |  8.15% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.705421s |  0.33% | 18.98% )   ( 3.681746s |  0.36% | 19.39% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.497206s |  0.04% |  2.54% )   ( 0.494414s |  0.04% |  2.60% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.485562s |  0.04% |  2.48% )   ( 0.473520s |  0.04% |  2.49% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003105s |  0.00% |  0.00% )   ( 0.003532s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006394s |  0.00% |  0.00% )   ( 0.003795s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004987s |  0.00% |  0.02% )   ( 0.005053s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 22.596120s |  2.06% |  4.11% )   ( 21.857394s |  2.18% |  4.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001141s |  0.00% |  0.00% )   ( 0.001170s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 22.594821s |  2.06% | 99.99% )   ( 21.856046s |  2.18% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p26
30.5.0:         ( 0.057360s |  0.00% |  0.25% )   ( 0.051194s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043731s |  0.00% |  0.19% )   ( 0.043554s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.049837s |  0.00% |  0.22% )   ( 0.049655s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.048434s |  0.00% |  0.21% )   ( 0.048247s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.052440s |  0.00% |  0.23% )   ( 0.052260s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p26
41.5.0:         ( 0.285990s |  0.02% |  0.05% )   ( 0.005926s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003666s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003745s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027138s |  0.00% |  0.00% )   ( 0.027541s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003348s |  0.00% |  0.00% )   ( 0.003807s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003417s |  0.00% |  0.00% )   ( 0.003890s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006033s |  0.00% |  0.00% )   ( 0.003872s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p26
66.5.0:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003710s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003168s |  0.00% |  0.00% )   ( 0.003614s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.964731s |  2.00% |  4.22% )   ( 21.507597s |  2.15% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003291s |  0.00% |  0.01% )   ( 0.003759s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.582989s |  0.14% |  7.20% )   ( 1.557481s |  0.15% |  7.24% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.634377s |  0.24% | 11.99% )   ( 2.602854s |  0.26% | 12.10% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.014484s |  0.18% |  9.17% )   ( 1.996818s |  0.19% |  9.28% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.613117s |  0.23% | 11.89% )   ( 2.540546s |  0.25% | 11.81% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.978606s |  0.18% |  9.00% )   ( 1.942774s |  0.19% |  9.03% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.412947s |  0.12% |  6.43% )   ( 1.399580s |  0.14% |  6.50% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581155s |  0.05% |  2.64% )   ( 0.553721s |  0.05% |  2.57% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.564301s |  0.14% |  7.12% )   ( 1.500438s |  0.15% |  6.97% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.506184s |  0.04% |  2.30% )   ( 0.465977s |  0.04% |  2.16% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.745830s |  0.15% |  7.94% )   ( 1.707109s |  0.17% |  7.93% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.314375s |  0.39% | 19.64% )   ( 4.236512s |  0.42% | 19.69% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.512861s |  0.04% |  2.33% )   ( 0.511983s |  0.05% |  2.38% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.500214s |  0.04% |  2.27% )   ( 0.488045s |  0.04% |  2.26% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003212s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003086s |  0.00% |  0.00% )   ( 0.003498s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003913s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004981s |  0.00% |  0.02% )   ( 0.005064s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.521556s |  1.59% |  3.18% )   ( 16.451733s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001092s |  0.00% |  0.00% )   ( 0.001108s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.520312s |  1.59% | 99.99% )   ( 16.450453s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.KbRgvm"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p27
30.5.0:         ( 0.045439s |  0.00% |  0.25% )   ( 0.045297s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045687s |  0.00% |  0.26% )   ( 0.045544s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 57581 ${BASHPID}' INT
33.5.0:         ( 0.045562s |  0.00% |  0.26% )   ( 0.045411s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 57581 ${BASHPID}' TERM
34.5.0:         ( 0.050307s |  0.00% |  0.28% )   ( 0.050131s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 57581 ${BASHPID}' HUP
35.5.0:         ( 0.050442s |  0.00% |  0.28% )   ( 0.050275s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004656s |  0.00% |  0.00% )   ( 0.005197s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004240s |  0.00% |  0.00% )   ( 0.004806s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.KbRgvm"/.nLines
38.5.2:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005042s |  0.00% |  0.00% )   ( 0.005620s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p27
41.5.0:         ( 0.370467s |  0.03% |  0.07% )   ( 0.006734s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004694s |  0.00% |  0.00% )   ( 0.005243s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.quit ]]
46.5.0:         ( 0.004414s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.done ]]
46.5.1:         ( 0.006191s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004002s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036851s |  0.00% |  0.00% )   ( 0.035217s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004838s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004831s |  0.00% |  0.00% )   ( 0.005396s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.KbRgvm"/.wait/p27
66.5.0:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.794365s |  1.53% |  3.55% )   ( 16.084645s |  1.61% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003874s |  0.00% |  0.02% )   ( 0.004414s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.111236s |  0.10% |  6.61% )   ( 1.091440s |  0.10% |  6.78% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.903598s |  0.17% | 11.33% )   ( 1.842587s |  0.18% | 11.45% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.700054s |  0.15% | 10.12% )   ( 1.545274s |  0.15% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.975925s |  0.18% | 11.76% )   ( 1.840397s |  0.18% | 11.44% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.491889s |  0.13% |  8.88% )   ( 1.469946s |  0.14% |  9.13% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.037995s |  0.09% |  6.18% )   ( 0.982941s |  0.09% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590625s |  0.05% |  3.51% )   ( 0.540641s |  0.05% |  3.36% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091883s |  0.09% |  6.50% )   ( 1.033580s |  0.10% |  6.42% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.515732s |  0.04% |  3.07% )   ( 0.474005s |  0.04% |  2.94% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.352963s |  0.12% |  8.05% )   ( 1.334314s |  0.13% |  8.29% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.897569s |  0.26% | 17.25% )   ( 2.866315s |  0.28% | 17.82% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.563636s |  0.05% |  3.35% )   ( 0.533051s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.557386s |  0.05% |  3.31% )   ( 0.525740s |  0.05% |  3.26% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004016s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003759s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004118s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009046s |  0.00% |  0.05% )   ( 0.009062s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000174s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001415s |  0.00% |  0.00% )   ( 0.001431s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000142s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.432971s |  2.22% |  4.44% )   ( 0.001855s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000315s |  0.00% |  0.00% )   ( 0.000351s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000299s |  0.00% |  0.00% )   ( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.049500s |  0.00% |  0.00% )   ( 0.049686s |  0.00% |  0.00% )    	(1x)	│  │  └─  $'@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.KbRgvm"/.done\\;$\'\\n\': >"/dev/shm/.forkrun/forkrun.KbRgvm"/.quit\\;$\'\\n\'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p* 2>/dev/null) 2>/dev/null\\; $\'\\n\'printf \'0\\n\' >&22\\; $\'\\n\'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p* 2>/dev/null) 2>/dev/null\\;$\'\\n\'        kill -9 57593  2>/dev/null\\; $\'\\n\'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.KbRgvm"/.run/p* 2>/dev/null) 2>/dev/null\\; $\'\\n\'trap - INT TERM HUP USR1\\; $\'\\n\'        return ${returnVal:-0}1\t1762870558230473\t1176\t-\t-\tF:2 main.forkrun\tS:2 57565.57578.57581\tN:123 {0-57565}.1.0{0-57578}.25{0-57581}.73{0-57593}\t473\t::\t\'<< (SUBSHELL): 57593 >>\'
1085.2.0:       ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.006450s |  0.00% |  0.00% )   ( 0.003399s |  0.00% |  0.00% )    	(1x)	└─ └─  $'@TRAP (EXIT): \\rm -rf "/dev/shm/.forkrun/forkrun.KbRgvm" 2>/dev/null1\t1762870558080572\t1100\t-\t-\tF:2 main.forkrun\tS:1 57565.57578\tN:27 {0-57565}.1.0{0-57578}.19{0-57579}\t230\t::\t\'<< (SUBSHELL): 57579 >>\'

10.0.0:         ( 547.089407s | 49.89% )            ( 499.785283s | 50.05% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001293s |  0.00% |  0.00% )   ( 0.001092s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 547.088114s | 49.89% | 99.99% )   ( 499.784191s | 50.05% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.043831s |  0.00% |  0.00% )   ( 0.043740s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001203s |  0.00% |  0.00% )   ( 0.001067s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
231.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001110s |  0.00% |  0.00% )   ( 0.001202s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026623s |  0.00% |  0.00% )   ( 0.000979s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 547.004870s | 49.88% | 99.98% )   ( 499.729405s | 50.04% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001551s |  0.00% |  0.00% )   ( 0.001789s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001551s |  0.00% |100.00% )   ( 0.001789s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
238.3.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000193s |  0.00% |  0.00% )   ( 0.009573s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.001235s |  0.00% |  0.00% )   ( 0.001070s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000401s |  0.00% |  0.00% )   ( 0.000450s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000401s |  0.00% |100.00% )   ( 0.000450s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000865s |  0.00% |  0.00% )   ( 0.001000s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.86% )   ( 0.000080s |  0.00% |  8.00% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000069s |  0.00% |  7.97% )   ( 0.000081s |  0.00% |  8.10% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.86% )   ( 0.000079s |  0.00% |  7.90% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000070s |  0.00% |  8.09% )   ( 0.000082s |  0.00% |  8.20% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000068s |  0.00% |  7.86% )   ( 0.000079s |  0.00% |  7.90% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  7.97% )   ( 0.000081s |  0.00% |  8.10% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000066s |  0.00% |  7.63% )   ( 0.000077s |  0.00% |  7.70% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000114s |  0.00% | 13.17% )   ( 0.000126s |  0.00% | 12.60% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.63% )   ( 0.000078s |  0.00% |  7.80% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000070s |  0.00% |  8.09% )   ( 0.000078s |  0.00% |  7.80% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000066s |  0.00% |  7.63% )   ( 0.000077s |  0.00% |  7.70% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000071s |  0.00% |  8.20% )   ( 0.000082s |  0.00% |  8.20% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000841s |  0.00% |  0.00% )   ( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002831s |  0.00% |  0.00% )   ( 0.002953s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000361s |  0.00% | 12.75% )   ( 0.000384s |  0.00% | 13.00% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002470s |  0.00% | 87.24% )   ( 0.002569s |  0.00% | 86.99% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000106s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.004387s |  0.00% |  0.00% )   ( 0.006800s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000623s |  0.00% |  0.00% )   ( 0.000475s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000098s |  0.00% |100.00% )   ( 0.000112s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001092s |  0.00% |  0.00% )   ( 0.001177s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000511s |  0.00% |  0.00% )   ( 0.000522s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.133576s |  0.01% |  0.02% )   ( 0.133285s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000102s |  0.00% |  0.07% )   ( 0.000114s |  0.00% |  0.08% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021185s |  0.00% | 15.85% )   ( 0.021112s |  0.00% | 15.83% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023465s |  0.00% | 17.56% )   ( 0.023410s |  0.00% | 17.56% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023628s |  0.00% | 17.68% )   ( 0.023569s |  0.00% | 17.68% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023487s |  0.00% | 17.58% )   ( 0.023431s |  0.00% | 17.57% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023319s |  0.00% | 17.45% )   ( 0.023250s |  0.00% | 17.44% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000071s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018079s |  0.00% | 13.53% )   ( 0.018044s |  0.00% | 13.53% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000095s |  0.00% |  0.07% )   ( 0.000106s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000076s |  0.00% |  0.05% )   ( 0.000087s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000417s |  0.00% |  0.00% )   ( 0.000442s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.817113s |  0.34% |  0.69% )   ( 1.833123s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024614s |  0.00% |  0.64% )   ( 0.024514s |  0.00% |  1.33% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023614s |  0.00% |  0.61% )   ( 0.023520s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023529s |  0.00% |  0.61% )   ( 0.023383s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023423s |  0.00% |  0.61% )   ( 0.023316s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023387s |  0.00% |  0.61% )   ( 0.023252s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090915s |  0.00% |  0.00% )   ( 0.104183s |  0.01% |  0.00% )    	(671x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.275294s |  0.20% |  0.08% )   ( 0.121461s |  0.01% |  0.00% )    	(670x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000808s |  0.00% |  0.00% )   ( 0.000908s |  0.00% |  0.01% )    	(4x)	│  │  │  │   continue
521.4.0:        ( 0.089228s |  0.00% |  0.00% )   ( 0.102387s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.088799s |  0.00% |  0.00% )   ( 0.101820s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.092719s |  0.00% |  0.00% )   ( 0.101488s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090734s |  0.00% |  0.00% )   ( 0.103599s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.090389s |  0.00% |  0.00% )   ( 0.103367s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.087296s |  0.00% |  0.00% )   ( 0.100194s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.087773s |  0.00% |  0.00% )   ( 0.100551s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.087528s |  0.00% |  0.00% )   ( 0.100525s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000632s |  0.00% |  0.01% )   ( 0.000460s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
559.4.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086817s |  0.00% |  0.00% )   ( 0.099648s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085954s |  0.00% |  0.00% )   ( 0.099036s |  0.00% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.084775s |  0.00% |  0.00% )   ( 0.097248s |  0.00% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092113s |  0.00% |  0.00% )   ( 0.105503s |  0.01% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.088647s |  0.00% |  0.00% )   ( 0.101700s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087258s |  0.00% |  0.00% )   ( 0.100228s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002881s |  0.00% |  0.00% )   ( 0.003290s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002879s |  0.00% |  0.00% )   ( 0.003307s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.065897s |  0.00% |  0.08% )   ( 0.043447s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003312s |  0.00% |  0.00% )   ( 0.003736s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003103s |  0.00% |  0.00% )   ( 0.003500s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003066s |  0.00% |  0.00% )   ( 0.003477s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000193s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000211s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007296s |  0.00% |  0.19% )   ( 0.007282s |  0.00% |  0.39% )    	(1x)	│  │  │  └─  $'@TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/pAuto ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/pAuto1\t1762870584163718\t475\t-\t-\tF:2 main.forkrun\tS:3 57565.66353.66356.66371\tN:189 {0-57565}.3.0{0-66353}.33{0-66356}.86{0-66371}.33{0-66388}\t558\t::\t\'<< (SUBSHELL): 66388 >>\'
598.3.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001652s |  0.00% |  0.00% )   ( 0.000804s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005501s |  0.00% |  0.00% )   ( 0.006277s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000225s |  0.00% |  4.09% )   ( 0.000242s |  0.00% |  3.85% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000133s |  0.00% |  2.41% )   ( 0.000154s |  0.00% |  2.45% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000154s |  0.00% |  2.79% )   ( 0.000175s |  0.00% |  2.78% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000401s |  0.00% |  7.28% )   ( 0.000426s |  0.00% |  6.78% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000130s |  0.00% |  2.36% )   ( 0.000149s |  0.00% |  2.37% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000128s |  0.00% |  2.32% )   ( 0.000148s |  0.00% |  2.35% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000070s |  0.00% |  1.27% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000070s |  0.00% |  1.27% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000071s |  0.00% |  1.29% )   ( 0.000082s |  0.00% |  1.30% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000070s |  0.00% |  1.27% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000093s |  0.00% |  1.69% )   ( 0.000103s |  0.00% |  1.64% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000064s |  0.00% |  1.16% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000064s |  0.00% |  1.16% )   ( 0.000075s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000072s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.32% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000078s |  0.00% |  1.41% )   ( 0.000085s |  0.00% |  1.35% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000101s |  0.00% |  1.83% )   ( 0.000112s |  0.00% |  1.78% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000092s |  0.00% |  1.67% )   ( 0.000103s |  0.00% |  1.64% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000078s |  0.00% |  1.41% )   ( 0.000089s |  0.00% |  1.41% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000075s |  0.00% |  1.36% )   ( 0.000084s |  0.00% |  1.33% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.27% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000068s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000093s |  0.00% |  1.69% )   ( 0.000105s |  0.00% |  1.67% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000095s |  0.00% |  1.72% )   ( 0.000107s |  0.00% |  1.70% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000090s |  0.00% |  1.63% )   ( 0.000101s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000087s |  0.00% |  1.58% )   ( 0.000098s |  0.00% |  1.56% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000099s |  0.00% |  1.79% )   ( 0.000107s |  0.00% |  1.70% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000068s |  0.00% |  1.23% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000089s |  0.00% |  1.61% )   ( 0.000100s |  0.00% |  1.59% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000066s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000091s |  0.00% |  1.65% )   ( 0.000102s |  0.00% |  1.62% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000068s |  0.00% |  1.23% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.16% )   ( 0.000076s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000065s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.16% )   ( 0.000074s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000099s |  0.00% |  1.79% )   ( 0.000110s |  0.00% |  1.75% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.32% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.16% )   ( 0.000075s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000086s |  0.00% |  1.56% )   ( 0.000097s |  0.00% |  1.54% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000072s |  0.00% |  1.30% )   ( 0.000083s |  0.00% |  1.32% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000069s |  0.00% |  1.25% )   ( 0.000080s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000067s |  0.00% |  1.21% )   ( 0.000078s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000089s |  0.00% |  1.61% )   ( 0.000101s |  0.00% |  1.60% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.025815s |  0.00% |  0.00% )   ( 0.025760s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023702s |  0.00% |  0.00% )   ( 0.023642s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023548s |  0.00% |  0.00% )   ( 0.166622s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023368s |  0.00% |  0.00% )   ( 0.023312s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000086s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003088s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002906s |  0.00% |  0.00% )   ( 0.003335s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.874844s |  1.72% |  3.45% )   ( 18.413570s |  1.84% |  3.68% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000625s |  0.00% |  0.00% )   ( 0.000643s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.874133s |  1.72% | 99.99% )   ( 18.412829s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000354s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p0
30.5.0:         ( 0.023462s |  0.00% |  0.12% )   ( 0.023410s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023518s |  0.00% |  0.12% )   ( 0.023476s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024132s |  0.00% |  0.12% )   ( 0.024086s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.023959s |  0.00% |  0.12% )   ( 0.023917s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.023872s |  0.00% |  0.12% )   ( 0.023830s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001489s |  0.00% |  0.00% )   ( 0.001670s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001296s |  0.00% |  0.00% )   ( 0.001481s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001617s |  0.00% |  0.00% )   ( 0.001792s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p0
41.5.0:         ( 0.039157s |  0.00% |  0.02% )   ( 0.001909s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001431s |  0.00% |  0.00% )   ( 0.001628s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.001363s |  0.00% |  0.00% )   ( 0.001535s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.001224s |  0.00% |  0.00% )   ( 0.001402s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001339s |  0.00% |  0.00% )   ( 0.001506s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.012499s |  0.00% |  0.00% )   ( 0.009647s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001318s |  0.00% |  0.00% )   ( 0.001487s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001646s |  0.00% |  0.00% )   ( 0.001849s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p0
54.5.0:         ( 0.001317s |  0.00% |  0.00% )   ( 0.001494s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001145s |  0.00% |  0.00% )   ( 0.001324s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.673701s |  1.70% | 10.99% )   ( 18.249990s |  1.82% | 11.01% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001235s |  0.00% |  0.00% )   ( 0.001417s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.174175s |  0.10% |  6.28% )   ( 1.138657s |  0.11% |  6.23% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.567373s |  0.23% | 13.74% )   ( 2.406162s |  0.24% | 13.18% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.718607s |  0.15% |  9.20% )   ( 1.704255s |  0.17% |  9.33% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.443943s |  0.22% | 13.08% )   ( 2.366784s |  0.23% | 12.96% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.744219s |  0.15% |  9.34% )   ( 1.729187s |  0.17% |  9.47% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.032433s |  0.09% |  5.52% )   ( 0.995147s |  0.09% |  5.45% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.324612s |  0.02% |  1.73% )   ( 0.297464s |  0.02% |  1.62% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.206425s |  0.11% |  6.46% )   ( 1.195483s |  0.11% |  6.55% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.234661s |  0.02% |  1.25% )   ( 0.233557s |  0.02% |  1.27% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.485255s |  0.13% |  7.95% )   ( 1.469529s |  0.14% |  8.05% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.232325s |  0.38% | 22.66% )   ( 4.220638s |  0.42% | 23.12% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.286302s |  0.02% |  1.53% )   ( 0.269936s |  0.02% |  1.47% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.222136s |  0.02% |  1.18% )   ( 0.221774s |  0.02% |  1.21% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.001209s |  0.00% |  0.00% )   ( 0.001376s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001008s |  0.00% |  0.00% )   ( 0.001139s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001073s |  0.00% |  0.00% )   ( 0.001213s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.pR2187"/.quit
68.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.pR2187"/.run/p* 1>&21
69.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.008775s |  0.00% |  0.04% )   ( 0.008754s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002881s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 18.015806s |  1.64% |  3.29% )   ( 17.411444s |  1.74% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 18.015118s |  1.64% | 99.99% )   ( 17.410731s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p1
30.5.0:         ( 0.023658s |  0.00% |  0.13% )   ( 0.023615s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023426s |  0.00% |  0.13% )   ( 0.023388s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024025s |  0.00% |  0.13% )   ( 0.023979s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024060s |  0.00% |  0.13% )   ( 0.024017s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024023s |  0.00% |  0.13% )   ( 0.023977s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004943s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004123s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005004s |  0.00% |  0.00% )   ( 0.005567s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p1
41.5.0:         ( 0.114307s |  0.01% |  0.02% )   ( 0.005414s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030989s |  0.00% |  0.00% )   ( 0.031421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007145s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004638s |  0.00% |  0.00% )   ( 0.005194s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p1
54.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004456s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.680179s |  1.61% |  3.77% )   ( 17.179708s |  1.72% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003926s |  0.00% |  0.02% )   ( 0.004455s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.219202s |  0.11% |  6.89% )   ( 1.155480s |  0.11% |  6.72% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.067861s |  0.18% | 11.69% )   ( 2.008071s |  0.20% | 11.68% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.716470s |  0.15% |  9.70% )   ( 1.672448s |  0.16% |  9.73% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.043772s |  0.18% | 11.55% )   ( 2.025462s |  0.20% | 11.78% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651343s |  0.15% |  9.34% )   ( 1.628920s |  0.16% |  9.48% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.070160s |  0.09% |  6.05% )   ( 1.042647s |  0.10% |  6.06% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555500s |  0.05% |  3.14% )   ( 0.529484s |  0.05% |  3.08% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.115911s |  0.10% |  6.31% )   ( 1.098667s |  0.11% |  6.39% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.463321s |  0.04% |  2.62% )   ( 0.450049s |  0.04% |  2.61% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.468838s |  0.13% |  8.30% )   ( 1.428561s |  0.14% |  8.31% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.227428s |  0.29% | 18.25% )   ( 3.141200s |  0.31% | 18.28% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549464s |  0.05% |  3.10% )   ( 0.504220s |  0.05% |  2.93% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.526983s |  0.04% |  2.98% )   ( 0.490044s |  0.04% |  2.85% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003561s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008603s |  0.00% |  0.04% )   ( 0.008683s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.328290s |  1.58% |  3.16% )   ( 16.136067s |  1.61% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000616s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.327609s |  1.58% | 99.99% )   ( 16.135354s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000331s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p2
30.5.0:         ( 0.023541s |  0.00% |  0.13% )   ( 0.023497s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023945s |  0.00% |  0.13% )   ( 0.023899s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024020s |  0.00% |  0.13% )   ( 0.023964s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024059s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024047s |  0.00% |  0.13% )   ( 0.023993s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004815s |  0.00% |  0.00% )   ( 0.005411s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004647s |  0.00% |  0.00% )   ( 0.005242s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000260s |  0.00% |  0.00% )   ( 0.000296s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005470s |  0.00% |  0.00% )   ( 0.006067s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p2
41.5.0:         ( 0.206174s |  0.01% |  0.03% )   ( 0.006794s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004739s |  0.00% |  0.00% )   ( 0.005331s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004994s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004041s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041546s |  0.00% |  0.00% )   ( 0.035959s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004644s |  0.00% |  0.00% )   ( 0.005203s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005282s |  0.00% |  0.00% )   ( 0.005870s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p2
54.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.885527s |  1.53% |  3.36% )   ( 15.891553s |  1.59% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004128s |  0.00% |  0.02% )   ( 0.004705s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.077835s |  0.09% |  6.38% )   ( 1.051838s |  0.10% |  6.61% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.796791s |  0.16% | 10.64% )   ( 1.770691s |  0.17% | 11.14% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.633337s |  0.14% |  9.67% )   ( 1.527000s |  0.15% |  9.60% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.865605s |  0.17% | 11.04% )   ( 1.774016s |  0.17% | 11.16% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.499993s |  0.13% |  8.88% )   ( 1.467412s |  0.14% |  9.23% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051205s |  0.09% |  6.22% )   ( 0.977205s |  0.09% |  6.14% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623860s |  0.05% |  3.69% )   ( 0.537675s |  0.05% |  3.38% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.093025s |  0.09% |  6.47% )   ( 0.997739s |  0.09% |  6.27% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.531414s |  0.04% |  3.14% )   ( 0.485041s |  0.04% |  3.05% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.504393s |  0.13% |  8.90% )   ( 1.362621s |  0.13% |  8.57% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.970584s |  0.27% | 17.59% )   ( 2.847347s |  0.28% | 17.91% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.638314s |  0.05% |  3.78% )   ( 0.549722s |  0.05% |  3.45% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.595043s |  0.05% |  3.52% )   ( 0.538541s |  0.05% |  3.38% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004816s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004447s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005573s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008575s |  0.00% |  0.04% )   ( 0.008656s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 22.822112s |  2.08% |  4.17% )   ( 22.046141s |  2.20% |  4.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000591s |  0.00% |  0.00% )   ( 0.000607s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 22.821437s |  2.08% | 99.99% )   ( 22.045437s |  2.20% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p3
30.5.0:         ( 0.023684s |  0.00% |  0.10% )   ( 0.023643s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023944s |  0.00% |  0.10% )   ( 0.023902s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024075s |  0.00% |  0.10% )   ( 0.024028s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.023898s |  0.00% |  0.10% )   ( 0.023857s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024021s |  0.00% |  0.10% )   ( 0.023973s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004748s |  0.00% |  0.00% )   ( 0.005281s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p3
41.5.0:         ( 0.121573s |  0.01% |  0.02% )   ( 0.005374s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032677s |  0.00% |  0.00% )   ( 0.030123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007023s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p3
54.5.0:         ( 0.003586s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 22.481266s |  2.05% |  3.94% )   ( 21.823120s |  2.18% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003734s |  0.00% |  0.01% )   ( 0.004255s |  0.00% |  0.01% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.612068s |  0.14% |  7.17% )   ( 1.547709s |  0.15% |  7.09% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.564476s |  0.23% | 11.40% )   ( 2.511667s |  0.25% | 11.50% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.101362s |  0.19% |  9.34% )   ( 2.044146s |  0.20% |  9.36% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.616645s |  0.23% | 11.63% )   ( 2.576250s |  0.25% | 11.80% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.093609s |  0.19% |  9.31% )   ( 1.994860s |  0.19% |  9.14% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.497196s |  0.13% |  6.65% )   ( 1.442358s |  0.14% |  6.60% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.643353s |  0.05% |  2.86% )   ( 0.583729s |  0.05% |  2.67% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.559852s |  0.14% |  6.93% )   ( 1.506253s |  0.15% |  6.90% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513948s |  0.04% |  2.28% )   ( 0.497141s |  0.04% |  2.27% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.817206s |  0.16% |  8.08% )   ( 1.757946s |  0.17% |  8.05% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.326924s |  0.39% | 19.24% )   ( 4.281830s |  0.42% | 19.62% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566782s |  0.05% |  2.52% )   ( 0.551888s |  0.05% |  2.52% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.564111s |  0.05% |  2.50% )   ( 0.523088s |  0.05% |  2.39% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006678s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003479s |  0.00% |  0.00% )   ( 0.003954s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004903s |  0.00% |  0.02% )   ( 0.005000s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 19.657972s |  1.79% |  3.59% )   ( 19.115051s |  1.91% |  3.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000601s |  0.00% |  0.00% )   ( 0.000614s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 19.657286s |  1.79% | 99.99% )   ( 19.114340s |  1.91% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p4
30.5.0:         ( 0.024037s |  0.00% |  0.12% )   ( 0.023993s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024067s |  0.00% |  0.12% )   ( 0.024026s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024009s |  0.00% |  0.12% )   ( 0.023963s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024030s |  0.00% |  0.12% )   ( 0.023987s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024016s |  0.00% |  0.12% )   ( 0.023968s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003304s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.002928s |  0.00% |  0.00% )   ( 0.003338s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003863s |  0.00% |  0.00% )   ( 0.004286s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p4
41.5.0:         ( 0.098780s |  0.00% |  0.02% )   ( 0.004435s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003589s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003068s |  0.00% |  0.00% )   ( 0.003475s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.002808s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003513s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027327s |  0.00% |  0.00% )   ( 0.024636s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003989s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003575s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p4
54.5.0:         ( 0.003021s |  0.00% |  0.00% )   ( 0.003457s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002904s |  0.00% |  0.00% )   ( 0.003283s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.358819s |  1.76% |  4.92% )   ( 18.908219s |  1.89% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002775s |  0.00% |  0.01% )   ( 0.003159s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.296759s |  0.11% |  6.69% )   ( 1.292581s |  0.12% |  6.83% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.524138s |  0.23% | 13.03% )   ( 2.435785s |  0.24% | 12.88% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.944796s |  0.17% | 10.04% )   ( 1.902368s |  0.19% | 10.06% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.444633s |  0.22% | 12.62% )   ( 2.369711s |  0.23% | 12.53% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.700017s |  0.15% |  8.78% )   ( 1.687980s |  0.16% |  8.92% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.152488s |  0.10% |  5.95% )   ( 1.140928s |  0.11% |  6.03% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.502673s |  0.04% |  2.59% )   ( 0.469821s |  0.04% |  2.48% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.214213s |  0.11% |  6.27% )   ( 1.203947s |  0.12% |  6.36% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.422044s |  0.03% |  2.18% )   ( 0.403053s |  0.04% |  2.13% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.543035s |  0.14% |  7.97% )   ( 1.485168s |  0.14% |  7.85% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.709969s |  0.33% | 19.16% )   ( 3.632569s |  0.36% | 19.21% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.462740s |  0.04% |  2.39% )   ( 0.453341s |  0.04% |  2.39% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.438539s |  0.03% |  2.26% )   ( 0.427808s |  0.04% |  2.26% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002886s |  0.00% |  0.00% )   ( 0.003259s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002765s |  0.00% |  0.00% )   ( 0.003124s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003060s |  0.00% |  0.00% )   ( 0.003434s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006472s |  0.00% |  0.03% )   ( 0.006491s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 18.750111s |  1.70% |  3.42% )   ( 18.275837s |  1.83% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000634s |  0.00% |  0.00% )   ( 0.000655s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 18.749391s |  1.70% | 99.99% )   ( 18.275085s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p5
30.5.0:         ( 0.023913s |  0.00% |  0.12% )   ( 0.023871s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024023s |  0.00% |  0.12% )   ( 0.023980s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024011s |  0.00% |  0.12% )   ( 0.023965s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024149s |  0.00% |  0.12% )   ( 0.024102s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024013s |  0.00% |  0.12% )   ( 0.023968s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002212s |  0.00% |  0.00% )   ( 0.002501s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   true
38.5.0:         ( 0.002078s |  0.00% |  0.00% )   ( 0.002285s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002624s |  0.00% |  0.00% )   ( 0.002921s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p5
41.5.0:         ( 0.100053s |  0.00% |  0.03% )   ( 0.003274s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002331s |  0.00% |  0.00% )   ( 0.002634s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.002066s |  0.00% |  0.00% )   ( 0.002337s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.001866s |  0.00% |  0.00% )   ( 0.002133s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002056s |  0.00% |  0.00% )   ( 0.002318s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.014213s |  0.00% |  0.00% )   ( 0.014436s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005093s |  0.00% |  0.00% )   ( 0.002364s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002347s |  0.00% |  0.00% )   ( 0.002636s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p5
54.5.0:         ( 0.002577s |  0.00% |  0.00% )   ( 0.002114s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001884s |  0.00% |  0.00% )   ( 0.002146s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.473884s |  1.68% |  7.57% )   ( 18.096118s |  1.81% |  7.61% )    	(13x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001739s |  0.00% |  0.00% )   ( 0.001987s |  0.00% |  0.01% )    	(13x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.177419s |  0.10% |  6.37% )   ( 1.165887s |  0.11% |  6.44% )    	(13x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.383952s |  0.21% | 12.90% )   ( 2.312206s |  0.23% | 12.77% )    	(13x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.773746s |  0.16% |  9.60% )   ( 1.742998s |  0.17% |  9.63% )    	(13x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.340046s |  0.21% | 12.66% )   ( 2.283487s |  0.22% | 12.61% )    	(13x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.737761s |  0.15% |  9.40% )   ( 1.687466s |  0.16% |  9.32% )    	(13x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.056981s |  0.09% |  5.72% )   ( 1.032454s |  0.10% |  5.70% )    	(13x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.377702s |  0.03% |  2.04% )   ( 0.360080s |  0.03% |  1.98% )    	(13x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.200908s |  0.10% |  6.50% )   ( 1.191577s |  0.11% |  6.58% )    	(13x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.322391s |  0.02% |  1.74% )   ( 0.301223s |  0.03% |  1.66% )    	(13x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.488984s |  0.13% |  8.05% )   ( 1.435646s |  0.14% |  7.93% )    	(13x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.958885s |  0.36% | 21.42% )   ( 3.930345s |  0.39% | 21.71% )    	(13x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.349846s |  0.03% |  1.89% )   ( 0.348315s |  0.03% |  1.92% )    	(13x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.303524s |  0.02% |  1.64% )   ( 0.302447s |  0.03% |  1.67% )    	(13x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001997s |  0.00% |  0.00% )   ( 0.002259s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001776s |  0.00% |  0.00% )   ( 0.002025s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001906s |  0.00% |  0.00% )   ( 0.002141s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007256s |  0.00% |  0.03% )   ( 0.007356s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.533213s |  1.59% |  3.20% )   ( 16.606508s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000619s |  0.00% |  0.00% )   ( 0.000641s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.532509s |  1.59% | 99.99% )   ( 16.605770s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p6
30.5.0:         ( 0.023950s |  0.00% |  0.13% )   ( 0.023908s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024019s |  0.00% |  0.13% )   ( 0.023978s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024042s |  0.00% |  0.13% )   ( 0.023996s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024035s |  0.00% |  0.13% )   ( 0.023990s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.023813s |  0.00% |  0.13% )   ( 0.023768s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004822s |  0.00% |  0.00% )   ( 0.005392s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004299s |  0.00% |  0.00% )   ( 0.004902s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005123s |  0.00% |  0.00% )   ( 0.005708s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p6
41.5.0:         ( 0.225700s |  0.02% |  0.04% )   ( 0.006483s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005118s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004274s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004458s |  0.00% |  0.00% )   ( 0.005008s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034922s |  0.00% |  0.00% )   ( 0.035387s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005788s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005180s |  0.00% |  0.00% )   ( 0.005786s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p6
54.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.078520s |  1.55% |  3.47% )   ( 16.363603s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003917s |  0.00% |  0.02% )   ( 0.004470s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201793s |  0.10% |  7.03% )   ( 1.101825s |  0.11% |  6.73% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.889510s |  0.17% | 11.06% )   ( 1.859963s |  0.18% | 11.36% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.598689s |  0.14% |  9.36% )   ( 1.563370s |  0.15% |  9.55% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.913590s |  0.17% | 11.20% )   ( 1.801405s |  0.18% | 11.00% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.590628s |  0.14% |  9.31% )   ( 1.496126s |  0.14% |  9.14% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.087147s |  0.09% |  6.36% )   ( 0.999027s |  0.10% |  6.10% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.585936s |  0.05% |  3.43% )   ( 0.554470s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.069592s |  0.09% |  6.26% )   ( 1.043552s |  0.10% |  6.37% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.521000s |  0.04% |  3.05% )   ( 0.491749s |  0.04% |  3.00% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.409380s |  0.12% |  8.25% )   ( 1.385732s |  0.13% |  8.46% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.031595s |  0.27% | 17.75% )   ( 2.954446s |  0.29% | 18.05% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581949s |  0.05% |  3.40% )   ( 0.564931s |  0.05% |  3.45% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.593794s |  0.05% |  3.47% )   ( 0.542537s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004520s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004547s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008466s |  0.00% |  0.04% )   ( 0.008545s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.415529s |  1.58% |  3.18% )   ( 16.578543s |  1.66% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000621s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.414814s |  1.58% | 99.99% )   ( 16.577798s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p7
30.5.0:         ( 0.023924s |  0.00% |  0.13% )   ( 0.023878s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024014s |  0.00% |  0.13% )   ( 0.023968s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.023989s |  0.00% |  0.13% )   ( 0.023940s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.023841s |  0.00% |  0.13% )   ( 0.023797s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024001s |  0.00% |  0.13% )   ( 0.023953s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004905s |  0.00% |  0.00% )   ( 0.005460s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004467s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005257s |  0.00% |  0.00% )   ( 0.005828s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p7
41.5.0:         ( 0.206228s |  0.01% |  0.04% )   ( 0.006369s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003974s |  0.00% |  0.00% )   ( 0.004496s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031028s |  0.00% |  0.00% )   ( 0.031416s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004806s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p7
54.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.988229s |  1.54% |  3.61% )   ( 16.343124s |  1.63% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003857s |  0.00% |  0.02% )   ( 0.004377s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.157358s |  0.10% |  6.81% )   ( 1.090099s |  0.10% |  6.67% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.989597s |  0.18% | 11.71% )   ( 1.868243s |  0.18% | 11.43% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.635377s |  0.14% |  9.62% )   ( 1.579254s |  0.15% |  9.66% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.904185s |  0.17% | 11.20% )   ( 1.851365s |  0.18% | 11.32% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.598993s |  0.14% |  9.41% )   ( 1.518747s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.038690s |  0.09% |  6.11% )   ( 0.993218s |  0.09% |  6.07% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555849s |  0.05% |  3.27% )   ( 0.539347s |  0.05% |  3.30% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.063423s |  0.09% |  6.25% )   ( 1.027230s |  0.10% |  6.28% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.485185s |  0.04% |  2.85% )   ( 0.472916s |  0.04% |  2.89% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.399962s |  0.12% |  8.24% )   ( 1.367340s |  0.13% |  8.36% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.033193s |  0.27% | 17.85% )   ( 2.962629s |  0.29% | 18.12% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.569625s |  0.05% |  3.35% )   ( 0.539909s |  0.05% |  3.30% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.552935s |  0.05% |  3.25% )   ( 0.528450s |  0.05% |  3.23% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004869s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003755s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008726s |  0.00% |  0.05% )   ( 0.008805s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 19.281582s |  1.75% |  3.52% )   ( 18.604555s |  1.86% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000616s |  0.00% |  0.00% )   ( 0.000633s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.280877s |  1.75% | 99.99% )   ( 18.603820s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p8
30.5.0:         ( 0.023996s |  0.00% |  0.12% )   ( 0.023953s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024058s |  0.00% |  0.12% )   ( 0.024005s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024042s |  0.00% |  0.12% )   ( 0.023988s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024407s |  0.00% |  0.12% )   ( 0.024364s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.024108s |  0.00% |  0.12% )   ( 0.024060s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004720s |  0.00% |  0.00% )   ( 0.005270s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004269s |  0.00% |  0.00% )   ( 0.004831s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005171s |  0.00% |  0.00% )   ( 0.005745s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p8
41.5.0:         ( 0.183762s |  0.01% |  0.03% )   ( 0.006383s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005120s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004432s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035063s |  0.00% |  0.00% )   ( 0.035554s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007653s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005082s |  0.00% |  0.00% )   ( 0.005686s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p8
54.5.0:         ( 0.004226s |  0.00% |  0.00% )   ( 0.004826s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.867468s |  1.72% |  3.37% )   ( 18.363599s |  1.83% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004298s |  0.00% |  0.02% )   ( 0.004893s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.381609s |  0.12% |  7.32% )   ( 1.303131s |  0.13% |  7.09% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.236293s |  0.20% | 11.85% )   ( 2.180827s |  0.21% | 11.87% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.793366s |  0.16% |  9.50% )   ( 1.725966s |  0.17% |  9.39% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.120838s |  0.19% | 11.24% )   ( 2.073667s |  0.20% | 11.29% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.694052s |  0.15% |  8.97% )   ( 1.642977s |  0.16% |  8.94% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.161567s |  0.10% |  6.15% )   ( 1.154655s |  0.11% |  6.28% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.591449s |  0.05% |  3.13% )   ( 0.580769s |  0.05% |  3.16% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.213065s |  0.11% |  6.42% )   ( 1.196480s |  0.11% |  6.51% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.531997s |  0.04% |  2.81% )   ( 0.516327s |  0.05% |  2.81% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.614978s |  0.14% |  8.55% )   ( 1.520627s |  0.15% |  8.28% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.347272s |  0.30% | 17.74% )   ( 3.313799s |  0.33% | 18.04% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.585347s |  0.05% |  3.10% )   ( 0.580010s |  0.05% |  3.15% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.591337s |  0.05% |  3.13% )   ( 0.569471s |  0.05% |  3.10% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005632s |  0.00% |  0.00% )   ( 0.005040s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006479s |  0.00% |  0.03% )   ( 0.006526s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.403972s |  1.58% |  3.18% )   ( 16.432970s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000625s |  0.00% |  0.00% )   ( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.403260s |  1.58% | 99.99% )   ( 16.432236s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p9
30.5.0:         ( 0.025176s |  0.00% |  0.14% )   ( 0.025125s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023974s |  0.00% |  0.13% )   ( 0.023927s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.023968s |  0.00% |  0.13% )   ( 0.023921s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024007s |  0.00% |  0.13% )   ( 0.023960s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.023844s |  0.00% |  0.13% )   ( 0.023799s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005408s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004430s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005465s |  0.00% |  0.00% )   ( 0.006096s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p9
41.5.0:         ( 0.314787s |  0.02% |  0.06% )   ( 0.006952s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005307s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004831s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004034s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004219s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039519s |  0.00% |  0.00% )   ( 0.036485s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008749s |  0.00% |  0.00% )   ( 0.004947s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005068s |  0.00% |  0.00% )   ( 0.005628s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p9
54.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004152s |  0.00% |  0.00% )   ( 0.004722s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.851023s |  1.53% |  3.33% )   ( 16.187282s |  1.62% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004249s |  0.00% |  0.02% )   ( 0.004847s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.198475s |  0.10% |  7.11% )   ( 1.084750s |  0.10% |  6.70% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.872132s |  0.17% | 11.10% )   ( 1.794071s |  0.17% | 11.08% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.650380s |  0.15% |  9.79% )   ( 1.569656s |  0.15% |  9.69% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.871175s |  0.17% | 11.10% )   ( 1.808463s |  0.18% | 11.17% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.533693s |  0.13% |  9.10% )   ( 1.504573s |  0.15% |  9.29% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051634s |  0.09% |  6.24% )   ( 0.989716s |  0.09% |  6.11% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.592148s |  0.05% |  3.51% )   ( 0.560421s |  0.05% |  3.46% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.087442s |  0.09% |  6.45% )   ( 1.026759s |  0.10% |  6.34% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.526806s |  0.04% |  3.12% )   ( 0.505415s |  0.05% |  3.12% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.437732s |  0.13% |  8.53% )   ( 1.374803s |  0.13% |  8.49% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.872114s |  0.26% | 17.04% )   ( 2.850352s |  0.28% | 17.60% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.577310s |  0.05% |  3.42% )   ( 0.566628s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575733s |  0.05% |  3.41% )   ( 0.546828s |  0.05% |  3.37% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004333s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004034s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004435s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009112s |  0.00% |  0.05% )   ( 0.009197s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 18.211451s |  1.66% |  3.32% )   ( 17.172618s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000624s |  0.00% |  0.00% )   ( 0.000641s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.210738s |  1.66% | 99.99% )   ( 17.171875s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000320s |  0.00% |  0.00% )   ( 0.000351s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p10
30.5.0:         ( 0.024153s |  0.00% |  0.13% )   ( 0.024081s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024098s |  0.00% |  0.13% )   ( 0.024047s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024187s |  0.00% |  0.13% )   ( 0.024130s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024161s |  0.00% |  0.13% )   ( 0.024113s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.023995s |  0.00% |  0.13% )   ( 0.023939s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004747s |  0.00% |  0.00% )   ( 0.005324s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004813s |  0.00% |  0.00% )   ( 0.005357s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p10
41.5.0:         ( 0.279538s |  0.02% |  0.05% )   ( 0.006741s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004849s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004004s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031638s |  0.00% |  0.00% )   ( 0.032044s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011107s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004676s |  0.00% |  0.00% )   ( 0.005216s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p10
54.5.0:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.708541s |  1.61% |  3.60% )   ( 16.941686s |  1.69% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003818s |  0.00% |  0.02% )   ( 0.004349s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.210937s |  0.11% |  6.83% )   ( 1.140638s |  0.11% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.124087s |  0.19% | 11.99% )   ( 1.970382s |  0.19% | 11.63% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.769741s |  0.16% |  9.99% )   ( 1.644875s |  0.16% |  9.70% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.985738s |  0.18% | 11.21% )   ( 1.923670s |  0.19% | 11.35% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651167s |  0.15% |  9.32% )   ( 1.566924s |  0.15% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.093700s |  0.09% |  6.17% )   ( 1.036735s |  0.10% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.553429s |  0.05% |  3.12% )   ( 0.533481s |  0.05% |  3.14% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.119845s |  0.10% |  6.32% )   ( 1.082678s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.523749s |  0.04% |  2.95% )   ( 0.480005s |  0.04% |  2.83% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.422959s |  0.12% |  8.03% )   ( 1.398220s |  0.14% |  8.25% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.172030s |  0.28% | 17.91% )   ( 3.105244s |  0.31% | 18.32% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.538869s |  0.04% |  3.04% )   ( 0.538035s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.538472s |  0.04% |  3.04% )   ( 0.516450s |  0.05% |  3.04% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004161s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004990s |  0.00% |  0.02% )   ( 0.005051s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.979554s |  1.63% |  3.28% )   ( 17.438756s |  1.74% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000685s |  0.00% |  0.00% )   ( 0.000699s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.978778s |  1.63% | 99.99% )   ( 17.437954s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p11
30.5.0:         ( 0.024364s |  0.00% |  0.13% )   ( 0.024238s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024094s |  0.00% |  0.13% )   ( 0.024050s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024102s |  0.00% |  0.13% )   ( 0.024053s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024113s |  0.00% |  0.13% )   ( 0.024066s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.035247s |  0.00% |  0.19% )   ( 0.035145s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003562s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003120s |  0.00% |  0.00% )   ( 0.003518s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p11
41.5.0:         ( 0.157085s |  0.01% |  0.04% )   ( 0.004814s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003352s |  0.00% |  0.00% )   ( 0.003771s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.002967s |  0.00% |  0.00% )   ( 0.003380s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.002930s |  0.00% |  0.00% )   ( 0.003344s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003111s |  0.00% |  0.00% )   ( 0.003523s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026962s |  0.00% |  0.00% )   ( 0.024306s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005053s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004094s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p11
54.5.0:         ( 0.002994s |  0.00% |  0.00% )   ( 0.003380s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002890s |  0.00% |  0.00% )   ( 0.003293s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.604232s |  1.60% |  4.89% )   ( 17.216687s |  1.72% |  4.93% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002967s |  0.00% |  0.01% )   ( 0.003398s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.128534s |  0.10% |  6.41% )   ( 1.100632s |  0.11% |  6.39% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.113972s |  0.19% | 12.00% )   ( 2.092121s |  0.20% | 12.15% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.692327s |  0.15% |  9.61% )   ( 1.664099s |  0.16% |  9.66% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.067618s |  0.18% | 11.74% )   ( 2.041696s |  0.20% | 11.85% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.625958s |  0.14% |  9.23% )   ( 1.603969s |  0.16% |  9.31% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049150s |  0.09% |  5.95% )   ( 1.012843s |  0.10% |  5.88% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.464316s |  0.04% |  2.63% )   ( 0.451051s |  0.04% |  2.61% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140067s |  0.10% |  6.47% )   ( 1.101696s |  0.11% |  6.39% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.401522s |  0.03% |  2.28% )   ( 0.381103s |  0.03% |  2.21% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.444440s |  0.13% |  8.20% )   ( 1.411613s |  0.14% |  8.19% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.599570s |  0.32% | 20.44% )   ( 3.508263s |  0.35% | 20.37% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.454448s |  0.04% |  2.58% )   ( 0.429351s |  0.04% |  2.49% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.419343s |  0.03% |  2.38% )   ( 0.414852s |  0.04% |  2.40% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003512s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005198s |  0.00% |  0.00% )   ( 0.003301s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003171s |  0.00% |  0.00% )   ( 0.003576s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008509s |  0.00% |  0.04% )   ( 0.008589s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 17.717569s |  1.61% |  3.23% )   ( 17.135642s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000868s |  0.00% |  0.00% )   ( 0.000897s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 17.716526s |  1.61% | 99.99% )   ( 17.134545s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p12
30.5.0:         ( 0.046139s |  0.00% |  0.26% )   ( 0.045997s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046300s |  0.00% |  0.26% )   ( 0.046144s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.046258s |  0.00% |  0.26% )   ( 0.046097s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.046008s |  0.00% |  0.25% )   ( 0.045848s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.046354s |  0.00% |  0.26% )   ( 0.046179s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003564s |  0.00% |  0.00% )   ( 0.003983s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003235s |  0.00% |  0.00% )   ( 0.003679s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004392s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p12
41.5.0:         ( 0.163284s |  0.01% |  0.04% )   ( 0.005015s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.002948s |  0.00% |  0.00% )   ( 0.003344s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003009s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003240s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029697s |  0.00% |  0.00% )   ( 0.027055s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003350s |  0.00% |  0.00% )   ( 0.003762s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p12
54.5.0:         ( 0.003020s |  0.00% |  0.00% )   ( 0.003455s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002876s |  0.00% |  0.00% )   ( 0.003294s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.236362s |  1.57% |  4.63% )   ( 16.810025s |  1.68% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003054s |  0.00% |  0.01% )   ( 0.003477s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.156715s |  0.10% |  6.71% )   ( 1.101522s |  0.11% |  6.55% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.056150s |  0.18% | 11.92% )   ( 2.020094s |  0.20% | 12.01% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.621152s |  0.14% |  9.40% )   ( 1.609369s |  0.16% |  9.57% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.042439s |  0.18% | 11.84% )   ( 2.009557s |  0.20% | 11.95% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.574313s |  0.14% |  9.13% )   ( 1.556275s |  0.15% |  9.25% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011851s |  0.09% |  5.87% )   ( 0.979658s |  0.09% |  5.82% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.466801s |  0.04% |  2.70% )   ( 0.464123s |  0.04% |  2.76% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.061254s |  0.09% |  6.15% )   ( 1.050870s |  0.10% |  6.25% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.414324s |  0.03% |  2.40% )   ( 0.400793s |  0.04% |  2.38% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.453423s |  0.13% |  8.43% )   ( 1.388388s |  0.13% |  8.25% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.428827s |  0.31% | 19.89% )   ( 3.334055s |  0.33% | 19.83% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.486879s |  0.04% |  2.82% )   ( 0.455069s |  0.04% |  2.70% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.459180s |  0.04% |  2.66% )   ( 0.436775s |  0.04% |  2.59% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003035s |  0.00% |  0.00% )   ( 0.003426s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002894s |  0.00% |  0.00% )   ( 0.003298s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003119s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009214s |  0.00% |  0.05% )   ( 0.009189s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 20.510144s |  1.87% |  3.74% )   ( 19.667401s |  1.96% |  3.93% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000948s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 20.509043s |  1.87% | 99.99% )   ( 19.666850s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p13
30.5.0:         ( 0.025158s |  0.00% |  0.12% )   ( 0.024976s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046578s |  0.00% |  0.22% )   ( 0.046305s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024267s |  0.00% |  0.11% )   ( 0.024155s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024371s |  0.00% |  0.11% )   ( 0.024206s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.026685s |  0.00% |  0.13% )   ( 0.026553s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003459s |  0.00% |  0.00% )   ( 0.003901s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004676s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p13
41.5.0:         ( 0.141222s |  0.01% |  0.02% )   ( 0.005350s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004467s |  0.00% |  0.00% )   ( 0.003921s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028691s |  0.00% |  0.00% )   ( 0.029042s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006671s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p13
54.5.0:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003707s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.131417s |  1.83% |  4.26% )   ( 19.423020s |  1.94% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003518s |  0.00% |  0.01% )   ( 0.003959s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.533600s |  0.13% |  7.61% )   ( 1.402106s |  0.14% |  7.21% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.707769s |  0.24% | 13.45% )   ( 2.588010s |  0.25% | 13.32% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.107352s |  0.19% | 10.46% )   ( 2.037119s |  0.20% | 10.48% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.621218s |  0.23% | 13.02% )   ( 2.588457s |  0.25% | 13.32% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.064513s |  0.18% | 10.25% )   ( 1.995443s |  0.19% | 10.27% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.281011s |  0.11% |  6.36% )   ( 1.255472s |  0.12% |  6.46% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.521361s |  0.04% |  2.58% )   ( 0.506962s |  0.05% |  2.61% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.230815s |  0.11% |  6.11% )   ( 1.195895s |  0.11% |  6.15% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475561s |  0.04% |  2.36% )   ( 0.436230s |  0.04% |  2.24% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.441266s |  0.13% |  7.15% )   ( 1.367378s |  0.13% |  7.03% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.149152s |  0.28% | 15.64% )   ( 3.080773s |  0.30% | 15.86% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.519474s |  0.04% |  2.58% )   ( 0.497881s |  0.04% |  2.56% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.474807s |  0.04% |  2.35% )   ( 0.467335s |  0.04% |  2.40% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003360s |  0.00% |  0.00% )   ( 0.003822s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003223s |  0.00% |  0.00% )   ( 0.003658s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005239s |  0.00% |  0.02% )   ( 0.005308s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.605491s |  1.60% |  3.21% )   ( 16.983302s |  1.70% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000990s |  0.00% |  0.00% )   ( 0.001015s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.604350s |  1.60% | 99.99% )   ( 16.982116s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p14
30.5.0:         ( 0.033304s |  0.00% |  0.18% )   ( 0.033204s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026957s |  0.00% |  0.15% )   ( 0.026894s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.024089s |  0.00% |  0.13% )   ( 0.024041s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.024128s |  0.00% |  0.13% )   ( 0.024076s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.041138s |  0.00% |  0.23% )   ( 0.041009s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004659s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003697s |  0.00% |  0.00% )   ( 0.004193s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005052s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p14
41.5.0:         ( 0.202431s |  0.01% |  0.04% )   ( 0.005811s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005877s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003861s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003436s |  0.00% |  0.00% )   ( 0.003884s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029489s |  0.00% |  0.00% )   ( 0.029836s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.012533s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004811s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p14
54.5.0:         ( 0.003445s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003865s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.149692s |  1.56% |  4.05% )   ( 16.727395s |  1.67% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003404s |  0.00% |  0.01% )   ( 0.003892s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.106767s |  0.10% |  6.45% )   ( 1.097435s |  0.10% |  6.56% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.959845s |  0.17% | 11.42% )   ( 1.939300s |  0.19% | 11.59% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642440s |  0.14% |  9.57% )   ( 1.614315s |  0.16% |  9.65% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.025677s |  0.18% | 11.81% )   ( 1.930979s |  0.19% | 11.54% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.586374s |  0.14% |  9.25% )   ( 1.575699s |  0.15% |  9.41% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.047146s |  0.09% |  6.10% )   ( 1.015032s |  0.10% |  6.06% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542115s |  0.04% |  3.16% )   ( 0.504243s |  0.05% |  3.01% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091480s |  0.09% |  6.36% )   ( 1.065453s |  0.10% |  6.36% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.465674s |  0.04% |  2.71% )   ( 0.443899s |  0.04% |  2.65% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.430656s |  0.13% |  8.34% )   ( 1.398939s |  0.14% |  8.36% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.201499s |  0.29% | 18.66% )   ( 3.164309s |  0.31% | 18.91% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.520720s |  0.04% |  3.03% )   ( 0.495785s |  0.04% |  2.96% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.525895s |  0.04% |  3.06% )   ( 0.478115s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004108s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003850s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008504s |  0.00% |  0.04% )   ( 0.008580s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.890350s |  1.63% |  3.27% )   ( 17.118274s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001030s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.889194s |  1.63% | 99.99% )   ( 17.117073s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p15
30.5.0:         ( 0.046070s |  0.00% |  0.25% )   ( 0.045907s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045872s |  0.00% |  0.25% )   ( 0.045696s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.046105s |  0.00% |  0.25% )   ( 0.045942s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.046101s |  0.00% |  0.25% )   ( 0.045936s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.046010s |  0.00% |  0.25% )   ( 0.045849s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005000s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p15
41.5.0:         ( 0.161910s |  0.01% |  0.03% )   ( 0.005547s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007821s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004424s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003528s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034531s |  0.00% |  0.00% )   ( 0.030647s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004375s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p15
54.5.0:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003953s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.399631s |  1.58% |  4.05% )   ( 16.785288s |  1.68% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003346s |  0.00% |  0.01% )   ( 0.003813s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.223761s |  0.11% |  7.03% )   ( 1.130876s |  0.11% |  6.73% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.129493s |  0.19% | 12.23% )   ( 2.004747s |  0.20% | 11.94% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.690999s |  0.15% |  9.71% )   ( 1.626185s |  0.16% |  9.68% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.980043s |  0.18% | 11.37% )   ( 1.964043s |  0.19% | 11.70% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.553253s |  0.14% |  8.92% )   ( 1.530497s |  0.15% |  9.11% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.031334s |  0.09% |  5.92% )   ( 1.002397s |  0.10% |  5.97% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537052s |  0.04% |  3.08% )   ( 0.495370s |  0.04% |  2.95% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.157039s |  0.10% |  6.64% )   ( 1.073843s |  0.10% |  6.39% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442805s |  0.04% |  2.54% )   ( 0.434674s |  0.04% |  2.58% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405857s |  0.12% |  8.07% )   ( 1.382856s |  0.13% |  8.23% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.198427s |  0.29% | 18.38% )   ( 3.172243s |  0.31% | 18.89% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.521372s |  0.04% |  2.99% )   ( 0.490544s |  0.04% |  2.92% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.524850s |  0.04% |  3.01% )   ( 0.473200s |  0.04% |  2.81% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003975s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003332s |  0.00% |  0.00% )   ( 0.003784s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004903s |  0.00% |  0.02% )   ( 0.004970s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 16.998309s |  1.55% |  3.10% )   ( 16.407278s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001007s |  0.00% |  0.00% )   ( 0.001030s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 16.997144s |  1.55% | 99.99% )   ( 16.406071s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p16
30.5.0:         ( 0.026903s |  0.00% |  0.15% )   ( 0.026818s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026746s |  0.00% |  0.15% )   ( 0.026671s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.029609s |  0.00% |  0.17% )   ( 0.029513s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.029773s |  0.00% |  0.17% )   ( 0.029672s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.032943s |  0.00% |  0.19% )   ( 0.032825s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005383s |  0.00% |  0.00% )   ( 0.005961s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004921s |  0.00% |  0.00% )   ( 0.005569s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005844s |  0.00% |  0.00% )   ( 0.006466s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p16
41.5.0:         ( 0.168901s |  0.01% |  0.03% )   ( 0.006818s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004898s |  0.00% |  0.00% )   ( 0.005536s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004728s |  0.00% |  0.00% )   ( 0.005354s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004467s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004752s |  0.00% |  0.00% )   ( 0.005364s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040493s |  0.00% |  0.00% )   ( 0.037991s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007785s |  0.00% |  0.00% )   ( 0.005381s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005461s |  0.00% |  0.00% )   ( 0.006078s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p16
54.5.0:         ( 0.004376s |  0.00% |  0.00% )   ( 0.004970s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.561385s |  1.51% |  3.24% )   ( 16.129648s |  1.61% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004366s |  0.00% |  0.02% )   ( 0.004999s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.113226s |  0.10% |  6.72% )   ( 1.087380s |  0.10% |  6.74% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.833215s |  0.16% | 11.06% )   ( 1.802964s |  0.18% | 11.17% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.590846s |  0.14% |  9.60% )   ( 1.556067s |  0.15% |  9.64% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.803654s |  0.16% | 10.89% )   ( 1.784456s |  0.17% | 11.06% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.506089s |  0.13% |  9.09% )   ( 1.484074s |  0.14% |  9.20% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.000543s |  0.09% |  6.04% )   ( 0.992747s |  0.09% |  6.15% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.579397s |  0.05% |  3.49% )   ( 0.573243s |  0.05% |  3.55% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.054690s |  0.09% |  6.36% )   ( 1.009993s |  0.10% |  6.26% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.544120s |  0.04% |  3.28% )   ( 0.513486s |  0.05% |  3.18% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410202s |  0.12% |  8.51% )   ( 1.350079s |  0.13% |  8.37% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.875819s |  0.26% | 17.36% )   ( 2.823624s |  0.28% | 17.50% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.626521s |  0.05% |  3.78% )   ( 0.579572s |  0.05% |  3.59% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.618697s |  0.05% |  3.73% )   ( 0.566964s |  0.05% |  3.51% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004724s |  0.00% |  0.00% )   ( 0.005333s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004662s |  0.00% |  0.00% )   ( 0.005248s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008801s |  0.00% |  0.05% )   ( 0.008878s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.676524s |  1.61% |  3.23% )   ( 16.302449s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001010s |  0.00% |  0.00% )   ( 0.001033s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.675356s |  1.61% | 99.99% )   ( 16.301237s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p17
30.5.0:         ( 0.037528s |  0.00% |  0.21% )   ( 0.037413s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040476s |  0.00% |  0.22% )   ( 0.040350s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.045607s |  0.00% |  0.25% )   ( 0.045465s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.045591s |  0.00% |  0.25% )   ( 0.045422s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.045525s |  0.00% |  0.25% )   ( 0.045377s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004414s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005244s |  0.00% |  0.00% )   ( 0.005832s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p17
41.5.0:         ( 0.296181s |  0.02% |  0.05% )   ( 0.006846s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004620s |  0.00% |  0.00% )   ( 0.005190s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004910s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004752s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036469s |  0.00% |  0.00% )   ( 0.033946s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007487s |  0.00% |  0.00% )   ( 0.005107s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004880s |  0.00% |  0.00% )   ( 0.005435s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p17
54.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003885s |  0.00% |  0.00% )   ( 0.004437s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.054792s |  1.55% |  3.57% )   ( 15.968318s |  1.59% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004016s |  0.00% |  0.02% )   ( 0.004556s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.242671s |  0.11% |  7.28% )   ( 1.094739s |  0.10% |  6.85% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.956138s |  0.17% | 11.46% )   ( 1.831202s |  0.18% | 11.46% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.636966s |  0.14% |  9.59% )   ( 1.511964s |  0.15% |  9.46% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.852862s |  0.16% | 10.86% )   ( 1.784722s |  0.17% | 11.17% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.484247s |  0.13% |  8.70% )   ( 1.470017s |  0.14% |  9.20% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027070s |  0.09% |  6.02% )   ( 0.967831s |  0.09% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560399s |  0.05% |  3.28% )   ( 0.525370s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091017s |  0.09% |  6.39% )   ( 1.009601s |  0.10% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536747s |  0.04% |  3.14% )   ( 0.470404s |  0.04% |  2.94% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435455s |  0.13% |  8.41% )   ( 1.360576s |  0.13% |  8.52% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.054894s |  0.27% | 17.91% )   ( 2.890875s |  0.28% | 18.10% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.594970s |  0.05% |  3.48% )   ( 0.534333s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.577340s |  0.05% |  3.38% )   ( 0.512128s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004674s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004284s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004280s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008086s |  0.00% |  0.04% )   ( 0.008161s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.868391s |  1.62% |  3.26% )   ( 17.298926s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001021s |  0.00% |  0.00% )   ( 0.001044s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.867222s |  1.62% | 99.99% )   ( 17.297713s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p18
30.5.0:         ( 0.029538s |  0.00% |  0.16% )   ( 0.029436s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.028718s |  0.00% |  0.16% )   ( 0.028628s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.026556s |  0.00% |  0.14% )   ( 0.026480s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.026616s |  0.00% |  0.14% )   ( 0.026539s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.034561s |  0.00% |  0.19% )   ( 0.034435s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003490s |  0.00% |  0.00% )   ( 0.003920s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003123s |  0.00% |  0.00% )   ( 0.003529s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p18
41.5.0:         ( 0.118575s |  0.01% |  0.03% )   ( 0.004550s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003287s |  0.00% |  0.00% )   ( 0.003703s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003153s |  0.00% |  0.00% )   ( 0.003593s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.002926s |  0.00% |  0.00% )   ( 0.003319s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003161s |  0.00% |  0.00% )   ( 0.003568s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024695s |  0.00% |  0.00% )   ( 0.025018s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003140s |  0.00% |  0.00% )   ( 0.003531s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003483s |  0.00% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p18
54.5.0:         ( 0.002860s |  0.00% |  0.00% )   ( 0.003263s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002847s |  0.00% |  0.00% )   ( 0.003231s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.523036s |  1.59% |  4.90% )   ( 17.061793s |  1.70% |  4.93% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002795s |  0.00% |  0.01% )   ( 0.003207s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132985s |  0.10% |  6.46% )   ( 1.101702s |  0.11% |  6.45% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.057228s |  0.18% | 11.74% )   ( 2.038883s |  0.20% | 11.94% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.725725s |  0.15% |  9.84% )   ( 1.621504s |  0.16% |  9.50% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.060623s |  0.18% | 11.75% )   ( 2.032504s |  0.20% | 11.91% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.640211s |  0.14% |  9.36% )   ( 1.604959s |  0.16% |  9.40% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015448s |  0.09% |  5.79% )   ( 1.005604s |  0.10% |  5.89% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537793s |  0.04% |  3.06% )   ( 0.464415s |  0.04% |  2.72% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.098646s |  0.10% |  6.26% )   ( 1.071795s |  0.10% |  6.28% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.390344s |  0.03% |  2.22% )   ( 0.380799s |  0.03% |  2.23% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.420623s |  0.12% |  8.10% )   ( 1.390066s |  0.13% |  8.14% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.545225s |  0.32% | 20.23% )   ( 3.486929s |  0.34% | 20.43% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.453326s |  0.04% |  2.58% )   ( 0.442292s |  0.04% |  2.59% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.442064s |  0.04% |  2.52% )   ( 0.417134s |  0.04% |  2.44% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003444s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002653s |  0.00% |  0.00% )   ( 0.003011s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002983s |  0.00% |  0.00% )   ( 0.003367s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009587s |  0.00% |  0.05% )   ( 0.009664s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.026243s |  1.64% |  3.29% )   ( 17.607510s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.000992s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.025095s |  1.64% | 99.99% )   ( 17.606937s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p19
30.5.0:         ( 0.046742s |  0.00% |  0.25% )   ( 0.045797s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045564s |  0.00% |  0.25% )   ( 0.045419s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.045595s |  0.00% |  0.25% )   ( 0.045444s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.038715s |  0.00% |  0.21% )   ( 0.038589s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.037719s |  0.00% |  0.20% )   ( 0.037599s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002511s |  0.00% |  0.00% )   ( 0.002829s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002320s |  0.00% |  0.00% )   ( 0.002633s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002870s |  0.00% |  0.00% )   ( 0.003182s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p19
41.5.0:         ( 0.140487s |  0.01% |  0.04% )   ( 0.003850s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002561s |  0.00% |  0.00% )   ( 0.002890s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.002268s |  0.00% |  0.00% )   ( 0.002570s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.002064s |  0.00% |  0.00% )   ( 0.002357s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002251s |  0.00% |  0.00% )   ( 0.002545s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.017724s |  0.00% |  0.00% )   ( 0.017974s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005383s |  0.00% |  0.00% )   ( 0.002698s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002818s |  0.00% |  0.00% )   ( 0.003138s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p19
54.5.0:         ( 0.002284s |  0.00% |  0.00% )   ( 0.002589s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002169s |  0.00% |  0.00% )   ( 0.002477s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.605860s |  1.60% |  6.51% )   ( 17.324092s |  1.73% |  6.55% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002208s |  0.00% |  0.01% )   ( 0.002519s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.119168s |  0.10% |  6.35% )   ( 1.105303s |  0.11% |  6.38% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.210733s |  0.20% | 12.55% )   ( 2.181618s |  0.21% | 12.59% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.666665s |  0.15% |  9.46% )   ( 1.656304s |  0.16% |  9.56% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.170552s |  0.19% | 12.32% )   ( 2.141749s |  0.21% | 12.36% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.649810s |  0.15% |  9.37% )   ( 1.628878s |  0.16% |  9.40% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027777s |  0.09% |  5.83% )   ( 1.001070s |  0.10% |  5.77% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.403203s |  0.03% |  2.29% )   ( 0.378855s |  0.03% |  2.18% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140619s |  0.10% |  6.47% )   ( 1.118873s |  0.11% |  6.45% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.331606s |  0.03% |  1.88% )   ( 0.314113s |  0.03% |  1.81% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.396179s |  0.12% |  7.93% )   ( 1.375186s |  0.13% |  7.93% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.742574s |  0.34% | 21.25% )   ( 3.721752s |  0.37% | 21.48% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.371869s |  0.03% |  2.11% )   ( 0.364369s |  0.03% |  2.10% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.372897s |  0.03% |  2.11% )   ( 0.333503s |  0.03% |  1.92% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002256s |  0.00% |  0.00% )   ( 0.002562s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002184s |  0.00% |  0.00% )   ( 0.002468s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002218s |  0.00% |  0.00% )   ( 0.002500s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009136s |  0.00% |  0.05% )   ( 0.009141s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 20.336198s |  1.85% |  3.71% )   ( 19.006241s |  1.90% |  3.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001073s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 20.335010s |  1.85% | 99.99% )   ( 19.004998s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p20
30.5.0:         ( 0.048696s |  0.00% |  0.23% )   ( 0.048514s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043985s |  0.00% |  0.21% )   ( 0.043824s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.040695s |  0.00% |  0.20% )   ( 0.040557s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.047743s |  0.00% |  0.23% )   ( 0.047567s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.045045s |  0.00% |  0.22% )   ( 0.044894s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004493s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004600s |  0.00% |  0.00% )   ( 0.005102s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p20
41.5.0:         ( 0.191457s |  0.01% |  0.03% )   ( 0.005857s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003578s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004326s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034520s |  0.00% |  0.00% )   ( 0.031073s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006316s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p20
54.5.0:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003965s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003971s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.818861s |  1.80% |  4.06% )   ( 18.674750s |  1.87% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003491s |  0.00% |  0.01% )   ( 0.003978s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.374779s |  0.12% |  6.93% )   ( 1.336616s |  0.13% |  7.15% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.366836s |  0.21% | 11.94% )   ( 2.285789s |  0.22% | 12.23% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.875115s |  0.17% |  9.46% )   ( 1.746990s |  0.17% |  9.35% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.347012s |  0.21% | 11.84% )   ( 2.141902s |  0.21% | 11.46% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.802183s |  0.16% |  9.09% )   ( 1.695373s |  0.16% |  9.07% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.252498s |  0.11% |  6.31% )   ( 1.170410s |  0.11% |  6.26% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.571371s |  0.05% |  2.88% )   ( 0.526548s |  0.05% |  2.81% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.284497s |  0.11% |  6.48% )   ( 1.236963s |  0.12% |  6.62% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.479798s |  0.04% |  2.42% )   ( 0.454219s |  0.04% |  2.43% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.592062s |  0.14% |  8.03% )   ( 1.509002s |  0.15% |  8.08% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.730684s |  0.34% | 18.82% )   ( 3.552342s |  0.35% | 19.02% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.595425s |  0.05% |  3.00% )   ( 0.522442s |  0.05% |  2.79% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.543110s |  0.04% |  2.74% )   ( 0.492176s |  0.04% |  2.63% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003383s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004410s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006030s |  0.00% |  0.02% )   ( 0.006096s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.518884s |  1.59% |  3.20% )   ( 16.944636s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001035s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.517696s |  1.59% | 99.99% )   ( 16.943405s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p21
30.5.0:         ( 0.046040s |  0.00% |  0.26% )   ( 0.045885s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046305s |  0.00% |  0.26% )   ( 0.046141s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.045439s |  0.00% |  0.25% )   ( 0.045272s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.045585s |  0.00% |  0.26% )   ( 0.045434s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.045543s |  0.00% |  0.25% )   ( 0.045400s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004605s |  0.00% |  0.00% )   ( 0.005151s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005018s |  0.00% |  0.00% )   ( 0.005547s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p21
41.5.0:         ( 0.185041s |  0.01% |  0.03% )   ( 0.006092s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004252s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003774s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003976s |  0.00% |  0.00% )   ( 0.004514s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035110s |  0.00% |  0.00% )   ( 0.032553s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007027s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004687s |  0.00% |  0.00% )   ( 0.005235s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p21
54.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.001264s |  1.55% |  3.73% )   ( 16.604573s |  1.66% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003961s |  0.00% |  0.02% )   ( 0.004528s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.126906s |  0.10% |  6.62% )   ( 1.114001s |  0.11% |  6.70% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.960442s |  0.17% | 11.53% )   ( 1.899354s |  0.19% | 11.43% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.613166s |  0.14% |  9.48% )   ( 1.583743s |  0.15% |  9.53% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.931267s |  0.17% | 11.35% )   ( 1.904522s |  0.19% | 11.46% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.570371s |  0.14% |  9.23% )   ( 1.549935s |  0.15% |  9.33% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.069212s |  0.09% |  6.28% )   ( 1.019185s |  0.10% |  6.13% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.569940s |  0.05% |  3.35% )   ( 0.529784s |  0.05% |  3.19% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107739s |  0.10% |  6.51% )   ( 1.048689s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.469560s |  0.04% |  2.76% )   ( 0.466859s |  0.04% |  2.81% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.392564s |  0.12% |  8.19% )   ( 1.374650s |  0.13% |  8.27% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.125222s |  0.28% | 18.38% )   ( 3.102118s |  0.31% | 18.68% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.550314s |  0.05% |  3.23% )   ( 0.511985s |  0.05% |  3.08% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.510600s |  0.04% |  3.00% )   ( 0.495220s |  0.04% |  2.98% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003721s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005276s |  0.00% |  0.03% )   ( 0.005349s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.165908s |  1.56% |  3.13% )   ( 16.224519s |  1.62% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000933s |  0.00% |  0.00% )   ( 0.000955s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.164797s |  1.56% | 99.99% )   ( 16.223360s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p22
30.5.0:         ( 0.045934s |  0.00% |  0.26% )   ( 0.045771s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046071s |  0.00% |  0.26% )   ( 0.045902s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.046012s |  0.00% |  0.26% )   ( 0.045847s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.045860s |  0.00% |  0.26% )   ( 0.045696s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.045638s |  0.00% |  0.26% )   ( 0.045490s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004865s |  0.00% |  0.00% )   ( 0.005442s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004498s |  0.00% |  0.00% )   ( 0.005087s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005289s |  0.00% |  0.00% )   ( 0.005890s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p22
41.5.0:         ( 0.198817s |  0.01% |  0.03% )   ( 0.006301s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004755s |  0.00% |  0.00% )   ( 0.005361s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004508s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004529s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004919s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038614s |  0.00% |  0.00% )   ( 0.035452s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004531s |  0.00% |  0.00% )   ( 0.005092s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005084s |  0.00% |  0.00% )   ( 0.005675s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p22
54.5.0:         ( 0.004222s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.624034s |  1.51% |  3.45% )   ( 15.871952s |  1.58% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004274s |  0.00% |  0.02% )   ( 0.004811s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.198003s |  0.10% |  7.20% )   ( 1.066935s |  0.10% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.812811s |  0.16% | 10.90% )   ( 1.791034s |  0.17% | 11.28% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.638873s |  0.14% |  9.85% )   ( 1.532565s |  0.15% |  9.65% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.841326s |  0.16% | 11.07% )   ( 1.776443s |  0.17% | 11.19% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.567840s |  0.14% |  9.43% )   ( 1.485385s |  0.14% |  9.35% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.075797s |  0.09% |  6.47% )   ( 0.973468s |  0.09% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.595637s |  0.05% |  3.58% )   ( 0.547581s |  0.05% |  3.44% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.055307s |  0.09% |  6.34% )   ( 1.004462s |  0.10% |  6.32% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509531s |  0.04% |  3.06% )   ( 0.495794s |  0.04% |  3.12% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.394926s |  0.12% |  8.39% )   ( 1.344600s |  0.13% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.829653s |  0.25% | 17.02% )   ( 2.774368s |  0.27% | 17.47% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546619s |  0.04% |  3.28% )   ( 0.544487s |  0.05% |  3.43% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.553437s |  0.05% |  3.32% )   ( 0.530019s |  0.05% |  3.33% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004901s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005397s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008494s |  0.00% |  0.04% )   ( 0.008578s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 18.878580s |  1.72% |  3.45% )   ( 18.261966s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001004s |  0.00% |  0.00% )   ( 0.001027s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 18.877421s |  1.72% | 99.99% )   ( 18.260765s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p23
30.5.0:         ( 0.047132s |  0.00% |  0.24% )   ( 0.046987s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044791s |  0.00% |  0.23% )   ( 0.044652s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.047187s |  0.00% |  0.24% )   ( 0.047050s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.048986s |  0.00% |  0.25% )   ( 0.048804s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.047872s |  0.00% |  0.25% )   ( 0.047718s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003530s |  0.00% |  0.00% )   ( 0.003972s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.003723s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004497s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p23
41.5.0:         ( 0.181986s |  0.01% |  0.04% )   ( 0.005110s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003272s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.002998s |  0.00% |  0.00% )   ( 0.003410s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003795s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028394s |  0.00% |  0.00% )   ( 0.025701s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006412s |  0.00% |  0.00% )   ( 0.003831s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p23
54.5.0:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003529s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002969s |  0.00% |  0.00% )   ( 0.003389s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.374395s |  1.67% |  4.63% )   ( 17.935367s |  1.79% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003143s |  0.00% |  0.01% )   ( 0.003594s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.268413s |  0.11% |  6.90% )   ( 1.250199s |  0.12% |  6.97% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.376839s |  0.21% | 12.93% )   ( 2.289046s |  0.22% | 12.76% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.867012s |  0.17% | 10.16% )   ( 1.809475s |  0.18% | 10.08% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.309691s |  0.21% | 12.57% )   ( 2.290467s |  0.22% | 12.77% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.797975s |  0.16% |  9.78% )   ( 1.770704s |  0.17% |  9.87% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.127565s |  0.10% |  6.13% )   ( 1.111216s |  0.11% |  6.19% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.520859s |  0.04% |  2.83% )   ( 0.479218s |  0.04% |  2.67% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.254068s |  0.11% |  6.82% )   ( 1.218799s |  0.12% |  6.79% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.449750s |  0.04% |  2.44% )   ( 0.416026s |  0.04% |  2.31% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.568101s |  0.14% |  8.53% )   ( 1.511073s |  0.15% |  8.42% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.915185s |  0.26% | 15.86% )   ( 2.904246s |  0.29% | 16.19% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.478583s |  0.04% |  2.60% )   ( 0.459549s |  0.04% |  2.56% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.437211s |  0.03% |  2.37% )   ( 0.421755s |  0.04% |  2.35% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003174s |  0.00% |  0.00% )   ( 0.003605s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003058s |  0.00% |  0.00% )   ( 0.003366s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003333s |  0.00% |  0.00% )   ( 0.003741s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005096s |  0.00% |  0.02% )   ( 0.005166s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 19.927220s |  1.81% |  3.64% )   ( 19.283117s |  1.93% |  3.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001022s |  0.00% |  0.00% )   ( 0.001048s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 19.926043s |  1.81% | 99.99% )   ( 19.281895s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p24
30.5.0:         ( 0.045670s |  0.00% |  0.22% )   ( 0.045502s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045604s |  0.00% |  0.22% )   ( 0.045444s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.045569s |  0.00% |  0.22% )   ( 0.045422s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.048272s |  0.00% |  0.24% )   ( 0.048098s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.048083s |  0.00% |  0.24% )   ( 0.047899s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004506s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004680s |  0.00% |  0.00% )   ( 0.005215s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p24
41.5.0:         ( 0.157669s |  0.01% |  0.02% )   ( 0.005789s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004257s |  0.00% |  0.00% )   ( 0.004806s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003617s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038201s |  0.00% |  0.00% )   ( 0.032809s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004409s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004922s |  0.00% |  0.00% )   ( 0.005498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p24
54.5.0:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.433096s |  1.77% |  3.75% )   ( 18.939462s |  1.89% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003837s |  0.00% |  0.01% )   ( 0.004371s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.439626s |  0.13% |  7.40% )   ( 1.355031s |  0.13% |  7.15% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.287389s |  0.20% | 11.77% )   ( 2.254085s |  0.22% | 11.90% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.779906s |  0.16% |  9.15% )   ( 1.755234s |  0.17% |  9.26% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.217379s |  0.20% | 11.41% )   ( 2.173337s |  0.21% | 11.47% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.751115s |  0.15% |  9.01% )   ( 1.723482s |  0.17% |  9.09% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.248431s |  0.11% |  6.42% )   ( 1.194812s |  0.11% |  6.30% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.613970s |  0.05% |  3.15% )   ( 0.575758s |  0.05% |  3.03% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.266104s |  0.11% |  6.51% )   ( 1.228345s |  0.12% |  6.48% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508222s |  0.04% |  2.61% )   ( 0.481428s |  0.04% |  2.54% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.539135s |  0.14% |  7.92% )   ( 1.520700s |  0.15% |  8.02% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.655422s |  0.33% | 18.81% )   ( 3.585511s |  0.35% | 18.93% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.580166s |  0.05% |  2.98% )   ( 0.557403s |  0.05% |  2.94% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542394s |  0.04% |  2.79% )   ( 0.529965s |  0.05% |  2.79% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004264s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004141s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004995s |  0.00% |  0.02% )   ( 0.005070s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 20.336946s |  1.85% |  3.71% )   ( 19.392529s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001068s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 20.335750s |  1.85% | 99.99% )   ( 19.391289s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p25
30.5.0:         ( 0.043801s |  0.00% |  0.21% )   ( 0.043628s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046584s |  0.00% |  0.22% )   ( 0.046412s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.049683s |  0.00% |  0.24% )   ( 0.049498s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.047072s |  0.00% |  0.23% )   ( 0.046890s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.048325s |  0.00% |  0.23% )   ( 0.048131s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004710s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004141s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005201s |  0.00% |  0.00% )   ( 0.005809s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p25
41.5.0:         ( 0.178526s |  0.01% |  0.03% )   ( 0.006509s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005095s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004551s |  0.00% |  0.00% )   ( 0.005167s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.004190s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004969s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041445s |  0.00% |  0.00% )   ( 0.035890s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007812s |  0.00% |  0.00% )   ( 0.005236s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005230s |  0.00% |  0.00% )   ( 0.005847s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p25
54.5.0:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004782s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004468s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.808856s |  1.80% |  3.47% )   ( 19.037758s |  1.90% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004307s |  0.00% |  0.02% )   ( 0.004900s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.454223s |  0.13% |  7.34% )   ( 1.399672s |  0.14% |  7.35% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.274616s |  0.20% | 11.48% )   ( 2.152979s |  0.21% | 11.30% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.829628s |  0.16% |  9.23% )   ( 1.769723s |  0.17% |  9.29% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.243817s |  0.20% | 11.32% )   ( 2.149315s |  0.21% | 11.28% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.830907s |  0.16% |  9.24% )   ( 1.727138s |  0.17% |  9.07% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.264028s |  0.11% |  6.38% )   ( 1.218975s |  0.12% |  6.40% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.617234s |  0.05% |  3.11% )   ( 0.598941s |  0.05% |  3.14% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.324747s |  0.12% |  6.68% )   ( 1.289478s |  0.12% |  6.77% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549537s |  0.05% |  2.77% )   ( 0.516720s |  0.05% |  2.71% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.627962s |  0.14% |  8.21% )   ( 1.555384s |  0.15% |  8.16% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.600721s |  0.32% | 18.17% )   ( 3.506273s |  0.35% | 18.41% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.601381s |  0.05% |  3.03% )   ( 0.586431s |  0.05% |  3.08% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.585748s |  0.05% |  2.95% )   ( 0.561829s |  0.05% |  2.95% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004651s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004179s |  0.00% |  0.00% )   ( 0.004716s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005104s |  0.00% |  0.02% )   ( 0.005172s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.198874s |  1.56% |  3.14% )   ( 16.453633s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001063s |  0.00% |  0.00% )   ( 0.001086s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.197652s |  1.56% | 99.99% )   ( 16.452369s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p26
30.5.0:         ( 0.045354s |  0.00% |  0.26% )   ( 0.045179s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048145s |  0.00% |  0.27% )   ( 0.047958s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.050838s |  0.00% |  0.29% )   ( 0.050639s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.048649s |  0.00% |  0.28% )   ( 0.048475s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.050372s |  0.00% |  0.29% )   ( 0.049867s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004609s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004792s |  0.00% |  0.00% )   ( 0.005331s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p26
41.5.0:         ( 0.178180s |  0.01% |  0.03% )   ( 0.006295s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004337s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004558s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031001s |  0.00% |  0.00% )   ( 0.031458s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004707s |  0.00% |  0.00% )   ( 0.005252s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p26
54.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004321s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.680462s |  1.52% |  3.73% )   ( 16.100154s |  1.61% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003907s |  0.00% |  0.02% )   ( 0.004463s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.125817s |  0.10% |  6.74% )   ( 1.086574s |  0.10% |  6.74% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.919554s |  0.17% | 11.50% )   ( 1.819527s |  0.18% | 11.30% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.656683s |  0.15% |  9.93% )   ( 1.567252s |  0.15% |  9.73% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.972977s |  0.17% | 11.82% )   ( 1.846988s |  0.18% | 11.47% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.520829s |  0.13% |  9.11% )   ( 1.504195s |  0.15% |  9.34% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.970539s |  0.08% |  5.81% )   ( 0.958095s |  0.09% |  5.95% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.514266s |  0.04% |  3.08% )   ( 0.508127s |  0.05% |  3.15% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.049732s |  0.09% |  6.29% )   ( 1.024038s |  0.10% |  6.36% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.512645s |  0.04% |  3.07% )   ( 0.454084s |  0.04% |  2.82% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.381610s |  0.12% |  8.28% )   ( 1.349365s |  0.13% |  8.38% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.009379s |  0.27% | 18.04% )   ( 2.968965s |  0.29% | 18.44% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.544950s |  0.04% |  3.26% )   ( 0.514286s |  0.05% |  3.19% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497574s |  0.04% |  2.98% )   ( 0.494195s |  0.04% |  3.06% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003856s |  0.00% |  0.00% )   ( 0.004378s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003621s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004621s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005227s |  0.00% |  0.03% )   ( 0.005300s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 19.692094s |  1.79% |  3.59% )   ( 19.095438s |  1.91% |  3.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001082s |  0.00% |  0.00% )   ( 0.001105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 19.690860s |  1.79% | 99.99% )   ( 19.094161s |  1.91% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000225s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pR2187"
26.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000269s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pR2187"/.run/p27
30.5.0:         ( 0.064810s |  0.00% |  0.32% )   ( 0.047679s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045878s |  0.00% |  0.23% )   ( 0.045706s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 66356 ${BASHPID}' INT
33.5.0:         ( 0.051819s |  0.00% |  0.26% )   ( 0.051598s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 66356 ${BASHPID}' TERM
34.5.0:         ( 0.050981s |  0.00% |  0.25% )   ( 0.050788s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 66356 ${BASHPID}' HUP
35.5.0:         ( 0.050750s |  0.00% |  0.25% )   ( 0.050569s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003528s |  0.00% |  0.00% )   ( 0.003975s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003387s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pR2187"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004027s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p27
41.5.0:         ( 0.271732s |  0.02% |  0.06% )   ( 0.005324s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003566s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.quit ]]
46.5.0:         ( 0.003349s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.done ]]
46.5.1:         ( 0.003051s |  0.00% |  0.00% )   ( 0.003474s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003302s |  0.00% |  0.00% )   ( 0.003716s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033775s |  0.00% |  0.00% )   ( 0.026596s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003681s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pR2187"/.wait/p27
54.5.0:         ( 0.007048s |  0.00% |  0.00% )   ( 0.003523s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003029s |  0.00% |  0.00% )   ( 0.003434s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.057003s |  1.73% |  4.60% )   ( 18.752829s |  1.87% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003109s |  0.00% |  0.01% )   ( 0.003544s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.328256s |  0.12% |  6.96% )   ( 1.326989s |  0.13% |  7.07% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.516187s |  0.22% | 13.20% )   ( 2.487406s |  0.24% | 13.26% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.961286s |  0.17% | 10.29% )   ( 1.944426s |  0.19% | 10.36% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.516171s |  0.22% | 13.20% )   ( 2.473690s |  0.24% | 13.19% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.918522s |  0.17% | 10.06% )   ( 1.901137s |  0.19% | 10.13% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.227294s |  0.11% |  6.44% )   ( 1.208124s |  0.12% |  6.44% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.500153s |  0.04% |  2.62% )   ( 0.487122s |  0.04% |  2.59% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.317172s |  0.12% |  6.91% )   ( 1.287322s |  0.12% |  6.86% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.417374s |  0.03% |  2.19% )   ( 0.404947s |  0.04% |  2.15% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.321868s |  0.12% |  6.93% )   ( 1.304019s |  0.13% |  6.95% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.078464s |  0.28% | 16.15% )   ( 3.026996s |  0.30% | 16.14% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.478264s |  0.04% |  2.50% )   ( 0.460595s |  0.04% |  2.45% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.472883s |  0.04% |  2.48% )   ( 0.436512s |  0.04% |  2.32% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006509s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002933s |  0.00% |  0.00% )   ( 0.003314s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003151s |  0.00% |  0.00% )   ( 0.003538s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008692s |  0.00% |  0.04% )   ( 0.008793s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pR2187"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001399s |  0.00% |  0.00% )   ( 0.001413s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.243143s |  2.21% |  4.43% )   ( 0.001624s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000286s |  0.00% |  0.00% )   ( 0.000318s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000266s |  0.00% |  0.00% )   ( 0.000304s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.051623s |  0.00% |  0.00% )   ( 0.051857s |  0.00% |  0.01% )    	(1x)	│  │  └─  $'@TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pR2187"/.done\\;$\'\\n\': >"/dev/shm/.forkrun/forkrun.pR2187"/.quit\\;$\'\\n\'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.pR2187"/.run/p* 2>/dev/null) 2>/dev/null\\; $\'\\n\'printf \'0\\n\' >&22\\; $\'\\n\'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.pR2187"/.run/p* 2>/dev/null) 2>/dev/null\\;$\'\\n\'        kill -9 66370  2>/dev/null\\; $\'\\n\'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.pR2187"/.run/p* 2>/dev/null) 2>/dev/null\\; $\'\\n\'trap - INT TERM HUP USR1\\; $\'\\n\'        return ${returnVal:-0}1\t1762870583699333\t998\t-\t-\tF:2 main.forkrun\tS:2 57565.66353.66356\tN:46 {0-57565}.3.0{0-66353}.33{0-66356}.0{0-66359}\t1084\t::\t\'<< (SUBSHELL): 66359 >>\'
1085.2.0:       ( 0.000316s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.008127s |  0.00% |  0.00% )   ( 0.005040s |  0.00% |  0.00% )    	(1x)	└─ └─  $'@TRAP (EXIT): \\rm -rf "/dev/shm/.forkrun/forkrun.pR2187" 2>/dev/null1\t1762870583659170\t1082\t-\t-\tF:2 main.forkrun\tS:1 57565.66353\tN:39 {0-57565}.3.0{0-66353}.27{0-66354}\t230\t::\t\'<< (SUBSHELL): 66354 >>\'

WALL CLOCK TIME: 50.997489s
TOTAL RUN TIME:  1096.552677s
TOTAL CPU TIME:  998.495640s

