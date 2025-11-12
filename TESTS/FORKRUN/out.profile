LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 551.352004s | 50.09% )            ( 499.126525s | 49.95% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000759s |  0.00% |  0.00% )   ( 0.000426s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 551.351245s | 50.09% | 99.99% )   ( 499.126099s | 49.95% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.050283s |  0.00% |  0.00% )   ( 0.050079s |  0.00% |  0.01% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001189s |  0.00% |  0.00% )   ( 0.001026s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005048s |  0.00% |  0.00% )   ( 0.005048s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.005048s |  0.00% |100.00% )   ( 0.005048s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001232s |  0.00% |  0.00% )   ( 0.001315s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026566s |  0.00% |  0.00% )   ( 0.000941s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 551.260229s | 50.08% | 99.98% )   ( 499.062426s | 49.94% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000696s |  0.00% |  0.00% )   ( 0.000784s |  0.00% |  0.00% )    	(5x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.000696s |  0.00% |100.00% )   ( 0.000784s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.5:       ( 0.000092s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.000092s |  0.00% |100.00% )   ( 0.000103s |  0.00% |100.00% )    	(1x)	│  │  │  └─  :
238.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.006334s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000192s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.001188s |  0.00% |  0.00% )   ( 0.001048s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000409s |  0.00% |  0.00% )   ( 0.000461s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000409s |  0.00% |100.00% )   ( 0.000461s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000885s |  0.00% |  0.00% )   ( 0.001022s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.68% )   ( 0.000080s |  0.00% |  7.82% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000071s |  0.00% |  8.02% )   ( 0.000083s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.68% )   ( 0.000079s |  0.00% |  7.72% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000069s |  0.00% |  7.79% )   ( 0.000081s |  0.00% |  7.92% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000065s |  0.00% |  7.34% )   ( 0.000077s |  0.00% |  7.53% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000075s |  0.00% |  8.47% )   ( 0.000083s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000064s |  0.00% |  7.23% )   ( 0.000075s |  0.00% |  7.33% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000116s |  0.00% | 13.10% )   ( 0.000127s |  0.00% | 12.42% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000065s |  0.00% |  7.34% )   ( 0.000077s |  0.00% |  7.53% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000063s |  0.00% |  7.11% )   ( 0.000075s |  0.00% |  7.33% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000092s |  0.00% | 10.39% )   ( 0.000105s |  0.00% | 10.27% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000069s |  0.00% |  7.79% )   ( 0.000080s |  0.00% |  7.82% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000869s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002338s |  0.00% |  0.00% )   ( 0.002469s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000291s |  0.00% | 12.44% )   ( 0.000318s |  0.00% | 12.87% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002047s |  0.00% | 87.55% )   ( 0.002151s |  0.00% | 87.12% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000670s |  0.00% |  0.00% )   ( 0.000520s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000121s |  0.00% |100.00% )   ( 0.000141s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.002726s |  0.00% |  0.00% )   ( 0.002799s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000515s |  0.00% |  0.00% )   ( 0.000527s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.135470s |  0.01% |  0.02% )   ( 0.134599s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000112s |  0.00% |  0.08% )   ( 0.000129s |  0.00% |  0.09% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.022526s |  0.00% | 16.62% )   ( 0.022434s |  0.00% | 16.66% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.024040s |  0.00% | 17.74% )   ( 0.023551s |  0.00% | 17.49% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023220s |  0.00% | 17.14% )   ( 0.023134s |  0.00% | 17.18% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023317s |  0.00% | 17.21% )   ( 0.023235s |  0.00% | 17.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023187s |  0.00% | 17.11% )   ( 0.023073s |  0.00% | 17.14% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000063s |  0.00% |  0.04% )   ( 0.000073s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018764s |  0.00% | 13.85% )   ( 0.018694s |  0.00% | 13.88% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000093s |  0.00% |  0.06% )   ( 0.000106s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000082s |  0.00% |  0.06% )   ( 0.000092s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000381s |  0.00% |  0.00% )   ( 0.000408s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.281375s |  0.38% |  0.77% )   ( 1.841394s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023414s |  0.00% |  0.54% )   ( 0.023341s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023535s |  0.00% |  0.54% )   ( 0.023442s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023123s |  0.00% |  0.54% )   ( 0.023067s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023278s |  0.00% |  0.54% )   ( 0.023231s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023030s |  0.00% |  0.53% )   ( 0.022981s |  0.00% |  1.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090757s |  0.00% |  0.00% )   ( 0.103694s |  0.01% |  0.00% )    	(675x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.738077s |  0.24% |  0.09% )   ( 0.123199s |  0.01% |  0.00% )    	(674x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001083s |  0.00% |  0.00% )   ( 0.001224s |  0.00% |  0.01% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.089496s |  0.00% |  0.00% )   ( 0.102418s |  0.01% |  0.00% )    	(668x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089146s |  0.00% |  0.00% )   ( 0.102036s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.088332s |  0.00% |  0.00% )   ( 0.101019s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.091405s |  0.00% |  0.00% )   ( 0.104077s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091357s |  0.00% |  0.00% )   ( 0.104014s |  0.01% |  0.00% )    	(668x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.087883s |  0.00% |  0.00% )   ( 0.100739s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.088186s |  0.00% |  0.00% )   ( 0.100941s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.091637s |  0.00% |  0.00% )   ( 0.101540s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000687s |  0.00% |  0.01% )   ( 0.000510s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002597s |  0.00% |  0.06% )   ( 0.002961s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002597s |  0.00% |100.00% )   ( 0.002961s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088422s |  0.00% |  0.00% )   ( 0.101190s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.087616s |  0.00% |  0.00% )   ( 0.099884s |  0.00% |  0.00% )    	(668x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085651s |  0.00% |  0.00% )   ( 0.098022s |  0.00% |  0.00% )    	(647x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092066s |  0.00% |  0.00% )   ( 0.104923s |  0.01% |  0.00% )    	(668x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.088278s |  0.00% |  0.00% )   ( 0.100952s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.088258s |  0.00% |  0.00% )   ( 0.101068s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.003105s |  0.00% |  0.00% )   ( 0.003525s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002949s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.059493s |  0.00% |  0.06% )   ( 0.043880s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003298s |  0.00% |  0.00% )   ( 0.003707s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003233s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003055s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000189s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000138s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006580s |  0.00% |  0.15% )   ( 0.006658s |  0.00% |  0.36% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/pAuto
598.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001340s |  0.00% |  0.00% )   ( 0.000489s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006169s |  0.00% |  0.00% )   ( 0.007057s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000153s |  0.00% |  2.48% )   ( 0.000170s |  0.00% |  2.40% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000098s |  0.00% |  1.58% )   ( 0.000113s |  0.00% |  1.60% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000117s |  0.00% |  1.89% )   ( 0.000133s |  0.00% |  1.88% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000304s |  0.00% |  4.92% )   ( 0.000317s |  0.00% |  4.49% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000095s |  0.00% |  1.53% )   ( 0.000110s |  0.00% |  1.55% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000093s |  0.00% |  1.50% )   ( 0.000108s |  0.00% |  1.53% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000097s |  0.00% |  1.57% )   ( 0.000113s |  0.00% |  1.60% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000068s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000091s |  0.00% |  1.28% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000082s |  0.00% |  1.16% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000075s |  0.00% |  1.21% )   ( 0.000084s |  0.00% |  1.19% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000089s |  0.00% |  1.44% )   ( 0.000101s |  0.00% |  1.43% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000076s |  0.00% |  1.23% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000103s |  0.00% |  1.66% )   ( 0.000115s |  0.00% |  1.62% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000068s |  0.00% |  1.10% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000076s |  0.00% |  1.23% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000080s |  0.00% |  1.29% )   ( 0.000086s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000104s |  0.00% |  1.68% )   ( 0.000116s |  0.00% |  1.64% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000079s |  0.00% |  1.28% )   ( 0.000090s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.28% )   ( 0.000091s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000091s |  0.00% |  1.47% )   ( 0.000100s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.13% )   ( 0.000082s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000094s |  0.00% |  1.52% )   ( 0.000105s |  0.00% |  1.48% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000095s |  0.00% |  1.53% )   ( 0.000106s |  0.00% |  1.50% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000067s |  0.00% |  1.08% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000077s |  0.00% |  1.24% )   ( 0.000088s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000100s |  0.00% |  1.62% )   ( 0.000108s |  0.00% |  1.53% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000063s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000082s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000084s |  0.00% |  1.36% )   ( 0.000092s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000074s |  0.00% |  1.19% )   ( 0.000085s |  0.00% |  1.20% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000068s |  0.00% |  1.10% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000076s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000110s |  0.00% |  1.78% )   ( 0.000119s |  0.00% |  1.68% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000061s |  0.00% |  0.98% )   ( 0.000072s |  0.00% |  1.02% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000074s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000104s |  0.00% |  1.68% )   ( 0.000113s |  0.00% |  1.60% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.16% )   ( 0.000084s |  0.00% |  1.19% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.10% )   ( 0.000080s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000088s |  0.00% |  1.42% )   ( 0.000098s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000073s |  0.00% |  1.18% )   ( 0.000083s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000071s |  0.00% |  1.15% )   ( 0.000081s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000068s |  0.00% |  1.10% )   ( 0.000079s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000085s |  0.00% |  1.37% )   ( 0.000097s |  0.00% |  1.37% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000210s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000199s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000182s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.024902s |  0.00% |  0.00% )   ( 0.024842s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023443s |  0.00% |  0.00% )   ( 0.023393s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023474s |  0.00% |  0.00% )   ( 0.168575s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023387s |  0.00% |  0.00% )   ( 0.023051s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003010s |  0.00% |  0.00% )   ( 0.003451s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002917s |  0.00% |  0.00% )   ( 0.003335s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 17.522101s |  1.59% |  3.17% )   ( 16.644121s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 17.520869s |  1.59% | 99.99% )   ( 16.643393s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000248s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p0
30.5.0:         ( 0.023221s |  0.00% |  0.13% )   ( 0.023145s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023325s |  0.00% |  0.13% )   ( 0.023245s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023667s |  0.00% |  0.13% )   ( 0.023543s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023685s |  0.00% |  0.13% )   ( 0.023601s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023801s |  0.00% |  0.13% )   ( 0.023671s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004727s |  0.00% |  0.00% )   ( 0.005285s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004342s |  0.00% |  0.00% )   ( 0.004927s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005820s |  0.00% |  0.00% )   ( 0.005941s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p0
41.5.0:         ( 0.370430s |  0.03% |  0.07% )   ( 0.006921s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004526s |  0.00% |  0.00% )   ( 0.005121s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004173s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004290s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038082s |  0.00% |  0.00% )   ( 0.035523s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004116s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007633s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005132s |  0.00% |  0.00% )   ( 0.005708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p0
66.5.0:         ( 0.004074s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.907365s |  1.53% |  3.44% )   ( 16.393846s |  1.64% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004114s |  0.00% |  0.02% )   ( 0.004689s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.135882s |  0.10% |  6.71% )   ( 1.101674s |  0.11% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.865892s |  0.16% | 11.03% )   ( 1.850616s |  0.18% | 11.28% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.650677s |  0.14% |  9.76% )   ( 1.570449s |  0.15% |  9.57% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.903118s |  0.17% | 11.25% )   ( 1.845144s |  0.18% | 11.25% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.578942s |  0.14% |  9.33% )   ( 1.531782s |  0.15% |  9.34% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.038729s |  0.09% |  6.14% )   ( 1.002739s |  0.10% |  6.11% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.567995s |  0.05% |  3.35% )   ( 0.541184s |  0.05% |  3.30% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.079689s |  0.09% |  6.38% )   ( 1.041298s |  0.10% |  6.35% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487336s |  0.04% |  2.88% )   ( 0.474927s |  0.04% |  2.89% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.397272s |  0.12% |  8.26% )   ( 1.377550s |  0.13% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.043591s |  0.27% | 18.00% )   ( 2.978338s |  0.29% | 18.16% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.578006s |  0.05% |  3.41% )   ( 0.540962s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.576122s |  0.05% |  3.40% )   ( 0.532494s |  0.05% |  3.24% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004224s |  0.00% |  0.00% )   ( 0.004764s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.006937s |  0.00% |  0.00% )   ( 0.004479s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004806s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008929s |  0.00% |  0.05% )   ( 0.008995s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p0\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002827s |  0.00% |  0.00% )   ( 0.003257s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.589957s |  1.59% |  3.19% )   ( 16.344506s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000606s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.588583s |  1.59% | 99.99% )   ( 16.343788s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p1
30.5.0:         ( 0.023148s |  0.00% |  0.13% )   ( 0.023106s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023521s |  0.00% |  0.13% )   ( 0.023480s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023348s |  0.00% |  0.13% )   ( 0.023298s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023791s |  0.00% |  0.13% )   ( 0.023744s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023765s |  0.00% |  0.13% )   ( 0.023716s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005195s |  0.00% |  0.00% )   ( 0.005818s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004630s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005556s |  0.00% |  0.00% )   ( 0.006180s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p1
41.5.0:         ( 0.435429s |  0.03% |  0.07% )   ( 0.007484s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004857s |  0.00% |  0.00% )   ( 0.005482s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004612s |  0.00% |  0.00% )   ( 0.005221s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004370s |  0.00% |  0.00% )   ( 0.004931s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036476s |  0.00% |  0.00% )   ( 0.036990s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004257s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010705s |  0.00% |  0.00% )   ( 0.005274s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005520s |  0.00% |  0.00% )   ( 0.006172s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p1
66.5.0:         ( 0.005451s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004296s |  0.00% |  0.00% )   ( 0.004903s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.907647s |  1.53% |  3.10% )   ( 16.088348s |  1.61% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004433s |  0.00% |  0.02% )   ( 0.005029s |  0.00% |  0.03% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.128031s |  0.10% |  6.67% )   ( 1.079590s |  0.10% |  6.71% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.865277s |  0.16% | 11.03% )   ( 1.770306s |  0.17% | 11.00% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.579556s |  0.14% |  9.34% )   ( 1.535072s |  0.15% |  9.54% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.857427s |  0.16% | 10.98% )   ( 1.764738s |  0.17% | 10.96% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.533936s |  0.13% |  9.07% )   ( 1.491492s |  0.14% |  9.27% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049351s |  0.09% |  6.20% )   ( 1.002384s |  0.10% |  6.23% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623835s |  0.05% |  3.68% )   ( 0.586679s |  0.05% |  3.64% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.128785s |  0.10% |  6.67% )   ( 1.031656s |  0.10% |  6.41% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.540302s |  0.04% |  3.19% )   ( 0.526299s |  0.05% |  3.27% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442567s |  0.13% |  8.53% )   ( 1.359340s |  0.13% |  8.44% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.915541s |  0.26% | 17.24% )   ( 2.768731s |  0.27% | 17.20% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.607342s |  0.05% |  3.59% )   ( 0.591774s |  0.05% |  3.67% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.631264s |  0.05% |  3.73% )   ( 0.575258s |  0.05% |  3.57% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004370s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005161s |  0.00% |  0.00% )   ( 0.005127s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008075s |  0.00% |  0.04% )   ( 0.008154s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p1\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.650652s |  1.60% |  3.20% )   ( 16.566139s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000614s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.649651s |  1.60% | 99.99% )   ( 16.565407s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000312s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000341s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p2
30.5.0:         ( 0.023376s |  0.00% |  0.13% )   ( 0.023331s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023364s |  0.00% |  0.13% )   ( 0.023316s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023758s |  0.00% |  0.13% )   ( 0.023708s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023795s |  0.00% |  0.13% )   ( 0.023746s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023663s |  0.00% |  0.13% )   ( 0.023611s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004690s |  0.00% |  0.00% )   ( 0.005237s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005146s |  0.00% |  0.00% )   ( 0.005706s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p2
41.5.0:         ( 0.247991s |  0.02% |  0.04% )   ( 0.006216s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003981s |  0.00% |  0.00% )   ( 0.004522s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003884s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004137s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034068s |  0.00% |  0.00% )   ( 0.032523s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004293s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004103s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004737s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p2
66.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004437s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.172905s |  1.56% |  3.47% )   ( 16.323559s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003885s |  0.00% |  0.02% )   ( 0.004439s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.149026s |  0.10% |  6.69% )   ( 1.082244s |  0.10% |  6.62% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.958921s |  0.17% | 11.40% )   ( 1.842761s |  0.18% | 11.28% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629162s |  0.14% |  9.48% )   ( 1.578808s |  0.15% |  9.67% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.907574s |  0.17% | 11.10% )   ( 1.860124s |  0.18% | 11.39% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.682424s |  0.15% |  9.79% )   ( 1.524149s |  0.15% |  9.33% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.012906s |  0.09% |  5.89% )   ( 0.984772s |  0.09% |  6.03% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.560819s |  0.05% |  3.26% )   ( 0.536676s |  0.05% |  3.28% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.071060s |  0.09% |  6.23% )   ( 1.027548s |  0.10% |  6.29% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.542779s |  0.04% |  3.16% )   ( 0.480664s |  0.04% |  2.94% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.422815s |  0.12% |  8.28% )   ( 1.360074s |  0.13% |  8.33% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.031949s |  0.27% | 17.65% )   ( 2.971268s |  0.29% | 18.20% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.627044s |  0.05% |  3.65% )   ( 0.544261s |  0.05% |  3.33% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.572541s |  0.05% |  3.33% )   ( 0.525771s |  0.05% |  3.22% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003708s |  0.00% |  0.00% )   ( 0.004196s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003987s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008439s |  0.00% |  0.04% )   ( 0.008506s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p2\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 19.167056s |  1.74% |  3.47% )   ( 18.446262s |  1.84% |  3.69% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000597s |  0.00% |  0.00% )   ( 0.000613s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 19.165631s |  1.74% | 99.99% )   ( 18.445552s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000114s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p3
30.5.0:         ( 0.023517s |  0.00% |  0.12% )   ( 0.023470s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023461s |  0.00% |  0.12% )   ( 0.023418s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023845s |  0.00% |  0.12% )   ( 0.023797s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023688s |  0.00% |  0.12% )   ( 0.023639s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023821s |  0.00% |  0.12% )   ( 0.023769s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004646s |  0.00% |  0.00% )   ( 0.005187s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004943s |  0.00% |  0.00% )   ( 0.005510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p3
41.5.0:         ( 0.238260s |  0.02% |  0.04% )   ( 0.006231s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004195s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003686s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003957s |  0.00% |  0.00% )   ( 0.004469s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030868s |  0.00% |  0.00% )   ( 0.031313s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007120s |  0.00% |  0.00% )   ( 0.004587s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004580s |  0.00% |  0.00% )   ( 0.005106s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p3
66.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003645s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.702410s |  1.69% |  3.75% )   ( 18.209254s |  1.82% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003838s |  0.00% |  0.02% )   ( 0.004337s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.315066s |  0.11% |  7.03% )   ( 1.248742s |  0.12% |  6.85% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.333780s |  0.21% | 12.47% )   ( 2.281015s |  0.22% | 12.52% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.924398s |  0.17% | 10.28% )   ( 1.789246s |  0.17% |  9.82% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.238304s |  0.20% | 11.96% )   ( 2.206779s |  0.22% | 12.11% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.792770s |  0.16% |  9.58% )   ( 1.763238s |  0.17% |  9.68% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.155240s |  0.10% |  6.17% )   ( 1.138625s |  0.11% |  6.25% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537605s |  0.04% |  2.87% )   ( 0.525056s |  0.05% |  2.88% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.260375s |  0.11% |  6.73% )   ( 1.232547s |  0.12% |  6.76% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.494284s |  0.04% |  2.64% )   ( 0.468771s |  0.04% |  2.57% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.608221s |  0.14% |  8.59% )   ( 1.569627s |  0.15% |  8.61% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.965284s |  0.26% | 15.85% )   ( 2.947715s |  0.29% | 16.18% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.535110s |  0.04% |  2.86% )   ( 0.528983s |  0.05% |  2.90% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.538135s |  0.04% |  2.87% )   ( 0.504573s |  0.05% |  2.77% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003520s |  0.00% |  0.00% )   ( 0.003999s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004475s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006316s |  0.00% |  0.03% )   ( 0.006354s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p3\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 21.358533s |  1.94% |  3.87% )   ( 20.284593s |  2.03% |  4.06% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000623s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 21.357499s |  1.94% | 99.99% )   ( 20.283855s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000356s |  0.00% |  0.00% )   ( 0.000400s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p4
30.5.0:         ( 0.023312s |  0.00% |  0.10% )   ( 0.023267s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023782s |  0.00% |  0.11% )   ( 0.023734s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023796s |  0.00% |  0.11% )   ( 0.023745s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023780s |  0.00% |  0.11% )   ( 0.023731s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023632s |  0.00% |  0.11% )   ( 0.023583s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003442s |  0.00% |  0.00% )   ( 0.003903s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004162s |  0.00% |  0.00% )   ( 0.004640s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p4
41.5.0:         ( 0.355212s |  0.03% |  0.06% )   ( 0.006045s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003858s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003947s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003350s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003551s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026852s |  0.00% |  0.00% )   ( 0.027244s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003790s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003802s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003633s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004668s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p4
66.5.0:         ( 0.003231s |  0.00% |  0.00% )   ( 0.003660s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003251s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.794093s |  1.88% |  4.23% )   ( 20.061934s |  2.00% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003493s |  0.00% |  0.01% )   ( 0.003957s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.472208s |  0.13% |  7.07% )   ( 1.420398s |  0.14% |  7.08% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.515296s |  0.22% | 12.09% )   ( 2.371939s |  0.23% | 11.82% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.884680s |  0.17% |  9.06% )   ( 1.871890s |  0.18% |  9.33% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.448887s |  0.22% | 11.77% )   ( 2.382445s |  0.23% | 11.87% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.902761s |  0.17% |  9.15% )   ( 1.836272s |  0.18% |  9.15% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.341023s |  0.12% |  6.44% )   ( 1.262900s |  0.12% |  6.29% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541729s |  0.04% |  2.60% )   ( 0.522456s |  0.05% |  2.60% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.350542s |  0.12% |  6.49% )   ( 1.342018s |  0.13% |  6.68% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.459798s |  0.04% |  2.21% )   ( 0.456148s |  0.04% |  2.27% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.639664s |  0.14% |  7.88% )   ( 1.619862s |  0.16% |  8.07% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.225295s |  0.38% | 20.31% )   ( 3.978057s |  0.39% | 19.82% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.523737s |  0.04% |  2.51% )   ( 0.513893s |  0.05% |  2.56% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.484980s |  0.04% |  2.33% )   ( 0.479699s |  0.04% |  2.39% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003302s |  0.00% |  0.00% )   ( 0.003747s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003010s |  0.00% |  0.00% )   ( 0.003444s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003410s |  0.00% |  0.00% )   ( 0.003842s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004966s |  0.00% |  0.02% )   ( 0.005053s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p4\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 19.134346s |  1.73% |  3.47% )   ( 18.521978s |  1.85% |  3.71% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000607s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 19.133398s |  1.73% | 99.99% )   ( 18.521258s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p5
30.5.0:         ( 0.023526s |  0.00% |  0.12% )   ( 0.023480s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023791s |  0.00% |  0.12% )   ( 0.023743s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023803s |  0.00% |  0.12% )   ( 0.023752s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023798s |  0.00% |  0.12% )   ( 0.023749s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023769s |  0.00% |  0.12% )   ( 0.023717s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003047s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002544s |  0.00% |  0.00% )   ( 0.002888s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003775s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p5
41.5.0:         ( 0.193774s |  0.01% |  0.05% )   ( 0.004265s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003016s |  0.00% |  0.00% )   ( 0.003398s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.002828s |  0.00% |  0.00% )   ( 0.003174s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003066s |  0.00% |  0.00% )   ( 0.002901s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002600s |  0.00% |  0.00% )   ( 0.002932s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019999s |  0.00% |  0.00% )   ( 0.020280s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002566s |  0.00% |  0.00% )   ( 0.002898s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002646s |  0.00% |  0.00% )   ( 0.002999s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008432s |  0.00% |  0.00% )   ( 0.003127s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003135s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p5
66.5.0:         ( 0.002633s |  0.00% |  0.00% )   ( 0.002987s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002754s |  0.00% |  0.00% )   ( 0.003137s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.738069s |  1.70% |  5.44% )   ( 18.321646s |  1.83% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002782s |  0.00% |  0.01% )   ( 0.003161s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.303809s |  0.11% |  6.95% )   ( 1.239442s |  0.12% |  6.76% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.333424s |  0.21% | 12.45% )   ( 2.282355s |  0.22% | 12.45% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.765990s |  0.16% |  9.42% )   ( 1.740034s |  0.17% |  9.49% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.225428s |  0.20% | 11.87% )   ( 2.207781s |  0.22% | 12.05% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.697797s |  0.15% |  9.06% )   ( 1.685296s |  0.16% |  9.19% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.098962s |  0.09% |  5.86% )   ( 1.068646s |  0.10% |  5.83% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.482178s |  0.04% |  2.57% )   ( 0.430365s |  0.04% |  2.34% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.209140s |  0.10% |  6.45% )   ( 1.166243s |  0.11% |  6.36% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.394169s |  0.03% |  2.10% )   ( 0.358912s |  0.03% |  1.95% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.513232s |  0.13% |  8.07% )   ( 1.488980s |  0.14% |  8.12% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.892976s |  0.35% | 20.77% )   ( 3.844609s |  0.38% | 20.98% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.419770s |  0.03% |  2.24% )   ( 0.418992s |  0.04% |  2.28% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.398412s |  0.03% |  2.12% )   ( 0.386830s |  0.03% |  2.11% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005744s |  0.00% |  0.00% )   ( 0.003105s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002658s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005990s |  0.00% |  0.00% )   ( 0.003362s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004882s |  0.00% |  0.02% )   ( 0.004951s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p5\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 22.923338s |  2.08% |  4.15% )   ( 21.942982s |  2.19% |  4.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000627s |  0.00% |  0.00% )   ( 0.000644s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 22.922293s |  2.08% | 99.99% )   ( 21.942236s |  2.19% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000334s |  0.00% |  0.00% )   ( 0.000376s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000355s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p6
30.5.0:         ( 0.023732s |  0.00% |  0.10% )   ( 0.023683s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023697s |  0.00% |  0.10% )   ( 0.023646s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023799s |  0.00% |  0.10% )   ( 0.023745s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023810s |  0.00% |  0.10% )   ( 0.023757s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023782s |  0.00% |  0.10% )   ( 0.023728s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004802s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004855s |  0.00% |  0.00% )   ( 0.005290s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p6
41.5.0:         ( 0.361384s |  0.03% |  0.05% )   ( 0.006188s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004289s |  0.00% |  0.00% )   ( 0.004804s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004571s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003689s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003862s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034397s |  0.00% |  0.00% )   ( 0.031826s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003680s |  0.00% |  0.00% )   ( 0.004174s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003766s |  0.00% |  0.00% )   ( 0.004268s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007158s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004761s |  0.00% |  0.00% )   ( 0.005302s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p6
66.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004065s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 22.335127s |  2.02% |  3.74% )   ( 21.707934s |  2.17% |  3.80% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003820s |  0.00% |  0.01% )   ( 0.004330s |  0.00% |  0.01% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.659779s |  0.15% |  7.43% )   ( 1.611932s |  0.16% |  7.42% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.596777s |  0.23% | 11.62% )   ( 2.540289s |  0.25% | 11.70% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.115801s |  0.19% |  9.47% )   ( 2.041747s |  0.20% |  9.40% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.560069s |  0.23% | 11.46% )   ( 2.513925s |  0.25% | 11.58% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.012220s |  0.18% |  9.00% )   ( 1.956224s |  0.19% |  9.01% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.475096s |  0.13% |  6.60% )   ( 1.434357s |  0.14% |  6.60% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.609517s |  0.05% |  2.72% )   ( 0.597580s |  0.05% |  2.75% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.511615s |  0.13% |  6.76% )   ( 1.470995s |  0.14% |  6.77% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.545460s |  0.04% |  2.44% )   ( 0.505444s |  0.05% |  2.32% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.843878s |  0.16% |  8.25% )   ( 1.738660s |  0.17% |  8.00% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.250511s |  0.38% | 19.03% )   ( 4.185778s |  0.41% | 19.28% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.596239s |  0.05% |  2.66% )   ( 0.570347s |  0.05% |  2.62% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.554345s |  0.05% |  2.48% )   ( 0.536326s |  0.05% |  2.47% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003446s |  0.00% |  0.00% )   ( 0.003928s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004936s |  0.00% |  0.02% )   ( 0.004993s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p6\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.409916s |  1.58% |  3.15% )   ( 16.537043s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000615s |  0.00% |  0.00% )   ( 0.000637s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.408946s |  1.58% | 99.99% )   ( 16.536303s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p7
30.5.0:         ( 0.023723s |  0.00% |  0.13% )   ( 0.023676s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023728s |  0.00% |  0.13% )   ( 0.023676s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023784s |  0.00% |  0.13% )   ( 0.023732s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023820s |  0.00% |  0.13% )   ( 0.023768s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023786s |  0.00% |  0.13% )   ( 0.023732s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005281s |  0.00% |  0.00% )   ( 0.005923s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004754s |  0.00% |  0.00% )   ( 0.005358s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005698s |  0.00% |  0.00% )   ( 0.006355s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p7
41.5.0:         ( 0.346521s |  0.03% |  0.06% )   ( 0.007442s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005083s |  0.00% |  0.00% )   ( 0.005710s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004386s |  0.00% |  0.00% )   ( 0.004967s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004406s |  0.00% |  0.00% )   ( 0.005015s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005227s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036254s |  0.00% |  0.00% )   ( 0.036757s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004392s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004493s |  0.00% |  0.00% )   ( 0.005109s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007692s |  0.00% |  0.00% )   ( 0.005298s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005320s |  0.00% |  0.00% )   ( 0.005921s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p7
66.5.0:         ( 0.004293s |  0.00% |  0.00% )   ( 0.004904s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.819879s |  1.52% |  3.22% )   ( 16.279187s |  1.62% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004449s |  0.00% |  0.02% )   ( 0.005042s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.100977s |  0.10% |  6.54% )   ( 1.089633s |  0.10% |  6.69% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.862956s |  0.16% | 11.07% )   ( 1.812566s |  0.18% | 11.13% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.620219s |  0.14% |  9.63% )   ( 1.582677s |  0.15% |  9.72% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.866940s |  0.16% | 11.09% )   ( 1.817319s |  0.18% | 11.16% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.584841s |  0.14% |  9.42% )   ( 1.517960s |  0.15% |  9.32% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.039351s |  0.09% |  6.17% )   ( 0.993306s |  0.09% |  6.10% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590823s |  0.05% |  3.51% )   ( 0.573902s |  0.05% |  3.52% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.032792s |  0.09% |  6.14% )   ( 1.013376s |  0.10% |  6.22% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.530064s |  0.04% |  3.15% )   ( 0.512762s |  0.05% |  3.14% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417983s |  0.12% |  8.43% )   ( 1.378235s |  0.13% |  8.46% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.907044s |  0.26% | 17.28% )   ( 2.839350s |  0.28% | 17.44% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.629174s |  0.05% |  3.74% )   ( 0.578745s |  0.05% |  3.55% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.632266s |  0.05% |  3.75% )   ( 0.564314s |  0.05% |  3.46% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004729s |  0.00% |  0.00% )   ( 0.005347s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004108s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005147s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008436s |  0.00% |  0.04% )   ( 0.008516s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p7\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 18.865206s |  1.71% |  3.42% )   ( 18.516642s |  1.85% |  3.71% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000620s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 18.863983s |  1.71% | 99.99% )   ( 18.515905s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000222s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000231s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p8
30.5.0:         ( 0.024703s |  0.00% |  0.13% )   ( 0.024654s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023762s |  0.00% |  0.12% )   ( 0.023710s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023763s |  0.00% |  0.12% )   ( 0.023712s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023779s |  0.00% |  0.12% )   ( 0.023727s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023740s |  0.00% |  0.12% )   ( 0.023688s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002187s |  0.00% |  0.00% )   ( 0.002457s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   true
38.5.0:         ( 0.001931s |  0.00% |  0.00% )   ( 0.002196s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002297s |  0.00% |  0.00% )   ( 0.002569s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p8
41.5.0:         ( 0.127162s |  0.01% |  0.05% )   ( 0.003076s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002045s |  0.00% |  0.00% )   ( 0.002306s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.001891s |  0.00% |  0.00% )   ( 0.002137s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.001752s |  0.00% |  0.00% )   ( 0.002003s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001903s |  0.00% |  0.00% )   ( 0.002154s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.017209s |  0.00% |  0.00% )   ( 0.014402s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001744s |  0.00% |  0.00% )   ( 0.001990s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001679s |  0.00% |  0.00% )   ( 0.001899s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.001963s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002075s |  0.00% |  0.00% )   ( 0.002299s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p8
66.5.0:         ( 0.001744s |  0.00% |  0.00% )   ( 0.001986s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001668s |  0.00% |  0.00% )   ( 0.001910s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.555563s |  1.68% |  8.19% )   ( 18.335295s |  1.83% |  8.25% )    	(12x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001822s |  0.00% |  0.00% )   ( 0.002087s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.192405s |  0.10% |  6.42% )   ( 1.154682s |  0.11% |  6.29% )    	(12x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.416230s |  0.21% | 13.02% )   ( 2.385449s |  0.23% | 13.01% )    	(12x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.734744s |  0.15% |  9.34% )   ( 1.717583s |  0.17% |  9.36% )    	(12x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.385722s |  0.21% | 12.85% )   ( 2.368784s |  0.23% | 12.91% )    	(12x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.717309s |  0.15% |  9.25% )   ( 1.700430s |  0.17% |  9.27% )    	(12x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.050859s |  0.09% |  5.66% )   ( 1.040223s |  0.10% |  5.67% )    	(12x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.351055s |  0.03% |  1.89% )   ( 0.339230s |  0.03% |  1.85% )    	(12x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.211690s |  0.11% |  6.53% )   ( 1.199979s |  0.12% |  6.54% )    	(12x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.281741s |  0.02% |  1.51% )   ( 0.277912s |  0.02% |  1.51% )    	(12x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.482409s |  0.13% |  7.98% )   ( 1.468347s |  0.14% |  8.00% )    	(12x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.088115s |  0.37% | 22.03% )   ( 4.059780s |  0.40% | 22.14% )    	(12x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.331255s |  0.03% |  1.78% )   ( 0.327735s |  0.03% |  1.78% )    	(12x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.310207s |  0.02% |  1.67% )   ( 0.293074s |  0.02% |  1.59% )    	(12x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001819s |  0.00% |  0.00% )   ( 0.002054s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001599s |  0.00% |  0.00% )   ( 0.001823s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003513s |  0.00% |  0.00% )   ( 0.002031s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008274s |  0.00% |  0.04% )   ( 0.008339s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p8\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.283221s |  1.57% |  3.13% )   ( 16.184195s |  1.61% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000662s |  0.00% |  0.00% )   ( 0.000678s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.282148s |  1.57% | 99.99% )   ( 16.183416s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p9
30.5.0:         ( 0.023804s |  0.00% |  0.13% )   ( 0.023752s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023802s |  0.00% |  0.13% )   ( 0.023752s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023800s |  0.00% |  0.13% )   ( 0.023745s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023785s |  0.00% |  0.13% )   ( 0.023735s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023701s |  0.00% |  0.13% )   ( 0.023649s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004966s |  0.00% |  0.00% )   ( 0.005556s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005188s |  0.00% |  0.00% )   ( 0.005777s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p9
41.5.0:         ( 0.508854s |  0.04% |  0.09% )   ( 0.007674s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005040s |  0.00% |  0.00% )   ( 0.005651s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004649s |  0.00% |  0.00% )   ( 0.005241s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004624s |  0.00% |  0.00% )   ( 0.005208s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036179s |  0.00% |  0.00% )   ( 0.036680s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004439s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004307s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007888s |  0.00% |  0.00% )   ( 0.005344s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005351s |  0.00% |  0.00% )   ( 0.005953s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p9
66.5.0:         ( 0.004337s |  0.00% |  0.00% )   ( 0.004952s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004148s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.531917s |  1.50% |  3.29% )   ( 15.927987s |  1.59% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004289s |  0.00% |  0.02% )   ( 0.004868s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.124122s |  0.10% |  6.79% )   ( 1.068722s |  0.10% |  6.70% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.878859s |  0.17% | 11.36% )   ( 1.763881s |  0.17% | 11.07% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.586815s |  0.14% |  9.59% )   ( 1.528166s |  0.15% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.771753s |  0.16% | 10.71% )   ( 1.757345s |  0.17% | 11.03% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.492728s |  0.13% |  9.02% )   ( 1.462905s |  0.14% |  9.18% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.050276s |  0.09% |  6.35% )   ( 0.998359s |  0.09% |  6.26% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.570342s |  0.05% |  3.44% )   ( 0.567124s |  0.05% |  3.56% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.026271s |  0.09% |  6.20% )   ( 0.997934s |  0.09% |  6.26% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.550205s |  0.04% |  3.32% )   ( 0.506090s |  0.05% |  3.17% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.423291s |  0.12% |  8.60% )   ( 1.351484s |  0.13% |  8.48% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.867735s |  0.26% | 17.34% )   ( 2.802391s |  0.28% | 17.59% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.608061s |  0.05% |  3.67% )   ( 0.563455s |  0.05% |  3.53% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.577170s |  0.05% |  3.49% )   ( 0.555263s |  0.05% |  3.48% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004083s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.004999s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000213s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit
80.5.0:         ( 0.000250s |  0.00% |  0.00% )   ( 0.000273s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p* 1>&21
81.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.008418s |  0.00% |  0.04% )   ( 0.008325s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p9\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.867742s |  1.62% |  3.24% )   ( 16.917108s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000674s |  0.00% |  0.00% )   ( 0.000694s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.866481s |  1.62% | 99.99% )   ( 16.916315s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000237s |  0.00% |  0.00% )   ( 0.000270s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000245s |  0.00% |  0.00% )   ( 0.000276s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p10
30.5.0:         ( 0.024244s |  0.00% |  0.13% )   ( 0.024191s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023778s |  0.00% |  0.13% )   ( 0.023727s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023836s |  0.00% |  0.13% )   ( 0.023782s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023771s |  0.00% |  0.13% )   ( 0.023716s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023821s |  0.00% |  0.13% )   ( 0.023768s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004357s |  0.00% |  0.00% )   ( 0.004874s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004808s |  0.00% |  0.00% )   ( 0.005332s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p10
41.5.0:         ( 0.273743s |  0.02% |  0.05% )   ( 0.006406s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004544s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003730s |  0.00% |  0.00% )   ( 0.004238s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003386s |  0.00% |  0.00% )   ( 0.003838s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003707s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030075s |  0.00% |  0.00% )   ( 0.030471s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003570s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010876s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004834s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p10
66.5.0:         ( 0.003711s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003494s |  0.00% |  0.00% )   ( 0.003975s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.365327s |  1.57% |  3.88% )   ( 16.684273s |  1.66% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003549s |  0.00% |  0.02% )   ( 0.004049s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.125980s |  0.10% |  6.48% )   ( 1.095486s |  0.10% |  6.56% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.016972s |  0.18% | 11.61% )   ( 1.901612s |  0.19% | 11.39% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.716204s |  0.15% |  9.88% )   ( 1.617580s |  0.16% |  9.69% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.958826s |  0.17% | 11.28% )   ( 1.904955s |  0.19% | 11.41% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.605070s |  0.14% |  9.24% )   ( 1.546673s |  0.15% |  9.27% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.028336s |  0.09% |  5.92% )   ( 0.991169s |  0.09% |  5.94% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.540372s |  0.04% |  3.11% )   ( 0.513358s |  0.05% |  3.07% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.102366s |  0.10% |  6.34% )   ( 1.066224s |  0.10% |  6.39% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.451955s |  0.04% |  2.60% )   ( 0.454219s |  0.04% |  2.72% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442231s |  0.13% |  8.30% )   ( 1.405285s |  0.14% |  8.42% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.328509s |  0.30% | 19.16% )   ( 3.185184s |  0.31% | 19.09% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.528563s |  0.04% |  3.04% )   ( 0.514369s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.516394s |  0.04% |  2.97% )   ( 0.484110s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003574s |  0.00% |  0.00% )   ( 0.004037s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006958s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000105s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004984s |  0.00% |  0.02% )   ( 0.005076s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p10\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 20.128274s |  1.82% |  3.65% )   ( 18.977515s |  1.89% |  3.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000698s |  0.00% |  0.00% )   ( 0.000714s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 20.126579s |  1.82% | 99.99% )   ( 18.976704s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p11
30.5.0:         ( 0.024067s |  0.00% |  0.11% )   ( 0.023984s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023838s |  0.00% |  0.11% )   ( 0.023790s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.023902s |  0.00% |  0.11% )   ( 0.023851s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023895s |  0.00% |  0.11% )   ( 0.023848s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.023736s |  0.00% |  0.11% )   ( 0.023691s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004810s |  0.00% |  0.00% )   ( 0.005370s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005039s |  0.00% |  0.00% )   ( 0.005616s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p11
41.5.0:         ( 0.476116s |  0.04% |  0.08% )   ( 0.007394s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004807s |  0.00% |  0.00% )   ( 0.005384s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004458s |  0.00% |  0.00% )   ( 0.005031s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004262s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043941s |  0.00% |  0.00% )   ( 0.035401s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004108s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007412s |  0.00% |  0.00% )   ( 0.004960s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004908s |  0.00% |  0.00% )   ( 0.005470s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p11
66.5.0:         ( 0.006942s |  0.00% |  0.00% )   ( 0.004468s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004554s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.402482s |  1.76% |  3.44% )   ( 18.730129s |  1.87% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007322s |  0.00% |  0.03% )   ( 0.004882s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.346936s |  0.12% |  6.94% )   ( 1.315525s |  0.13% |  7.02% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.306536s |  0.20% | 11.88% )   ( 2.246785s |  0.22% | 11.99% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.773008s |  0.16% |  9.13% )   ( 1.732707s |  0.17% |  9.25% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.145483s |  0.19% | 11.05% )   ( 2.100491s |  0.21% | 11.21% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.731437s |  0.15% |  8.92% )   ( 1.684585s |  0.16% |  8.99% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.268020s |  0.11% |  6.53% )   ( 1.204875s |  0.12% |  6.43% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.625736s |  0.05% |  3.22% )   ( 0.574510s |  0.05% |  3.06% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.291123s |  0.11% |  6.65% )   ( 1.231075s |  0.12% |  6.57% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.539675s |  0.04% |  2.78% )   ( 0.515139s |  0.05% |  2.75% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.577313s |  0.14% |  8.12% )   ( 1.541372s |  0.15% |  8.22% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.517369s |  0.31% | 18.12% )   ( 3.437806s |  0.34% | 18.35% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.651101s |  0.05% |  3.35% )   ( 0.577111s |  0.05% |  3.08% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.621423s |  0.05% |  3.20% )   ( 0.563266s |  0.05% |  3.00% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004630s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007395s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005028s |  0.00% |  0.02% )   ( 0.005087s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p11\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 18.020037s |  1.63% |  3.26% )   ( 17.303657s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000837s |  0.00% |  0.00% )   ( 0.000862s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 18.017366s |  1.63% | 99.98% )   ( 17.302599s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p12
30.5.0:         ( 0.045608s |  0.00% |  0.25% )   ( 0.045452s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045572s |  0.00% |  0.25% )   ( 0.045396s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.045698s |  0.00% |  0.25% )   ( 0.045545s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.045556s |  0.00% |  0.25% )   ( 0.045394s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.045714s |  0.00% |  0.25% )   ( 0.045552s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003909s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003198s |  0.00% |  0.00% )   ( 0.003634s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003810s |  0.00% |  0.00% )   ( 0.004245s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p12
41.5.0:         ( 0.324676s |  0.02% |  0.08% )   ( 0.005132s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004016s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003191s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004884s |  0.00% |  0.00% )   ( 0.003245s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030697s |  0.00% |  0.00% )   ( 0.025110s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002868s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002809s |  0.00% |  0.00% )   ( 0.003186s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006194s |  0.00% |  0.00% )   ( 0.003512s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003521s |  0.00% |  0.00% )   ( 0.003941s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p12
66.5.0:         ( 0.002884s |  0.00% |  0.00% )   ( 0.003273s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002852s |  0.00% |  0.00% )   ( 0.003272s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.364732s |  1.57% |  4.81% )   ( 16.977193s |  1.69% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002951s |  0.00% |  0.01% )   ( 0.003353s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.178041s |  0.10% |  6.78% )   ( 1.126167s |  0.11% |  6.63% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.123771s |  0.19% | 12.23% )   ( 2.068389s |  0.20% | 12.18% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629932s |  0.14% |  9.38% )   ( 1.609121s |  0.16% |  9.47% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.024663s |  0.18% | 11.65% )   ( 2.013177s |  0.20% | 11.85% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611779s |  0.14% |  9.28% )   ( 1.591612s |  0.15% |  9.37% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.003906s |  0.09% |  5.78% )   ( 0.999061s |  0.09% |  5.88% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.476224s |  0.04% |  2.74% )   ( 0.454128s |  0.04% |  2.67% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.087575s |  0.09% |  6.26% )   ( 1.074640s |  0.10% |  6.32% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.405896s |  0.03% |  2.33% )   ( 0.386445s |  0.03% |  2.27% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.418655s |  0.12% |  8.16% )   ( 1.386354s |  0.13% |  8.16% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.470025s |  0.31% | 19.98% )   ( 3.422665s |  0.34% | 20.16% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.486045s |  0.04% |  2.79% )   ( 0.435951s |  0.04% |  2.56% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.445269s |  0.04% |  2.56% )   ( 0.406130s |  0.04% |  2.39% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002895s |  0.00% |  0.00% )   ( 0.003274s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.005045s |  0.00% |  0.00% )   ( 0.003144s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003003s |  0.00% |  0.00% )   ( 0.003373s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009828s |  0.00% |  0.05% )   ( 0.009904s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p12\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000180s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.770721s |  1.61% |  3.22% )   ( 16.532085s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000929s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.768372s |  1.61% | 99.98% )   ( 16.531576s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p13
30.5.0:         ( 0.023970s |  0.00% |  0.13% )   ( 0.023875s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037142s |  0.00% |  0.20% )   ( 0.037012s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.024562s |  0.00% |  0.13% )   ( 0.024504s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.027720s |  0.00% |  0.15% )   ( 0.027629s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.029645s |  0.00% |  0.16% )   ( 0.029553s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003868s |  0.00% |  0.00% )   ( 0.004337s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003474s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004213s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p13
41.5.0:         ( 0.346727s |  0.03% |  0.08% )   ( 0.006133s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003847s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003530s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003797s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003579s |  0.00% |  0.00% )   ( 0.004038s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027713s |  0.00% |  0.00% )   ( 0.028088s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003616s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003137s |  0.00% |  0.00% )   ( 0.003560s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007587s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004102s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p13
66.5.0:         ( 0.003287s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003202s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.180373s |  1.56% |  4.20% )   ( 16.280869s |  1.62% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003423s |  0.00% |  0.01% )   ( 0.003892s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120999s |  0.10% |  6.52% )   ( 1.073655s |  0.10% |  6.59% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.961673s |  0.17% | 11.41% )   ( 1.890061s |  0.18% | 11.60% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.622055s |  0.14% |  9.44% )   ( 1.566271s |  0.15% |  9.62% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.028737s |  0.18% | 11.80% )   ( 1.904353s |  0.19% | 11.69% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611475s |  0.14% |  9.37% )   ( 1.521719s |  0.15% |  9.34% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.048519s |  0.09% |  6.10% )   ( 0.991495s |  0.09% |  6.08% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.505494s |  0.04% |  2.94% )   ( 0.484503s |  0.04% |  2.97% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.097942s |  0.09% |  6.39% )   ( 1.022952s |  0.10% |  6.28% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462906s |  0.04% |  2.69% )   ( 0.421321s |  0.04% |  2.58% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.374422s |  0.12% |  7.99% )   ( 1.345920s |  0.13% |  8.26% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.356955s |  0.30% | 19.53% )   ( 3.120280s |  0.31% | 19.16% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.496154s |  0.04% |  2.88% )   ( 0.475170s |  0.04% |  2.91% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.489619s |  0.04% |  2.84% )   ( 0.459277s |  0.04% |  2.82% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003172s |  0.00% |  0.00% )   ( 0.003625s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003502s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009169s |  0.00% |  0.05% )   ( 0.009251s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p13\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.767237s |  1.61% |  3.22% )   ( 16.694845s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000963s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.764520s |  1.61% | 99.98% )   ( 16.694333s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p14
30.5.0:         ( 0.037961s |  0.00% |  0.21% )   ( 0.037834s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029291s |  0.00% |  0.16% )   ( 0.029194s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.025659s |  0.00% |  0.14% )   ( 0.025590s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.026956s |  0.00% |  0.15% )   ( 0.026873s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.029095s |  0.00% |  0.16% )   ( 0.029001s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004982s |  0.00% |  0.00% )   ( 0.005588s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004588s |  0.00% |  0.00% )   ( 0.005159s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005302s |  0.00% |  0.00% )   ( 0.005927s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p14
41.5.0:         ( 0.360311s |  0.03% |  0.06% )   ( 0.007075s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004792s |  0.00% |  0.00% )   ( 0.005373s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004481s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004245s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037145s |  0.00% |  0.00% )   ( 0.034612s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004035s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004292s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004993s |  0.00% |  0.00% )   ( 0.005580s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p14
66.5.0:         ( 0.004123s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.136053s |  1.55% |  3.32% )   ( 16.412787s |  1.64% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007188s |  0.00% |  0.04% )   ( 0.004753s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.164058s |  0.10% |  6.79% )   ( 1.106142s |  0.11% |  6.73% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.941406s |  0.17% | 11.32% )   ( 1.872330s |  0.18% | 11.40% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.698468s |  0.15% |  9.91% )   ( 1.583826s |  0.15% |  9.64% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.876109s |  0.17% | 10.94% )   ( 1.825960s |  0.18% | 11.12% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.555928s |  0.14% |  9.07% )   ( 1.502743s |  0.15% |  9.15% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.040229s |  0.09% |  6.07% )   ( 1.017503s |  0.10% |  6.19% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.572635s |  0.05% |  3.34% )   ( 0.565562s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.136057s |  0.10% |  6.62% )   ( 1.045496s |  0.10% |  6.37% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549424s |  0.04% |  3.20% )   ( 0.514712s |  0.05% |  3.13% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.469586s |  0.13% |  8.57% )   ( 1.385729s |  0.13% |  8.44% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.945118s |  0.26% | 17.18% )   ( 2.862737s |  0.28% | 17.44% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.579832s |  0.05% |  3.38% )   ( 0.567142s |  0.05% |  3.45% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.600015s |  0.05% |  3.50% )   ( 0.558152s |  0.05% |  3.40% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004389s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004061s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004472s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009635s |  0.00% |  0.05% )   ( 0.009686s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p14\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.929807s |  1.62% |  3.25% )   ( 16.866997s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001035s |  0.00% |  0.00% )   ( 0.001062s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.927070s |  1.62% | 99.98% )   ( 16.865771s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p15
30.5.0:         ( 0.040111s |  0.00% |  0.22% )   ( 0.039985s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023890s |  0.00% |  0.13% )   ( 0.023830s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.026211s |  0.00% |  0.14% )   ( 0.026144s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.023909s |  0.00% |  0.13% )   ( 0.023841s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.024589s |  0.00% |  0.13% )   ( 0.024532s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004442s |  0.00% |  0.00% )   ( 0.004966s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004873s |  0.00% |  0.00% )   ( 0.005431s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p15
41.5.0:         ( 0.419722s |  0.03% |  0.08% )   ( 0.006862s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004726s |  0.00% |  0.00% )   ( 0.005283s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030450s |  0.00% |  0.00% )   ( 0.030882s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003826s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005308s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004726s |  0.00% |  0.00% )   ( 0.005279s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p15
66.5.0:         ( 0.003853s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003608s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.265995s |  1.56% |  3.70% )   ( 16.610225s |  1.66% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003795s |  0.00% |  0.02% )   ( 0.004311s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.238210s |  0.11% |  7.17% )   ( 1.103906s |  0.11% |  6.64% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.936239s |  0.17% | 11.21% )   ( 1.903538s |  0.19% | 11.46% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.619546s |  0.14% |  9.37% )   ( 1.607951s |  0.16% |  9.68% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.993681s |  0.18% | 11.54% )   ( 1.917263s |  0.19% | 11.54% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.619685s |  0.14% |  9.38% )   ( 1.559791s |  0.15% |  9.39% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.065544s |  0.09% |  6.17% )   ( 1.017731s |  0.10% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.570472s |  0.05% |  3.30% )   ( 0.533068s |  0.05% |  3.20% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.095517s |  0.09% |  6.34% )   ( 1.060500s |  0.10% |  6.38% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.494534s |  0.04% |  2.86% )   ( 0.465443s |  0.04% |  2.80% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.413216s |  0.12% |  8.18% )   ( 1.389536s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.108414s |  0.28% | 18.00% )   ( 3.027498s |  0.30% | 18.22% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.550488s |  0.05% |  3.18% )   ( 0.518448s |  0.05% |  3.12% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.556654s |  0.05% |  3.22% )   ( 0.501241s |  0.05% |  3.01% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003747s |  0.00% |  0.00% )   ( 0.004256s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004887s |  0.00% |  0.02% )   ( 0.004958s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p15\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.686867s |  1.60% |  3.20% )   ( 16.437817s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000969s |  0.00% |  0.00% )   ( 0.000356s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.684494s |  1.60% | 99.98% )   ( 16.437297s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p16
30.5.0:         ( 0.040054s |  0.00% |  0.22% )   ( 0.039907s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024125s |  0.00% |  0.13% )   ( 0.024059s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.026704s |  0.00% |  0.15% )   ( 0.026625s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.037532s |  0.00% |  0.21% )   ( 0.037393s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.033502s |  0.00% |  0.18% )   ( 0.033396s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004744s |  0.00% |  0.00% )   ( 0.005345s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004356s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005302s |  0.00% |  0.00% )   ( 0.005888s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p16
41.5.0:         ( 0.479699s |  0.04% |  0.09% )   ( 0.007530s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004515s |  0.00% |  0.00% )   ( 0.005061s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004315s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004228s |  0.00% |  0.00% )   ( 0.004756s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036624s |  0.00% |  0.00% )   ( 0.034068s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003792s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p16
66.5.0:         ( 0.003830s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003756s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.929286s |  1.53% |  3.54% )   ( 16.148547s |  1.61% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003917s |  0.00% |  0.02% )   ( 0.004476s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.113979s |  0.10% |  6.58% )   ( 1.064501s |  0.10% |  6.59% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.888407s |  0.17% | 11.15% )   ( 1.821140s |  0.18% | 11.27% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.592195s |  0.14% |  9.40% )   ( 1.569157s |  0.15% |  9.71% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.848292s |  0.16% | 10.91% )   ( 1.824296s |  0.18% | 11.29% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.555540s |  0.14% |  9.18% )   ( 1.506525s |  0.15% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026237s |  0.09% |  6.06% )   ( 0.989632s |  0.09% |  6.12% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.609541s |  0.05% |  3.60% )   ( 0.542305s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.090814s |  0.09% |  6.44% )   ( 1.019157s |  0.10% |  6.31% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.520746s |  0.04% |  3.07% )   ( 0.481295s |  0.04% |  2.98% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.542495s |  0.14% |  9.11% )   ( 1.372148s |  0.13% |  8.49% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.991438s |  0.27% | 17.67% )   ( 2.888913s |  0.28% | 17.88% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.571580s |  0.05% |  3.37% )   ( 0.542286s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.574105s |  0.05% |  3.39% )   ( 0.522716s |  0.05% |  3.23% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004214s |  0.00% |  0.00% )   ( 0.004778s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008630s |  0.00% |  0.04% )   ( 0.008714s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p16\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 20.099840s |  1.82% |  3.64% )   ( 19.170718s |  1.91% |  3.84% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001047s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 20.097044s |  1.82% | 99.98% )   ( 19.169501s |  1.91% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p17
30.5.0:         ( 0.043265s |  0.00% |  0.21% )   ( 0.043124s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037134s |  0.00% |  0.18% )   ( 0.037012s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.045953s |  0.00% |  0.22% )   ( 0.045786s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.029385s |  0.00% |  0.14% )   ( 0.029288s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.043002s |  0.00% |  0.21% )   ( 0.042852s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003717s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003466s |  0.00% |  0.00% )   ( 0.003894s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p17
41.5.0:         ( 0.290084s |  0.02% |  0.06% )   ( 0.005560s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003345s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003054s |  0.00% |  0.00% )   ( 0.003468s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003341s |  0.00% |  0.00% )   ( 0.003755s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028750s |  0.00% |  0.00% )   ( 0.026109s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003125s |  0.00% |  0.00% )   ( 0.003555s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003238s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004393s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p17
66.5.0:         ( 0.003035s |  0.00% |  0.00% )   ( 0.003467s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002921s |  0.00% |  0.00% )   ( 0.003333s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.518778s |  1.77% |  4.62% )   ( 18.873044s |  1.88% |  4.68% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002911s |  0.00% |  0.01% )   ( 0.003328s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.436952s |  0.13% |  7.36% )   ( 1.339521s |  0.13% |  7.09% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.617231s |  0.23% | 13.40% )   ( 2.528903s |  0.25% | 13.39% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.986907s |  0.18% | 10.17% )   ( 1.946833s |  0.19% | 10.31% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.532965s |  0.23% | 12.97% )   ( 2.464030s |  0.24% | 13.05% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.978718s |  0.17% | 10.13% )   ( 1.915529s |  0.19% | 10.14% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.288985s |  0.11% |  6.60% )   ( 1.218579s |  0.12% |  6.45% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547750s |  0.04% |  2.80% )   ( 0.493168s |  0.04% |  2.61% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.271198s |  0.11% |  6.51% )   ( 1.240794s |  0.12% |  6.57% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.435841s |  0.03% |  2.23% )   ( 0.407605s |  0.04% |  2.15% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.340111s |  0.12% |  6.86% )   ( 1.330676s |  0.13% |  7.05% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.106167s |  0.28% | 15.91% )   ( 3.082654s |  0.30% | 16.33% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.496750s |  0.04% |  2.54% )   ( 0.463182s |  0.04% |  2.45% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.476292s |  0.04% |  2.44% )   ( 0.438242s |  0.04% |  2.32% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002854s |  0.00% |  0.00% )   ( 0.003239s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003499s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005015s |  0.00% |  0.02% )   ( 0.005084s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p17\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.745133s |  1.61% |  3.21% )   ( 16.562874s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001050s |  0.00% |  0.00% )   ( 0.001073s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.742389s |  1.61% | 99.98% )   ( 16.561632s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000198s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p18
30.5.0:         ( 0.045775s |  0.00% |  0.25% )   ( 0.045625s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037134s |  0.00% |  0.20% )   ( 0.037007s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.045229s |  0.00% |  0.25% )   ( 0.045085s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.045114s |  0.00% |  0.25% )   ( 0.044973s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.045131s |  0.00% |  0.25% )   ( 0.044803s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004123s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003428s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004334s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p18
41.5.0:         ( 0.426831s |  0.03% |  0.09% )   ( 0.006625s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032082s |  0.00% |  0.00% )   ( 0.031389s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003529s |  0.00% |  0.00% )   ( 0.003984s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003983s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004896s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004408s |  0.00% |  0.00% )   ( 0.004917s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p18
66.5.0:         ( 0.003573s |  0.00% |  0.00% )   ( 0.004039s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004018s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.995942s |  1.54% |  3.99% )   ( 16.230793s |  1.62% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003621s |  0.00% |  0.02% )   ( 0.004123s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.140356s |  0.10% |  6.70% )   ( 1.064068s |  0.10% |  6.55% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.971782s |  0.17% | 11.60% )   ( 1.886757s |  0.18% | 11.62% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.669460s |  0.15% |  9.82% )   ( 1.546811s |  0.15% |  9.53% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.927917s |  0.17% | 11.34% )   ( 1.877195s |  0.18% | 11.56% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.565789s |  0.14% |  9.21% )   ( 1.518092s |  0.15% |  9.35% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.072170s |  0.09% |  6.30% )   ( 0.990889s |  0.09% |  6.10% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512059s |  0.04% |  3.01% )   ( 0.494620s |  0.04% |  3.04% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.114506s |  0.10% |  6.55% )   ( 1.009106s |  0.10% |  6.21% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.466655s |  0.04% |  2.74% )   ( 0.435598s |  0.04% |  2.68% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.389206s |  0.12% |  8.17% )   ( 1.351597s |  0.13% |  8.32% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.121870s |  0.28% | 18.36% )   ( 3.087911s |  0.30% | 19.02% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.507524s |  0.04% |  2.98% )   ( 0.495532s |  0.04% |  3.05% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533027s |  0.04% |  3.13% )   ( 0.468494s |  0.04% |  2.88% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003437s |  0.00% |  0.00% )   ( 0.003887s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003511s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003836s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005154s |  0.00% |  0.02% )   ( 0.005230s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p18\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 19.074550s |  1.73% |  3.46% )   ( 18.068888s |  1.80% |  3.62% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001000s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 19.072116s |  1.73% | 99.98% )   ( 18.068348s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p19
30.5.0:         ( 0.040995s |  0.00% |  0.21% )   ( 0.040827s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040684s |  0.00% |  0.21% )   ( 0.040543s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.048200s |  0.00% |  0.25% )   ( 0.048042s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.041082s |  0.00% |  0.21% )   ( 0.040947s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.046969s |  0.00% |  0.24% )   ( 0.046782s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003744s |  0.00% |  0.00% )   ( 0.004245s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004429s |  0.00% |  0.00% )   ( 0.004934s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p19
41.5.0:         ( 0.374504s |  0.03% |  0.07% )   ( 0.006411s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.006918s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.006784s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.007028s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030012s |  0.00% |  0.00% )   ( 0.030432s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003518s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003589s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003727s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004520s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p19
66.5.0:         ( 0.006706s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003981s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.369498s |  1.66% |  3.85% )   ( 17.738177s |  1.77% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003723s |  0.00% |  0.02% )   ( 0.004238s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.261383s |  0.11% |  6.86% )   ( 1.246617s |  0.12% |  7.02% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.249642s |  0.20% | 12.24% )   ( 2.223932s |  0.22% | 12.53% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.806898s |  0.16% |  9.83% )   ( 1.777164s |  0.17% | 10.01% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.223488s |  0.20% | 12.10% )   ( 2.153977s |  0.21% | 12.14% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611419s |  0.14% |  8.77% )   ( 1.544595s |  0.15% |  8.70% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.169934s |  0.10% |  6.36% )   ( 1.081538s |  0.10% |  6.09% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.556765s |  0.05% |  3.03% )   ( 0.509902s |  0.05% |  2.87% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.213959s |  0.11% |  6.60% )   ( 1.127354s |  0.11% |  6.35% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475294s |  0.04% |  2.58% )   ( 0.460613s |  0.04% |  2.59% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.451713s |  0.13% |  7.90% )   ( 1.422054s |  0.14% |  8.01% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.315847s |  0.30% | 18.05% )   ( 3.183868s |  0.31% | 17.94% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.527408s |  0.04% |  2.87% )   ( 0.514281s |  0.05% |  2.89% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.502025s |  0.04% |  2.73% )   ( 0.488044s |  0.04% |  2.75% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003531s |  0.00% |  0.00% )   ( 0.004011s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003522s |  0.00% |  0.00% )   ( 0.004006s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005080s |  0.00% |  0.02% )   ( 0.005147s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p19\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 20.256126s |  1.84% |  3.67% )   ( 19.349485s |  1.93% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001066s |  0.00% |  0.00% )   ( 0.001087s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 20.253331s |  1.84% | 99.98% )   ( 19.348224s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000228s |  0.00% |  0.00% )   ( 0.000250s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p20
30.5.0:         ( 0.034698s |  0.00% |  0.17% )   ( 0.034591s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040064s |  0.00% |  0.19% )   ( 0.039930s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.048357s |  0.00% |  0.23% )   ( 0.048178s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.045158s |  0.00% |  0.22% )   ( 0.044992s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.048578s |  0.00% |  0.23% )   ( 0.048407s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004340s |  0.00% |  0.00% )   ( 0.004859s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003830s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004690s |  0.00% |  0.00% )   ( 0.005228s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p20
41.5.0:         ( 0.359994s |  0.03% |  0.06% )   ( 0.006291s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004874s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004127s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004548s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033583s |  0.00% |  0.00% )   ( 0.030659s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004283s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003702s |  0.00% |  0.00% )   ( 0.004200s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004488s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p20
66.5.0:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004186s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.573346s |  1.77% |  3.86% )   ( 19.017433s |  1.90% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003806s |  0.00% |  0.01% )   ( 0.004313s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.356730s |  0.12% |  6.93% )   ( 1.338012s |  0.13% |  7.03% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.351070s |  0.21% | 12.01% )   ( 2.245627s |  0.22% | 11.80% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.883226s |  0.17% |  9.62% )   ( 1.805290s |  0.18% |  9.49% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.251381s |  0.20% | 11.50% )   ( 2.198518s |  0.22% | 11.56% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.784393s |  0.16% |  9.11% )   ( 1.735477s |  0.17% |  9.12% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.219294s |  0.11% |  6.22% )   ( 1.200043s |  0.12% |  6.31% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.570071s |  0.05% |  2.91% )   ( 0.544122s |  0.05% |  2.86% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.295745s |  0.11% |  6.61% )   ( 1.268302s |  0.12% |  6.66% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.473947s |  0.04% |  2.42% )   ( 0.461506s |  0.04% |  2.42% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.594444s |  0.14% |  8.14% )   ( 1.557930s |  0.15% |  8.19% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.702332s |  0.33% | 18.91% )   ( 3.629824s |  0.36% | 19.08% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.539766s |  0.04% |  2.75% )   ( 0.526327s |  0.05% |  2.76% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.547141s |  0.04% |  2.79% )   ( 0.502142s |  0.05% |  2.64% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003722s |  0.00% |  0.00% )   ( 0.004185s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003881s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004819s |  0.00% |  0.02% )   ( 0.004887s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p20\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 18.984664s |  1.72% |  3.44% )   ( 17.706717s |  1.77% |  3.54% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001078s |  0.00% |  0.00% )   ( 0.001099s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 18.981773s |  1.72% | 99.98% )   ( 17.705443s |  1.77% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p21
30.5.0:         ( 0.045085s |  0.00% |  0.23% )   ( 0.044909s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045138s |  0.00% |  0.23% )   ( 0.044990s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.045158s |  0.00% |  0.23% )   ( 0.045004s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.038614s |  0.00% |  0.20% )   ( 0.038471s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.047428s |  0.00% |  0.24% )   ( 0.047262s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005058s |  0.00% |  0.00% )   ( 0.005675s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005086s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005535s |  0.00% |  0.00% )   ( 0.006132s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p21
41.5.0:         ( 0.428709s |  0.03% |  0.07% )   ( 0.007233s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004949s |  0.00% |  0.00% )   ( 0.005560s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004725s |  0.00% |  0.00% )   ( 0.005356s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.004424s |  0.00% |  0.00% )   ( 0.005049s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004771s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035543s |  0.00% |  0.00% )   ( 0.036017s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004129s |  0.00% |  0.00% )   ( 0.004684s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007469s |  0.00% |  0.00% )   ( 0.005019s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005054s |  0.00% |  0.00% )   ( 0.005631s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p21
66.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004772s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.213413s |  1.65% |  3.30% )   ( 17.352307s |  1.73% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004164s |  0.00% |  0.02% )   ( 0.004734s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.317079s |  0.11% |  7.23% )   ( 1.226045s |  0.12% |  7.06% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.060119s |  0.18% | 11.31% )   ( 1.985302s |  0.19% | 11.44% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.720250s |  0.15% |  9.44% )   ( 1.642847s |  0.16% |  9.46% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.004630s |  0.18% | 11.00% )   ( 1.907872s |  0.19% | 10.99% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.635389s |  0.14% |  8.97% )   ( 1.568678s |  0.15% |  9.04% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.148123s |  0.10% |  6.30% )   ( 1.112219s |  0.11% |  6.40% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.617996s |  0.05% |  3.39% )   ( 0.583150s |  0.05% |  3.36% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.245930s |  0.11% |  6.84% )   ( 1.138446s |  0.11% |  6.56% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.544183s |  0.04% |  2.98% )   ( 0.512881s |  0.05% |  2.95% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.538880s |  0.13% |  8.44% )   ( 1.439915s |  0.14% |  8.29% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.157734s |  0.28% | 17.33% )   ( 3.079843s |  0.30% | 17.74% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.623511s |  0.05% |  3.42% )   ( 0.586484s |  0.05% |  3.37% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.595425s |  0.05% |  3.26% )   ( 0.563891s |  0.05% |  3.24% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004430s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003998s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005416s |  0.00% |  0.02% )   ( 0.005479s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p21\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.600860s |  1.59% |  3.19% )   ( 17.013212s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000917s |  0.00% |  0.00% )   ( 0.000938s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.598069s |  1.59% | 99.98% )   ( 17.012075s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p22
30.5.0:         ( 0.045495s |  0.00% |  0.25% )   ( 0.045334s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045624s |  0.00% |  0.25% )   ( 0.045444s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.045626s |  0.00% |  0.25% )   ( 0.045458s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.044238s |  0.00% |  0.25% )   ( 0.044068s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.043738s |  0.00% |  0.24% )   ( 0.043580s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003254s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p22
41.5.0:         ( 0.197276s |  0.01% |  0.05% )   ( 0.005355s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003719s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.003340s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003134s |  0.00% |  0.00% )   ( 0.003562s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003845s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025595s |  0.00% |  0.00% )   ( 0.025919s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003031s |  0.00% |  0.00% )   ( 0.003440s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003458s |  0.00% |  0.00% )   ( 0.003902s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p22
66.5.0:         ( 0.003101s |  0.00% |  0.00% )   ( 0.003535s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002955s |  0.00% |  0.00% )   ( 0.003348s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.085756s |  1.55% |  4.62% )   ( 16.685069s |  1.66% |  4.67% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003120s |  0.00% |  0.01% )   ( 0.003532s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.154995s |  0.10% |  6.75% )   ( 1.105646s |  0.11% |  6.62% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.967717s |  0.17% | 11.51% )   ( 1.948918s |  0.19% | 11.68% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629829s |  0.14% |  9.53% )   ( 1.592281s |  0.15% |  9.54% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.085410s |  0.18% | 12.20% )   ( 1.999912s |  0.20% | 11.98% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597567s |  0.14% |  9.35% )   ( 1.559749s |  0.15% |  9.34% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.003417s |  0.09% |  5.87% )   ( 0.975497s |  0.09% |  5.84% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.469427s |  0.04% |  2.74% )   ( 0.456457s |  0.04% |  2.73% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091503s |  0.09% |  6.38% )   ( 1.062741s |  0.10% |  6.36% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.417866s |  0.03% |  2.44% )   ( 0.392600s |  0.03% |  2.35% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.378749s |  0.12% |  8.06% )   ( 1.366796s |  0.13% |  8.19% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.359437s |  0.30% | 19.66% )   ( 3.329323s |  0.33% | 19.95% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.466532s |  0.04% |  2.73% )   ( 0.456898s |  0.04% |  2.73% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.460187s |  0.04% |  2.69% )   ( 0.434719s |  0.04% |  2.60% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003235s |  0.00% |  0.00% )   ( 0.003674s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002871s |  0.00% |  0.00% )   ( 0.003283s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003257s |  0.00% |  0.00% )   ( 0.003652s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit
80.5.0:         ( 0.000222s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p* 1>&21
81.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009022s |  0.00% |  0.05% )   ( 0.008999s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p22\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000174s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.975079s |  1.63% |  3.26% )   ( 17.421451s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001096s |  0.00% |  0.00% )   ( 0.001120s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.972286s |  1.63% | 99.98% )   ( 17.420159s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p23
30.5.0:         ( 0.047002s |  0.00% |  0.26% )   ( 0.046823s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047249s |  0.00% |  0.26% )   ( 0.047085s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.047121s |  0.00% |  0.26% )   ( 0.046943s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.047955s |  0.00% |  0.26% )   ( 0.047776s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.049369s |  0.00% |  0.27% )   ( 0.049193s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003103s |  0.00% |  0.00% )   ( 0.003458s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002540s |  0.00% |  0.00% )   ( 0.002913s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003222s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p23
41.5.0:         ( 0.235257s |  0.02% |  0.06% )   ( 0.004380s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002993s |  0.00% |  0.00% )   ( 0.003386s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.002850s |  0.00% |  0.00% )   ( 0.003222s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.002620s |  0.00% |  0.00% )   ( 0.002966s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002691s |  0.00% |  0.00% )   ( 0.003035s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023984s |  0.00% |  0.00% )   ( 0.022372s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002666s |  0.00% |  0.00% )   ( 0.003024s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002679s |  0.00% |  0.00% )   ( 0.003020s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002809s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003115s |  0.00% |  0.00% )   ( 0.003465s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p23
66.5.0:         ( 0.002592s |  0.00% |  0.00% )   ( 0.002950s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002516s |  0.00% |  0.00% )   ( 0.002854s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.424118s |  1.58% |  5.38% )   ( 17.099502s |  1.71% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002537s |  0.00% |  0.01% )   ( 0.002877s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.152789s |  0.10% |  6.61% )   ( 1.123370s |  0.11% |  6.56% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.080360s |  0.18% | 11.93% )   ( 2.056679s |  0.20% | 12.02% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.676952s |  0.15% |  9.62% )   ( 1.631458s |  0.16% |  9.54% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.099554s |  0.19% | 12.04% )   ( 2.093229s |  0.20% | 12.24% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.617752s |  0.14% |  9.28% )   ( 1.602621s |  0.16% |  9.37% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.001751s |  0.09% |  5.74% )   ( 0.997881s |  0.09% |  5.83% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.445893s |  0.04% |  2.55% )   ( 0.433051s |  0.04% |  2.53% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.134948s |  0.10% |  6.51% )   ( 1.114559s |  0.11% |  6.51% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.402730s |  0.03% |  2.31% )   ( 0.365617s |  0.03% |  2.13% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.402929s |  0.12% |  8.05% )   ( 1.373005s |  0.13% |  8.02% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.581984s |  0.32% | 20.55% )   ( 3.516423s |  0.35% | 20.56% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.425008s |  0.03% |  2.43% )   ( 0.408053s |  0.04% |  2.38% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.398931s |  0.03% |  2.28% )   ( 0.380679s |  0.03% |  2.22% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002495s |  0.00% |  0.00% )   ( 0.002831s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002394s |  0.00% |  0.00% )   ( 0.002734s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002564s |  0.00% |  0.00% )   ( 0.002866s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005137s |  0.00% |  0.02% )   ( 0.005205s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p23\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.981068s |  1.63% |  3.26% )   ( 17.245060s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001048s |  0.00% |  0.00% )   ( 0.001074s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.978315s |  1.63% | 99.98% )   ( 17.243811s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000225s |  0.00% |  0.00% )   ( 0.000252s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p24
30.5.0:         ( 0.046870s |  0.00% |  0.26% )   ( 0.046687s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045873s |  0.00% |  0.25% )   ( 0.045680s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.044344s |  0.00% |  0.24% )   ( 0.044178s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.044882s |  0.00% |  0.24% )   ( 0.044733s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.044968s |  0.00% |  0.25% )   ( 0.044820s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.006169s |  0.00% |  0.00% )   ( 0.003555s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002684s |  0.00% |  0.00% )   ( 0.003040s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003562s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p24
41.5.0:         ( 0.270194s |  0.02% |  0.08% )   ( 0.004581s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002931s |  0.00% |  0.00% )   ( 0.003310s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.002799s |  0.00% |  0.00% )   ( 0.003159s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.002335s |  0.00% |  0.00% )   ( 0.002643s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002538s |  0.00% |  0.00% )   ( 0.002873s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025101s |  0.00% |  0.00% )   ( 0.019969s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002338s |  0.00% |  0.00% )   ( 0.002664s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002299s |  0.00% |  0.00% )   ( 0.002631s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002412s |  0.00% |  0.00% )   ( 0.002709s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002984s |  0.00% |  0.00% )   ( 0.003301s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p24
66.5.0:         ( 0.002406s |  0.00% |  0.00% )   ( 0.002733s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002471s |  0.00% |  0.00% )   ( 0.002814s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.400565s |  1.58% |  5.69% )   ( 16.934981s |  1.69% |  5.77% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002368s |  0.00% |  0.01% )   ( 0.002697s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.147752s |  0.10% |  6.59% )   ( 1.108337s |  0.11% |  6.54% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.110332s |  0.19% | 12.12% )   ( 2.054569s |  0.20% | 12.13% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.632377s |  0.14% |  9.38% )   ( 1.619128s |  0.16% |  9.56% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.109903s |  0.19% | 12.12% )   ( 2.076585s |  0.20% | 12.26% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.627094s |  0.14% |  9.35% )   ( 1.587580s |  0.15% |  9.37% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.028716s |  0.09% |  5.91% )   ( 0.995610s |  0.09% |  5.87% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.430345s |  0.03% |  2.47% )   ( 0.404935s |  0.04% |  2.39% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106053s |  0.10% |  6.35% )   ( 1.099530s |  0.11% |  6.49% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.366373s |  0.03% |  2.10% )   ( 0.347079s |  0.03% |  2.04% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.471557s |  0.13% |  8.45% )   ( 1.380749s |  0.13% |  8.15% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.594993s |  0.32% | 20.66% )   ( 3.511372s |  0.35% | 20.73% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.399626s |  0.03% |  2.29% )   ( 0.386658s |  0.03% |  2.28% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.373076s |  0.03% |  2.14% )   ( 0.360152s |  0.03% |  2.12% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002526s |  0.00% |  0.00% )   ( 0.002848s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002303s |  0.00% |  0.00% )   ( 0.002621s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002530s |  0.00% |  0.00% )   ( 0.002863s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009130s |  0.00% |  0.05% )   ( 0.009205s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p24\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.671443s |  1.60% |  3.20% )   ( 16.919372s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001080s |  0.00% |  0.00% )   ( 0.001105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.668573s |  1.60% | 99.98% )   ( 16.918091s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p25
30.5.0:         ( 0.046638s |  0.00% |  0.26% )   ( 0.040670s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051604s |  0.00% |  0.29% )   ( 0.044727s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.049848s |  0.00% |  0.28% )   ( 0.049491s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.051285s |  0.00% |  0.29% )   ( 0.050923s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.050946s |  0.00% |  0.28% )   ( 0.050551s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004441s |  0.00% |  0.00% )   ( 0.004976s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003852s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004724s |  0.00% |  0.00% )   ( 0.005267s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p25
41.5.0:         ( 0.327279s |  0.02% |  0.07% )   ( 0.006648s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004257s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004547s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004125s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004409s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029294s |  0.00% |  0.00% )   ( 0.029657s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004445s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004326s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004165s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004670s |  0.00% |  0.00% )   ( 0.005167s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p25
66.5.0:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003541s |  0.00% |  0.00% )   ( 0.004029s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.988466s |  1.54% |  3.84% )   ( 16.563762s |  1.65% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003541s |  0.00% |  0.02% )   ( 0.004016s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.155964s |  0.10% |  6.80% )   ( 1.117369s |  0.11% |  6.74% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.969754s |  0.17% | 11.59% )   ( 1.953713s |  0.19% | 11.79% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.643986s |  0.14% |  9.67% )   ( 1.597377s |  0.15% |  9.64% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.922817s |  0.17% | 11.31% )   ( 1.889442s |  0.18% | 11.40% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.568678s |  0.14% |  9.23% )   ( 1.530034s |  0.15% |  9.23% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.038781s |  0.09% |  6.11% )   ( 0.991426s |  0.09% |  5.98% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512511s |  0.04% |  3.01% )   ( 0.501346s |  0.05% |  3.02% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.070011s |  0.09% |  6.29% )   ( 1.042387s |  0.10% |  6.29% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462737s |  0.04% |  2.72% )   ( 0.442346s |  0.04% |  2.67% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.441769s |  0.13% |  8.48% )   ( 1.383796s |  0.13% |  8.35% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.203881s |  0.29% | 18.85% )   ( 3.118499s |  0.31% | 18.82% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.510212s |  0.04% |  3.00% )   ( 0.511127s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483824s |  0.04% |  2.84% )   ( 0.480884s |  0.04% |  2.90% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004183s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003458s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003874s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008003s |  0.00% |  0.04% )   ( 0.008071s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p25\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.971192s |  1.63% |  3.26% )   ( 17.528235s |  1.75% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001089s |  0.00% |  0.00% )   ( 0.001117s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.968439s |  1.63% | 99.98% )   ( 17.526948s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p26
30.5.0:         ( 0.050797s |  0.00% |  0.28% )   ( 0.047598s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045251s |  0.00% |  0.25% )   ( 0.045080s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.047525s |  0.00% |  0.26% )   ( 0.047339s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.048444s |  0.00% |  0.26% )   ( 0.048269s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.045336s |  0.00% |  0.25% )   ( 0.045161s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002857s |  0.00% |  0.00% )   ( 0.003191s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002618s |  0.00% |  0.00% )   ( 0.002951s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003197s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p26
41.5.0:         ( 0.125339s |  0.01% |  0.04% )   ( 0.003759s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002709s |  0.00% |  0.00% )   ( 0.003076s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.002405s |  0.00% |  0.00% )   ( 0.002716s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.002222s |  0.00% |  0.00% )   ( 0.002532s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002628s |  0.00% |  0.00% )   ( 0.002888s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020394s |  0.00% |  0.00% )   ( 0.019924s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002271s |  0.00% |  0.00% )   ( 0.002602s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002345s |  0.00% |  0.00% )   ( 0.002604s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.010201s |  0.00% |  0.00% )   ( 0.002999s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002780s |  0.00% |  0.00% )   ( 0.003111s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p26
66.5.0:         ( 0.002309s |  0.00% |  0.00% )   ( 0.002620s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002214s |  0.00% |  0.00% )   ( 0.002526s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.527810s |  1.59% |  6.09% )   ( 17.214442s |  1.72% |  6.13% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002371s |  0.00% |  0.01% )   ( 0.002698s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.161926s |  0.10% |  6.62% )   ( 1.134072s |  0.11% |  6.58% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.221346s |  0.20% | 12.67% )   ( 2.173435s |  0.21% | 12.62% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.650822s |  0.14% |  9.41% )   ( 1.627321s |  0.16% |  9.45% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.165916s |  0.19% | 12.35% )   ( 2.131323s |  0.21% | 12.38% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.613747s |  0.14% |  9.20% )   ( 1.593655s |  0.15% |  9.25% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.987771s |  0.08% |  5.63% )   ( 0.983204s |  0.09% |  5.71% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.411417s |  0.03% |  2.34% )   ( 0.403260s |  0.04% |  2.34% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.114287s |  0.10% |  6.35% )   ( 1.094238s |  0.10% |  6.35% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.340331s |  0.03% |  1.94% )   ( 0.324776s |  0.03% |  1.88% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.406954s |  0.12% |  8.02% )   ( 1.376468s |  0.13% |  7.99% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.695540s |  0.33% | 21.08% )   ( 3.662612s |  0.36% | 21.27% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.387254s |  0.03% |  2.20% )   ( 0.369706s |  0.03% |  2.14% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.368128s |  0.03% |  2.10% )   ( 0.337674s |  0.03% |  1.96% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002542s |  0.00% |  0.00% )   ( 0.002889s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002126s |  0.00% |  0.00% )   ( 0.002401s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002382s |  0.00% |  0.00% )   ( 0.002682s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008185s |  0.00% |  0.04% )   ( 0.008262s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p26\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 20.723047s |  1.88% |  3.75% )   ( 20.046299s |  2.00% |  4.01% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001072s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 20.720163s |  1.88% | 99.98% )   ( 20.045033s |  2.00% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.cRBsU6"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p27
30.5.0:         ( 0.062667s |  0.00% |  0.30% )   ( 0.045174s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044941s |  0.00% |  0.21% )   ( 0.044789s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3063572 ${BASHPID}' INT
33.5.0:         ( 0.044954s |  0.00% |  0.21% )   ( 0.044801s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3063572 ${BASHPID}' TERM
34.5.0:         ( 0.051869s |  0.00% |  0.25% )   ( 0.051670s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3063572 ${BASHPID}' HUP
35.5.0:         ( 0.049561s |  0.00% |  0.23% )   ( 0.049382s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003051s |  0.00% |  0.00% )   ( 0.003411s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002700s |  0.00% |  0.00% )   ( 0.003068s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.cRBsU6"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p27
41.5.0:         ( 0.265411s |  0.02% |  0.07% )   ( 0.004722s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002913s |  0.00% |  0.00% )   ( 0.003263s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.quit ]]
46.5.0:         ( 0.002661s |  0.00% |  0.00% )   ( 0.003016s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.done ]]
46.5.1:         ( 0.002571s |  0.00% |  0.00% )   ( 0.002899s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002645s |  0.00% |  0.00% )   ( 0.002994s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021253s |  0.00% |  0.00% )   ( 0.021044s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002444s |  0.00% |  0.00% )   ( 0.002788s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002572s |  0.00% |  0.00% )   ( 0.002887s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003510s |  0.00% |  0.00% )   ( 0.003098s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003200s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.cRBsU6"/.wait/p27
66.5.0:         ( 0.002458s |  0.00% |  0.00% )   ( 0.002796s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002525s |  0.00% |  0.00% )   ( 0.002851s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.128317s |  1.82% |  5.71% )   ( 19.727265s |  1.97% |  5.78% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002379s |  0.00% |  0.01% )   ( 0.002713s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.418301s |  0.12% |  7.04% )   ( 1.410971s |  0.14% |  7.15% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.806463s |  0.25% | 13.94% )   ( 2.730274s |  0.27% | 13.84% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.120813s |  0.19% | 10.53% )   ( 2.074896s |  0.20% | 10.51% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.792594s |  0.25% | 13.87% )   ( 2.735366s |  0.27% | 13.86% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.084123s |  0.18% | 10.35% )   ( 2.031356s |  0.20% | 10.29% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.276792s |  0.11% |  6.34% )   ( 1.229501s |  0.12% |  6.23% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.420971s |  0.03% |  2.09% )   ( 0.420310s |  0.04% |  2.13% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.206284s |  0.10% |  5.99% )   ( 1.201975s |  0.12% |  6.09% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.369017s |  0.03% |  1.83% )   ( 0.357080s |  0.03% |  1.81% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.363101s |  0.12% |  6.77% )   ( 1.347736s |  0.13% |  6.83% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.429613s |  0.31% | 17.03% )   ( 3.398351s |  0.34% | 17.22% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.447455s |  0.04% |  2.22% )   ( 0.414197s |  0.04% |  2.09% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.390411s |  0.03% |  1.93% )   ( 0.372539s |  0.03% |  1.88% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002601s |  0.00% |  0.00% )   ( 0.002939s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002435s |  0.00% |  0.00% )   ( 0.002769s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002609s |  0.00% |  0.00% )   ( 0.002941s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005743s |  0.00% |  0.02% )   ( 0.005797s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p27\; $'\n'printf '\n' >&21
253.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001419s |  0.00% |  0.00% )   ( 0.001433s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.501275s |  2.22% |  4.44% )   ( 0.001803s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000293s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000286s |  0.00% |  0.00% )   ( 0.000327s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.047591s |  0.00% |  0.00% )   ( 0.047815s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.cRBsU6"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.cRBsU6"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 3063584  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.cRBsU6"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005054s |  0.00% |  0.00% )   ( 0.003349s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.cRBsU6" 2>/dev/null

10.0.0:         ( 549.216022s | 49.90% )            ( 500.057859s | 50.04% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001261s |  0.00% |  0.00% )   ( 0.001016s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 549.214761s | 49.90% | 99.99% )   ( 500.056843s | 50.04% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.039833s |  0.00% |  0.00% )   ( 0.039752s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001170s |  0.00% |  0.00% )   ( 0.000988s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008303s |  0.00% |  0.00% )   ( 0.008303s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.008303s |  0.00% |100.00% )   ( 0.008303s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001069s |  0.00% |  0.00% )   ( 0.001154s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026094s |  0.00% |  0.00% )   ( 0.000975s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 549.132687s | 49.89% | 99.98% )   ( 500.000570s | 50.04% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001889s |  0.00% |  0.00% )   ( 0.002226s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001889s |  0.00% |100.00% )   ( 0.002226s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000203s |  0.00% |  0.00% )   ( 0.017642s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.000520s |  0.00% |  0.00% )   ( 0.000295s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000117s |  0.00% |100.00% )   ( 0.000132s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000891s |  0.00% |  0.00% )   ( 0.001028s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  7.96% )   ( 0.000083s |  0.00% |  8.07% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000070s |  0.00% |  7.85% )   ( 0.000083s |  0.00% |  8.07% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.51% )   ( 0.000078s |  0.00% |  7.58% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.63% )   ( 0.000080s |  0.00% |  7.78% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.40% )   ( 0.000078s |  0.00% |  7.58% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000074s |  0.00% |  8.30% )   ( 0.000086s |  0.00% |  8.36% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000076s |  0.00% |  8.52% )   ( 0.000081s |  0.00% |  7.87% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000127s |  0.00% | 14.25% )   ( 0.000140s |  0.00% | 13.61% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.40% )   ( 0.000078s |  0.00% |  7.58% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000067s |  0.00% |  7.51% )   ( 0.000078s |  0.00% |  7.58% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000068s |  0.00% |  7.63% )   ( 0.000080s |  0.00% |  7.78% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000071s |  0.00% |  7.96% )   ( 0.000083s |  0.00% |  8.07% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.000860s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002255s |  0.00% |  0.00% )   ( 0.002345s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000290s |  0.00% | 12.86% )   ( 0.000318s |  0.00% | 13.56% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001965s |  0.00% | 87.13% )   ( 0.002027s |  0.00% | 86.43% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003283s |  0.00% |  0.00% )   ( 0.004300s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.000573s |  0.00% |  0.00% )   ( 0.000426s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000089s |  0.00% |100.00% )   ( 0.000105s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001067s |  0.00% |  0.00% )   ( 0.001157s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000507s |  0.00% |  0.00% )   ( 0.000521s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.131718s |  0.01% |  0.02% )   ( 0.131472s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000085s |  0.00% |  0.06% )   ( 0.000099s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020635s |  0.00% | 15.66% )   ( 0.020574s |  0.00% | 15.64% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.022995s |  0.00% | 17.45% )   ( 0.022951s |  0.00% | 17.45% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023002s |  0.00% | 17.46% )   ( 0.022954s |  0.00% | 17.45% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023015s |  0.00% | 17.47% )   ( 0.022967s |  0.00% | 17.46% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023138s |  0.00% | 17.56% )   ( 0.023079s |  0.00% | 17.55% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000081s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018521s |  0.00% | 14.06% )   ( 0.018481s |  0.00% | 14.05% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000116s |  0.00% |  0.08% )   ( 0.000123s |  0.00% |  0.09% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000084s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000067s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000384s |  0.00% |  0.00% )   ( 0.000417s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.079295s |  0.37% |  0.74% )   ( 1.857159s |  0.18% |  0.37% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023978s |  0.00% |  0.58% )   ( 0.023933s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023043s |  0.00% |  0.56% )   ( 0.023000s |  0.00% |  1.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023028s |  0.00% |  0.56% )   ( 0.022983s |  0.00% |  1.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023040s |  0.00% |  0.56% )   ( 0.022999s |  0.00% |  1.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.022921s |  0.00% |  0.56% )   ( 0.022883s |  0.00% |  1.23% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.091186s |  0.00% |  0.00% )   ( 0.104135s |  0.01% |  0.00% )    	(676x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.527213s |  0.22% |  0.09% )   ( 0.122610s |  0.01% |  0.00% )    	(675x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000943s |  0.00% |  0.00% )   ( 0.001068s |  0.00% |  0.00% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.090674s |  0.00% |  0.00% )   ( 0.103694s |  0.01% |  0.00% )    	(669x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.090094s |  0.00% |  0.00% )   ( 0.103312s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089944s |  0.00% |  0.00% )   ( 0.102944s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.092329s |  0.00% |  0.00% )   ( 0.105169s |  0.01% |  0.00% )    	(669x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.093172s |  0.00% |  0.00% )   ( 0.106190s |  0.01% |  0.00% )    	(669x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.088723s |  0.00% |  0.00% )   ( 0.101689s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.088351s |  0.00% |  0.00% )   ( 0.101148s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.088803s |  0.00% |  0.00% )   ( 0.101780s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.000784s |  0.00% |  0.01% )   ( 0.000512s |  0.00% |  0.02% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.003634s |  0.00% |  0.08% )   ( 0.004108s |  0.00% |  0.22% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.003634s |  0.00% |100.00% )   ( 0.004108s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088797s |  0.00% |  0.00% )   ( 0.101812s |  0.01% |  0.00% )    	(669x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.087604s |  0.00% |  0.00% )   ( 0.100632s |  0.01% |  0.00% )    	(669x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085566s |  0.00% |  0.00% )   ( 0.098018s |  0.00% |  0.00% )    	(648x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.092899s |  0.00% |  0.00% )   ( 0.106177s |  0.01% |  0.00% )    	(669x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.092306s |  0.00% |  0.00% )   ( 0.103044s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.089081s |  0.00% |  0.00% )   ( 0.101703s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.003038s |  0.00% |  0.00% )   ( 0.003463s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002977s |  0.00% |  0.00% )   ( 0.003403s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.055611s |  0.00% |  0.06% )   ( 0.043383s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003254s |  0.00% |  0.00% )   ( 0.003689s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003055s |  0.00% |  0.00% )   ( 0.003450s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003165s |  0.00% |  0.00% )   ( 0.003600s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000218s |  0.00% |  0.00% )   ( 0.000245s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.006824s |  0.00% |  0.16% )   ( 0.006904s |  0.00% |  0.37% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/pAuto
598.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.002001s |  0.00% |  0.00% )   ( 0.001226s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005672s |  0.00% |  0.00% )   ( 0.006454s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000282s |  0.00% |  4.97% )   ( 0.000311s |  0.00% |  4.81% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000189s |  0.00% |  3.33% )   ( 0.000217s |  0.00% |  3.36% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000220s |  0.00% |  3.87% )   ( 0.000248s |  0.00% |  3.84% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000546s |  0.00% |  9.62% )   ( 0.000575s |  0.00% |  8.90% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000069s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000069s |  0.00% |  1.21% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000082s |  0.00% |  1.44% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000094s |  0.00% |  1.65% )   ( 0.000106s |  0.00% |  1.64% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000074s |  0.00% |  1.30% )   ( 0.000086s |  0.00% |  1.33% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000072s |  0.00% |  1.26% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.53% )   ( 0.000098s |  0.00% |  1.51% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000077s |  0.00% |  1.35% )   ( 0.000089s |  0.00% |  1.37% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000079s |  0.00% |  1.39% )   ( 0.000091s |  0.00% |  1.40% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000080s |  0.00% |  1.41% )   ( 0.000086s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000080s |  0.00% |  1.41% )   ( 0.000091s |  0.00% |  1.40% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000078s |  0.00% |  1.37% )   ( 0.000089s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000080s |  0.00% |  1.41% )   ( 0.000091s |  0.00% |  1.40% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000092s |  0.00% |  1.62% )   ( 0.000103s |  0.00% |  1.59% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.28% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000081s |  0.00% |  1.42% )   ( 0.000092s |  0.00% |  1.42% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000088s |  0.00% |  1.55% )   ( 0.000096s |  0.00% |  1.48% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000072s |  0.00% |  1.26% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000085s |  0.00% |  1.49% )   ( 0.000091s |  0.00% |  1.40% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000089s |  0.00% |  1.56% )   ( 0.000101s |  0.00% |  1.56% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000091s |  0.00% |  1.60% )   ( 0.000100s |  0.00% |  1.54% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000085s |  0.00% |  1.49% )   ( 0.000097s |  0.00% |  1.50% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000073s |  0.00% |  1.28% )   ( 0.000085s |  0.00% |  1.31% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000082s |  0.00% |  1.27% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000068s |  0.00% |  1.19% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000099s |  0.00% |  1.74% )   ( 0.000110s |  0.00% |  1.70% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000289s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000295s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023458s |  0.00% |  0.00% )   ( 0.023409s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023395s |  0.00% |  0.00% )   ( 0.023342s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023395s |  0.00% |  0.00% )   ( 0.164494s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023030s |  0.00% |  0.00% )   ( 0.022978s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000077s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003002s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002781s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.480153s |  1.67% |  3.36% )   ( 17.814823s |  1.78% |  3.56% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000546s |  0.00% |  0.00% )   ( 0.000566s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.478840s |  1.67% | 99.99% )   ( 17.814155s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p0
30.5.0:         ( 0.023402s |  0.00% |  0.12% )   ( 0.023358s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.033928s |  0.00% |  0.18% )   ( 0.033849s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.053255s |  0.00% |  0.28% )   ( 0.053087s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.024177s |  0.00% |  0.13% )   ( 0.024008s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.036414s |  0.00% |  0.19% )   ( 0.036304s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002821s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002513s |  0.00% |  0.00% )   ( 0.002833s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000271s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003270s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p0
41.5.0:         ( 0.180647s |  0.01% |  0.05% )   ( 0.004156s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002944s |  0.00% |  0.00% )   ( 0.003313s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.002648s |  0.00% |  0.00% )   ( 0.003004s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.002437s |  0.00% |  0.00% )   ( 0.002758s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002507s |  0.00% |  0.00% )   ( 0.002837s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.017660s |  0.00% |  0.00% )   ( 0.017938s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002640s |  0.00% |  0.00% )   ( 0.002979s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003069s |  0.00% |  0.00% )   ( 0.003437s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p0
54.5.0:         ( 0.002474s |  0.00% |  0.00% )   ( 0.002816s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002373s |  0.00% |  0.00% )   ( 0.002717s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000285s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000260s |  0.00% |  0.00% )   ( 0.000298s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.062014s |  1.64% |  5.74% )   ( 17.569102s |  1.75% |  5.80% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002410s |  0.00% |  0.01% )   ( 0.002732s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.160033s |  0.10% |  6.42% )   ( 1.144264s |  0.11% |  6.51% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.172693s |  0.19% | 12.02% )   ( 2.143700s |  0.21% | 12.20% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.713648s |  0.15% |  9.48% )   ( 1.671686s |  0.16% |  9.51% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.227419s |  0.20% | 12.33% )   ( 2.182152s |  0.21% | 12.42% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.810080s |  0.16% | 10.02% )   ( 1.664838s |  0.16% |  9.47% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.061208s |  0.09% |  5.87% )   ( 1.038503s |  0.10% |  5.91% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.418550s |  0.03% |  2.31% )   ( 0.393045s |  0.03% |  2.23% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.161317s |  0.10% |  6.42% )   ( 1.113993s |  0.11% |  6.34% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.339168s |  0.03% |  1.87% )   ( 0.335407s |  0.03% |  1.90% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432459s |  0.13% |  7.93% )   ( 1.411959s |  0.14% |  8.03% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.799892s |  0.34% | 21.03% )   ( 3.739878s |  0.37% | 21.28% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.387315s |  0.03% |  2.14% )   ( 0.380266s |  0.03% |  2.16% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.375822s |  0.03% |  2.08% )   ( 0.346679s |  0.03% |  1.97% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002245s |  0.00% |  0.00% )   ( 0.002549s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002120s |  0.00% |  0.00% )   ( 0.002398s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002300s |  0.00% |  0.00% )   ( 0.002582s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009024s |  0.00% |  0.04% )   ( 0.009103s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p0\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002787s |  0.00% |  0.00% )   ( 0.003215s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.446753s |  1.58% |  3.17% )   ( 16.564266s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000557s |  0.00% |  0.00% )   ( 0.000581s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.445797s |  1.58% | 99.99% )   ( 16.563586s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p1
30.5.0:         ( 0.025936s |  0.00% |  0.14% )   ( 0.025874s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023467s |  0.00% |  0.13% )   ( 0.023419s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023582s |  0.00% |  0.13% )   ( 0.023531s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023964s |  0.00% |  0.13% )   ( 0.023915s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023956s |  0.00% |  0.13% )   ( 0.023903s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004761s |  0.00% |  0.00% )   ( 0.005329s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004752s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000233s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005265s |  0.00% |  0.00% )   ( 0.005847s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p1
41.5.0:         ( 0.249772s |  0.02% |  0.04% )   ( 0.006840s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004763s |  0.00% |  0.00% )   ( 0.005360s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004175s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004479s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038082s |  0.00% |  0.00% )   ( 0.035562s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010334s |  0.00% |  0.00% )   ( 0.005315s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004998s |  0.00% |  0.00% )   ( 0.005545s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p1
54.5.0:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 16.957908s |  1.54% |  3.47% )   ( 16.318905s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004087s |  0.00% |  0.02% )   ( 0.004648s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.181344s |  0.10% |  6.96% )   ( 1.097911s |  0.10% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.909372s |  0.17% | 11.25% )   ( 1.850666s |  0.18% | 11.34% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.611613s |  0.14% |  9.50% )   ( 1.543207s |  0.15% |  9.45% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.835913s |  0.16% | 10.82% )   ( 1.823261s |  0.18% | 11.17% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.518772s |  0.13% |  8.95% )   ( 1.485538s |  0.14% |  9.10% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026649s |  0.09% |  6.05% )   ( 0.994910s |  0.09% |  6.09% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.577787s |  0.05% |  3.40% )   ( 0.547215s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080171s |  0.09% |  6.36% )   ( 1.050887s |  0.10% |  6.43% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.494991s |  0.04% |  2.91% )   ( 0.481082s |  0.04% |  2.94% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445332s |  0.13% |  8.52% )   ( 1.382581s |  0.13% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.106613s |  0.28% | 18.31% )   ( 2.989033s |  0.29% | 18.31% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.583858s |  0.05% |  3.44% )   ( 0.540390s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.581406s |  0.05% |  3.42% )   ( 0.527576s |  0.05% |  3.23% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003721s |  0.00% |  0.00% )   ( 0.004230s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004285s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009521s |  0.00% |  0.05% )   ( 0.009593s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p1\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 20.694034s |  1.88% |  3.76% )   ( 19.903298s |  1.99% |  3.98% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000579s |  0.00% |  0.00% )   ( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 20.692689s |  1.88% | 99.99% )   ( 19.902600s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p2
30.5.0:         ( 0.024356s |  0.00% |  0.11% )   ( 0.024310s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023293s |  0.00% |  0.11% )   ( 0.023248s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023620s |  0.00% |  0.11% )   ( 0.023572s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023792s |  0.00% |  0.11% )   ( 0.023747s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023686s |  0.00% |  0.11% )   ( 0.023623s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004312s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003977s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p2
41.5.0:         ( 0.210964s |  0.01% |  0.04% )   ( 0.005241s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003571s |  0.00% |  0.00% )   ( 0.004029s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003371s |  0.00% |  0.00% )   ( 0.003810s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003008s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003365s |  0.00% |  0.00% )   ( 0.003807s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024352s |  0.00% |  0.00% )   ( 0.024737s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003480s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003941s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p2
54.5.0:         ( 0.003153s |  0.00% |  0.00% )   ( 0.003573s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003056s |  0.00% |  0.00% )   ( 0.003486s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 20.284368s |  1.84% |  4.45% )   ( 19.693414s |  1.97% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003058s |  0.00% |  0.01% )   ( 0.003493s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.487054s |  0.13% |  7.33% )   ( 1.417206s |  0.14% |  7.19% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.412839s |  0.21% | 11.89% )   ( 2.354082s |  0.23% | 11.95% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.906224s |  0.17% |  9.39% )   ( 1.833710s |  0.18% |  9.31% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.417974s |  0.21% | 11.92% )   ( 2.361959s |  0.23% | 11.99% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.833399s |  0.16% |  9.03% )   ( 1.789950s |  0.17% |  9.08% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.237472s |  0.11% |  6.10% )   ( 1.214921s |  0.12% |  6.16% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.521358s |  0.04% |  2.57% )   ( 0.498106s |  0.04% |  2.52% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.399269s |  0.12% |  6.89% )   ( 1.322048s |  0.13% |  6.71% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.440347s |  0.04% |  2.17% )   ( 0.431533s |  0.04% |  2.19% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.607530s |  0.14% |  7.92% )   ( 1.584188s |  0.15% |  8.04% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.055296s |  0.36% | 19.99% )   ( 3.955792s |  0.39% | 20.08% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.497180s |  0.04% |  2.45% )   ( 0.481348s |  0.04% |  2.44% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.465368s |  0.04% |  2.29% )   ( 0.445078s |  0.04% |  2.26% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002890s |  0.00% |  0.00% )   ( 0.003297s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003216s |  0.00% |  0.00% )   ( 0.003633s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004835s |  0.00% |  0.02% )   ( 0.004915s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p2\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.035566s |  1.63% |  3.28% )   ( 17.202001s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000613s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.034616s |  1.63% | 99.99% )   ( 17.201288s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p3
30.5.0:         ( 0.023244s |  0.00% |  0.12% )   ( 0.023196s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023476s |  0.00% |  0.13% )   ( 0.023433s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023751s |  0.00% |  0.13% )   ( 0.023704s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023740s |  0.00% |  0.13% )   ( 0.023688s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023804s |  0.00% |  0.13% )   ( 0.023754s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004700s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004357s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000268s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005198s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p3
41.5.0:         ( 0.164969s |  0.01% |  0.03% )   ( 0.006008s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.007178s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003601s |  0.00% |  0.00% )   ( 0.004104s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004134s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029788s |  0.00% |  0.00% )   ( 0.030192s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005915s |  0.00% |  0.00% )   ( 0.004378s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.004972s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p3
54.5.0:         ( 0.003528s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004211s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000264s |  0.00% |  0.00% )   ( 0.000301s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.656248s |  1.60% |  3.91% )   ( 16.979445s |  1.69% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003599s |  0.00% |  0.02% )   ( 0.004089s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.173007s |  0.10% |  6.64% )   ( 1.138908s |  0.11% |  6.70% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.057577s |  0.18% | 11.65% )   ( 1.992105s |  0.19% | 11.73% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.688295s |  0.15% |  9.56% )   ( 1.605156s |  0.16% |  9.45% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.114653s |  0.19% | 11.97% )   ( 1.984525s |  0.19% | 11.68% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.621996s |  0.14% |  9.18% )   ( 1.589431s |  0.15% |  9.36% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.084092s |  0.09% |  6.13% )   ( 1.044502s |  0.10% |  6.15% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.517777s |  0.04% |  2.93% )   ( 0.510200s |  0.05% |  3.00% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.164274s |  0.10% |  6.59% )   ( 1.084092s |  0.10% |  6.38% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.484666s |  0.04% |  2.74% )   ( 0.455472s |  0.04% |  2.68% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.506395s |  0.13% |  8.53% )   ( 1.423541s |  0.14% |  8.38% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.266246s |  0.29% | 18.49% )   ( 3.182854s |  0.31% | 18.74% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.494013s |  0.04% |  2.79% )   ( 0.491783s |  0.04% |  2.89% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.479658s |  0.04% |  2.71% )   ( 0.472787s |  0.04% |  2.78% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003918s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003337s |  0.00% |  0.00% )   ( 0.003773s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003593s |  0.00% |  0.00% )   ( 0.004041s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004932s |  0.00% |  0.02% )   ( 0.005002s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p3\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.759218s |  1.61% |  3.23% )   ( 16.929088s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000574s |  0.00% |  0.00% )   ( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.758346s |  1.61% | 99.99% )   ( 16.928395s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p4
30.5.0:         ( 0.023370s |  0.00% |  0.13% )   ( 0.023268s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025169s |  0.00% |  0.14% )   ( 0.025009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.024016s |  0.00% |  0.13% )   ( 0.023855s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.024224s |  0.00% |  0.13% )   ( 0.023875s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.024180s |  0.00% |  0.13% )   ( 0.023843s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004472s |  0.00% |  0.00% )   ( 0.004990s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004699s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000263s |  0.00% |  0.00% )   ( 0.000299s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004944s |  0.00% |  0.00% )   ( 0.005523s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p4
41.5.0:         ( 0.193739s |  0.01% |  0.03% )   ( 0.006485s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004509s |  0.00% |  0.00% )   ( 0.005073s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003763s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004031s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032423s |  0.00% |  0.00% )   ( 0.032862s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007287s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004763s |  0.00% |  0.00% )   ( 0.005318s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p4
54.5.0:         ( 0.004015s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004195s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.339232s |  1.57% |  3.61% )   ( 16.692515s |  1.67% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003853s |  0.00% |  0.02% )   ( 0.004393s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120429s |  0.10% |  6.46% )   ( 1.097813s |  0.10% |  6.57% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.993607s |  0.18% | 11.49% )   ( 1.926388s |  0.19% | 11.54% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.624238s |  0.14% |  9.36% )   ( 1.602007s |  0.16% |  9.59% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.045739s |  0.18% | 11.79% )   ( 1.924836s |  0.19% | 11.53% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561344s |  0.14% |  9.00% )   ( 1.547601s |  0.15% |  9.27% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.078701s |  0.09% |  6.22% )   ( 1.021243s |  0.10% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535547s |  0.04% |  3.08% )   ( 0.529674s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101296s |  0.10% |  6.35% )   ( 1.058371s |  0.10% |  6.34% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.530200s |  0.04% |  3.05% )   ( 0.464681s |  0.04% |  2.78% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.458366s |  0.13% |  8.41% )   ( 1.378432s |  0.13% |  8.25% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.179527s |  0.28% | 18.33% )   ( 3.099540s |  0.31% | 18.56% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.576970s |  0.05% |  3.32% )   ( 0.529902s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.529415s |  0.04% |  3.05% )   ( 0.507634s |  0.05% |  3.04% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008943s |  0.00% |  0.05% )   ( 0.009029s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p4\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 19.448676s |  1.76% |  3.54% )   ( 18.454608s |  1.84% |  3.69% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 19.447693s |  1.76% | 99.99% )   ( 18.453890s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p5
30.5.0:         ( 0.023500s |  0.00% |  0.12% )   ( 0.023449s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023801s |  0.00% |  0.12% )   ( 0.023754s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023815s |  0.00% |  0.12% )   ( 0.023763s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023808s |  0.00% |  0.12% )   ( 0.023756s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023807s |  0.00% |  0.12% )   ( 0.023753s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004823s |  0.00% |  0.00% )   ( 0.005396s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005049s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005162s |  0.00% |  0.00% )   ( 0.005760s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p5
41.5.0:         ( 0.223410s |  0.02% |  0.03% )   ( 0.006481s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004353s |  0.00% |  0.00% )   ( 0.004921s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004602s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004322s |  0.00% |  0.00% )   ( 0.004867s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039541s |  0.00% |  0.00% )   ( 0.033993s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004376s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005062s |  0.00% |  0.00% )   ( 0.005636s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p5
54.5.0:         ( 0.004049s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004819s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.997309s |  1.72% |  3.48% )   ( 18.218114s |  1.82% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004258s |  0.00% |  0.02% )   ( 0.004849s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.283748s |  0.11% |  6.75% )   ( 1.266259s |  0.12% |  6.95% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.221675s |  0.20% | 11.69% )   ( 2.186595s |  0.21% | 12.00% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.708706s |  0.15% |  8.99% )   ( 1.671989s |  0.16% |  9.17% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.092442s |  0.19% | 11.01% )   ( 2.047275s |  0.20% | 11.23% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.715226s |  0.15% |  9.02% )   ( 1.651888s |  0.16% |  9.06% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.233774s |  0.11% |  6.49% )   ( 1.146580s |  0.11% |  6.29% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.605462s |  0.05% |  3.18% )   ( 0.580291s |  0.05% |  3.18% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.221071s |  0.11% |  6.42% )   ( 1.192322s |  0.11% |  6.54% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.553475s |  0.05% |  2.91% )   ( 0.509316s |  0.05% |  2.79% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.633808s |  0.14% |  8.60% )   ( 1.519862s |  0.15% |  8.34% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.491078s |  0.31% | 18.37% )   ( 3.301358s |  0.33% | 18.12% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.641841s |  0.05% |  3.37% )   ( 0.582068s |  0.05% |  3.19% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.590745s |  0.05% |  3.10% )   ( 0.557462s |  0.05% |  3.05% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004768s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004641s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004560s |  0.00% |  0.00% )   ( 0.005100s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005482s |  0.00% |  0.02% )   ( 0.005549s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p5\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 20.531545s |  1.86% |  3.73% )   ( 19.705063s |  1.97% |  3.94% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000622s |  0.00% |  0.00% )   ( 0.000643s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 20.530574s |  1.86% | 99.99% )   ( 19.704319s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000387s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000361s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p6
30.5.0:         ( 0.023754s |  0.00% |  0.11% )   ( 0.023707s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023833s |  0.00% |  0.11% )   ( 0.023787s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023847s |  0.00% |  0.11% )   ( 0.023800s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023758s |  0.00% |  0.11% )   ( 0.023706s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023863s |  0.00% |  0.11% )   ( 0.023810s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003998s |  0.00% |  0.00% )   ( 0.004452s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003849s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004858s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p6
41.5.0:         ( 0.245815s |  0.02% |  0.04% )   ( 0.005998s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004424s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003666s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003223s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003631s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030177s |  0.00% |  0.00% )   ( 0.027275s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003549s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p6
54.5.0:         ( 0.003334s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003112s |  0.00% |  0.00% )   ( 0.003545s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.079036s |  1.82% |  4.25% )   ( 19.489200s |  1.95% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003312s |  0.00% |  0.01% )   ( 0.003765s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.421836s |  0.12% |  7.08% )   ( 1.412006s |  0.14% |  7.24% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.697757s |  0.24% | 13.43% )   ( 2.613655s |  0.26% | 13.41% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.135148s |  0.19% | 10.63% )   ( 2.031912s |  0.20% | 10.42% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.634472s |  0.23% | 13.12% )   ( 2.572538s |  0.25% | 13.19% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.046763s |  0.18% | 10.19% )   ( 1.994211s |  0.19% | 10.23% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.276668s |  0.11% |  6.35% )   ( 1.256926s |  0.12% |  6.44% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551482s |  0.05% |  2.74% )   ( 0.512605s |  0.05% |  2.63% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.205892s |  0.10% |  6.00% )   ( 1.191498s |  0.11% |  6.11% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.460156s |  0.04% |  2.29% )   ( 0.431856s |  0.04% |  2.21% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.382228s |  0.12% |  6.88% )   ( 1.372100s |  0.13% |  7.04% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.202250s |  0.29% | 15.94% )   ( 3.129954s |  0.31% | 16.05% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.545661s |  0.04% |  2.71% )   ( 0.497759s |  0.04% |  2.55% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.515411s |  0.04% |  2.56% )   ( 0.468415s |  0.04% |  2.40% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003373s |  0.00% |  0.00% )   ( 0.003842s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003065s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003463s |  0.00% |  0.00% )   ( 0.003874s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005057s |  0.00% |  0.02% )   ( 0.005126s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p6\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 20.202242s |  1.83% |  3.67% )   ( 19.290412s |  1.93% |  3.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000658s |  0.00% |  0.00% )   ( 0.000673s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 20.201175s |  1.83% | 99.99% )   ( 19.289637s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p7
30.5.0:         ( 0.024973s |  0.00% |  0.12% )   ( 0.024922s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023837s |  0.00% |  0.11% )   ( 0.023789s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023878s |  0.00% |  0.11% )   ( 0.023828s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023835s |  0.00% |  0.11% )   ( 0.023786s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023824s |  0.00% |  0.11% )   ( 0.023775s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003874s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004113s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p7
41.5.0:         ( 0.211514s |  0.01% |  0.04% )   ( 0.005357s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004092s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003150s |  0.00% |  0.00% )   ( 0.003577s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003808s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031045s |  0.00% |  0.00% )   ( 0.026187s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004881s |  0.00% |  0.00% )   ( 0.003731s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p7
54.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003635s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002996s |  0.00% |  0.00% )   ( 0.003422s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.783086s |  1.79% |  4.45% )   ( 19.078000s |  1.90% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003229s |  0.00% |  0.01% )   ( 0.003670s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.346623s |  0.12% |  6.80% )   ( 1.338332s |  0.13% |  7.01% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.476098s |  0.22% | 12.51% )   ( 2.459835s |  0.24% | 12.89% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.072344s |  0.18% | 10.47% )   ( 1.980546s |  0.19% | 10.38% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.609070s |  0.23% | 13.18% )   ( 2.490939s |  0.24% | 13.05% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.985520s |  0.18% | 10.03% )   ( 1.945372s |  0.19% | 10.19% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.284561s |  0.11% |  6.49% )   ( 1.227769s |  0.12% |  6.43% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.557832s |  0.05% |  2.81% )   ( 0.514603s |  0.05% |  2.69% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.336095s |  0.12% |  6.75% )   ( 1.283621s |  0.12% |  6.72% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.450167s |  0.04% |  2.27% )   ( 0.420891s |  0.04% |  2.20% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.400491s |  0.12% |  7.07% )   ( 1.359173s |  0.13% |  7.12% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.238807s |  0.29% | 16.37% )   ( 3.119457s |  0.31% | 16.35% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.545384s |  0.04% |  2.75% )   ( 0.479202s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.476865s |  0.04% |  2.41% )   ( 0.454590s |  0.04% |  2.38% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003344s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002988s |  0.00% |  0.00% )   ( 0.003410s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003256s |  0.00% |  0.00% )   ( 0.003647s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004992s |  0.00% |  0.02% )   ( 0.005059s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p7\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.556271s |  1.59% |  3.19% )   ( 16.446785s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000651s |  0.00% |  0.00% )   ( 0.000668s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.555281s |  1.59% | 99.99% )   ( 16.446015s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000329s |  0.00% |  0.00% )   ( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000278s |  0.00% |  0.00% )   ( 0.000299s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p8
30.5.0:         ( 0.023855s |  0.00% |  0.13% )   ( 0.023807s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023800s |  0.00% |  0.13% )   ( 0.023753s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023825s |  0.00% |  0.13% )   ( 0.023774s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023844s |  0.00% |  0.13% )   ( 0.023793s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023762s |  0.00% |  0.13% )   ( 0.023708s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004345s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003888s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004841s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p8
41.5.0:         ( 0.212740s |  0.01% |  0.04% )   ( 0.006135s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004534s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004188s |  0.00% |  0.00% )   ( 0.004723s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004313s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030646s |  0.00% |  0.00% )   ( 0.031092s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005133s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004662s |  0.00% |  0.00% )   ( 0.005190s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p8
54.5.0:         ( 0.004942s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.006162s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.116156s |  1.55% |  3.74% )   ( 16.215386s |  1.62% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003758s |  0.00% |  0.02% )   ( 0.004241s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.096152s |  0.09% |  6.40% )   ( 1.082035s |  0.10% |  6.67% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.960016s |  0.17% | 11.45% )   ( 1.834109s |  0.18% | 11.31% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.638289s |  0.14% |  9.57% )   ( 1.555298s |  0.15% |  9.59% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.095118s |  0.19% | 12.24% )   ( 1.838378s |  0.18% | 11.33% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.658458s |  0.15% |  9.68% )   ( 1.519994s |  0.15% |  9.37% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.005955s |  0.09% |  5.87% )   ( 0.988351s |  0.09% |  6.09% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535038s |  0.04% |  3.12% )   ( 0.515504s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.053389s |  0.09% |  6.15% )   ( 1.023514s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487594s |  0.04% |  2.84% )   ( 0.459650s |  0.04% |  2.83% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417984s |  0.12% |  8.28% )   ( 1.356037s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.079272s |  0.27% | 17.99% )   ( 2.988300s |  0.29% | 18.42% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.542680s |  0.04% |  3.17% )   ( 0.533139s |  0.05% |  3.28% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.542453s |  0.04% |  3.16% )   ( 0.516836s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004029s |  0.00% |  0.00% )   ( 0.004577s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003430s |  0.00% |  0.00% )   ( 0.003883s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008606s |  0.00% |  0.00% )   ( 0.004249s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008885s |  0.00% |  0.05% )   ( 0.008956s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p8\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.207393s |  1.56% |  3.13% )   ( 16.384974s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000670s |  0.00% |  0.00% )   ( 0.000685s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.206362s |  1.56% | 99.99% )   ( 16.384182s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p9
30.5.0:         ( 0.023882s |  0.00% |  0.13% )   ( 0.023833s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023874s |  0.00% |  0.13% )   ( 0.023816s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023902s |  0.00% |  0.13% )   ( 0.023845s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023831s |  0.00% |  0.13% )   ( 0.023783s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023774s |  0.00% |  0.13% )   ( 0.023721s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005401s |  0.00% |  0.00% )   ( 0.006041s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004831s |  0.00% |  0.00% )   ( 0.005439s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005786s |  0.00% |  0.00% )   ( 0.006427s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p9
41.5.0:         ( 0.224999s |  0.02% |  0.04% )   ( 0.007248s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004956s |  0.00% |  0.00% )   ( 0.005579s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005109s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004640s |  0.00% |  0.00% )   ( 0.005214s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004414s |  0.00% |  0.00% )   ( 0.004957s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036246s |  0.00% |  0.00% )   ( 0.036744s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005422s |  0.00% |  0.00% )   ( 0.005249s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005498s |  0.00% |  0.00% )   ( 0.006131s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p9
54.5.0:         ( 0.007548s |  0.00% |  0.00% )   ( 0.005186s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004298s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.743832s |  1.52% |  3.24% )   ( 16.134243s |  1.61% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004299s |  0.00% |  0.02% )   ( 0.004878s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116456s |  0.10% |  6.66% )   ( 1.080734s |  0.10% |  6.69% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.863898s |  0.16% | 11.13% )   ( 1.800042s |  0.18% | 11.15% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.601220s |  0.14% |  9.56% )   ( 1.556977s |  0.15% |  9.65% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.877491s |  0.17% | 11.21% )   ( 1.775163s |  0.17% | 11.00% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.569892s |  0.14% |  9.37% )   ( 1.491925s |  0.14% |  9.24% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026935s |  0.09% |  6.13% )   ( 1.001734s |  0.10% |  6.20% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581337s |  0.05% |  3.47% )   ( 0.574656s |  0.05% |  3.56% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.068099s |  0.09% |  6.37% )   ( 1.018946s |  0.10% |  6.31% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.541111s |  0.04% |  3.23% )   ( 0.516765s |  0.05% |  3.20% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.396554s |  0.12% |  8.34% )   ( 1.361624s |  0.13% |  8.43% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.875703s |  0.26% | 17.17% )   ( 2.788455s |  0.27% | 17.28% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.619414s |  0.05% |  3.69% )   ( 0.585066s |  0.05% |  3.62% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.601423s |  0.05% |  3.59% )   ( 0.577278s |  0.05% |  3.57% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004703s |  0.00% |  0.00% )   ( 0.005321s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004344s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004804s |  0.00% |  0.00% )   ( 0.005399s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit
68.5.0:         ( 0.000236s |  0.00% |  0.00% )   ( 0.000259s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p* 1>&21
69.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.009195s |  0.00% |  0.05% )   ( 0.009189s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p9\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.284507s |  1.75% |  3.51% )   ( 19.055676s |  1.90% |  3.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000684s |  0.00% |  0.00% )   ( 0.000700s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.283431s |  1.75% | 99.99% )   ( 19.054874s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p10
30.5.0:         ( 0.024344s |  0.00% |  0.12% )   ( 0.024291s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024396s |  0.00% |  0.12% )   ( 0.024349s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023879s |  0.00% |  0.12% )   ( 0.023828s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023882s |  0.00% |  0.12% )   ( 0.023828s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023928s |  0.00% |  0.12% )   ( 0.023873s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001488s |  0.00% |  0.00% )   ( 0.001668s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001232s |  0.00% |  0.00% )   ( 0.001399s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001451s |  0.00% |  0.00% )   ( 0.001604s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p10
41.5.0:         ( 0.098168s |  0.00% |  0.05% )   ( 0.002122s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001393s |  0.00% |  0.00% )   ( 0.001579s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.001270s |  0.00% |  0.00% )   ( 0.001435s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.001175s |  0.00% |  0.00% )   ( 0.001345s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001332s |  0.00% |  0.00% )   ( 0.001507s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.009730s |  0.00% |  0.00% )   ( 0.009869s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001307s |  0.00% |  0.00% )   ( 0.001476s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001443s |  0.00% |  0.00% )   ( 0.001616s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p10
54.5.0:         ( 0.001200s |  0.00% |  0.00% )   ( 0.001363s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001137s |  0.00% |  0.00% )   ( 0.001306s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.031011s |  1.72% | 10.96% )   ( 18.896023s |  1.89% | 11.01% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001162s |  0.00% |  0.00% )   ( 0.001330s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.213794s |  0.11% |  6.37% )   ( 1.209752s |  0.12% |  6.40% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.477601s |  0.22% | 13.01% )   ( 2.466997s |  0.24% | 13.05% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.808896s |  0.16% |  9.50% )   ( 1.795858s |  0.17% |  9.50% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.470689s |  0.22% | 12.98% )   ( 2.463266s |  0.24% | 13.03% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.790473s |  0.16% |  9.40% )   ( 1.782017s |  0.17% |  9.43% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026873s |  0.09% |  5.39% )   ( 1.019209s |  0.10% |  5.39% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.314492s |  0.02% |  1.65% )   ( 0.306097s |  0.03% |  1.61% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.210365s |  0.10% |  6.35% )   ( 1.206187s |  0.12% |  6.38% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.238283s |  0.02% |  1.25% )   ( 0.237935s |  0.02% |  1.25% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.506208s |  0.13% |  7.91% )   ( 1.497322s |  0.14% |  7.92% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.423070s |  0.40% | 23.24% )   ( 4.398125s |  0.44% | 23.27% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.284324s |  0.02% |  1.49% )   ( 0.274210s |  0.02% |  1.45% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.264781s |  0.02% |  1.39% )   ( 0.237718s |  0.02% |  1.25% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001126s |  0.00% |  0.00% )   ( 0.001289s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001131s |  0.00% |  0.00% )   ( 0.001290s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001335s |  0.00% |  0.00% )   ( 0.001512s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004970s |  0.00% |  0.02% )   ( 0.005034s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p10\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 20.438429s |  1.85% |  3.72% )   ( 19.364228s |  1.93% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000675s |  0.00% |  0.00% )   ( 0.000692s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 20.436789s |  1.85% | 99.99% )   ( 19.363434s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p11
30.5.0:         ( 0.024203s |  0.00% |  0.11% )   ( 0.024145s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023937s |  0.00% |  0.11% )   ( 0.023886s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.023953s |  0.00% |  0.11% )   ( 0.023900s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.023848s |  0.00% |  0.11% )   ( 0.023797s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.024246s |  0.00% |  0.11% )   ( 0.024189s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004529s |  0.00% |  0.00% )   ( 0.005082s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004196s |  0.00% |  0.00% )   ( 0.004728s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004933s |  0.00% |  0.00% )   ( 0.005480s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p11
41.5.0:         ( 0.225647s |  0.02% |  0.03% )   ( 0.006258s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004591s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004045s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037457s |  0.00% |  0.00% )   ( 0.034864s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004356s |  0.00% |  0.00% )   ( 0.004906s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005069s |  0.00% |  0.00% )   ( 0.005642s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p11
54.5.0:         ( 0.004138s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.987293s |  1.81% |  3.62% )   ( 19.128358s |  1.91% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003852s |  0.00% |  0.01% )   ( 0.004383s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.456824s |  0.13% |  7.28% )   ( 1.363155s |  0.13% |  7.12% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.326477s |  0.21% | 11.63% )   ( 2.306315s |  0.23% | 12.05% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.850750s |  0.16% |  9.25% )   ( 1.809842s |  0.18% |  9.46% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.235656s |  0.20% | 11.18% )   ( 2.166551s |  0.21% | 11.32% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.812814s |  0.16% |  9.06% )   ( 1.729078s |  0.17% |  9.03% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.323673s |  0.12% |  6.62% )   ( 1.218540s |  0.12% |  6.37% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.598380s |  0.05% |  2.99% )   ( 0.563174s |  0.05% |  2.94% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.333827s |  0.12% |  6.67% )   ( 1.253193s |  0.12% |  6.55% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.544536s |  0.04% |  2.72% )   ( 0.502947s |  0.05% |  2.62% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.640679s |  0.14% |  8.20% )   ( 1.559174s |  0.15% |  8.15% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.630473s |  0.32% | 18.16% )   ( 3.539567s |  0.35% | 18.50% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.624463s |  0.05% |  3.12% )   ( 0.570552s |  0.05% |  2.98% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.604889s |  0.05% |  3.02% )   ( 0.541887s |  0.05% |  2.83% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003941s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004359s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004834s |  0.00% |  0.02% )   ( 0.004900s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p11\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 18.394337s |  1.67% |  3.34% )   ( 17.918551s |  1.79% |  3.58% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000690s |  0.00% |  0.00% )   ( 0.000709s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 18.392630s |  1.67% | 99.99% )   ( 17.917738s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p12
30.5.0:         ( 0.024196s |  0.00% |  0.13% )   ( 0.024003s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023861s |  0.00% |  0.12% )   ( 0.023811s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.035804s |  0.00% |  0.19% )   ( 0.035693s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.026883s |  0.00% |  0.14% )   ( 0.026807s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.023740s |  0.00% |  0.12% )   ( 0.023687s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002759s |  0.00% |  0.00% )   ( 0.003093s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002369s |  0.00% |  0.00% )   ( 0.002669s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003019s |  0.00% |  0.00% )   ( 0.003358s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p12
41.5.0:         ( 0.087732s |  0.00% |  0.02% )   ( 0.003702s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002604s |  0.00% |  0.00% )   ( 0.002953s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.002452s |  0.00% |  0.00% )   ( 0.002780s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.002365s |  0.00% |  0.00% )   ( 0.002660s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002536s |  0.00% |  0.00% )   ( 0.002850s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022082s |  0.00% |  0.00% )   ( 0.019224s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002457s |  0.00% |  0.00% )   ( 0.002763s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002792s |  0.00% |  0.00% )   ( 0.003118s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p12
54.5.0:         ( 0.002457s |  0.00% |  0.00% )   ( 0.002783s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002244s |  0.00% |  0.00% )   ( 0.002522s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.105330s |  1.64% |  6.15% )   ( 17.715041s |  1.77% |  6.17% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002375s |  0.00% |  0.01% )   ( 0.002730s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.173320s |  0.10% |  6.48% )   ( 1.139677s |  0.11% |  6.43% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.222241s |  0.20% | 12.27% )   ( 2.203819s |  0.22% | 12.44% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.716602s |  0.15% |  9.48% )   ( 1.690600s |  0.16% |  9.54% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.179298s |  0.19% | 12.03% )   ( 2.166345s |  0.21% | 12.22% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.704195s |  0.15% |  9.41% )   ( 1.685246s |  0.16% |  9.51% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.069497s |  0.09% |  5.90% )   ( 1.026546s |  0.10% |  5.79% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.403754s |  0.03% |  2.23% )   ( 0.398882s |  0.03% |  2.25% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.124512s |  0.10% |  6.21% )   ( 1.091910s |  0.10% |  6.16% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.339096s |  0.03% |  1.87% )   ( 0.330200s |  0.03% |  1.86% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.457762s |  0.13% |  8.05% )   ( 1.440538s |  0.14% |  8.13% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.903741s |  0.35% | 21.56% )   ( 3.804703s |  0.38% | 21.47% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.443590s |  0.04% |  2.45% )   ( 0.381172s |  0.03% |  2.15% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.365347s |  0.03% |  2.01% )   ( 0.352673s |  0.03% |  1.99% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002386s |  0.00% |  0.00% )   ( 0.002701s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002261s |  0.00% |  0.00% )   ( 0.002561s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004390s |  0.00% |  0.00% )   ( 0.002828s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004983s |  0.00% |  0.02% )   ( 0.005079s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p12\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.746080s |  1.61% |  3.23% )   ( 16.836156s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000734s |  0.00% |  0.00% )   ( 0.000750s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.744321s |  1.61% | 99.99% )   ( 16.835305s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p13
30.5.0:         ( 0.027467s |  0.00% |  0.15% )   ( 0.027375s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035131s |  0.00% |  0.19% )   ( 0.035007s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.033158s |  0.00% |  0.18% )   ( 0.033058s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.043621s |  0.00% |  0.24% )   ( 0.043493s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.048520s |  0.00% |  0.27% )   ( 0.048342s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004995s |  0.00% |  0.00% )   ( 0.005584s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005179s |  0.00% |  0.00% )   ( 0.005762s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p13
41.5.0:         ( 0.177997s |  0.01% |  0.03% )   ( 0.006467s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004828s |  0.00% |  0.00% )   ( 0.005440s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004528s |  0.00% |  0.00% )   ( 0.005105s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004601s |  0.00% |  0.00% )   ( 0.005161s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043301s |  0.00% |  0.00% )   ( 0.034784s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004814s |  0.00% |  0.00% )   ( 0.005411s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005329s |  0.00% |  0.00% )   ( 0.005932s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p13
54.5.0:         ( 0.004480s |  0.00% |  0.00% )   ( 0.005075s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.258560s |  1.56% |  3.47% )   ( 16.524977s |  1.65% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.007780s |  0.00% |  0.04% )   ( 0.005149s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.195262s |  0.10% |  6.92% )   ( 1.111998s |  0.11% |  6.72% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.993674s |  0.18% | 11.55% )   ( 1.885178s |  0.18% | 11.40% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.634832s |  0.14% |  9.47% )   ( 1.602902s |  0.16% |  9.69% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.951286s |  0.17% | 11.30% )   ( 1.880493s |  0.18% | 11.37% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616983s |  0.14% |  9.36% )   ( 1.511978s |  0.15% |  9.14% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.087171s |  0.09% |  6.29% )   ( 1.026585s |  0.10% |  6.21% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.570755s |  0.05% |  3.30% )   ( 0.552936s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.096337s |  0.09% |  6.35% )   ( 1.035590s |  0.10% |  6.26% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.500824s |  0.04% |  2.90% )   ( 0.488706s |  0.04% |  2.95% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.422074s |  0.12% |  8.23% )   ( 1.368649s |  0.13% |  8.28% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.996012s |  0.27% | 17.35% )   ( 2.949744s |  0.29% | 17.85% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.605552s |  0.05% |  3.50% )   ( 0.554704s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.580018s |  0.05% |  3.36% )   ( 0.550365s |  0.05% |  3.33% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003998s |  0.00% |  0.00% )   ( 0.004550s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007597s |  0.00% |  0.00% )   ( 0.005111s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008325s |  0.00% |  0.04% )   ( 0.008410s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p13\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 22.209964s |  2.01% |  4.04% )   ( 21.232870s |  2.12% |  4.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000875s |  0.00% |  0.00% )   ( 0.000901s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 22.207224s |  2.01% | 99.98% )   ( 21.231759s |  2.12% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p14
30.5.0:         ( 0.045486s |  0.00% |  0.20% )   ( 0.045339s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045791s |  0.00% |  0.20% )   ( 0.045635s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.045572s |  0.00% |  0.20% )   ( 0.045416s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.045543s |  0.00% |  0.20% )   ( 0.045384s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.045627s |  0.00% |  0.20% )   ( 0.045459s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005493s |  0.00% |  0.00% )   ( 0.006123s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004706s |  0.00% |  0.00% )   ( 0.005318s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005941s |  0.00% |  0.00% )   ( 0.006609s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p14
41.5.0:         ( 0.267213s |  0.02% |  0.03% )   ( 0.007405s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005169s |  0.00% |  0.00% )   ( 0.005817s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004854s |  0.00% |  0.00% )   ( 0.005496s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004407s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004810s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041044s |  0.00% |  0.00% )   ( 0.038548s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011518s |  0.00% |  0.00% )   ( 0.005662s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005835s |  0.00% |  0.00% )   ( 0.006504s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p14
54.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005490s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 21.582825s |  1.96% |  3.13% )   ( 20.873794s |  2.08% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004741s |  0.00% |  0.02% )   ( 0.005384s |  0.00% |  0.02% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.652050s |  0.15% |  7.65% )   ( 1.564871s |  0.15% |  7.49% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.535905s |  0.23% | 11.74% )   ( 2.401503s |  0.24% | 11.50% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.076014s |  0.18% |  9.61% )   ( 1.964825s |  0.19% |  9.41% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.402401s |  0.21% | 11.13% )   ( 2.340271s |  0.23% | 11.21% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.928482s |  0.17% |  8.93% )   ( 1.892318s |  0.18% |  9.06% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.436864s |  0.13% |  6.65% )   ( 1.396709s |  0.13% |  6.69% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.668887s |  0.06% |  3.09% )   ( 0.659726s |  0.06% |  3.16% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.450371s |  0.13% |  6.72% )   ( 1.410635s |  0.14% |  6.75% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.596347s |  0.05% |  2.76% )   ( 0.572505s |  0.05% |  2.74% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.715071s |  0.15% |  7.94% )   ( 1.686093s |  0.16% |  8.07% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.786636s |  0.34% | 17.54% )   ( 3.719431s |  0.37% | 17.81% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.660453s |  0.06% |  3.06% )   ( 0.645988s |  0.06% |  3.09% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.668603s |  0.06% |  3.09% )   ( 0.613535s |  0.06% |  2.93% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004600s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004448s |  0.00% |  0.00% )   ( 0.005048s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.010787s |  0.00% |  0.00% )   ( 0.005513s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004765s |  0.00% |  0.02% )   ( 0.004849s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p14\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000185s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.571780s |  1.59% |  3.19% )   ( 16.504174s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001003s |  0.00% |  0.00% )   ( 0.001027s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.569052s |  1.59% | 99.98% )   ( 16.502971s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p15
30.5.0:         ( 0.044494s |  0.00% |  0.25% )   ( 0.044118s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031994s |  0.00% |  0.18% )   ( 0.031819s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.026727s |  0.00% |  0.15% )   ( 0.026575s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.026908s |  0.00% |  0.15% )   ( 0.026693s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.033612s |  0.00% |  0.19% )   ( 0.033341s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004620s |  0.00% |  0.00% )   ( 0.005157s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004239s |  0.00% |  0.00% )   ( 0.004811s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005186s |  0.00% |  0.00% )   ( 0.005757s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p15
41.5.0:         ( 0.272782s |  0.02% |  0.05% )   ( 0.006775s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004570s |  0.00% |  0.00% )   ( 0.005139s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033546s |  0.00% |  0.00% )   ( 0.034013s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005200s |  0.00% |  0.00% )   ( 0.004968s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004858s |  0.00% |  0.00% )   ( 0.005413s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p15
54.5.0:         ( 0.003850s |  0.00% |  0.00% )   ( 0.004367s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.025382s |  1.54% |  3.58% )   ( 16.221986s |  1.62% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003811s |  0.00% |  0.02% )   ( 0.004361s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.114640s |  0.10% |  6.54% )   ( 1.072504s |  0.10% |  6.61% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.896315s |  0.17% | 11.13% )   ( 1.809018s |  0.18% | 11.15% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.634880s |  0.14% |  9.60% )   ( 1.560053s |  0.15% |  9.61% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.909143s |  0.17% | 11.21% )   ( 1.814633s |  0.18% | 11.18% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.529222s |  0.13% |  8.98% )   ( 1.511787s |  0.15% |  9.31% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.071775s |  0.09% |  6.29% )   ( 0.997821s |  0.09% |  6.15% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.611475s |  0.05% |  3.59% )   ( 0.544203s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.148920s |  0.10% |  6.74% )   ( 1.046418s |  0.10% |  6.45% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503558s |  0.04% |  2.95% )   ( 0.484514s |  0.04% |  2.98% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.477334s |  0.13% |  8.67% )   ( 1.389501s |  0.13% |  8.56% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.010292s |  0.27% | 17.68% )   ( 2.926839s |  0.29% | 18.04% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.547445s |  0.04% |  3.21% )   ( 0.533607s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.566572s |  0.05% |  3.32% )   ( 0.526727s |  0.05% |  3.24% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004674s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007300s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008843s |  0.00% |  0.05% )   ( 0.008917s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p15\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.023694s |  1.63% |  3.28% )   ( 17.378215s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001004s |  0.00% |  0.00% )   ( 0.001026s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.020901s |  1.63% | 99.98% )   ( 17.377015s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p16
30.5.0:         ( 0.040667s |  0.00% |  0.22% )   ( 0.040453s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026601s |  0.00% |  0.14% )   ( 0.026517s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.026301s |  0.00% |  0.14% )   ( 0.026227s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.028575s |  0.00% |  0.15% )   ( 0.028479s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.029393s |  0.00% |  0.16% )   ( 0.029293s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003295s |  0.00% |  0.00% )   ( 0.003700s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003062s |  0.00% |  0.00% )   ( 0.003472s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003891s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p16
41.5.0:         ( 0.158900s |  0.01% |  0.04% )   ( 0.004654s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003485s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.002743s |  0.00% |  0.00% )   ( 0.003095s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.002740s |  0.00% |  0.00% )   ( 0.003116s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002945s |  0.00% |  0.00% )   ( 0.003292s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023217s |  0.00% |  0.00% )   ( 0.023535s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009176s |  0.00% |  0.00% )   ( 0.003527s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003530s |  0.00% |  0.00% )   ( 0.003936s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p16
54.5.0:         ( 0.002763s |  0.00% |  0.00% )   ( 0.003148s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002617s |  0.00% |  0.00% )   ( 0.002982s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.628770s |  1.60% |  5.14% )   ( 17.139906s |  1.71% |  5.19% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002721s |  0.00% |  0.01% )   ( 0.003095s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123084s |  0.10% |  6.37% )   ( 1.112059s |  0.11% |  6.48% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.138074s |  0.19% | 12.12% )   ( 2.083437s |  0.20% | 12.15% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.686517s |  0.15% |  9.56% )   ( 1.656553s |  0.16% |  9.66% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.070044s |  0.18% | 11.74% )   ( 2.043103s |  0.20% | 11.92% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.659300s |  0.15% |  9.41% )   ( 1.602965s |  0.16% |  9.35% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.045432s |  0.09% |  5.93% )   ( 1.006910s |  0.10% |  5.87% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.464120s |  0.04% |  2.63% )   ( 0.433658s |  0.04% |  2.53% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.156757s |  0.10% |  6.56% )   ( 1.105701s |  0.11% |  6.45% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.406510s |  0.03% |  2.30% )   ( 0.368056s |  0.03% |  2.14% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439726s |  0.13% |  8.16% )   ( 1.368969s |  0.13% |  7.98% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.570979s |  0.32% | 20.25% )   ( 3.530406s |  0.35% | 20.59% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.448062s |  0.04% |  2.54% )   ( 0.427263s |  0.04% |  2.49% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.417444s |  0.03% |  2.36% )   ( 0.397731s |  0.03% |  2.32% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002891s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002609s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002857s |  0.00% |  0.00% )   ( 0.003217s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009247s |  0.00% |  0.05% )   ( 0.009319s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p16\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.556635s |  1.59% |  3.19% )   ( 16.956551s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.000947s |  0.00% |  0.00% )   ( 0.000362s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.554256s |  1.59% | 99.98% )   ( 16.956024s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p17
30.5.0:         ( 0.031542s |  0.00% |  0.17% )   ( 0.031426s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026712s |  0.00% |  0.15% )   ( 0.026624s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.028443s |  0.00% |  0.16% )   ( 0.028358s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.045372s |  0.00% |  0.25% )   ( 0.045223s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.045225s |  0.00% |  0.25% )   ( 0.045084s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004458s |  0.00% |  0.00% )   ( 0.004991s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004583s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p17
41.5.0:         ( 0.232217s |  0.02% |  0.05% )   ( 0.006107s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004150s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004087s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004288s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034089s |  0.00% |  0.00% )   ( 0.030764s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006881s |  0.00% |  0.00% )   ( 0.004603s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005198s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p17
54.5.0:         ( 0.006881s |  0.00% |  0.00% )   ( 0.004412s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003837s |  0.00% |  0.00% )   ( 0.004291s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.041361s |  1.54% |  4.04% )   ( 16.671699s |  1.66% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003762s |  0.00% |  0.02% )   ( 0.004284s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116482s |  0.10% |  6.55% )   ( 1.103683s |  0.11% |  6.62% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.952897s |  0.17% | 11.45% )   ( 1.933578s |  0.19% | 11.59% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.646073s |  0.14% |  9.65% )   ( 1.610864s |  0.16% |  9.66% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.029162s |  0.18% | 11.90% )   ( 1.928632s |  0.19% | 11.56% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.591696s |  0.14% |  9.34% )   ( 1.552464s |  0.15% |  9.31% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027806s |  0.09% |  6.03% )   ( 0.993983s |  0.09% |  5.96% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.508782s |  0.04% |  2.98% )   ( 0.504790s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.082675s |  0.09% |  6.35% )   ( 1.062640s |  0.10% |  6.37% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.463634s |  0.04% |  2.72% )   ( 0.433157s |  0.04% |  2.59% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.399507s |  0.12% |  8.21% )   ( 1.377958s |  0.13% |  8.26% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.202402s |  0.29% | 18.79% )   ( 3.170261s |  0.31% | 19.01% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524037s |  0.04% |  3.07% )   ( 0.516064s |  0.05% |  3.09% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.492446s |  0.04% |  2.88% )   ( 0.479341s |  0.04% |  2.87% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003835s |  0.00% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003660s |  0.00% |  0.00% )   ( 0.004155s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003968s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005874s |  0.00% |  0.03% )   ( 0.005974s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p17\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 19.216883s |  1.74% |  3.49% )   ( 18.352448s |  1.83% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.000970s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 19.214458s |  1.74% | 99.98% )   ( 18.351905s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p18
30.5.0:         ( 0.045747s |  0.00% |  0.23% )   ( 0.045607s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043529s |  0.00% |  0.22% )   ( 0.043388s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.042225s |  0.00% |  0.21% )   ( 0.042071s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.042088s |  0.00% |  0.21% )   ( 0.041939s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.047118s |  0.00% |  0.24% )   ( 0.046944s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004522s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.006546s |  0.00% |  0.00% )   ( 0.004020s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004467s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p18
41.5.0:         ( 0.160686s |  0.01% |  0.03% )   ( 0.005238s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003624s |  0.00% |  0.00% )   ( 0.004120s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003864s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003475s |  0.00% |  0.00% )   ( 0.003941s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028431s |  0.00% |  0.00% )   ( 0.028732s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004282s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p18
54.5.0:         ( 0.003377s |  0.00% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003298s |  0.00% |  0.00% )   ( 0.003752s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.741230s |  1.70% |  4.24% )   ( 18.033808s |  1.80% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003425s |  0.00% |  0.01% )   ( 0.003883s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.296624s |  0.11% |  6.91% )   ( 1.244949s |  0.12% |  6.90% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.283994s |  0.20% | 12.18% )   ( 2.251026s |  0.22% | 12.48% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.921583s |  0.17% | 10.25% )   ( 1.805536s |  0.18% | 10.01% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.406544s |  0.21% | 12.84% )   ( 2.254497s |  0.22% | 12.50% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.602705s |  0.14% |  8.55% )   ( 1.585220s |  0.15% |  8.79% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.109772s |  0.10% |  5.92% )   ( 1.089651s |  0.10% |  6.04% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.530275s |  0.04% |  2.82% )   ( 0.500114s |  0.05% |  2.77% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.195303s |  0.10% |  6.37% )   ( 1.125904s |  0.11% |  6.24% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483641s |  0.04% |  2.58% )   ( 0.444329s |  0.04% |  2.46% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.508122s |  0.13% |  8.04% )   ( 1.427139s |  0.14% |  7.91% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.421425s |  0.31% | 18.25% )   ( 3.352644s |  0.33% | 18.59% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.503224s |  0.04% |  2.68% )   ( 0.484869s |  0.04% |  2.68% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.474593s |  0.04% |  2.53% )   ( 0.464047s |  0.04% |  2.57% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003470s |  0.00% |  0.00% )   ( 0.003917s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006147s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003458s |  0.00% |  0.00% )   ( 0.003878s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005043s |  0.00% |  0.02% )   ( 0.005116s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p18\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.395265s |  1.58% |  3.16% )   ( 16.531472s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.000975s |  0.00% |  0.00% )   ( 0.000368s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.392853s |  1.58% | 99.98% )   ( 16.530913s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p19
30.5.0:         ( 0.029159s |  0.00% |  0.16% )   ( 0.029051s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029382s |  0.00% |  0.16% )   ( 0.029288s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.047129s |  0.00% |  0.27% )   ( 0.046963s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.045970s |  0.00% |  0.26% )   ( 0.045813s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.040776s |  0.00% |  0.23% )   ( 0.040614s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004322s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003881s |  0.00% |  0.00% )   ( 0.004394s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004597s |  0.00% |  0.00% )   ( 0.005083s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p19
41.5.0:         ( 0.186424s |  0.01% |  0.04% )   ( 0.005769s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003969s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004004s |  0.00% |  0.00% )   ( 0.004480s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003645s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003884s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028923s |  0.00% |  0.00% )   ( 0.029336s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007205s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004447s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p19
54.5.0:         ( 0.003689s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003405s |  0.00% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.907426s |  1.53% |  4.05% )   ( 16.231001s |  1.62% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004523s |  0.00% |  0.02% )   ( 0.004048s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.144046s |  0.10% |  6.76% )   ( 1.069164s |  0.10% |  6.58% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.924743s |  0.17% | 11.38% )   ( 1.880207s |  0.18% | 11.58% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.601771s |  0.14% |  9.47% )   ( 1.560909s |  0.15% |  9.61% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.976573s |  0.17% | 11.69% )   ( 1.881706s |  0.18% | 11.59% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.521139s |  0.13% |  8.99% )   ( 1.501466s |  0.15% |  9.25% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.004689s |  0.09% |  5.94% )   ( 0.958798s |  0.09% |  5.90% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.533967s |  0.04% |  3.15% )   ( 0.497623s |  0.04% |  3.06% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.077822s |  0.09% |  6.37% )   ( 1.048083s |  0.10% |  6.45% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.482106s |  0.04% |  2.85% )   ( 0.440266s |  0.04% |  2.71% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.426814s |  0.12% |  8.43% )   ( 1.358894s |  0.13% |  8.37% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.193703s |  0.29% | 18.88% )   ( 3.060043s |  0.30% | 18.85% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524894s |  0.04% |  3.10% )   ( 0.491867s |  0.04% |  3.03% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.490636s |  0.04% |  2.90% )   ( 0.477927s |  0.04% |  2.94% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003764s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005712s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit
68.5.0:         ( 0.000221s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p* 1>&21
69.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.015587s |  0.00% |  0.08% )   ( 0.008822s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p19\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 18.999585s |  1.72% |  3.45% )   ( 18.356215s |  1.83% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001020s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.996751s |  1.72% | 99.98% )   ( 18.355000s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p20
30.5.0:         ( 0.045129s |  0.00% |  0.23% )   ( 0.044981s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045039s |  0.00% |  0.23% )   ( 0.044891s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.042594s |  0.00% |  0.22% )   ( 0.042423s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.049821s |  0.00% |  0.26% )   ( 0.049640s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.047607s |  0.00% |  0.25% )   ( 0.047436s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003782s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004281s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p20
41.5.0:         ( 0.137664s |  0.01% |  0.03% )   ( 0.005146s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004235s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003331s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003518s |  0.00% |  0.00% )   ( 0.003974s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027835s |  0.00% |  0.00% )   ( 0.027018s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.004133s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004113s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p20
54.5.0:         ( 0.003496s |  0.00% |  0.00% )   ( 0.003964s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003328s |  0.00% |  0.00% )   ( 0.003793s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.538905s |  1.68% |  4.43% )   ( 18.025888s |  1.80% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003362s |  0.00% |  0.01% )   ( 0.003802s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.330747s |  0.12% |  7.17% )   ( 1.272027s |  0.12% |  7.05% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.354761s |  0.21% | 12.70% )   ( 2.289777s |  0.22% | 12.70% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.845526s |  0.16% |  9.95% )   ( 1.807936s |  0.18% | 10.02% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.315535s |  0.21% | 12.49% )   ( 2.271410s |  0.22% | 12.60% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.770156s |  0.16% |  9.54% )   ( 1.744364s |  0.17% |  9.67% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.126017s |  0.10% |  6.07% )   ( 1.105228s |  0.11% |  6.13% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.492933s |  0.04% |  2.65% )   ( 0.491981s |  0.04% |  2.72% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.208267s |  0.10% |  6.51% )   ( 1.190526s |  0.11% |  6.60% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.434607s |  0.03% |  2.34% )   ( 0.429901s |  0.04% |  2.38% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.567312s |  0.14% |  8.45% )   ( 1.542435s |  0.15% |  8.55% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.061870s |  0.27% | 16.51% )   ( 2.983136s |  0.29% | 16.54% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.569972s |  0.05% |  3.07% )   ( 0.457355s |  0.04% |  2.53% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.457840s |  0.04% |  2.46% )   ( 0.436010s |  0.04% |  2.41% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003800s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003935s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008851s |  0.00% |  0.04% )   ( 0.008918s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p20\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.567298s |  1.59% |  3.19% )   ( 16.522527s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001047s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.564451s |  1.59% | 99.98% )   ( 16.521304s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p21
30.5.0:         ( 0.048968s |  0.00% |  0.27% )   ( 0.048790s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042813s |  0.00% |  0.24% )   ( 0.042644s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.044799s |  0.00% |  0.25% )   ( 0.044633s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.047149s |  0.00% |  0.26% )   ( 0.046991s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.046115s |  0.00% |  0.26% )   ( 0.045936s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004205s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003940s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004675s |  0.00% |  0.00% )   ( 0.005191s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p21
41.5.0:         ( 0.244779s |  0.02% |  0.05% )   ( 0.006045s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003643s |  0.00% |  0.00% )   ( 0.004133s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003772s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028405s |  0.00% |  0.00% )   ( 0.028794s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004154s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004799s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p21
54.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003437s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.998006s |  1.54% |  4.03% )   ( 16.187080s |  1.62% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003530s |  0.00% |  0.02% )   ( 0.003988s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.136214s |  0.10% |  6.68% )   ( 1.073944s |  0.10% |  6.63% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.946239s |  0.17% | 11.44% )   ( 1.865811s |  0.18% | 11.52% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.679969s |  0.15% |  9.88% )   ( 1.538832s |  0.15% |  9.50% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.961403s |  0.17% | 11.53% )   ( 1.869544s |  0.18% | 11.54% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561421s |  0.14% |  9.18% )   ( 1.501189s |  0.15% |  9.27% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.984343s |  0.08% |  5.79% )   ( 0.975940s |  0.09% |  6.02% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501608s |  0.04% |  2.95% )   ( 0.496376s |  0.04% |  3.06% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.076256s |  0.09% |  6.33% )   ( 1.049060s |  0.10% |  6.48% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.490113s |  0.04% |  2.88% )   ( 0.439985s |  0.04% |  2.71% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.445644s |  0.13% |  8.50% )   ( 1.356899s |  0.13% |  8.38% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.209581s |  0.29% | 18.88% )   ( 3.052823s |  0.30% | 18.85% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.504098s |  0.04% |  2.96% )   ( 0.491065s |  0.04% |  3.03% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497587s |  0.04% |  2.92% )   ( 0.471624s |  0.04% |  2.91% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003861s |  0.00% |  0.00% )   ( 0.004256s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003391s |  0.00% |  0.00% )   ( 0.003827s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004104s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.007587s |  0.00% |  0.04% )   ( 0.007664s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p21\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.808069s |  1.61% |  3.24% )   ( 16.825610s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001040s |  0.00% |  0.00% )   ( 0.001063s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.805218s |  1.61% | 99.98% )   ( 16.824371s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p22
30.5.0:         ( 0.047466s |  0.00% |  0.26% )   ( 0.047292s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046963s |  0.00% |  0.26% )   ( 0.046800s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.049592s |  0.00% |  0.27% )   ( 0.049403s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.048085s |  0.00% |  0.27% )   ( 0.047901s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.047704s |  0.00% |  0.26% )   ( 0.047522s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005007s |  0.00% |  0.00% )   ( 0.005577s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004457s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005439s |  0.00% |  0.00% )   ( 0.006044s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p22
41.5.0:         ( 0.245634s |  0.02% |  0.04% )   ( 0.007073s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004993s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004763s |  0.00% |  0.00% )   ( 0.005336s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004233s |  0.00% |  0.00% )   ( 0.004826s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005157s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036547s |  0.00% |  0.00% )   ( 0.033986s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005072s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004981s |  0.00% |  0.00% )   ( 0.005582s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p22
54.5.0:         ( 0.004169s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.212375s |  1.56% |  3.45% )   ( 16.465457s |  1.64% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004144s |  0.00% |  0.02% )   ( 0.004729s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201948s |  0.10% |  6.98% )   ( 1.129590s |  0.11% |  6.86% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.978186s |  0.17% | 11.49% )   ( 1.904290s |  0.19% | 11.56% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.644897s |  0.14% |  9.55% )   ( 1.577111s |  0.15% |  9.57% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.850289s |  0.16% | 10.74% )   ( 1.822428s |  0.18% | 11.06% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.562497s |  0.14% |  9.07% )   ( 1.498653s |  0.14% |  9.10% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.081364s |  0.09% |  6.28% )   ( 1.007551s |  0.10% |  6.11% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.594235s |  0.05% |  3.45% )   ( 0.558807s |  0.05% |  3.39% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.129663s |  0.10% |  6.56% )   ( 1.052141s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.498884s |  0.04% |  2.89% )   ( 0.483355s |  0.04% |  2.93% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435933s |  0.13% |  8.34% )   ( 1.371173s |  0.13% |  8.32% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.065648s |  0.27% | 17.81% )   ( 2.950551s |  0.29% | 17.91% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.588250s |  0.05% |  3.41% )   ( 0.562962s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.576437s |  0.05% |  3.34% )   ( 0.542116s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004603s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004899s |  0.00% |  0.02% )   ( 0.004968s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p22\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 20.537451s |  1.86% |  3.73% )   ( 19.543005s |  1.95% |  3.90% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001052s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 20.534570s |  1.86% | 99.98% )   ( 19.541758s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p23
30.5.0:         ( 0.048036s |  0.00% |  0.23% )   ( 0.045811s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044291s |  0.00% |  0.21% )   ( 0.044129s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.045066s |  0.00% |  0.21% )   ( 0.044909s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.044975s |  0.00% |  0.21% )   ( 0.044821s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.045055s |  0.00% |  0.21% )   ( 0.044898s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005145s |  0.00% |  0.00% )   ( 0.005651s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.005062s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005458s |  0.00% |  0.00% )   ( 0.006042s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p23
41.5.0:         ( 0.140365s |  0.01% |  0.02% )   ( 0.006148s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004545s |  0.00% |  0.00% )   ( 0.005114s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004508s |  0.00% |  0.00% )   ( 0.005018s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033364s |  0.00% |  0.00% )   ( 0.033864s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005060s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005066s |  0.00% |  0.00% )   ( 0.005628s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p23
54.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004749s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.063680s |  1.82% |  3.61% )   ( 19.199547s |  1.92% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004317s |  0.00% |  0.02% )   ( 0.004922s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.500622s |  0.13% |  7.47% )   ( 1.383851s |  0.13% |  7.20% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.333897s |  0.21% | 11.63% )   ( 2.220892s |  0.22% | 11.56% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.845416s |  0.16% |  9.19% )   ( 1.776742s |  0.17% |  9.25% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.175146s |  0.19% | 10.84% )   ( 2.158105s |  0.21% | 11.24% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.837723s |  0.16% |  9.15% )   ( 1.757249s |  0.17% |  9.15% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.358009s |  0.12% |  6.76% )   ( 1.249403s |  0.12% |  6.50% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.617355s |  0.05% |  3.07% )   ( 0.580134s |  0.05% |  3.02% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.331478s |  0.12% |  6.63% )   ( 1.287023s |  0.12% |  6.70% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.514738s |  0.04% |  2.56% )   ( 0.504763s |  0.05% |  2.62% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.591478s |  0.14% |  7.93% )   ( 1.564788s |  0.15% |  8.15% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.685241s |  0.33% | 18.36% )   ( 3.597180s |  0.36% | 18.73% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.671482s |  0.06% |  3.34% )   ( 0.568144s |  0.05% |  2.95% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596778s |  0.05% |  2.97% )   ( 0.546351s |  0.05% |  2.84% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004321s |  0.00% |  0.00% )   ( 0.004889s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004106s |  0.00% |  0.00% )   ( 0.004663s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004679s |  0.00% |  0.00% )   ( 0.005142s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004862s |  0.00% |  0.02% )   ( 0.004932s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p23\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.720458s |  1.61% |  3.22% )   ( 17.160623s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001187s |  0.00% |  0.00% )   ( 0.001209s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.717603s |  1.60% | 99.98% )   ( 17.159238s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p24
30.5.0:         ( 0.049860s |  0.00% |  0.28% )   ( 0.049643s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043603s |  0.00% |  0.24% )   ( 0.043451s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.052676s |  0.00% |  0.29% )   ( 0.052465s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.045288s |  0.00% |  0.25% )   ( 0.045120s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.050702s |  0.00% |  0.28% )   ( 0.050513s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.006112s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004117s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p24
41.5.0:         ( 0.130659s |  0.01% |  0.03% )   ( 0.005135s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004076s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003127s |  0.00% |  0.00% )   ( 0.003546s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003229s |  0.00% |  0.00% )   ( 0.003625s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034340s |  0.00% |  0.00% )   ( 0.025713s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006625s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003950s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p24
54.5.0:         ( 0.003236s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003263s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.246424s |  1.56% |  4.63% )   ( 16.822096s |  1.68% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002993s |  0.00% |  0.01% )   ( 0.003412s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.115383s |  0.10% |  6.46% )   ( 1.099717s |  0.11% |  6.53% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.038458s |  0.18% | 11.81% )   ( 2.004646s |  0.20% | 11.91% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.664710s |  0.15% |  9.65% )   ( 1.630648s |  0.16% |  9.69% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.007381s |  0.18% | 11.63% )   ( 1.998911s |  0.20% | 11.88% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.598668s |  0.14% |  9.26% )   ( 1.565285s |  0.15% |  9.30% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.025428s |  0.09% |  5.94% )   ( 0.987597s |  0.09% |  5.87% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.500100s |  0.04% |  2.89% )   ( 0.456266s |  0.04% |  2.71% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.123243s |  0.10% |  6.51% )   ( 1.072232s |  0.10% |  6.37% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.421307s |  0.03% |  2.44% )   ( 0.408364s |  0.04% |  2.42% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412592s |  0.12% |  8.19% )   ( 1.382364s |  0.13% |  8.21% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.407713s |  0.30% | 19.75% )   ( 3.333547s |  0.33% | 19.81% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.499538s |  0.04% |  2.89% )   ( 0.452882s |  0.04% |  2.69% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.428910s |  0.03% |  2.48% )   ( 0.426225s |  0.04% |  2.53% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003431s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002937s |  0.00% |  0.00% )   ( 0.003358s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003135s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008935s |  0.00% |  0.05% )   ( 0.009021s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p24\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.445075s |  1.58% |  3.17% )   ( 16.750720s |  1.67% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001075s |  0.00% |  0.00% )   ( 0.001103s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.442039s |  1.58% | 99.98% )   ( 16.749420s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p25
30.5.0:         ( 0.045363s |  0.00% |  0.26% )   ( 0.045195s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045267s |  0.00% |  0.25% )   ( 0.045111s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.045210s |  0.00% |  0.25% )   ( 0.045050s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.045228s |  0.00% |  0.25% )   ( 0.045062s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.047820s |  0.00% |  0.27% )   ( 0.047639s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004331s |  0.00% |  0.00% )   ( 0.004863s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005776s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p25
41.5.0:         ( 0.158089s |  0.01% |  0.03% )   ( 0.005464s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003850s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003814s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.005119s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028382s |  0.00% |  0.00% )   ( 0.028758s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p25
54.5.0:         ( 0.003206s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003215s |  0.00% |  0.00% )   ( 0.003642s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.961978s |  1.54% |  4.22% )   ( 16.418311s |  1.64% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003363s |  0.00% |  0.01% )   ( 0.003821s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.122685s |  0.10% |  6.61% )   ( 1.078413s |  0.10% |  6.56% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.973444s |  0.17% | 11.63% )   ( 1.922873s |  0.19% | 11.71% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.649061s |  0.14% |  9.72% )   ( 1.576384s |  0.15% |  9.60% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.936933s |  0.17% | 11.41% )   ( 1.915774s |  0.19% | 11.66% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.567997s |  0.14% |  9.24% )   ( 1.526942s |  0.15% |  9.30% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.028449s |  0.09% |  6.06% )   ( 0.983765s |  0.09% |  5.99% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.529310s |  0.04% |  3.12% )   ( 0.487712s |  0.04% |  2.97% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.062250s |  0.09% |  6.26% )   ( 1.049468s |  0.10% |  6.39% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.464213s |  0.04% |  2.73% )   ( 0.417819s |  0.04% |  2.54% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.411968s |  0.12% |  8.32% )   ( 1.348075s |  0.13% |  8.21% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.265310s |  0.29% | 19.25% )   ( 3.173814s |  0.31% | 19.33% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.481287s |  0.04% |  2.83% )   ( 0.478468s |  0.04% |  2.91% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.465708s |  0.04% |  2.74% )   ( 0.454983s |  0.04% |  2.77% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003593s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003097s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003533s |  0.00% |  0.00% )   ( 0.003971s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008907s |  0.00% |  0.05% )   ( 0.008978s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p25\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.314034s |  1.57% |  3.15% )   ( 16.442240s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001170s |  0.00% |  0.00% )   ( 0.001196s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.310948s |  1.57% | 99.98% )   ( 16.440834s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p26
30.5.0:         ( 0.045791s |  0.00% |  0.26% )   ( 0.045550s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044447s |  0.00% |  0.25% )   ( 0.044266s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.049639s |  0.00% |  0.28% )   ( 0.049460s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.051376s |  0.00% |  0.29% )   ( 0.051176s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.045462s |  0.00% |  0.26% )   ( 0.045314s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005222s |  0.00% |  0.00% )   ( 0.005828s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004413s |  0.00% |  0.00% )   ( 0.004987s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005720s |  0.00% |  0.00% )   ( 0.006347s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p26
41.5.0:         ( 0.173560s |  0.01% |  0.03% )   ( 0.006651s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004640s |  0.00% |  0.00% )   ( 0.005226s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.005068s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.004326s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004643s |  0.00% |  0.00% )   ( 0.005228s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035524s |  0.00% |  0.00% )   ( 0.035945s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.013834s |  0.00% |  0.00% )   ( 0.005331s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005414s |  0.00% |  0.00% )   ( 0.006017s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p26
54.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.780527s |  1.52% |  3.46% )   ( 16.078493s |  1.60% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004382s |  0.00% |  0.02% )   ( 0.004824s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.206071s |  0.10% |  7.18% )   ( 1.098757s |  0.10% |  6.83% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.967155s |  0.17% | 11.72% )   ( 1.847439s |  0.18% | 11.49% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.631620s |  0.14% |  9.72% )   ( 1.549738s |  0.15% |  9.63% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.860603s |  0.16% | 11.08% )   ( 1.798880s |  0.18% | 11.18% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.508658s |  0.13% |  8.99% )   ( 1.482026s |  0.14% |  9.21% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009382s |  0.09% |  6.01% )   ( 0.980986s |  0.09% |  6.10% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.553916s |  0.05% |  3.30% )   ( 0.544668s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.036664s |  0.09% |  6.17% )   ( 1.019222s |  0.10% |  6.33% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513766s |  0.04% |  3.06% )   ( 0.494925s |  0.04% |  3.07% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.387311s |  0.12% |  8.26% )   ( 1.342831s |  0.13% |  8.35% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.959212s |  0.26% | 17.63% )   ( 2.835158s |  0.28% | 17.63% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.563399s |  0.05% |  3.35% )   ( 0.546308s |  0.05% |  3.39% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.578388s |  0.05% |  3.44% )   ( 0.532731s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004450s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004418s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008699s |  0.00% |  0.05% )   ( 0.008779s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p26\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000188s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.739520s |  1.61% |  3.23% )   ( 17.238221s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001047s |  0.00% |  0.00% )   ( 0.001067s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.736664s |  1.61% | 99.98% )   ( 17.236976s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.pUjdJK"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p27
30.5.0:         ( 0.055099s |  0.00% |  0.31% )   ( 0.047881s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048810s |  0.00% |  0.27% )   ( 0.048604s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 3072363 ${BASHPID}' INT
33.5.0:         ( 0.048856s |  0.00% |  0.27% )   ( 0.048655s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 3072363 ${BASHPID}' TERM
34.5.0:         ( 0.053456s |  0.00% |  0.30% )   ( 0.053257s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 3072363 ${BASHPID}' HUP
35.5.0:         ( 0.049938s |  0.00% |  0.28% )   ( 0.049748s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003433s |  0.00% |  0.00% )   ( 0.003824s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.003048s |  0.00% |  0.00% )   ( 0.003434s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.pUjdJK"/.nLines
38.5.2:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003728s |  0.00% |  0.00% )   ( 0.004130s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p27
41.5.0:         ( 0.075834s |  0.00% |  0.02% )   ( 0.004067s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002987s |  0.00% |  0.00% )   ( 0.003394s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.quit ]]
46.5.0:         ( 0.002760s |  0.00% |  0.00% )   ( 0.003138s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.done ]]
46.5.1:         ( 0.002750s |  0.00% |  0.00% )   ( 0.003115s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002956s |  0.00% |  0.00% )   ( 0.003344s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023374s |  0.00% |  0.00% )   ( 0.023693s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003108s |  0.00% |  0.00% )   ( 0.003497s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003326s |  0.00% |  0.00% )   ( 0.003714s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.pUjdJK"/.wait/p27
54.5.0:         ( 0.002706s |  0.00% |  0.00% )   ( 0.003082s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002649s |  0.00% |  0.00% )   ( 0.003015s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.333088s |  1.57% |  5.14% )   ( 16.907275s |  1.69% |  5.16% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002799s |  0.00% |  0.01% )   ( 0.003167s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.114897s |  0.10% |  6.43% )   ( 1.097865s |  0.10% |  6.49% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.089020s |  0.18% | 12.05% )   ( 2.034931s |  0.20% | 12.03% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.647673s |  0.14% |  9.50% )   ( 1.605124s |  0.16% |  9.49% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.067153s |  0.18% | 11.92% )   ( 2.040062s |  0.20% | 12.06% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616188s |  0.14% |  9.32% )   ( 1.583926s |  0.15% |  9.36% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013198s |  0.09% |  5.84% )   ( 0.991005s |  0.09% |  5.86% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.440379s |  0.04% |  2.54% )   ( 0.435634s |  0.04% |  2.57% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.138290s |  0.10% |  6.56% )   ( 1.080294s |  0.10% |  6.38% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.393257s |  0.03% |  2.26% )   ( 0.374486s |  0.03% |  2.21% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.448398s |  0.13% |  8.35% )   ( 1.374246s |  0.13% |  8.12% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.500962s |  0.31% | 20.19% )   ( 3.454928s |  0.34% | 20.43% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.441115s |  0.04% |  2.54% )   ( 0.426086s |  0.04% |  2.52% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.419759s |  0.03% |  2.42% )   ( 0.405521s |  0.04% |  2.39% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002885s |  0.00% |  0.00% )   ( 0.003253s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002629s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002815s |  0.00% |  0.00% )   ( 0.003152s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004974s |  0.00% |  0.02% )   ( 0.005066s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p27\; $'\n'printf '\n' >&21
241.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000169s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001400s |  0.00% |  0.00% )   ( 0.001415s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.401753s |  2.21% |  4.44% )   ( 0.001511s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.050293s |  0.00% |  0.00% )   ( 0.050577s |  0.00% |  0.01% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.pUjdJK"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.pUjdJK"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 3072377  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.pUjdJK"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000306s |  0.00% |  0.00% )   ( 0.000352s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.003281s |  0.00% |  0.00% )   ( 0.002373s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.pUjdJK" 2>/dev/null

WALL CLOCK TIME: 49.491029s
TOTAL RUN TIME:  1100.568026s
TOTAL CPU TIME:  999.184384s

