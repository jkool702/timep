LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 25.602006s | 50.08% )            ( 566.551515s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000649s |  0.00% |  0.00% )   ( 0.000350s |  0.00% |  0.01% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 29.658112s | 58.01% | 99.99% )   ( 2.937406s |  0.25% | 99.98% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041424s |  0.08% |  0.13% )   ( 0.041317s |  0.00% |  1.40% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000667s |  0.00% |  0.00% )   ( 0.000431s |  0.00% |  0.01% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005328s |  0.01% |  0.01% )   ( 0.005328s |  0.00% |  0.18% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.005328s |  0.01% |100.00% )   ( 0.005328s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.003167s |  0.00% |  0.01% )   ( 0.003298s |  0.00% |  0.11% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.027102s |  0.05% |  0.09% )   ( 0.000998s |  0.00% |  0.03% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 29.572910s | 57.85% | 99.71% )   ( 2.880644s |  0.25% | 98.06% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001117s |  0.00% |  0.00% )   ( 0.001328s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001117s |  0.00% |100.00% )   ( 0.001328s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000182s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003012s |  0.00% |  0.01% )   ( 0.003065s |  0.00% |  0.10% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000110s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000110s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.020308s |  0.03% |  0.06% )   ( 0.020244s |  0.00% |  0.70% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  8.09% )   ( 0.000083s |  0.00% |  8.14% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000070s |  0.00% |  7.98% )   ( 0.000083s |  0.00% |  8.14% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.63% )   ( 0.000079s |  0.00% |  7.75% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000070s |  0.00% |  7.98% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000068s |  0.00% |  7.75% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000073s |  0.00% |  8.32% )   ( 0.000085s |  0.00% |  8.34% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.63% )   ( 0.000079s |  0.00% |  7.75% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000112s |  0.00% | 12.77% )   ( 0.000125s |  0.00% | 12.26% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000072s |  0.00% |  8.20% )   ( 0.000081s |  0.00% |  7.94% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000064s |  0.00% |  7.29% )   ( 0.000075s |  0.00% |  7.36% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000070s |  0.00% |  7.98% )   ( 0.000082s |  0.00% |  8.04% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000073s |  0.00% |  8.32% )   ( 0.000085s |  0.00% |  8.34% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.010577s |  0.02% |  0.03% )   ( 0.010702s |  0.00% |  0.37% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002931s |  0.00% |  0.00% )   ( 0.003117s |  0.00% |  0.10% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000469s |  0.00% | 16.00% )   ( 0.000505s |  0.00% | 16.20% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002462s |  0.00% | 83.99% )   ( 0.002612s |  0.00% | 83.79% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003800s |  0.00% |  0.01% )   ( 0.003905s |  0.00% |  0.13% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000114s |  0.00% |100.00% )   ( 0.000137s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001287s |  0.00% |  0.00% )   ( 0.001368s |  0.00% |  0.04% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000509s |  0.00% |  0.00% )   ( 0.000522s |  0.00% |  0.01% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.135165s |  0.26% |  0.45% )   ( 0.134917s |  0.01% |  4.68% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000079s |  0.00% |  0.05% )   ( 0.000090s |  0.00% |  0.06% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021133s |  0.04% | 15.63% )   ( 0.021075s |  0.00% | 15.62% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023629s |  0.04% | 17.48% )   ( 0.023584s |  0.00% | 17.48% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.024197s |  0.04% | 17.90% )   ( 0.024129s |  0.00% | 17.88% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023641s |  0.04% | 17.49% )   ( 0.023588s |  0.00% | 17.48% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023593s |  0.04% | 17.45% )   ( 0.023546s |  0.00% | 17.45% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000081s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018586s |  0.03% | 13.75% )   ( 0.018553s |  0.00% | 13.75% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000097s |  0.00% |  0.07% )   ( 0.000109s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000072s |  0.00% |  0.05% )   ( 0.000083s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000397s |  0.00% |  0.00% )   ( 0.000423s |  0.00% |  0.01% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.179385s |  8.17% | 14.13% )   ( 1.841368s |  0.16% | 63.92% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000318s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023642s |  0.04% |  0.56% )   ( 0.023598s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.025521s |  0.04% |  0.61% )   ( 0.025458s |  0.00% |  1.38% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023962s |  0.04% |  0.57% )   ( 0.023907s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023766s |  0.04% |  0.56% )   ( 0.023715s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023567s |  0.04% |  0.56% )   ( 0.023518s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090434s |  0.17% |  0.00% )   ( 0.102827s |  0.00% |  0.00% )    	(672x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.637001s |  5.15% |  0.09% )   ( 0.122426s |  0.01% |  0.00% )    	(671x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000856s |  0.00% |  0.00% )   ( 0.000953s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.089029s |  0.17% |  0.00% )   ( 0.101966s |  0.00% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089617s |  0.17% |  0.00% )   ( 0.102643s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.091006s |  0.17% |  0.00% )   ( 0.100829s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090412s |  0.17% |  0.00% )   ( 0.103095s |  0.00% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091136s |  0.17% |  0.00% )   ( 0.103953s |  0.00% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.087442s |  0.17% |  0.00% )   ( 0.100246s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.087944s |  0.17% |  0.00% )   ( 0.100324s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.087744s |  0.17% |  0.00% )   ( 0.100588s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005663s |  0.01% |  0.13% )   ( 0.006113s |  0.00% |  0.33% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002512s |  0.00% |  0.06% )   ( 0.002870s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002512s |  0.00% |100.00% )   ( 0.002870s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.087206s |  0.17% |  0.00% )   ( 0.099932s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.086371s |  0.16% |  0.00% )   ( 0.099191s |  0.00% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085147s |  0.16% |  0.00% )   ( 0.097503s |  0.00% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092025s |  0.18% |  0.00% )   ( 0.104662s |  0.00% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087794s |  0.17% |  0.00% )   ( 0.100657s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087501s |  0.17% |  0.00% )   ( 0.100225s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002950s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002877s |  0.00% |  0.00% )   ( 0.003306s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.057081s |  0.11% |  0.06% )   ( 0.042755s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.002997s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002865s |  0.00% |  0.00% )   ( 0.003265s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003068s |  0.00% |  0.00% )   ( 0.003484s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000180s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000200s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.01% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000200s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000187s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000200s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007607s |  0.01% |  0.18% )   ( 0.007588s |  0.00% |  0.41% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/pAuto
598.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.076000s |  0.14% |  0.25% )   ( 0.076139s |  0.00% |  2.64% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006623s |  0.01% |  0.02% )   ( 0.007590s |  0.00% |  0.26% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000300s |  0.00% |  4.52% )   ( 0.000325s |  0.00% |  4.28% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000184s |  0.00% |  2.77% )   ( 0.000211s |  0.00% |  2.77% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000218s |  0.00% |  3.29% )   ( 0.000246s |  0.00% |  3.24% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000540s |  0.00% |  8.15% )   ( 0.000570s |  0.00% |  7.50% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000079s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000074s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  0.96% )   ( 0.000075s |  0.00% |  0.98% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.04% )   ( 0.000081s |  0.00% |  1.06% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000080s |  0.00% |  1.05% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000079s |  0.00% |  1.04% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000071s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000064s |  0.00% |  0.96% )   ( 0.000075s |  0.00% |  0.98% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000063s |  0.00% |  0.95% )   ( 0.000074s |  0.00% |  0.97% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000071s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000064s |  0.00% |  0.96% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000085s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000069s |  0.00% |  1.04% )   ( 0.000080s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000076s |  0.00% |  1.14% )   ( 0.000087s |  0.00% |  1.14% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000069s |  0.00% |  1.04% )   ( 0.000080s |  0.00% |  1.05% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000075s |  0.00% |  1.13% )   ( 0.000086s |  0.00% |  1.13% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000071s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000077s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000077s |  0.00% |  1.01% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000114s |  0.00% |  1.72% )   ( 0.000126s |  0.00% |  1.66% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000079s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000077s |  0.00% |  1.16% )   ( 0.000088s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000072s |  0.00% |  1.08% )   ( 0.000083s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000088s |  0.00% |  1.32% )   ( 0.000100s |  0.00% |  1.31% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000079s |  0.00% |  1.19% )   ( 0.000090s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000085s |  0.00% |  1.28% )   ( 0.000093s |  0.00% |  1.22% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000086s |  0.00% |  1.29% )   ( 0.000097s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000080s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000074s |  0.00% |  1.11% )   ( 0.000086s |  0.00% |  1.13% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000084s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000084s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000082s |  0.00% |  1.23% )   ( 0.000094s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000082s |  0.00% |  1.23% )   ( 0.000094s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000077s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000077s |  0.00% |  1.16% )   ( 0.000089s |  0.00% |  1.17% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000091s |  0.00% |  1.37% )   ( 0.000103s |  0.00% |  1.35% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000090s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000099s |  0.00% |  1.49% )   ( 0.000110s |  0.00% |  1.44% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000077s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000077s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000095s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000098s |  0.00% |  1.47% )   ( 0.000115s |  0.00% |  1.51% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000068s |  0.00% |  1.02% )   ( 0.000081s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000086s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000071s |  0.00% |  1.07% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000096s |  0.00% |  1.44% )   ( 0.000108s |  0.00% |  1.42% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000072s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000066s |  0.00% |  0.99% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000067s |  0.00% |  1.01% )   ( 0.000078s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000085s |  0.00% |  1.28% )   ( 0.000097s |  0.00% |  1.27% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.08% )   ( 0.000084s |  0.00% |  1.10% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000074s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000065s |  0.00% |  0.98% )   ( 0.000076s |  0.00% |  1.00% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000084s |  0.00% |  1.10% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000072s |  0.00% |  1.08% )   ( 0.000083s |  0.00% |  1.09% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.05% )   ( 0.000081s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000073s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000084s |  0.00% |  1.26% )   ( 0.000095s |  0.00% |  1.25% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000305s |  0.00% |  0.00% )   ( 0.000339s |  0.00% |  0.01% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000310s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.01% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.024053s |  0.04% |  0.08% )   ( 0.024001s |  0.00% |  0.83% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023910s |  0.04% |  0.08% )   ( 0.023865s |  0.00% |  0.82% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023838s |  0.04% |  0.08% )   ( 0.168591s |  0.01% |  5.85% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023308s |  0.04% |  0.07% )   ( 0.023250s |  0.00% |  0.80% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002789s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002609s |  0.00% |  0.00% )   ( 0.002990s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 0.011565s |  0.02% |  0.03% )   ( 0.011534s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000606s |  0.00% |  0.00% )   ( 0.000621s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.747150s | 38.63% | 99.99% )   ( 18.924089s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p0
30.5.0:         ( 0.023417s |  0.04% |  0.11% )   ( 0.023375s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023532s |  0.04% |  0.11% )   ( 0.023487s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.023804s |  0.04% |  0.12% )   ( 0.023760s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.023907s |  0.04% |  0.12% )   ( 0.023863s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.023845s |  0.04% |  0.12% )   ( 0.023800s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002741s |  0.00% |  0.00% )   ( 0.003064s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002548s |  0.00% |  0.00% )   ( 0.002905s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000242s |  0.00% |  0.00% )   ( 0.000267s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003112s |  0.00% |  0.00% )   ( 0.003471s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p0
41.5.0:         ( 0.293150s |  0.57% |  0.08% )   ( 0.004207s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002827s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.002515s |  0.00% |  0.00% )   ( 0.002841s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.002308s |  0.00% |  0.00% )   ( 0.002641s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002526s |  0.00% |  0.00% )   ( 0.002853s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020196s |  0.03% |  0.00% )   ( 0.020468s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002349s |  0.00% |  0.00% )   ( 0.002672s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002385s |  0.00% |  0.00% )   ( 0.002700s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002541s |  0.00% |  0.00% )   ( 0.002876s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002922s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p0
66.5.0:         ( 0.002407s |  0.00% |  0.00% )   ( 0.002748s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002258s |  0.00% |  0.00% )   ( 0.002580s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 19.268149s | 37.69% |  5.73% )   ( 18.728459s |  1.65% |  5.82% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002443s |  0.00% |  0.01% )   ( 0.002783s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.215635s |  2.37% |  6.61% )   ( 1.160094s |  0.10% |  6.48% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.289693s |  4.47% | 12.45% )   ( 2.254103s |  0.19% | 12.60% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.769673s |  3.46% |  9.62% )   ( 1.729684s |  0.15% |  9.66% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.268991s |  4.43% | 12.34% )   ( 2.205962s |  0.19% | 12.33% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.726096s |  3.37% |  9.38% )   ( 1.693976s |  0.14% |  9.46% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.057776s |  2.06% |  5.75% )   ( 1.048320s |  0.09% |  5.86% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.443110s |  0.86% |  2.41% )   ( 0.409889s |  0.03% |  2.29% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.219354s |  2.38% |  6.63% )   ( 1.157168s |  0.10% |  6.46% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.391926s |  0.76% |  2.13% )   ( 0.336524s |  0.02% |  1.88% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.536996s |  3.00% |  8.36% )   ( 1.463393s |  0.12% |  8.18% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.718903s |  7.27% | 20.23% )   ( 3.691781s |  0.32% | 20.63% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.390514s |  0.76% |  2.12% )   ( 0.380761s |  0.03% |  2.12% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.351887s |  0.68% |  1.91% )   ( 0.353452s |  0.03% |  1.97% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002351s |  0.00% |  0.00% )   ( 0.002669s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002111s |  0.00% |  0.00% )   ( 0.002417s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002382s |  0.00% |  0.00% )   ( 0.002648s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005247s |  0.01% |  0.02% )   ( 0.005317s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002554s |  0.00% |  0.00% )   ( 0.002951s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 0.011757s |  0.02% |  0.03% )   ( 0.011729s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000623s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 24.372676s | 47.67% | 99.99% )   ( 23.684517s |  2.08% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p1
30.5.0:         ( 0.025304s |  0.04% |  0.10% )   ( 0.025255s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023733s |  0.04% |  0.09% )   ( 0.023689s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.023932s |  0.04% |  0.09% )   ( 0.023886s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.023914s |  0.04% |  0.09% )   ( 0.023867s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.023986s |  0.04% |  0.09% )   ( 0.023937s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004313s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003354s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004624s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p1
41.5.0:         ( 0.290392s |  0.56% |  0.04% )   ( 0.005825s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004152s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003262s |  0.00% |  0.00% )   ( 0.003711s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031926s |  0.06% |  0.00% )   ( 0.026272s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003051s |  0.00% |  0.00% )   ( 0.003469s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004270s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p1
66.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003723s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003170s |  0.00% |  0.00% )   ( 0.003613s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 23.864389s | 46.68% |  4.25% )   ( 23.462308s |  2.06% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003067s |  0.00% |  0.01% )   ( 0.003504s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.594874s |  3.12% |  7.03% )   ( 1.560055s |  0.13% |  6.99% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.787615s |  5.45% | 12.29% )   ( 2.686074s |  0.23% | 12.03% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.109298s |  4.12% |  9.30% )   ( 2.101017s |  0.18% |  9.41% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.673654s |  5.23% | 11.79% )   ( 2.664742s |  0.23% | 11.94% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.056803s |  4.02% |  9.07% )   ( 2.042022s |  0.17% |  9.15% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.464006s |  2.86% |  6.45% )   ( 1.456527s |  0.12% |  6.52% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.584455s |  1.14% |  2.57% )   ( 0.555282s |  0.04% |  2.48% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.523500s |  2.98% |  6.72% )   ( 1.507354s |  0.13% |  6.75% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.516996s |  1.01% |  2.28% )   ( 0.465256s |  0.04% |  2.08% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.815127s |  3.55% |  8.00% )   ( 1.775417s |  0.15% |  7.95% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.512816s |  8.82% | 19.90% )   ( 4.488498s |  0.39% | 20.11% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.531866s |  1.04% |  2.34% )   ( 0.522077s |  0.04% |  2.34% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.493727s |  0.96% |  2.17% )   ( 0.483096s |  0.04% |  2.16% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003183s |  0.00% |  0.00% )   ( 0.003612s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003091s |  0.00% |  0.00% )   ( 0.003491s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006239s |  0.01% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004674s |  0.00% |  0.01% )   ( 0.004739s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 0.011757s |  0.02% |  0.03% )   ( 0.011731s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000592s |  0.00% |  0.00% )   ( 0.000608s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 21.871308s | 42.78% | 99.99% )   ( 20.866881s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p2
30.5.0:         ( 0.023636s |  0.04% |  0.10% )   ( 0.023586s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024005s |  0.04% |  0.10% )   ( 0.023953s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024051s |  0.04% |  0.10% )   ( 0.023999s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024022s |  0.04% |  0.10% )   ( 0.023971s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024062s |  0.04% |  0.11% )   ( 0.024010s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004822s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004350s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000238s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005304s |  0.01% |  0.00% )   ( 0.005912s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p2
41.5.0:         ( 0.360511s |  0.70% |  0.05% )   ( 0.006930s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004877s |  0.00% |  0.00% )   ( 0.005456s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004329s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004641s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033253s |  0.06% |  0.00% )   ( 0.033612s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004621s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010114s |  0.01% |  0.00% )   ( 0.005036s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005207s |  0.01% |  0.00% )   ( 0.005779s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p2
66.5.0:         ( 0.004169s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 21.275228s | 41.62% |  3.35% )   ( 20.620723s |  1.81% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004230s |  0.00% |  0.02% )   ( 0.004795s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.381745s |  2.70% |  6.98% )   ( 1.363291s |  0.12% |  7.10% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.221566s |  4.34% | 11.22% )   ( 2.208544s |  0.19% | 11.50% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.952541s |  3.81% |  9.86% )   ( 1.817024s |  0.16% |  9.46% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.246336s |  4.39% | 11.34% )   ( 2.184419s |  0.19% | 11.37% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.807737s |  3.53% |  9.13% )   ( 1.739008s |  0.15% |  9.05% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.255160s |  2.45% |  6.34% )   ( 1.202463s |  0.10% |  6.26% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.583795s |  1.14% |  2.94% )   ( 0.570416s |  0.05% |  2.97% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.337635s |  2.61% |  6.75% )   ( 1.271102s |  0.11% |  6.62% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.539157s |  1.05% |  2.72% )   ( 0.512111s |  0.04% |  2.66% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.601213s |  3.13% |  8.08% )   ( 1.566320s |  0.13% |  8.15% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.656799s |  7.15% | 18.47% )   ( 3.604161s |  0.31% | 18.77% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.611564s |  1.19% |  3.08% )   ( 0.589046s |  0.05% |  3.06% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.595631s |  1.16% |  3.00% )   ( 0.566344s |  0.04% |  2.94% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004305s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004854s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004917s |  0.00% |  0.02% )   ( 0.004981s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 0.011833s |  0.02% |  0.04% )   ( 0.011810s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000598s |  0.00% |  0.00% )   ( 0.000616s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 19.237759s | 37.63% | 99.99% )   ( 18.287205s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000362s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000362s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p3
30.5.0:         ( 0.024011s |  0.04% |  0.12% )   ( 0.023953s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024026s |  0.04% |  0.12% )   ( 0.023980s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024007s |  0.04% |  0.12% )   ( 0.023963s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024020s |  0.04% |  0.12% )   ( 0.023972s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.023859s |  0.04% |  0.12% )   ( 0.023811s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004908s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005193s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p3
41.5.0:         ( 0.333205s |  0.65% |  0.06% )   ( 0.006070s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004765s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004728s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003648s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030961s |  0.06% |  0.00% )   ( 0.031380s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003807s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004460s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004731s |  0.00% |  0.00% )   ( 0.005190s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p3
66.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.679126s | 36.54% |  3.73% )   ( 18.047789s |  1.59% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003617s |  0.00% |  0.02% )   ( 0.004101s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.104215s |  2.16% |  6.37% )   ( 1.096694s |  0.09% |  6.54% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.978079s |  3.86% | 11.42% )   ( 1.929209s |  0.17% | 11.51% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.752811s |  3.42% | 10.12% )   ( 1.618619s |  0.14% |  9.66% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.938359s |  3.79% | 11.19% )   ( 1.914929s |  0.16% | 11.43% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.580775s |  3.09% |  9.12% )   ( 1.540738s |  0.13% |  9.19% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.019078s |  1.99% |  5.88% )   ( 0.997727s |  0.08% |  5.95% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531325s |  1.03% |  3.06% )   ( 0.521023s |  0.04% |  3.11% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101202s |  2.15% |  6.35% )   ( 1.061233s |  0.09% |  6.33% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502932s |  0.98% |  2.90% )   ( 0.466599s |  0.04% |  2.78% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.459414s |  2.85% |  8.42% )   ( 1.397389s |  0.12% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.237268s |  6.33% | 18.69% )   ( 3.164266s |  0.27% | 18.88% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.568987s |  1.11% |  3.28% )   ( 0.530023s |  0.04% |  3.16% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.536802s |  1.05% |  3.10% )   ( 0.510394s |  0.04% |  3.04% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004293s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003666s |  0.00% |  0.00% )   ( 0.004174s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004358s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008359s |  0.01% |  0.04% )   ( 0.008440s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 0.012010s |  0.02% |  0.04% )   ( 0.011987s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000613s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 21.739809s | 42.52% | 99.99% )   ( 20.448220s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p4
30.5.0:         ( 0.023938s |  0.04% |  0.11% )   ( 0.023850s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024073s |  0.04% |  0.11% )   ( 0.024005s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024057s |  0.04% |  0.11% )   ( 0.023968s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024037s |  0.04% |  0.11% )   ( 0.023968s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024039s |  0.04% |  0.11% )   ( 0.023943s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004790s |  0.00% |  0.00% )   ( 0.005351s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004955s |  0.00% |  0.00% )   ( 0.005514s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p4
41.5.0:         ( 0.490639s |  0.95% |  0.07% )   ( 0.007321s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004916s |  0.00% |  0.00% )   ( 0.005503s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004084s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036536s |  0.07% |  0.00% )   ( 0.034372s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004482s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003774s |  0.00% |  0.00% )   ( 0.004282s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008387s |  0.01% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005447s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p4
66.5.0:         ( 0.003910s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003847s |  0.00% |  0.00% )   ( 0.004399s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.013888s | 41.10% |  3.45% )   ( 20.203416s |  1.78% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004114s |  0.00% |  0.02% )   ( 0.004696s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.410622s |  2.75% |  7.23% )   ( 1.353040s |  0.11% |  7.20% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.216088s |  4.33% | 11.37% )   ( 2.162330s |  0.19% | 11.51% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.836487s |  3.59% |  9.42% )   ( 1.767415s |  0.15% |  9.40% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.206437s |  4.31% | 11.32% )   ( 2.112184s |  0.18% | 11.24% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.777423s |  3.47% |  9.12% )   ( 1.703715s |  0.15% |  9.07% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.239824s |  2.42% |  6.36% )   ( 1.203822s |  0.10% |  6.40% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.622982s |  1.21% |  3.19% )   ( 0.589314s |  0.05% |  3.13% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.295042s |  2.53% |  6.64% )   ( 1.246115s |  0.10% |  6.63% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.563341s |  1.10% |  2.89% )   ( 0.519010s |  0.04% |  2.76% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.658370s |  3.24% |  8.50% )   ( 1.556771s |  0.13% |  8.28% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.474478s |  6.79% | 17.82% )   ( 3.423878s |  0.30% | 18.22% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.597097s |  1.16% |  3.06% )   ( 0.581967s |  0.05% |  3.09% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.586308s |  1.14% |  3.00% )   ( 0.559003s |  0.04% |  2.97% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005065s |  0.00% |  0.02% )   ( 0.005135s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 0.012033s |  0.02% |  0.04% )   ( 0.012008s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000593s |  0.00% |  0.00% )   ( 0.000611s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 20.567762s | 40.23% | 99.99% )   ( 19.207149s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000337s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p5
30.5.0:         ( 0.023942s |  0.04% |  0.11% )   ( 0.023896s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024044s |  0.04% |  0.11% )   ( 0.023995s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024040s |  0.04% |  0.11% )   ( 0.023985s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024009s |  0.04% |  0.11% )   ( 0.023954s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024009s |  0.04% |  0.11% )   ( 0.023959s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003745s |  0.00% |  0.00% )   ( 0.004205s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003314s |  0.00% |  0.00% )   ( 0.003757s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004388s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p5
41.5.0:         ( 0.442085s |  0.86% |  0.09% )   ( 0.005705s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004428s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003822s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003279s |  0.00% |  0.00% )   ( 0.003482s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024654s |  0.04% |  0.00% )   ( 0.025016s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002996s |  0.00% |  0.00% )   ( 0.003419s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002848s |  0.00% |  0.00% )   ( 0.003238s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002973s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003655s |  0.00% |  0.00% )   ( 0.004072s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p5
66.5.0:         ( 0.002900s |  0.00% |  0.00% )   ( 0.003300s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002907s |  0.00% |  0.00% )   ( 0.003325s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.921934s | 38.97% |  4.61% )   ( 18.990905s |  1.67% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003064s |  0.00% |  0.01% )   ( 0.003482s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.284622s |  2.51% |  6.83% )   ( 1.241090s |  0.10% |  6.91% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.319356s |  4.53% | 12.34% )   ( 2.226136s |  0.19% | 12.40% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.805486s |  3.53% |  9.60% )   ( 1.787246s |  0.15% |  9.96% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.334882s |  4.56% | 12.42% )   ( 2.286895s |  0.20% | 12.74% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.880855s |  3.67% | 10.00% )   ( 1.781038s |  0.15% |  9.92% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.164362s |  2.27% |  6.19% )   ( 1.107773s |  0.09% |  6.17% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531396s |  1.03% |  2.82% )   ( 0.486874s |  0.04% |  2.71% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.241063s |  2.42% |  6.60% )   ( 1.202059s |  0.10% |  6.69% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456968s |  0.89% |  2.43% )   ( 0.414295s |  0.03% |  2.30% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.619034s |  3.16% |  8.61% )   ( 1.535030s |  0.13% |  8.55% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.159414s |  6.18% | 16.81% )   ( 2.972498s |  0.26% | 16.56% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.500310s |  0.97% |  2.66% )   ( 0.461094s |  0.04% |  2.56% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.493096s |  0.96% |  2.62% )   ( 0.437220s |  0.03% |  2.43% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003749s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002852s |  0.00% |  0.00% )   ( 0.003220s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003188s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005216s |  0.01% |  0.02% )   ( 0.005283s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 0.012188s |  0.02% |  0.04% )   ( 0.012178s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000612s |  0.00% |  0.00% )   ( 0.000634s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 22.478057s | 43.97% | 99.99% )   ( 21.267897s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p6
30.5.0:         ( 0.023957s |  0.04% |  0.10% )   ( 0.023909s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024021s |  0.04% |  0.10% )   ( 0.023970s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.023993s |  0.04% |  0.10% )   ( 0.023944s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024005s |  0.04% |  0.10% )   ( 0.023955s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024799s |  0.04% |  0.11% )   ( 0.024743s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p6
41.5.0:         ( 0.395567s |  0.77% |  0.07% )   ( 0.006075s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003612s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031864s |  0.06% |  0.00% )   ( 0.028874s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003395s |  0.00% |  0.00% )   ( 0.003852s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004183s |  0.00% |  0.00% )   ( 0.004680s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p6
66.5.0:         ( 0.006486s |  0.01% |  0.00% )   ( 0.003962s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003355s |  0.00% |  0.00% )   ( 0.003811s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.858141s | 42.76% |  4.05% )   ( 21.039018s |  1.85% |  4.12% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003577s |  0.00% |  0.01% )   ( 0.004052s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.451429s |  2.83% |  7.04% )   ( 1.419117s |  0.12% |  7.14% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.441091s |  4.77% | 11.85% )   ( 2.322261s |  0.20% | 11.69% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.912325s |  3.74% |  9.28% )   ( 1.832486s |  0.16% |  9.22% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.326303s |  4.55% | 11.29% )   ( 2.297247s |  0.20% | 11.57% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.835322s |  3.59% |  8.91% )   ( 1.806687s |  0.15% |  9.10% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.394007s |  2.72% |  6.76% )   ( 1.266144s |  0.11% |  6.37% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.603033s |  1.17% |  2.92% )   ( 0.561068s |  0.04% |  2.82% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.383281s |  2.70% |  6.71% )   ( 1.340759s |  0.11% |  6.75% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.494656s |  0.96% |  2.40% )   ( 0.467144s |  0.04% |  2.35% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.628788s |  3.18% |  7.90% )   ( 1.613222s |  0.14% |  8.12% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.058476s |  7.93% | 19.70% )   ( 3.900176s |  0.34% | 19.64% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.530674s |  1.03% |  2.57% )   ( 0.527172s |  0.04% |  2.65% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530149s |  1.03% |  2.57% )   ( 0.496054s |  0.04% |  2.49% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003511s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003405s |  0.00% |  0.00% )   ( 0.003828s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006710s |  0.01% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005165s |  0.01% |  0.02% )   ( 0.005229s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 0.012205s |  0.02% |  0.04% )   ( 0.012179s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000624s |  0.00% |  0.00% )   ( 0.000640s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 20.543906s | 40.18% | 99.99% )   ( 19.467600s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000319s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p7
30.5.0:         ( 0.023969s |  0.04% |  0.11% )   ( 0.023921s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024052s |  0.04% |  0.11% )   ( 0.024002s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024124s |  0.04% |  0.11% )   ( 0.024069s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.024225s |  0.04% |  0.11% )   ( 0.024166s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024358s |  0.04% |  0.11% )   ( 0.024293s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004663s |  0.00% |  0.00% )   ( 0.005203s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004997s |  0.00% |  0.00% )   ( 0.005530s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p7
41.5.0:         ( 0.395763s |  0.77% |  0.06% )   ( 0.007018s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004511s |  0.00% |  0.00% )   ( 0.005053s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004117s |  0.00% |  0.00% )   ( 0.004668s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034307s |  0.06% |  0.00% )   ( 0.034735s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003970s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003845s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004765s |  0.00% |  0.00% )   ( 0.005314s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p7
66.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.917411s | 38.96% |  3.59% )   ( 19.221383s |  1.69% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004016s |  0.00% |  0.02% )   ( 0.004572s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.294602s |  2.53% |  7.00% )   ( 1.245520s |  0.10% |  6.97% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.260615s |  4.42% | 12.22% )   ( 2.180537s |  0.19% | 12.20% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.933288s |  3.78% | 10.45% )   ( 1.817099s |  0.16% | 10.17% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.258773s |  4.41% | 12.21% )   ( 2.177024s |  0.19% | 12.18% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.633178s |  3.19% |  8.83% )   ( 1.605559s |  0.14% |  8.98% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.102364s |  2.15% |  5.96% )   ( 1.086569s |  0.09% |  6.08% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547738s |  1.07% |  2.96% )   ( 0.543680s |  0.04% |  3.04% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.197132s |  2.34% |  6.47% )   ( 1.134035s |  0.09% |  6.34% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497166s |  0.97% |  2.68% )   ( 0.482443s |  0.04% |  2.70% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.485811s |  2.90% |  8.03% )   ( 1.422758s |  0.12% |  7.96% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.169496s |  6.20% | 17.14% )   ( 3.096242s |  0.27% | 17.33% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.558337s |  1.09% |  3.02% )   ( 0.541130s |  0.04% |  3.02% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544269s |  1.06% |  2.94% )   ( 0.527616s |  0.04% |  2.95% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006407s |  0.01% |  0.03% )   ( 0.006504s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 0.012242s |  0.02% |  0.04% )   ( 0.012218s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000670s |  0.00% |  0.00% )   ( 0.000687s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 18.927955s | 37.02% | 99.99% )   ( 17.718513s |  1.56% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p8
30.5.0:         ( 0.024073s |  0.04% |  0.12% )   ( 0.024024s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037200s |  0.07% |  0.19% )   ( 0.037076s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.041410s |  0.08% |  0.21% )   ( 0.041274s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.033896s |  0.06% |  0.17% )   ( 0.033781s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.026812s |  0.05% |  0.14% )   ( 0.026734s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.006071s |  0.01% |  0.00% )   ( 0.005895s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004548s |  0.00% |  0.00% )   ( 0.005141s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005597s |  0.01% |  0.00% )   ( 0.006213s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p8
41.5.0:         ( 0.462195s |  0.90% |  0.07% )   ( 0.007252s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004843s |  0.00% |  0.00% )   ( 0.005458s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004703s |  0.00% |  0.00% )   ( 0.005298s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004678s |  0.00% |  0.00% )   ( 0.005269s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041745s |  0.08% |  0.00% )   ( 0.037782s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004825s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004745s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005241s |  0.01% |  0.00% )   ( 0.005849s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p8
66.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004880s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.172337s | 35.55% |  3.20% )   ( 17.416515s |  1.53% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004359s |  0.00% |  0.02% )   ( 0.004961s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.115173s |  2.18% |  6.73% )   ( 1.061097s |  0.09% |  6.66% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.810973s |  3.54% | 10.94% )   ( 1.742621s |  0.15% | 10.94% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.597552s |  3.12% |  9.65% )   ( 1.547991s |  0.13% |  9.72% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.767028s |  3.45% | 10.67% )   ( 1.743661s |  0.15% | 10.95% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.479372s |  2.89% |  8.94% )   ( 1.458147s |  0.12% |  9.15% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.014147s |  1.98% |  6.12% )   ( 0.960453s |  0.08% |  6.03% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.656416s |  1.28% |  3.96% )   ( 0.575125s |  0.05% |  3.61% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.082311s |  2.11% |  6.54% )   ( 1.018877s |  0.08% |  6.40% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.547610s |  1.07% |  3.30% )   ( 0.515414s |  0.04% |  3.23% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.391235s |  2.72% |  8.40% )   ( 1.360616s |  0.11% |  8.54% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.858435s |  5.59% | 17.27% )   ( 2.767077s |  0.24% | 17.38% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.610111s |  1.19% |  3.68% )   ( 0.590015s |  0.05% |  3.70% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.610948s |  1.19% |  3.69% )   ( 0.572839s |  0.05% |  3.59% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004495s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004734s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007828s |  0.01% |  0.00% )   ( 0.005425s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009146s |  0.01% |  0.04% )   ( 0.009170s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 0.012259s |  0.02% |  0.04% )   ( 0.012231s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000668s |  0.00% |  0.00% )   ( 0.000685s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.164458s | 37.49% | 99.99% )   ( 18.275797s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000338s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p9
30.5.0:         ( 0.024095s |  0.04% |  0.12% )   ( 0.024045s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023985s |  0.04% |  0.12% )   ( 0.023937s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024025s |  0.04% |  0.12% )   ( 0.023973s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.023995s |  0.04% |  0.12% )   ( 0.023946s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.024097s |  0.04% |  0.12% )   ( 0.024040s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003550s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003078s |  0.00% |  0.00% )   ( 0.003471s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003640s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p9
41.5.0:         ( 0.363787s |  0.71% |  0.09% )   ( 0.005311s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003528s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003170s |  0.00% |  0.00% )   ( 0.003590s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.002912s |  0.00% |  0.00% )   ( 0.003312s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003551s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024603s |  0.04% |  0.00% )   ( 0.024947s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002948s |  0.00% |  0.00% )   ( 0.003351s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002974s |  0.00% |  0.00% )   ( 0.003384s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006130s |  0.01% |  0.00% )   ( 0.003538s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p9
66.5.0:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003399s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002851s |  0.00% |  0.00% )   ( 0.003260s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.592049s | 36.37% |  4.85% )   ( 18.057978s |  1.59% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002975s |  0.00% |  0.01% )   ( 0.003390s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.162631s |  2.27% |  6.62% )   ( 1.106855s |  0.09% |  6.49% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.088304s |  4.08% | 11.90% )   ( 2.063769s |  0.18% | 12.10% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.678772s |  3.28% |  9.57% )   ( 1.599979s |  0.14% |  9.38% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.070878s |  4.05% | 11.80% )   ( 2.019452s |  0.17% | 11.84% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.628842s |  3.18% |  9.28% )   ( 1.593970s |  0.14% |  9.35% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.036076s |  2.02% |  5.90% )   ( 1.008781s |  0.08% |  5.91% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475957s |  0.93% |  2.71% )   ( 0.459966s |  0.04% |  2.69% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.121439s |  2.19% |  6.39% )   ( 1.084638s |  0.09% |  6.36% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.412430s |  0.80% |  2.35% )   ( 0.394026s |  0.03% |  2.31% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.471560s |  2.87% |  8.39% )   ( 1.427992s |  0.12% |  8.37% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.486850s |  6.82% | 19.88% )   ( 3.426471s |  0.30% | 20.10% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.464814s |  0.90% |  2.65% )   ( 0.440901s |  0.03% |  2.58% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.434819s |  0.85% |  2.47% )   ( 0.412981s |  0.03% |  2.42% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003069s |  0.00% |  0.00% )   ( 0.003479s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002735s |  0.00% |  0.00% )   ( 0.003117s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003029s |  0.00% |  0.00% )   ( 0.003405s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008857s |  0.01% |  0.04% )   ( 0.008940s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 0.012305s |  0.02% |  0.04% )   ( 0.012281s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000709s |  0.00% |  0.00% )   ( 0.000725s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 18.867718s | 36.91% | 99.99% )   ( 17.942529s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p10
30.5.0:         ( 0.026286s |  0.05% |  0.13% )   ( 0.026211s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042672s |  0.08% |  0.22% )   ( 0.042517s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.035303s |  0.06% |  0.18% )   ( 0.035194s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.031103s |  0.06% |  0.16% )   ( 0.031006s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.026785s |  0.05% |  0.14% )   ( 0.026705s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004651s |  0.00% |  0.00% )   ( 0.005184s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004456s |  0.00% |  0.00% )   ( 0.005021s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005190s |  0.01% |  0.00% )   ( 0.005705s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p10
41.5.0:         ( 0.450008s |  0.88% |  0.08% )   ( 0.007564s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004916s |  0.00% |  0.00% )   ( 0.005384s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.005049s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033144s |  0.06% |  0.00% )   ( 0.033140s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004076s |  0.00% |  0.00% )   ( 0.004615s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004730s |  0.00% |  0.00% )   ( 0.005246s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p10
66.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.145438s | 35.49% |  3.56% )   ( 17.654353s |  1.55% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003940s |  0.00% |  0.02% )   ( 0.004495s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116964s |  2.18% |  6.67% )   ( 1.096811s |  0.09% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.872355s |  3.66% | 11.19% )   ( 1.858085s |  0.16% | 11.40% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.604015s |  3.13% |  9.59% )   ( 1.572397s |  0.13% |  9.65% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.856109s |  3.63% | 11.09% )   ( 1.846526s |  0.16% | 11.33% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.526545s |  2.98% |  9.12% )   ( 1.495414s |  0.13% |  9.17% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.060155s |  2.07% |  6.33% )   ( 1.000450s |  0.08% |  6.14% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542826s |  1.06% |  3.24% )   ( 0.527587s |  0.04% |  3.23% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.082342s |  2.11% |  6.47% )   ( 1.008159s |  0.08% |  6.18% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502760s |  0.98% |  3.00% )   ( 0.468197s |  0.04% |  2.87% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383501s |  2.70% |  8.27% )   ( 1.363672s |  0.12% |  8.37% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.045099s |  5.95% | 18.20% )   ( 2.990255s |  0.26% | 18.35% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552460s |  1.08% |  3.30% )   ( 0.536363s |  0.04% |  3.29% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575158s |  1.12% |  3.43% )   ( 0.521960s |  0.04% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004757s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003823s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004802s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006593s |  0.01% |  0.03% )   ( 0.006676s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 0.012343s |  0.02% |  0.04% )   ( 0.012314s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000692s |  0.00% |  0.00% )   ( 0.000707s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.806536s | 36.79% | 99.99% )   ( 17.776433s |  1.56% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p11
30.5.0:         ( 0.024515s |  0.04% |  0.13% )   ( 0.024405s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024186s |  0.04% |  0.12% )   ( 0.024134s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.024092s |  0.04% |  0.12% )   ( 0.024037s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.039382s |  0.07% |  0.20% )   ( 0.039252s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.027084s |  0.05% |  0.14% )   ( 0.027003s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004884s |  0.00% |  0.00% )   ( 0.005465s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.007312s |  0.01% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005302s |  0.01% |  0.00% )   ( 0.005883s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p11
41.5.0:         ( 0.595829s |  1.16% |  0.10% )   ( 0.007662s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004824s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004426s |  0.00% |  0.00% )   ( 0.005001s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004185s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005065s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034163s |  0.06% |  0.00% )   ( 0.034581s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005313s |  0.01% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005571s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p11
66.5.0:         ( 0.007098s |  0.01% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.953713s | 35.12% |  3.40% )   ( 17.509539s |  1.54% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003876s |  0.00% |  0.02% )   ( 0.004419s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.086765s |  2.12% |  6.57% )   ( 1.072810s |  0.09% |  6.65% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.875402s |  3.66% | 11.34% )   ( 1.823606s |  0.16% | 11.31% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.563689s |  3.05% |  9.46% )   ( 1.519702s |  0.13% |  9.43% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.861570s |  3.64% | 11.26% )   ( 1.788166s |  0.15% | 11.09% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.526945s |  2.98% |  9.24% )   ( 1.505206s |  0.13% |  9.34% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.048554s |  2.05% |  6.34% )   ( 1.005084s |  0.08% |  6.23% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.580938s |  1.13% |  3.51% )   ( 0.551140s |  0.04% |  3.42% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.079221s |  2.11% |  6.53% )   ( 1.023414s |  0.09% |  6.35% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.496723s |  0.97% |  3.00% )   ( 0.483093s |  0.04% |  2.99% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.385369s |  2.71% |  8.38% )   ( 1.361474s |  0.11% |  8.45% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.903565s |  5.68% | 17.57% )   ( 2.882770s |  0.25% | 17.89% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.564401s |  1.10% |  3.41% )   ( 0.555888s |  0.04% |  3.45% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.548041s |  1.07% |  3.31% )   ( 0.533185s |  0.04% |  3.30% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004265s |  0.00% |  0.00% )   ( 0.004825s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005298s |  0.01% |  0.02% )   ( 0.005401s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 0.012400s |  0.02% |  0.04% )   ( 0.012369s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000721s |  0.00% |  0.00% )   ( 0.000735s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.568548s | 38.28% | 99.99% )   ( 18.273433s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p12
30.5.0:         ( 0.032643s |  0.06% |  0.16% )   ( 0.032428s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037269s |  0.07% |  0.19% )   ( 0.036983s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.043795s |  0.08% |  0.22% )   ( 0.043512s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.027069s |  0.05% |  0.13% )   ( 0.026847s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.027689s |  0.05% |  0.14% )   ( 0.027509s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003537s |  0.00% |  0.00% )   ( 0.004000s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004052s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p12
41.5.0:         ( 0.244360s |  0.47% |  0.05% )   ( 0.005270s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003233s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003958s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030946s |  0.06% |  0.00% )   ( 0.028352s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003370s |  0.00% |  0.00% )   ( 0.003757s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004563s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p12
66.5.0:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003729s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003163s |  0.00% |  0.00% )   ( 0.003604s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.056713s | 37.28% |  4.23% )   ( 17.998155s |  1.58% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003442s |  0.00% |  0.01% )   ( 0.003879s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.172273s |  2.29% |  6.59% )   ( 1.123522s |  0.09% |  6.66% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.103616s |  4.11% | 11.82% )   ( 2.014739s |  0.17% | 11.95% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.726449s |  3.37% |  9.70% )   ( 1.644736s |  0.14% |  9.75% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.111405s |  4.13% | 11.87% )   ( 1.969741s |  0.17% | 11.68% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.859490s |  3.63% | 10.45% )   ( 1.560706s |  0.13% |  9.26% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.057752s |  2.06% |  5.94% )   ( 1.024471s |  0.09% |  6.07% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.499503s |  0.97% |  2.80% )   ( 0.488851s |  0.04% |  2.90% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.157422s |  2.26% |  6.50% )   ( 1.085273s |  0.09% |  6.43% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.444391s |  0.86% |  2.49% )   ( 0.415173s |  0.03% |  2.46% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417330s |  2.77% |  7.97% )   ( 1.364920s |  0.12% |  8.09% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.251514s |  6.36% | 18.28% )   ( 3.221225s |  0.28% | 19.11% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.490934s |  0.96% |  2.76% )   ( 0.475502s |  0.04% |  2.82% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.487237s |  0.95% |  2.73% )   ( 0.459656s |  0.04% |  2.72% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003865s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003104s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003472s |  0.00% |  0.00% )   ( 0.003920s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.010248s |  0.02% |  0.05% )   ( 0.010258s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 0.012399s |  0.02% |  0.04% )   ( 0.012374s |  0.00% |  0.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000725s |  0.00% |  0.00% )   ( 0.000743s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 19.038402s | 37.24% | 99.99% )   ( 18.151992s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p13
30.5.0:         ( 0.028654s |  0.05% |  0.15% )   ( 0.028571s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042229s |  0.08% |  0.22% )   ( 0.042086s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.037425s |  0.07% |  0.19% )   ( 0.037329s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.036760s |  0.07% |  0.19% )   ( 0.036649s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.045706s |  0.08% |  0.24% )   ( 0.045553s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.008035s |  0.01% |  0.00% )   ( 0.005576s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p13
41.5.0:         ( 0.283194s |  0.55% |  0.05% )   ( 0.006333s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004345s |  0.00% |  0.00% )   ( 0.004875s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003751s |  0.00% |  0.00% )   ( 0.004251s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031108s |  0.06% |  0.00% )   ( 0.031509s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003626s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003671s |  0.00% |  0.00% )   ( 0.004176s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004520s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004652s |  0.00% |  0.00% )   ( 0.005183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p13
66.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004152s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.456400s | 36.10% |  3.87% )   ( 17.841742s |  1.57% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003921s |  0.00% |  0.02% )   ( 0.004419s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138998s |  2.22% |  6.67% )   ( 1.096400s |  0.09% |  6.61% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.944888s |  3.80% | 11.40% )   ( 1.919605s |  0.16% | 11.58% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.606067s |  3.14% |  9.41% )   ( 1.588305s |  0.13% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.906228s |  3.72% | 11.17% )   ( 1.897999s |  0.16% | 11.45% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.544923s |  3.02% |  9.06% )   ( 1.522435s |  0.13% |  9.19% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.012161s |  1.98% |  5.93% )   ( 0.985944s |  0.08% |  5.95% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.543068s |  1.06% |  3.18% )   ( 0.516871s |  0.04% |  3.12% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101178s |  2.15% |  6.45% )   ( 1.058109s |  0.09% |  6.38% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.474974s |  0.92% |  2.78% )   ( 0.456803s |  0.04% |  2.75% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.486924s |  2.90% |  8.72% )   ( 1.406497s |  0.12% |  8.49% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.190862s |  6.24% | 18.71% )   ( 3.108417s |  0.27% | 18.76% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.544457s |  1.06% |  3.19% )   ( 0.507511s |  0.04% |  3.06% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.553156s |  1.08% |  3.24% )   ( 0.495032s |  0.04% |  2.98% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003566s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003902s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008528s |  0.01% |  0.04% )   ( 0.008596s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 0.012532s |  0.02% |  0.04% )   ( 0.012493s |  0.00% |  0.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000737s |  0.00% |  0.00% )   ( 0.000760s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.147887s | 37.45% | 99.99% )   ( 18.146864s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p14
30.5.0:         ( 0.025293s |  0.04% |  0.13% )   ( 0.025140s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025401s |  0.04% |  0.13% )   ( 0.025277s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.029467s |  0.05% |  0.15% )   ( 0.029315s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.049959s |  0.09% |  0.26% )   ( 0.049616s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.045542s |  0.08% |  0.23% )   ( 0.045175s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003756s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p14
41.5.0:         ( 0.326098s |  0.63% |  0.07% )   ( 0.005477s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003664s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003065s |  0.00% |  0.00% )   ( 0.003471s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003321s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027846s |  0.05% |  0.00% )   ( 0.025176s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002901s |  0.00% |  0.00% )   ( 0.003293s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003037s |  0.00% |  0.00% )   ( 0.003419s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006229s |  0.01% |  0.00% )   ( 0.003595s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003667s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p14
66.5.0:         ( 0.002971s |  0.00% |  0.00% )   ( 0.003361s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002991s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.552116s | 36.29% |  4.61% )   ( 17.871663s |  1.57% |  4.68% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003121s |  0.00% |  0.01% )   ( 0.003556s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.156384s |  2.26% |  6.63% )   ( 1.110164s |  0.09% |  6.60% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.101780s |  4.11% | 12.05% )   ( 2.006066s |  0.17% | 11.92% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.684015s |  3.29% |  9.65% )   ( 1.627628s |  0.14% |  9.67% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.056565s |  4.02% | 11.79% )   ( 1.986783s |  0.17% | 11.81% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.654748s |  3.23% |  9.48% )   ( 1.578680s |  0.13% |  9.38% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.067907s |  2.08% |  6.12% )   ( 1.015562s |  0.08% |  6.03% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.484602s |  0.94% |  2.77% )   ( 0.451910s |  0.03% |  2.68% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080639s |  2.11% |  6.19% )   ( 1.055401s |  0.09% |  6.27% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.407624s |  0.79% |  2.33% )   ( 0.405078s |  0.03% |  2.40% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.411097s |  2.76% |  8.09% )   ( 1.360963s |  0.11% |  8.09% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.412707s |  6.67% | 19.56% )   ( 3.357419s |  0.29% | 19.96% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.471938s |  0.92% |  2.70% )   ( 0.438568s |  0.03% |  2.60% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.448511s |  0.87% |  2.57% )   ( 0.422816s |  0.03% |  2.51% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003590s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003040s |  0.00% |  0.00% )   ( 0.003450s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003335s |  0.00% |  0.00% )   ( 0.003734s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008728s |  0.01% |  0.04% )   ( 0.008812s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 0.012541s |  0.02% |  0.04% )   ( 0.012499s |  0.00% |  0.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000740s |  0.00% |  0.00% )   ( 0.000760s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 18.771822s | 36.72% | 99.99% )   ( 17.498257s |  1.54% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p15
30.5.0:         ( 0.025103s |  0.04% |  0.13% )   ( 0.025037s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024212s |  0.04% |  0.12% )   ( 0.024158s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.026771s |  0.05% |  0.14% )   ( 0.026689s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.038723s |  0.07% |  0.20% )   ( 0.038579s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.045637s |  0.08% |  0.24% )   ( 0.045470s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005110s |  0.00% |  0.00% )   ( 0.005720s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004899s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005699s |  0.01% |  0.00% )   ( 0.006327s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p15
41.5.0:         ( 0.481274s |  0.94% |  0.08% )   ( 0.007449s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004861s |  0.00% |  0.00% )   ( 0.005427s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004545s |  0.00% |  0.00% )   ( 0.005114s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004282s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.004959s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034099s |  0.06% |  0.00% )   ( 0.034574s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004187s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004587s |  0.00% |  0.00% )   ( 0.005180s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005339s |  0.01% |  0.00% )   ( 0.005956s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p15
66.5.0:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004843s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004137s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.012231s | 35.23% |  3.30% )   ( 17.203204s |  1.51% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004519s |  0.00% |  0.02% )   ( 0.005104s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.142846s |  2.23% |  6.95% )   ( 1.064007s |  0.09% |  6.75% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.874809s |  3.66% | 11.41% )   ( 1.767137s |  0.15% | 11.22% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.548692s |  3.02% |  9.42% )   ( 1.530511s |  0.13% |  9.72% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.783066s |  3.48% | 10.85% )   ( 1.747776s |  0.15% | 11.10% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.482260s |  2.89% |  9.02% )   ( 1.453244s |  0.12% |  9.23% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001838s |  1.95% |  6.09% )   ( 0.962066s |  0.08% |  6.11% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.574611s |  1.12% |  3.49% )   ( 0.546002s |  0.04% |  3.46% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.019769s |  1.99% |  6.20% )   ( 0.982753s |  0.08% |  6.24% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.531374s |  1.03% |  3.23% )   ( 0.493398s |  0.04% |  3.13% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.440738s |  2.81% |  8.77% )   ( 1.334919s |  0.11% |  8.47% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.837172s |  5.55% | 17.27% )   ( 2.746092s |  0.24% | 17.44% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.575874s |  1.12% |  3.50% )   ( 0.558130s |  0.04% |  3.54% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.606031s |  1.18% |  3.69% )   ( 0.552620s |  0.04% |  3.51% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004502s |  0.00% |  0.00% )   ( 0.005079s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005163s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008668s |  0.01% |  0.04% )   ( 0.008743s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 0.012587s |  0.02% |  0.04% )   ( 0.012556s |  0.00% |  0.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000753s |  0.00% |  0.00% )   ( 0.000768s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 19.621324s | 38.38% | 99.99% )   ( 18.701872s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p16
30.5.0:         ( 0.024100s |  0.04% |  0.12% )   ( 0.024042s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025937s |  0.05% |  0.13% )   ( 0.025888s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.040011s |  0.07% |  0.20% )   ( 0.039873s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.046868s |  0.09% |  0.23% )   ( 0.046718s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.030167s |  0.05% |  0.15% )   ( 0.030074s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005160s |  0.01% |  0.00% )   ( 0.005367s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005076s |  0.00% |  0.00% )   ( 0.005635s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p16
41.5.0:         ( 0.351364s |  0.68% |  0.06% )   ( 0.007133s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004028s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031493s |  0.06% |  0.00% )   ( 0.031912s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004854s |  0.00% |  0.00% )   ( 0.005425s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p16
66.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.998329s | 37.16% |  3.58% )   ( 18.414929s |  1.62% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003991s |  0.00% |  0.02% )   ( 0.004529s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.179493s |  2.30% |  6.71% )   ( 1.142894s |  0.10% |  6.69% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.064034s |  4.03% | 11.74% )   ( 2.033874s |  0.17% | 11.91% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.674237s |  3.27% |  9.52% )   ( 1.635401s |  0.14% |  9.57% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.955907s |  3.82% | 11.13% )   ( 1.929299s |  0.17% | 11.29% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.580534s |  3.09% |  8.99% )   ( 1.560245s |  0.13% |  9.13% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.060021s |  2.07% |  6.03% )   ( 1.019109s |  0.08% |  5.96% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.558636s |  1.09% |  3.17% )   ( 0.532849s |  0.04% |  3.12% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.105096s |  2.16% |  6.28% )   ( 1.061243s |  0.09% |  6.21% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.491465s |  0.96% |  2.79% )   ( 0.479643s |  0.04% |  2.80% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.539720s |  3.01% |  8.76% )   ( 1.440892s |  0.12% |  8.43% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.199897s |  6.25% | 18.21% )   ( 3.156655s |  0.27% | 18.48% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.557926s |  1.09% |  3.17% )   ( 0.547417s |  0.04% |  3.20% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.600392s |  1.17% |  3.41% )   ( 0.529919s |  0.04% |  3.10% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004110s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005040s |  0.00% |  0.02% )   ( 0.005114s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 0.022616s |  0.04% |  0.07% )   ( 0.022539s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.000901s |  0.00% |  0.00% )   ( 0.000925s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.791501s | 36.76% | 99.99% )   ( 17.926912s |  1.57% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p17
30.5.0:         ( 0.046194s |  0.09% |  0.24% )   ( 0.046036s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046412s |  0.09% |  0.24% )   ( 0.046242s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.046308s |  0.09% |  0.24% )   ( 0.046143s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.046022s |  0.09% |  0.24% )   ( 0.045854s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.046371s |  0.09% |  0.24% )   ( 0.046196s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004463s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.004955s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p17
41.5.0:         ( 0.393776s |  0.77% |  0.08% )   ( 0.005883s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004317s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003419s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003296s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003640s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030936s |  0.06% |  0.00% )   ( 0.028324s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003450s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003442s |  0.00% |  0.00% )   ( 0.003894s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p17
66.5.0:         ( 0.003399s |  0.00% |  0.00% )   ( 0.003850s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003257s |  0.00% |  0.00% )   ( 0.003706s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.064777s | 35.33% |  4.17% )   ( 17.586010s |  1.54% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003321s |  0.00% |  0.01% )   ( 0.003765s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.086156s |  2.12% |  6.45% )   ( 1.080766s |  0.09% |  6.58% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.979567s |  3.87% | 11.77% )   ( 1.937453s |  0.17% | 11.79% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.589932s |  3.11% |  9.45% )   ( 1.568526s |  0.13% |  9.55% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.971502s |  3.85% | 11.72% )   ( 1.909706s |  0.16% | 11.62% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.556314s |  3.04% |  9.25% )   ( 1.521308s |  0.13% |  9.26% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.018220s |  1.99% |  6.05% )   ( 0.996440s |  0.08% |  6.06% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.492762s |  0.96% |  2.93% )   ( 0.488767s |  0.04% |  2.97% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.079207s |  2.11% |  6.41% )   ( 1.033644s |  0.09% |  6.29% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.449331s |  0.87% |  2.67% )   ( 0.430619s |  0.03% |  2.62% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.398046s |  2.73% |  8.31% )   ( 1.344589s |  0.11% |  8.18% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.196784s |  6.25% | 19.01% )   ( 3.155414s |  0.27% | 19.21% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498088s |  0.97% |  2.96% )   ( 0.482122s |  0.04% |  2.93% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.495013s |  0.96% |  2.94% )   ( 0.468816s |  0.04% |  2.85% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004007s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003203s |  0.00% |  0.00% )   ( 0.003639s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005467s |  0.01% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008941s |  0.01% |  0.04% )   ( 0.008898s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 0.023468s |  0.04% |  0.07% )   ( 0.023388s |  0.00% |  0.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001053s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 20.730939s | 40.55% | 99.99% )   ( 19.892792s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p18
30.5.0:         ( 0.044733s |  0.08% |  0.21% )   ( 0.044584s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046004s |  0.08% |  0.22% )   ( 0.045848s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.044506s |  0.08% |  0.21% )   ( 0.044353s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.043636s |  0.08% |  0.21% )   ( 0.043479s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.052875s |  0.10% |  0.25% )   ( 0.052702s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004482s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004888s |  0.00% |  0.00% )   ( 0.005440s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p18
41.5.0:         ( 0.298969s |  0.58% |  0.05% )   ( 0.006215s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004307s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003944s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003726s |  0.00% |  0.00% )   ( 0.004239s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031934s |  0.06% |  0.00% )   ( 0.032381s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005175s |  0.01% |  0.00% )   ( 0.004842s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005398s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p18
66.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.094828s | 39.31% |  3.72% )   ( 19.542261s |  1.72% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003706s |  0.00% |  0.01% )   ( 0.004222s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.359446s |  2.65% |  7.24% )   ( 1.257504s |  0.11% |  6.89% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.226230s |  4.35% | 11.87% )   ( 2.183468s |  0.19% | 11.96% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.725190s |  3.37% |  9.19% )   ( 1.682730s |  0.14% |  9.22% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.139475s |  4.18% | 11.40% )   ( 2.055536s |  0.18% | 11.26% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.700478s |  3.32% |  9.06% )   ( 1.655783s |  0.14% |  9.07% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.181936s |  2.31% |  6.30% )   ( 1.154922s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.574837s |  1.12% |  3.06% )   ( 0.567679s |  0.05% |  3.11% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.229917s |  2.40% |  6.55% )   ( 1.207141s |  0.10% |  6.61% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497071s |  0.97% |  2.65% )   ( 0.476895s |  0.04% |  2.61% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.539416s |  3.01% |  8.20% )   ( 1.510977s |  0.13% |  8.28% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.476743s |  6.80% | 18.53% )   ( 3.434793s |  0.30% | 18.82% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.555236s |  1.08% |  2.96% )   ( 0.532723s |  0.04% |  2.92% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544315s |  1.06% |  2.90% )   ( 0.516942s |  0.04% |  2.83% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005248s |  0.01% |  0.02% )   ( 0.005333s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 0.023346s |  0.04% |  0.07% )   ( 0.023269s |  0.00% |  0.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001036s |  0.00% |  0.00% )   ( 0.001058s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 21.170572s | 41.41% | 99.99% )   ( 20.522592s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p19
30.5.0:         ( 0.045807s |  0.08% |  0.21% )   ( 0.045647s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040786s |  0.07% |  0.19% )   ( 0.040634s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.040027s |  0.07% |  0.18% )   ( 0.039867s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.045529s |  0.08% |  0.21% )   ( 0.045372s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.046338s |  0.09% |  0.21% )   ( 0.046174s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003112s |  0.00% |  0.00% )   ( 0.003508s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003096s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003625s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p19
41.5.0:         ( 0.220511s |  0.43% |  0.05% )   ( 0.004879s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003277s |  0.00% |  0.00% )   ( 0.003680s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003077s |  0.00% |  0.00% )   ( 0.003465s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.002820s |  0.00% |  0.00% )   ( 0.003192s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002981s |  0.00% |  0.00% )   ( 0.003361s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022719s |  0.04% |  0.00% )   ( 0.023037s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002748s |  0.00% |  0.00% )   ( 0.003091s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002669s |  0.00% |  0.00% )   ( 0.003019s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002836s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003467s |  0.00% |  0.00% )   ( 0.003841s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p19
66.5.0:         ( 0.002871s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002746s |  0.00% |  0.00% )   ( 0.003136s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.653450s | 40.40% |  5.13% )   ( 20.215272s |  1.78% |  5.18% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002745s |  0.00% |  0.01% )   ( 0.003084s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.343101s |  2.62% |  6.82% )   ( 1.327357s |  0.11% |  6.89% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.667193s |  5.21% | 13.55% )   ( 2.608378s |  0.22% | 13.54% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.096175s |  4.10% | 10.65% )   ( 2.017421s |  0.17% | 10.47% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.677003s |  5.23% | 13.60% )   ( 2.583546s |  0.22% | 13.41% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.009053s |  3.93% | 10.21% )   ( 1.979529s |  0.17% | 10.27% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.221536s |  2.38% |  6.20% )   ( 1.214340s |  0.10% |  6.30% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.485211s |  0.94% |  2.46% )   ( 0.466187s |  0.04% |  2.42% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.295348s |  2.53% |  6.58% )   ( 1.237118s |  0.10% |  6.42% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.376271s |  0.73% |  1.91% )   ( 0.378450s |  0.03% |  1.96% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.385698s |  2.71% |  7.04% )   ( 1.364444s |  0.12% |  7.08% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.278075s |  6.41% | 16.66% )   ( 3.260647s |  0.28% | 16.92% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.427216s |  0.83% |  2.17% )   ( 0.424918s |  0.03% |  2.20% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.408659s |  0.79% |  2.07% )   ( 0.394432s |  0.03% |  2.04% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002831s |  0.00% |  0.00% )   ( 0.003220s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002639s |  0.00% |  0.00% )   ( 0.003002s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002959s |  0.00% |  0.00% )   ( 0.003336s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006377s |  0.01% |  0.03% )   ( 0.006429s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 0.023498s |  0.04% |  0.07% )   ( 0.023418s |  0.00% |  0.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001069s |  0.00% |  0.00% )   ( 0.001096s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.692902s | 36.56% | 99.99% )   ( 17.169935s |  1.51% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p20
30.5.0:         ( 0.045850s |  0.08% |  0.24% )   ( 0.045701s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044252s |  0.08% |  0.23% )   ( 0.044093s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.046995s |  0.09% |  0.25% )   ( 0.046835s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.051450s |  0.10% |  0.27% )   ( 0.051265s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.048825s |  0.09% |  0.26% )   ( 0.048631s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.007965s |  0.01% |  0.00% )   ( 0.005547s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.005034s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005375s |  0.01% |  0.00% )   ( 0.005977s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p20
41.5.0:         ( 0.499100s |  0.97% |  0.09% )   ( 0.007095s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004716s |  0.00% |  0.00% )   ( 0.005294s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004492s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004315s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034504s |  0.06% |  0.00% )   ( 0.034898s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004217s |  0.00% |  0.00% )   ( 0.004781s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007535s |  0.01% |  0.00% )   ( 0.005006s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005201s |  0.01% |  0.00% )   ( 0.005785s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p20
66.5.0:         ( 0.004219s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.838276s | 34.89% |  3.40% )   ( 16.804597s |  1.48% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004298s |  0.00% |  0.02% )   ( 0.004880s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.104110s |  2.15% |  6.76% )   ( 1.036597s |  0.09% |  6.73% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.896470s |  3.71% | 11.62% )   ( 1.738190s |  0.15% | 11.29% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.559913s |  3.05% |  9.55% )   ( 1.495922s |  0.13% |  9.72% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.832281s |  3.58% | 11.22% )   ( 1.713273s |  0.15% | 11.13% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.477992s |  2.89% |  9.05% )   ( 1.400941s |  0.12% |  9.10% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.966998s |  1.89% |  5.92% )   ( 0.928565s |  0.08% |  6.03% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.562374s |  1.10% |  3.44% )   ( 0.548122s |  0.04% |  3.56% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.057075s |  2.06% |  6.47% )   ( 0.968382s |  0.08% |  6.29% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522727s |  1.02% |  3.20% )   ( 0.487979s |  0.04% |  3.17% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.400977s |  2.74% |  8.58% )   ( 1.307207s |  0.11% |  8.49% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.799663s |  5.47% | 17.15% )   ( 2.681990s |  0.23% | 17.43% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566407s |  1.10% |  3.47% )   ( 0.543841s |  0.04% |  3.53% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.566865s |  1.10% |  3.47% )   ( 0.530957s |  0.04% |  3.45% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004323s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005080s |  0.00% |  0.02% )   ( 0.005168s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 0.023382s |  0.04% |  0.07% )   ( 0.023298s |  0.00% |  0.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001036s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 21.571569s | 42.19% | 99.99% )   ( 20.691092s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p21
30.5.0:         ( 0.048742s |  0.09% |  0.22% )   ( 0.048570s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047021s |  0.09% |  0.21% )   ( 0.046862s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.047976s |  0.09% |  0.22% )   ( 0.047813s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.050798s |  0.09% |  0.23% )   ( 0.050615s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.047146s |  0.09% |  0.21% )   ( 0.046985s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003771s |  0.00% |  0.00% )   ( 0.004201s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003501s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p21
41.5.0:         ( 0.382055s |  0.74% |  0.07% )   ( 0.005846s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004022s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003049s |  0.00% |  0.00% )   ( 0.003475s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003515s |  0.00% |  0.00% )   ( 0.003936s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027016s |  0.05% |  0.00% )   ( 0.027385s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003223s |  0.00% |  0.00% )   ( 0.003671s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003879s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004110s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p21
66.5.0:         ( 0.003188s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003006s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.856986s | 40.80% |  4.39% )   ( 20.347894s |  1.79% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003291s |  0.00% |  0.01% )   ( 0.003728s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.427486s |  2.79% |  7.24% )   ( 1.395539s |  0.12% |  7.25% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.671334s |  5.22% | 13.55% )   ( 2.603510s |  0.22% | 13.52% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.083314s |  4.07% | 10.57% )   ( 2.025041s |  0.17% | 10.52% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.532583s |  4.95% | 12.85% )   ( 2.492204s |  0.21% | 12.95% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.030182s |  3.97% | 10.30% )   ( 1.962048s |  0.17% | 10.19% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.272893s |  2.49% |  6.45% )   ( 1.233080s |  0.10% |  6.40% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512251s |  1.00% |  2.59% )   ( 0.506789s |  0.04% |  2.63% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.230879s |  2.40% |  6.24% )   ( 1.214394s |  0.10% |  6.31% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445205s |  0.87% |  2.25% )   ( 0.429058s |  0.03% |  2.22% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.415813s |  2.76% |  7.18% )   ( 1.349038s |  0.11% |  7.01% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.130748s |  6.12% | 15.88% )   ( 3.098748s |  0.27% | 16.10% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487670s |  0.95% |  2.47% )   ( 0.475839s |  0.04% |  2.47% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.464266s |  0.90% |  2.35% )   ( 0.454845s |  0.04% |  2.36% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003269s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003032s |  0.00% |  0.00% )   ( 0.003449s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005347s |  0.01% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005110s |  0.00% |  0.02% )   ( 0.005176s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 0.023597s |  0.04% |  0.07% )   ( 0.023505s |  0.00% |  0.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001071s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 19.520897s | 38.18% | 99.99% )   ( 19.130604s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p22
30.5.0:         ( 0.049469s |  0.09% |  0.25% )   ( 0.049280s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045328s |  0.08% |  0.23% )   ( 0.045153s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.047898s |  0.09% |  0.24% )   ( 0.047732s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.048506s |  0.09% |  0.24% )   ( 0.048326s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.046155s |  0.09% |  0.23% )   ( 0.046020s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001251s |  0.00% |  0.00% )   ( 0.001406s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   true
38.5.0:         ( 0.001071s |  0.00% |  0.00% )   ( 0.001208s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001364s |  0.00% |  0.00% )   ( 0.001515s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p22
41.5.0:         ( 0.060239s |  0.11% |  0.03% )   ( 0.001652s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001190s |  0.00% |  0.00% )   ( 0.001355s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.000913s |  0.00% |  0.00% )   ( 0.001040s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.000960s |  0.00% |  0.00% )   ( 0.001088s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.000990s |  0.00% |  0.00% )   ( 0.001125s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.008337s |  0.01% |  0.00% )   ( 0.008454s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001027s |  0.00% |  0.00% )   ( 0.001161s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001002s |  0.00% |  0.00% )   ( 0.001145s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.001241s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001207s |  0.00% |  0.00% )   ( 0.001353s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p22
66.5.0:         ( 0.001056s |  0.00% |  0.00% )   ( 0.001204s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.000982s |  0.00% |  0.00% )   ( 0.001113s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.187364s | 37.53% | 14.04% )   ( 18.856907s |  1.66% | 14.08% )    	(7x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.000978s |  0.00% |  0.00% )   ( 0.001124s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.162085s |  2.27% |  6.17% )   ( 1.146807s |  0.10% |  6.19% )    	(7x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.502237s |  4.89% | 13.29% )   ( 2.468035s |  0.21% | 13.32% )    	(7x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.786547s |  3.49% |  9.49% )   ( 1.759642s |  0.15% |  9.50% )    	(7x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.450237s |  4.79% | 13.01% )   ( 2.413272s |  0.21% | 13.02% )    	(7x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.766260s |  3.45% |  9.38% )   ( 1.750609s |  0.15% |  9.45% )    	(7x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.107203s |  2.16% |  5.88% )   ( 1.047084s |  0.09% |  5.65% )    	(7x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.287176s |  0.56% |  1.52% )   ( 0.286571s |  0.02% |  1.54% )    	(7x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.239073s |  2.42% |  6.58% )   ( 1.232137s |  0.10% |  6.65% )    	(7x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.257993s |  0.50% |  1.37% )   ( 0.217112s |  0.01% |  1.17% )    	(7x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.480994s |  2.89% |  7.86% )   ( 1.452373s |  0.12% |  7.84% )    	(7x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.315665s |  8.44% | 22.92% )   ( 4.298802s |  0.37% | 23.20% )    	(7x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.245179s |  0.47% |  1.30% )   ( 0.244786s |  0.02% |  1.32% )    	(7x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.220802s |  0.43% |  1.17% )   ( 0.203412s |  0.01% |  1.09% )    	(7x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.000957s |  0.00% |  0.00% )   ( 0.001086s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.000889s |  0.00% |  0.00% )   ( 0.001016s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.000960s |  0.00% |  0.00% )   ( 0.001086s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006278s |  0.01% |  0.03% )   ( 0.006342s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 0.023832s |  0.04% |  0.08% )   ( 0.023743s |  0.00% |  0.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001082s |  0.00% |  0.00% )   ( 0.001104s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 19.132068s | 37.42% | 99.99% )   ( 18.521460s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p23
30.5.0:         ( 0.049012s |  0.09% |  0.25% )   ( 0.048334s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.054599s |  0.10% |  0.28% )   ( 0.054395s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.043171s |  0.08% |  0.22% )   ( 0.043020s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.045875s |  0.08% |  0.23% )   ( 0.045669s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.045549s |  0.08% |  0.23% )   ( 0.045380s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002958s |  0.00% |  0.00% )   ( 0.003305s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002578s |  0.00% |  0.00% )   ( 0.002898s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002934s |  0.00% |  0.00% )   ( 0.003272s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p23
41.5.0:         ( 0.183760s |  0.35% |  0.05% )   ( 0.003904s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002806s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.002384s |  0.00% |  0.00% )   ( 0.002714s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.002335s |  0.00% |  0.00% )   ( 0.002648s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002563s |  0.00% |  0.00% )   ( 0.002875s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018460s |  0.03% |  0.00% )   ( 0.018515s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002263s |  0.00% |  0.00% )   ( 0.002565s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002393s |  0.00% |  0.00% )   ( 0.002639s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002487s |  0.00% |  0.00% )   ( 0.002807s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002834s |  0.00% |  0.00% )   ( 0.003156s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p23
66.5.0:         ( 0.002373s |  0.00% |  0.00% )   ( 0.002704s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002258s |  0.00% |  0.00% )   ( 0.002571s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.641569s | 36.46% |  6.08% )   ( 18.206926s |  1.60% |  6.14% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002376s |  0.00% |  0.01% )   ( 0.002695s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171996s |  2.29% |  6.58% )   ( 1.130950s |  0.09% |  6.49% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.195109s |  4.29% | 12.33% )   ( 2.156260s |  0.19% | 12.38% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.706641s |  3.33% |  9.58% )   ( 1.672130s |  0.14% |  9.60% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.202165s |  4.30% | 12.37% )   ( 2.144652s |  0.18% | 12.31% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.650977s |  3.22% |  9.27% )   ( 1.620488s |  0.14% |  9.30% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027405s |  2.00% |  5.77% )   ( 1.007549s |  0.08% |  5.78% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.413316s |  0.80% |  2.32% )   ( 0.389606s |  0.03% |  2.23% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.130924s |  2.21% |  6.35% )   ( 1.117419s |  0.09% |  6.41% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.372787s |  0.72% |  2.09% )   ( 0.327008s |  0.02% |  1.87% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.421161s |  2.78% |  7.98% )   ( 1.392923s |  0.12% |  8.00% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.765784s |  7.36% | 21.15% )   ( 3.730718s |  0.32% | 21.42% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.382523s |  0.74% |  2.14% )   ( 0.372403s |  0.03% |  2.13% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.358999s |  0.70% |  2.01% )   ( 0.345641s |  0.03% |  1.98% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002295s |  0.00% |  0.00% )   ( 0.002585s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002158s |  0.00% |  0.00% )   ( 0.002468s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002291s |  0.00% |  0.00% )   ( 0.002574s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008658s |  0.01% |  0.04% )   ( 0.008733s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 0.023706s |  0.04% |  0.08% )   ( 0.023623s |  0.00% |  0.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001039s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 19.236573s | 37.63% | 99.99% )   ( 18.292144s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p24
30.5.0:         ( 0.045914s |  0.08% |  0.23% )   ( 0.045729s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048130s |  0.09% |  0.25% )   ( 0.047953s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.048090s |  0.09% |  0.24% )   ( 0.047912s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.047822s |  0.09% |  0.24% )   ( 0.047638s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.051713s |  0.10% |  0.26% )   ( 0.051521s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003751s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003381s |  0.00% |  0.00% )   ( 0.003813s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p24
41.5.0:         ( 0.283728s |  0.55% |  0.06% )   ( 0.005619s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003296s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003635s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024193s |  0.04% |  0.00% )   ( 0.024561s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003189s |  0.00% |  0.00% )   ( 0.003601s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003076s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003870s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p24
66.5.0:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003452s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003268s |  0.00% |  0.00% )   ( 0.003695s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.624445s | 36.43% |  4.40% )   ( 17.953151s |  1.58% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003138s |  0.00% |  0.01% )   ( 0.003577s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.200155s |  2.34% |  6.86% )   ( 1.122548s |  0.09% |  6.64% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.058709s |  4.02% | 11.76% )   ( 2.010507s |  0.17% | 11.90% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.638411s |  3.20% |  9.36% )   ( 1.594920s |  0.14% |  9.44% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.019978s |  3.95% | 11.54% )   ( 1.981396s |  0.17% | 11.73% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.634996s |  3.19% |  9.34% )   ( 1.562654s |  0.13% |  9.25% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.082257s |  2.11% |  6.18% )   ( 1.003676s |  0.08% |  5.94% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.491913s |  0.96% |  2.81% )   ( 0.468841s |  0.04% |  2.77% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102719s |  2.15% |  6.30% )   ( 1.060516s |  0.09% |  6.28% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.401930s |  0.78% |  2.29% )   ( 0.401163s |  0.03% |  2.37% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.465173s |  2.86% |  8.37% )   ( 1.399059s |  0.12% |  8.28% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.423309s |  6.69% | 19.57% )   ( 3.372107s |  0.29% | 19.97% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.485496s |  0.94% |  2.77% )   ( 0.462920s |  0.04% |  2.74% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483902s |  0.94% |  2.76% )   ( 0.440984s |  0.03% |  2.61% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002975s |  0.00% |  0.00% )   ( 0.003357s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005134s |  0.01% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004953s |  0.00% |  0.02% )   ( 0.005024s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 0.023978s |  0.04% |  0.08% )   ( 0.023885s |  0.00% |  0.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001079s |  0.00% |  0.00% )   ( 0.001105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 18.551232s | 36.29% | 99.99% )   ( 17.640335s |  1.55% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p25
30.5.0:         ( 0.046865s |  0.09% |  0.25% )   ( 0.044659s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.065320s |  0.12% |  0.35% )   ( 0.047774s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.045288s |  0.08% |  0.24% )   ( 0.045128s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.045677s |  0.08% |  0.24% )   ( 0.045483s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.045596s |  0.08% |  0.24% )   ( 0.045424s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004996s |  0.00% |  0.00% )   ( 0.005569s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004501s |  0.00% |  0.00% )   ( 0.005036s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005480s |  0.01% |  0.00% )   ( 0.006048s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p25
41.5.0:         ( 0.423349s |  0.82% |  0.07% )   ( 0.007220s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004787s |  0.00% |  0.00% )   ( 0.005354s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004413s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034595s |  0.06% |  0.00% )   ( 0.035073s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006954s |  0.01% |  0.00% )   ( 0.004976s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004889s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p25
66.5.0:         ( 0.003942s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.761650s | 34.74% |  3.41% )   ( 17.280048s |  1.52% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004016s |  0.00% |  0.02% )   ( 0.004579s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.065223s |  2.08% |  6.53% )   ( 1.061646s |  0.09% |  6.69% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.826733s |  3.57% | 11.20% )   ( 1.792930s |  0.15% | 11.29% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.561688s |  3.05% |  9.57% )   ( 1.529780s |  0.13% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.822769s |  3.56% | 11.17% )   ( 1.770214s |  0.15% | 11.15% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.504344s |  2.94% |  9.22% )   ( 1.459623s |  0.12% |  9.19% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.000150s |  1.95% |  6.13% )   ( 0.965186s |  0.08% |  6.08% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.564035s |  1.10% |  3.45% )   ( 0.550202s |  0.04% |  3.46% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.000527s |  1.95% |  6.13% )   ( 0.989840s |  0.08% |  6.23% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.526055s |  1.02% |  3.22% )   ( 0.492277s |  0.04% |  3.10% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.416280s |  2.77% |  8.68% )   ( 1.325788s |  0.11% |  8.35% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.869341s |  5.61% | 17.59% )   ( 2.814927s |  0.24% | 17.73% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.591863s |  1.15% |  3.62% )   ( 0.565305s |  0.04% |  3.56% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555208s |  1.08% |  3.40% )   ( 0.545939s |  0.04% |  3.44% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004180s |  0.00% |  0.00% )   ( 0.004740s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004863s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008572s |  0.01% |  0.04% )   ( 0.008643s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 0.024023s |  0.04% |  0.08% )   ( 0.023931s |  0.00% |  0.83% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001063s |  0.00% |  0.00% )   ( 0.001092s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 18.494546s | 36.18% | 99.99% )   ( 17.590888s |  1.55% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p26
30.5.0:         ( 0.046060s |  0.09% |  0.24% )   ( 0.045883s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038927s |  0.07% |  0.21% )   ( 0.038779s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.044049s |  0.08% |  0.23% )   ( 0.043887s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.047670s |  0.09% |  0.25% )   ( 0.047482s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.052401s |  0.10% |  0.28% )   ( 0.052183s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005188s |  0.01% |  0.00% )   ( 0.005792s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004548s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005426s |  0.01% |  0.00% )   ( 0.006009s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p26
41.5.0:         ( 0.361857s |  0.70% |  0.06% )   ( 0.007133s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004855s |  0.00% |  0.00% )   ( 0.005467s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.004477s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004511s |  0.00% |  0.00% )   ( 0.005105s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033665s |  0.06% |  0.00% )   ( 0.034086s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004130s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007610s |  0.01% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005178s |  0.01% |  0.00% )   ( 0.005761s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p26
66.5.0:         ( 0.004261s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004753s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.784487s | 34.79% |  3.43% )   ( 17.229839s |  1.51% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004121s |  0.00% |  0.02% )   ( 0.004663s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.095344s |  2.14% |  6.71% )   ( 1.069613s |  0.09% |  6.76% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.820250s |  3.56% | 11.15% )   ( 1.782721s |  0.15% | 11.27% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.583874s |  3.09% |  9.70% )   ( 1.525305s |  0.13% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.801652s |  3.52% | 11.04% )   ( 1.767950s |  0.15% | 11.18% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.511285s |  2.95% |  9.26% )   ( 1.466650s |  0.12% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.968784s |  1.89% |  5.93% )   ( 0.958508s |  0.08% |  6.06% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.566811s |  1.10% |  3.47% )   ( 0.549765s |  0.04% |  3.47% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038355s |  2.03% |  6.36% )   ( 0.986254s |  0.08% |  6.23% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.519047s |  1.01% |  3.18% )   ( 0.481974s |  0.04% |  3.04% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.352789s |  2.64% |  8.29% )   ( 1.318740s |  0.11% |  8.34% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.864256s |  5.60% | 17.55% )   ( 2.805241s |  0.24% | 17.74% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.601747s |  1.17% |  3.68% )   ( 0.548450s |  0.04% |  3.46% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.585403s |  1.14% |  3.58% )   ( 0.541459s |  0.04% |  3.42% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004286s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004411s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008678s |  0.01% |  0.04% )   ( 0.008757s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 0.024583s |  0.04% |  0.08% )   ( 0.024489s |  0.00% |  0.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001132s |  0.00% |  0.00% )   ( 0.001161s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 18.486908s | 36.16% | 99.99% )   ( 17.479025s |  1.54% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.g0MnTk"
26.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p27
30.5.0:         ( 0.057235s |  0.11% |  0.30% )   ( 0.045906s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045821s |  0.08% |  0.24% )   ( 0.045630s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1306596 ${BASHPID}' INT
33.5.0:         ( 0.045707s |  0.08% |  0.24% )   ( 0.045530s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1306596 ${BASHPID}' TERM
34.5.0:         ( 0.045596s |  0.08% |  0.24% )   ( 0.045397s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1306596 ${BASHPID}' HUP
35.5.0:         ( 0.049109s |  0.09% |  0.26% )   ( 0.048904s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003599s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.g0MnTk"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004449s |  0.00% |  0.00% )   ( 0.004947s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p27
41.5.0:         ( 0.367989s |  0.71% |  0.08% )   ( 0.005864s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005549s |  0.01% |  0.00% )   ( 0.004388s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit ]]
46.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.done ]]
46.5.1:         ( 0.003695s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003508s |  0.00% |  0.00% )   ( 0.003965s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027040s |  0.05% |  0.00% )   ( 0.027430s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003370s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003207s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003445s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.g0MnTk"/.wait/p27
66.5.0:         ( 0.003367s |  0.00% |  0.00% )   ( 0.003842s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003117s |  0.00% |  0.00% )   ( 0.003514s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.777457s | 34.77% |  4.37% )   ( 17.137813s |  1.51% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003182s |  0.00% |  0.01% )   ( 0.003645s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.145721s |  2.24% |  6.88% )   ( 1.076481s |  0.09% |  6.71% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.031879s |  3.97% | 12.21% )   ( 1.901881s |  0.16% | 11.86% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.567936s |  3.06% |  9.42% )   ( 1.531524s |  0.13% |  9.55% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.921257s |  3.75% | 11.54% )   ( 1.881256s |  0.16% | 11.73% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.528990s |  2.99% |  9.18% )   ( 1.498937s |  0.13% |  9.34% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.979127s |  1.91% |  5.88% )   ( 0.951060s |  0.08% |  5.93% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.478672s |  0.93% |  2.87% )   ( 0.462527s |  0.04% |  2.88% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.045320s |  2.04% |  6.28% )   ( 1.006063s |  0.08% |  6.27% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.420684s |  0.82% |  2.52% )   ( 0.407112s |  0.03% |  2.53% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389724s |  2.71% |  8.35% )   ( 1.323991s |  0.11% |  8.25% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.187115s |  6.23% | 19.15% )   ( 3.091905s |  0.27% | 19.28% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.478312s |  0.93% |  2.87% )   ( 0.457137s |  0.04% |  2.85% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.459931s |  0.89% |  2.76% )   ( 0.439234s |  0.03% |  2.73% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004045s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003083s |  0.00% |  0.00% )   ( 0.003503s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003248s |  0.00% |  0.00% )   ( 0.003642s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.g0MnTk"/.quit
80.5.0:         ( 0.000231s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p* 1>&21
81.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009644s |  0.01% |  0.05% )   ( 0.009594s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000176s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000153s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001593s |  0.00% |  0.00% )   ( 0.001612s |  0.00% |  0.05% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000141s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.503533s | 47.93% | 82.85% )   ( 0.001860s |  0.00% |  0.06% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000286s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.01% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000290s |  0.00% |  0.00% )   ( 0.000330s |  0.00% |  0.01% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.048213s |  0.09% |  0.16% )   ( 0.048428s |  0.00% |  1.68% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.g0MnTk"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.g0MnTk"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1306608  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.g0MnTk"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000118s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005595s |  0.01% |  0.01% )   ( 0.003156s |  0.00% |  0.10% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.g0MnTk" 2>/dev/null

10.0.0:         ( 25.515459s | 49.91% )            ( 568.138892s | 50.06% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001318s |  0.00% |  0.00% )   ( 0.001108s |  0.00% |  0.03% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 29.254141s | 57.22% | 99.99% )   ( 3.014551s |  0.26% | 99.96% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.042872s |  0.08% |  0.14% )   ( 0.042791s |  0.00% |  1.41% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001256s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.03% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008289s |  0.01% |  0.02% )   ( 0.008289s |  0.00% |  0.27% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.008289s |  0.01% |100.00% )   ( 0.008289s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001040s |  0.00% |  0.00% )   ( 0.001118s |  0.00% |  0.03% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026225s |  0.05% |  0.08% )   ( 0.000926s |  0.00% |  0.03% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 29.166884s | 57.05% | 99.70% )   ( 2.955403s |  0.26% | 98.03% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001903s |  0.00% |  0.00% )   ( 0.002235s |  0.00% |  0.01% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001903s |  0.00% |100.00% )   ( 0.002235s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000215s |  0.00% |  0.00% )   ( 0.028824s |  0.00% |  0.97% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003088s |  0.00% |  0.01% )   ( 0.003131s |  0.00% |  0.10% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000111s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000111s |  0.00% |100.00% )   ( 0.000126s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.020149s |  0.03% |  0.06% )   ( 0.020052s |  0.00% |  0.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000073s |  0.00% |  8.36% )   ( 0.000081s |  0.00% |  7.91% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000068s |  0.00% |  7.78% )   ( 0.000080s |  0.00% |  7.82% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000078s |  0.00% |  7.62% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.78% )   ( 0.000080s |  0.00% |  7.82% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.56% )   ( 0.000078s |  0.00% |  7.62% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000080s |  0.00% |  9.16% )   ( 0.000091s |  0.00% |  8.89% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000064s |  0.00% |  7.33% )   ( 0.000075s |  0.00% |  7.33% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000118s |  0.00% | 13.51% )   ( 0.000130s |  0.00% | 12.70% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000064s |  0.00% |  7.33% )   ( 0.000090s |  0.00% |  8.79% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000079s |  0.00% |  7.72% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000079s |  0.00% |  7.72% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000071s |  0.00% |  8.13% )   ( 0.000082s |  0.00% |  8.01% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.007405s |  0.01% |  0.02% )   ( 0.007482s |  0.00% |  0.25% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.001995s |  0.00% |  0.00% )   ( 0.002081s |  0.00% |  0.07% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000304s |  0.00% | 15.23% )   ( 0.000324s |  0.00% | 15.56% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001691s |  0.00% | 84.76% )   ( 0.001757s |  0.00% | 84.43% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003188s |  0.00% |  0.01% )   ( 0.004190s |  0.00% |  0.14% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.002992s |  0.00% |  0.01% )   ( 0.003105s |  0.00% |  0.10% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000086s |  0.00% |100.00% )   ( 0.000098s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001112s |  0.00% |  0.00% )   ( 0.001192s |  0.00% |  0.04% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000525s |  0.00% |  0.00% )   ( 0.000534s |  0.00% |  0.01% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.133549s |  0.26% |  0.45% )   ( 0.133340s |  0.01% |  4.51% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000081s |  0.00% |  0.06% )   ( 0.000093s |  0.00% |  0.06% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021035s |  0.04% | 15.75% )   ( 0.020972s |  0.00% | 15.72% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023541s |  0.04% | 17.62% )   ( 0.023499s |  0.00% | 17.62% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023720s |  0.04% | 17.76% )   ( 0.023677s |  0.00% | 17.75% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023518s |  0.04% | 17.61% )   ( 0.023475s |  0.00% | 17.60% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023326s |  0.04% | 17.46% )   ( 0.023279s |  0.00% | 17.45% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000097s |  0.00% |  0.07% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018033s |  0.03% | 13.50% )   ( 0.017988s |  0.00% | 13.49% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000089s |  0.00% |  0.06% )   ( 0.000101s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000073s |  0.00% |  0.05% )   ( 0.000084s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000064s |  0.00% |  0.04% )   ( 0.000075s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000416s |  0.00% |  0.00% )   ( 0.000439s |  0.00% |  0.01% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.882082s |  7.59% | 13.30% )   ( 1.859350s |  0.16% | 62.91% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.024452s |  0.04% |  0.62% )   ( 0.024404s |  0.00% |  1.31% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023590s |  0.04% |  0.60% )   ( 0.023549s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023667s |  0.04% |  0.60% )   ( 0.023625s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023407s |  0.04% |  0.60% )   ( 0.023366s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023340s |  0.04% |  0.60% )   ( 0.023295s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.091086s |  0.17% |  0.00% )   ( 0.104177s |  0.00% |  0.00% )    	(674x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.326766s |  4.55% |  0.08% )   ( 0.121860s |  0.01% |  0.00% )    	(673x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001075s |  0.00% |  0.00% )   ( 0.001203s |  0.00% |  0.01% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.089762s |  0.17% |  0.00% )   ( 0.102805s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089502s |  0.17% |  0.00% )   ( 0.102611s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089616s |  0.17% |  0.00% )   ( 0.102658s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092774s |  0.18% |  0.00% )   ( 0.105753s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.092697s |  0.18% |  0.00% )   ( 0.105823s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.090816s |  0.17% |  0.00% )   ( 0.101839s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.088670s |  0.17% |  0.00% )   ( 0.101873s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.089016s |  0.17% |  0.00% )   ( 0.102118s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005823s |  0.01% |  0.14% )   ( 0.006280s |  0.00% |  0.33% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002575s |  0.00% |  0.06% )   ( 0.002946s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002575s |  0.00% |100.00% )   ( 0.002946s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088109s |  0.17% |  0.00% )   ( 0.101122s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.086642s |  0.16% |  0.00% )   ( 0.099705s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085318s |  0.16% |  0.00% )   ( 0.097882s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.091920s |  0.17% |  0.00% )   ( 0.105236s |  0.00% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.089499s |  0.17% |  0.00% )   ( 0.102465s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.089576s |  0.17% |  0.00% )   ( 0.102691s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002839s |  0.00% |  0.00% )   ( 0.003267s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002784s |  0.00% |  0.00% )   ( 0.003187s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.057713s |  0.11% |  0.07% )   ( 0.042954s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003301s |  0.00% |  0.00% )   ( 0.003734s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003167s |  0.00% |  0.00% )   ( 0.003567s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003157s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000258s |  0.00% |  0.00% )   ( 0.000284s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000191s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000184s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.01% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000187s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000189s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000221s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006703s |  0.01% |  0.17% )   ( 0.006684s |  0.00% |  0.35% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/pAuto
598.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.064956s |  0.12% |  0.22% )   ( 0.065011s |  0.00% |  2.19% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005619s |  0.01% |  0.01% )   ( 0.006426s |  0.00% |  0.21% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000369s |  0.00% |  6.56% )   ( 0.000407s |  0.00% |  6.33% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000252s |  0.00% |  4.48% )   ( 0.000283s |  0.00% |  4.40% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000273s |  0.00% |  4.85% )   ( 0.000308s |  0.00% |  4.79% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000225s |  0.00% |  4.00% )   ( 0.000237s |  0.00% |  3.68% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000067s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.26% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.26% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.26% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000067s |  0.00% |  1.19% )   ( 0.000078s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000087s |  0.00% |  1.54% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000095s |  0.00% |  1.69% )   ( 0.000106s |  0.00% |  1.64% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000072s |  0.00% |  1.28% )   ( 0.000082s |  0.00% |  1.27% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000072s |  0.00% |  1.28% )   ( 0.000098s |  0.00% |  1.52% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000086s |  0.00% |  1.53% )   ( 0.000097s |  0.00% |  1.50% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000093s |  0.00% |  1.65% )   ( 0.000104s |  0.00% |  1.61% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.37% )   ( 0.000089s |  0.00% |  1.38% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000088s |  0.00% |  1.56% )   ( 0.000110s |  0.00% |  1.71% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000067s |  0.00% |  1.19% )   ( 0.000078s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000093s |  0.00% |  1.65% )   ( 0.000104s |  0.00% |  1.61% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000079s |  0.00% |  1.40% )   ( 0.000091s |  0.00% |  1.41% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000082s |  0.00% |  1.45% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000090s |  0.00% |  1.60% )   ( 0.000101s |  0.00% |  1.57% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000088s |  0.00% |  1.56% )   ( 0.000099s |  0.00% |  1.54% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000081s |  0.00% |  1.44% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000073s |  0.00% |  1.29% )   ( 0.000085s |  0.00% |  1.32% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000068s |  0.00% |  1.21% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000104s |  0.00% |  1.85% )   ( 0.000116s |  0.00% |  1.80% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000066s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000063s |  0.00% |  1.12% )   ( 0.000074s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000091s |  0.00% |  1.61% )   ( 0.000101s |  0.00% |  1.57% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000098s |  0.00% |  1.74% )   ( 0.000109s |  0.00% |  1.69% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.28% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000070s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000086s |  0.00% |  1.53% )   ( 0.000097s |  0.00% |  1.50% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000078s |  0.00% |  1.38% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000099s |  0.00% |  1.76% )   ( 0.000111s |  0.00% |  1.72% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000274s |  0.00% |  0.00% )   ( 0.000315s |  0.00% |  0.01% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000297s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.01% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023967s |  0.04% |  0.08% )   ( 0.023839s |  0.00% |  0.80% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023751s |  0.04% |  0.08% )   ( 0.023671s |  0.00% |  0.80% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023785s |  0.04% |  0.08% )   ( 0.166909s |  0.01% |  5.64% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023314s |  0.04% |  0.07% )   ( 0.023209s |  0.00% |  0.78% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002911s |  0.00% |  0.00% )   ( 0.003351s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002906s |  0.00% |  0.00% )   ( 0.003336s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 0.011675s |  0.02% |  0.04% )   ( 0.011607s |  0.00% |  0.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000561s |  0.00% |  0.00% )   ( 0.000577s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.268764s | 37.69% | 99.99% )   ( 18.564895s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p0
30.5.0:         ( 0.023418s |  0.04% |  0.12% )   ( 0.023377s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023513s |  0.04% |  0.12% )   ( 0.023471s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023706s |  0.04% |  0.12% )   ( 0.023661s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.023818s |  0.04% |  0.12% )   ( 0.023772s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023882s |  0.04% |  0.12% )   ( 0.023837s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004694s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p0
41.5.0:         ( 0.126624s |  0.24% |  0.02% )   ( 0.005833s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003549s |  0.00% |  0.00% )   ( 0.004029s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003689s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031967s |  0.06% |  0.00% )   ( 0.029330s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006992s |  0.01% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p0
54.5.0:         ( 0.003463s |  0.00% |  0.00% )   ( 0.003928s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003363s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.925140s | 37.02% |  4.09% )   ( 18.340976s |  1.61% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003484s |  0.00% |  0.01% )   ( 0.003973s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.210441s |  2.36% |  6.86% )   ( 1.138312s |  0.10% |  6.64% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.116478s |  4.14% | 12.00% )   ( 1.999880s |  0.17% | 11.67% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.681760s |  3.28% |  9.53% )   ( 1.650372s |  0.14% |  9.63% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.034986s |  3.98% | 11.53% )   ( 2.001051s |  0.17% | 11.68% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.596522s |  3.12% |  9.05% )   ( 1.587420s |  0.13% |  9.26% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.074219s |  2.10% |  6.09% )   ( 1.021113s |  0.08% |  5.96% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.513158s |  1.00% |  2.90% )   ( 0.488910s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.111532s |  2.17% |  6.30% )   ( 1.088943s |  0.09% |  6.35% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447160s |  0.87% |  2.53% )   ( 0.434988s |  0.03% |  2.53% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.482576s |  2.90% |  8.40% )   ( 1.425277s |  0.12% |  8.31% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.374230s |  6.60% | 19.13% )   ( 3.327830s |  0.29% | 19.42% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.503693s |  0.98% |  2.85% )   ( 0.493628s |  0.04% |  2.88% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.485752s |  0.95% |  2.75% )   ( 0.470300s |  0.04% |  2.74% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003678s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003522s |  0.00% |  0.00% )   ( 0.003952s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008776s |  0.01% |  0.04% )   ( 0.008851s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002730s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 0.011709s |  0.02% |  0.04% )   ( 0.011646s |  0.00% |  0.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000571s |  0.00% |  0.00% )   ( 0.000588s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 19.352869s | 37.85% | 99.99% )   ( 18.108663s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p1
30.5.0:         ( 0.025383s |  0.04% |  0.13% )   ( 0.025337s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023610s |  0.04% |  0.12% )   ( 0.023569s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023731s |  0.04% |  0.12% )   ( 0.023691s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.023987s |  0.04% |  0.12% )   ( 0.023946s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023956s |  0.04% |  0.12% )   ( 0.023910s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005593s |  0.01% |  0.00% )   ( 0.006255s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │   true
38.5.0:         ( 0.004948s |  0.00% |  0.00% )   ( 0.005582s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006091s |  0.01% |  0.00% )   ( 0.006777s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p1
41.5.0:         ( 0.155404s |  0.30% |  0.02% )   ( 0.007245s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005282s |  0.01% |  0.00% )   ( 0.005967s |  0.00% |  0.00% )    	(34x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004994s |  0.00% |  0.00% )   ( 0.005669s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005288s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005141s |  0.01% |  0.00% )   ( 0.005814s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.044842s |  0.08% |  0.00% )   ( 0.039405s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007106s |  0.01% |  0.00% )   ( 0.006075s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005796s |  0.01% |  0.00% )   ( 0.006469s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p1
54.5.0:         ( 0.007945s |  0.01% |  0.00% )   ( 0.005600s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005263s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.946959s | 37.06% |  2.96% )   ( 17.851885s |  1.57% |  2.98% )    	(33x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004825s |  0.00% |  0.02% )   ( 0.005477s |  0.00% |  0.03% )    	(33x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.164212s |  2.27% |  6.78% )   ( 1.102183s |  0.09% |  6.79% )    	(33x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.870299s |  3.65% | 10.89% )   ( 1.788115s |  0.15% | 11.02% )    	(33x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.655906s |  3.23% |  9.64% )   ( 1.575025s |  0.13% |  9.71% )    	(33x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.802879s |  3.52% | 10.50% )   ( 1.750836s |  0.15% | 10.79% )    	(33x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.628858s |  3.18% |  9.48% )   ( 1.493086s |  0.13% |  9.20% )    	(33x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.112898s |  2.17% |  6.48% )   ( 1.027789s |  0.09% |  6.33% )    	(33x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.698001s |  1.36% |  4.06% )   ( 0.609167s |  0.05% |  3.75% )    	(33x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.133131s |  2.21% |  6.60% )   ( 1.034743s |  0.09% |  6.37% )    	(33x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.589365s |  1.15% |  3.43% )   ( 0.539769s |  0.04% |  3.32% )    	(33x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.494697s |  2.92% |  8.70% )   ( 1.373042s |  0.12% |  8.46% )    	(33x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.739464s |  5.35% | 15.95% )   ( 2.696880s |  0.23% | 16.62% )    	(33x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.631880s |  1.23% |  3.68% )   ( 0.621720s |  0.05% |  3.83% )    	(33x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.642181s |  1.25% |  3.74% )   ( 0.600914s |  0.05% |  3.70% )    	(33x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004894s |  0.00% |  0.00% )   ( 0.005526s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004527s |  0.00% |  0.00% )   ( 0.005150s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005075s |  0.00% |  0.00% )   ( 0.005704s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006940s |  0.01% |  0.03% )   ( 0.006997s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 0.011864s |  0.02% |  0.04% )   ( 0.011802s |  0.00% |  0.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000589s |  0.00% |  0.00% )   ( 0.000604s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 19.438741s | 38.02% | 99.99% )   ( 18.613093s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000344s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p2
30.5.0:         ( 0.023777s |  0.04% |  0.12% )   ( 0.023731s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023870s |  0.04% |  0.12% )   ( 0.023826s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023959s |  0.04% |  0.12% )   ( 0.023912s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024196s |  0.04% |  0.12% )   ( 0.024150s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.024160s |  0.04% |  0.12% )   ( 0.024108s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003707s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004067s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p2
41.5.0:         ( 0.183100s |  0.35% |  0.04% )   ( 0.005176s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003398s |  0.00% |  0.00% )   ( 0.003820s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003752s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003756s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003528s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027734s |  0.05% |  0.00% )   ( 0.028139s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006622s |  0.01% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p2
54.5.0:         ( 0.003334s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003177s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 19.049891s | 37.26% |  4.45% )   ( 18.398547s |  1.62% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003110s |  0.00% |  0.01% )   ( 0.003552s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.153426s |  2.25% |  6.44% )   ( 1.123802s |  0.09% |  6.49% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.147795s |  4.20% | 12.00% )   ( 2.078122s |  0.18% | 12.00% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.720677s |  3.36% |  9.61% )   ( 1.682955s |  0.14% |  9.72% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.174192s |  4.25% | 12.15% )   ( 2.087623s |  0.18% | 12.06% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.793179s |  3.50% | 10.02% )   ( 1.616455s |  0.14% |  9.33% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.059865s |  2.07% |  5.92% )   ( 1.034446s |  0.09% |  5.97% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.477537s |  0.93% |  2.66% )   ( 0.468151s |  0.04% |  2.70% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.132929s |  2.21% |  6.33% )   ( 1.126644s |  0.09% |  6.50% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.410166s |  0.80% |  2.29% )   ( 0.398247s |  0.03% |  2.30% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.466581s |  2.86% |  8.19% )   ( 1.429455s |  0.12% |  8.25% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.422463s |  6.69% | 19.12% )   ( 3.378493s |  0.29% | 19.52% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.484802s |  0.94% |  2.70% )   ( 0.452750s |  0.03% |  2.61% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.445843s |  0.87% |  2.49% )   ( 0.426514s |  0.03% |  2.46% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003121s |  0.00% |  0.00% )   ( 0.003532s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002907s |  0.00% |  0.00% )   ( 0.003298s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003342s |  0.00% |  0.00% )   ( 0.003760s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005016s |  0.00% |  0.02% )   ( 0.005120s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 0.011805s |  0.02% |  0.04% )   ( 0.011742s |  0.00% |  0.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000602s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 19.997335s | 39.12% | 99.99% )   ( 19.318175s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000334s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000337s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p3
30.5.0:         ( 0.023711s |  0.04% |  0.11% )   ( 0.023663s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023793s |  0.04% |  0.11% )   ( 0.023752s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.024018s |  0.04% |  0.12% )   ( 0.023971s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024007s |  0.04% |  0.12% )   ( 0.023961s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023898s |  0.04% |  0.11% )   ( 0.023845s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004054s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003223s |  0.00% |  0.00% )   ( 0.003654s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p3
41.5.0:         ( 0.103333s |  0.20% |  0.02% )   ( 0.004761s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003389s |  0.00% |  0.00% )   ( 0.003838s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003299s |  0.00% |  0.00% )   ( 0.003721s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003465s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003055s |  0.00% |  0.00% )   ( 0.003457s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024283s |  0.04% |  0.00% )   ( 0.024619s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003158s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003621s |  0.00% |  0.00% )   ( 0.004039s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p3
54.5.0:         ( 0.002978s |  0.00% |  0.00% )   ( 0.003408s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002907s |  0.00% |  0.00% )   ( 0.003324s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.694472s | 38.52% |  4.68% )   ( 19.110680s |  1.68% |  4.71% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002982s |  0.00% |  0.01% )   ( 0.003411s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.266094s |  2.47% |  6.80% )   ( 1.191924s |  0.10% |  6.59% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.234814s |  4.37% | 12.01% )   ( 2.174355s |  0.19% | 12.03% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.799192s |  3.51% |  9.67% )   ( 1.769802s |  0.15% |  9.79% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.281409s |  4.46% | 12.26% )   ( 2.208455s |  0.19% | 12.22% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.717605s |  3.36% |  9.23% )   ( 1.651084s |  0.14% |  9.13% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.153727s |  2.25% |  6.20% )   ( 1.095665s |  0.09% |  6.06% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.470954s |  0.92% |  2.53% )   ( 0.461891s |  0.04% |  2.55% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.159639s |  2.26% |  6.23% )   ( 1.145771s |  0.10% |  6.34% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.405635s |  0.79% |  2.18% )   ( 0.401573s |  0.03% |  2.22% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.475781s |  2.88% |  7.93% )   ( 1.454701s |  0.12% |  8.05% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.684891s |  7.20% | 19.81% )   ( 3.618635s |  0.31% | 20.02% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.462109s |  0.90% |  2.48% )   ( 0.459686s |  0.04% |  2.54% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.481799s |  0.94% |  2.59% )   ( 0.431085s |  0.03% |  2.38% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003044s |  0.00% |  0.00% )   ( 0.003461s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002779s |  0.00% |  0.00% )   ( 0.003155s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006233s |  0.01% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006379s |  0.01% |  0.03% )   ( 0.006431s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 0.011942s |  0.02% |  0.04% )   ( 0.011877s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000597s |  0.00% |  0.00% )   ( 0.000614s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 19.018363s | 37.20% | 99.99% )   ( 18.175741s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000322s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p4
30.5.0:         ( 0.023660s |  0.04% |  0.12% )   ( 0.023618s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023923s |  0.04% |  0.12% )   ( 0.023880s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023997s |  0.04% |  0.12% )   ( 0.023951s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.023966s |  0.04% |  0.12% )   ( 0.023919s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023888s |  0.04% |  0.12% )   ( 0.023838s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004637s |  0.00% |  0.00% )   ( 0.005177s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007957s |  0.01% |  0.00% )   ( 0.005527s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p4
41.5.0:         ( 0.188761s |  0.36% |  0.03% )   ( 0.006170s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004105s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036608s |  0.07% |  0.00% )   ( 0.033055s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004489s |  0.00% |  0.00% )   ( 0.005054s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004859s |  0.00% |  0.00% )   ( 0.005404s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p4
54.5.0:         ( 0.003884s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.599854s | 36.38% |  3.62% )   ( 17.939758s |  1.58% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003962s |  0.00% |  0.02% )   ( 0.004513s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116653s |  2.18% |  6.51% )   ( 1.103637s |  0.09% |  6.65% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.915652s |  3.74% | 11.17% )   ( 1.886771s |  0.16% | 11.37% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.642689s |  3.21% |  9.58% )   ( 1.580152s |  0.13% |  9.52% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.938580s |  3.79% | 11.30% )   ( 1.884706s |  0.16% | 11.36% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.659210s |  3.24% |  9.67% )   ( 1.554733s |  0.13% |  9.37% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.996546s |  1.94% |  5.81% )   ( 0.987102s |  0.08% |  5.95% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555196s |  1.08% |  3.23% )   ( 0.547031s |  0.04% |  3.29% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.097256s |  2.14% |  6.40% )   ( 1.053033s |  0.09% |  6.35% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513952s |  1.00% |  2.99% )   ( 0.477682s |  0.04% |  2.88% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.486535s |  2.90% |  8.67% )   ( 1.395962s |  0.12% |  8.41% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.091359s |  6.04% | 18.03% )   ( 3.051887s |  0.26% | 18.40% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.583061s |  1.14% |  3.40% )   ( 0.532157s |  0.04% |  3.20% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.540544s |  1.05% |  3.15% )   ( 0.523790s |  0.04% |  3.15% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003860s |  0.00% |  0.00% )   ( 0.004399s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005470s |  0.01% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008914s |  0.01% |  0.04% )   ( 0.008997s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 0.011986s |  0.02% |  0.04% )   ( 0.011921s |  0.00% |  0.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000612s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 21.757386s | 42.56% | 99.99% )   ( 20.930666s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000320s |  0.00% |  0.00% )   ( 0.000363s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p5
30.5.0:         ( 0.023812s |  0.04% |  0.10% )   ( 0.023772s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023990s |  0.04% |  0.11% )   ( 0.023951s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023988s |  0.04% |  0.11% )   ( 0.023943s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.023992s |  0.04% |  0.11% )   ( 0.023948s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023878s |  0.04% |  0.10% )   ( 0.023832s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p5
41.5.0:         ( 0.169067s |  0.33% |  0.03% )   ( 0.005104s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003802s |  0.00% |  0.00% )   ( 0.004271s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003682s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003332s |  0.00% |  0.00% )   ( 0.003780s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026748s |  0.05% |  0.00% )   ( 0.027120s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003367s |  0.00% |  0.00% )   ( 0.003789s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003927s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p5
54.5.0:         ( 0.003225s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003166s |  0.00% |  0.00% )   ( 0.003611s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 21.384942s | 41.83% |  4.46% )   ( 20.715502s |  1.82% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003104s |  0.00% |  0.01% )   ( 0.003546s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.426826s |  2.79% |  7.06% )   ( 1.393756s |  0.12% |  7.11% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.672153s |  5.22% | 13.23% )   ( 2.610759s |  0.23% | 13.32% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.073554s |  4.05% | 10.26% )   ( 2.058354s |  0.18% | 10.50% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.714645s |  5.31% | 13.44% )   ( 2.592530s |  0.22% | 13.23% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.101970s |  4.11% | 10.40% )   ( 2.002931s |  0.17% | 10.22% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.307829s |  2.55% |  6.47% )   ( 1.243887s |  0.10% |  6.35% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542990s |  1.06% |  2.68% )   ( 0.509432s |  0.04% |  2.60% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.258535s |  2.46% |  6.23% )   ( 1.240393s |  0.10% |  6.33% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.441988s |  0.86% |  2.18% )   ( 0.426817s |  0.03% |  2.17% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.425849s |  2.78% |  7.06% )   ( 1.382216s |  0.12% |  7.05% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.222416s |  6.30% | 15.95% )   ( 3.163655s |  0.27% | 16.15% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.501117s |  0.98% |  2.48% )   ( 0.493234s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.499954s |  0.97% |  2.47% )   ( 0.465954s |  0.04% |  2.37% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003805s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003243s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003935s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006433s |  0.01% |  0.02% )   ( 0.006483s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 0.012166s |  0.02% |  0.04% )   ( 0.012130s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000565s |  0.00% |  0.00% )   ( 0.000588s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 19.085192s | 37.33% | 99.99% )   ( 18.208701s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000319s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p6
30.5.0:         ( 0.023918s |  0.04% |  0.12% )   ( 0.023872s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024009s |  0.04% |  0.12% )   ( 0.023963s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.024281s |  0.04% |  0.12% )   ( 0.023957s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.023877s |  0.04% |  0.12% )   ( 0.023831s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023929s |  0.04% |  0.12% )   ( 0.023882s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004689s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005194s |  0.01% |  0.00% )   ( 0.005765s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p6
41.5.0:         ( 0.164709s |  0.32% |  0.03% )   ( 0.006165s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003886s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035909s |  0.07% |  0.00% )   ( 0.033360s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007274s |  0.01% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004841s |  0.00% |  0.00% )   ( 0.005381s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p6
54.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.691959s | 36.56% |  3.62% )   ( 17.972297s |  1.58% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004044s |  0.00% |  0.02% )   ( 0.004588s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.149747s |  2.24% |  6.65% )   ( 1.097271s |  0.09% |  6.60% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.920766s |  3.75% | 11.12% )   ( 1.886309s |  0.16% | 11.36% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.649066s |  3.22% |  9.54% )   ( 1.595289s |  0.14% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.920319s |  3.75% | 11.11% )   ( 1.881622s |  0.16% | 11.33% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.571545s |  3.07% |  9.09% )   ( 1.548497s |  0.13% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022274s |  1.99% |  5.91% )   ( 1.007736s |  0.08% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568445s |  1.11% |  3.29% )   ( 0.550597s |  0.04% |  3.31% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.192963s |  2.33% |  6.90% )   ( 1.064852s |  0.09% |  6.41% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.585377s |  1.14% |  3.38% )   ( 0.491391s |  0.04% |  2.95% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.484255s |  2.90% |  8.59% )   ( 1.382611s |  0.12% |  8.32% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.078411s |  6.02% | 17.82% )   ( 3.015473s |  0.26% | 18.16% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552002s |  1.07% |  3.19% )   ( 0.542066s |  0.04% |  3.26% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.572961s |  1.12% |  3.31% )   ( 0.535615s |  0.04% |  3.22% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008857s |  0.01% |  0.04% )   ( 0.008931s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 0.012179s |  0.02% |  0.04% )   ( 0.012150s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 19.562625s | 38.26% | 99.99% )   ( 18.884419s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p7
30.5.0:         ( 0.024004s |  0.04% |  0.12% )   ( 0.023960s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024036s |  0.04% |  0.12% )   ( 0.023992s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.024010s |  0.04% |  0.12% )   ( 0.023959s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024001s |  0.04% |  0.12% )   ( 0.023957s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.024014s |  0.04% |  0.12% )   ( 0.023961s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003372s |  0.00% |  0.00% )   ( 0.003836s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004598s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p7
41.5.0:         ( 0.168464s |  0.32% |  0.03% )   ( 0.005168s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003356s |  0.00% |  0.00% )   ( 0.003802s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003581s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003349s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027506s |  0.05% |  0.00% )   ( 0.027891s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006414s |  0.01% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p7
54.5.0:         ( 0.003170s |  0.00% |  0.00% )   ( 0.003608s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003160s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.189199s | 37.53% |  4.26% )   ( 18.670717s |  1.64% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003238s |  0.00% |  0.01% )   ( 0.003690s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.196641s |  2.34% |  6.65% )   ( 1.172466s |  0.10% |  6.68% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.200817s |  4.30% | 12.24% )   ( 2.107508s |  0.18% | 12.02% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.696155s |  3.31% |  9.43% )   ( 1.685782s |  0.14% |  9.61% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.118049s |  4.14% | 11.78% )   ( 2.093061s |  0.18% | 11.94% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.682853s |  3.29% |  9.36% )   ( 1.614894s |  0.14% |  9.21% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051867s |  2.05% |  5.85% )   ( 1.041749s |  0.09% |  5.94% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.498671s |  0.97% |  2.77% )   ( 0.494875s |  0.04% |  2.82% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.123818s |  2.19% |  6.25% )   ( 1.110729s |  0.09% |  6.33% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456262s |  0.89% |  2.53% )   ( 0.435851s |  0.03% |  2.48% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.528859s |  2.99% |  8.50% )   ( 1.443794s |  0.12% |  8.23% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.408137s |  6.66% | 18.96% )   ( 3.367583s |  0.29% | 19.21% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518674s |  1.01% |  2.88% )   ( 0.490688s |  0.04% |  2.79% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.490044s |  0.95% |  2.72% )   ( 0.465034s |  0.04% |  2.65% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003280s |  0.00% |  0.00% )   ( 0.003730s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003060s |  0.00% |  0.00% )   ( 0.003479s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003322s |  0.00% |  0.00% )   ( 0.003738s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004909s |  0.00% |  0.02% )   ( 0.004979s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 0.012195s |  0.02% |  0.04% )   ( 0.012168s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.086350s | 37.33% | 99.99% )   ( 18.176803s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p8
30.5.0:         ( 0.023921s |  0.04% |  0.12% )   ( 0.023875s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023975s |  0.04% |  0.12% )   ( 0.023927s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023997s |  0.04% |  0.12% )   ( 0.023945s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024000s |  0.04% |  0.12% )   ( 0.023955s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.024022s |  0.04% |  0.12% )   ( 0.023968s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004353s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003482s |  0.00% |  0.00% )   ( 0.003958s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004461s |  0.00% |  0.00% )   ( 0.004959s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p8
41.5.0:         ( 0.188341s |  0.36% |  0.03% )   ( 0.005670s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003583s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031540s |  0.06% |  0.00% )   ( 0.029037s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003733s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p8
54.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003908s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003318s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.685017s | 36.55% |  4.07% )   ( 17.954149s |  1.58% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003526s |  0.00% |  0.02% )   ( 0.004002s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123760s |  2.19% |  6.44% )   ( 1.101278s |  0.09% |  6.57% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.972739s |  3.85% | 11.31% )   ( 1.936960s |  0.17% | 11.56% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.662580s |  3.25% |  9.53% )   ( 1.611117s |  0.14% |  9.61% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.061150s |  4.03% | 11.81% )   ( 1.944738s |  0.17% | 11.61% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.612823s |  3.15% |  9.24% )   ( 1.580499s |  0.13% |  9.43% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.074169s |  2.10% |  6.15% )   ( 1.005910s |  0.08% |  6.00% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.528778s |  1.03% |  3.03% )   ( 0.507052s |  0.04% |  3.02% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.136746s |  2.22% |  6.51% )   ( 1.072444s |  0.09% |  6.40% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.525505s |  1.02% |  3.01% )   ( 0.441818s |  0.03% |  2.63% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472444s |  2.88% |  8.44% )   ( 1.392749s |  0.12% |  8.31% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.205510s |  6.27% | 18.37% )   ( 3.169458s |  0.27% | 18.92% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.556192s |  1.08% |  3.18% )   ( 0.500205s |  0.04% |  2.98% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.505154s |  0.98% |  2.89% )   ( 0.482009s |  0.04% |  2.87% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003445s |  0.00% |  0.00% )   ( 0.003915s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003293s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003605s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009037s |  0.01% |  0.04% )   ( 0.009123s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 0.012221s |  0.02% |  0.04% )   ( 0.012192s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000617s |  0.00% |  0.00% )   ( 0.000634s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.089532s | 37.34% | 99.99% )   ( 18.163071s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p9
30.5.0:         ( 0.023970s |  0.04% |  0.12% )   ( 0.023922s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024255s |  0.04% |  0.12% )   ( 0.024201s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.024126s |  0.04% |  0.12% )   ( 0.024070s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024368s |  0.04% |  0.12% )   ( 0.024308s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.024106s |  0.04% |  0.12% )   ( 0.024052s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p9
41.5.0:         ( 0.135325s |  0.26% |  0.02% )   ( 0.005150s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003683s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003461s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003254s |  0.00% |  0.00% )   ( 0.003694s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027421s |  0.05% |  0.00% )   ( 0.027832s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003792s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p9
54.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003319s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.745642s | 36.67% |  4.26% )   ( 17.942810s |  1.58% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003557s |  0.00% |  0.02% )   ( 0.004040s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.101477s |  2.15% |  6.29% )   ( 1.085604s |  0.09% |  6.46% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.053677s |  4.01% | 11.73% )   ( 1.972848s |  0.17% | 11.74% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.717692s |  3.36% |  9.81% )   ( 1.604131s |  0.14% |  9.54% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.039828s |  3.99% | 11.66% )   ( 1.972136s |  0.17% | 11.74% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.568997s |  3.06% |  8.96% )   ( 1.560450s |  0.13% |  9.28% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.058987s |  2.07% |  6.05% )   ( 1.020203s |  0.08% |  6.07% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.542289s |  1.06% |  3.09% )   ( 0.496375s |  0.04% |  2.95% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.130727s |  2.21% |  6.46% )   ( 1.061422s |  0.09% |  6.31% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.446440s |  0.87% |  2.55% )   ( 0.419248s |  0.03% |  2.49% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472940s |  2.88% |  8.41% )   ( 1.380062s |  0.12% |  8.21% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.369678s |  6.59% | 19.26% )   ( 3.279823s |  0.28% | 19.52% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.486496s |  0.95% |  2.78% )   ( 0.476613s |  0.04% |  2.83% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.500730s |  0.97% |  2.86% )   ( 0.464902s |  0.04% |  2.76% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003381s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003199s |  0.00% |  0.00% )   ( 0.003636s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008398s |  0.01% |  0.04% )   ( 0.008462s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 0.012327s |  0.02% |  0.04% )   ( 0.012263s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000623s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.347304s | 37.84% | 99.99% )   ( 19.060181s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p10
30.5.0:         ( 0.024178s |  0.04% |  0.12% )   ( 0.024096s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023991s |  0.04% |  0.12% )   ( 0.023941s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.023915s |  0.04% |  0.12% )   ( 0.023857s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.024065s |  0.04% |  0.12% )   ( 0.024015s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.023827s |  0.04% |  0.12% )   ( 0.023777s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001633s |  0.00% |  0.00% )   ( 0.001842s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   true
38.5.0:         ( 0.001411s |  0.00% |  0.00% )   ( 0.001597s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001772s |  0.00% |  0.00% )   ( 0.001960s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p10
41.5.0:         ( 0.073600s |  0.14% |  0.03% )   ( 0.002187s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001593s |  0.00% |  0.00% )   ( 0.001810s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.001409s |  0.00% |  0.00% )   ( 0.001593s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.001348s |  0.00% |  0.00% )   ( 0.001543s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001383s |  0.00% |  0.00% )   ( 0.001570s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.010816s |  0.02% |  0.00% )   ( 0.010979s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001378s |  0.00% |  0.00% )   ( 0.001563s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001712s |  0.00% |  0.00% )   ( 0.001912s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p10
54.5.0:         ( 0.001362s |  0.00% |  0.00% )   ( 0.001550s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001341s |  0.00% |  0.00% )   ( 0.001538s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.110684s | 37.38% |  9.87% )   ( 18.892195s |  1.66% |  9.91% )    	(10x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001351s |  0.00% |  0.00% )   ( 0.001544s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.185104s |  2.31% |  6.36% )   ( 1.154897s |  0.10% |  6.27% )    	(10x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.418217s |  4.73% | 12.98% )   ( 2.401699s |  0.21% | 13.04% )    	(10x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.785563s |  3.49% |  9.58% )   ( 1.756543s |  0.15% |  9.53% )    	(10x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.394870s |  4.68% | 12.86% )   ( 2.384472s |  0.21% | 12.94% )    	(10x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.743508s |  3.41% |  9.36% )   ( 1.732242s |  0.15% |  9.40% )    	(10x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023526s |  2.00% |  5.49% )   ( 1.019948s |  0.08% |  5.53% )    	(10x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.348670s |  0.68% |  1.87% )   ( 0.328103s |  0.02% |  1.78% )    	(10x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.218120s |  2.38% |  6.54% )   ( 1.193898s |  0.10% |  6.48% )    	(10x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.260307s |  0.50% |  1.39% )   ( 0.251060s |  0.02% |  1.36% )    	(10x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472870s |  2.88% |  7.90% )   ( 1.461964s |  0.12% |  7.93% )    	(10x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.206986s |  8.23% | 22.59% )   ( 4.181281s |  0.36% | 22.70% )    	(10x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.299249s |  0.58% |  1.60% )   ( 0.296210s |  0.02% |  1.60% )    	(10x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.262935s |  0.51% |  1.41% )   ( 0.251826s |  0.02% |  1.36% )    	(10x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001370s |  0.00% |  0.00% )   ( 0.001562s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001302s |  0.00% |  0.00% )   ( 0.001484s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001487s |  0.00% |  0.00% )   ( 0.001668s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000236s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.010587s |  0.02% |  0.05% )   ( 0.010650s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 0.012414s |  0.02% |  0.04% )   ( 0.012343s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000696s |  0.00% |  0.00% )   ( 0.000674s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 21.734011s | 42.51% | 99.99% )   ( 20.886688s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p11
30.5.0:         ( 0.041868s |  0.08% |  0.19% )   ( 0.041691s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038279s |  0.07% |  0.17% )   ( 0.038140s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.024095s |  0.04% |  0.11% )   ( 0.024042s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.026628s |  0.05% |  0.12% )   ( 0.026547s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.024047s |  0.04% |  0.11% )   ( 0.023996s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004706s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004935s |  0.00% |  0.00% )   ( 0.005510s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p11
41.5.0:         ( 0.170794s |  0.33% |  0.02% )   ( 0.006282s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004137s |  0.00% |  0.00% )   ( 0.004705s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003839s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004031s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035189s |  0.06% |  0.00% )   ( 0.033061s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007256s |  0.01% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004675s |  0.00% |  0.00% )   ( 0.005211s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p11
54.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 21.305026s | 41.67% |  3.63% )   ( 20.620084s |  1.81% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003922s |  0.00% |  0.01% )   ( 0.004471s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.447989s |  2.83% |  7.29% )   ( 1.395926s |  0.12% |  7.24% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.295274s |  4.49% | 11.56% )   ( 2.242750s |  0.19% | 11.64% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.791355s |  3.50% |  9.02% )   ( 1.785039s |  0.15% |  9.27% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.259045s |  4.41% | 11.38% )   ( 2.198553s |  0.19% | 11.41% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.782201s |  3.48% |  8.97% )   ( 1.755466s |  0.15% |  9.11% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.265568s |  2.47% |  6.37% )   ( 1.220888s |  0.10% |  6.34% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.594955s |  1.16% |  2.99% )   ( 0.569884s |  0.05% |  2.95% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.339048s |  2.61% |  6.74% )   ( 1.272611s |  0.11% |  6.60% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.567407s |  1.11% |  2.85% )   ( 0.498355s |  0.04% |  2.58% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.708738s |  3.34% |  8.60% )   ( 1.600718s |  0.14% |  8.31% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.652593s |  7.14% | 18.40% )   ( 3.600127s |  0.31% | 18.69% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.577039s |  1.12% |  2.90% )   ( 0.569099s |  0.05% |  2.95% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.565781s |  1.10% |  2.85% )   ( 0.540433s |  0.04% |  2.80% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003768s |  0.00% |  0.00% )   ( 0.004286s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004195s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005066s |  0.00% |  0.02% )   ( 0.005149s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 0.012390s |  0.02% |  0.04% )   ( 0.012322s |  0.00% |  0.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000668s |  0.00% |  0.00% )   ( 0.000685s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 22.227818s | 43.48% | 99.99% )   ( 21.259178s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000105s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p12
30.5.0:         ( 0.033024s |  0.06% |  0.14% )   ( 0.032898s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041499s |  0.08% |  0.18% )   ( 0.041361s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.037820s |  0.07% |  0.17% )   ( 0.037688s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.029648s |  0.05% |  0.13% )   ( 0.029550s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.026941s |  0.05% |  0.12% )   ( 0.026859s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005455s |  0.01% |  0.00% )   ( 0.006102s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004781s |  0.00% |  0.00% )   ( 0.005397s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005845s |  0.01% |  0.00% )   ( 0.006498s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p12
41.5.0:         ( 0.181416s |  0.35% |  0.02% )   ( 0.007053s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005208s |  0.01% |  0.00% )   ( 0.005857s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004991s |  0.00% |  0.00% )   ( 0.005571s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005215s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005046s |  0.00% |  0.00% )   ( 0.005494s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037543s |  0.07% |  0.00% )   ( 0.038082s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006876s |  0.01% |  0.00% )   ( 0.005737s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005631s |  0.01% |  0.00% )   ( 0.006255s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p12
54.5.0:         ( 0.004554s |  0.00% |  0.00% )   ( 0.005190s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005282s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 21.761633s | 42.57% |  3.15% )   ( 20.960449s |  1.84% |  3.18% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004378s |  0.00% |  0.02% )   ( 0.004983s |  0.00% |  0.02% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.444432s |  2.82% |  7.18% )   ( 1.402370s |  0.12% |  7.23% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.264556s |  4.43% | 11.26% )   ( 2.185388s |  0.19% | 11.27% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.873023s |  3.66% |  9.32% )   ( 1.827131s |  0.16% |  9.42% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.243000s |  4.38% | 11.16% )   ( 2.147478s |  0.18% | 11.07% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.869044s |  3.65% |  9.30% )   ( 1.751286s |  0.15% |  9.03% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.327808s |  2.59% |  6.60% )   ( 1.269964s |  0.11% |  6.55% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.690809s |  1.35% |  3.43% )   ( 0.630395s |  0.05% |  3.25% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.367318s |  2.67% |  6.80% )   ( 1.284979s |  0.11% |  6.62% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.574781s |  1.12% |  2.86% )   ( 0.555986s |  0.04% |  2.86% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.621452s |  3.17% |  8.06% )   ( 1.595471s |  0.14% |  8.23% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.521144s |  6.88% | 17.52% )   ( 3.487757s |  0.30% | 17.99% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.644769s |  1.26% |  3.20% )   ( 0.628337s |  0.05% |  3.24% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.647174s |  1.26% |  3.22% )   ( 0.613343s |  0.05% |  3.16% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004736s |  0.00% |  0.00% )   ( 0.005366s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004601s |  0.00% |  0.00% )   ( 0.005189s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005072s |  0.00% |  0.00% )   ( 0.005675s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005350s |  0.01% |  0.02% )   ( 0.005416s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 0.022415s |  0.04% |  0.07% )   ( 0.022246s |  0.00% |  0.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000877s |  0.00% |  0.00% )   ( 0.000903s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.906078s | 36.98% | 99.99% )   ( 18.071217s |  1.59% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p13
30.5.0:         ( 0.046132s |  0.09% |  0.24% )   ( 0.045982s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046350s |  0.09% |  0.24% )   ( 0.046185s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.046126s |  0.09% |  0.24% )   ( 0.045969s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.046187s |  0.09% |  0.24% )   ( 0.046026s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.046419s |  0.09% |  0.24% )   ( 0.046252s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004322s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004990s |  0.00% |  0.00% )   ( 0.005535s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p13
41.5.0:         ( 0.156874s |  0.30% |  0.03% )   ( 0.006069s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004771s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003971s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003823s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004191s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034040s |  0.06% |  0.00% )   ( 0.034436s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004464s |  0.00% |  0.00% )   ( 0.005019s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004898s |  0.00% |  0.00% )   ( 0.005429s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p13
54.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003968s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.415071s | 36.02% |  3.74% )   ( 17.723746s |  1.56% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003695s |  0.00% |  0.02% )   ( 0.004218s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.130940s |  2.21% |  6.64% )   ( 1.095081s |  0.09% |  6.67% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.006552s |  3.92% | 11.78% )   ( 1.898482s |  0.16% | 11.56% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.615749s |  3.16% |  9.48% )   ( 1.560206s |  0.13% |  9.50% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.942978s |  3.80% | 11.41% )   ( 1.877534s |  0.16% | 11.43% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.545871s |  3.02% |  9.07% )   ( 1.525358s |  0.13% |  9.29% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.024090s |  2.00% |  6.01% )   ( 0.983396s |  0.08% |  5.98% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.569160s |  1.11% |  3.34% )   ( 0.538735s |  0.04% |  3.28% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.094756s |  2.14% |  6.42% )   ( 1.045201s |  0.09% |  6.36% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.502140s |  0.98% |  2.94% )   ( 0.469996s |  0.04% |  2.86% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417371s |  2.77% |  8.32% )   ( 1.369455s |  0.12% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.096524s |  6.05% | 18.18% )   ( 3.007910s |  0.26% | 18.32% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.548041s |  1.07% |  3.21% )   ( 0.529241s |  0.04% |  3.22% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.528672s |  1.03% |  3.10% )   ( 0.512851s |  0.04% |  3.12% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003772s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008827s |  0.01% |  0.04% )   ( 0.008886s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000182s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 0.023210s |  0.04% |  0.07% )   ( 0.023079s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001010s |  0.00% |  0.00% )   ( 0.001029s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.318748s | 37.79% | 99.99% )   ( 18.775965s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000105s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p14
30.5.0:         ( 0.028012s |  0.05% |  0.14% )   ( 0.027920s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024250s |  0.04% |  0.12% )   ( 0.024191s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.027069s |  0.05% |  0.14% )   ( 0.026983s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.027055s |  0.05% |  0.14% )   ( 0.026974s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.027187s |  0.05% |  0.14% )   ( 0.027108s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002530s |  0.00% |  0.00% )   ( 0.002830s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002328s |  0.00% |  0.00% )   ( 0.002643s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002827s |  0.00% |  0.00% )   ( 0.003144s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p14
41.5.0:         ( 0.053138s |  0.10% |  0.01% )   ( 0.003226s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002285s |  0.00% |  0.00% )   ( 0.002569s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.002278s |  0.00% |  0.00% )   ( 0.002581s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.002099s |  0.00% |  0.00% )   ( 0.002389s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002269s |  0.00% |  0.00% )   ( 0.002564s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.015007s |  0.02% |  0.00% )   ( 0.015249s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003345s |  0.00% |  0.00% )   ( 0.002639s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002666s |  0.00% |  0.00% )   ( 0.002985s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p14
54.5.0:         ( 0.002067s |  0.00% |  0.00% )   ( 0.002336s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002226s |  0.00% |  0.00% )   ( 0.002531s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.077574s | 37.32% |  6.58% )   ( 18.581491s |  1.63% |  6.59% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002050s |  0.00% |  0.01% )   ( 0.002328s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171472s |  2.29% |  6.40% )   ( 1.140915s |  0.10% |  6.39% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.235118s |  4.37% | 12.21% )   ( 2.211397s |  0.19% | 12.39% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.745145s |  3.41% |  9.53% )   ( 1.673092s |  0.14% |  9.37% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.279093s |  4.45% | 12.45% )   ( 2.248287s |  0.19% | 12.60% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.713582s |  3.35% |  9.36% )   ( 1.677870s |  0.14% |  9.40% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.133064s |  2.21% |  6.19% )   ( 1.042010s |  0.09% |  5.84% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.401806s |  0.78% |  2.19% )   ( 0.380999s |  0.03% |  2.13% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.162413s |  2.27% |  6.35% )   ( 1.132328s |  0.09% |  6.34% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.358695s |  0.70% |  1.96% )   ( 0.318357s |  0.02% |  1.78% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.464892s |  2.86% |  8.00% )   ( 1.429479s |  0.12% |  8.01% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.912932s |  7.65% | 21.38% )   ( 3.891138s |  0.34% | 21.81% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.386551s |  0.75% |  2.11% )   ( 0.365444s |  0.03% |  2.04% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.330276s |  0.64% |  1.80% )   ( 0.326510s |  0.02% |  1.83% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002214s |  0.00% |  0.00% )   ( 0.002529s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002042s |  0.00% |  0.00% )   ( 0.002317s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002331s |  0.00% |  0.00% )   ( 0.002615s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004935s |  0.00% |  0.02% )   ( 0.005005s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 0.023172s |  0.04% |  0.07% )   ( 0.023048s |  0.00% |  0.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001023s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 21.085944s | 41.24% | 99.99% )   ( 20.115561s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p15
30.5.0:         ( 0.046197s |  0.09% |  0.21% )   ( 0.046033s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045923s |  0.08% |  0.21% )   ( 0.045762s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.046160s |  0.09% |  0.21% )   ( 0.045991s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.046173s |  0.09% |  0.21% )   ( 0.045995s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.046123s |  0.09% |  0.21% )   ( 0.045951s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.007324s |  0.01% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004640s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p15
41.5.0:         ( 0.208066s |  0.40% |  0.03% )   ( 0.006073s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003635s |  0.00% |  0.00% )   ( 0.004117s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035696s |  0.06% |  0.00% )   ( 0.030056s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003922s |  0.00% |  0.00% )   ( 0.004424s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004394s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p15
54.5.0:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004112s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003382s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.547035s | 40.19% |  4.06% )   ( 19.781423s |  1.74% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003566s |  0.00% |  0.01% )   ( 0.004046s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.378896s |  2.69% |  7.17% )   ( 1.315375s |  0.11% |  7.09% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.482292s |  4.85% | 12.92% )   ( 2.433674s |  0.21% | 13.12% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.970907s |  3.85% | 10.26% )   ( 1.945039s |  0.17% | 10.48% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.525389s |  4.94% | 13.14% )   ( 2.442207s |  0.21% | 13.16% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.952178s |  3.81% | 10.16% )   ( 1.869289s |  0.16% | 10.07% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.212687s |  2.37% |  6.31% )   ( 1.201465s |  0.10% |  6.47% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.516861s |  1.01% |  2.69% )   ( 0.511453s |  0.04% |  2.75% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.290908s |  2.52% |  6.72% )   ( 1.219083s |  0.10% |  6.57% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.461567s |  0.90% |  2.40% )   ( 0.434750s |  0.03% |  2.34% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379777s |  2.69% |  7.18% )   ( 1.324064s |  0.11% |  7.13% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.966730s |  5.80% | 15.44% )   ( 2.868135s |  0.25% | 15.46% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.504664s |  0.98% |  2.62% )   ( 0.496730s |  0.04% |  2.67% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.560249s |  1.09% |  2.91% )   ( 0.482056s |  0.04% |  2.59% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003780s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003295s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005106s |  0.00% |  0.02% )   ( 0.005175s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 0.023325s |  0.04% |  0.07% )   ( 0.023194s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000993s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 20.512936s | 40.12% | 99.99% )   ( 20.048930s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p16
30.5.0:         ( 0.045674s |  0.08% |  0.22% )   ( 0.045512s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027244s |  0.05% |  0.13% )   ( 0.027165s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.026977s |  0.05% |  0.13% )   ( 0.026905s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.029841s |  0.05% |  0.14% )   ( 0.029740s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.035188s |  0.06% |  0.17% )   ( 0.035065s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002434s |  0.00% |  0.00% )   ( 0.002722s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.002157s |  0.00% |  0.00% )   ( 0.002429s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002780s |  0.00% |  0.00% )   ( 0.003096s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p16
41.5.0:         ( 0.095462s |  0.18% |  0.03% )   ( 0.003146s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002338s |  0.00% |  0.00% )   ( 0.002626s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.002068s |  0.00% |  0.00% )   ( 0.002325s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.001972s |  0.00% |  0.00% )   ( 0.002248s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002277s |  0.00% |  0.00% )   ( 0.002578s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.016908s |  0.03% |  0.00% )   ( 0.017145s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002436s |  0.00% |  0.00% )   ( 0.002740s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002527s |  0.00% |  0.00% )   ( 0.002826s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p16
54.5.0:         ( 0.002156s |  0.00% |  0.00% )   ( 0.002440s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002038s |  0.00% |  0.00% )   ( 0.002327s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.198067s | 39.51% |  7.03% )   ( 19.822483s |  1.74% |  7.06% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001955s |  0.00% |  0.01% )   ( 0.002238s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.358907s |  2.65% |  6.96% )   ( 1.302534s |  0.11% |  6.80% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.621986s |  5.12% | 13.44% )   ( 2.555026s |  0.22% | 13.35% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.961128s |  3.83% | 10.05% )   ( 1.905529s |  0.16% |  9.95% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.603659s |  5.09% | 13.35% )   ( 2.576924s |  0.22% | 13.46% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.956837s |  3.82% | 10.03% )   ( 1.902200s |  0.16% |  9.93% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.137975s |  2.22% |  5.83% )   ( 1.129481s |  0.09% |  5.90% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.400595s |  0.78% |  2.05% )   ( 0.397417s |  0.03% |  2.07% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.292307s |  2.52% |  6.62% )   ( 1.283258s |  0.11% |  6.70% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.336506s |  0.65% |  1.72% )   ( 0.318086s |  0.02% |  1.66% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.590239s |  3.11% |  8.15% )   ( 1.578412s |  0.13% |  8.24% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.563805s |  6.97% | 18.27% )   ( 3.521697s |  0.31% | 18.40% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.349703s |  0.68% |  1.79% )   ( 0.348185s |  0.03% |  1.81% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.323620s |  0.63% |  1.65% )   ( 0.317295s |  0.02% |  1.65% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002065s |  0.00% |  0.00% )   ( 0.002337s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001841s |  0.00% |  0.00% )   ( 0.002071s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001970s |  0.00% |  0.00% )   ( 0.002234s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005183s |  0.01% |  0.02% )   ( 0.005252s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 0.023320s |  0.04% |  0.07% )   ( 0.023135s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001057s |  0.00% |  0.00% )   ( 0.001023s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.942890s | 37.05% | 99.99% )   ( 18.252051s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p17
30.5.0:         ( 0.029577s |  0.05% |  0.15% )   ( 0.029478s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029457s |  0.05% |  0.15% )   ( 0.029362s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.029370s |  0.05% |  0.15% )   ( 0.029278s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.043325s |  0.08% |  0.22% )   ( 0.043179s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.052732s |  0.10% |  0.27% )   ( 0.052553s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004240s |  0.00% |  0.00% )   ( 0.004729s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003718s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000225s |  0.00% |  0.00% )   ( 0.000252s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004543s |  0.00% |  0.00% )   ( 0.005058s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p17
41.5.0:         ( 0.122003s |  0.23% |  0.02% )   ( 0.005677s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004505s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004408s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003530s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032420s |  0.06% |  0.00% )   ( 0.029945s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006867s |  0.01% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004291s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p17
54.5.0:         ( 0.005957s |  0.01% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.534731s | 36.25% |  4.07% )   ( 17.961748s |  1.58% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003525s |  0.00% |  0.02% )   ( 0.003999s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.122042s |  2.19% |  6.48% )   ( 1.101467s |  0.09% |  6.57% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.029075s |  3.96% | 11.73% )   ( 1.949953s |  0.17% | 11.64% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.682059s |  3.29% |  9.72% )   ( 1.608262s |  0.14% |  9.60% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.981009s |  3.87% | 11.45% )   ( 1.923412s |  0.16% | 11.48% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.609054s |  3.14% |  9.30% )   ( 1.567407s |  0.13% |  9.35% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011734s |  1.97% |  5.85% )   ( 0.996556s |  0.08% |  5.94% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.516847s |  1.01% |  2.98% )   ( 0.503387s |  0.04% |  3.00% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.121736s |  2.19% |  6.48% )   ( 1.064530s |  0.09% |  6.35% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.477065s |  0.93% |  2.75% )   ( 0.442734s |  0.03% |  2.64% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.473141s |  2.88% |  8.51% )   ( 1.386569s |  0.12% |  8.27% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.246607s |  6.35% | 18.77% )   ( 3.229411s |  0.28% | 19.27% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.519876s |  1.01% |  3.00% )   ( 0.497267s |  0.04% |  2.96% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.500229s |  0.97% |  2.89% )   ( 0.475904s |  0.04% |  2.84% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003576s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003742s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003567s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009296s |  0.01% |  0.04% )   ( 0.009375s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 0.023375s |  0.04% |  0.08% )   ( 0.023191s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.000993s |  0.00% |  0.00% )   ( 0.001018s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.845576s | 36.86% | 99.99% )   ( 17.876675s |  1.57% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p18
30.5.0:         ( 0.027104s |  0.05% |  0.14% )   ( 0.027008s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042584s |  0.08% |  0.22% )   ( 0.042437s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.041549s |  0.08% |  0.22% )   ( 0.041373s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.046518s |  0.09% |  0.24% )   ( 0.046348s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.045442s |  0.08% |  0.24% )   ( 0.045289s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004362s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003425s |  0.00% |  0.00% )   ( 0.003897s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004278s |  0.00% |  0.00% )   ( 0.004765s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p18
41.5.0:         ( 0.201786s |  0.39% |  0.04% )   ( 0.005551s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004407s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003241s |  0.00% |  0.00% )   ( 0.003671s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003547s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029615s |  0.05% |  0.00% )   ( 0.028469s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004431s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p18
54.5.0:         ( 0.003570s |  0.00% |  0.00% )   ( 0.004039s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003491s |  0.00% |  0.00% )   ( 0.003967s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.348391s | 35.89% |  4.23% )   ( 17.571411s |  1.54% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003459s |  0.00% |  0.02% )   ( 0.003942s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.115285s |  2.18% |  6.52% )   ( 1.082164s |  0.09% |  6.59% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.957041s |  3.82% | 11.44% )   ( 1.891647s |  0.16% | 11.52% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.633528s |  3.19% |  9.55% )   ( 1.572224s |  0.13% |  9.58% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.995125s |  3.90% | 11.66% )   ( 1.923978s |  0.16% | 11.72% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.557110s |  3.04% |  9.10% )   ( 1.517918s |  0.13% |  9.24% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.098954s |  2.14% |  6.42% )   ( 0.992033s |  0.08% |  6.04% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.514387s |  1.00% |  3.00% )   ( 0.475985s |  0.04% |  2.90% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106219s |  2.16% |  6.46% )   ( 1.050600s |  0.09% |  6.40% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442230s |  0.86% |  2.58% )   ( 0.421498s |  0.03% |  2.56% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.428453s |  2.79% |  8.35% )   ( 1.381000s |  0.12% |  8.41% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.260298s |  6.37% | 19.06% )   ( 3.152607s |  0.27% | 19.21% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.516607s |  1.01% |  3.02% )   ( 0.482026s |  0.04% |  2.93% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.476170s |  0.93% |  2.78% )   ( 0.463477s |  0.04% |  2.82% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003883s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004073s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008893s |  0.01% |  0.04% )   ( 0.008971s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 0.023503s |  0.04% |  0.08% )   ( 0.023370s |  0.00% |  0.79% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001020s |  0.00% |  0.00% )   ( 0.001044s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.793953s | 36.76% | 99.99% )   ( 17.887067s |  1.57% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p19
30.5.0:         ( 0.045813s |  0.08% |  0.24% )   ( 0.045627s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043938s |  0.08% |  0.23% )   ( 0.043785s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.051475s |  0.10% |  0.27% )   ( 0.051285s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.045756s |  0.08% |  0.24% )   ( 0.045574s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.050848s |  0.09% |  0.27% )   ( 0.050673s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004329s |  0.00% |  0.00% )   ( 0.004863s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003902s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004851s |  0.00% |  0.00% )   ( 0.005399s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p19
41.5.0:         ( 0.170981s |  0.33% |  0.03% )   ( 0.005918s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004595s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003689s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003927s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032980s |  0.06% |  0.00% )   ( 0.030410s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006885s |  0.01% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p19
54.5.0:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.281291s | 35.76% |  3.89% )   ( 17.538587s |  1.54% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003629s |  0.00% |  0.02% )   ( 0.004071s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.105580s |  2.16% |  6.52% )   ( 1.076211s |  0.09% |  6.61% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.931366s |  3.77% | 11.40% )   ( 1.875856s |  0.16% | 11.52% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.668256s |  3.26% |  9.84% )   ( 1.557294s |  0.13% |  9.56% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.960277s |  3.83% | 11.57% )   ( 1.852968s |  0.16% | 11.38% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.563461s |  3.05% |  9.23% )   ( 1.519889s |  0.13% |  9.33% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027138s |  2.00% |  6.06% )   ( 0.981736s |  0.08% |  6.02% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.536043s |  1.04% |  3.16% )   ( 0.510758s |  0.04% |  3.13% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.097374s |  2.14% |  6.47% )   ( 1.044910s |  0.09% |  6.41% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487948s |  0.95% |  2.88% )   ( 0.453558s |  0.03% |  2.78% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432362s |  2.80% |  8.45% )   ( 1.380839s |  0.12% |  8.48% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.103314s |  6.07% | 18.32% )   ( 3.030082s |  0.26% | 18.61% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.520103s |  1.01% |  3.07% )   ( 0.505759s |  0.04% |  3.10% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.499962s |  0.97% |  2.95% )   ( 0.487380s |  0.04% |  2.99% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003759s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003467s |  0.00% |  0.00% )   ( 0.003941s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.011171s |  0.02% |  0.05% )   ( 0.011259s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 0.023367s |  0.04% |  0.08% )   ( 0.023237s |  0.00% |  0.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001034s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 21.256278s | 41.58% | 99.99% )   ( 20.341022s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p20
30.5.0:         ( 0.030075s |  0.05% |  0.14% )   ( 0.029968s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.030767s |  0.06% |  0.14% )   ( 0.030676s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.046675s |  0.09% |  0.21% )   ( 0.046521s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.047162s |  0.09% |  0.22% )   ( 0.046984s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.049931s |  0.09% |  0.23% )   ( 0.049744s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005154s |  0.01% |  0.00% )   ( 0.005775s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004460s |  0.00% |  0.00% )   ( 0.005023s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005602s |  0.01% |  0.00% )   ( 0.006251s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p20
41.5.0:         ( 0.178671s |  0.34% |  0.02% )   ( 0.006984s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.005535s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004744s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004440s |  0.00% |  0.00% )   ( 0.005022s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004771s |  0.00% |  0.00% )   ( 0.005372s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043161s |  0.08% |  0.00% )   ( 0.036651s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004689s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005383s |  0.01% |  0.00% )   ( 0.006014s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p20
54.5.0:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005131s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004468s |  0.00% |  0.00% )   ( 0.004797s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.754465s | 40.60% |  3.36% )   ( 20.012367s |  1.76% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004409s |  0.00% |  0.02% )   ( 0.005011s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.353984s |  2.64% |  7.05% )   ( 1.334205s |  0.11% |  7.19% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.252645s |  4.40% | 11.73% )   ( 2.129670s |  0.18% | 11.49% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.776414s |  3.47% |  9.25% )   ( 1.733144s |  0.15% |  9.35% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.075736s |  4.06% | 10.81% )   ( 2.064211s |  0.18% | 11.13% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.746921s |  3.41% |  9.09% )   ( 1.696158s |  0.14% |  9.15% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.230336s |  2.40% |  6.40% )   ( 1.190219s |  0.10% |  6.42% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.620588s |  1.21% |  3.23% )   ( 0.599760s |  0.05% |  3.23% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.281257s |  2.50% |  6.67% )   ( 1.226323s |  0.10% |  6.61% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.599499s |  1.17% |  3.12% )   ( 0.526363s |  0.04% |  2.83% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.588633s |  3.10% |  8.27% )   ( 1.518838s |  0.13% |  8.19% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.456606s |  6.76% | 18.00% )   ( 3.337612s |  0.29% | 18.00% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.623144s |  1.21% |  3.24% )   ( 0.596416s |  0.05% |  3.21% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.590246s |  1.15% |  3.07% )   ( 0.576687s |  0.05% |  3.11% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004393s |  0.00% |  0.00% )   ( 0.004945s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004745s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007135s |  0.01% |  0.00% )   ( 0.005163s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005174s |  0.01% |  0.02% )   ( 0.005249s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 0.023646s |  0.04% |  0.08% )   ( 0.023449s |  0.00% |  0.79% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.000983s |  0.00% |  0.00% )   ( 0.001007s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 18.459326s | 36.11% | 99.99% )   ( 17.499255s |  1.54% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p21
30.5.0:         ( 0.042055s |  0.08% |  0.22% )   ( 0.041926s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044626s |  0.08% |  0.24% )   ( 0.044457s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.047462s |  0.09% |  0.25% )   ( 0.047298s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.047639s |  0.09% |  0.25% )   ( 0.047459s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.047528s |  0.09% |  0.25% )   ( 0.047349s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004812s |  0.00% |  0.00% )   ( 0.005378s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005290s |  0.01% |  0.00% )   ( 0.005873s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p21
41.5.0:         ( 0.176705s |  0.34% |  0.03% )   ( 0.006537s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004486s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004826s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004460s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004470s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034219s |  0.06% |  0.00% )   ( 0.034708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004718s |  0.00% |  0.00% )   ( 0.005277s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005135s |  0.01% |  0.00% )   ( 0.005738s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p21
54.5.0:         ( 0.004192s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.944407s | 35.10% |  3.60% )   ( 17.148741s |  1.51% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003991s |  0.00% |  0.02% )   ( 0.004543s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.104031s |  2.15% |  6.71% )   ( 1.047807s |  0.09% |  6.64% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.822935s |  3.56% | 11.08% )   ( 1.770683s |  0.15% | 11.23% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.532844s |  2.99% |  9.32% )   ( 1.509872s |  0.13% |  9.57% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.824411s |  3.56% | 11.09% )   ( 1.771460s |  0.15% | 11.23% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.604005s |  3.13% |  9.75% )   ( 1.469694s |  0.12% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.042349s |  2.03% |  6.33% )   ( 0.967066s |  0.08% |  6.13% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.575778s |  1.12% |  3.50% )   ( 0.532486s |  0.04% |  3.37% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.012738s |  1.98% |  6.15% )   ( 0.992204s |  0.08% |  6.29% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489178s |  0.95% |  2.97% )   ( 0.474211s |  0.04% |  3.00% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.376155s |  2.69% |  8.36% )   ( 1.321043s |  0.11% |  8.37% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.911268s |  5.69% | 17.70% )   ( 2.828417s |  0.24% | 17.94% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581359s |  1.13% |  3.53% )   ( 0.547732s |  0.04% |  3.47% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.561296s |  1.09% |  3.41% )   ( 0.528147s |  0.04% |  3.35% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003857s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003736s |  0.00% |  0.00% )   ( 0.004234s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006219s |  0.01% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit
68.5.0:         ( 0.000225s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p* 1>&21
69.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.009094s |  0.01% |  0.04% )   ( 0.009170s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 0.022775s |  0.04% |  0.07% )   ( 0.022574s |  0.00% |  0.76% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001063s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 18.598793s | 36.38% | 99.99% )   ( 17.625440s |  1.55% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p22
30.5.0:         ( 0.038382s |  0.07% |  0.20% )   ( 0.038246s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036430s |  0.07% |  0.19% )   ( 0.036298s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.047210s |  0.09% |  0.25% )   ( 0.047035s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.050111s |  0.09% |  0.26% )   ( 0.049929s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.048430s |  0.09% |  0.26% )   ( 0.048251s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004347s |  0.00% |  0.00% )   ( 0.004869s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004807s |  0.00% |  0.00% )   ( 0.005351s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p22
41.5.0:         ( 0.112570s |  0.22% |  0.02% )   ( 0.005541s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004692s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003945s |  0.00% |  0.00% )   ( 0.004457s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034501s |  0.06% |  0.00% )   ( 0.032401s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005138s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p22
54.5.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.164215s | 35.53% |  3.75% )   ( 17.293347s |  1.52% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003898s |  0.00% |  0.02% )   ( 0.004423s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.157469s |  2.26% |  6.89% )   ( 1.072950s |  0.09% |  6.71% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.927938s |  3.77% | 11.49% )   ( 1.829167s |  0.16% | 11.44% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.615869s |  3.16% |  9.63% )   ( 1.542195s |  0.13% |  9.65% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.923369s |  3.76% | 11.46% )   ( 1.827520s |  0.16% | 11.43% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.538061s |  3.00% |  9.16% )   ( 1.484016s |  0.13% |  9.28% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.974618s |  1.90% |  5.80% )   ( 0.953237s |  0.08% |  5.96% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.529019s |  1.03% |  3.15% )   ( 0.516503s |  0.04% |  3.23% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.065394s |  2.08% |  6.35% )   ( 0.997133s |  0.08% |  6.24% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513586s |  1.00% |  3.06% )   ( 0.456805s |  0.04% |  2.85% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.424338s |  2.78% |  8.49% )   ( 1.344196s |  0.11% |  8.41% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.980279s |  5.83% | 17.76% )   ( 2.925084s |  0.25% | 18.30% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546317s |  1.06% |  3.25% )   ( 0.521142s |  0.04% |  3.26% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.576353s |  1.12% |  3.43% )   ( 0.504679s |  0.04% |  3.15% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003952s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004447s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009038s |  0.01% |  0.04% )   ( 0.009118s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 0.017913s |  0.03% |  0.06% )   ( 0.017790s |  0.00% |  0.60% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001032s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 20.137292s | 39.39% | 99.99% )   ( 19.143688s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p23
30.5.0:         ( 0.045613s |  0.08% |  0.22% )   ( 0.045455s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045830s |  0.08% |  0.22% )   ( 0.045658s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.049226s |  0.09% |  0.24% )   ( 0.049044s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.048362s |  0.09% |  0.24% )   ( 0.048186s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.050479s |  0.09% |  0.25% )   ( 0.050285s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004910s |  0.00% |  0.00% )   ( 0.005497s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005116s |  0.01% |  0.00% )   ( 0.005674s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p23
41.5.0:         ( 0.169615s |  0.33% |  0.03% )   ( 0.006360s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004605s |  0.00% |  0.00% )   ( 0.005183s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004849s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034905s |  0.06% |  0.00% )   ( 0.035368s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009862s |  0.01% |  0.00% )   ( 0.005246s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005135s |  0.01% |  0.00% )   ( 0.005734s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p23
54.5.0:         ( 0.006510s |  0.01% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004143s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.616878s | 38.37% |  3.60% )   ( 18.786401s |  1.65% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004148s |  0.00% |  0.02% )   ( 0.004712s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.334686s |  2.61% |  7.33% )   ( 1.218431s |  0.10% |  6.99% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.213706s |  4.33% | 12.16% )   ( 2.121112s |  0.18% | 12.18% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.877432s |  3.67% | 10.31% )   ( 1.785372s |  0.15% | 10.25% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.215256s |  4.33% | 12.16% )   ( 2.121954s |  0.18% | 12.18% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.634447s |  3.19% |  8.97% )   ( 1.521654s |  0.13% |  8.74% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.168176s |  2.28% |  6.41% )   ( 1.061021s |  0.09% |  6.09% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.599597s |  1.17% |  3.29% )   ( 0.549455s |  0.04% |  3.15% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.100166s |  2.15% |  6.04% )   ( 1.091016s |  0.09% |  6.26% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497905s |  0.97% |  2.73% )   ( 0.488269s |  0.04% |  2.80% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389884s |  2.71% |  7.63% )   ( 1.367179s |  0.12% |  7.85% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.032580s |  5.93% | 16.65% )   ( 2.998348s |  0.26% | 17.22% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.589561s |  1.15% |  3.23% )   ( 0.550828s |  0.04% |  3.16% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.547252s |  1.07% |  3.00% )   ( 0.530871s |  0.04% |  3.04% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004722s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005174s |  0.01% |  0.02% )   ( 0.005244s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 0.025034s |  0.04% |  0.08% )   ( 0.024835s |  0.00% |  0.84% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001074s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 20.535524s | 40.17% | 99.99% )   ( 19.849501s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p24
30.5.0:         ( 0.047512s |  0.09% |  0.23% )   ( 0.047296s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048452s |  0.09% |  0.23% )   ( 0.048195s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.049242s |  0.09% |  0.23% )   ( 0.049043s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.048593s |  0.09% |  0.23% )   ( 0.048367s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.052013s |  0.10% |  0.25% )   ( 0.051788s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004066s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004489s |  0.00% |  0.00% )   ( 0.004969s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p24
41.5.0:         ( 0.168370s |  0.32% |  0.03% )   ( 0.005743s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003530s |  0.00% |  0.00% )   ( 0.004001s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003766s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030377s |  0.05% |  0.00% )   ( 0.030731s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005521s |  0.01% |  0.00% )   ( 0.004469s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004834s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p24
54.5.0:         ( 0.003660s |  0.00% |  0.00% )   ( 0.004169s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004086s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.029270s | 39.18% |  4.06% )   ( 19.501126s |  1.71% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003751s |  0.00% |  0.01% )   ( 0.004288s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.325772s |  2.59% |  7.06% )   ( 1.288686s |  0.11% |  7.04% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.283640s |  4.46% | 12.16% )   ( 2.213638s |  0.19% | 12.10% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.740015s |  3.40% |  9.26% )   ( 1.734265s |  0.15% |  9.48% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.158442s |  4.22% | 11.49% )   ( 2.134604s |  0.18% | 11.67% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.707042s |  3.33% |  9.09% )   ( 1.669485s |  0.14% |  9.12% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.158490s |  2.26% |  6.17% )   ( 1.136099s |  0.10% |  6.21% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.580073s |  1.13% |  3.09% )   ( 0.524635s |  0.04% |  2.86% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.195715s |  2.33% |  6.36% )   ( 1.167136s |  0.10% |  6.38% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.471360s |  0.92% |  2.51% )   ( 0.450948s |  0.03% |  2.46% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.561275s |  3.05% |  8.31% )   ( 1.485053s |  0.13% |  8.11% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.540966s |  6.92% | 18.86% )   ( 3.480133s |  0.30% | 19.02% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537360s |  1.05% |  2.86% )   ( 0.513536s |  0.04% |  2.80% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.507678s |  0.99% |  2.70% )   ( 0.488820s |  0.04% |  2.67% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003540s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003793s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005108s |  0.00% |  0.02% )   ( 0.005191s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 0.023668s |  0.04% |  0.08% )   ( 0.023452s |  0.00% |  0.79% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001138s |  0.00% |  0.00% )   ( 0.001166s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 23.973900s | 46.89% | 99.99% )   ( 23.353213s |  2.05% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p25
30.5.0:         ( 0.063558s |  0.12% |  0.26% )   ( 0.049463s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052281s |  0.10% |  0.21% )   ( 0.052070s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.053230s |  0.10% |  0.22% )   ( 0.053031s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.052188s |  0.10% |  0.21% )   ( 0.051963s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.052378s |  0.10% |  0.21% )   ( 0.052188s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002777s |  0.00% |  0.00% )   ( 0.003132s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002555s |  0.00% |  0.00% )   ( 0.002901s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p25
41.5.0:         ( 0.097528s |  0.19% |  0.02% )   ( 0.003928s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002701s |  0.00% |  0.00% )   ( 0.003044s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.002529s |  0.00% |  0.00% )   ( 0.002864s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.002436s |  0.00% |  0.00% )   ( 0.002712s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002682s |  0.00% |  0.00% )   ( 0.003032s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022026s |  0.04% |  0.00% )   ( 0.022333s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009023s |  0.01% |  0.00% )   ( 0.003149s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003023s |  0.00% |  0.00% )   ( 0.003347s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p25
54.5.0:         ( 0.002586s |  0.00% |  0.00% )   ( 0.002944s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002585s |  0.00% |  0.00% )   ( 0.002933s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 23.530805s | 46.03% |  5.77% )   ( 23.019541s |  2.02% |  5.79% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002461s |  0.00% |  0.01% )   ( 0.002790s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.717855s |  3.36% |  7.59% )   ( 1.641504s |  0.14% |  7.40% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.736420s |  5.35% | 12.09% )   ( 2.706042s |  0.23% | 12.21% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.114961s |  4.13% |  9.34% )   ( 2.056409s |  0.18% |  9.28% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.716696s |  5.31% | 12.00% )   ( 2.706105s |  0.23% | 12.21% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.056048s |  4.02% |  9.08% )   ( 2.009428s |  0.17% |  9.06% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.437476s |  2.81% |  6.35% )   ( 1.401490s |  0.12% |  6.32% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.491704s |  0.96% |  2.17% )   ( 0.472357s |  0.04% |  2.13% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.547636s |  3.02% |  6.84% )   ( 1.514201s |  0.13% |  6.83% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.425864s |  0.83% |  1.88% )   ( 0.393990s |  0.03% |  1.77% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.769031s |  3.46% |  7.81% )   ( 1.724411s |  0.15% |  7.78% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.719086s |  9.23% | 20.85% )   ( 4.664693s |  0.41% | 21.05% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.464599s |  0.90% |  2.05% )   ( 0.454544s |  0.04% |  2.05% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.424953s |  0.83% |  1.87% )   ( 0.411598s |  0.03% |  1.85% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002550s |  0.00% |  0.00% )   ( 0.002900s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002344s |  0.00% |  0.00% )   ( 0.002671s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002631s |  0.00% |  0.00% )   ( 0.002959s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004785s |  0.00% |  0.01% )   ( 0.004847s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000195s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 0.028291s |  0.05% |  0.09% )   ( 0.028054s |  0.00% |  0.94% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001219s |  0.00% |  0.00% )   ( 0.001250s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 18.926270s | 37.02% | 99.99% )   ( 17.845239s |  1.57% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p26
30.5.0:         ( 0.046334s |  0.09% |  0.24% )   ( 0.046049s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046043s |  0.09% |  0.24% )   ( 0.045870s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.046078s |  0.09% |  0.24% )   ( 0.045896s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.046034s |  0.09% |  0.24% )   ( 0.045856s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.045907s |  0.08% |  0.24% )   ( 0.045731s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004071s |  0.00% |  0.00% )   ( 0.004554s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003633s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004607s |  0.00% |  0.00% )   ( 0.005113s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p26
41.5.0:         ( 0.165360s |  0.32% |  0.03% )   ( 0.005651s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.003471s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.003326s |  0.00% |  0.00% )   ( 0.003773s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028742s |  0.05% |  0.00% )   ( 0.029148s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006779s |  0.01% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004789s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p26
54.5.0:         ( 0.006457s |  0.01% |  0.00% )   ( 0.003910s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.438007s | 36.06% |  4.23% )   ( 17.516595s |  1.54% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003461s |  0.00% |  0.02% )   ( 0.003944s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.154070s |  2.25% |  6.71% )   ( 1.089766s |  0.09% |  6.66% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.089504s |  4.08% | 12.15% )   ( 1.945801s |  0.17% | 11.90% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.678402s |  3.28% |  9.75% )   ( 1.591189s |  0.14% |  9.73% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.021008s |  3.95% | 11.75% )   ( 1.939348s |  0.17% | 11.86% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.702886s |  3.33% |  9.90% )   ( 1.542120s |  0.13% |  9.43% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.064669s |  2.08% |  6.19% )   ( 0.986628s |  0.08% |  6.03% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.525816s |  1.02% |  3.05% )   ( 0.495565s |  0.04% |  3.03% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101029s |  2.15% |  6.40% )   ( 1.057011s |  0.09% |  6.46% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.426607s |  0.83% |  2.48% )   ( 0.422194s |  0.03% |  2.58% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.400173s |  2.73% |  8.14% )   ( 1.344326s |  0.11% |  8.22% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.085190s |  6.03% | 17.94% )   ( 3.005434s |  0.26% | 18.38% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.477001s |  0.93% |  2.77% )   ( 0.473739s |  0.04% |  2.89% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.467168s |  0.91% |  2.71% )   ( 0.450283s |  0.03% |  2.75% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003381s |  0.00% |  0.00% )   ( 0.003826s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003518s |  0.00% |  0.00% )   ( 0.003917s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005000s |  0.00% |  0.02% )   ( 0.005068s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000197s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 0.027157s |  0.05% |  0.09% )   ( 0.026941s |  0.00% |  0.91% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001250s |  0.00% |  0.00% )   ( 0.001282s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 18.329002s | 35.85% | 99.99% )   ( 17.422412s |  1.53% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cQqD2i"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p27
30.5.0:         ( 0.045411s |  0.08% |  0.24% )   ( 0.045180s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049299s |  0.09% |  0.26% )   ( 0.049110s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1315393 ${BASHPID}' INT
33.5.0:         ( 0.051944s |  0.10% |  0.28% )   ( 0.051678s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1315393 ${BASHPID}' TERM
34.5.0:         ( 0.052002s |  0.10% |  0.28% )   ( 0.051779s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1315393 ${BASHPID}' HUP
35.5.0:         ( 0.046580s |  0.09% |  0.25% )   ( 0.046369s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005017s |  0.00% |  0.00% )   ( 0.005615s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005103s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cQqD2i"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005632s |  0.01% |  0.00% )   ( 0.006233s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p27
41.5.0:         ( 0.095443s |  0.18% |  0.01% )   ( 0.006373s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004740s |  0.00% |  0.00% )   ( 0.005327s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.quit ]]
46.5.0:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.done ]]
46.5.1:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004796s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033355s |  0.06% |  0.00% )   ( 0.033840s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004621s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005137s |  0.01% |  0.00% )   ( 0.005737s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cQqD2i"/.wait/p27
54.5.0:         ( 0.007146s |  0.01% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.875192s | 34.96% |  3.48% )   ( 17.056092s |  1.50% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004185s |  0.00% |  0.02% )   ( 0.004782s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.186535s |  2.32% |  7.25% )   ( 1.051836s |  0.09% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.832438s |  3.58% | 11.19% )   ( 1.738039s |  0.15% | 11.11% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.555160s |  3.04% |  9.50% )   ( 1.491313s |  0.13% |  9.53% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.817032s |  3.55% | 11.10% )   ( 1.736301s |  0.15% | 11.10% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.503527s |  2.94% |  9.18% )   ( 1.438426s |  0.12% |  9.19% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.008288s |  1.97% |  6.16% )   ( 0.967465s |  0.08% |  6.18% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.556993s |  1.08% |  3.40% )   ( 0.550642s |  0.04% |  3.52% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.030724s |  2.01% |  6.29% )   ( 0.992502s |  0.08% |  6.34% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.537534s |  1.05% |  3.28% )   ( 0.490516s |  0.04% |  3.13% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383235s |  2.70% |  8.45% )   ( 1.320567s |  0.11% |  8.44% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.838063s |  5.55% | 17.34% )   ( 2.762337s |  0.24% | 17.66% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.565119s |  1.10% |  3.45% )   ( 0.557745s |  0.04% |  3.56% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.546827s |  1.06% |  3.34% )   ( 0.538538s |  0.04% |  3.44% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004408s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007445s |  0.01% |  0.00% )   ( 0.004934s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009038s |  0.01% |  0.04% )   ( 0.009124s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000180s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000209s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001531s |  0.00% |  0.00% )   ( 0.001547s |  0.00% |  0.05% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.363316s | 47.66% | 83.53% )   ( 0.001359s |  0.00% |  0.04% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000110s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.049816s |  0.09% |  0.17% )   ( 0.049994s |  0.00% |  1.69% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cQqD2i"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.cQqD2i"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1315407  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.cQqD2i"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000085s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005434s |  0.01% |  0.01% )   ( 0.002398s |  0.00% |  0.07% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.cQqD2i" 2>/dev/null

WALL CLOCK TIME: 51.117465s
TOTAL RUN TIME:  51.117465s
TOTAL CPU TIME:  1134.690407s

