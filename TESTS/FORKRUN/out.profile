0: .:            	( 0.000001s |  0.00% )            ( 6.607825s |  0.71% )             	(1x)	.0

LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 504.898470s | 50.18% )            ( 456.487155s | 49.56% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000694s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 504.897776s | 50.18% | 99.99% )   ( 456.486771s | 49.56% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.038933s |  0.00% |  0.00% )   ( 0.038848s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001157s |  0.00% |  0.00% )   ( 0.001024s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005647s |  0.00% |  0.00% )   ( 0.005647s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.005647s |  0.00% |100.00% )   ( 0.005647s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001028s |  0.00% |  0.00% )   ( 0.001110s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.023822s |  0.00% |  0.00% )   ( 0.000959s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 504.820431s | 50.17% | 99.98% )   ( 456.434861s | 49.56% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001552s |  0.00% |  0.00% )   ( 0.001801s |  0.00% |  0.00% )    	(5x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.001552s |  0.00% |100.00% )   ( 0.001801s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
1084.3.1:       ( 0.000303s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(1x)	│  │  │   @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 660820  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
238.3.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000271s |  0.00% |  0.00% )   ( 0.000292s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003016s |  0.00% |  0.00% )   ( 0.003064s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000118s |  0.00% |  0.00% )   ( 0.000131s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000118s |  0.00% |100.00% )   ( 0.000131s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000868s |  0.00% |  0.00% )   ( 0.001011s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000069s |  0.00% |  7.94% )   ( 0.000082s |  0.00% |  8.11% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000069s |  0.00% |  7.94% )   ( 0.000082s |  0.00% |  8.11% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000080s |  0.00% |  7.91% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000069s |  0.00% |  7.94% )   ( 0.000081s |  0.00% |  8.01% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000078s |  0.00% |  7.71% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000069s |  0.00% |  7.94% )   ( 0.000081s |  0.00% |  8.01% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000079s |  0.00% |  7.81% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000121s |  0.00% | 13.94% )   ( 0.000131s |  0.00% | 12.95% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000067s |  0.00% |  7.71% )   ( 0.000078s |  0.00% |  7.71% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.48% )   ( 0.000077s |  0.00% |  7.61% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000068s |  0.00% |  7.83% )   ( 0.000080s |  0.00% |  7.91% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000070s |  0.00% |  8.06% )   ( 0.000082s |  0.00% |  8.11% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.008748s |  0.00% |  0.00% )   ( 0.008855s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002713s |  0.00% |  0.00% )   ( 0.002846s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000284s |  0.00% | 10.46% )   ( 0.000306s |  0.00% | 10.75% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002429s |  0.00% | 89.53% )   ( 0.002540s |  0.00% | 89.24% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.006515s |  0.00% |  0.00% )   ( 0.006629s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000205s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000205s |  0.00% |100.00% )   ( 0.000235s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.002291s |  0.00% |  0.00% )   ( 0.002380s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000530s |  0.00% |  0.00% )   ( 0.000541s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.124672s |  0.01% |  0.02% )   ( 0.124421s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000105s |  0.00% |  0.08% )   ( 0.000120s |  0.00% |  0.09% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.019883s |  0.00% | 15.94% )   ( 0.019838s |  0.00% | 15.94% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.021291s |  0.00% | 17.07% )   ( 0.021226s |  0.00% | 17.05% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.021335s |  0.00% | 17.11% )   ( 0.021285s |  0.00% | 17.10% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.021371s |  0.00% | 17.14% )   ( 0.021321s |  0.00% | 17.13% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.021137s |  0.00% | 16.95% )   ( 0.021082s |  0.00% | 16.94% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.019236s |  0.00% | 15.42% )   ( 0.019187s |  0.00% | 15.42% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000091s |  0.00% |  0.07% )   ( 0.000103s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000089s |  0.00% |  0.07% )   ( 0.000100s |  0.00% |  0.08% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000066s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000402s |  0.00% |  0.00% )   ( 0.000426s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.329782s |  0.33% |  0.65% )   ( 1.782102s |  0.19% |  0.39% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.021194s |  0.00% |  0.63% )   ( 0.021152s |  0.00% |  1.18% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.021264s |  0.00% |  0.63% )   ( 0.021211s |  0.00% |  1.19% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.021354s |  0.00% |  0.64% )   ( 0.021305s |  0.00% |  1.19% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.021266s |  0.00% |  0.63% )   ( 0.021233s |  0.00% |  1.19% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.021155s |  0.00% |  0.63% )   ( 0.021119s |  0.00% |  1.18% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.086948s |  0.00% |  0.00% )   ( 0.100033s |  0.01% |  0.00% )    	(674x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 1.843666s |  0.18% |  0.08% )   ( 0.116424s |  0.01% |  0.00% )    	(673x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.001103s |  0.00% |  0.00% )   ( 0.001235s |  0.00% |  0.01% )    	(6x)	│  │  │  │   continue
521.4.0:        ( 0.086165s |  0.00% |  0.00% )   ( 0.099258s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.085777s |  0.00% |  0.00% )   ( 0.098798s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.085453s |  0.00% |  0.00% )   ( 0.098294s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.088125s |  0.00% |  0.00% )   ( 0.100897s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.088900s |  0.00% |  0.00% )   ( 0.101736s |  0.01% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.085035s |  0.00% |  0.00% )   ( 0.098024s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.085308s |  0.00% |  0.00% )   ( 0.098245s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.085684s |  0.00% |  0.00% )   ( 0.098647s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.001526s |  0.00% |  0.04% )   ( 0.001370s |  0.00% |  0.07% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002547s |  0.00% |  0.07% )   ( 0.002894s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002547s |  0.00% |100.00% )   ( 0.002894s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.01% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.085508s |  0.00% |  0.00% )   ( 0.098579s |  0.01% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.083782s |  0.00% |  0.00% )   ( 0.096787s |  0.01% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.082240s |  0.00% |  0.00% )   ( 0.094710s |  0.01% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.089280s |  0.00% |  0.00% )   ( 0.102340s |  0.01% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.085941s |  0.00% |  0.00% )   ( 0.098966s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.085893s |  0.00% |  0.00% )   ( 0.098875s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002755s |  0.00% |  0.00% )   ( 0.003156s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002723s |  0.00% |  0.00% )   ( 0.003142s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.059249s |  0.00% |  0.08% )   ( 0.042932s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003313s |  0.00% |  0.00% )   ( 0.003745s |  0.00% |  0.01% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003122s |  0.00% |  0.00% )   ( 0.003559s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003007s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.007831s |  0.00% |  0.23% )   ( 0.006911s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/pAuto
598.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000103s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.069232s |  0.00% |  0.01% )   ( 0.069460s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006210s |  0.00% |  0.00% )   ( 0.007143s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000157s |  0.00% |  2.52% )   ( 0.000174s |  0.00% |  2.43% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000108s |  0.00% |  1.73% )   ( 0.000119s |  0.00% |  1.66% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000115s |  0.00% |  1.85% )   ( 0.000132s |  0.00% |  1.84% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000304s |  0.00% |  4.89% )   ( 0.000321s |  0.00% |  4.49% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000098s |  0.00% |  1.57% )   ( 0.000114s |  0.00% |  1.59% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000096s |  0.00% |  1.54% )   ( 0.000112s |  0.00% |  1.56% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000099s |  0.00% |  1.59% )   ( 0.000115s |  0.00% |  1.60% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000083s |  0.00% |  1.33% )   ( 0.000094s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000083s |  0.00% |  1.33% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000067s |  0.00% |  1.07% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000084s |  0.00% |  1.35% )   ( 0.000096s |  0.00% |  1.34% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000082s |  0.00% |  1.32% )   ( 0.000094s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000072s |  0.00% |  1.15% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000085s |  0.00% |  1.36% )   ( 0.000096s |  0.00% |  1.34% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000099s |  0.00% |  1.59% )   ( 0.000111s |  0.00% |  1.55% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000083s |  0.00% |  1.33% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000113s |  0.00% |  1.81% )   ( 0.000125s |  0.00% |  1.74% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000063s |  0.00% |  1.01% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000090s |  0.00% |  1.44% )   ( 0.000101s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000100s |  0.00% |  1.61% )   ( 0.000112s |  0.00% |  1.56% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000092s |  0.00% |  1.48% )   ( 0.000104s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000081s |  0.00% |  1.30% )   ( 0.000090s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000086s |  0.00% |  1.38% )   ( 0.000098s |  0.00% |  1.37% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000098s |  0.00% |  1.57% )   ( 0.000106s |  0.00% |  1.48% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000093s |  0.00% |  1.49% )   ( 0.000104s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000078s |  0.00% |  1.09% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000089s |  0.00% |  1.43% )   ( 0.000100s |  0.00% |  1.39% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000086s |  0.00% |  1.38% )   ( 0.000098s |  0.00% |  1.37% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000095s |  0.00% |  1.52% )   ( 0.000107s |  0.00% |  1.49% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000073s |  0.00% |  1.17% )   ( 0.000085s |  0.00% |  1.18% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000066s |  0.00% |  1.06% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000090s |  0.00% |  1.44% )   ( 0.000101s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.03% )   ( 0.000076s |  0.00% |  1.06% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000083s |  0.00% |  1.33% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000083s |  0.00% |  1.16% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000075s |  0.00% |  1.20% )   ( 0.000087s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.14% )   ( 0.000082s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000068s |  0.00% |  1.09% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.13% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000089s |  0.00% |  1.43% )   ( 0.000100s |  0.00% |  1.39% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000110s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.022936s |  0.00% |  0.00% )   ( 0.022888s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.021496s |  0.00% |  0.00% )   ( 0.021456s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.021169s |  0.00% |  0.00% )   ( 0.155636s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.020702s |  0.00% |  0.00% )   ( 0.020638s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002955s |  0.00% |  0.00% )   ( 0.003390s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002795s |  0.00% |  0.00% )   ( 0.003218s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 16.516338s |  1.64% |  3.27% )   ( 15.680613s |  1.70% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000567s |  0.00% |  0.00% )   ( 0.000585s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 16.515685s |  1.64% | 99.99% )   ( 15.679930s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000251s |  0.00% |  0.00% )   ( 0.000287s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000270s |  0.00% |  0.00% )   ( 0.000296s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p0
30.5.0:         ( 0.021997s |  0.00% |  0.13% )   ( 0.021960s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021265s |  0.00% |  0.12% )   ( 0.021224s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021289s |  0.00% |  0.12% )   ( 0.021248s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021682s |  0.00% |  0.13% )   ( 0.021642s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021600s |  0.00% |  0.13% )   ( 0.021562s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004723s |  0.00% |  0.00% )   ( 0.005242s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004726s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004811s |  0.00% |  0.00% )   ( 0.005382s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p0
41.5.0:         ( 0.393535s |  0.03% |  0.08% )   ( 0.006878s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004249s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003866s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003546s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030474s |  0.00% |  0.00% )   ( 0.030917s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.005059s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011512s |  0.00% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004574s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p0
66.5.0:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004321s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003460s |  0.00% |  0.00% )   ( 0.003937s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 15.900547s |  1.58% |  3.56% )   ( 15.451094s |  1.67% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003765s |  0.00% |  0.02% )   ( 0.004271s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.059545s |  0.10% |  6.66% )   ( 1.021653s |  0.11% |  6.61% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.769753s |  0.17% | 11.13% )   ( 1.748190s |  0.18% | 11.31% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.573792s |  0.15% |  9.89% )   ( 1.488825s |  0.16% |  9.63% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.786853s |  0.17% | 11.23% )   ( 1.746254s |  0.18% | 11.30% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.461270s |  0.14% |  9.19% )   ( 1.427708s |  0.15% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.962101s |  0.09% |  6.05% )   ( 0.938819s |  0.10% |  6.07% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.518313s |  0.05% |  3.25% )   ( 0.510492s |  0.05% |  3.30% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.022748s |  0.10% |  6.43% )   ( 0.978568s |  0.10% |  6.33% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.467890s |  0.04% |  2.94% )   ( 0.461784s |  0.05% |  2.98% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.342342s |  0.13% |  8.44% )   ( 1.300977s |  0.14% |  8.41% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.867454s |  0.28% | 18.03% )   ( 2.782965s |  0.30% | 18.01% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537140s |  0.05% |  3.37% )   ( 0.523331s |  0.05% |  3.38% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.527581s |  0.05% |  3.31% )   ( 0.517257s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003605s |  0.00% |  0.00% )   ( 0.004104s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003974s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008785s |  0.00% |  0.05% )   ( 0.008865s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002763s |  0.00% |  0.00% )   ( 0.003188s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 16.697648s |  1.65% |  3.30% )   ( 15.702274s |  1.70% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000567s |  0.00% |  0.00% )   ( 0.000586s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 16.696994s |  1.65% | 99.99% )   ( 15.701589s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p1
30.5.0:         ( 0.021688s |  0.00% |  0.12% )   ( 0.021645s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021271s |  0.00% |  0.12% )   ( 0.021235s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021507s |  0.00% |  0.12% )   ( 0.021468s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021658s |  0.00% |  0.12% )   ( 0.021616s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021610s |  0.00% |  0.12% )   ( 0.021568s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004572s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004678s |  0.00% |  0.00% )   ( 0.005227s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p1
41.5.0:         ( 0.474952s |  0.04% |  0.10% )   ( 0.006895s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004411s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003551s |  0.00% |  0.00% )   ( 0.004049s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004340s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032080s |  0.00% |  0.00% )   ( 0.029509s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003561s |  0.00% |  0.00% )   ( 0.004047s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003437s |  0.00% |  0.00% )   ( 0.003948s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007918s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p1
66.5.0:         ( 0.003525s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003443s |  0.00% |  0.00% )   ( 0.003935s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.006515s |  1.59% |  3.68% )   ( 15.477545s |  1.68% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003554s |  0.00% |  0.02% )   ( 0.004047s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.031549s |  0.10% |  6.44% )   ( 1.015289s |  0.11% |  6.55% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.813579s |  0.18% | 11.33% )   ( 1.762535s |  0.19% | 11.38% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.529470s |  0.15% |  9.55% )   ( 1.495417s |  0.16% |  9.66% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.826084s |  0.18% | 11.40% )   ( 1.758819s |  0.19% | 11.36% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.463077s |  0.14% |  9.14% )   ( 1.430105s |  0.15% |  9.23% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.977847s |  0.09% |  6.10% )   ( 0.936743s |  0.10% |  6.05% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.497421s |  0.04% |  3.10% )   ( 0.491738s |  0.05% |  3.17% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.005520s |  0.09% |  6.28% )   ( 0.982870s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.493744s |  0.04% |  3.08% )   ( 0.434089s |  0.04% |  2.80% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.359683s |  0.13% |  8.49% )   ( 1.327431s |  0.14% |  8.57% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.959853s |  0.29% | 18.49% )   ( 2.882971s |  0.31% | 18.62% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.541119s |  0.05% |  3.38% )   ( 0.483041s |  0.05% |  3.12% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.504015s |  0.05% |  3.14% )   ( 0.472450s |  0.05% |  3.05% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004199s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003362s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008276s |  0.00% |  0.04% )   ( 0.008361s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 16.613906s |  1.65% |  3.29% )   ( 15.585891s |  1.69% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000599s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 16.613201s |  1.65% | 99.99% )   ( 15.585153s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p2
30.5.0:         ( 0.023563s |  0.00% |  0.14% )   ( 0.023510s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021434s |  0.00% |  0.12% )   ( 0.021395s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021680s |  0.00% |  0.13% )   ( 0.021639s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021642s |  0.00% |  0.13% )   ( 0.021596s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021586s |  0.00% |  0.12% )   ( 0.021546s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.004959s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003871s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000229s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004957s |  0.00% |  0.00% )   ( 0.005524s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p2
41.5.0:         ( 0.409345s |  0.04% |  0.08% )   ( 0.006766s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004148s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003763s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004374s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029029s |  0.00% |  0.00% )   ( 0.029451s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003556s |  0.00% |  0.00% )   ( 0.004051s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003759s |  0.00% |  0.00% )   ( 0.004256s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004661s |  0.00% |  0.00% )   ( 0.005192s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p2
66.5.0:         ( 0.006610s |  0.00% |  0.00% )   ( 0.004125s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004208s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 15.987421s |  1.58% |  3.56% )   ( 15.356590s |  1.66% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003890s |  0.00% |  0.02% )   ( 0.004434s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.028933s |  0.10% |  6.43% )   ( 1.021143s |  0.11% |  6.64% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.776266s |  0.17% | 11.11% )   ( 1.744638s |  0.18% | 11.36% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.544817s |  0.15% |  9.66% )   ( 1.495933s |  0.16% |  9.74% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.862047s |  0.18% | 11.64% )   ( 1.763985s |  0.19% | 11.48% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.442399s |  0.14% |  9.02% )   ( 1.417671s |  0.15% |  9.23% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.004091s |  0.09% |  6.28% )   ( 0.957135s |  0.10% |  6.23% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.559485s |  0.05% |  3.49% )   ( 0.513455s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.037621s |  0.10% |  6.49% )   ( 0.994149s |  0.10% |  6.47% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.488498s |  0.04% |  3.05% )   ( 0.444607s |  0.04% |  2.89% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.381401s |  0.13% |  8.64% )   ( 1.279152s |  0.13% |  8.32% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.799328s |  0.27% | 17.50% )   ( 2.721290s |  0.29% | 17.72% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.523951s |  0.05% |  3.27% )   ( 0.508090s |  0.05% |  3.30% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.534694s |  0.05% |  3.34% )   ( 0.490908s |  0.05% |  3.19% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004360s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003886s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004333s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008245s |  0.00% |  0.04% )   ( 0.008331s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 17.739106s |  1.76% |  3.51% )   ( 17.019454s |  1.84% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000587s |  0.00% |  0.00% )   ( 0.000606s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 17.738429s |  1.76% | 99.99% )   ( 17.018746s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000346s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p3
30.5.0:         ( 0.021231s |  0.00% |  0.11% )   ( 0.021195s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021758s |  0.00% |  0.12% )   ( 0.021719s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021652s |  0.00% |  0.12% )   ( 0.021609s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021646s |  0.00% |  0.12% )   ( 0.021605s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021623s |  0.00% |  0.12% )   ( 0.021581s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003222s |  0.00% |  0.00% )   ( 0.003623s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.002781s |  0.00% |  0.00% )   ( 0.003163s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003801s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p3
41.5.0:         ( 0.252599s |  0.02% |  0.06% )   ( 0.004877s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003141s |  0.00% |  0.00% )   ( 0.003543s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.002949s |  0.00% |  0.00% )   ( 0.003346s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.002693s |  0.00% |  0.00% )   ( 0.003086s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002936s |  0.00% |  0.00% )   ( 0.003317s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023248s |  0.00% |  0.00% )   ( 0.023557s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002652s |  0.00% |  0.00% )   ( 0.003024s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002466s |  0.00% |  0.00% )   ( 0.002821s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002867s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003272s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p3
66.5.0:         ( 0.002699s |  0.00% |  0.00% )   ( 0.003071s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002668s |  0.00% |  0.00% )   ( 0.003037s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.302710s |  1.71% |  4.87% )   ( 16.824337s |  1.82% |  4.94% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002784s |  0.00% |  0.01% )   ( 0.003188s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.102905s |  0.10% |  6.37% )   ( 1.100409s |  0.11% |  6.54% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.139378s |  0.21% | 12.36% )   ( 2.116844s |  0.22% | 12.58% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.714218s |  0.17% |  9.90% )   ( 1.668716s |  0.18% |  9.91% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.080504s |  0.20% | 12.02% )   ( 2.016549s |  0.21% | 11.98% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.591026s |  0.15% |  9.19% )   ( 1.542836s |  0.16% |  9.17% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.009369s |  0.10% |  5.83% )   ( 0.978353s |  0.10% |  5.81% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.460417s |  0.04% |  2.66% )   ( 0.425550s |  0.04% |  2.52% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.126167s |  0.11% |  6.50% )   ( 1.054764s |  0.11% |  6.26% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.407157s |  0.04% |  2.35% )   ( 0.366718s |  0.03% |  2.17% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.423229s |  0.14% |  8.22% )   ( 1.376690s |  0.14% |  8.18% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.425389s |  0.34% | 19.79% )   ( 3.375570s |  0.36% | 20.06% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.413169s |  0.04% |  2.38% )   ( 0.407232s |  0.04% |  2.42% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.406998s |  0.04% |  2.35% )   ( 0.390918s |  0.04% |  2.32% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002579s |  0.00% |  0.00% )   ( 0.002933s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002530s |  0.00% |  0.00% )   ( 0.002888s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002716s |  0.00% |  0.00% )   ( 0.003067s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004985s |  0.00% |  0.02% )   ( 0.005059s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.416275s |  1.73% |  3.44% )   ( 16.544612s |  1.79% |  3.62% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000583s |  0.00% |  0.00% )   ( 0.000602s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.415606s |  1.73% | 99.99% )   ( 16.543911s |  1.79% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p4
30.5.0:         ( 0.021514s |  0.00% |  0.12% )   ( 0.021473s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021710s |  0.00% |  0.12% )   ( 0.021667s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021642s |  0.00% |  0.12% )   ( 0.021600s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021656s |  0.00% |  0.12% )   ( 0.021612s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021586s |  0.00% |  0.12% )   ( 0.021549s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003585s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003295s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003919s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p4
41.5.0:         ( 0.383442s |  0.03% |  0.09% )   ( 0.005466s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003479s |  0.00% |  0.00% )   ( 0.003953s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003071s |  0.00% |  0.00% )   ( 0.003512s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003323s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028843s |  0.00% |  0.00% )   ( 0.026192s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003176s |  0.00% |  0.00% )   ( 0.003614s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003067s |  0.00% |  0.00% )   ( 0.003502s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004871s |  0.00% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003984s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p4
66.5.0:         ( 0.003218s |  0.00% |  0.00% )   ( 0.003655s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003106s |  0.00% |  0.00% )   ( 0.003550s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.833964s |  1.67% |  4.39% )   ( 16.337291s |  1.77% |  4.48% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003214s |  0.00% |  0.01% )   ( 0.003667s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.133262s |  0.11% |  6.73% )   ( 1.075454s |  0.11% |  6.58% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.058525s |  0.20% | 12.22% )   ( 1.971911s |  0.21% | 12.06% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.571243s |  0.15% |  9.33% )   ( 1.552956s |  0.16% |  9.50% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.974108s |  0.19% | 11.72% )   ( 1.940625s |  0.21% | 11.87% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.546276s |  0.15% |  9.18% )   ( 1.519449s |  0.16% |  9.30% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.020983s |  0.10% |  6.06% )   ( 0.958410s |  0.10% |  5.86% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471923s |  0.04% |  2.80% )   ( 0.462389s |  0.05% |  2.83% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.051423s |  0.10% |  6.24% )   ( 1.045903s |  0.11% |  6.40% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.428344s |  0.04% |  2.54% )   ( 0.401240s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.359112s |  0.13% |  8.07% )   ( 1.342912s |  0.14% |  8.21% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.257801s |  0.32% | 19.35% )   ( 3.162769s |  0.34% | 19.35% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.492662s |  0.04% |  2.92% )   ( 0.463896s |  0.05% |  2.83% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.465088s |  0.04% |  2.76% )   ( 0.435710s |  0.04% |  2.66% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003284s |  0.00% |  0.00% )   ( 0.003719s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003181s |  0.00% |  0.00% )   ( 0.003592s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004846s |  0.00% |  0.02% )   ( 0.004919s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 18.730589s |  1.86% |  3.71% )   ( 17.731948s |  1.92% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000577s |  0.00% |  0.00% )   ( 0.000597s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 18.729925s |  1.86% | 99.99% )   ( 17.731250s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000386s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000359s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p5
30.5.0:         ( 0.021704s |  0.00% |  0.11% )   ( 0.021661s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021689s |  0.00% |  0.11% )   ( 0.021651s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021624s |  0.00% |  0.11% )   ( 0.021582s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021619s |  0.00% |  0.11% )   ( 0.021579s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021614s |  0.00% |  0.11% )   ( 0.021574s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005094s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.003993s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004938s |  0.00% |  0.00% )   ( 0.005521s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p5
41.5.0:         ( 0.359729s |  0.03% |  0.06% )   ( 0.006616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004555s |  0.00% |  0.00% )   ( 0.005130s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004974s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003955s |  0.00% |  0.00% )   ( 0.004508s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004197s |  0.00% |  0.00% )   ( 0.004749s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034747s |  0.00% |  0.00% )   ( 0.033267s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003916s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003944s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013486s |  0.00% |  0.00% )   ( 0.004889s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004842s |  0.00% |  0.00% )   ( 0.005425s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p5
66.5.0:         ( 0.003941s |  0.00% |  0.00% )   ( 0.004514s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.143596s |  1.80% |  3.58% )   ( 17.499812s |  1.90% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003828s |  0.00% |  0.02% )   ( 0.004346s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.264962s |  0.12% |  6.97% )   ( 1.237619s |  0.13% |  7.07% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.180344s |  0.21% | 12.01% )   ( 2.121342s |  0.23% | 12.12% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.693549s |  0.16% |  9.33% )   ( 1.645752s |  0.17% |  9.40% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.030800s |  0.20% | 11.19% )   ( 1.946485s |  0.21% | 11.12% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.609958s |  0.16% |  8.87% )   ( 1.583308s |  0.17% |  9.04% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.137374s |  0.11% |  6.26% )   ( 1.094775s |  0.11% |  6.25% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.610511s |  0.06% |  3.36% )   ( 0.556340s |  0.06% |  3.17% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.230060s |  0.12% |  6.77% )   ( 1.153323s |  0.12% |  6.59% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513665s |  0.05% |  2.83% )   ( 0.491627s |  0.05% |  2.80% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.483888s |  0.14% |  8.17% )   ( 1.441725s |  0.15% |  8.23% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.279360s |  0.32% | 18.07% )   ( 3.141543s |  0.34% | 17.95% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.561938s |  0.05% |  3.09% )   ( 0.546076s |  0.05% |  3.12% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.543359s |  0.05% |  2.99% )   ( 0.535551s |  0.05% |  3.06% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003773s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003755s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004109s |  0.00% |  0.00% )   ( 0.004624s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005975s |  0.00% |  0.03% )   ( 0.006027s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 16.484333s |  1.63% |  3.26% )   ( 15.491046s |  1.68% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000626s |  0.00% |  0.00% )   ( 0.000641s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 16.483617s |  1.63% | 99.99% )   ( 15.490301s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000332s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p6
30.5.0:         ( 0.021678s |  0.00% |  0.13% )   ( 0.021636s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021685s |  0.00% |  0.13% )   ( 0.021650s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021661s |  0.00% |  0.13% )   ( 0.021617s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021623s |  0.00% |  0.13% )   ( 0.021579s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021600s |  0.00% |  0.13% )   ( 0.021562s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004475s |  0.00% |  0.00% )   ( 0.005031s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004332s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004622s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p6
41.5.0:         ( 0.371832s |  0.03% |  0.08% )   ( 0.006316s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004107s |  0.00% |  0.00% )   ( 0.004641s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004276s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003306s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003625s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029949s |  0.00% |  0.00% )   ( 0.030325s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003622s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003875s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004831s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p6
66.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003464s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.902054s |  1.58% |  3.85% )   ( 15.265865s |  1.65% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003640s |  0.00% |  0.02% )   ( 0.004137s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.060281s |  0.10% |  6.66% )   ( 0.993231s |  0.10% |  6.50% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.761461s |  0.17% | 11.07% )   ( 1.714483s |  0.18% | 11.23% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.580281s |  0.15% |  9.93% )   ( 1.463950s |  0.15% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.773650s |  0.17% | 11.15% )   ( 1.716214s |  0.18% | 11.24% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.468549s |  0.14% |  9.23% )   ( 1.423157s |  0.15% |  9.32% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.990118s |  0.09% |  6.22% )   ( 0.945770s |  0.10% |  6.19% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.523213s |  0.05% |  3.29% )   ( 0.510832s |  0.05% |  3.34% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.006163s |  0.10% |  6.32% )   ( 0.969551s |  0.10% |  6.35% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.489986s |  0.04% |  3.08% )   ( 0.442626s |  0.04% |  2.89% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.345818s |  0.13% |  8.46% )   ( 1.293653s |  0.14% |  8.47% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.859495s |  0.28% | 17.98% )   ( 2.798538s |  0.30% | 18.33% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.547105s |  0.05% |  3.44% )   ( 0.504188s |  0.05% |  3.30% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.492294s |  0.04% |  3.09% )   ( 0.485535s |  0.05% |  3.18% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003606s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003830s |  0.00% |  0.00% )   ( 0.004309s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009262s |  0.00% |  0.05% )   ( 0.009328s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 16.404982s |  1.63% |  3.24% )   ( 15.329671s |  1.66% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000621s |  0.00% |  0.00% )   ( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 16.404275s |  1.63% | 99.99% )   ( 15.328935s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p7
30.5.0:         ( 0.023852s |  0.00% |  0.14% )   ( 0.023799s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021752s |  0.00% |  0.13% )   ( 0.021710s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021731s |  0.00% |  0.13% )   ( 0.021689s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021893s |  0.00% |  0.13% )   ( 0.021851s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021731s |  0.00% |  0.13% )   ( 0.021692s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004775s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004698s |  0.00% |  0.00% )   ( 0.005220s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p7
41.5.0:         ( 0.383918s |  0.03% |  0.09% )   ( 0.006395s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004376s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003791s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003583s |  0.00% |  0.00% )   ( 0.004088s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003806s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031585s |  0.00% |  0.00% )   ( 0.030134s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003589s |  0.00% |  0.00% )   ( 0.004110s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003308s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005102s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p7
66.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004291s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.806483s |  1.57% |  3.85% )   ( 15.102079s |  1.63% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003560s |  0.00% |  0.02% )   ( 0.004036s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.041448s |  0.10% |  6.58% )   ( 0.994594s |  0.10% |  6.58% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.747027s |  0.17% | 11.05% )   ( 1.708706s |  0.18% | 11.31% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.551394s |  0.15% |  9.81% )   ( 1.437166s |  0.15% |  9.51% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.851513s |  0.18% | 11.71% )   ( 1.719962s |  0.18% | 11.38% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.408433s |  0.13% |  8.91% )   ( 1.389567s |  0.15% |  9.20% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.925120s |  0.09% |  5.85% )   ( 0.915753s |  0.09% |  6.06% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.534257s |  0.05% |  3.37% )   ( 0.500930s |  0.05% |  3.31% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.058868s |  0.10% |  6.69% )   ( 0.963341s |  0.10% |  6.37% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.453742s |  0.04% |  2.87% )   ( 0.442983s |  0.04% |  2.93% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.316952s |  0.13% |  8.33% )   ( 1.270561s |  0.13% |  8.41% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.859322s |  0.28% | 18.08% )   ( 2.779811s |  0.30% | 18.40% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.515923s |  0.05% |  3.26% )   ( 0.489547s |  0.05% |  3.24% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.538924s |  0.05% |  3.40% )   ( 0.485122s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003643s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003215s |  0.00% |  0.00% )   ( 0.003670s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit
80.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p* 1>&21
81.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008856s |  0.00% |  0.05% )   ( 0.008839s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 19.619316s |  1.95% |  3.88% )   ( 18.796548s |  2.04% |  4.11% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000632s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.618598s |  1.94% | 99.99% )   ( 18.795800s |  2.04% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p8
30.5.0:         ( 0.021641s |  0.00% |  0.11% )   ( 0.021599s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021676s |  0.00% |  0.11% )   ( 0.021636s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021654s |  0.00% |  0.11% )   ( 0.021610s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021664s |  0.00% |  0.11% )   ( 0.021624s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021641s |  0.00% |  0.11% )   ( 0.021603s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005214s |  0.00% |  0.00% )   ( 0.005846s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004756s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005587s |  0.00% |  0.00% )   ( 0.006216s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p8
41.5.0:         ( 0.342102s |  0.03% |  0.05% )   ( 0.007536s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005061s |  0.00% |  0.00% )   ( 0.005771s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004703s |  0.00% |  0.00% )   ( 0.005316s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.004361s |  0.00% |  0.00% )   ( 0.004960s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004677s |  0.00% |  0.00% )   ( 0.005256s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036650s |  0.00% |  0.00% )   ( 0.036954s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004465s |  0.00% |  0.00% )   ( 0.005076s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.011244s |  0.00% |  0.00% )   ( 0.005407s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005338s |  0.00% |  0.00% )   ( 0.005938s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p8
66.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005083s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004310s |  0.00% |  0.00% )   ( 0.004935s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.043452s |  1.89% |  3.13% )   ( 18.551535s |  2.01% |  3.18% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004274s |  0.00% |  0.02% )   ( 0.004845s |  0.00% |  0.02% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.374835s |  0.13% |  7.21% )   ( 1.342330s |  0.14% |  7.23% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.136625s |  0.21% | 11.21% )   ( 2.099279s |  0.22% | 11.31% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.768828s |  0.17% |  9.28% )   ( 1.729566s |  0.18% |  9.32% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.087448s |  0.20% | 10.96% )   ( 2.053254s |  0.22% | 11.06% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.723322s |  0.17% |  9.04% )   ( 1.677190s |  0.18% |  9.04% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.252898s |  0.12% |  6.57% )   ( 1.228318s |  0.13% |  6.62% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.623276s |  0.06% |  3.27% )   ( 0.612071s |  0.06% |  3.29% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.270579s |  0.12% |  6.67% )   ( 1.238728s |  0.13% |  6.67% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.578521s |  0.05% |  3.03% )   ( 0.549622s |  0.05% |  2.96% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.619038s |  0.16% |  8.50% )   ( 1.549332s |  0.16% |  8.35% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.322712s |  0.33% | 17.44% )   ( 3.250495s |  0.35% | 17.52% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.659005s |  0.06% |  3.46% )   ( 0.623901s |  0.06% |  3.36% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.622091s |  0.06% |  3.26% )   ( 0.592604s |  0.06% |  3.19% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004504s |  0.00% |  0.00% )   ( 0.005109s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004926s |  0.00% |  0.00% )   ( 0.005522s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004817s |  0.00% |  0.02% )   ( 0.004881s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 16.683031s |  1.65% |  3.30% )   ( 15.981258s |  1.73% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000634s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 16.682304s |  1.65% | 99.99% )   ( 15.980504s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p9
30.5.0:         ( 0.021763s |  0.00% |  0.13% )   ( 0.021609s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021679s |  0.00% |  0.12% )   ( 0.021580s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021768s |  0.00% |  0.13% )   ( 0.021667s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021773s |  0.00% |  0.13% )   ( 0.021618s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021714s |  0.00% |  0.13% )   ( 0.021615s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003626s |  0.00% |  0.00% )   ( 0.004145s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004426s |  0.00% |  0.00% )   ( 0.004911s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p9
41.5.0:         ( 0.321609s |  0.03% |  0.08% )   ( 0.005847s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003621s |  0.00% |  0.00% )   ( 0.004088s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003435s |  0.00% |  0.00% )   ( 0.003890s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003170s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003298s |  0.00% |  0.00% )   ( 0.003715s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026000s |  0.00% |  0.00% )   ( 0.026350s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003184s |  0.00% |  0.00% )   ( 0.003628s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003244s |  0.00% |  0.00% )   ( 0.003611s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006561s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004169s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p9
66.5.0:         ( 0.003164s |  0.00% |  0.00% )   ( 0.003617s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003205s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.156552s |  1.60% |  4.21% )   ( 15.766339s |  1.71% |  4.28% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003227s |  0.00% |  0.01% )   ( 0.003676s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.115769s |  0.11% |  6.90% )   ( 1.037273s |  0.11% |  6.57% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.842371s |  0.18% | 11.40% )   ( 1.796818s |  0.19% | 11.39% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.601731s |  0.15% |  9.91% )   ( 1.518002s |  0.16% |  9.62% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.875728s |  0.18% | 11.60% )   ( 1.830252s |  0.19% | 11.60% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.498766s |  0.14% |  9.27% )   ( 1.473852s |  0.16% |  9.34% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.970039s |  0.09% |  6.00% )   ( 0.958700s |  0.10% |  6.08% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.474614s |  0.04% |  2.93% )   ( 0.472550s |  0.05% |  2.99% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.017200s |  0.10% |  6.29% )   ( 0.997570s |  0.10% |  6.32% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.434629s |  0.04% |  2.69% )   ( 0.415652s |  0.04% |  2.63% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.346942s |  0.13% |  8.33% )   ( 1.316419s |  0.14% |  8.34% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.048188s |  0.30% | 18.86% )   ( 3.030241s |  0.32% | 19.21% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.472881s |  0.04% |  2.92% )   ( 0.465480s |  0.05% |  2.95% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.454467s |  0.04% |  2.81% )   ( 0.449854s |  0.04% |  2.85% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003640s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003144s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003422s |  0.00% |  0.00% )   ( 0.003853s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009216s |  0.00% |  0.05% )   ( 0.009305s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.378250s |  1.72% |  3.44% )   ( 16.639568s |  1.80% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000638s |  0.00% |  0.00% )   ( 0.000658s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.377525s |  1.72% | 99.99% )   ( 16.638809s |  1.80% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p10
30.5.0:         ( 0.021684s |  0.00% |  0.12% )   ( 0.021612s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021694s |  0.00% |  0.12% )   ( 0.021653s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021664s |  0.00% |  0.12% )   ( 0.021623s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.023614s |  0.00% |  0.13% )   ( 0.023572s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021995s |  0.00% |  0.12% )   ( 0.021942s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002756s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002454s |  0.00% |  0.00% )   ( 0.002776s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003044s |  0.00% |  0.00% )   ( 0.003407s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p10
41.5.0:         ( 0.357619s |  0.03% |  0.11% )   ( 0.004300s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002994s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.002695s |  0.00% |  0.00% )   ( 0.003081s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.002443s |  0.00% |  0.00% )   ( 0.002768s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002557s |  0.00% |  0.00% )   ( 0.002905s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020640s |  0.00% |  0.00% )   ( 0.020927s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002384s |  0.00% |  0.00% )   ( 0.002715s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002391s |  0.00% |  0.00% )   ( 0.002733s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005613s |  0.00% |  0.00% )   ( 0.002957s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003051s |  0.00% |  0.00% )   ( 0.003389s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p10
66.5.0:         ( 0.005514s |  0.00% |  0.00% )   ( 0.002872s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002295s |  0.00% |  0.00% )   ( 0.002641s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.833275s |  1.67% |  5.69% )   ( 16.448126s |  1.78% |  5.81% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002490s |  0.00% |  0.01% )   ( 0.002844s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.116570s |  0.11% |  6.63% )   ( 1.060645s |  0.11% |  6.44% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.098007s |  0.20% | 12.46% )   ( 2.044668s |  0.22% | 12.43% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.632899s |  0.16% |  9.70% )   ( 1.579792s |  0.17% |  9.60% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.055757s |  0.20% | 12.21% )   ( 2.032185s |  0.22% | 12.35% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.559601s |  0.15% |  9.26% )   ( 1.519584s |  0.16% |  9.23% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.995229s |  0.09% |  5.91% )   ( 0.958717s |  0.10% |  5.82% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.391216s |  0.03% |  2.32% )   ( 0.391259s |  0.04% |  2.37% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.051623s |  0.10% |  6.24% )   ( 1.046794s |  0.11% |  6.36% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.361511s |  0.03% |  2.14% )   ( 0.338259s |  0.03% |  2.05% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.378242s |  0.13% |  8.18% )   ( 1.342409s |  0.14% |  8.16% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.432815s |  0.34% | 20.39% )   ( 3.387445s |  0.36% | 20.59% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.382938s |  0.03% |  2.27% )   ( 0.377079s |  0.04% |  2.29% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.374377s |  0.03% |  2.22% )   ( 0.366446s |  0.03% |  2.22% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002440s |  0.00% |  0.00% )   ( 0.002759s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002368s |  0.00% |  0.00% )   ( 0.002701s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002607s |  0.00% |  0.00% )   ( 0.002946s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006961s |  0.00% |  0.04% )   ( 0.007033s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.540423s |  1.74% |  3.47% )   ( 16.458560s |  1.78% |  3.60% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000702s |  0.00% |  0.00% )   ( 0.000721s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.539632s |  1.74% | 99.99% )   ( 16.457735s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p11
30.5.0:         ( 0.021809s |  0.00% |  0.12% )   ( 0.021725s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021686s |  0.00% |  0.12% )   ( 0.021640s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.021751s |  0.00% |  0.12% )   ( 0.021696s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.021729s |  0.00% |  0.12% )   ( 0.021684s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.021819s |  0.00% |  0.12% )   ( 0.021774s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004183s |  0.00% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004599s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p11
41.5.0:         ( 0.456594s |  0.04% |  0.10% )   ( 0.006300s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003520s |  0.00% |  0.00% )   ( 0.004017s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003914s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033339s |  0.00% |  0.00% )   ( 0.030784s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003720s |  0.00% |  0.00% )   ( 0.004221s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004415s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005650s |  0.00% |  0.00% )   ( 0.004509s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004485s |  0.00% |  0.00% )   ( 0.004999s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p11
66.5.0:         ( 0.003661s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.867728s |  1.67% |  3.84% )   ( 16.235339s |  1.76% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003780s |  0.00% |  0.02% )   ( 0.004310s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.150584s |  0.11% |  6.82% )   ( 1.119481s |  0.12% |  6.89% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.981990s |  0.19% | 11.75% )   ( 1.959081s |  0.21% | 12.06% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.654537s |  0.16% |  9.80% )   ( 1.605960s |  0.17% |  9.89% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.041014s |  0.20% | 12.10% )   ( 1.971301s |  0.21% | 12.14% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.583143s |  0.15% |  9.38% )   ( 1.525204s |  0.16% |  9.39% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.040125s |  0.10% |  6.16% )   ( 1.003930s |  0.10% |  6.18% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546571s |  0.05% |  3.24% )   ( 0.505266s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.089411s |  0.10% |  6.45% )   ( 1.032166s |  0.11% |  6.35% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475050s |  0.04% |  2.81% )   ( 0.445701s |  0.04% |  2.74% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.345748s |  0.13% |  7.97% )   ( 1.292007s |  0.14% |  7.95% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.842635s |  0.28% | 16.85% )   ( 2.790158s |  0.30% | 17.18% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537755s |  0.05% |  3.18% )   ( 0.502220s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.575385s |  0.05% |  3.41% )   ( 0.478554s |  0.05% |  2.94% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003464s |  0.00% |  0.00% )   ( 0.003932s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.006930s |  0.00% |  0.00% )   ( 0.004405s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005328s |  0.00% |  0.03% )   ( 0.005394s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.051001s |  1.89% |  3.77% )   ( 18.120630s |  1.96% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000873s |  0.00% |  0.00% )   ( 0.000898s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.049951s |  1.89% | 99.99% )   ( 18.119530s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p12
30.5.0:         ( 0.041675s |  0.00% |  0.21% )   ( 0.041539s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041804s |  0.00% |  0.21% )   ( 0.041651s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041445s |  0.00% |  0.21% )   ( 0.041297s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041774s |  0.00% |  0.21% )   ( 0.041624s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.041523s |  0.00% |  0.21% )   ( 0.041372s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003332s |  0.00% |  0.00% )   ( 0.003763s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004447s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p12
41.5.0:         ( 0.442455s |  0.04% |  0.10% )   ( 0.005308s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003456s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003159s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003004s |  0.00% |  0.00% )   ( 0.003404s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003602s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023871s |  0.00% |  0.00% )   ( 0.024215s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003000s |  0.00% |  0.00% )   ( 0.003411s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004591s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003803s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p12
66.5.0:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003579s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003081s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.315544s |  1.82% |  4.57% )   ( 17.816836s |  1.93% |  4.68% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003103s |  0.00% |  0.01% )   ( 0.003536s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.301165s |  0.12% |  7.10% )   ( 1.260795s |  0.13% |  7.07% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.229795s |  0.22% | 12.17% )   ( 2.177323s |  0.23% | 12.22% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.699339s |  0.16% |  9.27% )   ( 1.675338s |  0.18% |  9.40% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.118121s |  0.21% | 11.56% )   ( 2.098987s |  0.22% | 11.78% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.699333s |  0.16% |  9.27% )   ( 1.623686s |  0.17% |  9.11% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.144479s |  0.11% |  6.24% )   ( 1.099343s |  0.11% |  6.17% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.550178s |  0.05% |  3.00% )   ( 0.487038s |  0.05% |  2.73% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.245590s |  0.12% |  6.80% )   ( 1.196118s |  0.12% |  6.71% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.416893s |  0.04% |  2.27% )   ( 0.401628s |  0.04% |  2.25% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.460560s |  0.14% |  7.97% )   ( 1.431653s |  0.15% |  8.03% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.540377s |  0.35% | 19.32% )   ( 3.480291s |  0.37% | 19.53% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.465058s |  0.04% |  2.53% )   ( 0.458989s |  0.04% |  2.57% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.441553s |  0.04% |  2.41% )   ( 0.422111s |  0.04% |  2.36% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003094s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002890s |  0.00% |  0.00% )   ( 0.003294s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003514s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005048s |  0.00% |  0.02% )   ( 0.005122s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 16.265322s |  1.61% |  3.22% )   ( 15.163269s |  1.64% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.001019s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 16.264156s |  1.61% | 99.99% )   ( 15.162061s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p13
30.5.0:         ( 0.036642s |  0.00% |  0.22% )   ( 0.036507s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.034214s |  0.00% |  0.21% )   ( 0.034104s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.027462s |  0.00% |  0.16% )   ( 0.027379s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.024520s |  0.00% |  0.15% )   ( 0.024414s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.024410s |  0.00% |  0.15% )   ( 0.024342s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004484s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004135s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005124s |  0.00% |  0.00% )   ( 0.005717s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p13
41.5.0:         ( 0.429088s |  0.04% |  0.09% )   ( 0.006784s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004511s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004735s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003703s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003972s |  0.00% |  0.00% )   ( 0.004509s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031341s |  0.00% |  0.00% )   ( 0.031783s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004161s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003654s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007065s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005157s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p13
66.5.0:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003569s |  0.00% |  0.00% )   ( 0.004073s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.581826s |  1.54% |  3.68% )   ( 14.896933s |  1.61% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003655s |  0.00% |  0.02% )   ( 0.004174s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.050913s |  0.10% |  6.74% )   ( 0.997622s |  0.10% |  6.69% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.802139s |  0.17% | 11.56% )   ( 1.668380s |  0.18% | 11.19% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.546635s |  0.15% |  9.92% )   ( 1.422171s |  0.15% |  9.54% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.688520s |  0.16% | 10.83% )   ( 1.640388s |  0.17% | 11.01% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.405651s |  0.13% |  9.02% )   ( 1.382190s |  0.15% |  9.27% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011583s |  0.10% |  6.49% )   ( 0.928329s |  0.10% |  6.23% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546457s |  0.05% |  3.50% )   ( 0.510195s |  0.05% |  3.42% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.961523s |  0.09% |  6.17% )   ( 0.944385s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.486746s |  0.04% |  3.12% )   ( 0.457132s |  0.04% |  3.06% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.286943s |  0.12% |  8.25% )   ( 1.262753s |  0.13% |  8.47% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.694576s |  0.26% | 17.29% )   ( 2.655896s |  0.28% | 17.82% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.563476s |  0.05% |  3.61% )   ( 0.522890s |  0.05% |  3.51% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533009s |  0.05% |  3.42% )   ( 0.500428s |  0.05% |  3.35% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004052s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004078s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000215s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005199s |  0.00% |  0.03% )   ( 0.005301s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 16.454183s |  1.63% |  3.25% )   ( 15.629721s |  1.69% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001014s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 16.453017s |  1.63% | 99.99% )   ( 15.628514s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p14
30.5.0:         ( 0.023051s |  0.00% |  0.14% )   ( 0.022988s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.022902s |  0.00% |  0.13% )   ( 0.022853s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.039949s |  0.00% |  0.24% )   ( 0.039824s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.040805s |  0.00% |  0.24% )   ( 0.040676s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.039669s |  0.00% |  0.24% )   ( 0.039542s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004167s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004478s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p14
41.5.0:         ( 0.392630s |  0.03% |  0.09% )   ( 0.006158s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004203s |  0.00% |  0.00% )   ( 0.004735s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003997s |  0.00% |  0.00% )   ( 0.004544s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004293s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034268s |  0.00% |  0.00% )   ( 0.031700s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003480s |  0.00% |  0.00% )   ( 0.003956s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009864s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004384s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p14
66.5.0:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004064s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003432s |  0.00% |  0.00% )   ( 0.003909s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.782946s |  1.56% |  3.83% )   ( 15.345857s |  1.66% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003573s |  0.00% |  0.02% )   ( 0.004072s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.049268s |  0.10% |  6.64% )   ( 1.023390s |  0.11% |  6.66% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.784371s |  0.17% | 11.30% )   ( 1.757901s |  0.19% | 11.45% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.523867s |  0.15% |  9.65% )   ( 1.473620s |  0.16% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.835594s |  0.18% | 11.63% )   ( 1.738804s |  0.18% | 11.33% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.425364s |  0.14% |  9.03% )   ( 1.415956s |  0.15% |  9.22% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.948326s |  0.09% |  6.00% )   ( 0.926312s |  0.10% |  6.03% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535430s |  0.05% |  3.39% )   ( 0.501060s |  0.05% |  3.26% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.002018s |  0.09% |  6.34% )   ( 0.975897s |  0.10% |  6.35% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.475201s |  0.04% |  3.01% )   ( 0.444686s |  0.04% |  2.89% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.328011s |  0.13% |  8.41% )   ( 1.291181s |  0.14% |  8.41% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.867704s |  0.28% | 18.16% )   ( 2.811466s |  0.30% | 18.32% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.506705s |  0.05% |  3.21% )   ( 0.498585s |  0.05% |  3.24% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497514s |  0.04% |  3.15% )   ( 0.482927s |  0.05% |  3.14% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003628s |  0.00% |  0.00% )   ( 0.004115s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003339s |  0.00% |  0.00% )   ( 0.003803s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003705s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008766s |  0.00% |  0.05% )   ( 0.008853s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.104699s |  1.70% |  3.38% )   ( 16.252786s |  1.76% |  3.56% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001050s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.103498s |  1.69% | 99.99% )   ( 16.251529s |  1.76% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p15
30.5.0:         ( 0.025521s |  0.00% |  0.14% )   ( 0.025444s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021771s |  0.00% |  0.12% )   ( 0.021716s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.024665s |  0.00% |  0.14% )   ( 0.024593s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.024210s |  0.00% |  0.14% )   ( 0.024139s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.027072s |  0.00% |  0.15% )   ( 0.026985s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004182s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004623s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p15
41.5.0:         ( 0.383046s |  0.03% |  0.08% )   ( 0.006194s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004138s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003656s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004345s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030584s |  0.00% |  0.00% )   ( 0.030994s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003565s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004072s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008077s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p15
66.5.0:         ( 0.003406s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003491s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000206s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.495896s |  1.63% |  3.85% )   ( 16.016782s |  1.73% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003681s |  0.00% |  0.02% )   ( 0.004186s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.126055s |  0.11% |  6.82% )   ( 1.081340s |  0.11% |  6.75% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.929269s |  0.19% | 11.69% )   ( 1.894413s |  0.20% | 11.82% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.579932s |  0.15% |  9.57% )   ( 1.560349s |  0.16% |  9.74% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.003388s |  0.19% | 12.14% )   ( 1.895773s |  0.20% | 11.83% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.565423s |  0.15% |  9.48% )   ( 1.530065s |  0.16% |  9.55% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.018047s |  0.10% |  6.17% )   ( 1.001367s |  0.10% |  6.25% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.525049s |  0.05% |  3.18% )   ( 0.511177s |  0.05% |  3.19% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.052888s |  0.10% |  6.38% )   ( 1.020343s |  0.11% |  6.37% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.485808s |  0.04% |  2.94% )   ( 0.447481s |  0.04% |  2.79% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.345533s |  0.13% |  8.15% )   ( 1.280036s |  0.13% |  7.99% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.829682s |  0.28% | 17.15% )   ( 2.791820s |  0.30% | 17.43% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.511382s |  0.05% |  3.10% )   ( 0.499585s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.519759s |  0.05% |  3.15% )   ( 0.498847s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004130s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003342s |  0.00% |  0.00% )   ( 0.003801s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003698s |  0.00% |  0.00% )   ( 0.004170s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004823s |  0.00% |  0.02% )   ( 0.004890s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 16.427725s |  1.63% |  3.25% )   ( 15.617751s |  1.69% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000999s |  0.00% |  0.00% )   ( 0.001020s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 16.426573s |  1.63% | 99.99% )   ( 15.616557s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p16
30.5.0:         ( 0.039195s |  0.00% |  0.23% )   ( 0.039056s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024797s |  0.00% |  0.15% )   ( 0.024725s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.024494s |  0.00% |  0.14% )   ( 0.024422s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.029375s |  0.00% |  0.17% )   ( 0.029276s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.029908s |  0.00% |  0.18% )   ( 0.029805s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004634s |  0.00% |  0.00% )   ( 0.005183s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004617s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004904s |  0.00% |  0.00% )   ( 0.005457s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p16
41.5.0:         ( 0.272360s |  0.02% |  0.06% )   ( 0.006187s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004312s |  0.00% |  0.00% )   ( 0.004854s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003719s |  0.00% |  0.00% )   ( 0.004238s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003922s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031499s |  0.00% |  0.00% )   ( 0.031935s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005353s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004626s |  0.00% |  0.00% )   ( 0.005146s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p16
66.5.0:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003647s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.902616s |  1.58% |  3.72% )   ( 15.351457s |  1.66% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003979s |  0.00% |  0.02% )   ( 0.004517s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.085276s |  0.10% |  6.82% )   ( 1.031550s |  0.11% |  6.71% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.757313s |  0.17% | 11.05% )   ( 1.713139s |  0.18% | 11.15% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.514554s |  0.15% |  9.52% )   ( 1.464407s |  0.15% |  9.53% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.795370s |  0.17% | 11.28% )   ( 1.721224s |  0.18% | 11.21% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.456036s |  0.14% |  9.15% )   ( 1.428835s |  0.15% |  9.30% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.980034s |  0.09% |  6.16% )   ( 0.951553s |  0.10% |  6.19% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.538145s |  0.05% |  3.38% )   ( 0.516239s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.029597s |  0.10% |  6.47% )   ( 0.980739s |  0.10% |  6.38% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.471657s |  0.04% |  2.96% )   ( 0.450985s |  0.04% |  2.93% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.374826s |  0.13% |  8.64% )   ( 1.303954s |  0.14% |  8.49% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.803202s |  0.27% | 17.62% )   ( 2.759506s |  0.29% | 17.97% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554734s |  0.05% |  3.48% )   ( 0.525354s |  0.05% |  3.42% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.537893s |  0.05% |  3.38% )   ( 0.499455s |  0.05% |  3.25% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004239s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003523s |  0.00% |  0.00% )   ( 0.004014s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004884s |  0.00% |  0.02% )   ( 0.004953s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 16.046600s |  1.59% |  3.17% )   ( 14.580295s |  1.58% |  3.19% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001077s |  0.00% |  0.00% )   ( 0.001099s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 16.045373s |  1.59% | 99.99% )   ( 14.579023s |  1.58% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p17
30.5.0:         ( 0.041756s |  0.00% |  0.26% )   ( 0.041627s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.032877s |  0.00% |  0.20% )   ( 0.032764s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.034543s |  0.00% |  0.21% )   ( 0.034421s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041515s |  0.00% |  0.25% )   ( 0.041376s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.036932s |  0.00% |  0.23% )   ( 0.036805s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004880s |  0.00% |  0.00% )   ( 0.005495s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005174s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005521s |  0.00% |  0.00% )   ( 0.006165s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p17
41.5.0:         ( 0.478443s |  0.04% |  0.10% )   ( 0.007341s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004797s |  0.00% |  0.00% )   ( 0.005386s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004440s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004602s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004378s |  0.00% |  0.00% )   ( 0.004937s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.047401s |  0.00% |  0.01% )   ( 0.035328s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004138s |  0.00% |  0.00% )   ( 0.004706s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004173s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005294s |  0.00% |  0.00% )   ( 0.005064s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005027s |  0.00% |  0.00% )   ( 0.005599s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p17
66.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004761s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.246617s |  1.51% |  3.39% )   ( 14.258405s |  1.54% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004010s |  0.00% |  0.02% )   ( 0.004569s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.009394s |  0.10% |  6.62% )   ( 0.961791s |  0.10% |  6.74% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.629736s |  0.16% | 10.68% )   ( 1.562147s |  0.16% | 10.95% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.403390s |  0.13% |  9.20% )   ( 1.365207s |  0.14% |  9.57% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.592188s |  0.15% | 10.44% )   ( 1.546886s |  0.16% | 10.84% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.461512s |  0.14% |  9.58% )   ( 1.322538s |  0.14% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.941608s |  0.09% |  6.17% )   ( 0.898278s |  0.09% |  6.29% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.584758s |  0.05% |  3.83% )   ( 0.533878s |  0.05% |  3.74% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.985536s |  0.09% |  6.46% )   ( 0.903116s |  0.09% |  6.33% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.540615s |  0.05% |  3.54% )   ( 0.477379s |  0.05% |  3.34% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.336369s |  0.13% |  8.76% )   ( 1.214469s |  0.13% |  8.51% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.613197s |  0.25% | 17.13% )   ( 2.406861s |  0.26% | 16.88% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.585312s |  0.05% |  3.83% )   ( 0.532248s |  0.05% |  3.73% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.558992s |  0.05% |  3.66% )   ( 0.529038s |  0.05% |  3.71% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.007379s |  0.00% |  0.00% )   ( 0.004978s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003836s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004228s |  0.00% |  0.00% )   ( 0.004764s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.009051s |  0.00% |  0.05% )   ( 0.009127s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 16.598540s |  1.64% |  3.28% )   ( 15.496229s |  1.68% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001047s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 16.597347s |  1.64% | 99.99% )   ( 15.494993s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p18
30.5.0:         ( 0.024599s |  0.00% |  0.14% )   ( 0.024509s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027208s |  0.00% |  0.16% )   ( 0.027126s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.032891s |  0.00% |  0.19% )   ( 0.032767s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.029867s |  0.00% |  0.17% )   ( 0.029771s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.032565s |  0.00% |  0.19% )   ( 0.032451s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003910s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004795s |  0.00% |  0.00% )   ( 0.005311s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p18
41.5.0:         ( 0.462011s |  0.04% |  0.10% )   ( 0.006628s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004423s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003969s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004256s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003887s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032343s |  0.00% |  0.00% )   ( 0.031940s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004432s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004895s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p18
66.5.0:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003631s |  0.00% |  0.00% )   ( 0.004153s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.886126s |  1.57% |  3.68% )   ( 15.231443s |  1.65% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003790s |  0.00% |  0.02% )   ( 0.004320s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.032517s |  0.10% |  6.49% )   ( 1.027847s |  0.11% |  6.74% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.850740s |  0.18% | 11.65% )   ( 1.736641s |  0.18% | 11.40% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.529233s |  0.15% |  9.62% )   ( 1.480595s |  0.16% |  9.72% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.768881s |  0.17% | 11.13% )   ( 1.719088s |  0.18% | 11.28% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.488639s |  0.14% |  9.37% )   ( 1.399463s |  0.15% |  9.18% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.986654s |  0.09% |  6.21% )   ( 0.921088s |  0.10% |  6.04% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.561126s |  0.05% |  3.53% )   ( 0.524130s |  0.05% |  3.44% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.007915s |  0.10% |  6.34% )   ( 0.973756s |  0.10% |  6.39% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.460683s |  0.04% |  2.89% )   ( 0.447730s |  0.04% |  2.93% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.330447s |  0.13% |  8.37% )   ( 1.280555s |  0.13% |  8.40% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.793777s |  0.27% | 17.58% )   ( 2.720194s |  0.29% | 17.85% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.551704s |  0.05% |  3.47% )   ( 0.506543s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.520020s |  0.05% |  3.27% )   ( 0.489493s |  0.05% |  3.21% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003636s |  0.00% |  0.00% )   ( 0.004140s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004864s |  0.00% |  0.02% )   ( 0.004931s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 19.182161s |  1.90% |  3.79% )   ( 18.142751s |  1.97% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001021s |  0.00% |  0.00% )   ( 0.001039s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 19.180987s |  1.90% | 99.99% )   ( 18.141539s |  1.96% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p19
30.5.0:         ( 0.042684s |  0.00% |  0.22% )   ( 0.042543s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042859s |  0.00% |  0.22% )   ( 0.042692s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.040757s |  0.00% |  0.21% )   ( 0.040601s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.040253s |  0.00% |  0.20% )   ( 0.040117s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.035692s |  0.00% |  0.18% )   ( 0.035554s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004384s |  0.00% |  0.00% )   ( 0.004931s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000196s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004713s |  0.00% |  0.00% )   ( 0.005246s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p19
41.5.0:         ( 0.390270s |  0.03% |  0.07% )   ( 0.006329s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004288s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004269s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004618s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034076s |  0.00% |  0.00% )   ( 0.031493s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003575s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003598s |  0.00% |  0.00% )   ( 0.004092s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.005021s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p19
66.5.0:         ( 0.003767s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.484541s |  1.83% |  3.70% )   ( 17.823791s |  1.93% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003864s |  0.00% |  0.02% )   ( 0.004373s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.373048s |  0.13% |  7.42% )   ( 1.291186s |  0.14% |  7.24% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.076143s |  0.20% | 11.23% )   ( 2.051356s |  0.22% | 11.50% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.707189s |  0.16% |  9.23% )   ( 1.682794s |  0.18% |  9.44% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.092068s |  0.20% | 11.31% )   ( 2.052577s |  0.22% | 11.51% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.698314s |  0.16% |  9.18% )   ( 1.624436s |  0.17% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.208251s |  0.12% |  6.53% )   ( 1.144938s |  0.12% |  6.42% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.596100s |  0.05% |  3.22% )   ( 0.540600s |  0.05% |  3.03% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.315439s |  0.13% |  7.11% )   ( 1.172817s |  0.12% |  6.58% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522038s |  0.05% |  2.82% )   ( 0.477108s |  0.05% |  2.67% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474039s |  0.14% |  7.97% )   ( 1.444829s |  0.15% |  8.10% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.326237s |  0.33% | 17.99% )   ( 3.283872s |  0.35% | 18.42% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.570932s |  0.05% |  3.08% )   ( 0.539766s |  0.05% |  3.02% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.520879s |  0.05% |  2.81% )   ( 0.513139s |  0.05% |  2.87% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004403s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004855s |  0.00% |  0.02% )   ( 0.004940s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 16.566860s |  1.64% |  3.28% )   ( 15.957280s |  1.73% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001073s |  0.00% |  0.00% )   ( 0.001093s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 16.565633s |  1.64% | 99.99% )   ( 15.956011s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000202s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p20
30.5.0:         ( 0.045453s |  0.00% |  0.27% )   ( 0.045297s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.033703s |  0.00% |  0.20% )   ( 0.033600s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.038848s |  0.00% |  0.23% )   ( 0.038697s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041031s |  0.00% |  0.24% )   ( 0.040877s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.044135s |  0.00% |  0.26% )   ( 0.043986s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.007074s |  0.00% |  0.00% )   ( 0.004569s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003412s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004257s |  0.00% |  0.00% )   ( 0.004752s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p20
41.5.0:         ( 0.323580s |  0.03% |  0.08% )   ( 0.005650s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004073s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003429s |  0.00% |  0.00% )   ( 0.003883s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003439s |  0.00% |  0.00% )   ( 0.003892s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028789s |  0.00% |  0.00% )   ( 0.029162s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003311s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003789s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004032s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p20
66.5.0:         ( 0.003172s |  0.00% |  0.00% )   ( 0.003622s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003586s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.939374s |  1.58% |  4.37% )   ( 15.643816s |  1.69% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003269s |  0.00% |  0.02% )   ( 0.003716s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.065453s |  0.10% |  6.68% )   ( 1.058062s |  0.11% |  6.76% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.868841s |  0.18% | 11.72% )   ( 1.858949s |  0.20% | 11.88% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.588117s |  0.15% |  9.96% )   ( 1.526765s |  0.16% |  9.75% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.869452s |  0.18% | 11.72% )   ( 1.835159s |  0.19% | 11.73% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.436311s |  0.14% |  9.01% )   ( 1.420987s |  0.15% |  9.08% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.999799s |  0.09% |  6.27% )   ( 0.955263s |  0.10% |  6.10% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.486563s |  0.04% |  3.05% )   ( 0.457873s |  0.04% |  2.92% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.994770s |  0.09% |  6.24% )   ( 0.989666s |  0.10% |  6.32% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.408364s |  0.04% |  2.56% )   ( 0.407452s |  0.04% |  2.60% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.328118s |  0.13% |  8.33% )   ( 1.296285s |  0.14% |  8.28% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.964595s |  0.29% | 18.59% )   ( 2.938396s |  0.31% | 18.78% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.467854s |  0.04% |  2.93% )   ( 0.460083s |  0.04% |  2.94% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.457868s |  0.04% |  2.87% )   ( 0.435160s |  0.04% |  2.78% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003375s |  0.00% |  0.00% )   ( 0.003838s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003278s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003446s |  0.00% |  0.00% )   ( 0.003878s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008675s |  0.00% |  0.05% )   ( 0.008756s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 16.058621s |  1.59% |  3.18% )   ( 15.208093s |  1.65% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001050s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 16.057406s |  1.59% | 99.99% )   ( 15.206837s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p21
30.5.0:         ( 0.034009s |  0.00% |  0.21% )   ( 0.033876s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037502s |  0.00% |  0.23% )   ( 0.037375s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041025s |  0.00% |  0.25% )   ( 0.040879s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041060s |  0.00% |  0.25% )   ( 0.040925s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.041001s |  0.00% |  0.25% )   ( 0.040859s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005090s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004098s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004968s |  0.00% |  0.00% )   ( 0.005559s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p21
41.5.0:         ( 0.394155s |  0.03% |  0.08% )   ( 0.006563s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004402s |  0.00% |  0.00% )   ( 0.004985s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004182s |  0.00% |  0.00% )   ( 0.004744s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003705s |  0.00% |  0.00% )   ( 0.004244s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004099s |  0.00% |  0.00% )   ( 0.004643s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035521s |  0.00% |  0.00% )   ( 0.032991s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003795s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.008220s |  0.00% |  0.00% )   ( 0.004599s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004578s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p21
66.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.353069s |  1.52% |  3.54% )   ( 14.888493s |  1.61% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003987s |  0.00% |  0.02% )   ( 0.004537s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.030709s |  0.10% |  6.71% )   ( 1.013670s |  0.11% |  6.80% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.740903s |  0.17% | 11.33% )   ( 1.667342s |  0.18% | 11.19% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.473124s |  0.14% |  9.59% )   ( 1.427996s |  0.15% |  9.59% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.670314s |  0.16% | 10.87% )   ( 1.654273s |  0.17% | 11.11% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.391095s |  0.13% |  9.06% )   ( 1.376130s |  0.14% |  9.24% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.936587s |  0.09% |  6.10% )   ( 0.901925s |  0.09% |  6.05% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.528877s |  0.05% |  3.44% )   ( 0.515955s |  0.05% |  3.46% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.956336s |  0.09% |  6.22% )   ( 0.934246s |  0.10% |  6.27% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497502s |  0.04% |  3.24% )   ( 0.463223s |  0.05% |  3.11% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.316199s |  0.13% |  8.57% )   ( 1.272532s |  0.13% |  8.54% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.707000s |  0.26% | 17.63% )   ( 2.615625s |  0.28% | 17.56% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.560246s |  0.05% |  3.64% )   ( 0.529286s |  0.05% |  3.55% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.540190s |  0.05% |  3.51% )   ( 0.511753s |  0.05% |  3.43% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003931s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004618s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008717s |  0.00% |  0.05% )   ( 0.008797s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 16.172460s |  1.60% |  3.20% )   ( 15.298261s |  1.66% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000927s |  0.00% |  0.00% )   ( 0.000953s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 16.171352s |  1.60% | 99.99% )   ( 15.297097s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p22
30.5.0:         ( 0.041539s |  0.00% |  0.25% )   ( 0.041380s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041877s |  0.00% |  0.25% )   ( 0.041714s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041648s |  0.00% |  0.25% )   ( 0.041487s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041845s |  0.00% |  0.25% )   ( 0.041686s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.045367s |  0.00% |  0.28% )   ( 0.045213s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004756s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004313s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005134s |  0.00% |  0.00% )   ( 0.005716s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p22
41.5.0:         ( 0.347976s |  0.03% |  0.07% )   ( 0.006853s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004493s |  0.00% |  0.00% )   ( 0.005055s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.004162s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003991s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034288s |  0.00% |  0.00% )   ( 0.034722s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004002s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006337s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004883s |  0.00% |  0.00% )   ( 0.005436s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p22
66.5.0:         ( 0.003915s |  0.00% |  0.00% )   ( 0.004448s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003748s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.497251s |  1.54% |  3.54% )   ( 14.957360s |  1.62% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003721s |  0.00% |  0.02% )   ( 0.004231s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.056344s |  0.10% |  6.81% )   ( 1.014650s |  0.11% |  6.78% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.793362s |  0.17% | 11.57% )   ( 1.685456s |  0.18% | 11.26% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.536839s |  0.15% |  9.91% )   ( 1.449406s |  0.15% |  9.69% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.700578s |  0.16% | 10.97% )   ( 1.659751s |  0.18% | 11.09% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.466092s |  0.14% |  9.46% )   ( 1.394523s |  0.15% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.951284s |  0.09% |  6.13% )   ( 0.917483s |  0.09% |  6.13% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547534s |  0.05% |  3.53% )   ( 0.524395s |  0.05% |  3.50% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.966565s |  0.09% |  6.23% )   ( 0.946478s |  0.10% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.484982s |  0.04% |  3.12% )   ( 0.470954s |  0.05% |  3.14% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.286385s |  0.12% |  8.30% )   ( 1.244002s |  0.13% |  8.31% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.643859s |  0.26% | 17.06% )   ( 2.602545s |  0.28% | 17.39% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.536567s |  0.05% |  3.46% )   ( 0.531772s |  0.05% |  3.55% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523139s |  0.05% |  3.37% )   ( 0.511714s |  0.05% |  3.42% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003586s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004466s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008515s |  0.00% |  0.05% )   ( 0.008598s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 16.327675s |  1.62% |  3.23% )   ( 15.607201s |  1.69% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001065s |  0.00% |  0.00% )   ( 0.001089s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 16.326459s |  1.62% | 99.99% )   ( 15.605938s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p23
30.5.0:         ( 0.049506s |  0.00% |  0.30% )   ( 0.043898s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041078s |  0.00% |  0.25% )   ( 0.040901s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041095s |  0.00% |  0.25% )   ( 0.040959s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041336s |  0.00% |  0.25% )   ( 0.041182s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.043036s |  0.00% |  0.26% )   ( 0.042872s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003982s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003319s |  0.00% |  0.00% )   ( 0.003796s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004210s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p23
41.5.0:         ( 0.330166s |  0.03% |  0.08% )   ( 0.005746s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003954s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003234s |  0.00% |  0.00% )   ( 0.003679s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003846s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026839s |  0.00% |  0.00% )   ( 0.027202s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003211s |  0.00% |  0.00% )   ( 0.003650s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003217s |  0.00% |  0.00% )   ( 0.003666s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003427s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003975s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p23
66.5.0:         ( 0.007380s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003085s |  0.00% |  0.00% )   ( 0.003523s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.683609s |  1.55% |  4.36% )   ( 15.289936s |  1.66% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003189s |  0.00% |  0.02% )   ( 0.003622s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.001400s |  0.09% |  6.38% )   ( 0.986465s |  0.10% |  6.45% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.837984s |  0.18% | 11.71% )   ( 1.785834s |  0.19% | 11.67% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.479692s |  0.14% |  9.43% )   ( 1.439310s |  0.15% |  9.41% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.836393s |  0.18% | 11.70% )   ( 1.787435s |  0.19% | 11.69% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.472031s |  0.14% |  9.38% )   ( 1.429643s |  0.15% |  9.35% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.930854s |  0.09% |  5.93% )   ( 0.910988s |  0.09% |  5.95% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471538s |  0.04% |  3.00% )   ( 0.459459s |  0.04% |  3.00% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.990751s |  0.09% |  6.31% )   ( 0.971623s |  0.10% |  6.35% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.419722s |  0.04% |  2.67% )   ( 0.398357s |  0.04% |  2.60% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.305603s |  0.12% |  8.32% )   ( 1.282231s |  0.13% |  8.38% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.021323s |  0.30% | 19.26% )   ( 2.947923s |  0.32% | 19.28% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.476250s |  0.04% |  3.03% )   ( 0.458074s |  0.04% |  2.99% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.436879s |  0.04% |  2.78% )   ( 0.428972s |  0.04% |  2.80% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003770s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003052s |  0.00% |  0.00% )   ( 0.003467s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003761s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008804s |  0.00% |  0.05% )   ( 0.008891s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 18.017148s |  1.79% |  3.56% )   ( 17.121939s |  1.85% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001094s |  0.00% |  0.00% )   ( 0.001118s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 18.015902s |  1.79% | 99.99% )   ( 17.120646s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p24
30.5.0:         ( 0.044129s |  0.00% |  0.24% )   ( 0.043966s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041539s |  0.00% |  0.23% )   ( 0.041390s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041089s |  0.00% |  0.22% )   ( 0.040956s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041158s |  0.00% |  0.22% )   ( 0.041030s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.041195s |  0.00% |  0.22% )   ( 0.041054s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p24
41.5.0:         ( 0.401691s |  0.03% |  0.09% )   ( 0.005912s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003583s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003245s |  0.00% |  0.00% )   ( 0.003672s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003407s |  0.00% |  0.00% )   ( 0.003862s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027805s |  0.00% |  0.00% )   ( 0.027628s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003759s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003778s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004090s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004347s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p24
66.5.0:         ( 0.003437s |  0.00% |  0.00% )   ( 0.003912s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003951s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.313544s |  1.72% |  4.17% )   ( 16.807357s |  1.82% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003441s |  0.00% |  0.01% )   ( 0.003926s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.201644s |  0.11% |  6.94% )   ( 1.164211s |  0.12% |  6.92% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.279497s |  0.22% | 13.16% )   ( 2.152362s |  0.23% | 12.80% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.795149s |  0.17% | 10.36% )   ( 1.731308s |  0.18% | 10.30% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.149294s |  0.21% | 12.41% )   ( 2.135129s |  0.23% | 12.70% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.699516s |  0.16% |  9.81% )   ( 1.666558s |  0.18% |  9.91% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.082753s |  0.10% |  6.25% )   ( 1.065776s |  0.11% |  6.34% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.498210s |  0.04% |  2.87% )   ( 0.486562s |  0.05% |  2.89% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.183682s |  0.11% |  6.83% )   ( 1.151323s |  0.12% |  6.85% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.451827s |  0.04% |  2.60% )   ( 0.437551s |  0.04% |  2.60% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.407489s |  0.13% |  8.12% )   ( 1.345227s |  0.14% |  8.00% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.607897s |  0.25% | 15.06% )   ( 2.538736s |  0.27% | 15.10% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.482790s |  0.04% |  2.78% )   ( 0.473800s |  0.05% |  2.81% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.470355s |  0.04% |  2.71% )   ( 0.454888s |  0.04% |  2.70% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003405s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003122s |  0.00% |  0.00% )   ( 0.003551s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003543s |  0.00% |  0.00% )   ( 0.003974s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004903s |  0.00% |  0.02% )   ( 0.004971s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.873722s |  1.77% |  3.54% )   ( 17.025027s |  1.84% |  3.73% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001096s |  0.00% |  0.00% )   ( 0.001115s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.872478s |  1.77% | 99.99% )   ( 17.023740s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000221s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p25
30.5.0:         ( 0.042803s |  0.00% |  0.23% )   ( 0.042564s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042925s |  0.00% |  0.24% )   ( 0.042725s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.044990s |  0.00% |  0.25% )   ( 0.044696s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.042982s |  0.00% |  0.24% )   ( 0.042836s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.044984s |  0.00% |  0.25% )   ( 0.044830s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002716s |  0.00% |  0.00% )   ( 0.003045s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002329s |  0.00% |  0.00% )   ( 0.002652s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002877s |  0.00% |  0.00% )   ( 0.003204s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p25
41.5.0:         ( 0.334846s |  0.03% |  0.11% )   ( 0.004106s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002498s |  0.00% |  0.00% )   ( 0.002823s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.002420s |  0.00% |  0.00% )   ( 0.002730s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.002198s |  0.00% |  0.00% )   ( 0.002511s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002425s |  0.00% |  0.00% )   ( 0.002726s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.018358s |  0.00% |  0.00% )   ( 0.018615s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002061s |  0.00% |  0.00% )   ( 0.002353s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002058s |  0.00% |  0.00% )   ( 0.002363s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002324s |  0.00% |  0.00% )   ( 0.002535s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002593s |  0.00% |  0.00% )   ( 0.002909s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p25
66.5.0:         ( 0.002070s |  0.00% |  0.00% )   ( 0.002369s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002078s |  0.00% |  0.00% )   ( 0.002367s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.257011s |  1.71% |  6.43% )   ( 16.734718s |  1.81% |  6.55% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002176s |  0.00% |  0.01% )   ( 0.002484s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.186523s |  0.11% |  6.87% )   ( 1.148411s |  0.12% |  6.86% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.238636s |  0.22% | 12.97% )   ( 2.165930s |  0.23% | 12.94% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.701220s |  0.16% |  9.85% )   ( 1.653569s |  0.17% |  9.88% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.191551s |  0.21% | 12.69% )   ( 2.177161s |  0.23% | 13.00% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.642873s |  0.16% |  9.52% )   ( 1.607933s |  0.17% |  9.60% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.062609s |  0.10% |  6.15% )   ( 1.014406s |  0.11% |  6.06% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.388998s |  0.03% |  2.25% )   ( 0.382469s |  0.04% |  2.28% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.110243s |  0.11% |  6.43% )   ( 1.093440s |  0.11% |  6.53% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.322749s |  0.03% |  1.87% )   ( 0.319921s |  0.03% |  1.91% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.470313s |  0.14% |  8.52% )   ( 1.413161s |  0.15% |  8.44% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.147854s |  0.31% | 18.24% )   ( 3.076594s |  0.33% | 18.38% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.405703s |  0.04% |  2.35% )   ( 0.357541s |  0.03% |  2.13% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.385563s |  0.03% |  2.23% )   ( 0.321698s |  0.03% |  1.92% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002221s |  0.00% |  0.00% )   ( 0.002521s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001961s |  0.00% |  0.00% )   ( 0.002252s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002171s |  0.00% |  0.00% )   ( 0.002446s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005087s |  0.00% |  0.02% )   ( 0.005160s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.423775s |  1.73% |  3.45% )   ( 16.787665s |  1.82% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001089s |  0.00% |  0.00% )   ( 0.001112s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.422533s |  1.73% | 99.99% )   ( 16.786378s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p26
30.5.0:         ( 0.041395s |  0.00% |  0.23% )   ( 0.041085s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041100s |  0.00% |  0.23% )   ( 0.040819s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.041367s |  0.00% |  0.23% )   ( 0.041073s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.041226s |  0.00% |  0.23% )   ( 0.040932s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.045583s |  0.00% |  0.26% )   ( 0.045427s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001894s |  0.00% |  0.00% )   ( 0.002120s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   true
38.5.0:         ( 0.001619s |  0.00% |  0.00% )   ( 0.001839s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002196s |  0.00% |  0.00% )   ( 0.002445s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p26
41.5.0:         ( 0.243126s |  0.02% |  0.10% )   ( 0.002925s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001955s |  0.00% |  0.00% )   ( 0.002197s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.001628s |  0.00% |  0.00% )   ( 0.001868s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.001665s |  0.00% |  0.00% )   ( 0.001901s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001809s |  0.00% |  0.00% )   ( 0.002052s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.013373s |  0.00% |  0.00% )   ( 0.013563s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001670s |  0.00% |  0.00% )   ( 0.001907s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001658s |  0.00% |  0.00% )   ( 0.001905s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001870s |  0.00% |  0.00% )   ( 0.002104s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002045s |  0.00% |  0.00% )   ( 0.002289s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p26
66.5.0:         ( 0.001632s |  0.00% |  0.00% )   ( 0.001859s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001504s |  0.00% |  0.00% )   ( 0.001711s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.920771s |  1.68% |  8.09% )   ( 16.521997s |  1.79% |  8.20% )    	(12x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001801s |  0.00% |  0.01% )   ( 0.002035s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.110656s |  0.11% |  6.56% )   ( 1.084547s |  0.11% |  6.56% )    	(12x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.182466s |  0.21% | 12.89% )   ( 2.136079s |  0.23% | 12.92% )    	(12x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.620455s |  0.16% |  9.57% )   ( 1.583667s |  0.17% |  9.58% )    	(12x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.136172s |  0.21% | 12.62% )   ( 2.071603s |  0.22% | 12.53% )    	(12x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.560673s |  0.15% |  9.22% )   ( 1.539041s |  0.16% |  9.31% )    	(12x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.965539s |  0.09% |  5.70% )   ( 0.962997s |  0.10% |  5.82% )    	(12x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.366782s |  0.03% |  2.16% )   ( 0.333411s |  0.03% |  2.01% )    	(12x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.118325s |  0.11% |  6.60% )   ( 1.097143s |  0.11% |  6.64% )    	(12x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.273514s |  0.02% |  1.61% )   ( 0.269290s |  0.02% |  1.62% )    	(12x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.426605s |  0.14% |  8.43% )   ( 1.333496s |  0.14% |  8.07% )    	(12x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.599141s |  0.35% | 21.27% )   ( 3.557069s |  0.38% | 21.52% )    	(12x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.295308s |  0.02% |  1.74% )   ( 0.290151s |  0.03% |  1.75% )    	(12x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.263334s |  0.02% |  1.55% )   ( 0.261468s |  0.02% |  1.58% )    	(12x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001629s |  0.00% |  0.00% )   ( 0.001851s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001565s |  0.00% |  0.00% )   ( 0.001776s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001671s |  0.00% |  0.00% )   ( 0.001880s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005148s |  0.00% |  0.02% )   ( 0.005222s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 16.248379s |  1.61% |  3.21% )   ( 15.210518s |  1.65% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001076s |  0.00% |  0.00% )   ( 0.001095s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 16.247153s |  1.61% | 99.99% )   ( 15.209251s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.X1SIUa"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p27
30.5.0:         ( 0.067217s |  0.00% |  0.41% )   ( 0.047977s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046851s |  0.00% |  0.28% )   ( 0.043507s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 660808 ${BASHPID}' INT
33.5.0:         ( 0.037498s |  0.00% |  0.23% )   ( 0.037360s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 660808 ${BASHPID}' TERM
34.5.0:         ( 0.045176s |  0.00% |  0.27% )   ( 0.045003s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 660808 ${BASHPID}' HUP
35.5.0:         ( 0.043404s |  0.00% |  0.26% )   ( 0.043249s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003768s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003303s |  0.00% |  0.00% )   ( 0.003765s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.X1SIUa"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003976s |  0.00% |  0.00% )   ( 0.004437s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p27
41.5.0:         ( 0.355623s |  0.03% |  0.09% )   ( 0.005265s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.quit ]]
46.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003940s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.done ]]
46.5.1:         ( 0.003033s |  0.00% |  0.00% )   ( 0.003474s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003305s |  0.00% |  0.00% )   ( 0.003727s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026905s |  0.00% |  0.00% )   ( 0.027275s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003448s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003095s |  0.00% |  0.00% )   ( 0.003513s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003317s |  0.00% |  0.00% )   ( 0.003743s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003838s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.X1SIUa"/.wait/p27
66.5.0:         ( 0.003214s |  0.00% |  0.00% )   ( 0.003648s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003047s |  0.00% |  0.00% )   ( 0.003465s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 15.560846s |  1.54% |  4.56% )   ( 14.888787s |  1.61% |  4.66% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002981s |  0.00% |  0.01% )   ( 0.003405s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.013992s |  0.10% |  6.51% )   ( 0.987136s |  0.10% |  6.63% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.763780s |  0.17% | 11.33% )   ( 1.715618s |  0.18% | 11.52% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.431488s |  0.14% |  9.19% )   ( 1.420039s |  0.15% |  9.53% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.790405s |  0.17% | 11.50% )   ( 1.723337s |  0.18% | 11.57% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.436431s |  0.14% |  9.23% )   ( 1.363968s |  0.14% |  9.16% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.948867s |  0.09% |  6.09% )   ( 0.900818s |  0.09% |  6.05% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.515499s |  0.05% |  3.31% )   ( 0.447275s |  0.04% |  3.00% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.068414s |  0.10% |  6.86% )   ( 0.952690s |  0.10% |  6.39% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403441s |  0.04% |  2.59% )   ( 0.388144s |  0.04% |  2.60% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.277966s |  0.12% |  8.21% )   ( 1.251331s |  0.13% |  8.40% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.964844s |  0.29% | 19.05% )   ( 2.876367s |  0.31% | 19.31% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.498636s |  0.04% |  3.20% )   ( 0.443495s |  0.04% |  2.97% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.444102s |  0.04% |  2.85% )   ( 0.415164s |  0.04% |  2.78% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003255s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002856s |  0.00% |  0.00% )   ( 0.003254s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002962s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008790s |  0.00% |  0.05% )   ( 0.008871s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.X1SIUa"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.X1SIUa"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000166s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001387s |  0.00% |  0.00% )   ( 0.001403s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 21.516015s |  2.13% |  4.26% )   ( 0.001621s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000285s |  0.00% |  0.00% )   ( 0.000325s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000285s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000210s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.005055s |  0.00% |  0.00% )   ( 0.002328s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.X1SIUa" 2>/dev/null

10.0.0:         ( 501.216888s | 49.81% )            ( 457.837312s | 49.71% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001292s |  0.00% |  0.00% )   ( 0.001067s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 501.215596s | 49.81% | 99.99% )   ( 457.836245s | 49.71% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.038278s |  0.00% |  0.00% )   ( 0.038223s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001128s |  0.00% |  0.00% )   ( 0.000977s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.004620s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
230.3.0:        ( 0.004620s |  0.00% |100.00% )   ( 0.004620s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001406s |  0.00% |  0.00% )   ( 0.001487s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.023561s |  0.00% |  0.00% )   ( 0.000943s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 501.137357s | 49.80% | 99.98% )   ( 457.782397s | 49.70% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001762s |  0.00% |  0.00% )   ( 0.002073s |  0.00% |  0.00% )    	(6x)	│  │  │   << (SUBSHELL) >>
1084.4.0:       ( 0.001762s |  0.00% |100.00% )   ( 0.002073s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000138s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000190s |  0.00% |  0.00% )   ( 0.009231s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003040s |  0.00% |  0.00% )   ( 0.003088s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000112s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000879s |  0.00% |  0.00% )   ( 0.001016s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.73% )   ( 0.000080s |  0.00% |  7.87% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000068s |  0.00% |  7.73% )   ( 0.000081s |  0.00% |  7.97% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000065s |  0.00% |  7.39% )   ( 0.000077s |  0.00% |  7.57% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000072s |  0.00% |  8.19% )   ( 0.000079s |  0.00% |  7.77% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000080s |  0.00% |  9.10% )   ( 0.000091s |  0.00% |  8.95% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000070s |  0.00% |  7.96% )   ( 0.000082s |  0.00% |  8.07% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.62% )   ( 0.000079s |  0.00% |  7.77% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000118s |  0.00% | 13.42% )   ( 0.000131s |  0.00% | 12.89% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000067s |  0.00% |  7.62% )   ( 0.000078s |  0.00% |  7.67% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000065s |  0.00% |  7.39% )   ( 0.000077s |  0.00% |  7.57% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000069s |  0.00% |  7.84% )   ( 0.000080s |  0.00% |  7.87% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000070s |  0.00% |  7.96% )   ( 0.000081s |  0.00% |  7.97% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.009325s |  0.00% |  0.00% )   ( 0.009351s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002904s |  0.00% |  0.00% )   ( 0.002961s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000387s |  0.00% | 13.32% )   ( 0.000418s |  0.00% | 14.11% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002517s |  0.00% | 86.67% )   ( 0.002543s |  0.00% | 85.88% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000171s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000107s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.003053s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003330s |  0.00% |  0.00% )   ( 0.003441s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 669626  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
411.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001074s |  0.00% |  0.00% )   ( 0.001159s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000494s |  0.00% |  0.00% )   ( 0.000512s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.122548s |  0.01% |  0.02% )   ( 0.122307s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
473.4.0:        ( 0.000083s |  0.00% |  0.06% )   ( 0.000095s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.018766s |  0.00% | 15.31% )   ( 0.018708s |  0.00% | 15.29% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.021161s |  0.00% | 17.26% )   ( 0.021117s |  0.00% | 17.26% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.021217s |  0.00% | 17.31% )   ( 0.021167s |  0.00% | 17.30% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.021200s |  0.00% | 17.29% )   ( 0.021151s |  0.00% | 17.29% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.021047s |  0.00% | 17.17% )   ( 0.021000s |  0.00% | 17.16% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000067s |  0.00% |  0.05% )   ( 0.000078s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018744s |  0.00% | 15.29% )   ( 0.018698s |  0.00% | 15.28% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000091s |  0.00% |  0.07% )   ( 0.000103s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000105s |  0.00% |  0.08% )   ( 0.000111s |  0.00% |  0.09% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000067s |  0.00% |  0.05% )   ( 0.000079s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000415s |  0.00% |  0.00% )   ( 0.000432s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 3.211286s |  0.31% |  0.64% )   ( 1.779597s |  0.19% |  0.38% )    	(1x)	│  │  │   << (SUBSHELL) >>
508.4.0:        ( 0.000318s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.02% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.021129s |  0.00% |  0.65% )   ( 0.021092s |  0.00% |  1.18% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.021178s |  0.00% |  0.65% )   ( 0.021139s |  0.00% |  1.18% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.021229s |  0.00% |  0.66% )   ( 0.021186s |  0.00% |  1.19% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.021179s |  0.00% |  0.65% )   ( 0.021139s |  0.00% |  1.18% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.020945s |  0.00% |  0.65% )   ( 0.020908s |  0.00% |  1.17% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.087163s |  0.00% |  0.00% )   ( 0.100129s |  0.01% |  0.00% )    	(670x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 1.741668s |  0.17% |  0.08% )   ( 0.115411s |  0.01% |  0.00% )    	(669x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000740s |  0.00% |  0.00% )   ( 0.000832s |  0.00% |  0.01% )    	(4x)	│  │  │  │   continue
521.4.0:        ( 0.085390s |  0.00% |  0.00% )   ( 0.098361s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.085782s |  0.00% |  0.00% )   ( 0.098706s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000166s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.085240s |  0.00% |  0.00% )   ( 0.098056s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.088854s |  0.00% |  0.00% )   ( 0.101536s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.089272s |  0.00% |  0.00% )   ( 0.102199s |  0.01% |  0.00% )    	(665x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.084724s |  0.00% |  0.00% )   ( 0.097627s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.085113s |  0.00% |  0.00% )   ( 0.097875s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.085120s |  0.00% |  0.00% )   ( 0.097945s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.006072s |  0.00% |  0.18% )   ( 0.006655s |  0.00% |  0.37% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002710s |  0.00% |  0.08% )   ( 0.003201s |  0.00% |  0.17% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002710s |  0.00% |100.00% )   ( 0.003201s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.084768s |  0.00% |  0.00% )   ( 0.097647s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.083824s |  0.00% |  0.00% )   ( 0.096774s |  0.01% |  0.00% )    	(665x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.081888s |  0.00% |  0.00% )   ( 0.094293s |  0.01% |  0.00% )    	(644x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.088458s |  0.00% |  0.00% )   ( 0.101388s |  0.01% |  0.00% )    	(665x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.085708s |  0.00% |  0.00% )   ( 0.098534s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.085204s |  0.00% |  0.00% )   ( 0.097946s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002839s |  0.00% |  0.00% )   ( 0.003252s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002714s |  0.00% |  0.00% )   ( 0.003131s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.044153s |  0.00% |  0.06% )   ( 0.042658s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003049s |  0.00% |  0.00% )   ( 0.003467s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002895s |  0.00% |  0.00% )   ( 0.003332s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.002953s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
590.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
25.4.0:         ( 0.006784s |  0.00% |  0.21% )   ( 0.006871s |  0.00% |  0.38% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/pAuto
598.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000114s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.001969s |  0.00% |  0.00% )   ( 0.001200s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005555s |  0.00% |  0.00% )   ( 0.006356s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000336s |  0.00% |  6.04% )   ( 0.000364s |  0.00% |  5.72% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000207s |  0.00% |  3.72% )   ( 0.000238s |  0.00% |  3.74% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000240s |  0.00% |  4.32% )   ( 0.000272s |  0.00% |  4.27% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000406s |  0.00% |  7.30% )   ( 0.000422s |  0.00% |  6.63% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000066s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000066s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000080s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000080s |  0.00% |  1.25% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000066s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000074s |  0.00% |  1.33% )   ( 0.000083s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000080s |  0.00% |  1.25% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000073s |  0.00% |  1.31% )   ( 0.000081s |  0.00% |  1.27% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000070s |  0.00% |  1.26% )   ( 0.000081s |  0.00% |  1.27% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000094s |  0.00% |  1.69% )   ( 0.000106s |  0.00% |  1.66% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000064s |  0.00% |  1.15% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000064s |  0.00% |  1.15% )   ( 0.000074s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.31% )   ( 0.000084s |  0.00% |  1.32% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000074s |  0.00% |  1.33% )   ( 0.000085s |  0.00% |  1.33% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000090s |  0.00% |  1.62% )   ( 0.000102s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000091s |  0.00% |  1.63% )   ( 0.000102s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.38% )   ( 0.000089s |  0.00% |  1.40% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000064s |  0.00% |  1.15% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000070s |  0.00% |  1.26% )   ( 0.000097s |  0.00% |  1.52% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000075s |  0.00% |  1.35% )   ( 0.000084s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000068s |  0.00% |  1.22% )   ( 0.000079s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000080s |  0.00% |  1.44% )   ( 0.000091s |  0.00% |  1.43% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000066s |  0.00% |  1.18% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000093s |  0.00% |  1.67% )   ( 0.000106s |  0.00% |  1.66% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000077s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000088s |  0.00% |  1.58% )   ( 0.000100s |  0.00% |  1.57% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000071s |  0.00% |  1.27% )   ( 0.000082s |  0.00% |  1.29% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000095s |  0.00% |  1.71% )   ( 0.000107s |  0.00% |  1.68% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000064s |  0.00% |  1.15% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000070s |  0.00% |  1.26% )   ( 0.000082s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000062s |  0.00% |  1.11% )   ( 0.000073s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000072s |  0.00% |  1.29% )   ( 0.000083s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000067s |  0.00% |  1.20% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000067s |  0.00% |  1.20% )   ( 0.000079s |  0.00% |  1.24% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000104s |  0.00% |  1.87% )   ( 0.000115s |  0.00% |  1.80% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000075s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000062s |  0.00% |  1.11% )   ( 0.000073s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.17% )   ( 0.000076s |  0.00% |  1.19% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000097s |  0.00% |  1.74% )   ( 0.000108s |  0.00% |  1.69% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000070s |  0.00% |  1.26% )   ( 0.000082s |  0.00% |  1.29% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.22% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000063s |  0.00% |  1.13% )   ( 0.000074s |  0.00% |  1.16% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000071s |  0.00% |  1.27% )   ( 0.000082s |  0.00% |  1.29% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.27% )   ( 0.000083s |  0.00% |  1.30% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000069s |  0.00% |  1.24% )   ( 0.000081s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000068s |  0.00% |  1.22% )   ( 0.000078s |  0.00% |  1.22% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000098s |  0.00% |  1.76% )   ( 0.000110s |  0.00% |  1.73% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000308s |  0.00% |  0.00% )   ( 0.000341s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000313s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.021586s |  0.00% |  0.00% )   ( 0.021490s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.021602s |  0.00% |  0.00% )   ( 0.021466s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.021620s |  0.00% |  0.00% )   ( 0.153415s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.021007s |  0.00% |  0.00% )   ( 0.020913s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002955s |  0.00% |  0.00% )   ( 0.003391s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002801s |  0.00% |  0.00% )   ( 0.003209s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.658321s |  1.85% |  3.72% )   ( 17.926993s |  1.94% |  3.91% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000553s |  0.00% |  0.00% )   ( 0.000566s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.657683s |  1.85% | 99.99% )   ( 17.926328s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p0
30.5.0:         ( 0.020933s |  0.00% |  0.11% )   ( 0.020898s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021161s |  0.00% |  0.11% )   ( 0.021118s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021380s |  0.00% |  0.11% )   ( 0.021342s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021408s |  0.00% |  0.11% )   ( 0.021372s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021611s |  0.00% |  0.11% )   ( 0.021571s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004754s |  0.00% |  0.00% )   ( 0.005370s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004452s |  0.00% |  0.00% )   ( 0.005040s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005285s |  0.00% |  0.00% )   ( 0.005860s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p0
41.5.0:         ( 0.186356s |  0.01% |  0.03% )   ( 0.006429s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004426s |  0.00% |  0.00% )   ( 0.004995s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004227s |  0.00% |  0.00% )   ( 0.004788s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.006514s |  0.00% |  0.00% )   ( 0.004742s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036194s |  0.00% |  0.00% )   ( 0.033663s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007110s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005392s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p0
54.5.0:         ( 0.003733s |  0.00% |  0.00% )   ( 0.004287s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.254686s |  1.81% |  3.49% )   ( 17.706131s |  1.92% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003893s |  0.00% |  0.02% )   ( 0.004450s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.308237s |  0.13% |  7.16% )   ( 1.267416s |  0.13% |  7.15% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.181382s |  0.21% | 11.94% )   ( 2.103617s |  0.22% | 11.88% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.685440s |  0.16% |  9.23% )   ( 1.660678s |  0.18% |  9.37% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.083143s |  0.20% | 11.41% )   ( 1.978217s |  0.21% | 11.17% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.635278s |  0.16% |  8.95% )   ( 1.597219s |  0.17% |  9.02% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.179695s |  0.11% |  6.46% )   ( 1.119795s |  0.12% |  6.32% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581576s |  0.05% |  3.18% )   ( 0.561950s |  0.06% |  3.17% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.176919s |  0.11% |  6.44% )   ( 1.155642s |  0.12% |  6.52% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.508006s |  0.05% |  2.78% )   ( 0.479072s |  0.05% |  2.70% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.501723s |  0.14% |  8.22% )   ( 1.462215s |  0.15% |  8.25% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.247750s |  0.32% | 17.79% )   ( 3.217286s |  0.34% | 18.17% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.588392s |  0.05% |  3.22% )   ( 0.551636s |  0.05% |  3.11% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.573252s |  0.05% |  3.14% )   ( 0.546938s |  0.05% |  3.08% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004711s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003539s |  0.00% |  0.00% )   ( 0.004040s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007344s |  0.00% |  0.00% )   ( 0.004751s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004752s |  0.00% |  0.02% )   ( 0.004825s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002763s |  0.00% |  0.00% )   ( 0.003177s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 20.610852s |  2.04% |  4.11% )   ( 20.155618s |  2.18% |  4.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000587s |  0.00% |  0.00% )   ( 0.000600s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 20.610182s |  2.04% | 99.99% )   ( 20.154921s |  2.18% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000233s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000230s |  0.00% |  0.00% )   ( 0.000259s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p1
30.5.0:         ( 0.023119s |  0.00% |  0.11% )   ( 0.023072s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021417s |  0.00% |  0.10% )   ( 0.021380s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021395s |  0.00% |  0.10% )   ( 0.021356s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021611s |  0.00% |  0.10% )   ( 0.021571s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021607s |  0.00% |  0.10% )   ( 0.021571s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002930s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002640s |  0.00% |  0.00% )   ( 0.002982s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003195s |  0.00% |  0.00% )   ( 0.003548s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p1
41.5.0:         ( 0.063265s |  0.00% |  0.01% )   ( 0.003620s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002699s |  0.00% |  0.00% )   ( 0.003050s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.002541s |  0.00% |  0.00% )   ( 0.002889s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.002421s |  0.00% |  0.00% )   ( 0.002762s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002535s |  0.00% |  0.00% )   ( 0.002878s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020172s |  0.00% |  0.00% )   ( 0.020464s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002670s |  0.00% |  0.00% )   ( 0.003014s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002964s |  0.00% |  0.00% )   ( 0.003303s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p1
54.5.0:         ( 0.002386s |  0.00% |  0.00% )   ( 0.002726s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002303s |  0.00% |  0.00% )   ( 0.002644s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 20.375049s |  2.02% |  5.49% )   ( 19.974281s |  2.16% |  5.50% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002397s |  0.00% |  0.01% )   ( 0.002748s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.420070s |  0.14% |  6.96% )   ( 1.397877s |  0.15% |  6.99% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.465874s |  0.24% | 12.10% )   ( 2.446540s |  0.26% | 12.24% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.873932s |  0.18% |  9.19% )   ( 1.845993s |  0.20% |  9.24% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.468329s |  0.24% | 12.11% )   ( 2.450274s |  0.26% | 12.26% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.864466s |  0.18% |  9.15% )   ( 1.832337s |  0.19% |  9.17% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.264162s |  0.12% |  6.20% )   ( 1.246056s |  0.13% |  6.23% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471690s |  0.04% |  2.31% )   ( 0.445527s |  0.04% |  2.23% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.435681s |  0.14% |  7.04% )   ( 1.358467s |  0.14% |  6.80% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.404842s |  0.04% |  1.98% )   ( 0.371954s |  0.04% |  1.86% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.588672s |  0.15% |  7.79% )   ( 1.563351s |  0.16% |  7.82% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.269737s |  0.42% | 20.95% )   ( 4.199102s |  0.45% | 21.02% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.429127s |  0.04% |  2.10% )   ( 0.426219s |  0.04% |  2.13% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.416070s |  0.04% |  2.04% )   ( 0.387836s |  0.04% |  1.94% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.002435s |  0.00% |  0.00% )   ( 0.002777s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002219s |  0.00% |  0.00% )   ( 0.002521s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002430s |  0.00% |  0.00% )   ( 0.002746s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004747s |  0.00% |  0.02% )   ( 0.004814s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 16.311330s |  1.62% |  3.25% )   ( 15.390944s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000647s |  0.00% |  0.00% )   ( 0.000607s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 16.310598s |  1.62% | 99.99% )   ( 15.390239s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000318s |  0.00% |  0.00% )   ( 0.000363s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p2
30.5.0:         ( 0.021280s |  0.00% |  0.13% )   ( 0.021245s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021474s |  0.00% |  0.13% )   ( 0.021449s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021504s |  0.00% |  0.13% )   ( 0.021470s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021636s |  0.00% |  0.13% )   ( 0.021598s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021578s |  0.00% |  0.13% )   ( 0.021539s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004916s |  0.00% |  0.00% )   ( 0.005522s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004260s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005123s |  0.00% |  0.00% )   ( 0.005701s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p2
41.5.0:         ( 0.205623s |  0.02% |  0.04% )   ( 0.007072s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004552s |  0.00% |  0.00% )   ( 0.005120s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.007465s |  0.00% |  0.00% )   ( 0.005074s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.004168s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004417s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033051s |  0.00% |  0.00% )   ( 0.033506s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007463s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005115s |  0.00% |  0.00% )   ( 0.005704s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p2
54.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004738s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000232s |  0.00% |  0.00% )   ( 0.000262s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 15.886888s |  1.57% |  3.35% )   ( 15.165508s |  1.64% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004094s |  0.00% |  0.02% )   ( 0.004661s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.070529s |  0.10% |  6.73% )   ( 1.019581s |  0.11% |  6.72% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.740598s |  0.17% | 10.95% )   ( 1.682636s |  0.18% | 11.09% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.496008s |  0.14% |  9.41% )   ( 1.450808s |  0.15% |  9.56% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.742877s |  0.17% | 10.97% )   ( 1.680537s |  0.18% | 11.08% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.449920s |  0.14% |  9.12% )   ( 1.421450s |  0.15% |  9.37% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.972981s |  0.09% |  6.12% )   ( 0.942595s |  0.10% |  6.21% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.557808s |  0.05% |  3.51% )   ( 0.536859s |  0.05% |  3.54% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038701s |  0.10% |  6.53% )   ( 0.955913s |  0.10% |  6.30% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549558s |  0.05% |  3.45% )   ( 0.484711s |  0.05% |  3.19% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.313553s |  0.13% |  8.26% )   ( 1.284227s |  0.13% |  8.46% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.782697s |  0.27% | 17.51% )   ( 2.621593s |  0.28% | 17.28% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.578919s |  0.05% |  3.64% )   ( 0.548065s |  0.05% |  3.61% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.588645s |  0.05% |  3.70% )   ( 0.531872s |  0.05% |  3.50% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004133s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003947s |  0.00% |  0.00% )   ( 0.004488s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.007406s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004991s |  0.00% |  0.03% )   ( 0.005097s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 16.575515s |  1.64% |  3.30% )   ( 15.759230s |  1.71% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000572s |  0.00% |  0.00% )   ( 0.000583s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 16.574857s |  1.64% | 99.99% )   ( 15.758547s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p3
30.5.0:         ( 0.021906s |  0.00% |  0.13% )   ( 0.021867s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021456s |  0.00% |  0.12% )   ( 0.021420s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021639s |  0.00% |  0.13% )   ( 0.021600s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021643s |  0.00% |  0.13% )   ( 0.021602s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021606s |  0.00% |  0.13% )   ( 0.021566s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004414s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004828s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p3
41.5.0:         ( 0.136759s |  0.01% |  0.03% )   ( 0.005075s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003762s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003557s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003286s |  0.00% |  0.00% )   ( 0.003738s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003451s |  0.00% |  0.00% )   ( 0.003902s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028356s |  0.00% |  0.00% )   ( 0.028669s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003535s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004462s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p3
54.5.0:         ( 0.006357s |  0.00% |  0.00% )   ( 0.003793s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003217s |  0.00% |  0.00% )   ( 0.003659s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.238654s |  1.61% |  4.25% )   ( 15.550243s |  1.68% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003495s |  0.00% |  0.02% )   ( 0.003963s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.092673s |  0.10% |  6.72% )   ( 1.009379s |  0.10% |  6.49% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.880817s |  0.18% | 11.58% )   ( 1.752203s |  0.19% | 11.26% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.532592s |  0.15% |  9.43% )   ( 1.478166s |  0.16% |  9.50% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.834219s |  0.18% | 11.29% )   ( 1.799888s |  0.19% | 11.57% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.486312s |  0.14% |  9.15% )   ( 1.455265s |  0.15% |  9.35% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.983183s |  0.09% |  6.05% )   ( 0.935569s |  0.10% |  6.01% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.511259s |  0.05% |  3.14% )   ( 0.488113s |  0.05% |  3.13% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.031308s |  0.10% |  6.35% )   ( 0.988623s |  0.10% |  6.35% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.451352s |  0.04% |  2.77% )   ( 0.418154s |  0.04% |  2.68% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.349892s |  0.13% |  8.31% )   ( 1.313701s |  0.14% |  8.44% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.048559s |  0.30% | 18.77% )   ( 2.972890s |  0.32% | 19.11% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.509731s |  0.05% |  3.13% )   ( 0.469014s |  0.05% |  3.01% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.523262s |  0.05% |  3.22% )   ( 0.465315s |  0.05% |  2.99% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003524s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003083s |  0.00% |  0.00% )   ( 0.003526s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003745s |  0.00% |  0.00% )   ( 0.004193s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008542s |  0.00% |  0.05% )   ( 0.008612s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 16.952038s |  1.68% |  3.38% )   ( 15.950529s |  1.73% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000585s |  0.00% |  0.00% )   ( 0.000599s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 16.951365s |  1.68% | 99.99% )   ( 15.949827s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000384s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p4
30.5.0:         ( 0.021461s |  0.00% |  0.12% )   ( 0.021423s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021644s |  0.00% |  0.12% )   ( 0.021606s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021606s |  0.00% |  0.12% )   ( 0.021568s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021636s |  0.00% |  0.12% )   ( 0.021592s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021576s |  0.00% |  0.12% )   ( 0.021541s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004615s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004252s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005065s |  0.00% |  0.00% )   ( 0.005634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p4
41.5.0:         ( 0.141071s |  0.01% |  0.02% )   ( 0.006188s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004535s |  0.00% |  0.00% )   ( 0.005119s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004266s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003986s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034935s |  0.00% |  0.00% )   ( 0.032393s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007238s |  0.00% |  0.00% )   ( 0.004881s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005356s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p4
54.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003732s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.598773s |  1.64% |  3.62% )   ( 15.729900s |  1.70% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003884s |  0.00% |  0.02% )   ( 0.004437s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.132433s |  0.11% |  6.82% )   ( 1.068320s |  0.11% |  6.79% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.866440s |  0.18% | 11.24% )   ( 1.798711s |  0.19% | 11.43% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.573058s |  0.15% |  9.47% )   ( 1.526050s |  0.16% |  9.70% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.839649s |  0.18% | 11.08% )   ( 1.737805s |  0.18% | 11.04% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.489112s |  0.14% |  8.97% )   ( 1.434418s |  0.15% |  9.11% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.067568s |  0.10% |  6.43% )   ( 0.976028s |  0.10% |  6.20% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.570682s |  0.05% |  3.43% )   ( 0.546619s |  0.05% |  3.47% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.100452s |  0.10% |  6.62% )   ( 1.009162s |  0.10% |  6.41% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.513872s |  0.05% |  3.09% )   ( 0.470304s |  0.05% |  2.98% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.423358s |  0.14% |  8.57% )   ( 1.313170s |  0.14% |  8.34% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.902988s |  0.28% | 17.48% )   ( 2.796579s |  0.30% | 17.77% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.562288s |  0.05% |  3.38% )   ( 0.527045s |  0.05% |  3.35% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.552989s |  0.05% |  3.33% )   ( 0.521252s |  0.05% |  3.31% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004043s |  0.00% |  0.00% )   ( 0.004584s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003708s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005300s |  0.00% |  0.03% )   ( 0.005370s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.807281s |  1.76% |  3.55% )   ( 17.339095s |  1.88% |  3.78% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000574s |  0.00% |  0.00% )   ( 0.000592s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.806620s |  1.76% | 99.99% )   ( 17.338401s |  1.88% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p5
30.5.0:         ( 0.021689s |  0.00% |  0.12% )   ( 0.021650s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021876s |  0.00% |  0.12% )   ( 0.021830s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021799s |  0.00% |  0.12% )   ( 0.021755s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021758s |  0.00% |  0.12% )   ( 0.021715s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021717s |  0.00% |  0.12% )   ( 0.021677s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003659s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003126s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p5
41.5.0:         ( 0.104952s |  0.01% |  0.02% )   ( 0.004735s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003408s |  0.00% |  0.00% )   ( 0.003868s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003119s |  0.00% |  0.00% )   ( 0.003539s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003186s |  0.00% |  0.00% )   ( 0.003645s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003184s |  0.00% |  0.00% )   ( 0.003624s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025654s |  0.00% |  0.00% )   ( 0.026026s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003907s |  0.00% |  0.00% )   ( 0.004350s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p5
54.5.0:         ( 0.003077s |  0.00% |  0.00% )   ( 0.003506s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002907s |  0.00% |  0.00% )   ( 0.003321s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.513793s |  1.74% |  4.47% )   ( 17.140372s |  1.86% |  4.49% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003180s |  0.00% |  0.01% )   ( 0.003613s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.183373s |  0.11% |  6.75% )   ( 1.165157s |  0.12% |  6.79% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.107067s |  0.20% | 12.03% )   ( 2.093579s |  0.22% | 12.21% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.748430s |  0.17% |  9.98% )   ( 1.718051s |  0.18% | 10.02% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.200313s |  0.21% | 12.56% )   ( 2.151730s |  0.23% | 12.55% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.723738s |  0.17% |  9.84% )   ( 1.661274s |  0.18% |  9.69% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.080699s |  0.10% |  6.17% )   ( 1.056405s |  0.11% |  6.16% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503648s |  0.05% |  2.87% )   ( 0.486855s |  0.05% |  2.84% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.160899s |  0.11% |  6.62% )   ( 1.149406s |  0.12% |  6.70% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.427624s |  0.04% |  2.44% )   ( 0.420494s |  0.04% |  2.45% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.518292s |  0.15% |  8.66% )   ( 1.489787s |  0.16% |  8.69% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.940145s |  0.29% | 16.78% )   ( 2.863269s |  0.31% | 16.70% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.475812s |  0.04% |  2.71% )   ( 0.449593s |  0.04% |  2.62% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.440573s |  0.04% |  2.51% )   ( 0.431159s |  0.04% |  2.51% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003180s |  0.00% |  0.00% )   ( 0.003601s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002904s |  0.00% |  0.00% )   ( 0.003291s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003253s |  0.00% |  0.00% )   ( 0.003657s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005004s |  0.00% |  0.02% )   ( 0.005073s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 16.510975s |  1.64% |  3.29% )   ( 15.357882s |  1.66% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000608s |  0.00% |  0.00% )   ( 0.000621s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 16.510268s |  1.64% | 99.99% )   ( 15.357148s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000394s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p6
30.5.0:         ( 0.021627s |  0.00% |  0.13% )   ( 0.021588s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021643s |  0.00% |  0.13% )   ( 0.021605s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021640s |  0.00% |  0.13% )   ( 0.021597s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021631s |  0.00% |  0.13% )   ( 0.021591s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021594s |  0.00% |  0.13% )   ( 0.021555s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004609s |  0.00% |  0.00% )   ( 0.005167s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004994s |  0.00% |  0.00% )   ( 0.005577s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p6
41.5.0:         ( 0.250839s |  0.02% |  0.05% )   ( 0.006394s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004476s |  0.00% |  0.00% )   ( 0.005017s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004051s |  0.00% |  0.00% )   ( 0.004590s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004628s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036882s |  0.00% |  0.00% )   ( 0.034358s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007492s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004572s |  0.00% |  0.00% )   ( 0.005123s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p6
54.5.0:         ( 0.003806s |  0.00% |  0.00% )   ( 0.004361s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.043185s |  1.59% |  3.59% )   ( 15.132646s |  1.64% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003782s |  0.00% |  0.02% )   ( 0.004312s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.073922s |  0.10% |  6.69% )   ( 1.009625s |  0.10% |  6.67% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.785936s |  0.17% | 11.13% )   ( 1.675240s |  0.18% | 11.07% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.500372s |  0.14% |  9.35% )   ( 1.457611s |  0.15% |  9.63% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.821956s |  0.18% | 11.35% )   ( 1.707473s |  0.18% | 11.28% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.522171s |  0.15% |  9.48% )   ( 1.393421s |  0.15% |  9.20% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.973031s |  0.09% |  6.06% )   ( 0.934508s |  0.10% |  6.17% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.585271s |  0.05% |  3.64% )   ( 0.532300s |  0.05% |  3.51% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.031210s |  0.10% |  6.42% )   ( 0.951197s |  0.10% |  6.28% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.483808s |  0.04% |  3.01% )   ( 0.460920s |  0.05% |  3.04% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.324595s |  0.13% |  8.25% )   ( 1.282556s |  0.13% |  8.47% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.810590s |  0.27% | 17.51% )   ( 2.689520s |  0.29% | 17.77% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.554029s |  0.05% |  3.45% )   ( 0.520075s |  0.05% |  3.43% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.572512s |  0.05% |  3.56% )   ( 0.513888s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004622s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003815s |  0.00% |  0.00% )   ( 0.004259s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.007957s |  0.00% |  0.04% )   ( 0.008034s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 15.884167s |  1.57% |  3.16% )   ( 14.875407s |  1.61% |  3.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000631s |  0.00% |  0.00% )   ( 0.000649s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 15.883449s |  1.57% | 99.99% )   ( 14.874656s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p7
30.5.0:         ( 0.021630s |  0.00% |  0.13% )   ( 0.021593s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021669s |  0.00% |  0.13% )   ( 0.021627s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021670s |  0.00% |  0.13% )   ( 0.021628s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021659s |  0.00% |  0.13% )   ( 0.021618s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021608s |  0.00% |  0.13% )   ( 0.021572s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005070s |  0.00% |  0.00% )   ( 0.005688s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004747s |  0.00% |  0.00% )   ( 0.005196s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.006789s |  0.00% |  0.00% )   ( 0.006315s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p7
41.5.0:         ( 0.201240s |  0.02% |  0.04% )   ( 0.006631s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004742s |  0.00% |  0.00% )   ( 0.005353s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004504s |  0.00% |  0.00% )   ( 0.005117s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.004275s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004531s |  0.00% |  0.00% )   ( 0.005140s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.041625s |  0.00% |  0.00% )   ( 0.038345s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004561s |  0.00% |  0.00% )   ( 0.005129s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005297s |  0.00% |  0.00% )   ( 0.005909s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p7
54.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.455517s |  1.53% |  3.24% )   ( 14.637298s |  1.58% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004420s |  0.00% |  0.02% )   ( 0.005013s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.113817s |  0.11% |  7.20% )   ( 0.994185s |  0.10% |  6.79% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.654714s |  0.16% | 10.70% )   ( 1.595597s |  0.17% | 10.90% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.447835s |  0.14% |  9.36% )   ( 1.405572s |  0.15% |  9.60% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.655234s |  0.16% | 10.70% )   ( 1.582554s |  0.17% | 10.81% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.424455s |  0.14% |  9.21% )   ( 1.361482s |  0.14% |  9.30% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.966628s |  0.09% |  6.25% )   ( 0.916962s |  0.09% |  6.26% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.603840s |  0.06% |  3.90% )   ( 0.564310s |  0.06% |  3.85% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.008470s |  0.10% |  6.52% )   ( 0.915520s |  0.09% |  6.25% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.540024s |  0.05% |  3.49% )   ( 0.509335s |  0.05% |  3.47% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.337715s |  0.13% |  8.65% )   ( 1.263611s |  0.13% |  8.63% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.465158s |  0.24% | 15.95% )   ( 2.376626s |  0.25% | 16.23% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.629104s |  0.06% |  4.07% )   ( 0.581299s |  0.06% |  3.97% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.604103s |  0.06% |  3.90% )   ( 0.565232s |  0.06% |  3.86% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005130s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004977s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004741s |  0.00% |  0.00% )   ( 0.005343s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008820s |  0.00% |  0.05% )   ( 0.008913s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 16.908088s |  1.68% |  3.37% )   ( 16.097404s |  1.74% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000646s |  0.00% |  0.00% )   ( 0.000658s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 16.907354s |  1.68% | 99.99% )   ( 16.096643s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000241s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000218s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p8
30.5.0:         ( 0.023915s |  0.00% |  0.14% )   ( 0.023865s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021626s |  0.00% |  0.12% )   ( 0.021584s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021689s |  0.00% |  0.12% )   ( 0.021646s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021679s |  0.00% |  0.12% )   ( 0.021639s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021603s |  0.00% |  0.12% )   ( 0.021561s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004027s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003553s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004290s |  0.00% |  0.00% )   ( 0.004779s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p8
41.5.0:         ( 0.229409s |  0.02% |  0.05% )   ( 0.005575s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003511s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003311s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.002965s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003166s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027005s |  0.00% |  0.00% )   ( 0.026351s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003870s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004255s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p8
54.5.0:         ( 0.003026s |  0.00% |  0.00% )   ( 0.003442s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003017s |  0.00% |  0.00% )   ( 0.003436s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.487167s |  1.63% |  4.43% )   ( 15.895157s |  1.72% |  4.48% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003099s |  0.00% |  0.01% )   ( 0.003534s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.065649s |  0.10% |  6.46% )   ( 1.049215s |  0.11% |  6.60% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.899877s |  0.18% | 11.52% )   ( 1.864174s |  0.20% | 11.72% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.605497s |  0.15% |  9.73% )   ( 1.534403s |  0.16% |  9.65% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.926933s |  0.19% | 11.68% )   ( 1.859132s |  0.20% | 11.69% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.509203s |  0.15% |  9.15% )   ( 1.478743s |  0.16% |  9.30% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.011634s |  0.10% |  6.13% )   ( 0.959928s |  0.10% |  6.03% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.498940s |  0.04% |  3.02% )   ( 0.471862s |  0.05% |  2.96% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.052089s |  0.10% |  6.38% )   ( 1.020585s |  0.11% |  6.42% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.429587s |  0.04% |  2.60% )   ( 0.409375s |  0.04% |  2.57% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.395175s |  0.13% |  8.46% )   ( 1.328953s |  0.14% |  8.36% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.173770s |  0.31% | 19.24% )   ( 3.026537s |  0.32% | 19.04% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.468374s |  0.04% |  2.84% )   ( 0.454065s |  0.04% |  2.85% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.447340s |  0.04% |  2.71% )   ( 0.434651s |  0.04% |  2.73% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003304s |  0.00% |  0.00% )   ( 0.003734s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002972s |  0.00% |  0.00% )   ( 0.003382s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003378s |  0.00% |  0.00% )   ( 0.003802s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005089s |  0.00% |  0.03% )   ( 0.005160s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 16.527639s |  1.64% |  3.29% )   ( 15.935494s |  1.73% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000657s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 16.526889s |  1.64% | 99.99% )   ( 15.934723s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000344s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p9
30.5.0:         ( 0.021728s |  0.00% |  0.13% )   ( 0.021685s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021674s |  0.00% |  0.13% )   ( 0.021633s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021896s |  0.00% |  0.13% )   ( 0.021851s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021756s |  0.00% |  0.13% )   ( 0.021716s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021955s |  0.00% |  0.13% )   ( 0.021912s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004930s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003780s |  0.00% |  0.00% )   ( 0.004281s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005191s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p9
41.5.0:         ( 0.150763s |  0.01% |  0.03% )   ( 0.006062s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004259s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003594s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003846s |  0.00% |  0.00% )   ( 0.004334s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031850s |  0.00% |  0.00% )   ( 0.031269s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004528s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004496s |  0.00% |  0.00% )   ( 0.005009s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p9
54.5.0:         ( 0.003523s |  0.00% |  0.00% )   ( 0.004030s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003585s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.170643s |  1.60% |  3.91% )   ( 15.716647s |  1.70% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003559s |  0.00% |  0.02% )   ( 0.004054s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.055457s |  0.10% |  6.52% )   ( 1.026675s |  0.11% |  6.53% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.876209s |  0.18% | 11.60% )   ( 1.814726s |  0.19% | 11.54% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.550904s |  0.15% |  9.59% )   ( 1.505822s |  0.16% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.845165s |  0.18% | 11.41% )   ( 1.797751s |  0.19% | 11.43% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.526471s |  0.15% |  9.43% )   ( 1.460761s |  0.15% |  9.29% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.969671s |  0.09% |  5.99% )   ( 0.957213s |  0.10% |  6.09% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.507374s |  0.05% |  3.13% )   ( 0.500701s |  0.05% |  3.18% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.018615s |  0.10% |  6.29% )   ( 1.005154s |  0.10% |  6.39% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.442550s |  0.04% |  2.73% )   ( 0.433985s |  0.04% |  2.76% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.379195s |  0.13% |  8.52% )   ( 1.323684s |  0.14% |  8.42% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.964910s |  0.29% | 18.33% )   ( 2.896597s |  0.31% | 18.43% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.508346s |  0.05% |  3.14% )   ( 0.504399s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.522217s |  0.05% |  3.22% )   ( 0.485125s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003693s |  0.00% |  0.00% )   ( 0.004205s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004076s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004438s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008291s |  0.00% |  0.05% )   ( 0.008389s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.652968s |  1.75% |  3.52% )   ( 16.875344s |  1.83% |  3.68% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000651s |  0.00% |  0.00% )   ( 0.000667s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.652232s |  1.75% | 99.99% )   ( 16.874577s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p10
30.5.0:         ( 0.021948s |  0.00% |  0.12% )   ( 0.021892s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021673s |  0.00% |  0.12% )   ( 0.021628s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021700s |  0.00% |  0.12% )   ( 0.021656s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021824s |  0.00% |  0.12% )   ( 0.021775s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021821s |  0.00% |  0.12% )   ( 0.021773s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004458s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003675s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004164s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p10
41.5.0:         ( 0.260611s |  0.02% |  0.06% )   ( 0.005626s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003686s |  0.00% |  0.00% )   ( 0.004188s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003135s |  0.00% |  0.00% )   ( 0.003569s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003813s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028703s |  0.00% |  0.00% )   ( 0.029092s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008937s |  0.00% |  0.00% )   ( 0.004130s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004488s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p10
54.5.0:         ( 0.003209s |  0.00% |  0.00% )   ( 0.003683s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003163s |  0.00% |  0.00% )   ( 0.003610s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.189755s |  1.70% |  4.23% )   ( 16.665498s |  1.80% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003366s |  0.00% |  0.01% )   ( 0.003815s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.169075s |  0.11% |  6.80% )   ( 1.153966s |  0.12% |  6.92% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.069410s |  0.20% | 12.03% )   ( 2.041707s |  0.22% | 12.25% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.695356s |  0.16% |  9.86% )   ( 1.634633s |  0.17% |  9.80% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.097508s |  0.20% | 12.20% )   ( 2.060773s |  0.22% | 12.36% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.641630s |  0.16% |  9.55% )   ( 1.553821s |  0.16% |  9.32% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.086468s |  0.10% |  6.32% )   ( 1.023606s |  0.11% |  6.14% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.511519s |  0.05% |  2.97% )   ( 0.483621s |  0.05% |  2.90% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.067487s |  0.10% |  6.21% )   ( 1.040879s |  0.11% |  6.24% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.425175s |  0.04% |  2.47% )   ( 0.414977s |  0.04% |  2.49% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.351785s |  0.13% |  7.86% )   ( 1.302992s |  0.14% |  7.81% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.055637s |  0.30% | 17.77% )   ( 3.025931s |  0.32% | 18.15% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.514803s |  0.05% |  2.99% )   ( 0.470469s |  0.05% |  2.82% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.500536s |  0.04% |  2.91% )   ( 0.454308s |  0.04% |  2.72% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003900s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003202s |  0.00% |  0.00% )   ( 0.003636s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003529s |  0.00% |  0.00% )   ( 0.003982s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.007983s |  0.00% |  0.04% )   ( 0.008065s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.858389s |  1.77% |  3.56% )   ( 17.502066s |  1.90% |  3.82% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000660s |  0.00% |  0.00% )   ( 0.000674s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.857640s |  1.77% | 99.99% )   ( 17.501288s |  1.90% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p11
30.5.0:         ( 0.021856s |  0.00% |  0.12% )   ( 0.021760s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.021745s |  0.00% |  0.12% )   ( 0.021684s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.021697s |  0.00% |  0.12% )   ( 0.021647s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021702s |  0.00% |  0.12% )   ( 0.021657s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021690s |  0.00% |  0.12% )   ( 0.021643s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002331s |  0.00% |  0.00% )   ( 0.002645s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
38.5.0:         ( 0.002151s |  0.00% |  0.00% )   ( 0.002427s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002570s |  0.00% |  0.00% )   ( 0.002870s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p11
41.5.0:         ( 0.132216s |  0.01% |  0.04% )   ( 0.003517s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002393s |  0.00% |  0.00% )   ( 0.002704s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.002128s |  0.00% |  0.00% )   ( 0.002420s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.002089s |  0.00% |  0.00% )   ( 0.002374s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002175s |  0.00% |  0.00% )   ( 0.002476s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020656s |  0.00% |  0.00% )   ( 0.017908s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002196s |  0.00% |  0.00% )   ( 0.002482s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002497s |  0.00% |  0.00% )   ( 0.002790s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p11
54.5.0:         ( 0.002038s |  0.00% |  0.00% )   ( 0.002303s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001943s |  0.00% |  0.00% )   ( 0.002226s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.559839s |  1.74% |  7.02% )   ( 17.331058s |  1.88% |  7.07% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001879s |  0.00% |  0.01% )   ( 0.002144s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.171882s |  0.11% |  6.67% )   ( 1.134285s |  0.12% |  6.54% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.183942s |  0.21% | 12.43% )   ( 2.158772s |  0.23% | 12.45% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.719510s |  0.17% |  9.79% )   ( 1.692244s |  0.18% |  9.76% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.245588s |  0.22% | 12.78% )   ( 2.236260s |  0.24% | 12.90% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.708068s |  0.16% |  9.72% )   ( 1.677672s |  0.18% |  9.68% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013472s |  0.10% |  5.77% )   ( 1.007131s |  0.10% |  5.81% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.393929s |  0.03% |  2.24% )   ( 0.374003s |  0.04% |  2.15% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.092915s |  0.10% |  6.22% )   ( 1.091146s |  0.11% |  6.29% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.305107s |  0.03% |  1.73% )   ( 0.302741s |  0.03% |  1.74% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.384935s |  0.13% |  7.88% )   ( 1.346450s |  0.14% |  7.76% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.657213s |  0.36% | 20.82% )   ( 3.631424s |  0.39% | 20.95% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.356917s |  0.03% |  2.03% )   ( 0.352811s |  0.03% |  2.03% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.324482s |  0.03% |  1.84% )   ( 0.323975s |  0.03% |  1.86% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001973s |  0.00% |  0.00% )   ( 0.002251s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001825s |  0.00% |  0.00% )   ( 0.002076s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002100s |  0.00% |  0.00% )   ( 0.002361s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005053s |  0.00% |  0.02% )   ( 0.005116s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 16.250862s |  1.61% |  3.24% )   ( 15.399117s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000830s |  0.00% |  0.00% )   ( 0.000852s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 16.249849s |  1.61% | 99.99% )   ( 15.398062s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p12
30.5.0:         ( 0.041644s |  0.00% |  0.25% )   ( 0.041505s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041814s |  0.00% |  0.25% )   ( 0.041668s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041469s |  0.00% |  0.25% )   ( 0.041323s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041763s |  0.00% |  0.25% )   ( 0.041587s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.041486s |  0.00% |  0.25% )   ( 0.041330s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005403s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004319s |  0.00% |  0.00% )   ( 0.004893s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004908s |  0.00% |  0.00% )   ( 0.005477s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p12
41.5.0:         ( 0.140048s |  0.01% |  0.03% )   ( 0.006355s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004536s |  0.00% |  0.00% )   ( 0.005120s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004450s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004094s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038794s |  0.00% |  0.00% )   ( 0.033173s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006042s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005025s |  0.00% |  0.00% )   ( 0.005594s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p12
54.5.0:         ( 0.003916s |  0.00% |  0.00% )   ( 0.004385s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003897s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.794952s |  1.56% |  3.60% )   ( 15.077586s |  1.63% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003850s |  0.00% |  0.02% )   ( 0.004403s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.049737s |  0.10% |  6.64% )   ( 1.000099s |  0.10% |  6.63% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.822140s |  0.18% | 11.53% )   ( 1.652645s |  0.17% | 10.96% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.518460s |  0.15% |  9.61% )   ( 1.427384s |  0.15% |  9.46% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.686410s |  0.16% | 10.67% )   ( 1.667648s |  0.18% | 11.06% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.409646s |  0.14% |  8.92% )   ( 1.395465s |  0.15% |  9.25% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.976446s |  0.09% |  6.18% )   ( 0.941974s |  0.10% |  6.24% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.593381s |  0.05% |  3.75% )   ( 0.545655s |  0.05% |  3.61% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.031362s |  0.10% |  6.52% )   ( 0.958019s |  0.10% |  6.35% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.522487s |  0.05% |  3.30% )   ( 0.470294s |  0.05% |  3.11% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.362902s |  0.13% |  8.62% )   ( 1.293345s |  0.14% |  8.57% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.724864s |  0.27% | 17.25% )   ( 2.656289s |  0.28% | 17.61% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.542259s |  0.05% |  3.43% )   ( 0.536651s |  0.05% |  3.55% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.551008s |  0.05% |  3.48% )   ( 0.527715s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003628s |  0.00% |  0.00% )   ( 0.004147s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004480s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004875s |  0.00% |  0.03% )   ( 0.004946s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000183s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.286472s |  1.71% |  3.44% )   ( 16.802321s |  1.82% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000982s |  0.00% |  0.00% )   ( 0.001002s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.285345s |  1.71% | 99.99% )   ( 16.801152s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p13
30.5.0:         ( 0.030321s |  0.00% |  0.17% )   ( 0.030233s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023005s |  0.00% |  0.13% )   ( 0.022963s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.027523s |  0.00% |  0.15% )   ( 0.027463s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.031332s |  0.00% |  0.18% )   ( 0.031249s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.021766s |  0.00% |  0.12% )   ( 0.021717s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003282s |  0.00% |  0.00% )   ( 0.003722s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003936s |  0.00% |  0.00% )   ( 0.004392s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p13
41.5.0:         ( 0.128753s |  0.01% |  0.03% )   ( 0.004739s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003353s |  0.00% |  0.00% )   ( 0.003786s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003110s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003044s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003107s |  0.00% |  0.00% )   ( 0.003522s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025075s |  0.00% |  0.00% )   ( 0.025331s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003393s |  0.00% |  0.00% )   ( 0.003816s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p13
54.5.0:         ( 0.002982s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002990s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.941566s |  1.68% |  4.66% )   ( 16.575994s |  1.79% |  4.69% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003199s |  0.00% |  0.01% )   ( 0.003653s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.125607s |  0.11% |  6.64% )   ( 1.104885s |  0.11% |  6.66% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.042372s |  0.20% | 12.05% )   ( 2.024304s |  0.21% | 12.21% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629335s |  0.16% |  9.61% )   ( 1.598931s |  0.17% |  9.64% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.013196s |  0.20% | 11.88% )   ( 1.984302s |  0.21% | 11.97% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.548050s |  0.15% |  9.13% )   ( 1.516253s |  0.16% |  9.14% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.991060s |  0.09% |  5.84% )   ( 0.983051s |  0.10% |  5.93% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.456735s |  0.04% |  2.69% )   ( 0.443276s |  0.04% |  2.67% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101723s |  0.10% |  6.50% )   ( 1.059795s |  0.11% |  6.39% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.400974s |  0.03% |  2.36% )   ( 0.388171s |  0.04% |  2.34% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.426890s |  0.14% |  8.42% )   ( 1.363604s |  0.14% |  8.22% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.321566s |  0.33% | 19.60% )   ( 3.249040s |  0.35% | 19.60% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.444044s |  0.04% |  2.62% )   ( 0.439437s |  0.04% |  2.65% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.436815s |  0.04% |  2.57% )   ( 0.417292s |  0.04% |  2.51% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003124s |  0.00% |  0.00% )   ( 0.003540s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002947s |  0.00% |  0.00% )   ( 0.003372s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.003890s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008084s |  0.00% |  0.04% )   ( 0.008166s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 16.604787s |  1.65% |  3.31% )   ( 16.101113s |  1.74% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.001033s |  0.00% |  0.00% )   ( 0.001051s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 16.603604s |  1.65% | 99.99% )   ( 16.099890s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000171s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p14
30.5.0:         ( 0.029600s |  0.00% |  0.17% )   ( 0.029473s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026402s |  0.00% |  0.15% )   ( 0.026322s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.026914s |  0.00% |  0.16% )   ( 0.026828s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.021770s |  0.00% |  0.13% )   ( 0.021713s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.034235s |  0.00% |  0.20% )   ( 0.034110s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003801s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004025s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p14
41.5.0:         ( 0.146516s |  0.01% |  0.03% )   ( 0.005383s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003395s |  0.00% |  0.00% )   ( 0.003840s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003029s |  0.00% |  0.00% )   ( 0.003452s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003383s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028361s |  0.00% |  0.00% )   ( 0.026714s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003452s |  0.00% |  0.00% )   ( 0.003888s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004149s |  0.00% |  0.00% )   ( 0.004618s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p14
54.5.0:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003820s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003186s |  0.00% |  0.00% )   ( 0.003621s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.231949s |  1.61% |  4.44% )   ( 15.864995s |  1.72% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003215s |  0.00% |  0.01% )   ( 0.003666s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.055721s |  0.10% |  6.50% )   ( 1.054024s |  0.11% |  6.64% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.895756s |  0.18% | 11.67% )   ( 1.882932s |  0.20% | 11.86% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.535722s |  0.15% |  9.46% )   ( 1.520957s |  0.16% |  9.58% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.884860s |  0.18% | 11.61% )   ( 1.858526s |  0.20% | 11.71% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.485222s |  0.14% |  9.14% )   ( 1.474033s |  0.16% |  9.29% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.953719s |  0.09% |  5.87% )   ( 0.933577s |  0.10% |  5.88% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.466606s |  0.04% |  2.87% )   ( 0.453922s |  0.04% |  2.86% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.086126s |  0.10% |  6.69% )   ( 1.007038s |  0.10% |  6.34% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.425589s |  0.04% |  2.62% )   ( 0.405029s |  0.04% |  2.55% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.383335s |  0.13% |  8.52% )   ( 1.318661s |  0.14% |  8.31% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.085846s |  0.30% | 19.01% )   ( 3.039431s |  0.33% | 19.15% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.501229s |  0.04% |  3.08% )   ( 0.472078s |  0.05% |  2.97% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.469003s |  0.04% |  2.88% )   ( 0.441121s |  0.04% |  2.78% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003139s |  0.00% |  0.00% )   ( 0.003576s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003107s |  0.00% |  0.00% )   ( 0.003537s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003791s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008357s |  0.00% |  0.05% )   ( 0.008444s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 16.243898s |  1.61% |  3.24% )   ( 15.385266s |  1.67% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000986s |  0.00% |  0.00% )   ( 0.001006s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 16.242763s |  1.61% | 99.99% )   ( 15.384088s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p15
30.5.0:         ( 0.031129s |  0.00% |  0.19% )   ( 0.031036s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024464s |  0.00% |  0.15% )   ( 0.024393s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.024380s |  0.00% |  0.15% )   ( 0.024307s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.024503s |  0.00% |  0.15% )   ( 0.024429s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.025706s |  0.00% |  0.15% )   ( 0.025634s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.004950s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p15
41.5.0:         ( 0.160179s |  0.01% |  0.03% )   ( 0.005438s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003971s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003642s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003781s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003570s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033487s |  0.00% |  0.00% )   ( 0.027908s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009101s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004214s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p15
54.5.0:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003894s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003175s |  0.00% |  0.00% )   ( 0.003640s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.852299s |  1.57% |  4.06% )   ( 15.152531s |  1.64% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003511s |  0.00% |  0.02% )   ( 0.004015s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.056315s |  0.10% |  6.66% )   ( 1.013082s |  0.11% |  6.68% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.812888s |  0.18% | 11.43% )   ( 1.725608s |  0.18% | 11.38% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.464799s |  0.14% |  9.24% )   ( 1.452646s |  0.15% |  9.58% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.744667s |  0.17% | 11.00% )   ( 1.714790s |  0.18% | 11.31% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.479942s |  0.14% |  9.33% )   ( 1.401424s |  0.15% |  9.24% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.942529s |  0.09% |  5.94% )   ( 0.913985s |  0.09% |  6.03% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.494516s |  0.04% |  3.11% )   ( 0.479837s |  0.05% |  3.16% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.096567s |  0.10% |  6.91% )   ( 0.971591s |  0.10% |  6.41% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.451867s |  0.04% |  2.85% )   ( 0.420255s |  0.04% |  2.77% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.359122s |  0.13% |  8.57% )   ( 1.272363s |  0.13% |  8.39% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.981619s |  0.29% | 18.80% )   ( 2.853233s |  0.30% | 18.83% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.487080s |  0.04% |  3.07% )   ( 0.474583s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.476877s |  0.04% |  3.00% )   ( 0.455119s |  0.04% |  3.00% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003491s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003206s |  0.00% |  0.00% )   ( 0.003635s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003530s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008486s |  0.00% |  0.05% )   ( 0.008560s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 16.012733s |  1.59% |  3.19% )   ( 15.369288s |  1.66% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000982s |  0.00% |  0.00% )   ( 0.001001s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 16.011588s |  1.59% | 99.99% )   ( 15.368108s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p16
30.5.0:         ( 0.036170s |  0.00% |  0.22% )   ( 0.036059s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042046s |  0.00% |  0.26% )   ( 0.041910s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.037449s |  0.00% |  0.23% )   ( 0.037335s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.040310s |  0.00% |  0.25% )   ( 0.040188s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.041800s |  0.00% |  0.26% )   ( 0.041656s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004757s |  0.00% |  0.00% )   ( 0.005347s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004338s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005326s |  0.00% |  0.00% )   ( 0.005927s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p16
41.5.0:         ( 0.150005s |  0.01% |  0.03% )   ( 0.006317s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004644s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036354s |  0.00% |  0.00% )   ( 0.033799s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007460s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004994s |  0.00% |  0.00% )   ( 0.005578s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p16
54.5.0:         ( 0.007080s |  0.00% |  0.00% )   ( 0.004639s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.550540s |  1.54% |  3.46% )   ( 15.051795s |  1.63% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004067s |  0.00% |  0.02% )   ( 0.004617s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.034369s |  0.10% |  6.65% )   ( 1.000620s |  0.10% |  6.64% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.710258s |  0.16% | 10.99% )   ( 1.678726s |  0.18% | 11.15% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.558821s |  0.15% | 10.02% )   ( 1.460389s |  0.15% |  9.70% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.706710s |  0.16% | 10.97% )   ( 1.654349s |  0.17% | 10.99% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.404020s |  0.13% |  9.02% )   ( 1.381868s |  0.15% |  9.18% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.950387s |  0.09% |  6.11% )   ( 0.926746s |  0.10% |  6.15% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.572910s |  0.05% |  3.68% )   ( 0.544244s |  0.05% |  3.61% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.022983s |  0.10% |  6.57% )   ( 0.958199s |  0.10% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.523281s |  0.05% |  3.36% )   ( 0.495207s |  0.05% |  3.29% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.341508s |  0.13% |  8.62% )   ( 1.285591s |  0.13% |  8.54% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.601831s |  0.25% | 16.73% )   ( 2.579117s |  0.28% | 17.13% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.567899s |  0.05% |  3.65% )   ( 0.550351s |  0.05% |  3.65% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.551496s |  0.05% |  3.54% )   ( 0.531771s |  0.05% |  3.53% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004348s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008717s |  0.00% |  0.05% )   ( 0.008792s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 16.126582s |  1.60% |  3.21% )   ( 15.323793s |  1.66% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001007s |  0.00% |  0.00% )   ( 0.001025s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 16.125418s |  1.60% | 99.99% )   ( 15.322587s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p17
30.5.0:         ( 0.042119s |  0.00% |  0.26% )   ( 0.041959s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.036005s |  0.00% |  0.22% )   ( 0.035880s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.043751s |  0.00% |  0.27% )   ( 0.042722s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.029829s |  0.00% |  0.18% )   ( 0.029726s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.039875s |  0.00% |  0.24% )   ( 0.039732s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004871s |  0.00% |  0.00% )   ( 0.005456s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p17
41.5.0:         ( 0.195490s |  0.01% |  0.04% )   ( 0.006216s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005164s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004071s |  0.00% |  0.00% )   ( 0.004626s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003878s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004111s |  0.00% |  0.00% )   ( 0.004657s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.039265s |  0.00% |  0.00% )   ( 0.033696s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006721s |  0.00% |  0.00% )   ( 0.004911s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004813s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p17
54.5.0:         ( 0.007016s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.003182s |  0.00% |  0.01% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.621332s |  1.55% |  3.58% )   ( 15.015956s |  1.63% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003791s |  0.00% |  0.02% )   ( 0.004316s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.018656s |  0.10% |  6.52% )   ( 0.987618s |  0.10% |  6.57% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.751446s |  0.17% | 11.21% )   ( 1.672981s |  0.18% | 11.14% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.532773s |  0.15% |  9.81% )   ( 1.448181s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.704628s |  0.16% | 10.91% )   ( 1.693595s |  0.18% | 11.27% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.437892s |  0.14% |  9.20% )   ( 1.386562s |  0.15% |  9.23% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.974765s |  0.09% |  6.23% )   ( 0.947234s |  0.10% |  6.30% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.548408s |  0.05% |  3.51% )   ( 0.517495s |  0.05% |  3.44% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.004553s |  0.09% |  6.43% )   ( 0.949876s |  0.10% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.477582s |  0.04% |  3.05% )   ( 0.456194s |  0.04% |  3.03% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.361248s |  0.13% |  8.71% )   ( 1.260135s |  0.13% |  8.39% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.720020s |  0.27% | 17.41% )   ( 2.677155s |  0.29% | 17.82% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.566320s |  0.05% |  3.62% )   ( 0.515660s |  0.05% |  3.43% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.519250s |  0.05% |  3.32% )   ( 0.498954s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003757s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003782s |  0.00% |  0.00% )   ( 0.004310s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004553s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008385s |  0.00% |  0.05% )   ( 0.008466s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 16.518393s |  1.64% |  3.29% )   ( 15.871216s |  1.72% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001002s |  0.00% |  0.00% )   ( 0.001022s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 16.517239s |  1.64% | 99.99% )   ( 15.870020s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p18
30.5.0:         ( 0.024575s |  0.00% |  0.14% )   ( 0.024468s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027267s |  0.00% |  0.16% )   ( 0.027175s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.032412s |  0.00% |  0.19% )   ( 0.032272s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.035929s |  0.00% |  0.21% )   ( 0.035791s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.033013s |  0.00% |  0.19% )   ( 0.032905s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003482s |  0.00% |  0.00% )   ( 0.003935s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003123s |  0.00% |  0.00% )   ( 0.003542s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004055s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p18
41.5.0:         ( 0.143232s |  0.01% |  0.04% )   ( 0.005085s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003353s |  0.00% |  0.00% )   ( 0.003792s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003019s |  0.00% |  0.00% )   ( 0.003435s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.002899s |  0.00% |  0.00% )   ( 0.003304s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003132s |  0.00% |  0.00% )   ( 0.003531s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025135s |  0.00% |  0.00% )   ( 0.025470s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003235s |  0.00% |  0.00% )   ( 0.003658s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003676s |  0.00% |  0.00% )   ( 0.004103s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p18
54.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.003369s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002863s |  0.00% |  0.00% )   ( 0.003255s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.138836s |  1.60% |  4.88% )   ( 15.624943s |  1.69% |  4.92% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003037s |  0.00% |  0.01% )   ( 0.003432s |  0.00% |  0.02% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.038739s |  0.10% |  6.43% )   ( 1.025866s |  0.11% |  6.56% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.899086s |  0.18% | 11.76% )   ( 1.878022s |  0.20% | 12.01% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.516268s |  0.15% |  9.39% )   ( 1.500168s |  0.16% |  9.60% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.878568s |  0.18% | 11.64% )   ( 1.851167s |  0.20% | 11.84% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.498168s |  0.14% |  9.28% )   ( 1.451067s |  0.15% |  9.28% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.955624s |  0.09% |  5.92% )   ( 0.924296s |  0.10% |  5.91% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.474918s |  0.04% |  2.94% )   ( 0.440023s |  0.04% |  2.81% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.994608s |  0.09% |  6.16% )   ( 0.977493s |  0.10% |  6.25% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403544s |  0.04% |  2.50% )   ( 0.370294s |  0.04% |  2.36% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.354465s |  0.13% |  8.39% )   ( 1.283259s |  0.13% |  8.21% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.208707s |  0.31% | 19.88% )   ( 3.079538s |  0.33% | 19.70% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.467455s |  0.04% |  2.89% )   ( 0.428221s |  0.04% |  2.74% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.445649s |  0.04% |  2.76% )   ( 0.412097s |  0.04% |  2.63% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002918s |  0.00% |  0.00% )   ( 0.003319s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002702s |  0.00% |  0.00% )   ( 0.003084s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002986s |  0.00% |  0.00% )   ( 0.003362s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000214s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.010505s |  0.00% |  0.06% )   ( 0.010589s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.089658s |  1.79% |  3.60% )   ( 17.478691s |  1.89% |  3.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001025s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.088480s |  1.79% | 99.99% )   ( 17.477470s |  1.89% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000110s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p19
30.5.0:         ( 0.033480s |  0.00% |  0.18% )   ( 0.033352s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.042690s |  0.00% |  0.23% )   ( 0.042529s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.043225s |  0.00% |  0.23% )   ( 0.043078s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.040865s |  0.00% |  0.22% )   ( 0.040734s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.034887s |  0.00% |  0.19% )   ( 0.034770s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003499s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003257s |  0.00% |  0.00% )   ( 0.003693s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004106s |  0.00% |  0.00% )   ( 0.004570s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p19
41.5.0:         ( 0.140098s |  0.01% |  0.03% )   ( 0.005140s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003600s |  0.00% |  0.00% )   ( 0.004062s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003310s |  0.00% |  0.00% )   ( 0.003772s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003060s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003385s |  0.00% |  0.00% )   ( 0.003841s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030511s |  0.00% |  0.00% )   ( 0.026869s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006523s |  0.00% |  0.00% )   ( 0.003891s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004401s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p19
54.5.0:         ( 0.006215s |  0.00% |  0.00% )   ( 0.003664s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003113s |  0.00% |  0.00% )   ( 0.003570s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.663151s |  1.75% |  4.43% )   ( 17.191007s |  1.86% |  4.47% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003252s |  0.00% |  0.01% )   ( 0.003705s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.300939s |  0.12% |  7.36% )   ( 1.236697s |  0.13% |  7.19% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.270197s |  0.22% | 12.85% )   ( 2.237179s |  0.24% | 13.01% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.829195s |  0.18% | 10.35% )   ( 1.781122s |  0.19% | 10.36% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.236979s |  0.22% | 12.66% )   ( 2.204308s |  0.23% | 12.82% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.763108s |  0.17% |  9.98% )   ( 1.725568s |  0.18% | 10.03% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.112808s |  0.11% |  6.30% )   ( 1.079257s |  0.11% |  6.27% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.481082s |  0.04% |  2.72% )   ( 0.473894s |  0.05% |  2.75% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.160200s |  0.11% |  6.56% )   ( 1.136076s |  0.12% |  6.60% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.441987s |  0.04% |  2.50% )   ( 0.411102s |  0.04% |  2.39% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.369796s |  0.13% |  7.75% )   ( 1.338838s |  0.14% |  7.78% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.683872s |  0.26% | 15.19% )   ( 2.659971s |  0.28% | 15.47% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518084s |  0.05% |  2.93% )   ( 0.460971s |  0.05% |  2.68% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.491652s |  0.04% |  2.78% )   ( 0.442319s |  0.04% |  2.57% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003276s |  0.00% |  0.00% )   ( 0.003709s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003009s |  0.00% |  0.00% )   ( 0.003427s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003284s |  0.00% |  0.00% )   ( 0.003716s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004885s |  0.00% |  0.02% )   ( 0.004958s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 16.021496s |  1.59% |  3.19% )   ( 14.895457s |  1.61% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001023s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 16.020312s |  1.59% | 99.99% )   ( 14.894239s |  1.61% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000213s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p20
30.5.0:         ( 0.040420s |  0.00% |  0.25% )   ( 0.039173s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041180s |  0.00% |  0.25% )   ( 0.041043s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041022s |  0.00% |  0.25% )   ( 0.040887s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041030s |  0.00% |  0.25% )   ( 0.040897s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.041112s |  0.00% |  0.25% )   ( 0.040979s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004863s |  0.00% |  0.00% )   ( 0.005436s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004870s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005054s |  0.00% |  0.00% )   ( 0.005639s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p20
41.5.0:         ( 0.189218s |  0.01% |  0.04% )   ( 0.006549s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004445s |  0.00% |  0.00% )   ( 0.005001s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004265s |  0.00% |  0.00% )   ( 0.004827s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004295s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004271s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034984s |  0.00% |  0.00% )   ( 0.032434s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007145s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004933s |  0.00% |  0.00% )   ( 0.005484s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p20
54.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003850s |  0.00% |  0.00% )   ( 0.004386s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.518360s |  1.54% |  3.58% )   ( 14.574434s |  1.58% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003862s |  0.00% |  0.02% )   ( 0.004376s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.050706s |  0.10% |  6.77% )   ( 0.991251s |  0.10% |  6.80% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.700841s |  0.16% | 10.96% )   ( 1.627634s |  0.17% | 11.16% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.465572s |  0.14% |  9.44% )   ( 1.405111s |  0.15% |  9.64% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.678647s |  0.16% | 10.81% )   ( 1.632118s |  0.17% | 11.19% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.451939s |  0.14% |  9.35% )   ( 1.350108s |  0.14% |  9.26% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.967062s |  0.09% |  6.23% )   ( 0.898492s |  0.09% |  6.16% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.599899s |  0.05% |  3.86% )   ( 0.514258s |  0.05% |  3.52% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.009878s |  0.10% |  6.50% )   ( 0.914947s |  0.09% |  6.27% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.531505s |  0.05% |  3.42% )   ( 0.464556s |  0.05% |  3.18% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.397188s |  0.13% |  9.00% )   ( 1.228578s |  0.13% |  8.42% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.561748s |  0.25% | 16.50% )   ( 2.513694s |  0.27% | 17.24% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.540067s |  0.05% |  3.48% )   ( 0.520413s |  0.05% |  3.57% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.559446s |  0.05% |  3.60% )   ( 0.508898s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004052s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003823s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004267s |  0.00% |  0.00% )   ( 0.004788s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008530s |  0.00% |  0.05% )   ( 0.008612s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 16.549528s |  1.64% |  3.30% )   ( 15.935408s |  1.73% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001031s |  0.00% |  0.00% )   ( 0.001051s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 16.548335s |  1.64% | 99.99% )   ( 15.934173s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p21
30.5.0:         ( 0.040659s |  0.00% |  0.24% )   ( 0.040507s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.040928s |  0.00% |  0.24% )   ( 0.040790s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041139s |  0.00% |  0.24% )   ( 0.041000s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041132s |  0.00% |  0.24% )   ( 0.041001s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.042064s |  0.00% |  0.25% )   ( 0.041933s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003175s |  0.00% |  0.00% )   ( 0.003554s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002960s |  0.00% |  0.00% )   ( 0.003362s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003765s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p21
41.5.0:         ( 0.161559s |  0.01% |  0.05% )   ( 0.004143s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003082s |  0.00% |  0.00% )   ( 0.003484s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.002679s |  0.00% |  0.00% )   ( 0.003056s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.002591s |  0.00% |  0.00% )   ( 0.002942s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002739s |  0.00% |  0.00% )   ( 0.003111s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021569s |  0.00% |  0.00% )   ( 0.021880s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002967s |  0.00% |  0.00% )   ( 0.003339s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003182s |  0.00% |  0.00% )   ( 0.003547s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p21
54.5.0:         ( 0.002540s |  0.00% |  0.00% )   ( 0.002909s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002579s |  0.00% |  0.00% )   ( 0.002911s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.109382s |  1.60% |  5.40% )   ( 15.647561s |  1.69% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002667s |  0.00% |  0.01% )   ( 0.003032s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.058640s |  0.10% |  6.57% )   ( 1.028749s |  0.11% |  6.57% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.899396s |  0.18% | 11.79% )   ( 1.877297s |  0.20% | 11.99% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.512585s |  0.15% |  9.38% )   ( 1.496835s |  0.16% |  9.56% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.919427s |  0.19% | 11.91% )   ( 1.884769s |  0.20% | 12.04% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.489597s |  0.14% |  9.24% )   ( 1.467415s |  0.15% |  9.37% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.943983s |  0.09% |  5.85% )   ( 0.930833s |  0.10% |  5.94% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.457206s |  0.04% |  2.83% )   ( 0.413040s |  0.04% |  2.63% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.062113s |  0.10% |  6.59% )   ( 1.013549s |  0.11% |  6.47% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.382472s |  0.03% |  2.37% )   ( 0.349989s |  0.03% |  2.23% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.330653s |  0.13% |  8.26% )   ( 1.280681s |  0.13% |  8.18% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.205895s |  0.31% | 19.90% )   ( 3.122323s |  0.33% | 19.95% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.434176s |  0.04% |  2.69% )   ( 0.401712s |  0.04% |  2.56% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.410572s |  0.04% |  2.54% )   ( 0.377337s |  0.04% |  2.41% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002620s |  0.00% |  0.00% )   ( 0.002982s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002419s |  0.00% |  0.00% )   ( 0.002764s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002686s |  0.00% |  0.00% )   ( 0.003035s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008764s |  0.00% |  0.05% )   ( 0.008845s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000162s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 18.103028s |  1.79% |  3.61% )   ( 16.840954s |  1.82% |  3.67% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000928s |  0.00% |  0.00% )   ( 0.000957s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 18.101923s |  1.79% | 99.99% )   ( 16.839796s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p22
30.5.0:         ( 0.041539s |  0.00% |  0.22% )   ( 0.041396s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041788s |  0.00% |  0.23% )   ( 0.041637s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041278s |  0.00% |  0.22% )   ( 0.041127s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041716s |  0.00% |  0.23% )   ( 0.041555s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.042918s |  0.00% |  0.23% )   ( 0.042770s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004686s |  0.00% |  0.00% )   ( 0.005289s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004194s |  0.00% |  0.00% )   ( 0.004737s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005102s |  0.00% |  0.00% )   ( 0.005684s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p22
41.5.0:         ( 0.283138s |  0.02% |  0.05% )   ( 0.006642s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004586s |  0.00% |  0.00% )   ( 0.005166s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.004056s |  0.00% |  0.00% )   ( 0.004627s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004406s |  0.00% |  0.00% )   ( 0.004983s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033889s |  0.00% |  0.00% )   ( 0.033174s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004280s |  0.00% |  0.00% )   ( 0.004848s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004866s |  0.00% |  0.00% )   ( 0.005444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p22
54.5.0:         ( 0.006978s |  0.00% |  0.00% )   ( 0.004521s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003673s |  0.00% |  0.00% )   ( 0.004205s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.506326s |  1.73% |  3.58% )   ( 16.517082s |  1.79% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003982s |  0.00% |  0.02% )   ( 0.004541s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.250705s |  0.12% |  7.14% )   ( 1.195949s |  0.12% |  7.24% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.978194s |  0.19% | 11.29% )   ( 1.901861s |  0.20% | 11.51% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.613128s |  0.16% |  9.21% )   ( 1.554016s |  0.16% |  9.40% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.897647s |  0.18% | 10.83% )   ( 1.813832s |  0.19% | 10.98% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.571469s |  0.15% |  8.97% )   ( 1.506190s |  0.16% |  9.11% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.178201s |  0.11% |  6.73% )   ( 1.072309s |  0.11% |  6.49% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.641299s |  0.06% |  3.66% )   ( 0.548422s |  0.05% |  3.32% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.174116s |  0.11% |  6.70% )   ( 1.079861s |  0.11% |  6.53% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.543804s |  0.05% |  3.10% )   ( 0.476757s |  0.05% |  2.88% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.463575s |  0.14% |  8.36% )   ( 1.352739s |  0.14% |  8.18% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.040646s |  0.30% | 17.36% )   ( 2.927265s |  0.31% | 17.72% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.593864s |  0.05% |  3.39% )   ( 0.553452s |  0.06% |  3.35% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555696s |  0.05% |  3.17% )   ( 0.529888s |  0.05% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005177s |  0.00% |  0.02% )   ( 0.005243s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000177s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 16.093959s |  1.59% |  3.21% )   ( 15.262526s |  1.65% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001030s |  0.00% |  0.00% )   ( 0.001051s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 16.092768s |  1.59% | 99.99% )   ( 15.261298s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p23
30.5.0:         ( 0.043355s |  0.00% |  0.26% )   ( 0.040194s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.035806s |  0.00% |  0.22% )   ( 0.035686s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041113s |  0.00% |  0.25% )   ( 0.040975s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041086s |  0.00% |  0.25% )   ( 0.040951s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.041086s |  0.00% |  0.25% )   ( 0.040950s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004555s |  0.00% |  0.00% )   ( 0.005099s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003985s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004665s |  0.00% |  0.00% )   ( 0.005204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p23
41.5.0:         ( 0.166660s |  0.01% |  0.03% )   ( 0.005919s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004585s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.003680s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003555s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003867s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030438s |  0.00% |  0.00% )   ( 0.030879s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004037s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005181s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p23
54.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.629037s |  1.55% |  3.88% )   ( 14.954170s |  1.62% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003741s |  0.00% |  0.02% )   ( 0.004272s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.015314s |  0.10% |  6.49% )   ( 0.994367s |  0.10% |  6.64% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.766931s |  0.17% | 11.30% )   ( 1.710112s |  0.18% | 11.43% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.516417s |  0.15% |  9.70% )   ( 1.428859s |  0.15% |  9.55% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.717431s |  0.17% | 10.98% )   ( 1.680543s |  0.18% | 11.23% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.507272s |  0.14% |  9.64% )   ( 1.396301s |  0.15% |  9.33% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.984306s |  0.09% |  6.29% )   ( 0.923366s |  0.10% |  6.17% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.510707s |  0.05% |  3.26% )   ( 0.490824s |  0.05% |  3.28% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.036520s |  0.10% |  6.63% )   ( 0.958709s |  0.10% |  6.41% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.452895s |  0.04% |  2.89% )   ( 0.439851s |  0.04% |  2.94% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.351155s |  0.13% |  8.64% )   ( 1.263297s |  0.13% |  8.44% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.765300s |  0.27% | 17.69% )   ( 2.684633s |  0.29% | 17.95% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.521536s |  0.05% |  3.33% )   ( 0.501908s |  0.05% |  3.35% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.479512s |  0.04% |  3.06% )   ( 0.477128s |  0.05% |  3.19% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003837s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003547s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004364s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.006874s |  0.00% |  0.04% )   ( 0.006953s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 18.867333s |  1.87% |  3.76% )   ( 18.155451s |  1.97% |  3.96% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001085s |  0.00% |  0.00% )   ( 0.001107s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 18.866099s |  1.87% | 99.99% )   ( 18.154174s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000103s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p24
30.5.0:         ( 0.040028s |  0.00% |  0.21% )   ( 0.039872s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.031212s |  0.00% |  0.16% )   ( 0.031108s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.040676s |  0.00% |  0.21% )   ( 0.040531s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.041862s |  0.00% |  0.22% )   ( 0.041717s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.045209s |  0.00% |  0.23% )   ( 0.045056s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004956s |  0.00% |  0.00% )   ( 0.005565s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004317s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005538s |  0.00% |  0.00% )   ( 0.006168s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p24
41.5.0:         ( 0.234707s |  0.02% |  0.04% )   ( 0.006970s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005475s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004609s |  0.00% |  0.00% )   ( 0.005209s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004916s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004497s |  0.00% |  0.00% )   ( 0.005073s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035540s |  0.00% |  0.00% )   ( 0.036035s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008537s |  0.00% |  0.00% )   ( 0.005240s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005304s |  0.00% |  0.00% )   ( 0.005890s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p24
54.5.0:         ( 0.004258s |  0.00% |  0.00% )   ( 0.004837s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004134s |  0.00% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.322411s |  1.82% |  3.34% )   ( 17.833828s |  1.93% |  3.38% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004194s |  0.00% |  0.02% )   ( 0.004794s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.352248s |  0.13% |  7.38% )   ( 1.334893s |  0.14% |  7.48% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.025315s |  0.20% | 11.05% )   ( 1.994672s |  0.21% | 11.18% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.732182s |  0.17% |  9.45% )   ( 1.697720s |  0.18% |  9.51% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.015290s |  0.20% | 10.99% )   ( 1.980617s |  0.21% | 11.10% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.632191s |  0.16% |  8.90% )   ( 1.613603s |  0.17% |  9.04% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.168036s |  0.11% |  6.37% )   ( 1.146718s |  0.12% |  6.43% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.634661s |  0.06% |  3.46% )   ( 0.586231s |  0.06% |  3.28% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.229872s |  0.12% |  6.71% )   ( 1.189422s |  0.12% |  6.66% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.557404s |  0.05% |  3.04% )   ( 0.518092s |  0.05% |  2.90% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.545724s |  0.15% |  8.43% )   ( 1.481366s |  0.16% |  8.30% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.189570s |  0.31% | 17.40% )   ( 3.121852s |  0.33% | 17.50% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.641077s |  0.06% |  3.49% )   ( 0.594121s |  0.06% |  3.33% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.594647s |  0.05% |  3.24% )   ( 0.569727s |  0.06% |  3.19% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004568s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004621s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.005010s |  0.00% |  0.02% )   ( 0.005098s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 15.758998s |  1.56% |  3.14% )   ( 14.990061s |  1.62% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001037s |  0.00% |  0.00% )   ( 0.001058s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 15.757810s |  1.56% | 99.99% )   ( 14.988829s |  1.62% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p25
30.5.0:         ( 0.041173s |  0.00% |  0.26% )   ( 0.041033s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.041055s |  0.00% |  0.26% )   ( 0.040923s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.041131s |  0.00% |  0.26% )   ( 0.040992s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.043410s |  0.00% |  0.27% )   ( 0.043231s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.046693s |  0.00% |  0.29% )   ( 0.046533s |  0.00% |  0.31% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004631s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004125s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005047s |  0.00% |  0.00% )   ( 0.005596s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p25
41.5.0:         ( 0.137456s |  0.01% |  0.03% )   ( 0.005834s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004201s |  0.00% |  0.00% )   ( 0.004761s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004292s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004520s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004163s |  0.00% |  0.00% )   ( 0.004719s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032343s |  0.00% |  0.00% )   ( 0.032728s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.009568s |  0.00% |  0.00% )   ( 0.004981s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005018s |  0.00% |  0.00% )   ( 0.005593s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p25
54.5.0:         ( 0.003949s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.004270s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.298965s |  1.52% |  3.73% )   ( 14.659186s |  1.59% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003778s |  0.00% |  0.02% )   ( 0.004299s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.017863s |  0.10% |  6.65% )   ( 0.984916s |  0.10% |  6.71% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.720088s |  0.17% | 11.24% )   ( 1.657649s |  0.17% | 11.30% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.499084s |  0.14% |  9.79% )   ( 1.426954s |  0.15% |  9.73% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.648930s |  0.16% | 10.77% )   ( 1.619485s |  0.17% | 11.04% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.397668s |  0.13% |  9.13% )   ( 1.345666s |  0.14% |  9.17% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.926235s |  0.09% |  6.05% )   ( 0.901328s |  0.09% |  6.14% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541941s |  0.05% |  3.54% )   ( 0.507198s |  0.05% |  3.45% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.005639s |  0.09% |  6.57% )   ( 0.925875s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.492109s |  0.04% |  3.21% )   ( 0.450819s |  0.04% |  3.07% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.259261s |  0.12% |  8.23% )   ( 1.228732s |  0.13% |  8.38% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.733711s |  0.27% | 17.86% )   ( 2.597013s |  0.28% | 17.71% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.537068s |  0.05% |  3.51% )   ( 0.513347s |  0.05% |  3.50% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.515590s |  0.05% |  3.37% )   ( 0.495905s |  0.05% |  3.38% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004525s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004178s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004041s |  0.00% |  0.00% )   ( 0.004546s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.heC0QT"/.quit
68.5.0:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p* 1>&21
69.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.008960s |  0.00% |  0.05% )   ( 0.008937s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 16.054792s |  1.59% |  3.20% )   ( 15.363883s |  1.66% |  3.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001033s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 16.053605s |  1.59% | 99.99% )   ( 15.362650s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p26
30.5.0:         ( 0.045035s |  0.00% |  0.28% )   ( 0.044769s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.044015s |  0.00% |  0.27% )   ( 0.043857s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.043583s |  0.00% |  0.27% )   ( 0.043384s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.044570s |  0.00% |  0.27% )   ( 0.044415s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.044538s |  0.00% |  0.27% )   ( 0.044375s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004875s |  0.00% |  0.00% )   ( 0.005475s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004714s |  0.00% |  0.00% )   ( 0.005099s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005330s |  0.00% |  0.00% )   ( 0.005936s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p26
41.5.0:         ( 0.083021s |  0.00% |  0.01% )   ( 0.006030s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004563s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004912s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004651s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004364s |  0.00% |  0.00% )   ( 0.004954s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035664s |  0.00% |  0.00% )   ( 0.034024s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005229s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005160s |  0.00% |  0.00% )   ( 0.005781s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p26
54.5.0:         ( 0.006288s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004253s |  0.00% |  0.00% )   ( 0.004835s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 15.640668s |  1.55% |  3.47% )   ( 15.023851s |  1.63% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004217s |  0.00% |  0.02% )   ( 0.004821s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.045544s |  0.10% |  6.68% )   ( 1.012130s |  0.10% |  6.73% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.738788s |  0.17% | 11.11% )   ( 1.665313s |  0.18% | 11.08% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.499549s |  0.14% |  9.58% )   ( 1.445151s |  0.15% |  9.61% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.739911s |  0.17% | 11.12% )   ( 1.659899s |  0.18% | 11.04% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.480192s |  0.14% |  9.46% )   ( 1.402131s |  0.15% |  9.33% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.986850s |  0.09% |  6.30% )   ( 0.930640s |  0.10% |  6.19% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547943s |  0.05% |  3.50% )   ( 0.531749s |  0.05% |  3.53% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 0.978263s |  0.09% |  6.25% )   ( 0.953059s |  0.10% |  6.34% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.485668s |  0.04% |  3.10% )   ( 0.474280s |  0.05% |  3.15% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.348004s |  0.13% |  8.61% )   ( 1.273261s |  0.13% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.658565s |  0.26% | 16.99% )   ( 2.601864s |  0.28% | 17.31% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.568988s |  0.05% |  3.63% )   ( 0.541335s |  0.05% |  3.60% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.558186s |  0.05% |  3.56% )   ( 0.528218s |  0.05% |  3.51% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004836s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004198s |  0.00% |  0.00% )   ( 0.004783s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004648s |  0.00% |  0.00% )   ( 0.005218s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004862s |  0.00% |  0.03% )   ( 0.004927s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.507371s |  1.74% |  3.49% )   ( 17.253967s |  1.87% |  3.76% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001028s |  0.00% |  0.00% )   ( 0.001045s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.506196s |  1.73% | 99.99% )   ( 17.252753s |  1.87% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.heC0QT"
26.5.0:         ( 0.000210s |  0.00% |  0.00% )   ( 0.000235s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p27
30.5.0:         ( 0.050635s |  0.00% |  0.28% )   ( 0.047455s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046000s |  0.00% |  0.26% )   ( 0.045835s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 669612 ${BASHPID}' INT
33.5.0:         ( 0.046798s |  0.00% |  0.26% )   ( 0.046610s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 669612 ${BASHPID}' TERM
34.5.0:         ( 0.044250s |  0.00% |  0.25% )   ( 0.043947s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 669612 ${BASHPID}' HUP
35.5.0:         ( 0.044235s |  0.00% |  0.25% )   ( 0.044106s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001395s |  0.00% |  0.00% )   ( 0.001585s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   true
38.5.0:         ( 0.001196s |  0.00% |  0.00% )   ( 0.001345s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.heC0QT"/.nLines
38.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001404s |  0.00% |  0.00% )   ( 0.001585s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p27
41.5.0:         ( 0.058632s |  0.00% |  0.04% )   ( 0.001906s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001326s |  0.00% |  0.00% )   ( 0.001493s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.quit ]]
46.5.0:         ( 0.001175s |  0.00% |  0.00% )   ( 0.001327s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.done ]]
46.5.1:         ( 0.001141s |  0.00% |  0.00% )   ( 0.001293s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001244s |  0.00% |  0.00% )   ( 0.001412s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.008273s |  0.00% |  0.00% )   ( 0.008400s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001036s |  0.00% |  0.00% )   ( 0.001167s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.001201s |  0.00% |  0.00% )   ( 0.001348s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.heC0QT"/.wait/p27
54.5.0:         ( 0.000945s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.000931s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.185465s |  1.70% | 14.02% )   ( 16.990281s |  1.84% | 14.06% )    	(7x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.000967s |  0.00% |  0.00% )   ( 0.001115s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.090280s |  0.10% |  6.34% )   ( 1.087337s |  0.11% |  6.39% )    	(7x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.211683s |  0.21% | 12.86% )   ( 2.203574s |  0.23% | 12.96% )    	(7x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.647988s |  0.16% |  9.58% )   ( 1.641979s |  0.17% |  9.66% )    	(7x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.247368s |  0.22% | 13.07% )   ( 2.230452s |  0.24% | 13.12% )    	(7x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.603037s |  0.15% |  9.32% )   ( 1.596129s |  0.17% |  9.39% )    	(7x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.986779s |  0.09% |  5.74% )   ( 0.979010s |  0.10% |  5.76% )    	(7x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.265133s |  0.02% |  1.54% )   ( 0.260159s |  0.02% |  1.53% )    	(7x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107439s |  0.11% |  6.44% )   ( 1.103019s |  0.11% |  6.49% )    	(7x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.222616s |  0.02% |  1.29% )   ( 0.211029s |  0.02% |  1.24% )    	(7x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.375108s |  0.13% |  8.00% )   ( 1.355228s |  0.14% |  7.97% )    	(7x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.005569s |  0.39% | 23.30% )   ( 3.911965s |  0.42% | 23.02% )    	(7x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.235173s |  0.02% |  1.36% )   ( 0.222691s |  0.02% |  1.31% )    	(7x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.186325s |  0.01% |  1.08% )   ( 0.186594s |  0.02% |  1.09% )    	(7x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001008s |  0.00% |  0.00% )   ( 0.001145s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.000777s |  0.00% |  0.00% )   ( 0.000878s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.000929s |  0.00% |  0.00% )   ( 0.001048s |  0.00% |  0.00% )    	(6x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
20.5.0:         ( 0.004856s |  0.00% |  0.02% )   ( 0.004922s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.heC0QT"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.heC0QT"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001409s |  0.00% |  0.00% )   ( 0.001419s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 21.317811s |  2.11% |  4.25% )   ( 0.001595s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000255s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1085.2.0:       ( 0.000311s |  0.00% |  0.00% )   ( 0.000364s |  0.00% |  0.00% )    	(1x)	│  │   wait
25.2.0:         ( 0.006919s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.heC0QT" 2>/dev/null
