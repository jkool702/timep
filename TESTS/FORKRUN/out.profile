LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 550.115710s | 50.01% )            ( 498.759016s | 49.83% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000636s |  0.00% |  0.00% )   ( 0.000323s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 550.115074s | 50.01% | 99.99% )   ( 498.758693s | 49.83% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.043158s |  0.00% |  0.00% )   ( 0.043011s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001171s |  0.00% |  0.00% )   ( 0.001003s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008628s |  0.00% |  0.00% )   ( 0.008628s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.008628s |  0.00% |100.00% )   ( 0.008628s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.002854s |  0.00% |  0.00% )   ( 0.002908s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026329s |  0.00% |  0.00% )   ( 0.000469s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
1084.2.0:       ( 550.016281s | 50.00% | 99.98% )   ( 498.697386s | 49.82% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.000981s |  0.00% |  0.00% )   ( 0.001162s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.000981s |  0.00% |100.00% )   ( 0.001162s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000169s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.007468s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003521s |  0.00% |  0.00% )   ( 0.003568s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000130s |  0.00% |100.00% )   ( 0.000148s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000866s |  0.00% |  0.00% )   ( 0.000994s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000085s |  0.00% |  9.81% )   ( 0.000094s |  0.00% |  9.45% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000069s |  0.00% |  7.96% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000066s |  0.00% |  7.62% )   ( 0.000077s |  0.00% |  7.74% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000068s |  0.00% |  7.85% )   ( 0.000079s |  0.00% |  7.94% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.73% )   ( 0.000078s |  0.00% |  7.84% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  7.96% )   ( 0.000080s |  0.00% |  8.04% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.73% )   ( 0.000078s |  0.00% |  7.84% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000110s |  0.00% | 12.70% )   ( 0.000122s |  0.00% | 12.27% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.62% )   ( 0.000077s |  0.00% |  7.74% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000061s |  0.00% |  7.04% )   ( 0.000071s |  0.00% |  7.14% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000065s |  0.00% |  7.50% )   ( 0.000077s |  0.00% |  7.74% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000073s |  0.00% |  8.42% )   ( 0.000081s |  0.00% |  8.14% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.007805s |  0.00% |  0.00% )   ( 0.007914s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002201s |  0.00% |  0.00% )   ( 0.002324s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000236s |  0.00% | 10.72% )   ( 0.000259s |  0.00% | 11.14% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001965s |  0.00% | 89.27% )   ( 0.002065s |  0.00% | 88.85% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003306s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000102s |  0.00% |100.00% )   ( 0.000118s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001898s |  0.00% |  0.00% )   ( 0.001980s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000532s |  0.00% |  0.00% )   ( 0.000545s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134532s |  0.01% |  0.02% )   ( 0.134360s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000348s |  0.00% |  0.25% )   ( 0.000383s |  0.00% |  0.28% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021053s |  0.00% | 15.64% )   ( 0.021016s |  0.00% | 15.64% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023543s |  0.00% | 17.49% )   ( 0.023499s |  0.00% | 17.48% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023798s |  0.00% | 17.68% )   ( 0.023751s |  0.00% | 17.67% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023485s |  0.00% | 17.45% )   ( 0.023442s |  0.00% | 17.44% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023509s |  0.00% | 17.47% )   ( 0.023462s |  0.00% | 17.46% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000072s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018489s |  0.00% | 13.74% )   ( 0.018459s |  0.00% | 13.73% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000094s |  0.00% |  0.06% )   ( 0.000106s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000072s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.05% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000421s |  0.00% |  0.00% )   ( 0.000452s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.204899s |  0.38% |  0.76% )   ( 1.818501s |  0.18% |  0.36% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000250s |  0.00% |  0.00% )   ( 0.000282s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.026470s |  0.00% |  0.62% )   ( 0.026401s |  0.00% |  1.45% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023709s |  0.00% |  0.56% )   ( 0.023662s |  0.00% |  1.30% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023628s |  0.00% |  0.56% )   ( 0.023576s |  0.00% |  1.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023502s |  0.00% |  0.55% )   ( 0.023455s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023446s |  0.00% |  0.55% )   ( 0.023399s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.088970s |  0.00% |  0.00% )   ( 0.101756s |  0.01% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.682565s |  0.24% |  0.09% )   ( 0.121683s |  0.01% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001012s |  0.00% |  0.00% )   ( 0.001139s |  0.00% |  0.01% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.087751s |  0.00% |  0.00% )   ( 0.100489s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.087256s |  0.00% |  0.00% )   ( 0.099999s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.086948s |  0.00% |  0.00% )   ( 0.099601s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.089147s |  0.00% |  0.00% )   ( 0.101441s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.089500s |  0.00% |  0.00% )   ( 0.101628s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086289s |  0.00% |  0.00% )   ( 0.099038s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086301s |  0.00% |  0.00% )   ( 0.098940s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.086711s |  0.00% |  0.00% )   ( 0.099433s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005732s |  0.00% |  0.13% )   ( 0.006151s |  0.00% |  0.33% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002565s |  0.00% |  0.06% )   ( 0.002893s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002565s |  0.00% |100.00% )   ( 0.002893s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086329s |  0.00% |  0.00% )   ( 0.099063s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085178s |  0.00% |  0.00% )   ( 0.097984s |  0.00% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.083632s |  0.00% |  0.00% )   ( 0.095810s |  0.00% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.090258s |  0.00% |  0.00% )   ( 0.103141s |  0.01% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087333s |  0.00% |  0.00% )   ( 0.099891s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.086700s |  0.00% |  0.00% )   ( 0.099342s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002768s |  0.00% |  0.00% )   ( 0.003174s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002641s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.060102s |  0.00% |  0.06% )   ( 0.042982s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003015s |  0.00% |  0.00% )   ( 0.003420s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002786s |  0.00% |  0.00% )   ( 0.003156s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.002977s |  0.00% |  0.00% )   ( 0.003376s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.007412s |  0.00% |  0.17% )   ( 0.006809s |  0.00% |  0.37% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/pAuto
598.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000125s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.069760s |  0.00% |  0.01% )   ( 0.069947s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006020s |  0.00% |  0.00% )   ( 0.006908s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000165s |  0.00% |  2.74% )   ( 0.000182s |  0.00% |  2.63% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000102s |  0.00% |  1.69% )   ( 0.000118s |  0.00% |  1.70% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000115s |  0.00% |  1.91% )   ( 0.000131s |  0.00% |  1.89% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000279s |  0.00% |  4.63% )   ( 0.000293s |  0.00% |  4.24% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000074s |  0.00% |  1.22% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000074s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000082s |  0.00% |  1.36% )   ( 0.000093s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.14% )   ( 0.000080s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000085s |  0.00% |  1.41% )   ( 0.000096s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000084s |  0.00% |  1.39% )   ( 0.000095s |  0.00% |  1.37% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000087s |  0.00% |  1.44% )   ( 0.000098s |  0.00% |  1.41% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000068s |  0.00% |  1.12% )   ( 0.000080s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000089s |  0.00% |  1.47% )   ( 0.000100s |  0.00% |  1.44% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000075s |  0.00% |  1.24% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000113s |  0.00% |  1.87% )   ( 0.000125s |  0.00% |  1.80% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000076s |  0.00% |  1.26% )   ( 0.000087s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.44% )   ( 0.000098s |  0.00% |  1.41% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000075s |  0.00% |  1.24% )   ( 0.000086s |  0.00% |  1.24% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000078s |  0.00% |  1.29% )   ( 0.000089s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000074s |  0.00% |  1.22% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.29% )   ( 0.000089s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000080s |  0.00% |  1.32% )   ( 0.000091s |  0.00% |  1.31% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000062s |  0.00% |  1.02% )   ( 0.000073s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.26% )   ( 0.000088s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.21% )   ( 0.000085s |  0.00% |  1.23% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000085s |  0.00% |  1.41% )   ( 0.000096s |  0.00% |  1.38% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000068s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000078s |  0.00% |  1.29% )   ( 0.000088s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000084s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000074s |  0.00% |  1.22% )   ( 0.000085s |  0.00% |  1.23% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000068s |  0.00% |  1.12% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.17% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000069s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000119s |  0.00% |  1.97% )   ( 0.000130s |  0.00% |  1.88% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000065s |  0.00% |  1.07% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000085s |  0.00% |  1.41% )   ( 0.000096s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000084s |  0.00% |  1.21% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000076s |  0.00% |  1.26% )   ( 0.000084s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.14% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000083s |  0.00% |  1.37% )   ( 0.000105s |  0.00% |  1.51% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000292s |  0.00% |  0.00% )   ( 0.000333s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000296s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023831s |  0.00% |  0.00% )   ( 0.023780s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023799s |  0.00% |  0.00% )   ( 0.023741s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023869s |  0.00% |  0.00% )   ( 0.172582s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023394s |  0.00% |  0.00% )   ( 0.023323s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.003005s |  0.00% |  0.00% )   ( 0.003459s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002832s |  0.00% |  0.00% )   ( 0.003241s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 20.919352s |  1.90% |  3.80% )   ( 19.994752s |  1.99% |  4.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000575s |  0.00% |  0.00% )   ( 0.000597s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 20.918442s |  1.90% | 99.99% )   ( 19.994059s |  1.99% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p0
30.5.0:         ( 0.023289s |  0.00% |  0.11% )   ( 0.023194s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023671s |  0.00% |  0.11% )   ( 0.023518s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023714s |  0.00% |  0.11% )   ( 0.023605s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.024097s |  0.00% |  0.11% )   ( 0.023956s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023977s |  0.00% |  0.11% )   ( 0.023878s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004717s |  0.00% |  0.00% )   ( 0.005302s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004350s |  0.00% |  0.00% )   ( 0.004923s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000297s |  0.00% |  0.00% )   ( 0.000281s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005474s |  0.00% |  0.00% )   ( 0.006087s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p0
41.5.0:         ( 0.380981s |  0.03% |  0.06% )   ( 0.007043s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004801s |  0.00% |  0.00% )   ( 0.005385s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004321s |  0.00% |  0.00% )   ( 0.004891s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004061s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004116s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036098s |  0.00% |  0.00% )   ( 0.033552s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004241s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004110s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007403s |  0.00% |  0.00% )   ( 0.004955s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005121s |  0.00% |  0.00% )   ( 0.005682s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p0
66.5.0:         ( 0.004222s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004058s |  0.00% |  0.00% )   ( 0.004624s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 20.302392s |  1.84% |  3.34% )   ( 19.748857s |  1.97% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004177s |  0.00% |  0.02% )   ( 0.004733s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.479362s |  0.13% |  7.28% )   ( 1.433678s |  0.14% |  7.25% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.334965s |  0.21% | 11.50% )   ( 2.296659s |  0.22% | 11.62% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.931582s |  0.17% |  9.51% )   ( 1.847876s |  0.18% |  9.35% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.313712s |  0.21% | 11.39% )   ( 2.240865s |  0.22% | 11.34% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.860701s |  0.16% |  9.16% )   ( 1.796094s |  0.17% |  9.09% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.310309s |  0.11% |  6.45% )   ( 1.286552s |  0.12% |  6.51% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.649437s |  0.05% |  3.19% )   ( 0.603902s |  0.06% |  3.05% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.341420s |  0.12% |  6.60% )   ( 1.319935s |  0.13% |  6.68% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.559114s |  0.05% |  2.75% )   ( 0.526866s |  0.05% |  2.66% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.663292s |  0.15% |  8.19% )   ( 1.609612s |  0.16% |  8.15% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.657247s |  0.33% | 18.01% )   ( 3.630468s |  0.36% | 18.38% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.615292s |  0.05% |  3.03% )   ( 0.584973s |  0.05% |  2.96% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.581782s |  0.05% |  2.86% )   ( 0.566644s |  0.05% |  2.86% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004910s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004468s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004384s |  0.00% |  0.00% )   ( 0.004932s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005023s |  0.00% |  0.02% )   ( 0.005084s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002853s |  0.00% |  0.00% )   ( 0.003282s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.318936s |  1.57% |  3.14% )   ( 16.459591s |  1.64% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000576s |  0.00% |  0.00% )   ( 0.000596s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.317740s |  1.57% | 99.99% )   ( 16.458898s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000244s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000233s |  0.00% |  0.00% )   ( 0.000256s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p1
30.5.0:         ( 0.024602s |  0.00% |  0.14% )   ( 0.024561s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023571s |  0.00% |  0.13% )   ( 0.023532s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023869s |  0.00% |  0.13% )   ( 0.023822s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023910s |  0.00% |  0.13% )   ( 0.023868s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023811s |  0.00% |  0.13% )   ( 0.023764s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005103s |  0.00% |  0.00% )   ( 0.005721s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   true
38.5.0:         ( 0.004776s |  0.00% |  0.00% )   ( 0.005408s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005756s |  0.00% |  0.00% )   ( 0.006414s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p1
41.5.0:         ( 0.394559s |  0.03% |  0.06% )   ( 0.007679s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005114s |  0.00% |  0.00% )   ( 0.005730s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005446s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004464s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004604s |  0.00% |  0.00% )   ( 0.005211s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036755s |  0.00% |  0.00% )   ( 0.037211s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004365s |  0.00% |  0.00% )   ( 0.004939s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004408s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009851s |  0.00% |  0.00% )   ( 0.005479s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005663s |  0.00% |  0.00% )   ( 0.006286s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p1
66.5.0:         ( 0.007412s |  0.00% |  0.00% )   ( 0.005310s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004492s |  0.00% |  0.00% )   ( 0.005119s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.671060s |  1.51% |  3.00% )   ( 16.196453s |  1.61% |  3.07% )    	(32x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004375s |  0.00% |  0.02% )   ( 0.004980s |  0.00% |  0.03% )    	(32x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.105468s |  0.10% |  6.63% )   ( 1.080356s |  0.10% |  6.67% )    	(32x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.842342s |  0.16% | 11.05% )   ( 1.777508s |  0.17% | 10.97% )    	(32x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.611415s |  0.14% |  9.66% )   ( 1.555472s |  0.15% |  9.60% )    	(32x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.821662s |  0.16% | 10.92% )   ( 1.770482s |  0.17% | 10.93% )    	(32x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.519291s |  0.13% |  9.11% )   ( 1.503930s |  0.15% |  9.28% )    	(32x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020118s |  0.09% |  6.11% )   ( 1.005807s |  0.10% |  6.21% )    	(32x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.614414s |  0.05% |  3.68% )   ( 0.592589s |  0.05% |  3.65% )    	(32x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.050442s |  0.09% |  6.30% )   ( 1.020372s |  0.10% |  6.29% )    	(32x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.546734s |  0.04% |  3.27% )   ( 0.536777s |  0.05% |  3.31% )    	(32x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.418122s |  0.12% |  8.50% )   ( 1.377807s |  0.13% |  8.50% )    	(32x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.867332s |  0.26% | 17.19% )   ( 2.782391s |  0.27% | 17.17% )    	(32x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.623904s |  0.05% |  3.74% )   ( 0.596638s |  0.05% |  3.68% )    	(32x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.625441s |  0.05% |  3.75% )   ( 0.591344s |  0.05% |  3.65% )    	(32x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005126s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004479s |  0.00% |  0.00% )   ( 0.005086s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005090s |  0.00% |  0.00% )   ( 0.005690s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009141s |  0.00% |  0.05% )   ( 0.009222s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 17.846792s |  1.62% |  3.24% )   ( 17.017007s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000605s |  0.00% |  0.00% )   ( 0.000623s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 17.845811s |  1.62% | 99.99% )   ( 17.016286s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p2
30.5.0:         ( 0.023483s |  0.00% |  0.13% )   ( 0.023440s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023712s |  0.00% |  0.13% )   ( 0.023666s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023827s |  0.00% |  0.13% )   ( 0.023782s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023842s |  0.00% |  0.13% )   ( 0.023802s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023938s |  0.00% |  0.13% )   ( 0.023892s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004769s |  0.00% |  0.00% )   ( 0.005299s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p2
41.5.0:         ( 0.295671s |  0.02% |  0.06% )   ( 0.006519s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004296s |  0.00% |  0.00% )   ( 0.004810s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030709s |  0.00% |  0.00% )   ( 0.031112s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003809s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004723s |  0.00% |  0.00% )   ( 0.004523s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004641s |  0.00% |  0.00% )   ( 0.005134s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p2
66.5.0:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003627s |  0.00% |  0.00% )   ( 0.004104s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.326122s |  1.57% |  3.73% )   ( 16.777866s |  1.67% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003778s |  0.00% |  0.02% )   ( 0.004312s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123622s |  0.10% |  6.48% )   ( 1.088288s |  0.10% |  6.48% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.999285s |  0.18% | 11.53% )   ( 1.942845s |  0.19% | 11.57% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.668064s |  0.15% |  9.62% )   ( 1.600702s |  0.15% |  9.54% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.020140s |  0.18% | 11.65% )   ( 1.914581s |  0.19% | 11.41% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.628692s |  0.14% |  9.40% )   ( 1.556837s |  0.15% |  9.27% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.025957s |  0.09% |  5.92% )   ( 1.002845s |  0.10% |  5.97% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.506120s |  0.04% |  2.92% )   ( 0.502573s |  0.05% |  2.99% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.078856s |  0.09% |  6.22% )   ( 1.065347s |  0.10% |  6.34% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501256s |  0.04% |  2.89% )   ( 0.458757s |  0.04% |  2.73% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472988s |  0.13% |  8.50% )   ( 1.417354s |  0.14% |  8.44% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.260536s |  0.29% | 18.81% )   ( 3.218754s |  0.32% | 19.18% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.543189s |  0.04% |  3.13% )   ( 0.516691s |  0.05% |  3.07% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.493639s |  0.04% |  2.84% )   ( 0.487980s |  0.04% |  2.90% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003677s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003521s |  0.00% |  0.00% )   ( 0.004003s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004002s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008416s |  0.00% |  0.04% )   ( 0.008502s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 17.500985s |  1.59% |  3.18% )   ( 16.574089s |  1.65% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000615s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 17.499990s |  1.59% | 99.99% )   ( 16.573378s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000331s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p3
30.5.0:         ( 0.023601s |  0.00% |  0.13% )   ( 0.023558s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023910s |  0.00% |  0.13% )   ( 0.023856s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023912s |  0.00% |  0.13% )   ( 0.023869s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023840s |  0.00% |  0.13% )   ( 0.023796s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023920s |  0.00% |  0.13% )   ( 0.023870s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004560s |  0.00% |  0.00% )   ( 0.005100s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003937s |  0.00% |  0.00% )   ( 0.004456s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004900s |  0.00% |  0.00% )   ( 0.005436s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p3
41.5.0:         ( 0.428086s |  0.03% |  0.08% )   ( 0.006930s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004717s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004375s |  0.00% |  0.00% )   ( 0.004961s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003922s |  0.00% |  0.00% )   ( 0.004441s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031780s |  0.00% |  0.00% )   ( 0.032143s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004004s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003542s |  0.00% |  0.00% )   ( 0.004022s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007319s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004976s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p3
66.5.0:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.839942s |  1.53% |  3.56% )   ( 16.328765s |  1.63% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003868s |  0.00% |  0.02% )   ( 0.004410s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.076231s |  0.09% |  6.39% )   ( 1.062836s |  0.10% |  6.50% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.934174s |  0.17% | 11.48% )   ( 1.886359s |  0.18% | 11.55% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.634068s |  0.14% |  9.70% )   ( 1.565671s |  0.15% |  9.58% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.973776s |  0.17% | 11.72% )   ( 1.859490s |  0.18% | 11.38% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.533071s |  0.13% |  9.10% )   ( 1.502125s |  0.15% |  9.19% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011950s |  0.09% |  6.00% )   ( 0.996899s |  0.09% |  6.10% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.553023s |  0.05% |  3.28% )   ( 0.544470s |  0.05% |  3.33% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.053673s |  0.09% |  6.25% )   ( 1.038031s |  0.10% |  6.35% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503649s |  0.04% |  2.99% )   ( 0.474900s |  0.04% |  2.90% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432978s |  0.13% |  8.50% )   ( 1.376441s |  0.13% |  8.42% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.036686s |  0.27% | 18.03% )   ( 2.951778s |  0.29% | 18.07% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.543749s |  0.04% |  3.22% )   ( 0.538799s |  0.05% |  3.29% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.549046s |  0.04% |  3.26% )   ( 0.526556s |  0.05% |  3.22% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004268s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004112s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit
80.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p* 1>&21
81.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.008897s |  0.00% |  0.05% )   ( 0.008863s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.524346s |  1.59% |  3.18% )   ( 16.421031s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000614s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.523402s |  1.59% | 99.99% )   ( 16.420320s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p4
30.5.0:         ( 0.023968s |  0.00% |  0.13% )   ( 0.023918s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024075s |  0.00% |  0.13% )   ( 0.024029s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.024188s |  0.00% |  0.13% )   ( 0.024142s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.024106s |  0.00% |  0.13% )   ( 0.024052s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023900s |  0.00% |  0.13% )   ( 0.023845s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004965s |  0.00% |  0.00% )   ( 0.005515s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004409s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005123s |  0.00% |  0.00% )   ( 0.005693s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p4
41.5.0:         ( 0.395078s |  0.03% |  0.07% )   ( 0.007114s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004684s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004519s |  0.00% |  0.00% )   ( 0.005094s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004005s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004878s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036002s |  0.00% |  0.00% )   ( 0.034413s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004034s |  0.00% |  0.00% )   ( 0.004566s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011547s |  0.00% |  0.00% )   ( 0.004987s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005202s |  0.00% |  0.00% )   ( 0.005780s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p4
66.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004656s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004358s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.888861s |  1.53% |  3.44% )   ( 16.173731s |  1.61% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004062s |  0.00% |  0.02% )   ( 0.004607s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.110223s |  0.10% |  6.57% )   ( 1.067748s |  0.10% |  6.60% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.906502s |  0.17% | 11.28% )   ( 1.841725s |  0.18% | 11.38% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.630719s |  0.14% |  9.65% )   ( 1.567821s |  0.15% |  9.69% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.854770s |  0.16% | 10.98% )   ( 1.818599s |  0.18% | 11.24% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.549738s |  0.14% |  9.17% )   ( 1.509232s |  0.15% |  9.33% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.056665s |  0.09% |  6.25% )   ( 0.996809s |  0.09% |  6.16% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.603103s |  0.05% |  3.57% )   ( 0.556347s |  0.05% |  3.43% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.068057s |  0.09% |  6.32% )   ( 1.031838s |  0.10% |  6.37% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.543817s |  0.04% |  3.21% )   ( 0.494626s |  0.04% |  3.05% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435803s |  0.13% |  8.50% )   ( 1.360886s |  0.13% |  8.41% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.910094s |  0.26% | 17.23% )   ( 2.841028s |  0.28% | 17.56% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.624751s |  0.05% |  3.69% )   ( 0.549588s |  0.05% |  3.39% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.590557s |  0.05% |  3.49% )   ( 0.532877s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003830s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004297s |  0.00% |  0.00% )   ( 0.004788s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005043s |  0.00% |  0.02% )   ( 0.005141s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.686387s |  1.60% |  3.21% )   ( 16.943674s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000601s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.685400s |  1.60% | 99.99% )   ( 16.942953s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000331s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p5
30.5.0:         ( 0.023844s |  0.00% |  0.13% )   ( 0.023800s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023967s |  0.00% |  0.13% )   ( 0.023924s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023962s |  0.00% |  0.13% )   ( 0.023914s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023952s |  0.00% |  0.13% )   ( 0.023906s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023918s |  0.00% |  0.13% )   ( 0.023869s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004615s |  0.00% |  0.00% )   ( 0.005135s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p5
41.5.0:         ( 0.292299s |  0.02% |  0.06% )   ( 0.006032s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003427s |  0.00% |  0.00% )   ( 0.003869s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032731s |  0.00% |  0.00% )   ( 0.029488s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.006590s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003549s |  0.00% |  0.00% )   ( 0.004037s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004797s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004782s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p5
66.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003861s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003264s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.162806s |  1.56% |  4.04% )   ( 16.709323s |  1.66% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003394s |  0.00% |  0.01% )   ( 0.003855s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.235503s |  0.11% |  7.19% )   ( 1.115899s |  0.11% |  6.67% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.006582s |  0.18% | 11.69% )   ( 1.948971s |  0.19% | 11.66% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612773s |  0.14% |  9.39% )   ( 1.579735s |  0.15% |  9.45% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.950489s |  0.17% | 11.36% )   ( 1.921078s |  0.19% | 11.49% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.558241s |  0.14% |  9.07% )   ( 1.549253s |  0.15% |  9.27% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013577s |  0.09% |  5.90% )   ( 1.004185s |  0.10% |  6.00% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.494252s |  0.04% |  2.87% )   ( 0.491938s |  0.04% |  2.94% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.088889s |  0.09% |  6.34% )   ( 1.054014s |  0.10% |  6.30% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452816s |  0.04% |  2.63% )   ( 0.441338s |  0.04% |  2.64% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.388192s |  0.12% |  8.08% )   ( 1.374761s |  0.13% |  8.22% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.289064s |  0.29% | 19.16% )   ( 3.248777s |  0.32% | 19.44% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.538140s |  0.04% |  3.13% )   ( 0.493745s |  0.04% |  2.95% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530894s |  0.04% |  3.09% )   ( 0.481774s |  0.04% |  2.88% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003680s |  0.00% |  0.00% )   ( 0.004162s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003396s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006887s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009074s |  0.00% |  0.05% )   ( 0.009154s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 20.173419s |  1.83% |  3.66% )   ( 19.567330s |  1.95% |  3.92% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000612s |  0.00% |  0.00% )   ( 0.000635s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 20.172425s |  1.83% | 99.99% )   ( 19.566595s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000344s |  0.00% |  0.00% )   ( 0.000387s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p6
30.5.0:         ( 0.023897s |  0.00% |  0.11% )   ( 0.023854s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023951s |  0.00% |  0.11% )   ( 0.023906s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023990s |  0.00% |  0.11% )   ( 0.023938s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023980s |  0.00% |  0.11% )   ( 0.023934s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023955s |  0.00% |  0.11% )   ( 0.023912s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003426s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003053s |  0.00% |  0.00% )   ( 0.003451s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004153s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p6
41.5.0:         ( 0.279956s |  0.02% |  0.06% )   ( 0.005299s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003527s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003098s |  0.00% |  0.00% )   ( 0.003513s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.002893s |  0.00% |  0.00% )   ( 0.003276s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003096s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024773s |  0.00% |  0.00% )   ( 0.025089s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002824s |  0.00% |  0.00% )   ( 0.003211s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002791s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002881s |  0.00% |  0.00% )   ( 0.003248s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003481s |  0.00% |  0.00% )   ( 0.003870s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p6
66.5.0:         ( 0.002764s |  0.00% |  0.00% )   ( 0.003144s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002948s |  0.00% |  0.00% )   ( 0.003361s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.689423s |  1.78% |  4.88% )   ( 19.354686s |  1.93% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002856s |  0.00% |  0.01% )   ( 0.003256s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.324959s |  0.12% |  6.72% )   ( 1.322355s |  0.13% |  6.83% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.550029s |  0.23% | 12.95% )   ( 2.499414s |  0.24% | 12.91% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.800970s |  0.16% |  9.14% )   ( 1.788726s |  0.17% |  9.24% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.326176s |  0.21% | 11.81% )   ( 2.317856s |  0.23% | 11.97% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.757873s |  0.15% |  8.92% )   ( 1.742430s |  0.17% |  9.00% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.203942s |  0.10% |  6.11% )   ( 1.157281s |  0.11% |  5.97% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.496773s |  0.04% |  2.52% )   ( 0.467423s |  0.04% |  2.41% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.303205s |  0.11% |  6.61% )   ( 1.257844s |  0.12% |  6.49% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.398493s |  0.03% |  2.02% )   ( 0.391273s |  0.03% |  2.02% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.628883s |  0.14% |  8.27% )   ( 1.572013s |  0.15% |  8.12% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.979993s |  0.36% | 20.21% )   ( 3.954002s |  0.39% | 20.42% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.484678s |  0.04% |  2.46% )   ( 0.452040s |  0.04% |  2.33% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.430593s |  0.03% |  2.18% )   ( 0.428773s |  0.04% |  2.21% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003028s |  0.00% |  0.00% )   ( 0.003408s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002788s |  0.00% |  0.00% )   ( 0.003170s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006163s |  0.00% |  0.00% )   ( 0.003481s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004961s |  0.00% |  0.02% )   ( 0.005032s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 19.081711s |  1.73% |  3.46% )   ( 18.434037s |  1.84% |  3.69% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000628s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 19.080730s |  1.73% | 99.99% )   ( 18.433289s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000353s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000355s |  0.00% |  0.00% )   ( 0.000398s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p7
30.5.0:         ( 0.023883s |  0.00% |  0.12% )   ( 0.023838s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023975s |  0.00% |  0.12% )   ( 0.023928s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023970s |  0.00% |  0.12% )   ( 0.023920s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023921s |  0.00% |  0.12% )   ( 0.023878s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023925s |  0.00% |  0.12% )   ( 0.023880s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002908s |  0.00% |  0.00% )   ( 0.003256s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002643s |  0.00% |  0.00% )   ( 0.002985s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003213s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p7
41.5.0:         ( 0.278746s |  0.02% |  0.07% )   ( 0.004500s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002963s |  0.00% |  0.00% )   ( 0.003348s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.002656s |  0.00% |  0.00% )   ( 0.003008s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.002485s |  0.00% |  0.00% )   ( 0.002832s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002740s |  0.00% |  0.00% )   ( 0.003079s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020686s |  0.00% |  0.00% )   ( 0.020972s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002548s |  0.00% |  0.00% )   ( 0.002872s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002483s |  0.00% |  0.00% )   ( 0.002819s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002650s |  0.00% |  0.00% )   ( 0.002988s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003150s |  0.00% |  0.00% )   ( 0.003520s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p7
66.5.0:         ( 0.002503s |  0.00% |  0.00% )   ( 0.002851s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002416s |  0.00% |  0.00% )   ( 0.002744s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.612243s |  1.69% |  5.41% )   ( 18.233211s |  1.82% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002559s |  0.00% |  0.01% )   ( 0.002905s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.222573s |  0.11% |  6.56% )   ( 1.211823s |  0.12% |  6.64% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.356942s |  0.21% | 12.66% )   ( 2.317855s |  0.23% | 12.71% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.769526s |  0.16% |  9.50% )   ( 1.733612s |  0.17% |  9.50% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.251408s |  0.20% | 12.09% )   ( 2.234343s |  0.22% | 12.25% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.749185s |  0.15% |  9.39% )   ( 1.695336s |  0.16% |  9.29% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.112258s |  0.10% |  5.97% )   ( 1.068022s |  0.10% |  5.85% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.475905s |  0.04% |  2.55% )   ( 0.431844s |  0.04% |  2.36% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.270137s |  0.11% |  6.82% )   ( 1.195999s |  0.11% |  6.55% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.361749s |  0.03% |  1.94% )   ( 0.361189s |  0.03% |  1.98% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.446585s |  0.13% |  7.77% )   ( 1.425930s |  0.14% |  7.82% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.773123s |  0.34% | 20.27% )   ( 3.747749s |  0.37% | 20.55% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.423694s |  0.03% |  2.27% )   ( 0.417224s |  0.04% |  2.28% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.396599s |  0.03% |  2.13% )   ( 0.389380s |  0.03% |  2.13% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002671s |  0.00% |  0.00% )   ( 0.003024s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002484s |  0.00% |  0.00% )   ( 0.002822s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002644s |  0.00% |  0.00% )   ( 0.002971s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004914s |  0.00% |  0.02% )   ( 0.004986s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.807627s |  1.61% |  3.23% )   ( 17.005466s |  1.69% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000621s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.806629s |  1.61% | 99.99% )   ( 17.004726s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000304s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p8
30.5.0:         ( 0.023877s |  0.00% |  0.13% )   ( 0.023837s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023913s |  0.00% |  0.13% )   ( 0.023868s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023974s |  0.00% |  0.13% )   ( 0.023926s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023967s |  0.00% |  0.13% )   ( 0.023925s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023952s |  0.00% |  0.13% )   ( 0.023908s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004387s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003440s |  0.00% |  0.00% )   ( 0.003907s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p8
41.5.0:         ( 0.287784s |  0.02% |  0.06% )   ( 0.005818s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003883s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.006197s |  0.00% |  0.00% )   ( 0.003615s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003441s |  0.00% |  0.00% )   ( 0.003857s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026308s |  0.00% |  0.00% )   ( 0.026660s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003666s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003119s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003793s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004212s |  0.00% |  0.00% )   ( 0.004689s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p8
66.5.0:         ( 0.003238s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003605s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.300625s |  1.57% |  4.22% )   ( 16.779274s |  1.67% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003355s |  0.00% |  0.01% )   ( 0.003815s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.082234s |  0.09% |  6.25% )   ( 1.063487s |  0.10% |  6.33% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.042990s |  0.18% | 11.80% )   ( 1.969820s |  0.19% | 11.73% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.715505s |  0.15% |  9.91% )   ( 1.613690s |  0.16% |  9.61% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.042237s |  0.18% | 11.80% )   ( 2.016759s |  0.20% | 12.01% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.681877s |  0.15% |  9.72% )   ( 1.572263s |  0.15% |  9.37% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.035083s |  0.09% |  5.98% )   ( 1.005865s |  0.10% |  5.99% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.491837s |  0.04% |  2.84% )   ( 0.481583s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.082391s |  0.09% |  6.25% )   ( 1.048824s |  0.10% |  6.25% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.471359s |  0.04% |  2.72% )   ( 0.423000s |  0.04% |  2.52% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.394760s |  0.12% |  8.06% )   ( 1.379880s |  0.13% |  8.22% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.299377s |  0.29% | 19.07% )   ( 3.259350s |  0.32% | 19.42% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.486676s |  0.04% |  2.81% )   ( 0.482107s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.470944s |  0.04% |  2.72% )   ( 0.458831s |  0.04% |  2.73% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003090s |  0.00% |  0.00% )   ( 0.003511s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006522s |  0.00% |  0.00% )   ( 0.003931s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009001s |  0.00% |  0.05% )   ( 0.009071s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 20.639627s |  1.87% |  3.75% )   ( 19.917322s |  1.98% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000639s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 20.638648s |  1.87% | 99.99% )   ( 19.916562s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000354s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000348s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p9
30.5.0:         ( 0.024030s |  0.00% |  0.11% )   ( 0.023977s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024208s |  0.00% |  0.11% )   ( 0.024145s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.024017s |  0.00% |  0.11% )   ( 0.023968s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.023899s |  0.00% |  0.11% )   ( 0.023850s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023980s |  0.00% |  0.11% )   ( 0.023928s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003907s |  0.00% |  0.00% )   ( 0.004360s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003394s |  0.00% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004558s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p9
41.5.0:         ( 0.421301s |  0.03% |  0.08% )   ( 0.005828s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004274s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004072s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003216s |  0.00% |  0.00% )   ( 0.003662s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003445s |  0.00% |  0.00% )   ( 0.003897s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026111s |  0.00% |  0.00% )   ( 0.026466s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003111s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003080s |  0.00% |  0.00% )   ( 0.003504s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003297s |  0.00% |  0.00% )   ( 0.003716s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p9
66.5.0:         ( 0.003220s |  0.00% |  0.00% )   ( 0.003570s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002945s |  0.00% |  0.00% )   ( 0.003334s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.009477s |  1.81% |  4.40% )   ( 19.695689s |  1.96% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003119s |  0.00% |  0.01% )   ( 0.003535s |  0.00% |  0.01% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.433748s |  0.13% |  7.16% )   ( 1.415637s |  0.14% |  7.18% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.667834s |  0.24% | 13.33% )   ( 2.652798s |  0.26% | 13.46% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.059671s |  0.18% | 10.29% )   ( 2.034681s |  0.20% | 10.33% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.666004s |  0.24% | 13.32% )   ( 2.594626s |  0.25% | 13.17% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.007336s |  0.18% | 10.03% )   ( 1.993388s |  0.19% | 10.12% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.277731s |  0.11% |  6.38% )   ( 1.245629s |  0.12% |  6.32% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.530553s |  0.04% |  2.65% )   ( 0.502410s |  0.05% |  2.55% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.290545s |  0.11% |  6.44% )   ( 1.273388s |  0.12% |  6.46% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.461694s |  0.04% |  2.30% )   ( 0.428900s |  0.04% |  2.17% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.422896s |  0.12% |  7.11% )   ( 1.397646s |  0.13% |  7.09% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.242746s |  0.29% | 16.20% )   ( 3.227226s |  0.32% | 16.38% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487616s |  0.04% |  2.43% )   ( 0.472579s |  0.04% |  2.39% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.457984s |  0.04% |  2.28% )   ( 0.453246s |  0.04% |  2.30% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003352s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002952s |  0.00% |  0.00% )   ( 0.003346s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003769s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005620s |  0.00% |  0.02% )   ( 0.005698s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.985217s |  1.81% |  3.63% )   ( 18.982540s |  1.89% |  3.80% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000635s |  0.00% |  0.00% )   ( 0.000657s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.984283s |  1.81% | 99.99% )   ( 18.981783s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p10
30.5.0:         ( 0.023905s |  0.00% |  0.11% )   ( 0.023856s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023934s |  0.00% |  0.11% )   ( 0.023889s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.023940s |  0.00% |  0.11% )   ( 0.023896s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.024270s |  0.00% |  0.12% )   ( 0.024224s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023881s |  0.00% |  0.11% )   ( 0.023830s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003571s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004230s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p10
41.5.0:         ( 0.478399s |  0.04% |  0.09% )   ( 0.005847s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006281s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003420s |  0.00% |  0.00% )   ( 0.003856s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003574s |  0.00% |  0.00% )   ( 0.003988s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030319s |  0.00% |  0.00% )   ( 0.027663s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003284s |  0.00% |  0.00% )   ( 0.003731s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003820s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003461s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p10
66.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003785s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003196s |  0.00% |  0.00% )   ( 0.003637s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.289568s |  1.75% |  4.19% )   ( 18.758092s |  1.87% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003369s |  0.00% |  0.01% )   ( 0.003828s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.409095s |  0.12% |  7.30% )   ( 1.316867s |  0.13% |  7.02% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.520632s |  0.22% | 13.06% )   ( 2.436232s |  0.24% | 12.98% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.986890s |  0.18% | 10.30% )   ( 1.950588s |  0.19% | 10.39% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.500588s |  0.22% | 12.96% )   ( 2.460337s |  0.24% | 13.11% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.946169s |  0.17% | 10.08% )   ( 1.899243s |  0.18% | 10.12% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.261286s |  0.11% |  6.53% )   ( 1.201423s |  0.12% |  6.40% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568820s |  0.05% |  2.94% )   ( 0.523176s |  0.05% |  2.78% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.291211s |  0.11% |  6.69% )   ( 1.264045s |  0.12% |  6.73% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.454012s |  0.04% |  2.35% )   ( 0.432419s |  0.04% |  2.30% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.362320s |  0.12% |  7.06% )   ( 1.329176s |  0.13% |  7.08% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.995551s |  0.27% | 15.52% )   ( 2.987068s |  0.29% | 15.92% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.514512s |  0.04% |  2.66% )   ( 0.492135s |  0.04% |  2.62% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.475113s |  0.04% |  2.46% )   ( 0.461555s |  0.04% |  2.46% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003417s |  0.00% |  0.00% )   ( 0.003882s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003125s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004141s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004967s |  0.00% |  0.02% )   ( 0.005033s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.419198s |  1.58% |  3.16% )   ( 16.221083s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000699s |  0.00% |  0.00% )   ( 0.000717s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.417506s |  1.58% | 99.99% )   ( 16.220266s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p11
30.5.0:         ( 0.042969s |  0.00% |  0.24% )   ( 0.042811s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.039795s |  0.00% |  0.22% )   ( 0.039663s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.024247s |  0.00% |  0.13% )   ( 0.024182s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.026622s |  0.00% |  0.15% )   ( 0.026540s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.024881s |  0.00% |  0.14% )   ( 0.024828s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005142s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004125s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005561s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p11
41.5.0:         ( 0.443928s |  0.04% |  0.08% )   ( 0.006885s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003989s |  0.00% |  0.00% )   ( 0.004535s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004695s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035490s |  0.00% |  0.00% )   ( 0.032915s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003754s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008363s |  0.00% |  0.00% )   ( 0.004856s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005248s |  0.00% |  0.00% )   ( 0.005824s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p11
66.5.0:         ( 0.007195s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004534s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.695047s |  1.51% |  3.42% )   ( 15.939134s |  1.59% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004254s |  0.00% |  0.02% )   ( 0.004803s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.118379s |  0.10% |  6.69% )   ( 1.059514s |  0.10% |  6.64% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.880070s |  0.17% | 11.26% )   ( 1.784671s |  0.17% | 11.19% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.654955s |  0.15% |  9.91% )   ( 1.525804s |  0.15% |  9.57% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.809199s |  0.16% | 10.83% )   ( 1.771958s |  0.17% | 11.11% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561351s |  0.14% |  9.35% )   ( 1.465602s |  0.14% |  9.19% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.052780s |  0.09% |  6.30% )   ( 0.978333s |  0.09% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.582268s |  0.05% |  3.48% )   ( 0.547646s |  0.05% |  3.43% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.062849s |  0.09% |  6.36% )   ( 1.019763s |  0.10% |  6.39% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503849s |  0.04% |  3.01% )   ( 0.484804s |  0.04% |  3.04% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.395117s |  0.12% |  8.35% )   ( 1.360357s |  0.13% |  8.53% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.903426s |  0.26% | 17.39% )   ( 2.856680s |  0.28% | 17.92% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.621558s |  0.05% |  3.72% )   ( 0.552060s |  0.05% |  3.46% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544992s |  0.04% |  3.26% )   ( 0.527139s |  0.05% |  3.30% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.006910s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004411s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005061s |  0.00% |  0.02% )   ( 0.005167s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 17.641912s |  1.60% |  3.20% )   ( 16.438612s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000710s |  0.00% |  0.00% )   ( 0.000733s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 17.640257s |  1.60% | 99.99% )   ( 16.437778s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p12
30.5.0:         ( 0.033270s |  0.00% |  0.18% )   ( 0.033114s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040984s |  0.00% |  0.23% )   ( 0.040849s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.039842s |  0.00% |  0.22% )   ( 0.039698s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.029523s |  0.00% |  0.16% )   ( 0.029428s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.026769s |  0.00% |  0.15% )   ( 0.026688s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004724s |  0.00% |  0.00% )   ( 0.005296s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004720s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005002s |  0.00% |  0.00% )   ( 0.005580s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p12
41.5.0:         ( 0.486118s |  0.04% |  0.09% )   ( 0.006791s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004433s |  0.00% |  0.00% )   ( 0.004951s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004429s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004077s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031944s |  0.00% |  0.00% )   ( 0.031362s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003864s |  0.00% |  0.00% )   ( 0.004382s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004753s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004999s |  0.00% |  0.00% )   ( 0.005557s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p12
66.5.0:         ( 0.003939s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004447s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.874690s |  1.53% |  3.54% )   ( 16.144203s |  1.61% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003856s |  0.00% |  0.02% )   ( 0.004359s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.167583s |  0.10% |  6.91% )   ( 1.081123s |  0.10% |  6.69% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.912595s |  0.17% | 11.33% )   ( 1.848525s |  0.18% | 11.45% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.623560s |  0.14% |  9.62% )   ( 1.561754s |  0.15% |  9.67% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.923941s |  0.17% | 11.40% )   ( 1.839433s |  0.18% | 11.39% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.550242s |  0.14% |  9.18% )   ( 1.497716s |  0.14% |  9.27% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026654s |  0.09% |  6.08% )   ( 0.983564s |  0.09% |  6.09% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.571764s |  0.05% |  3.38% )   ( 0.540474s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101321s |  0.10% |  6.52% )   ( 1.028628s |  0.10% |  6.37% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.515441s |  0.04% |  3.05% )   ( 0.477590s |  0.04% |  2.95% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.464654s |  0.13% |  8.67% )   ( 1.366531s |  0.13% |  8.46% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.950310s |  0.26% | 17.48% )   ( 2.874213s |  0.28% | 17.80% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.539964s |  0.04% |  3.19% )   ( 0.526915s |  0.05% |  3.26% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.522805s |  0.04% |  3.09% )   ( 0.513378s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008493s |  0.00% |  0.04% )   ( 0.008567s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.986952s |  1.63% |  3.27% )   ( 16.849063s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000860s |  0.00% |  0.00% )   ( 0.000889s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.984258s |  1.63% | 99.98% )   ( 16.847978s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p13
30.5.0:         ( 0.046112s |  0.00% |  0.25% )   ( 0.045956s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046201s |  0.00% |  0.25% )   ( 0.046042s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.046384s |  0.00% |  0.25% )   ( 0.046199s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.045967s |  0.00% |  0.25% )   ( 0.045793s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.046073s |  0.00% |  0.25% )   ( 0.045893s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003864s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004676s |  0.00% |  0.00% )   ( 0.005193s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p13
41.5.0:         ( 0.428064s |  0.03% |  0.09% )   ( 0.006237s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004207s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003875s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003566s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003652s |  0.00% |  0.00% )   ( 0.004125s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032171s |  0.00% |  0.00% )   ( 0.029579s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003573s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009072s |  0.00% |  0.00% )   ( 0.004410s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004624s |  0.00% |  0.00% )   ( 0.005139s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p13
66.5.0:         ( 0.003741s |  0.00% |  0.00% )   ( 0.004235s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004132s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.216409s |  1.56% |  3.82% )   ( 16.505569s |  1.64% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003351s |  0.00% |  0.01% )   ( 0.003833s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.216924s |  0.11% |  7.06% )   ( 1.093818s |  0.10% |  6.62% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.964857s |  0.17% | 11.41% )   ( 1.931219s |  0.19% | 11.70% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.650069s |  0.15% |  9.58% )   ( 1.583090s |  0.15% |  9.59% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.902904s |  0.17% | 11.05% )   ( 1.868075s |  0.18% | 11.31% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.554770s |  0.14% |  9.03% )   ( 1.518112s |  0.15% |  9.19% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.110300s |  0.10% |  6.44% )   ( 1.011744s |  0.10% |  6.12% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568693s |  0.05% |  3.30% )   ( 0.519122s |  0.05% |  3.14% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.133466s |  0.10% |  6.58% )   ( 1.060554s |  0.10% |  6.42% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.499712s |  0.04% |  2.90% )   ( 0.450137s |  0.04% |  2.72% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.488647s |  0.13% |  8.64% )   ( 1.389467s |  0.13% |  8.41% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.110726s |  0.28% | 18.06% )   ( 3.078529s |  0.30% | 18.65% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.505066s |  0.04% |  2.93% )   ( 0.505651s |  0.05% |  3.06% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.506924s |  0.04% |  2.94% )   ( 0.492218s |  0.04% |  2.98% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004078s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006898s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004978s |  0.00% |  0.02% )   ( 0.005050s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000173s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 17.598624s |  1.59% |  3.19% )   ( 16.290985s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001017s |  0.00% |  0.00% )   ( 0.001033s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 17.595818s |  1.59% | 99.98% )   ( 16.289787s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p14
30.5.0:         ( 0.026603s |  0.00% |  0.15% )   ( 0.026509s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024089s |  0.00% |  0.13% )   ( 0.024024s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.036782s |  0.00% |  0.20% )   ( 0.036667s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.024205s |  0.00% |  0.13% )   ( 0.024136s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.023965s |  0.00% |  0.13% )   ( 0.023913s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005313s |  0.00% |  0.00% )   ( 0.005953s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005811s |  0.00% |  0.00% )   ( 0.006439s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p14
41.5.0:         ( 0.472649s |  0.04% |  0.08% )   ( 0.007938s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005271s |  0.00% |  0.00% )   ( 0.005906s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004997s |  0.00% |  0.00% )   ( 0.005659s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.007643s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004753s |  0.00% |  0.00% )   ( 0.005319s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037666s |  0.00% |  0.00% )   ( 0.038173s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004746s |  0.00% |  0.00% )   ( 0.005328s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005323s |  0.00% |  0.00% )   ( 0.005930s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p14
66.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.005035s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004258s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.863256s |  1.53% |  3.19% )   ( 16.015105s |  1.60% |  3.27% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004645s |  0.00% |  0.02% )   ( 0.005198s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.136182s |  0.10% |  6.73% )   ( 1.075128s |  0.10% |  6.71% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.901285s |  0.17% | 11.27% )   ( 1.796200s |  0.17% | 11.21% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.628918s |  0.14% |  9.65% )   ( 1.543495s |  0.15% |  9.63% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.818397s |  0.16% | 10.78% )   ( 1.758689s |  0.17% | 10.98% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.528379s |  0.13% |  9.06% )   ( 1.460161s |  0.14% |  9.11% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.106374s |  0.10% |  6.56% )   ( 1.023426s |  0.10% |  6.39% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573740s |  0.05% |  3.40% )   ( 0.569806s |  0.05% |  3.55% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.085562s |  0.09% |  6.43% )   ( 1.010386s |  0.10% |  6.30% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.536097s |  0.04% |  3.17% )   ( 0.515741s |  0.05% |  3.22% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.442493s |  0.13% |  8.55% )   ( 1.346457s |  0.13% |  8.40% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.796076s |  0.25% | 16.58% )   ( 2.762043s |  0.27% | 17.24% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.652827s |  0.05% |  3.87% )   ( 0.579912s |  0.05% |  3.62% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.652281s |  0.05% |  3.86% )   ( 0.568463s |  0.05% |  3.54% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004598s |  0.00% |  0.00% )   ( 0.005207s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004699s |  0.00% |  0.00% )   ( 0.005244s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006357s |  0.00% |  0.03% )   ( 0.006411s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 19.843798s |  1.80% |  3.60% )   ( 19.355463s |  1.93% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001060s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 19.841006s |  1.80% | 99.98% )   ( 19.354231s |  1.93% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p15
30.5.0:         ( 0.044573s |  0.00% |  0.22% )   ( 0.044443s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043823s |  0.00% |  0.22% )   ( 0.043693s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.038870s |  0.00% |  0.19% )   ( 0.038745s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.038545s |  0.00% |  0.19% )   ( 0.038427s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.034474s |  0.00% |  0.17% )   ( 0.034351s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002438s |  0.00% |  0.00% )   ( 0.002740s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002296s |  0.00% |  0.00% )   ( 0.002613s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002745s |  0.00% |  0.00% )   ( 0.003049s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p15
41.5.0:         ( 0.186801s |  0.01% |  0.05% )   ( 0.003905s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002351s |  0.00% |  0.00% )   ( 0.002654s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.002333s |  0.00% |  0.00% )   ( 0.002643s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.002130s |  0.00% |  0.00% )   ( 0.002412s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002244s |  0.00% |  0.00% )   ( 0.002516s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.017861s |  0.00% |  0.00% )   ( 0.018098s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002171s |  0.00% |  0.00% )   ( 0.002476s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002244s |  0.00% |  0.00% )   ( 0.002540s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002363s |  0.00% |  0.00% )   ( 0.002670s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002808s |  0.00% |  0.00% )   ( 0.003090s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p15
66.5.0:         ( 0.002321s |  0.00% |  0.00% )   ( 0.002645s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002181s |  0.00% |  0.00% )   ( 0.002493s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.389623s |  1.76% |  6.51% )   ( 19.084154s |  1.90% |  6.57% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002014s |  0.00% |  0.01% )   ( 0.002297s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.308620s |  0.11% |  6.74% )   ( 1.269641s |  0.12% |  6.65% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.574952s |  0.23% | 13.28% )   ( 2.550882s |  0.25% | 13.36% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.948497s |  0.17% | 10.04% )   ( 1.898988s |  0.18% |  9.95% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.543779s |  0.23% | 13.11% )   ( 2.517841s |  0.25% | 13.19% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.884431s |  0.17% |  9.71% )   ( 1.863383s |  0.18% |  9.76% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.173574s |  0.10% |  6.05% )   ( 1.142617s |  0.11% |  5.98% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.408938s |  0.03% |  2.10% )   ( 0.406194s |  0.04% |  2.12% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.302564s |  0.11% |  6.71% )   ( 1.269827s |  0.12% |  6.65% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.352264s |  0.03% |  1.81% )   ( 0.332812s |  0.03% |  1.74% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.573072s |  0.14% |  8.11% )   ( 1.541431s |  0.15% |  8.07% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.600063s |  0.32% | 18.56% )   ( 3.577000s |  0.35% | 18.74% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.375309s |  0.03% |  1.93% )   ( 0.370051s |  0.03% |  1.93% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.341546s |  0.03% |  1.76% )   ( 0.341190s |  0.03% |  1.78% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002244s |  0.00% |  0.00% )   ( 0.002546s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002069s |  0.00% |  0.00% )   ( 0.002346s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005285s |  0.00% |  0.00% )   ( 0.002567s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005177s |  0.00% |  0.02% )   ( 0.005232s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.897027s |  1.62% |  3.25% )   ( 17.066908s |  1.70% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001023s |  0.00% |  0.00% )   ( 0.001053s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.894235s |  1.62% | 99.98% )   ( 17.065689s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p16
30.5.0:         ( 0.043554s |  0.00% |  0.24% )   ( 0.043406s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044630s |  0.00% |  0.24% )   ( 0.044489s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.031869s |  0.00% |  0.17% )   ( 0.031765s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.045515s |  0.00% |  0.25% )   ( 0.045370s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.045409s |  0.00% |  0.25% )   ( 0.045258s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003878s |  0.00% |  0.00% )   ( 0.004310s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003338s |  0.00% |  0.00% )   ( 0.003762s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004532s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p16
41.5.0:         ( 0.265989s |  0.02% |  0.06% )   ( 0.005428s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003621s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003387s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003502s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003248s |  0.00% |  0.00% )   ( 0.003675s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031903s |  0.00% |  0.00% )   ( 0.026276s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003643s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003212s |  0.00% |  0.00% )   ( 0.003639s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003415s |  0.00% |  0.00% )   ( 0.003852s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p16
66.5.0:         ( 0.003042s |  0.00% |  0.00% )   ( 0.003446s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002988s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.321378s |  1.57% |  4.39% )   ( 16.752488s |  1.67% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003175s |  0.00% |  0.01% )   ( 0.003611s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.158034s |  0.10% |  6.68% )   ( 1.103792s |  0.11% |  6.58% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.038823s |  0.18% | 11.77% )   ( 2.004601s |  0.20% | 11.96% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.717011s |  0.15% |  9.91% )   ( 1.619841s |  0.16% |  9.66% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.029718s |  0.18% | 11.71% )   ( 1.994091s |  0.19% | 11.90% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.575897s |  0.14% |  9.09% )   ( 1.557456s |  0.15% |  9.29% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.081174s |  0.09% |  6.24% )   ( 1.006197s |  0.10% |  6.00% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503434s |  0.04% |  2.90% )   ( 0.473089s |  0.04% |  2.82% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.141828s |  0.10% |  6.59% )   ( 1.058857s |  0.10% |  6.32% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445495s |  0.04% |  2.57% )   ( 0.411100s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.428080s |  0.12% |  8.24% )   ( 1.396243s |  0.13% |  8.33% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.288582s |  0.29% | 18.98% )   ( 3.237993s |  0.32% | 19.32% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.466881s |  0.04% |  2.69% )   ( 0.453945s |  0.04% |  2.70% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.443246s |  0.04% |  2.55% )   ( 0.431672s |  0.04% |  2.57% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003309s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003038s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003487s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008193s |  0.00% |  0.04% )   ( 0.008269s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 19.157454s |  1.74% |  3.48% )   ( 18.159974s |  1.81% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001062s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 19.154706s |  1.74% | 99.98% )   ( 18.158723s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p17
30.5.0:         ( 0.043659s |  0.00% |  0.22% )   ( 0.043511s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031429s |  0.00% |  0.16% )   ( 0.031328s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.029797s |  0.00% |  0.15% )   ( 0.029709s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.032722s |  0.00% |  0.17% )   ( 0.032612s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.039783s |  0.00% |  0.20% )   ( 0.039636s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004214s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003785s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004642s |  0.00% |  0.00% )   ( 0.005147s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p17
41.5.0:         ( 0.400717s |  0.03% |  0.08% )   ( 0.006189s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003555s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003652s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029579s |  0.00% |  0.00% )   ( 0.029014s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003663s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009049s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004321s |  0.00% |  0.00% )   ( 0.004829s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p17
66.5.0:         ( 0.003525s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003991s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.474643s |  1.67% |  4.01% )   ( 17.871476s |  1.78% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003430s |  0.00% |  0.01% )   ( 0.003917s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.228303s |  0.11% |  6.64% )   ( 1.219509s |  0.12% |  6.82% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.238448s |  0.20% | 12.11% )   ( 2.199587s |  0.21% | 12.30% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.811539s |  0.16% |  9.80% )   ( 1.780859s |  0.17% |  9.96% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.266405s |  0.20% | 12.26% )   ( 2.215625s |  0.22% | 12.39% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.717219s |  0.15% |  9.29% )   ( 1.652002s |  0.16% |  9.24% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.158514s |  0.10% |  6.27% )   ( 1.076550s |  0.10% |  6.02% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.549509s |  0.04% |  2.97% )   ( 0.509918s |  0.05% |  2.85% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.174815s |  0.10% |  6.35% )   ( 1.123986s |  0.11% |  6.28% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.468098s |  0.04% |  2.53% )   ( 0.444062s |  0.04% |  2.48% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.495766s |  0.13% |  8.09% )   ( 1.405769s |  0.14% |  7.86% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.318213s |  0.30% | 17.96% )   ( 3.240282s |  0.32% | 18.13% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.535200s |  0.04% |  2.89% )   ( 0.509180s |  0.05% |  2.84% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.509184s |  0.04% |  2.75% )   ( 0.490230s |  0.04% |  2.74% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003376s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003731s |  0.00% |  0.00% )   ( 0.004189s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004921s |  0.00% |  0.02% )   ( 0.004988s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 18.636978s |  1.69% |  3.38% )   ( 18.222652s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001050s |  0.00% |  0.00% )   ( 0.001086s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 18.634207s |  1.69% | 99.98% )   ( 18.221391s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p18
30.5.0:         ( 0.033055s |  0.00% |  0.17% )   ( 0.032937s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029476s |  0.00% |  0.15% )   ( 0.029377s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.029081s |  0.00% |  0.15% )   ( 0.028997s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.029497s |  0.00% |  0.15% )   ( 0.029410s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.039071s |  0.00% |  0.20% )   ( 0.038929s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001987s |  0.00% |  0.00% )   ( 0.002233s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   true
38.5.0:         ( 0.001814s |  0.00% |  0.00% )   ( 0.002071s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002169s |  0.00% |  0.00% )   ( 0.002413s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p18
41.5.0:         ( 0.111364s |  0.01% |  0.04% )   ( 0.002743s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001889s |  0.00% |  0.00% )   ( 0.002135s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.001688s |  0.00% |  0.00% )   ( 0.001913s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.001592s |  0.00% |  0.00% )   ( 0.001801s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001666s |  0.00% |  0.00% )   ( 0.001881s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.012598s |  0.00% |  0.00% )   ( 0.012793s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001520s |  0.00% |  0.00% )   ( 0.001740s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001493s |  0.00% |  0.00% )   ( 0.001710s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001715s |  0.00% |  0.00% )   ( 0.001932s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001880s |  0.00% |  0.00% )   ( 0.002085s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p18
66.5.0:         ( 0.001511s |  0.00% |  0.00% )   ( 0.001734s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001574s |  0.00% |  0.00% )   ( 0.001778s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.312396s |  1.66% |  8.93% )   ( 18.004667s |  1.79% |  8.98% )    	(11x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001552s |  0.00% |  0.00% )   ( 0.001771s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.070495s |  0.09% |  5.84% )   ( 1.049984s |  0.10% |  5.83% )    	(11x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.382875s |  0.21% | 13.01% )   ( 2.359842s |  0.23% | 13.10% )    	(11x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.767694s |  0.16% |  9.65% )   ( 1.736663s |  0.17% |  9.64% )    	(11x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.362416s |  0.21% | 12.90% )   ( 2.326499s |  0.23% | 12.92% )    	(11x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.657203s |  0.15% |  9.04% )   ( 1.638379s |  0.16% |  9.09% )    	(11x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020468s |  0.09% |  5.57% )   ( 0.994866s |  0.09% |  5.52% )    	(11x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.349619s |  0.03% |  1.90% )   ( 0.324534s |  0.03% |  1.80% )    	(11x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.200259s |  0.10% |  6.55% )   ( 1.186144s |  0.11% |  6.58% )    	(11x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.303864s |  0.02% |  1.65% )   ( 0.264918s |  0.02% |  1.47% )    	(11x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.463962s |  0.13% |  7.99% )   ( 1.450359s |  0.14% |  8.05% )    	(11x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.128970s |  0.37% | 22.54% )   ( 4.087950s |  0.40% | 22.70% )    	(11x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.322437s |  0.02% |  1.76% )   ( 0.312161s |  0.03% |  1.73% )    	(11x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.280582s |  0.02% |  1.53% )   ( 0.270597s |  0.02% |  1.50% )    	(11x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001653s |  0.00% |  0.00% )   ( 0.001876s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001549s |  0.00% |  0.00% )   ( 0.001765s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001689s |  0.00% |  0.00% )   ( 0.001910s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008725s |  0.00% |  0.04% )   ( 0.008804s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.143952s |  1.55% |  3.11% )   ( 16.248671s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001074s |  0.00% |  0.00% )   ( 0.001101s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.141198s |  1.55% | 99.98% )   ( 16.247397s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p19
30.5.0:         ( 0.044743s |  0.00% |  0.26% )   ( 0.044562s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041943s |  0.00% |  0.24% )   ( 0.041782s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.049503s |  0.00% |  0.28% )   ( 0.049334s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.033629s |  0.00% |  0.19% )   ( 0.033518s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.038094s |  0.00% |  0.22% )   ( 0.037962s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004651s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004644s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005173s |  0.00% |  0.00% )   ( 0.005742s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p19
41.5.0:         ( 0.352862s |  0.03% |  0.07% )   ( 0.006658s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004604s |  0.00% |  0.00% )   ( 0.005159s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004766s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004594s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004614s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031467s |  0.00% |  0.00% )   ( 0.031892s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003928s |  0.00% |  0.00% )   ( 0.004448s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007165s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004823s |  0.00% |  0.00% )   ( 0.005350s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p19
66.5.0:         ( 0.003802s |  0.00% |  0.00% )   ( 0.004323s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003783s |  0.00% |  0.00% )   ( 0.004306s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.465431s |  1.49% |  3.69% )   ( 15.916056s |  1.59% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003787s |  0.00% |  0.02% )   ( 0.004322s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.138574s |  0.10% |  6.91% )   ( 1.079387s |  0.10% |  6.78% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.909896s |  0.17% | 11.59% )   ( 1.820633s |  0.18% | 11.43% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.578568s |  0.14% |  9.58% )   ( 1.535293s |  0.15% |  9.64% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.818626s |  0.16% | 11.04% )   ( 1.794857s |  0.17% | 11.27% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.563194s |  0.14% |  9.49% )   ( 1.480631s |  0.14% |  9.30% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.994075s |  0.09% |  6.03% )   ( 0.964084s |  0.09% |  6.05% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.552590s |  0.05% |  3.35% )   ( 0.524320s |  0.05% |  3.29% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.044961s |  0.09% |  6.34% )   ( 0.996477s |  0.09% |  6.26% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.471896s |  0.04% |  2.86% )   ( 0.453229s |  0.04% |  2.84% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.366370s |  0.12% |  8.29% )   ( 1.330078s |  0.13% |  8.35% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.929372s |  0.26% | 17.79% )   ( 2.898494s |  0.28% | 18.21% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549736s |  0.04% |  3.33% )   ( 0.523265s |  0.05% |  3.28% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.543786s |  0.04% |  3.30% )   ( 0.510986s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004418s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007006s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008749s |  0.00% |  0.05% )   ( 0.008820s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 20.232768s |  1.83% |  3.67% )   ( 19.186385s |  1.91% |  3.84% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001062s |  0.00% |  0.00% )   ( 0.001087s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 20.229929s |  1.83% | 99.98% )   ( 19.185123s |  1.91% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p20
30.5.0:         ( 0.045693s |  0.00% |  0.22% )   ( 0.045525s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045467s |  0.00% |  0.22% )   ( 0.045314s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.033979s |  0.00% |  0.16% )   ( 0.033862s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.037579s |  0.00% |  0.18% )   ( 0.037454s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.035650s |  0.00% |  0.17% )   ( 0.035532s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004451s |  0.00% |  0.00% )   ( 0.004989s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004644s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004958s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p20
41.5.0:         ( 0.373528s |  0.03% |  0.07% )   ( 0.006647s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004014s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034134s |  0.00% |  0.00% )   ( 0.031502s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004308s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004315s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003858s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004577s |  0.00% |  0.00% )   ( 0.005097s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p20
66.5.0:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003487s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.553269s |  1.77% |  3.86% )   ( 18.870260s |  1.88% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003773s |  0.00% |  0.01% )   ( 0.004270s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.365881s |  0.12% |  6.98% )   ( 1.347707s |  0.13% |  7.14% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.221874s |  0.20% | 11.36% )   ( 2.196939s |  0.21% | 11.64% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.852566s |  0.16% |  9.47% )   ( 1.764850s |  0.17% |  9.35% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.226838s |  0.20% | 11.38% )   ( 2.161638s |  0.21% | 11.45% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.849290s |  0.16% |  9.45% )   ( 1.727409s |  0.17% |  9.15% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.235897s |  0.11% |  6.32% )   ( 1.204051s |  0.12% |  6.38% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565116s |  0.05% |  2.89% )   ( 0.550034s |  0.05% |  2.91% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.259363s |  0.11% |  6.44% )   ( 1.252616s |  0.12% |  6.63% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508562s |  0.04% |  2.60% )   ( 0.472740s |  0.04% |  2.50% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.622939s |  0.14% |  8.30% )   ( 1.568965s |  0.15% |  8.31% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.714752s |  0.33% | 18.99% )   ( 3.585347s |  0.35% | 18.99% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.560172s |  0.05% |  2.86% )   ( 0.525445s |  0.05% |  2.78% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.566246s |  0.05% |  2.89% )   ( 0.508249s |  0.05% |  2.69% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003876s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003533s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005021s |  0.00% |  0.02% )   ( 0.005087s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 18.353000s |  1.66% |  3.33% )   ( 17.884034s |  1.78% |  3.58% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001077s |  0.00% |  0.00% )   ( 0.001105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 18.350207s |  1.66% | 99.98% )   ( 17.882754s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p21
30.5.0:         ( 0.048106s |  0.00% |  0.26% )   ( 0.047926s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048476s |  0.00% |  0.26% )   ( 0.048293s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.041136s |  0.00% |  0.22% )   ( 0.040991s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.045524s |  0.00% |  0.24% )   ( 0.045370s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.045567s |  0.00% |  0.24% )   ( 0.045417s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002292s |  0.00% |  0.00% )   ( 0.002571s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.002272s |  0.00% |  0.00% )   ( 0.002594s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002685s |  0.00% |  0.00% )   ( 0.002968s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p21
41.5.0:         ( 0.178949s |  0.01% |  0.06% )   ( 0.003422s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002293s |  0.00% |  0.00% )   ( 0.002574s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.002343s |  0.00% |  0.00% )   ( 0.002623s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.002163s |  0.00% |  0.00% )   ( 0.002457s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002365s |  0.00% |  0.00% )   ( 0.002610s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.022700s |  0.00% |  0.00% )   ( 0.016948s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002051s |  0.00% |  0.00% )   ( 0.002339s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002101s |  0.00% |  0.00% )   ( 0.002367s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002105s |  0.00% |  0.00% )   ( 0.002377s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002554s |  0.00% |  0.00% )   ( 0.002832s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p21
66.5.0:         ( 0.002064s |  0.00% |  0.00% )   ( 0.002343s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002032s |  0.00% |  0.00% )   ( 0.002312s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.877713s |  1.62% |  6.95% )   ( 17.587629s |  1.75% |  7.02% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001925s |  0.00% |  0.01% )   ( 0.002182s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.161000s |  0.10% |  6.49% )   ( 1.141468s |  0.11% |  6.49% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.250498s |  0.20% | 12.58% )   ( 2.232694s |  0.22% | 12.69% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.714080s |  0.15% |  9.58% )   ( 1.694487s |  0.16% |  9.63% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.215578s |  0.20% | 12.39% )   ( 2.194197s |  0.21% | 12.47% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.686263s |  0.15% |  9.43% )   ( 1.653719s |  0.16% |  9.40% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.046415s |  0.09% |  5.85% )   ( 1.024242s |  0.10% |  5.82% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.379451s |  0.03% |  2.12% )   ( 0.370440s |  0.03% |  2.10% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.142402s |  0.10% |  6.39% )   ( 1.133561s |  0.11% |  6.44% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.319661s |  0.02% |  1.78% )   ( 0.305056s |  0.03% |  1.73% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.419055s |  0.12% |  7.93% )   ( 1.407655s |  0.14% |  8.00% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.810943s |  0.34% | 21.31% )   ( 3.753930s |  0.37% | 21.34% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.379813s |  0.03% |  2.12% )   ( 0.356828s |  0.03% |  2.02% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.350629s |  0.03% |  1.96% )   ( 0.317170s |  0.03% |  1.80% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002029s |  0.00% |  0.00% )   ( 0.002310s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001948s |  0.00% |  0.00% )   ( 0.002206s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002088s |  0.00% |  0.00% )   ( 0.002336s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005331s |  0.00% |  0.02% )   ( 0.005433s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 18.066179s |  1.64% |  3.28% )   ( 17.108975s |  1.70% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001067s |  0.00% |  0.00% )   ( 0.001087s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 18.063328s |  1.64% | 99.98% )   ( 17.107711s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p22
30.5.0:         ( 0.048202s |  0.00% |  0.26% )   ( 0.048046s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045999s |  0.00% |  0.25% )   ( 0.045832s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.048367s |  0.00% |  0.26% )   ( 0.048221s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.050909s |  0.00% |  0.28% )   ( 0.050743s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.051847s |  0.00% |  0.28% )   ( 0.051675s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003373s |  0.00% |  0.00% )   ( 0.003828s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004184s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p22
41.5.0:         ( 0.402053s |  0.03% |  0.09% )   ( 0.005516s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004347s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003372s |  0.00% |  0.00% )   ( 0.003795s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003210s |  0.00% |  0.00% )   ( 0.003644s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003520s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028028s |  0.00% |  0.00% )   ( 0.028429s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003289s |  0.00% |  0.00% )   ( 0.003702s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003093s |  0.00% |  0.00% )   ( 0.003520s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.003814s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p22
66.5.0:         ( 0.003183s |  0.00% |  0.00% )   ( 0.003619s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.322082s |  1.57% |  4.35% )   ( 16.757229s |  1.67% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003167s |  0.00% |  0.01% )   ( 0.003595s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.123777s |  0.10% |  6.48% )   ( 1.099694s |  0.10% |  6.56% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.044185s |  0.18% | 11.80% )   ( 1.995505s |  0.19% | 11.90% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.679890s |  0.15% |  9.69% )   ( 1.597587s |  0.15% |  9.53% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.045849s |  0.18% | 11.81% )   ( 1.963083s |  0.19% | 11.71% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.583858s |  0.14% |  9.14% )   ( 1.557244s |  0.15% |  9.29% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.000139s |  0.09% |  5.77% )   ( 0.986126s |  0.09% |  5.88% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.523569s |  0.04% |  3.02% )   ( 0.482674s |  0.04% |  2.88% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.103630s |  0.10% |  6.37% )   ( 1.061994s |  0.10% |  6.33% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.431934s |  0.03% |  2.49% )   ( 0.412933s |  0.04% |  2.46% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.404000s |  0.12% |  8.10% )   ( 1.382273s |  0.13% |  8.24% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.383964s |  0.30% | 19.53% )   ( 3.305817s |  0.33% | 19.72% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.514468s |  0.04% |  2.97% )   ( 0.468074s |  0.04% |  2.79% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.479652s |  0.04% |  2.76% )   ( 0.440630s |  0.04% |  2.62% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002875s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003697s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008327s |  0.00% |  0.04% )   ( 0.008397s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 22.232630s |  2.02% |  4.04% )   ( 21.448327s |  2.14% |  4.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001274s |  0.00% |  0.00% )   ( 0.001298s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 22.229128s |  2.02% | 99.98% )   ( 21.446810s |  2.14% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p23
30.5.0:         ( 0.046830s |  0.00% |  0.21% )   ( 0.046659s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042090s |  0.00% |  0.18% )   ( 0.041943s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.047035s |  0.00% |  0.21% )   ( 0.046827s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.047801s |  0.00% |  0.21% )   ( 0.047627s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.049534s |  0.00% |  0.22% )   ( 0.049362s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004928s |  0.00% |  0.00% )   ( 0.005516s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.005096s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005533s |  0.00% |  0.00% )   ( 0.006162s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p23
41.5.0:         ( 0.365752s |  0.03% |  0.05% )   ( 0.007112s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004612s |  0.00% |  0.00% )   ( 0.005176s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004398s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004509s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004773s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032902s |  0.00% |  0.00% )   ( 0.033367s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004578s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004465s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.008332s |  0.00% |  0.00% )   ( 0.005568s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p23
66.5.0:         ( 0.004104s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004645s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.517273s |  1.95% |  3.45% )   ( 21.088295s |  2.10% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004127s |  0.00% |  0.01% )   ( 0.004697s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.554596s |  0.14% |  7.22% )   ( 1.542368s |  0.15% |  7.31% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.551982s |  0.23% | 11.86% )   ( 2.482500s |  0.24% | 11.77% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.984042s |  0.18% |  9.22% )   ( 1.956505s |  0.19% |  9.27% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.448753s |  0.22% | 11.38% )   ( 2.405316s |  0.24% | 11.40% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.973419s |  0.17% |  9.17% )   ( 1.915260s |  0.19% |  9.08% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.429856s |  0.12% |  6.64% )   ( 1.403603s |  0.14% |  6.65% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.633272s |  0.05% |  2.94% )   ( 0.605523s |  0.06% |  2.87% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.451791s |  0.13% |  6.74% )   ( 1.432770s |  0.14% |  6.79% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522442s |  0.04% |  2.42% )   ( 0.518419s |  0.05% |  2.45% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.727429s |  0.15% |  8.02% )   ( 1.689956s |  0.16% |  8.01% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.034738s |  0.36% | 18.75% )   ( 3.960769s |  0.39% | 18.78% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.601459s |  0.05% |  2.79% )   ( 0.596863s |  0.05% |  2.83% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.599367s |  0.05% |  2.78% )   ( 0.573746s |  0.05% |  2.72% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004459s |  0.00% |  0.00% )   ( 0.005037s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004187s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005189s |  0.00% |  0.02% )   ( 0.005240s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000196s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 19.633008s |  1.78% |  3.56% )   ( 18.445872s |  1.84% |  3.69% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.000939s |  0.00% |  0.00% )   ( 0.000963s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 19.630183s |  1.78% | 99.98% )   ( 18.444701s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p24
30.5.0:         ( 0.045988s |  0.00% |  0.23% )   ( 0.045800s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046124s |  0.00% |  0.23% )   ( 0.045953s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.047309s |  0.00% |  0.24% )   ( 0.047105s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.050569s |  0.00% |  0.25% )   ( 0.050371s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.048467s |  0.00% |  0.24% )   ( 0.048261s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005054s |  0.00% |  0.00% )   ( 0.005638s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004583s |  0.00% |  0.00% )   ( 0.005208s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005685s |  0.00% |  0.00% )   ( 0.006302s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p24
41.5.0:         ( 0.446074s |  0.04% |  0.07% )   ( 0.007211s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004852s |  0.00% |  0.00% )   ( 0.005430s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004545s |  0.00% |  0.00% )   ( 0.005158s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004396s |  0.00% |  0.00% )   ( 0.004971s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004608s |  0.00% |  0.00% )   ( 0.005189s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039510s |  0.00% |  0.00% )   ( 0.036998s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004361s |  0.00% |  0.00% )   ( 0.004922s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004988s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005123s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005331s |  0.00% |  0.00% )   ( 0.005939s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p24
66.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004660s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.825916s |  1.71% |  3.30% )   ( 18.073174s |  1.80% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004169s |  0.00% |  0.02% )   ( 0.004702s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.384451s |  0.12% |  7.35% )   ( 1.264677s |  0.12% |  6.99% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.118615s |  0.19% | 11.25% )   ( 2.065335s |  0.20% | 11.42% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.778186s |  0.16% |  9.44% )   ( 1.700928s |  0.16% |  9.41% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.078716s |  0.18% | 11.04% )   ( 2.018627s |  0.20% | 11.16% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.653496s |  0.15% |  8.78% )   ( 1.643816s |  0.16% |  9.09% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.227501s |  0.11% |  6.52% )   ( 1.167541s |  0.11% |  6.46% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.662965s |  0.06% |  3.52% )   ( 0.594930s |  0.05% |  3.29% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.252309s |  0.11% |  6.65% )   ( 1.201197s |  0.12% |  6.64% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.587266s |  0.05% |  3.11% )   ( 0.531894s |  0.05% |  2.94% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.579885s |  0.14% |  8.39% )   ( 1.490988s |  0.14% |  8.24% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.247480s |  0.29% | 17.25% )   ( 3.216922s |  0.32% | 17.79% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.632001s |  0.05% |  3.35% )   ( 0.596506s |  0.05% |  3.30% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.618876s |  0.05% |  3.28% )   ( 0.575111s |  0.05% |  3.18% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004571s |  0.00% |  0.00% )   ( 0.005140s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005045s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004926s |  0.00% |  0.02% )   ( 0.004990s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000187s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.972151s |  1.63% |  3.26% )   ( 17.270704s |  1.72% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001076s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.969282s |  1.63% | 99.98% )   ( 17.269437s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p25
30.5.0:         ( 0.045762s |  0.00% |  0.25% )   ( 0.045605s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045572s |  0.00% |  0.25% )   ( 0.045422s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.045785s |  0.00% |  0.25% )   ( 0.045625s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.043356s |  0.00% |  0.24% )   ( 0.043199s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.046780s |  0.00% |  0.26% )   ( 0.046622s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003168s |  0.00% |  0.00% )   ( 0.003538s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002638s |  0.00% |  0.00% )   ( 0.002967s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003386s |  0.00% |  0.00% )   ( 0.003764s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p25
41.5.0:         ( 0.278728s |  0.02% |  0.08% )   ( 0.004659s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003253s |  0.00% |  0.00% )   ( 0.003636s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.002866s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.002576s |  0.00% |  0.00% )   ( 0.002928s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002604s |  0.00% |  0.00% )   ( 0.002936s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021183s |  0.00% |  0.00% )   ( 0.021501s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002757s |  0.00% |  0.00% )   ( 0.003124s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002513s |  0.00% |  0.00% )   ( 0.002857s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005415s |  0.00% |  0.00% )   ( 0.003148s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003222s |  0.00% |  0.00% )   ( 0.003584s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p25
66.5.0:         ( 0.002628s |  0.00% |  0.00% )   ( 0.002992s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002661s |  0.00% |  0.00% )   ( 0.003034s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.387925s |  1.58% |  5.37% )   ( 16.959285s |  1.69% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002665s |  0.00% |  0.01% )   ( 0.003041s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.202094s |  0.10% |  6.91% )   ( 1.090643s |  0.10% |  6.43% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.119852s |  0.19% | 12.19% )   ( 2.059844s |  0.20% | 12.14% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.648916s |  0.14% |  9.48% )   ( 1.620119s |  0.16% |  9.55% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.147709s |  0.19% | 12.35% )   ( 2.081093s |  0.20% | 12.27% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.601498s |  0.14% |  9.21% )   ( 1.577788s |  0.15% |  9.30% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.004571s |  0.09% |  5.77% )   ( 0.983223s |  0.09% |  5.79% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.441729s |  0.04% |  2.54% )   ( 0.421902s |  0.04% |  2.48% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.097795s |  0.09% |  6.31% )   ( 1.083119s |  0.10% |  6.38% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.366304s |  0.03% |  2.10% )   ( 0.364454s |  0.03% |  2.14% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.407175s |  0.12% |  8.09% )   ( 1.381983s |  0.13% |  8.14% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.560075s |  0.32% | 20.47% )   ( 3.513109s |  0.35% | 20.71% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.409193s |  0.03% |  2.35% )   ( 0.408732s |  0.04% |  2.41% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.378349s |  0.03% |  2.17% )   ( 0.370235s |  0.03% |  2.18% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002596s |  0.00% |  0.00% )   ( 0.002922s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002502s |  0.00% |  0.00% )   ( 0.002841s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002718s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005261s |  0.00% |  0.02% )   ( 0.005332s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.338803s |  1.57% |  3.15% )   ( 16.300484s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001093s |  0.00% |  0.00% )   ( 0.001111s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.336006s |  1.57% | 99.98% )   ( 16.299196s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p26
30.5.0:         ( 0.054010s |  0.00% |  0.31% )   ( 0.050818s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.051298s |  0.00% |  0.29% )   ( 0.051095s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.045766s |  0.00% |  0.26% )   ( 0.045600s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.050569s |  0.00% |  0.29% )   ( 0.050366s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.046913s |  0.00% |  0.27% )   ( 0.046735s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005250s |  0.00% |  0.00% )   ( 0.005875s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004581s |  0.00% |  0.00% )   ( 0.005162s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005435s |  0.00% |  0.00% )   ( 0.006038s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p26
41.5.0:         ( 0.241114s |  0.02% |  0.04% )   ( 0.006635s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004880s |  0.00% |  0.00% )   ( 0.005458s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.004679s |  0.00% |  0.00% )   ( 0.005284s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004927s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004522s |  0.00% |  0.00% )   ( 0.005111s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034972s |  0.00% |  0.00% )   ( 0.035480s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004206s |  0.00% |  0.00% )   ( 0.004769s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004505s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005183s |  0.00% |  0.00% )   ( 0.005761s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p26
66.5.0:         ( 0.006659s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004189s |  0.00% |  0.00% )   ( 0.004788s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.723503s |  1.52% |  3.44% )   ( 15.919335s |  1.59% |  3.48% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004205s |  0.00% |  0.02% )   ( 0.004767s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.142035s |  0.10% |  6.82% )   ( 1.075672s |  0.10% |  6.75% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.849312s |  0.16% | 11.05% )   ( 1.802041s |  0.18% | 11.31% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.593701s |  0.14% |  9.52% )   ( 1.544878s |  0.15% |  9.70% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.828725s |  0.16% | 10.93% )   ( 1.805475s |  0.18% | 11.34% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.547179s |  0.14% |  9.25% )   ( 1.448246s |  0.14% |  9.09% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.017203s |  0.09% |  6.08% )   ( 0.972570s |  0.09% |  6.10% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.607005s |  0.05% |  3.62% )   ( 0.547901s |  0.05% |  3.44% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.134313s |  0.10% |  6.78% )   ( 1.013013s |  0.10% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.558586s |  0.05% |  3.34% )   ( 0.485433s |  0.04% |  3.04% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.403286s |  0.12% |  8.39% )   ( 1.333645s |  0.13% |  8.37% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.917497s |  0.26% | 17.44% )   ( 2.800609s |  0.27% | 17.59% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.571124s |  0.05% |  3.41% )   ( 0.545649s |  0.05% |  3.42% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.549332s |  0.04% |  3.28% )   ( 0.539436s |  0.05% |  3.38% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004441s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004803s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006445s |  0.00% |  0.00% )   ( 0.004956s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008631s |  0.00% |  0.04% )   ( 0.008710s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.190301s |  1.56% |  3.12% )   ( 16.374270s |  1.63% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001080s |  0.00% |  0.00% )   ( 0.001110s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.187512s |  1.56% | 99.98% )   ( 16.372981s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Li79rQ"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p27
30.5.0:         ( 0.048689s |  0.00% |  0.28% )   ( 0.048359s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.053252s |  0.00% |  0.30% )   ( 0.053028s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2782063 ${BASHPID}' INT
33.5.0:         ( 0.046476s |  0.00% |  0.27% )   ( 0.046271s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2782063 ${BASHPID}' TERM
34.5.0:         ( 0.051176s |  0.00% |  0.29% )   ( 0.050940s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2782063 ${BASHPID}' HUP
35.5.0:         ( 0.045749s |  0.00% |  0.26% )   ( 0.045558s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004097s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Li79rQ"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004298s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p27
41.5.0:         ( 0.236710s |  0.02% |  0.05% )   ( 0.005655s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003843s |  0.00% |  0.00% )   ( 0.004289s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit ]]
46.5.0:         ( 0.003671s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.done ]]
46.5.1:         ( 0.003298s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004070s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029008s |  0.00% |  0.00% )   ( 0.029399s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003867s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003115s |  0.00% |  0.00% )   ( 0.003539s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003541s |  0.00% |  0.00% )   ( 0.004012s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Li79rQ"/.wait/p27
66.5.0:         ( 0.004687s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003199s |  0.00% |  0.00% )   ( 0.003642s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.606002s |  1.50% |  4.39% )   ( 16.016892s |  1.60% |  4.44% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003185s |  0.00% |  0.01% )   ( 0.003629s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.160500s |  0.10% |  6.98% )   ( 1.075511s |  0.10% |  6.71% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.952575s |  0.17% | 11.75% )   ( 1.877385s |  0.18% | 11.72% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.578350s |  0.14% |  9.50% )   ( 1.544402s |  0.15% |  9.64% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.966762s |  0.17% | 11.84% )   ( 1.877381s |  0.18% | 11.72% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.486466s |  0.13% |  8.95% )   ( 1.464679s |  0.14% |  9.14% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.982204s |  0.08% |  5.91% )   ( 0.969482s |  0.09% |  6.05% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486305s |  0.04% |  2.92% )   ( 0.477841s |  0.04% |  2.98% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.088089s |  0.09% |  6.55% )   ( 1.031111s |  0.10% |  6.43% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.419544s |  0.03% |  2.52% )   ( 0.403598s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.390431s |  0.12% |  8.37% )   ( 1.320914s |  0.13% |  8.24% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.151823s |  0.28% | 18.98% )   ( 3.070108s |  0.30% | 19.16% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.474155s |  0.04% |  2.85% )   ( 0.460373s |  0.04% |  2.87% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.465613s |  0.04% |  2.80% )   ( 0.440478s |  0.04% |  2.75% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003477s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003016s |  0.00% |  0.00% )   ( 0.003405s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003353s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.Li79rQ"/.quit
80.5.0:         ( 0.000239s |  0.00% |  0.00% )   ( 0.000260s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p* 1>&21
81.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.009428s |  0.00% |  0.05% )   ( 0.009399s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000164s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000166s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001399s |  0.00% |  0.00% )   ( 0.001409s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.448209s |  2.22% |  4.44% )   ( 0.001759s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000297s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000300s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.047713s |  0.00% |  0.00% )   ( 0.047919s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Li79rQ"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.Li79rQ"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 2782075  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.Li79rQ"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000123s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.006273s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.Li79rQ" 2>/dev/null

10.0.0:         ( 549.880527s | 49.98% )            ( 502.115577s | 50.16% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.000591s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 549.879936s | 49.98% | 99.99% )   ( 502.115275s | 50.16% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.040205s |  0.00% |  0.00% )   ( 0.040101s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001146s |  0.00% |  0.00% )   ( 0.001023s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005348s |  0.00% |  0.00% )   ( 0.005348s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.005348s |  0.00% |100.00% )   ( 0.005348s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001061s |  0.00% |  0.00% )   ( 0.001134s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026252s |  0.00% |  0.00% )   ( 0.000960s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 549.790519s | 49.98% | 99.98% )   ( 502.059316s | 50.16% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001784s |  0.00% |  0.00% )   ( 0.002117s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001784s |  0.00% |100.00% )   ( 0.002117s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.008624s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003084s |  0.00% |  0.00% )   ( 0.003137s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000112s |  0.00% |100.00% )   ( 0.000127s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000860s |  0.00% |  0.00% )   ( 0.000993s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000071s |  0.00% |  8.25% )   ( 0.000078s |  0.00% |  7.85% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000067s |  0.00% |  7.79% )   ( 0.000079s |  0.00% |  7.95% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000066s |  0.00% |  7.67% )   ( 0.000078s |  0.00% |  7.85% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000069s |  0.00% |  8.02% )   ( 0.000082s |  0.00% |  8.25% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000066s |  0.00% |  7.67% )   ( 0.000078s |  0.00% |  7.85% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  8.02% )   ( 0.000081s |  0.00% |  8.15% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000064s |  0.00% |  7.44% )   ( 0.000075s |  0.00% |  7.55% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000115s |  0.00% | 13.37% )   ( 0.000127s |  0.00% | 12.78% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000066s |  0.00% |  7.67% )   ( 0.000077s |  0.00% |  7.75% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.55% )   ( 0.000076s |  0.00% |  7.65% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.79% )   ( 0.000078s |  0.00% |  7.85% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000075s |  0.00% |  8.72% )   ( 0.000084s |  0.00% |  8.45% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.006450s |  0.00% |  0.00% )   ( 0.006552s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.001604s |  0.00% |  0.00% )   ( 0.001703s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000162s |  0.00% | 10.09% )   ( 0.000178s |  0.00% | 10.45% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001442s |  0.00% | 89.90% )   ( 0.001525s |  0.00% | 89.54% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000105s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003139s |  0.00% |  0.00% )   ( 0.004067s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003057s |  0.00% |  0.00% )   ( 0.003173s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000086s |  0.00% |100.00% )   ( 0.000100s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001278s |  0.00% |  0.00% )   ( 0.001362s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000499s |  0.00% |  0.00% )   ( 0.000513s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134698s |  0.01% |  0.02% )   ( 0.134485s |  0.01% |  0.02% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000113s |  0.00% |  0.08% )   ( 0.000129s |  0.00% |  0.09% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.022922s |  0.00% | 17.01% )   ( 0.022872s |  0.00% | 17.00% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023452s |  0.00% | 17.41% )   ( 0.023408s |  0.00% | 17.40% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023578s |  0.00% | 17.50% )   ( 0.023531s |  0.00% | 17.49% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023485s |  0.00% | 17.43% )   ( 0.023440s |  0.00% | 17.42% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023233s |  0.00% | 17.24% )   ( 0.023187s |  0.00% | 17.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.017609s |  0.00% | 13.07% )   ( 0.017566s |  0.00% | 13.06% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000098s |  0.00% |  0.07% )   ( 0.000109s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000072s |  0.00% |  0.05% )   ( 0.000083s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000066s |  0.00% |  0.04% )   ( 0.000078s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000407s |  0.00% |  0.00% )   ( 0.000438s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.009016s |  0.36% |  0.72% )   ( 1.859688s |  0.18% |  0.37% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023500s |  0.00% |  0.58% )   ( 0.023446s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023454s |  0.00% |  0.58% )   ( 0.023412s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023549s |  0.00% |  0.58% )   ( 0.023504s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023458s |  0.00% |  0.58% )   ( 0.023414s |  0.00% |  1.25% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023240s |  0.00% |  0.57% )   ( 0.023195s |  0.00% |  1.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.092281s |  0.00% |  0.00% )   ( 0.105185s |  0.01% |  0.00% )    	(671x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.452681s |  0.22% |  0.09% )   ( 0.122752s |  0.01% |  0.00% )    	(670x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000633s |  0.00% |  0.00% )   ( 0.000714s |  0.00% |  0.01% )    	(3x)	│  │  │  │   continue
521.4.0:        ( 0.093576s |  0.00% |  0.00% )   ( 0.103195s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089249s |  0.00% |  0.00% )   ( 0.102208s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089534s |  0.00% |  0.00% )   ( 0.102337s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.095181s |  0.00% |  0.00% )   ( 0.105045s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.092719s |  0.00% |  0.00% )   ( 0.105677s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.089820s |  0.00% |  0.00% )   ( 0.101986s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.088856s |  0.00% |  0.00% )   ( 0.101763s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.089632s |  0.00% |  0.00% )   ( 0.102685s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.007574s |  0.00% |  0.18% )   ( 0.007996s |  0.00% |  0.42% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002571s |  0.00% |  0.06% )   ( 0.002927s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002571s |  0.00% |100.00% )   ( 0.002927s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.088109s |  0.00% |  0.00% )   ( 0.100981s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.087919s |  0.00% |  0.00% )   ( 0.100971s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.086752s |  0.00% |  0.00% )   ( 0.099278s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.097367s |  0.00% |  0.00% )   ( 0.106918s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.088464s |  0.00% |  0.00% )   ( 0.101358s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.088668s |  0.00% |  0.00% )   ( 0.101533s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002812s |  0.00% |  0.00% )   ( 0.003217s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002751s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.049048s |  0.00% |  0.05% )   ( 0.043500s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003204s |  0.00% |  0.00% )   ( 0.003631s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003028s |  0.00% |  0.00% )   ( 0.003449s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003171s |  0.00% |  0.00% )   ( 0.003599s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000196s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000108s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.003927s |  0.00% |  0.09% )   ( 0.004031s |  0.00% |  0.21% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/pAuto
598.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.063601s |  0.00% |  0.01% )   ( 0.063720s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005649s |  0.00% |  0.00% )   ( 0.006458s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000285s |  0.00% |  5.04% )   ( 0.000315s |  0.00% |  4.87% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000182s |  0.00% |  3.22% )   ( 0.000209s |  0.00% |  3.23% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000212s |  0.00% |  3.75% )   ( 0.000239s |  0.00% |  3.70% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000549s |  0.00% |  9.71% )   ( 0.000573s |  0.00% |  8.87% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000068s |  0.00% |  1.20% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000068s |  0.00% |  1.20% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000096s |  0.00% |  1.48% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000074s |  0.00% |  1.30% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000097s |  0.00% |  1.71% )   ( 0.000109s |  0.00% |  1.68% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000075s |  0.00% |  1.32% )   ( 0.000086s |  0.00% |  1.33% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000072s |  0.00% |  1.27% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000089s |  0.00% |  1.57% )   ( 0.000100s |  0.00% |  1.54% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000085s |  0.00% |  1.50% )   ( 0.000094s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000078s |  0.00% |  1.38% )   ( 0.000090s |  0.00% |  1.39% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000072s |  0.00% |  1.27% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000072s |  0.00% |  1.27% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000084s |  0.00% |  1.48% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000069s |  0.00% |  1.22% )   ( 0.000080s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000081s |  0.00% |  1.43% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000076s |  0.00% |  1.34% )   ( 0.000088s |  0.00% |  1.36% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000087s |  0.00% |  1.54% )   ( 0.000099s |  0.00% |  1.53% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.45% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000072s |  0.00% |  1.27% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000068s |  0.00% |  1.20% )   ( 0.000093s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000074s |  0.00% |  1.30% )   ( 0.000085s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000076s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000070s |  0.00% |  1.23% )   ( 0.000082s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000068s |  0.00% |  1.20% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000106s |  0.00% |  1.87% )   ( 0.000117s |  0.00% |  1.81% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000063s |  0.00% |  1.11% )   ( 0.000074s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.15% )   ( 0.000077s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000085s |  0.00% |  1.50% )   ( 0.000096s |  0.00% |  1.48% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000076s |  0.00% |  1.34% )   ( 0.000084s |  0.00% |  1.30% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.20% )   ( 0.000079s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000064s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000086s |  0.00% |  1.52% )   ( 0.000097s |  0.00% |  1.50% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000072s |  0.00% |  1.27% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000071s |  0.00% |  1.25% )   ( 0.000083s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000067s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000099s |  0.00% |  1.75% )   ( 0.000110s |  0.00% |  1.70% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000273s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000296s |  0.00% |  0.00% )   ( 0.000336s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023807s |  0.00% |  0.00% )   ( 0.023763s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023695s |  0.00% |  0.00% )   ( 0.023657s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023672s |  0.00% |  0.00% )   ( 0.168433s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023457s |  0.00% |  0.00% )   ( 0.023403s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002890s |  0.00% |  0.00% )   ( 0.003317s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002843s |  0.00% |  0.00% )   ( 0.003257s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 19.871603s |  1.80% |  3.61% )   ( 19.472533s |  1.94% |  3.87% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000602s |  0.00% |  0.00% )   ( 0.000619s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 19.870353s |  1.80% | 99.99% )   ( 19.471816s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000255s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p0
30.5.0:         ( 0.023162s |  0.00% |  0.11% )   ( 0.023124s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023630s |  0.00% |  0.11% )   ( 0.023590s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023639s |  0.00% |  0.11% )   ( 0.023602s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023871s |  0.00% |  0.12% )   ( 0.023831s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023949s |  0.00% |  0.12% )   ( 0.023906s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002679s |  0.00% |  0.00% )   ( 0.003024s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002400s |  0.00% |  0.00% )   ( 0.002729s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002925s |  0.00% |  0.00% )   ( 0.003260s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p0
41.5.0:         ( 0.117130s |  0.01% |  0.03% )   ( 0.003573s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002529s |  0.00% |  0.00% )   ( 0.002862s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.002307s |  0.00% |  0.00% )   ( 0.002619s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.002413s |  0.00% |  0.00% )   ( 0.002753s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002544s |  0.00% |  0.00% )   ( 0.002869s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020409s |  0.00% |  0.00% )   ( 0.020696s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002596s |  0.00% |  0.00% )   ( 0.002909s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002970s |  0.00% |  0.00% )   ( 0.003307s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p0
54.5.0:         ( 0.002495s |  0.00% |  0.00% )   ( 0.002835s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002447s |  0.00% |  0.00% )   ( 0.002773s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 19.572420s |  1.77% |  5.79% )   ( 19.282540s |  1.92% |  5.82% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002361s |  0.00% |  0.01% )   ( 0.002714s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.347907s |  0.12% |  6.88% )   ( 1.317225s |  0.13% |  6.83% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.590762s |  0.23% | 13.23% )   ( 2.577104s |  0.25% | 13.36% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.926485s |  0.17% |  9.84% )   ( 1.911508s |  0.19% |  9.91% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.557414s |  0.23% | 13.06% )   ( 2.527250s |  0.25% | 13.10% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.983201s |  0.18% | 10.13% )   ( 1.896142s |  0.18% |  9.83% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.182886s |  0.10% |  6.04% )   ( 1.171086s |  0.11% |  6.07% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.441881s |  0.04% |  2.25% )   ( 0.424500s |  0.04% |  2.20% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.330022s |  0.12% |  6.79% )   ( 1.323073s |  0.13% |  6.86% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.361339s |  0.03% |  1.84% )   ( 0.356250s |  0.03% |  1.84% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.609319s |  0.14% |  8.22% )   ( 1.592886s |  0.15% |  8.26% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.466524s |  0.31% | 17.71% )   ( 3.433877s |  0.34% | 17.80% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.407524s |  0.03% |  2.08% )   ( 0.386528s |  0.03% |  2.00% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.364795s |  0.03% |  1.86% )   ( 0.362397s |  0.03% |  1.87% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002266s |  0.00% |  0.00% )   ( 0.002564s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002283s |  0.00% |  0.00% )   ( 0.002565s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002486s |  0.00% |  0.00% )   ( 0.002791s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005273s |  0.00% |  0.02% )   ( 0.005336s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002789s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 19.639574s |  1.78% |  3.57% )   ( 19.001157s |  1.89% |  3.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000575s |  0.00% |  0.00% )   ( 0.000594s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 19.638639s |  1.78% | 99.99% )   ( 19.000468s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000343s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p1
30.5.0:         ( 0.023539s |  0.00% |  0.11% )   ( 0.023501s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023779s |  0.00% |  0.12% )   ( 0.023738s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023872s |  0.00% |  0.12% )   ( 0.023827s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023989s |  0.00% |  0.12% )   ( 0.023946s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023966s |  0.00% |  0.12% )   ( 0.023919s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004482s |  0.00% |  0.00% )   ( 0.005026s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004604s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004882s |  0.00% |  0.00% )   ( 0.005432s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p1
41.5.0:         ( 0.109976s |  0.00% |  0.02% )   ( 0.005601s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004026s |  0.00% |  0.00% )   ( 0.004567s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003618s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030818s |  0.00% |  0.00% )   ( 0.031236s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005106s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p1
54.5.0:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003629s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 19.311102s |  1.75% |  3.78% )   ( 18.769532s |  1.87% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003628s |  0.00% |  0.01% )   ( 0.004132s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.365780s |  0.12% |  7.07% )   ( 1.302640s |  0.13% |  6.94% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.242931s |  0.20% | 11.61% )   ( 2.217846s |  0.22% | 11.81% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.804321s |  0.16% |  9.34% )   ( 1.772166s |  0.17% |  9.44% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.181765s |  0.19% | 11.29% )   ( 2.156134s |  0.21% | 11.48% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.736110s |  0.15% |  8.99% )   ( 1.710493s |  0.17% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.161448s |  0.10% |  6.01% )   ( 1.156365s |  0.11% |  6.16% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.579817s |  0.05% |  3.00% )   ( 0.545446s |  0.05% |  2.90% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.312395s |  0.11% |  6.79% )   ( 1.230651s |  0.12% |  6.55% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.506532s |  0.04% |  2.62% )   ( 0.474190s |  0.04% |  2.52% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.595256s |  0.14% |  8.26% )   ( 1.533726s |  0.15% |  8.17% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.753841s |  0.34% | 19.43% )   ( 3.624552s |  0.36% | 19.31% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.542072s |  0.04% |  2.80% )   ( 0.526318s |  0.05% |  2.80% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.525206s |  0.04% |  2.71% )   ( 0.514873s |  0.05% |  2.74% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003873s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004575s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009158s |  0.00% |  0.04% )   ( 0.009235s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 18.512215s |  1.68% |  3.36% )   ( 17.692045s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000586s |  0.00% |  0.00% )   ( 0.000602s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 18.510871s |  1.68% | 99.99% )   ( 17.691345s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p2
30.5.0:         ( 0.023804s |  0.00% |  0.12% )   ( 0.023766s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023677s |  0.00% |  0.12% )   ( 0.023637s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023996s |  0.00% |  0.12% )   ( 0.023951s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023983s |  0.00% |  0.12% )   ( 0.023941s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023943s |  0.00% |  0.12% )   ( 0.023896s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003355s |  0.00% |  0.00% )   ( 0.003812s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p2
41.5.0:         ( 0.093782s |  0.00% |  0.02% )   ( 0.004915s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003483s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003342s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003151s |  0.00% |  0.00% )   ( 0.003599s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003887s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030563s |  0.00% |  0.00% )   ( 0.027915s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004800s |  0.00% |  0.00% )   ( 0.004055s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p2
54.5.0:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003610s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003110s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.210675s |  1.65% |  4.27% )   ( 17.477572s |  1.74% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003404s |  0.00% |  0.01% )   ( 0.003895s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.275182s |  0.11% |  7.00% )   ( 1.156080s |  0.11% |  6.61% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.225276s |  0.20% | 12.21% )   ( 2.058070s |  0.20% | 11.77% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.696887s |  0.15% |  9.31% )   ( 1.666059s |  0.16% |  9.53% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.204231s |  0.20% | 12.10% )   ( 2.100255s |  0.20% | 12.01% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.662422s |  0.15% |  9.12% )   ( 1.644816s |  0.16% |  9.41% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.048785s |  0.09% |  5.75% )   ( 1.030743s |  0.10% |  5.89% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.524638s |  0.04% |  2.88% )   ( 0.481161s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.136286s |  0.10% |  6.23% )   ( 1.110721s |  0.11% |  6.35% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.444488s |  0.04% |  2.44% )   ( 0.413784s |  0.04% |  2.36% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.471059s |  0.13% |  8.07% )   ( 1.417003s |  0.14% |  8.10% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.534134s |  0.32% | 19.40% )   ( 3.461208s |  0.34% | 19.80% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.493048s |  0.04% |  2.70% )   ( 0.481011s |  0.04% |  2.75% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.490835s |  0.04% |  2.69% )   ( 0.452766s |  0.04% |  2.59% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003360s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003014s |  0.00% |  0.00% )   ( 0.003439s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003392s |  0.00% |  0.00% )   ( 0.003809s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005145s |  0.00% |  0.02% )   ( 0.005207s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.516351s |  1.68% |  3.36% )   ( 17.681421s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000608s |  0.00% |  0.00% )   ( 0.000628s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.515362s |  1.68% | 99.99% )   ( 17.680696s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000289s |  0.00% |  0.00% )   ( 0.000323s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000291s |  0.00% |  0.00% )   ( 0.000328s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p3
30.5.0:         ( 0.024849s |  0.00% |  0.13% )   ( 0.024764s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023960s |  0.00% |  0.12% )   ( 0.023861s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024008s |  0.00% |  0.12% )   ( 0.023919s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.024018s |  0.00% |  0.12% )   ( 0.023929s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023990s |  0.00% |  0.12% )   ( 0.023895s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003789s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004736s |  0.00% |  0.00% )   ( 0.005268s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p3
41.5.0:         ( 0.152523s |  0.01% |  0.03% )   ( 0.005666s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003848s |  0.00% |  0.00% )   ( 0.004321s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003881s |  0.00% |  0.00% )   ( 0.004328s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031700s |  0.00% |  0.00% )   ( 0.030091s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006918s |  0.00% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p3
54.5.0:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004179s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.146702s |  1.64% |  3.92% )   ( 17.457037s |  1.74% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003679s |  0.00% |  0.02% )   ( 0.004153s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.251783s |  0.11% |  6.89% )   ( 1.173618s |  0.11% |  6.72% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.116164s |  0.19% | 11.66% )   ( 2.040387s |  0.20% | 11.68% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.775050s |  0.16% |  9.78% )   ( 1.678043s |  0.16% |  9.61% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.050331s |  0.18% | 11.29% )   ( 2.006668s |  0.20% | 11.49% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.611342s |  0.14% |  8.87% )   ( 1.595924s |  0.15% |  9.14% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.121917s |  0.10% |  6.18% )   ( 1.084048s |  0.10% |  6.20% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.534280s |  0.04% |  2.94% )   ( 0.514121s |  0.05% |  2.94% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.131689s |  0.10% |  6.23% )   ( 1.119645s |  0.11% |  6.41% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.466136s |  0.04% |  2.56% )   ( 0.455990s |  0.04% |  2.61% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.524571s |  0.13% |  8.40% )   ( 1.431884s |  0.14% |  8.20% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.481259s |  0.31% | 19.18% )   ( 3.332525s |  0.33% | 19.08% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.534380s |  0.04% |  2.94% )   ( 0.518143s |  0.05% |  2.96% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544121s |  0.04% |  2.99% )   ( 0.501888s |  0.05% |  2.87% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003423s |  0.00% |  0.00% )   ( 0.003889s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003795s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005013s |  0.00% |  0.02% )   ( 0.005084s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.645129s |  1.60% |  3.20% )   ( 16.887770s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000600s |  0.00% |  0.00% )   ( 0.000622s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.643857s |  1.60% | 99.99% )   ( 16.887051s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p4
30.5.0:         ( 0.023725s |  0.00% |  0.13% )   ( 0.023685s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023974s |  0.00% |  0.13% )   ( 0.023930s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023950s |  0.00% |  0.13% )   ( 0.023908s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023968s |  0.00% |  0.13% )   ( 0.023921s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023964s |  0.00% |  0.13% )   ( 0.023919s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005167s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004191s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005422s |  0.00% |  0.00% )   ( 0.005874s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p4
41.5.0:         ( 0.221223s |  0.02% |  0.04% )   ( 0.006701s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004787s |  0.00% |  0.00% )   ( 0.005362s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.006123s |  0.00% |  0.00% )   ( 0.005149s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.004021s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004338s |  0.00% |  0.00% )   ( 0.004888s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041002s |  0.00% |  0.00% )   ( 0.035470s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005752s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004946s |  0.00% |  0.00% )   ( 0.005509s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p4
54.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003700s |  0.00% |  0.00% )   ( 0.004213s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.185697s |  1.56% |  3.47% )   ( 16.645626s |  1.66% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004139s |  0.00% |  0.02% )   ( 0.004696s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.115094s |  0.10% |  6.48% )   ( 1.106169s |  0.11% |  6.64% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.926027s |  0.17% | 11.20% )   ( 1.876037s |  0.18% | 11.27% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.687415s |  0.15% |  9.81% )   ( 1.582268s |  0.15% |  9.50% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.961561s |  0.17% | 11.41% )   ( 1.882331s |  0.18% | 11.30% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.602718s |  0.14% |  9.32% )   ( 1.546393s |  0.15% |  9.29% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.033553s |  0.09% |  6.01% )   ( 1.005102s |  0.10% |  6.03% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.565303s |  0.05% |  3.28% )   ( 0.547901s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.110837s |  0.10% |  6.46% )   ( 1.063569s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513461s |  0.04% |  2.98% )   ( 0.494047s |  0.04% |  2.96% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.457591s |  0.13% |  8.48% )   ( 1.430187s |  0.14% |  8.59% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.073945s |  0.27% | 17.88% )   ( 3.003336s |  0.30% | 18.04% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.588864s |  0.05% |  3.42% )   ( 0.558876s |  0.05% |  3.35% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.545189s |  0.04% |  3.17% )   ( 0.544714s |  0.05% |  3.27% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005447s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.005023s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009122s |  0.00% |  0.05% )   ( 0.009213s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 18.565065s |  1.68% |  3.37% )   ( 18.206364s |  1.81% |  3.62% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000613s |  0.00% |  0.00% )   ( 0.000642s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 18.564071s |  1.68% | 99.99% )   ( 18.205622s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000267s |  0.00% |  0.00% )   ( 0.000299s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000307s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p5
30.5.0:         ( 0.025450s |  0.00% |  0.13% )   ( 0.025399s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023970s |  0.00% |  0.12% )   ( 0.023928s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023948s |  0.00% |  0.12% )   ( 0.023903s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023983s |  0.00% |  0.12% )   ( 0.023937s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023869s |  0.00% |  0.12% )   ( 0.023816s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002675s |  0.00% |  0.00% )   ( 0.003007s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002367s |  0.00% |  0.00% )   ( 0.002667s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002855s |  0.00% |  0.00% )   ( 0.003180s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p5
41.5.0:         ( 0.064914s |  0.00% |  0.02% )   ( 0.003171s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002360s |  0.00% |  0.00% )   ( 0.002662s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.002203s |  0.00% |  0.00% )   ( 0.002492s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.002090s |  0.00% |  0.00% )   ( 0.002377s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002334s |  0.00% |  0.00% )   ( 0.002640s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.016408s |  0.00% |  0.00% )   ( 0.016652s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002399s |  0.00% |  0.00% )   ( 0.002690s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002617s |  0.00% |  0.00% )   ( 0.002910s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p5
54.5.0:         ( 0.002072s |  0.00% |  0.00% )   ( 0.002350s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002051s |  0.00% |  0.00% )   ( 0.002334s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.316325s |  1.66% |  6.57% )   ( 18.018291s |  1.80% |  6.59% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002105s |  0.00% |  0.01% )   ( 0.002421s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201851s |  0.10% |  6.56% )   ( 1.180529s |  0.11% |  6.55% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.326028s |  0.21% | 12.69% )   ( 2.270027s |  0.22% | 12.59% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.766169s |  0.16% |  9.64% )   ( 1.740053s |  0.17% |  9.65% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.271624s |  0.20% | 12.40% )   ( 2.230933s |  0.22% | 12.38% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.682535s |  0.15% |  9.18% )   ( 1.668195s |  0.16% |  9.25% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.027642s |  0.09% |  5.61% )   ( 1.014225s |  0.10% |  5.62% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.395358s |  0.03% |  2.15% )   ( 0.386817s |  0.03% |  2.14% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.171282s |  0.10% |  6.39% )   ( 1.159557s |  0.11% |  6.43% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.330478s |  0.03% |  1.80% )   ( 0.326678s |  0.03% |  1.81% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.469292s |  0.13% |  8.02% )   ( 1.456759s |  0.14% |  8.08% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.917614s |  0.35% | 21.38% )   ( 3.882954s |  0.38% | 21.55% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.385003s |  0.03% |  2.10% )   ( 0.370053s |  0.03% |  2.05% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.369344s |  0.03% |  2.01% )   ( 0.329090s |  0.03% |  1.82% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002311s |  0.00% |  0.00% )   ( 0.002617s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001925s |  0.00% |  0.00% )   ( 0.002189s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005322s |  0.00% |  0.00% )   ( 0.002540s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008369s |  0.00% |  0.04% )   ( 0.008444s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.865906s |  1.62% |  3.24% )   ( 17.089000s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000601s |  0.00% |  0.00% )   ( 0.000625s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.864892s |  1.62% | 99.99% )   ( 17.088274s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p6
30.5.0:         ( 0.023923s |  0.00% |  0.13% )   ( 0.023881s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023997s |  0.00% |  0.13% )   ( 0.023949s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.023982s |  0.00% |  0.13% )   ( 0.023933s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023977s |  0.00% |  0.13% )   ( 0.023931s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023928s |  0.00% |  0.13% )   ( 0.023883s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005017s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p6
41.5.0:         ( 0.220830s |  0.02% |  0.04% )   ( 0.005727s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004514s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003708s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003610s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029799s |  0.00% |  0.00% )   ( 0.029564s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008893s |  0.00% |  0.00% )   ( 0.004346s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004371s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p6
54.5.0:         ( 0.006417s |  0.00% |  0.00% )   ( 0.003855s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.423044s |  1.58% |  4.06% )   ( 16.863059s |  1.68% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005087s |  0.00% |  0.02% )   ( 0.003875s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.185287s |  0.10% |  6.80% )   ( 1.119543s |  0.11% |  6.63% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.098327s |  0.19% | 12.04% )   ( 1.980921s |  0.19% | 11.74% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.665019s |  0.15% |  9.55% )   ( 1.629265s |  0.16% |  9.66% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.020040s |  0.18% | 11.59% )   ( 1.959305s |  0.19% | 11.61% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616297s |  0.14% |  9.27% )   ( 1.567295s |  0.15% |  9.29% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009322s |  0.09% |  5.79% )   ( 0.990028s |  0.09% |  5.87% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.525994s |  0.04% |  3.01% )   ( 0.500617s |  0.05% |  2.96% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.088878s |  0.09% |  6.24% )   ( 1.059191s |  0.10% |  6.28% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452658s |  0.04% |  2.59% )   ( 0.441444s |  0.04% |  2.61% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.427089s |  0.12% |  8.19% )   ( 1.388798s |  0.13% |  8.23% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.315753s |  0.30% | 19.03% )   ( 3.237576s |  0.32% | 19.19% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.525576s |  0.04% |  3.01% )   ( 0.503580s |  0.05% |  2.98% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.487717s |  0.04% |  2.79% )   ( 0.481621s |  0.04% |  2.85% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004108s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003716s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008911s |  0.00% |  0.04% )   ( 0.008986s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 20.595646s |  1.87% |  3.74% )   ( 20.270343s |  2.02% |  4.03% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000599s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 20.594608s |  1.87% | 99.99% )   ( 20.269624s |  2.02% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000277s |  0.00% |  0.00% )   ( 0.000319s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000290s |  0.00% |  0.00% )   ( 0.000328s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p7
30.5.0:         ( 0.025175s |  0.00% |  0.12% )   ( 0.025129s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024087s |  0.00% |  0.11% )   ( 0.024036s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024011s |  0.00% |  0.11% )   ( 0.023956s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.024172s |  0.00% |  0.11% )   ( 0.024123s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023881s |  0.00% |  0.11% )   ( 0.023830s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001481s |  0.00% |  0.00% )   ( 0.001671s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001272s |  0.00% |  0.00% )   ( 0.001447s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001552s |  0.00% |  0.00% )   ( 0.001735s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p7
41.5.0:         ( 0.033068s |  0.00% |  0.01% )   ( 0.001833s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001326s |  0.00% |  0.00% )   ( 0.001505s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.001262s |  0.00% |  0.00% )   ( 0.001425s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.001090s |  0.00% |  0.00% )   ( 0.001250s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001173s |  0.00% |  0.00% )   ( 0.001329s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.009689s |  0.00% |  0.00% )   ( 0.009836s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001190s |  0.00% |  0.00% )   ( 0.001347s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001359s |  0.00% |  0.00% )   ( 0.001526s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p7
54.5.0:         ( 0.001154s |  0.00% |  0.00% )   ( 0.001312s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001211s |  0.00% |  0.00% )   ( 0.001385s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.403640s |  1.85% | 11.00% )   ( 20.110415s |  2.00% | 11.02% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001189s |  0.00% |  0.00% )   ( 0.001356s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.361012s |  0.12% |  6.67% )   ( 1.324218s |  0.13% |  6.58% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.755839s |  0.25% | 13.50% )   ( 2.743438s |  0.27% | 13.64% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.043095s |  0.18% | 10.01% )   ( 2.036800s |  0.20% | 10.12% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.755983s |  0.25% | 13.50% )   ( 2.725260s |  0.27% | 13.55% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.798593s |  0.16% |  8.81% )   ( 1.768646s |  0.17% |  8.79% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.173911s |  0.10% |  5.75% )   ( 1.149940s |  0.11% |  5.71% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.323143s |  0.02% |  1.58% )   ( 0.320346s |  0.03% |  1.59% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.346394s |  0.12% |  6.59% )   ( 1.315169s |  0.13% |  6.53% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.254659s |  0.02% |  1.24% )   ( 0.251045s |  0.02% |  1.24% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.531869s |  0.13% |  7.50% )   ( 1.518727s |  0.15% |  7.55% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.473209s |  0.40% | 21.92% )   ( 4.410184s |  0.44% | 21.92% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.313522s |  0.02% |  1.53% )   ( 0.298448s |  0.02% |  1.48% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.271222s |  0.02% |  1.32% )   ( 0.246838s |  0.02% |  1.22% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001210s |  0.00% |  0.00% )   ( 0.001371s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001096s |  0.00% |  0.00% )   ( 0.001253s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.001359s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005149s |  0.00% |  0.02% )   ( 0.005220s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 17.951729s |  1.63% |  3.26% )   ( 16.974250s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000624s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 17.950760s |  1.63% | 99.99% )   ( 16.973520s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000356s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p8
30.5.0:         ( 0.024063s |  0.00% |  0.13% )   ( 0.024017s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023892s |  0.00% |  0.13% )   ( 0.023847s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024043s |  0.00% |  0.13% )   ( 0.023993s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.024138s |  0.00% |  0.13% )   ( 0.024091s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023962s |  0.00% |  0.13% )   ( 0.023912s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004977s |  0.00% |  0.00% )   ( 0.005583s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004379s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005498s |  0.00% |  0.00% )   ( 0.006100s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p8
41.5.0:         ( 0.193026s |  0.01% |  0.03% )   ( 0.007017s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005018s |  0.00% |  0.00% )   ( 0.005605s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004763s |  0.00% |  0.00% )   ( 0.005391s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005055s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004659s |  0.00% |  0.00% )   ( 0.005254s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034025s |  0.00% |  0.00% )   ( 0.034515s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004635s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.007012s |  0.00% |  0.00% )   ( 0.005585s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p8
54.5.0:         ( 0.004036s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004544s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.531411s |  1.59% |  3.36% )   ( 16.733645s |  1.67% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004175s |  0.00% |  0.02% )   ( 0.004755s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.204540s |  0.10% |  6.87% )   ( 1.123808s |  0.11% |  6.71% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.017206s |  0.18% | 11.50% )   ( 1.899549s |  0.18% | 11.35% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.652302s |  0.15% |  9.42% )   ( 1.600250s |  0.15% |  9.56% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.013547s |  0.18% | 11.48% )   ( 1.876248s |  0.18% | 11.21% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.653606s |  0.15% |  9.43% )   ( 1.562270s |  0.15% |  9.33% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.072876s |  0.09% |  6.11% )   ( 1.035844s |  0.10% |  6.19% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.599495s |  0.05% |  3.41% )   ( 0.567206s |  0.05% |  3.38% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.099278s |  0.09% |  6.27% )   ( 1.067050s |  0.10% |  6.37% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.538033s |  0.04% |  3.06% )   ( 0.502106s |  0.05% |  3.00% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.439346s |  0.13% |  8.21% )   ( 1.399652s |  0.13% |  8.36% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.999764s |  0.27% | 17.11% )   ( 2.951669s |  0.29% | 17.63% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.625607s |  0.05% |  3.56% )   ( 0.575998s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.611636s |  0.05% |  3.48% )   ( 0.567240s |  0.05% |  3.38% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004379s |  0.00% |  0.00% )   ( 0.004960s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004489s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004927s |  0.00% |  0.02% )   ( 0.004999s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.367820s |  1.57% |  3.15% )   ( 16.600509s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000619s |  0.00% |  0.00% )   ( 0.000637s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.366762s |  1.57% | 99.99% )   ( 16.599771s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000352s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p9
30.5.0:         ( 0.024031s |  0.00% |  0.13% )   ( 0.023988s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024100s |  0.00% |  0.13% )   ( 0.024048s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024156s |  0.00% |  0.13% )   ( 0.024106s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.023924s |  0.00% |  0.13% )   ( 0.023872s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.024056s |  0.00% |  0.13% )   ( 0.024007s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004922s |  0.00% |  0.00% )   ( 0.005510s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004515s |  0.00% |  0.00% )   ( 0.005066s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005333s |  0.00% |  0.00% )   ( 0.005912s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p9
41.5.0:         ( 0.157911s |  0.01% |  0.03% )   ( 0.006278s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004598s |  0.00% |  0.00% )   ( 0.005182s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004911s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004573s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004827s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034075s |  0.00% |  0.00% )   ( 0.034535s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010587s |  0.00% |  0.00% )   ( 0.005106s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005059s |  0.00% |  0.00% )   ( 0.005658s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p9
54.5.0:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004657s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.973757s |  1.54% |  3.49% )   ( 16.357084s |  1.63% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003926s |  0.00% |  0.02% )   ( 0.004463s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.108477s |  0.10% |  6.53% )   ( 1.086379s |  0.10% |  6.64% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.870868s |  0.17% | 11.02% )   ( 1.837388s |  0.18% | 11.23% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629631s |  0.14% |  9.60% )   ( 1.576882s |  0.15% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.864935s |  0.16% | 10.98% )   ( 1.823987s |  0.18% | 11.15% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.587296s |  0.14% |  9.35% )   ( 1.522321s |  0.15% |  9.30% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.012210s |  0.09% |  5.96% )   ( 0.999644s |  0.09% |  6.11% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.605737s |  0.05% |  3.56% )   ( 0.557602s |  0.05% |  3.40% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.059675s |  0.09% |  6.24% )   ( 1.028151s |  0.10% |  6.28% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.501237s |  0.04% |  2.95% )   ( 0.488317s |  0.04% |  2.98% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.436818s |  0.13% |  8.46% )   ( 1.396447s |  0.13% |  8.53% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.146192s |  0.28% | 18.53% )   ( 2.930807s |  0.29% | 17.91% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.595255s |  0.05% |  3.50% )   ( 0.564276s |  0.05% |  3.44% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.551500s |  0.05% |  3.24% )   ( 0.540420s |  0.05% |  3.30% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004362s |  0.00% |  0.00% )   ( 0.004921s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004348s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit
68.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p* 1>&21
69.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.010257s |  0.00% |  0.05% )   ( 0.009296s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 19.940689s |  1.81% |  3.62% )   ( 18.925999s |  1.89% |  3.76% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000626s |  0.00% |  0.00% )   ( 0.000649s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 19.939123s |  1.81% | 99.99% )   ( 18.925246s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p10
30.5.0:         ( 0.024406s |  0.00% |  0.12% )   ( 0.024322s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023983s |  0.00% |  0.12% )   ( 0.023938s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024027s |  0.00% |  0.12% )   ( 0.023981s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.024024s |  0.00% |  0.12% )   ( 0.023976s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.023798s |  0.00% |  0.11% )   ( 0.023752s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003487s |  0.00% |  0.00% )   ( 0.003959s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p10
41.5.0:         ( 0.226885s |  0.02% |  0.04% )   ( 0.005668s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003723s |  0.00% |  0.00% )   ( 0.004206s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003650s |  0.00% |  0.00% )   ( 0.004113s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031801s |  0.00% |  0.00% )   ( 0.029169s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004191s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p10
54.5.0:         ( 0.003365s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003328s |  0.00% |  0.00% )   ( 0.003773s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.502799s |  1.77% |  4.07% )   ( 18.706323s |  1.86% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003479s |  0.00% |  0.01% )   ( 0.003927s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.345556s |  0.12% |  6.89% )   ( 1.323263s |  0.13% |  7.07% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.490454s |  0.22% | 12.76% )   ( 2.458614s |  0.24% | 13.14% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.019842s |  0.18% | 10.35% )   ( 1.958537s |  0.19% | 10.46% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.520112s |  0.22% | 12.92% )   ( 2.423249s |  0.24% | 12.95% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.078102s |  0.18% | 10.65% )   ( 1.903315s |  0.19% | 10.17% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.304553s |  0.11% |  6.68% )   ( 1.209255s |  0.12% |  6.46% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.601704s |  0.05% |  3.08% )   ( 0.525463s |  0.05% |  2.80% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.305537s |  0.11% |  6.69% )   ( 1.251314s |  0.12% |  6.68% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483054s |  0.04% |  2.47% )   ( 0.441958s |  0.04% |  2.36% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.404811s |  0.12% |  7.20% )   ( 1.342503s |  0.13% |  7.17% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.952178s |  0.26% | 15.13% )   ( 2.901627s |  0.28% | 15.51% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.508585s |  0.04% |  2.60% )   ( 0.492534s |  0.04% |  2.63% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.484832s |  0.04% |  2.48% )   ( 0.470764s |  0.04% |  2.51% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003539s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003302s |  0.00% |  0.00% )   ( 0.003762s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003436s |  0.00% |  0.00% )   ( 0.003872s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005155s |  0.00% |  0.02% )   ( 0.005226s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 20.132696s |  1.83% |  3.66% )   ( 19.223909s |  1.92% |  3.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000642s |  0.00% |  0.00% )   ( 0.000659s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 20.131008s |  1.83% | 99.99% )   ( 19.223146s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p11
30.5.0:         ( 0.024085s |  0.00% |  0.11% )   ( 0.023995s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023937s |  0.00% |  0.11% )   ( 0.023891s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.024180s |  0.00% |  0.12% )   ( 0.024122s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.024212s |  0.00% |  0.12% )   ( 0.024160s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.024102s |  0.00% |  0.11% )   ( 0.024056s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004756s |  0.00% |  0.00% )   ( 0.005314s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005007s |  0.00% |  0.00% )   ( 0.005575s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p11
41.5.0:         ( 0.237188s |  0.02% |  0.04% )   ( 0.006139s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004378s |  0.00% |  0.00% )   ( 0.004927s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004386s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032459s |  0.00% |  0.00% )   ( 0.032902s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007489s |  0.00% |  0.00% )   ( 0.005047s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004970s |  0.00% |  0.00% )   ( 0.005540s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p11
54.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004456s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.669564s |  1.78% |  3.48% )   ( 18.990481s |  1.89% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003937s |  0.00% |  0.02% )   ( 0.004495s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.383057s |  0.12% |  7.03% )   ( 1.334481s |  0.13% |  7.02% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.278637s |  0.20% | 11.58% )   ( 2.204487s |  0.22% | 11.60% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.848395s |  0.16% |  9.39% )   ( 1.769570s |  0.17% |  9.31% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.184976s |  0.19% | 11.10% )   ( 2.132977s |  0.21% | 11.23% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.748831s |  0.15% |  8.89% )   ( 1.724982s |  0.17% |  9.08% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.252418s |  0.11% |  6.36% )   ( 1.228269s |  0.12% |  6.46% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.615504s |  0.05% |  3.12% )   ( 0.591841s |  0.05% |  3.11% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.328238s |  0.12% |  6.75% )   ( 1.275546s |  0.12% |  6.71% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.571943s |  0.05% |  2.90% )   ( 0.524844s |  0.05% |  2.76% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.693903s |  0.15% |  8.61% )   ( 1.561268s |  0.15% |  8.22% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.555706s |  0.32% | 18.07% )   ( 3.488375s |  0.34% | 18.36% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.622235s |  0.05% |  3.16% )   ( 0.587275s |  0.05% |  3.09% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.581784s |  0.05% |  2.95% )   ( 0.562071s |  0.05% |  2.95% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004593s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.006553s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004759s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004871s |  0.00% |  0.02% )   ( 0.004938s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 17.397560s |  1.58% |  3.16% )   ( 16.424124s |  1.64% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000822s |  0.00% |  0.00% )   ( 0.000846s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 17.394880s |  1.58% | 99.98% )   ( 16.423080s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p12
30.5.0:         ( 0.046219s |  0.00% |  0.26% )   ( 0.046068s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046288s |  0.00% |  0.26% )   ( 0.046129s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.046121s |  0.00% |  0.26% )   ( 0.045962s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.045945s |  0.00% |  0.26% )   ( 0.045790s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.046313s |  0.00% |  0.26% )   ( 0.046147s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005261s |  0.00% |  0.00% )   ( 0.005834s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004817s |  0.00% |  0.00% )   ( 0.005380s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005438s |  0.00% |  0.00% )   ( 0.006057s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p12
41.5.0:         ( 0.176222s |  0.01% |  0.03% )   ( 0.006815s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004916s |  0.00% |  0.00% )   ( 0.005515s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004364s |  0.00% |  0.00% )   ( 0.004928s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004524s |  0.00% |  0.00% )   ( 0.005098s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036950s |  0.00% |  0.00% )   ( 0.037431s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004702s |  0.00% |  0.00% )   ( 0.005284s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005141s |  0.00% |  0.00% )   ( 0.005727s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p12
54.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004827s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004228s |  0.00% |  0.00% )   ( 0.004810s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.872626s |  1.53% |  3.34% )   ( 16.065188s |  1.60% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004402s |  0.00% |  0.02% )   ( 0.004971s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.137219s |  0.10% |  6.74% )   ( 1.069565s |  0.10% |  6.65% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.851681s |  0.16% | 10.97% )   ( 1.769575s |  0.17% | 11.01% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.602659s |  0.14% |  9.49% )   ( 1.553602s |  0.15% |  9.67% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.907314s |  0.17% | 11.30% )   ( 1.774707s |  0.17% | 11.04% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.568380s |  0.14% |  9.29% )   ( 1.484014s |  0.14% |  9.23% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.083525s |  0.09% |  6.42% )   ( 0.998473s |  0.09% |  6.21% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.632100s |  0.05% |  3.74% )   ( 0.569165s |  0.05% |  3.54% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.129637s |  0.10% |  6.69% )   ( 1.027897s |  0.10% |  6.39% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.519376s |  0.04% |  3.07% )   ( 0.505952s |  0.05% |  3.14% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.390565s |  0.12% |  8.24% )   ( 1.372847s |  0.13% |  8.54% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.841651s |  0.25% | 16.84% )   ( 2.804501s |  0.28% | 17.45% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.624675s |  0.05% |  3.70% )   ( 0.576330s |  0.05% |  3.58% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.579442s |  0.05% |  3.43% )   ( 0.553589s |  0.05% |  3.44% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004410s |  0.00% |  0.00% )   ( 0.004986s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007596s |  0.00% |  0.00% )   ( 0.005165s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008989s |  0.00% |  0.05% )   ( 0.009066s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000173s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.879239s |  1.62% |  3.25% )   ( 17.097035s |  1.70% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000971s |  0.00% |  0.00% )   ( 0.000992s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.876501s |  1.62% | 99.98% )   ( 17.095873s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p13
30.5.0:         ( 0.046598s |  0.00% |  0.26% )   ( 0.046440s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.032187s |  0.00% |  0.18% )   ( 0.032087s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045779s |  0.00% |  0.25% )   ( 0.045616s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.027762s |  0.00% |  0.15% )   ( 0.027690s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.024026s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004310s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003389s |  0.00% |  0.00% )   ( 0.003852s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004434s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p13
41.5.0:         ( 0.212224s |  0.01% |  0.04% )   ( 0.005895s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004076s |  0.00% |  0.00% )   ( 0.004572s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003509s |  0.00% |  0.00% )   ( 0.003965s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004180s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029314s |  0.00% |  0.00% )   ( 0.029674s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003929s |  0.00% |  0.00% )   ( 0.004356s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004111s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p13
54.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003887s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.400287s |  1.58% |  4.05% )   ( 16.819373s |  1.68% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003450s |  0.00% |  0.01% )   ( 0.003935s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.146961s |  0.10% |  6.59% )   ( 1.120101s |  0.11% |  6.65% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.038704s |  0.18% | 11.71% )   ( 1.981299s |  0.19% | 11.77% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.680455s |  0.15% |  9.65% )   ( 1.621266s |  0.16% |  9.63% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.021844s |  0.18% | 11.61% )   ( 1.978407s |  0.19% | 11.76% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.629232s |  0.14% |  9.36% )   ( 1.574353s |  0.15% |  9.36% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.040316s |  0.09% |  5.97% )   ( 1.005605s |  0.10% |  5.97% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.551826s |  0.05% |  3.17% )   ( 0.513906s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.122652s |  0.10% |  6.45% )   ( 1.077515s |  0.10% |  6.40% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.447476s |  0.04% |  2.57% )   ( 0.437297s |  0.04% |  2.59% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.468809s |  0.13% |  8.44% )   ( 1.414871s |  0.14% |  8.41% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.229299s |  0.29% | 18.55% )   ( 3.130302s |  0.31% | 18.61% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.525785s |  0.04% |  3.02% )   ( 0.494400s |  0.04% |  2.93% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.493478s |  0.04% |  2.83% )   ( 0.466116s |  0.04% |  2.77% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003501s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003419s |  0.00% |  0.00% )   ( 0.003881s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003855s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004974s |  0.00% |  0.02% )   ( 0.005032s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 22.609841s |  2.05% |  4.11% )   ( 21.660152s |  2.16% |  4.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000957s |  0.00% |  0.00% )   ( 0.000978s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 22.607095s |  2.05% | 99.98% )   ( 21.659005s |  2.16% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p14
30.5.0:         ( 0.041125s |  0.00% |  0.18% )   ( 0.040971s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035694s |  0.00% |  0.15% )   ( 0.035585s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.033030s |  0.00% |  0.14% )   ( 0.032650s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.033655s |  0.00% |  0.14% )   ( 0.033553s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.044703s |  0.00% |  0.19% )   ( 0.044502s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005129s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003942s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004910s |  0.00% |  0.00% )   ( 0.005475s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p14
41.5.0:         ( 0.228079s |  0.02% |  0.03% )   ( 0.006317s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004346s |  0.00% |  0.00% )   ( 0.004873s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003858s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032621s |  0.00% |  0.00% )   ( 0.033049s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008557s |  0.00% |  0.00% )   ( 0.005011s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005109s |  0.00% |  0.00% )   ( 0.005691s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p14
54.5.0:         ( 0.004079s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 22.087848s |  2.00% |  3.61% )   ( 21.358949s |  2.13% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003912s |  0.00% |  0.01% )   ( 0.004434s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.673712s |  0.15% |  7.57% )   ( 1.587443s |  0.15% |  7.43% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.545028s |  0.23% | 11.52% )   ( 2.461045s |  0.24% | 11.52% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.073348s |  0.18% |  9.38% )   ( 1.997014s |  0.19% |  9.34% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.535740s |  0.23% | 11.48% )   ( 2.465631s |  0.24% | 11.54% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.975526s |  0.17% |  8.94% )   ( 1.924066s |  0.19% |  9.00% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.455707s |  0.13% |  6.59% )   ( 1.413744s |  0.14% |  6.61% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.627453s |  0.05% |  2.84% )   ( 0.606411s |  0.06% |  2.83% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.492072s |  0.13% |  6.75% )   ( 1.448973s |  0.14% |  6.78% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.546804s |  0.04% |  2.47% )   ( 0.525546s |  0.05% |  2.46% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.792980s |  0.16% |  8.11% )   ( 1.727652s |  0.17% |  8.08% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.100756s |  0.37% | 18.56% )   ( 4.030588s |  0.40% | 18.87% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.644119s |  0.05% |  2.91% )   ( 0.593965s |  0.05% |  2.78% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.620691s |  0.05% |  2.81% )   ( 0.572437s |  0.05% |  2.68% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004496s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004486s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004780s |  0.00% |  0.02% )   ( 0.004851s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.673834s |  1.60% |  3.21% )   ( 16.858522s |  1.68% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000999s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.671090s |  1.60% | 99.98% )   ( 16.857331s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p15
30.5.0:         ( 0.028292s |  0.00% |  0.16% )   ( 0.028217s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.025077s |  0.00% |  0.14% )   ( 0.025010s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.032493s |  0.00% |  0.18% )   ( 0.032390s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.032218s |  0.00% |  0.18% )   ( 0.032104s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.029454s |  0.00% |  0.16% )   ( 0.029361s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004863s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004065s |  0.00% |  0.00% )   ( 0.004587s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004907s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p15
41.5.0:         ( 0.309804s |  0.02% |  0.06% )   ( 0.006484s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004534s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004797s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004360s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004080s |  0.00% |  0.00% )   ( 0.004583s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030655s |  0.00% |  0.00% )   ( 0.031095s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009621s |  0.00% |  0.00% )   ( 0.004829s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.007893s |  0.00% |  0.00% )   ( 0.005455s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p15
54.5.0:         ( 0.003878s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.107038s |  1.55% |  3.72% )   ( 16.597431s |  1.65% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003932s |  0.00% |  0.02% )   ( 0.004475s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.161919s |  0.10% |  6.79% )   ( 1.095122s |  0.10% |  6.59% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.005802s |  0.18% | 11.72% )   ( 1.915905s |  0.19% | 11.54% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.711745s |  0.15% | 10.00% )   ( 1.605432s |  0.16% |  9.67% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.942846s |  0.17% | 11.35% )   ( 1.905245s |  0.19% | 11.47% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.587939s |  0.14% |  9.28% )   ( 1.555422s |  0.15% |  9.37% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049190s |  0.09% |  6.13% )   ( 1.021582s |  0.10% |  6.15% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.555176s |  0.05% |  3.24% )   ( 0.529306s |  0.05% |  3.18% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.075761s |  0.09% |  6.28% )   ( 1.058583s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.463449s |  0.04% |  2.70% )   ( 0.458015s |  0.04% |  2.75% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.410258s |  0.12% |  8.24% )   ( 1.388980s |  0.13% |  8.36% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.079041s |  0.27% | 17.99% )   ( 3.050271s |  0.30% | 18.37% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.534375s |  0.04% |  3.12% )   ( 0.512345s |  0.05% |  3.08% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.525605s |  0.04% |  3.07% )   ( 0.496748s |  0.04% |  2.99% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004082s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003495s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003922s |  0.00% |  0.00% )   ( 0.004406s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008293s |  0.00% |  0.04% )   ( 0.008379s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 20.739223s |  1.88% |  3.77% )   ( 19.844564s |  1.98% |  3.95% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001021s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 20.736486s |  1.88% | 99.98% )   ( 19.843342s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p16
30.5.0:         ( 0.046183s |  0.00% |  0.22% )   ( 0.046011s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024127s |  0.00% |  0.11% )   ( 0.024061s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.032292s |  0.00% |  0.15% )   ( 0.032181s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.037207s |  0.00% |  0.17% )   ( 0.037074s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.034922s |  0.00% |  0.16% )   ( 0.034798s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005104s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004504s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004924s |  0.00% |  0.00% )   ( 0.005460s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p16
41.5.0:         ( 0.259498s |  0.02% |  0.04% )   ( 0.006438s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004497s |  0.00% |  0.00% )   ( 0.005048s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003883s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004286s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035695s |  0.00% |  0.00% )   ( 0.033237s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.010101s |  0.00% |  0.00% )   ( 0.005075s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005133s |  0.00% |  0.00% )   ( 0.005726s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p16
54.5.0:         ( 0.004182s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004055s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.194173s |  1.83% |  3.60% )   ( 19.554942s |  1.95% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004100s |  0.00% |  0.02% )   ( 0.004643s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.615342s |  0.14% |  7.99% )   ( 1.463647s |  0.14% |  7.48% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.315803s |  0.21% | 11.46% )   ( 2.299459s |  0.22% | 11.75% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.898111s |  0.17% |  9.39% )   ( 1.847378s |  0.18% |  9.44% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.234577s |  0.20% | 11.06% )   ( 2.216414s |  0.22% | 11.33% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.833166s |  0.16% |  9.07% )   ( 1.769449s |  0.17% |  9.04% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.299285s |  0.11% |  6.43% )   ( 1.250706s |  0.12% |  6.39% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.595908s |  0.05% |  2.95% )   ( 0.574850s |  0.05% |  2.93% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.329646s |  0.12% |  6.58% )   ( 1.298449s |  0.12% |  6.64% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.521264s |  0.04% |  2.58% )   ( 0.510011s |  0.05% |  2.60% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.653104s |  0.15% |  8.18% )   ( 1.590967s |  0.15% |  8.13% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.740383s |  0.34% | 18.52% )   ( 3.620647s |  0.36% | 18.51% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.579714s |  0.05% |  2.87% )   ( 0.567803s |  0.05% |  2.90% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.573770s |  0.05% |  2.84% )   ( 0.540519s |  0.05% |  2.76% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004562s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004419s |  0.00% |  0.00% )   ( 0.004943s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005117s |  0.00% |  0.02% )   ( 0.005192s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.398247s |  1.58% |  3.16% )   ( 16.569953s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001016s |  0.00% |  0.00% )   ( 0.001044s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.395510s |  1.58% | 99.98% )   ( 16.568719s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p17
30.5.0:         ( 0.034057s |  0.00% |  0.19% )   ( 0.033950s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045712s |  0.00% |  0.26% )   ( 0.045543s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045739s |  0.00% |  0.26% )   ( 0.045582s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.045712s |  0.00% |  0.26% )   ( 0.045564s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.045708s |  0.00% |  0.26% )   ( 0.045555s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004675s |  0.00% |  0.00% )   ( 0.005258s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005118s |  0.00% |  0.00% )   ( 0.005661s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p17
41.5.0:         ( 0.221873s |  0.02% |  0.04% )   ( 0.006265s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004949s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004619s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003854s |  0.00% |  0.00% )   ( 0.004395s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004148s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031601s |  0.00% |  0.00% )   ( 0.032029s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007833s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004868s |  0.00% |  0.00% )   ( 0.005430s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p17
54.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004682s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.851272s |  1.53% |  3.58% )   ( 16.236231s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004249s |  0.00% |  0.02% )   ( 0.004800s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201178s |  0.10% |  7.12% )   ( 1.098831s |  0.10% |  6.76% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.984805s |  0.18% | 11.77% )   ( 1.833632s |  0.18% | 11.29% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.628985s |  0.14% |  9.66% )   ( 1.565610s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.856778s |  0.16% | 11.01% )   ( 1.831393s |  0.18% | 11.27% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.536237s |  0.13% |  9.11% )   ( 1.509767s |  0.15% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.043701s |  0.09% |  6.19% )   ( 0.984587s |  0.09% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.561058s |  0.05% |  3.32% )   ( 0.545053s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.066352s |  0.09% |  6.32% )   ( 1.034401s |  0.10% |  6.37% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.510953s |  0.04% |  3.03% )   ( 0.479382s |  0.04% |  2.95% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.429778s |  0.12% |  8.48% )   ( 1.382221s |  0.13% |  8.51% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.967915s |  0.26% | 17.61% )   ( 2.927668s |  0.29% | 18.03% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537898s |  0.04% |  3.19% )   ( 0.523469s |  0.05% |  3.22% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.521385s |  0.04% |  3.09% )   ( 0.515417s |  0.05% |  3.17% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004542s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008904s |  0.00% |  0.05% )   ( 0.008957s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.897990s |  1.62% |  3.25% )   ( 17.174689s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001024s |  0.00% |  0.00% )   ( 0.001052s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.895311s |  1.62% | 99.98% )   ( 17.173468s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p18
30.5.0:         ( 0.046764s |  0.00% |  0.26% )   ( 0.046551s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045472s |  0.00% |  0.25% )   ( 0.045312s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045323s |  0.00% |  0.25% )   ( 0.045169s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.046056s |  0.00% |  0.25% )   ( 0.045902s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.045663s |  0.00% |  0.25% )   ( 0.045513s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003542s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003039s |  0.00% |  0.00% )   ( 0.003453s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004234s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p18
41.5.0:         ( 0.159967s |  0.01% |  0.04% )   ( 0.004957s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003469s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003169s |  0.00% |  0.00% )   ( 0.003572s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.005993s |  0.00% |  0.00% )   ( 0.003380s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003143s |  0.00% |  0.00% )   ( 0.003537s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023821s |  0.00% |  0.00% )   ( 0.024178s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003128s |  0.00% |  0.00% )   ( 0.003515s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003537s |  0.00% |  0.00% )   ( 0.003943s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p18
54.5.0:         ( 0.002895s |  0.00% |  0.00% )   ( 0.003288s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002827s |  0.00% |  0.00% )   ( 0.003219s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.424425s |  1.58% |  4.86% )   ( 16.855268s |  1.68% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002918s |  0.00% |  0.01% )   ( 0.003318s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.122511s |  0.10% |  6.44% )   ( 1.103819s |  0.11% |  6.54% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.073590s |  0.18% | 11.90% )   ( 2.037612s |  0.20% | 12.08% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.746015s |  0.15% | 10.02% )   ( 1.609014s |  0.16% |  9.54% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.105381s |  0.19% | 12.08% )   ( 2.046172s |  0.20% | 12.13% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.597023s |  0.14% |  9.16% )   ( 1.564459s |  0.15% |  9.28% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.034576s |  0.09% |  5.93% )   ( 0.980193s |  0.09% |  5.81% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.470116s |  0.04% |  2.69% )   ( 0.441942s |  0.04% |  2.62% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.133108s |  0.10% |  6.50% )   ( 1.077046s |  0.10% |  6.38% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.429422s |  0.03% |  2.46% )   ( 0.383539s |  0.03% |  2.27% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.407078s |  0.12% |  8.07% )   ( 1.370947s |  0.13% |  8.13% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.441720s |  0.31% | 19.75% )   ( 3.393927s |  0.33% | 20.13% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.452295s |  0.04% |  2.59% )   ( 0.439863s |  0.04% |  2.60% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.408672s |  0.03% |  2.34% )   ( 0.403417s |  0.04% |  2.39% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002981s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002725s |  0.00% |  0.00% )   ( 0.003100s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003017s |  0.00% |  0.00% )   ( 0.003350s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009022s |  0.00% |  0.05% )   ( 0.009095s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 20.224396s |  1.83% |  3.67% )   ( 19.420749s |  1.94% |  3.86% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001033s |  0.00% |  0.00% )   ( 0.001050s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 20.221688s |  1.83% | 99.98% )   ( 19.419526s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000208s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p19
30.5.0:         ( 0.039230s |  0.00% |  0.19% )   ( 0.039099s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038894s |  0.00% |  0.19% )   ( 0.038754s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045675s |  0.00% |  0.22% )   ( 0.045525s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.045485s |  0.00% |  0.22% )   ( 0.045343s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.045561s |  0.00% |  0.22% )   ( 0.045413s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004606s |  0.00% |  0.00% )   ( 0.005155s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004730s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004887s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p19
41.5.0:         ( 0.095746s |  0.00% |  0.01% )   ( 0.005454s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004291s |  0.00% |  0.00% )   ( 0.004840s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004005s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004353s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039076s |  0.00% |  0.00% )   ( 0.033429s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005207s |  0.00% |  0.00% )   ( 0.004887s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004746s |  0.00% |  0.00% )   ( 0.005304s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p19
54.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004471s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.802872s |  1.80% |  3.76% )   ( 19.093754s |  1.90% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003939s |  0.00% |  0.01% )   ( 0.004442s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.416695s |  0.12% |  7.15% )   ( 1.382647s |  0.13% |  7.24% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.304980s |  0.20% | 11.63% )   ( 2.256195s |  0.22% | 11.81% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.829364s |  0.16% |  9.23% )   ( 1.782142s |  0.17% |  9.33% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.322819s |  0.21% | 11.72% )   ( 2.172098s |  0.21% | 11.37% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.780839s |  0.16% |  8.99% )   ( 1.739290s |  0.17% |  9.10% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.316460s |  0.11% |  6.64% )   ( 1.213828s |  0.12% |  6.35% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.620339s |  0.05% |  3.13% )   ( 0.561112s |  0.05% |  2.93% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.278727s |  0.11% |  6.45% )   ( 1.252403s |  0.12% |  6.55% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487902s |  0.04% |  2.46% )   ( 0.485091s |  0.04% |  2.54% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.607329s |  0.14% |  8.11% )   ( 1.552489s |  0.15% |  8.13% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.676196s |  0.33% | 18.56% )   ( 3.620414s |  0.36% | 18.96% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566847s |  0.05% |  2.86% )   ( 0.548277s |  0.05% |  2.87% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.590436s |  0.05% |  2.98% )   ( 0.523326s |  0.05% |  2.74% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003625s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007374s |  0.00% |  0.00% )   ( 0.004701s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005019s |  0.00% |  0.02% )   ( 0.005087s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 18.411261s |  1.67% |  3.34% )   ( 17.910501s |  1.78% |  3.56% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001030s |  0.00% |  0.00% )   ( 0.001054s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.408431s |  1.67% | 99.98% )   ( 17.909277s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p20
30.5.0:         ( 0.045898s |  0.00% |  0.24% )   ( 0.045734s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045707s |  0.00% |  0.24% )   ( 0.045544s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045670s |  0.00% |  0.24% )   ( 0.045526s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.044087s |  0.00% |  0.23% )   ( 0.043935s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.048049s |  0.00% |  0.26% )   ( 0.047857s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002701s |  0.00% |  0.00% )   ( 0.003018s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002409s |  0.00% |  0.00% )   ( 0.002723s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002979s |  0.00% |  0.00% )   ( 0.003322s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p20
41.5.0:         ( 0.086884s |  0.00% |  0.02% )   ( 0.003726s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002564s |  0.00% |  0.00% )   ( 0.002887s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.002339s |  0.00% |  0.00% )   ( 0.002654s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.002061s |  0.00% |  0.00% )   ( 0.002341s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002239s |  0.00% |  0.00% )   ( 0.002519s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.016581s |  0.00% |  0.00% )   ( 0.016841s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002296s |  0.00% |  0.00% )   ( 0.002591s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002659s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p20
54.5.0:         ( 0.002147s |  0.00% |  0.00% )   ( 0.002438s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002091s |  0.00% |  0.00% )   ( 0.002382s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.029322s |  1.63% |  6.52% )   ( 17.612427s |  1.75% |  6.55% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002123s |  0.00% |  0.01% )   ( 0.002423s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.188308s |  0.10% |  6.59% )   ( 1.152654s |  0.11% |  6.54% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.237468s |  0.20% | 12.41% )   ( 2.190691s |  0.21% | 12.43% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.718255s |  0.15% |  9.53% )   ( 1.669576s |  0.16% |  9.47% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.212203s |  0.20% | 12.27% )   ( 2.183076s |  0.21% | 12.39% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.670849s |  0.15% |  9.26% )   ( 1.659560s |  0.16% |  9.42% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.023984s |  0.09% |  5.67% )   ( 1.018966s |  0.10% |  5.78% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.403068s |  0.03% |  2.23% )   ( 0.386762s |  0.03% |  2.19% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.175633s |  0.10% |  6.52% )   ( 1.124716s |  0.11% |  6.38% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.355807s |  0.03% |  1.97% )   ( 0.334401s |  0.03% |  1.89% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.437269s |  0.13% |  7.97% )   ( 1.428099s |  0.14% |  8.10% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.862474s |  0.35% | 21.42% )   ( 3.757386s |  0.37% | 21.33% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.393917s |  0.03% |  2.18% )   ( 0.367228s |  0.03% |  2.08% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.347964s |  0.03% |  1.92% )   ( 0.336889s |  0.03% |  1.91% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002308s |  0.00% |  0.00% )   ( 0.002617s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001971s |  0.00% |  0.00% )   ( 0.002249s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005237s |  0.00% |  0.00% )   ( 0.002497s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008757s |  0.00% |  0.04% )   ( 0.008846s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.388295s |  1.58% |  3.16% )   ( 16.766716s |  1.67% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001034s |  0.00% |  0.00% )   ( 0.001058s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.385482s |  1.58% | 99.98% )   ( 16.765487s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p21
30.5.0:         ( 0.045712s |  0.00% |  0.26% )   ( 0.045559s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045560s |  0.00% |  0.26% )   ( 0.045405s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045636s |  0.00% |  0.26% )   ( 0.045487s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.045910s |  0.00% |  0.26% )   ( 0.045732s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.048809s |  0.00% |  0.28% )   ( 0.048612s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005407s |  0.00% |  0.00% )   ( 0.006015s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005262s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005669s |  0.00% |  0.00% )   ( 0.006263s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p21
41.5.0:         ( 0.137166s |  0.01% |  0.02% )   ( 0.006465s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004930s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004512s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004650s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004238s |  0.00% |  0.00% )   ( 0.004766s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035121s |  0.00% |  0.00% )   ( 0.035575s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.013850s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005290s |  0.00% |  0.00% )   ( 0.005891s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p21
54.5.0:         ( 0.004312s |  0.00% |  0.00% )   ( 0.004899s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004131s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.896834s |  1.53% |  3.47% )   ( 16.409553s |  1.63% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004245s |  0.00% |  0.02% )   ( 0.004812s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.136319s |  0.10% |  6.72% )   ( 1.101751s |  0.11% |  6.71% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.868973s |  0.16% | 11.06% )   ( 1.857289s |  0.18% | 11.31% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.626101s |  0.14% |  9.62% )   ( 1.575938s |  0.15% |  9.60% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.896451s |  0.17% | 11.22% )   ( 1.862566s |  0.18% | 11.35% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.599839s |  0.14% |  9.46% )   ( 1.535515s |  0.15% |  9.35% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.096487s |  0.09% |  6.48% )   ( 1.014567s |  0.10% |  6.18% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.627599s |  0.05% |  3.71% )   ( 0.560464s |  0.05% |  3.41% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.105197s |  0.10% |  6.54% )   ( 1.055380s |  0.10% |  6.43% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.500908s |  0.04% |  2.96% )   ( 0.493442s |  0.04% |  3.00% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.432212s |  0.13% |  8.47% )   ( 1.401499s |  0.14% |  8.54% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.887848s |  0.26% | 17.09% )   ( 2.858472s |  0.28% | 17.41% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554412s |  0.05% |  3.28% )   ( 0.548438s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.560243s |  0.05% |  3.31% )   ( 0.539420s |  0.05% |  3.28% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004580s |  0.00% |  0.00% )   ( 0.005166s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003997s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005212s |  0.00% |  0.00% )   ( 0.005006s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008390s |  0.00% |  0.04% )   ( 0.008462s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 20.280721s |  1.84% |  3.68% )   ( 19.522730s |  1.95% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000904s |  0.00% |  0.00% )   ( 0.000933s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 20.277923s |  1.84% | 99.98% )   ( 19.521589s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p22
30.5.0:         ( 0.046043s |  0.00% |  0.22% )   ( 0.045873s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046089s |  0.00% |  0.22% )   ( 0.045907s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.046043s |  0.00% |  0.22% )   ( 0.045867s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.046275s |  0.00% |  0.22% )   ( 0.046100s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.049985s |  0.00% |  0.24% )   ( 0.049808s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003870s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003413s |  0.00% |  0.00% )   ( 0.003875s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004400s |  0.00% |  0.00% )   ( 0.004904s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p22
41.5.0:         ( 0.178772s |  0.01% |  0.03% )   ( 0.005447s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003605s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004052s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004054s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027066s |  0.00% |  0.00% )   ( 0.027447s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005203s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p22
54.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003715s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.775176s |  1.79% |  4.43% )   ( 19.190740s |  1.91% |  4.46% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003435s |  0.00% |  0.01% )   ( 0.003881s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.410128s |  0.12% |  7.13% )   ( 1.373216s |  0.13% |  7.15% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.660886s |  0.24% | 13.45% )   ( 2.578420s |  0.25% | 13.43% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.073589s |  0.18% | 10.48% )   ( 2.004621s |  0.20% | 10.44% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.657536s |  0.24% | 13.43% )   ( 2.565322s |  0.25% | 13.36% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.034288s |  0.18% | 10.28% )   ( 1.971093s |  0.19% | 10.27% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.257914s |  0.11% |  6.36% )   ( 1.217074s |  0.12% |  6.34% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.518604s |  0.04% |  2.62% )   ( 0.503788s |  0.05% |  2.62% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.219027s |  0.11% |  6.16% )   ( 1.212337s |  0.12% |  6.31% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445517s |  0.04% |  2.25% )   ( 0.432081s |  0.04% |  2.25% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.360442s |  0.12% |  6.87% )   ( 1.344998s |  0.13% |  7.00% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.106393s |  0.28% | 15.70% )   ( 3.043398s |  0.30% | 15.85% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.511077s |  0.04% |  2.58% )   ( 0.481879s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.516340s |  0.04% |  2.61% )   ( 0.458632s |  0.04% |  2.38% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003388s |  0.00% |  0.00% )   ( 0.003821s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003184s |  0.00% |  0.00% )   ( 0.003609s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006869s |  0.00% |  0.00% )   ( 0.004079s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005083s |  0.00% |  0.02% )   ( 0.005153s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000179s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.503136s |  1.59% |  3.18% )   ( 16.648242s |  1.66% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.001052s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.500362s |  1.59% | 99.98% )   ( 16.647012s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p23
30.5.0:         ( 0.051483s |  0.00% |  0.29% )   ( 0.046052s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046894s |  0.00% |  0.26% )   ( 0.046732s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.050187s |  0.00% |  0.28% )   ( 0.049998s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.050405s |  0.00% |  0.28% )   ( 0.050216s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.052723s |  0.00% |  0.30% )   ( 0.052536s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004242s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.004227s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004584s |  0.00% |  0.00% )   ( 0.005088s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p23
41.5.0:         ( 0.230637s |  0.02% |  0.05% )   ( 0.005821s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004051s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003640s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004276s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028725s |  0.00% |  0.00% )   ( 0.029126s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005604s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004825s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p23
54.5.0:         ( 0.003529s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003815s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.923495s |  1.53% |  4.02% )   ( 16.295714s |  1.62% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003603s |  0.00% |  0.02% )   ( 0.004109s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.118229s |  0.10% |  6.60% )   ( 1.079369s |  0.10% |  6.62% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.991732s |  0.18% | 11.76% )   ( 1.889857s |  0.18% | 11.59% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.664469s |  0.15% |  9.83% )   ( 1.542826s |  0.15% |  9.46% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.940554s |  0.17% | 11.46% )   ( 1.882661s |  0.18% | 11.55% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.557285s |  0.14% |  9.20% )   ( 1.511155s |  0.15% |  9.27% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.008330s |  0.09% |  5.95% )   ( 0.963914s |  0.09% |  5.91% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537415s |  0.04% |  3.17% )   ( 0.496216s |  0.04% |  3.04% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.081355s |  0.09% |  6.38% )   ( 1.030833s |  0.10% |  6.32% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442924s |  0.04% |  2.61% )   ( 0.439409s |  0.04% |  2.69% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383860s |  0.12% |  8.17% )   ( 1.358049s |  0.13% |  8.33% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.163332s |  0.28% | 18.69% )   ( 3.127532s |  0.31% | 19.19% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524361s |  0.04% |  3.09% )   ( 0.497907s |  0.04% |  3.05% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.506046s |  0.04% |  2.99% )   ( 0.471877s |  0.04% |  2.89% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003612s |  0.00% |  0.00% )   ( 0.004072s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008379s |  0.00% |  0.04% )   ( 0.008462s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.095541s |  1.55% |  3.10% )   ( 16.325849s |  1.63% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001032s |  0.00% |  0.00% )   ( 0.001058s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.092727s |  1.55% | 99.98% )   ( 16.324620s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p24
30.5.0:         ( 0.045556s |  0.00% |  0.26% )   ( 0.045393s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045868s |  0.00% |  0.26% )   ( 0.045672s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.048800s |  0.00% |  0.28% )   ( 0.048626s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.048993s |  0.00% |  0.28% )   ( 0.048836s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.048422s |  0.00% |  0.28% )   ( 0.048244s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004668s |  0.00% |  0.00% )   ( 0.005227s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004157s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005314s |  0.00% |  0.00% )   ( 0.005906s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p24
41.5.0:         ( 0.248757s |  0.02% |  0.05% )   ( 0.007095s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004630s |  0.00% |  0.00% )   ( 0.005207s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004295s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004450s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034029s |  0.00% |  0.00% )   ( 0.034457s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005613s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p24
54.5.0:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.501725s |  1.50% |  3.57% )   ( 15.968068s |  1.59% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004075s |  0.00% |  0.02% )   ( 0.004602s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.145129s |  0.10% |  6.93% )   ( 1.061168s |  0.10% |  6.64% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.864199s |  0.16% | 11.29% )   ( 1.790549s |  0.17% | 11.21% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.557750s |  0.14% |  9.43% )   ( 1.517086s |  0.15% |  9.50% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.809629s |  0.16% | 10.96% )   ( 1.782006s |  0.17% | 11.15% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.514584s |  0.13% |  9.17% )   ( 1.482826s |  0.14% |  9.28% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009507s |  0.09% |  6.11% )   ( 0.979490s |  0.09% |  6.13% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.567391s |  0.05% |  3.43% )   ( 0.550903s |  0.05% |  3.45% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.059465s |  0.09% |  6.42% )   ( 1.021307s |  0.10% |  6.39% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.492575s |  0.04% |  2.98% )   ( 0.477386s |  0.04% |  2.98% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.403825s |  0.12% |  8.50% )   ( 1.347553s |  0.13% |  8.43% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.975414s |  0.27% | 18.03% )   ( 2.885973s |  0.28% | 18.07% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566273s |  0.05% |  3.43% )   ( 0.542728s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.531909s |  0.04% |  3.22% )   ( 0.524491s |  0.05% |  3.28% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004600s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004162s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004173s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008528s |  0.00% |  0.04% )   ( 0.008611s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.138127s |  1.55% |  3.11% )   ( 16.532581s |  1.65% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001038s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.135290s |  1.55% | 99.98% )   ( 16.531337s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p25
30.5.0:         ( 0.050986s |  0.00% |  0.29% )   ( 0.047784s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048037s |  0.00% |  0.28% )   ( 0.047858s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.047873s |  0.00% |  0.27% )   ( 0.047664s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.049996s |  0.00% |  0.29% )   ( 0.049802s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.051255s |  0.00% |  0.29% )   ( 0.051036s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.006122s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005110s |  0.00% |  0.00% )   ( 0.005680s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p25
41.5.0:         ( 0.207856s |  0.01% |  0.04% )   ( 0.006410s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005943s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004745s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004075s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003985s |  0.00% |  0.00% )   ( 0.004511s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035479s |  0.00% |  0.00% )   ( 0.031825s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004587s |  0.00% |  0.00% )   ( 0.005078s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p25
54.5.0:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004161s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.572615s |  1.50% |  3.86% )   ( 16.174071s |  1.61% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003656s |  0.00% |  0.02% )   ( 0.004147s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.077571s |  0.09% |  6.50% )   ( 1.068506s |  0.10% |  6.60% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.870602s |  0.17% | 11.28% )   ( 1.839417s |  0.18% | 11.37% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.601959s |  0.14% |  9.66% )   ( 1.546812s |  0.15% |  9.56% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.886365s |  0.17% | 11.38% )   ( 1.842708s |  0.18% | 11.39% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.523332s |  0.13% |  9.19% )   ( 1.490712s |  0.14% |  9.21% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.044455s |  0.09% |  6.30% )   ( 0.977030s |  0.09% |  6.04% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539219s |  0.04% |  3.25% )   ( 0.518234s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.028692s |  0.09% |  6.20% )   ( 1.022327s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.474586s |  0.04% |  2.86% )   ( 0.449913s |  0.04% |  2.78% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.395368s |  0.12% |  8.41% )   ( 1.362447s |  0.13% |  8.42% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.056645s |  0.27% | 18.44% )   ( 3.026607s |  0.30% | 18.71% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537875s |  0.04% |  3.24% )   ( 0.520491s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.532290s |  0.04% |  3.21% )   ( 0.504720s |  0.05% |  3.12% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004024s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003487s |  0.00% |  0.00% )   ( 0.003977s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003763s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008796s |  0.00% |  0.05% )   ( 0.008764s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.516060s |  1.59% |  3.18% )   ( 16.791247s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001063s |  0.00% |  0.00% )   ( 0.001087s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.513165s |  1.59% | 99.98% )   ( 16.789980s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p26
30.5.0:         ( 0.054082s |  0.00% |  0.30% )   ( 0.044670s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.052938s |  0.00% |  0.30% )   ( 0.052726s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.045426s |  0.00% |  0.25% )   ( 0.045239s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.051698s |  0.00% |  0.29% )   ( 0.051532s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.051124s |  0.00% |  0.29% )   ( 0.050929s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003911s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p26
41.5.0:         ( 0.159670s |  0.01% |  0.04% )   ( 0.004954s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003336s |  0.00% |  0.00% )   ( 0.003775s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003254s |  0.00% |  0.00% )   ( 0.003705s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.002967s |  0.00% |  0.00% )   ( 0.003378s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003272s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023067s |  0.00% |  0.00% )   ( 0.023444s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003348s |  0.00% |  0.00% )   ( 0.003761s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p26
54.5.0:         ( 0.003133s |  0.00% |  0.00% )   ( 0.003581s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002974s |  0.00% |  0.00% )   ( 0.003396s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.009429s |  1.54% |  4.85% )   ( 16.453304s |  1.64% |  4.89% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003119s |  0.00% |  0.01% )   ( 0.003549s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.185993s |  0.10% |  6.97% )   ( 1.101215s |  0.11% |  6.69% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.029932s |  0.18% | 11.93% )   ( 1.972191s |  0.19% | 11.98% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629600s |  0.14% |  9.58% )   ( 1.596462s |  0.15% |  9.70% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.080984s |  0.18% | 12.23% )   ( 1.963720s |  0.19% | 11.93% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.553505s |  0.14% |  9.13% )   ( 1.525059s |  0.15% |  9.26% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.031279s |  0.09% |  6.06% )   ( 0.981447s |  0.09% |  5.96% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.462784s |  0.04% |  2.72% )   ( 0.436750s |  0.04% |  2.65% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080025s |  0.09% |  6.34% )   ( 1.049796s |  0.10% |  6.38% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.400499s |  0.03% |  2.35% )   ( 0.384231s |  0.03% |  2.33% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.356838s |  0.12% |  7.97% )   ( 1.336302s |  0.13% |  8.12% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.311476s |  0.30% | 19.46% )   ( 3.266293s |  0.32% | 19.85% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.450661s |  0.04% |  2.64% )   ( 0.429420s |  0.04% |  2.60% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.432734s |  0.03% |  2.54% )   ( 0.406869s |  0.04% |  2.47% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003019s |  0.00% |  0.00% )   ( 0.003394s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002886s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003290s |  0.00% |  0.00% )   ( 0.003695s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit
68.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p* 1>&21
69.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.017748s |  0.00% |  0.10% )   ( 0.009177s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.238411s |  1.56% |  3.13% )   ( 16.079395s |  1.60% |  3.20% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001098s |  0.00% |  0.00% )   ( 0.001125s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.236004s |  1.56% | 99.98% )   ( 16.078091s |  1.60% | 99.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.RDZhLM"
26.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p27
30.5.0:         ( 0.055092s |  0.00% |  0.31% )   ( 0.054835s |  0.00% |  0.34% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.048578s |  0.00% |  0.28% )   ( 0.048374s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 2790839 ${BASHPID}' INT
33.5.0:         ( 0.051298s |  0.00% |  0.29% )   ( 0.051107s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 2790839 ${BASHPID}' TERM
34.5.0:         ( 0.050644s |  0.00% |  0.29% )   ( 0.050448s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 2790839 ${BASHPID}' HUP
35.5.0:         ( 0.050504s |  0.00% |  0.29% )   ( 0.050327s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.RDZhLM"/.nLines
38.5.2:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005063s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p27
41.5.0:         ( 0.240341s |  0.02% |  0.05% )   ( 0.005940s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004636s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.quit ]]
46.5.0:         ( 0.003927s |  0.00% |  0.00% )   ( 0.004433s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.done ]]
46.5.1:         ( 0.003529s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003741s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029707s |  0.00% |  0.00% )   ( 0.028207s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006285s |  0.00% |  0.00% )   ( 0.004389s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004670s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.RDZhLM"/.wait/p27
54.5.0:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004044s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003370s |  0.00% |  0.00% )   ( 0.003842s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.643425s |  1.51% |  4.19% )   ( 15.718079s |  1.57% |  4.25% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003473s |  0.00% |  0.02% )   ( 0.003968s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.151679s |  0.10% |  6.91% )   ( 1.038948s |  0.10% |  6.60% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.920278s |  0.17% | 11.53% )   ( 1.809974s |  0.18% | 11.51% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.723121s |  0.15% | 10.35% )   ( 1.529201s |  0.15% |  9.72% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.022078s |  0.18% | 12.14% )   ( 1.842674s |  0.18% | 11.72% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.537320s |  0.13% |  9.23% )   ( 1.484156s |  0.14% |  9.44% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.983430s |  0.08% |  5.90% )   ( 0.939095s |  0.09% |  5.97% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.499235s |  0.04% |  2.99% )   ( 0.469694s |  0.04% |  2.98% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.050052s |  0.09% |  6.30% )   ( 0.979627s |  0.09% |  6.23% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.420941s |  0.03% |  2.52% )   ( 0.412269s |  0.04% |  2.62% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.325259s |  0.12% |  7.96% )   ( 1.305720s |  0.13% |  8.30% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.999192s |  0.27% | 18.02% )   ( 2.972196s |  0.29% | 18.90% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.503966s |  0.04% |  3.02% )   ( 0.471845s |  0.04% |  3.00% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.503401s |  0.04% |  3.02% )   ( 0.458712s |  0.04% |  2.91% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003552s |  0.00% |  0.00% )   ( 0.004034s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003394s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004194s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009096s |  0.00% |  0.05% )   ( 0.008827s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001409s |  0.00% |  0.00% )   ( 0.001426s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.391057s |  2.21% |  4.43% )   ( 0.001758s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000309s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000305s |  0.00% |  0.00% )   ( 0.000337s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.047420s |  0.00% |  0.00% )   ( 0.047580s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.RDZhLM"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.RDZhLM"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 2790853  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.RDZhLM"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000221s |  0.00% |  0.00% )   ( 0.000259s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.007788s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.RDZhLM" 2>/dev/null

WALL CLOCK TIME: 51.124930s
TOTAL RUN TIME:  1099.996237s
TOTAL CPU TIME:  1000.874593s

