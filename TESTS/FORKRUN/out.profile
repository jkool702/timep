0: .:            	( 0.000001s |  0.00% )            ( 0.611865s |  0.06% )             	(1x)	.0

LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 507.311343s | 50.23% )            ( 459.150875s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000846s |  0.00% |  0.00% )   ( 0.000546s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
23.1.0:         ( 507.310497s | 50.23% | 99.99% )   ( 459.150329s | 49.93% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
23.2.0:         ( 0.034628s |  0.00% |  0.00% )   ( 0.034557s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
24.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
25.2.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
26.2.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
27.2.0:         ( 0.000107s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
28.2.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
29.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
30.2.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
31.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
31.2.1:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
32.2.0:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
32.2.1:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
32.2.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
217.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
222.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
223.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
225.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
225.2.1:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
229.2.0:        ( 0.001281s |  0.00% |  0.00% )   ( 0.001032s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
229.2.1:        ( 0.006376s |  0.00% |  0.00% )   ( 0.006376s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
229.3.0:        ( 0.006376s |  0.00% |100.00% )   ( 0.006376s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
230.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
231.2.0:        ( 0.001229s |  0.00% |  0.00% )   ( 0.001320s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
232.2.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
233.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
233.2.1:        ( 0.022544s |  0.00% |  0.00% )   ( 0.000979s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
234.2.0:        ( 507.235938s | 50.23% | 99.98% )   ( 459.099199s | 49.93% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
234.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1083.3.0:       ( 0.001484s |  0.00% |  0.00% )   ( 0.001762s |  0.00% |  0.00% )    	(6x)	│  │  │   << (SUBSHELL) >>
1083.4.0:       ( 0.001484s |  0.00% |100.00% )   ( 0.001762s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
237.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
238.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
239.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.005104s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
240.3.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
241.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
242.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
243.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
245.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
246.3.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.010392s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
247.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
248.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
252.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
253.3.0:        ( 0.003199s |  0.00% |  0.00% )   ( 0.003248s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
253.3.1:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │   @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 61224  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
253.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
255.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
258.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
260.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
261.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
261.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
262.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
263.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
264.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
315.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
319.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
321.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
322.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
324.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
328.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
332.3.0:        ( 0.000873s |  0.00% |  0.00% )   ( 0.001003s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000070s |  0.00% |  8.01% )   ( 0.000081s |  0.00% |  8.07% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
23.4.0:         ( 0.000073s |  0.00% |  8.36% )   ( 0.000081s |  0.00% |  8.07% )    	(1x)	│  │  │  │   local +i -l nn
24.4.0:         ( 0.000065s |  0.00% |  7.44% )   ( 0.000077s |  0.00% |  7.67% )    	(1x)	│  │  │  │   local vOut
25.4.0:         ( 0.000069s |  0.00% |  7.90% )   ( 0.000080s |  0.00% |  7.97% )    	(1x)	│  │  │  │   local -n vOut="$1"
26.4.0:         ( 0.000066s |  0.00% |  7.56% )   ( 0.000078s |  0.00% |  7.77% )    	(1x)	│  │  │  │   shift 1
27.4.0:         ( 0.000070s |  0.00% |  8.01% )   ( 0.000082s |  0.00% |  8.17% )    	(1x)	│  │  │  │   local -g vOut
28.4.0:         ( 0.000074s |  0.00% |  8.47% )   ( 0.000078s |  0.00% |  7.77% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
28.4.1:         ( 0.000115s |  0.00% | 13.17% )   ( 0.000127s |  0.00% | 12.66% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
29.4.0:         ( 0.000066s |  0.00% |  7.56% )   ( 0.000078s |  0.00% |  7.77% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
31.4.0:         ( 0.000066s |  0.00% |  7.56% )   ( 0.000077s |  0.00% |  7.67% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
31.4.1:         ( 0.000067s |  0.00% |  7.67% )   ( 0.000080s |  0.00% |  7.97% )    	(1x)	│  │  │  │   continue
41.4.0:         ( 0.000072s |  0.00% |  8.24% )   ( 0.000084s |  0.00% |  8.37% )    	(1x)	│  │  │  └─  local +n vOut
333.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
334.3.0:        ( 0.009087s |  0.00% |  0.00% )   ( 0.009189s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
334.3.1:        ( 0.002903s |  0.00% |  0.00% )   ( 0.003032s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
334.4.0:        ( 0.000257s |  0.00% |  8.85% )   ( 0.000281s |  0.00% |  9.26% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
334.4.1:        ( 0.002646s |  0.00% | 91.14% )   ( 0.002751s |  0.00% | 90.73% )    	(1x)	│  │  │  └─  nproc
335.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
337.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
339.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
339.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
341.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
345.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
347.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
348.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
349.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
350.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
352.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
354.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
355.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
359.3.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
359.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
359.3.2:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
360.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
361.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
362.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
366.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
388.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
389.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
390.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
390.3.1:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
400.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
409.3.0:        ( 0.003735s |  0.00% |  0.00% )   ( 0.003845s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
409.3.1:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
409.4.0:        ( 0.000113s |  0.00% |100.00% )   ( 0.000132s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
410.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
413.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
418.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
419.3.0:        ( 0.002319s |  0.00% |  0.00% )   ( 0.002392s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
420.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
421.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
422.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
449.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
450.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
454.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
455.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
458.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
469.3.0:        ( 0.000507s |  0.00% |  0.00% )   ( 0.000527s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
472.3.0:        ( 0.116425s |  0.01% |  0.02% )   ( 0.116254s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
472.4.0:        ( 0.000078s |  0.00% |  0.06% )   ( 0.000092s |  0.00% |  0.07% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
473.4.0:        ( 0.017595s |  0.00% | 15.11% )   ( 0.017548s |  0.00% | 15.09% )    	(1x)	│  │  │  │   trap - EXIT
474.4.0:        ( 0.020086s |  0.00% | 17.25% )   ( 0.020049s |  0.00% | 17.24% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
475.4.0:        ( 0.020311s |  0.00% | 17.44% )   ( 0.020271s |  0.00% | 17.43% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
476.4.0:        ( 0.020173s |  0.00% | 17.32% )   ( 0.020134s |  0.00% | 17.31% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
477.4.0:        ( 0.020007s |  0.00% | 17.18% )   ( 0.019966s |  0.00% | 17.17% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
478.4.0:        ( 0.000069s |  0.00% |  0.05% )   ( 0.000080s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
480.4.0:        ( 0.017874s |  0.00% | 15.35% )   ( 0.017845s |  0.00% | 15.35% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
489.4.0:        ( 0.000091s |  0.00% |  0.07% )   ( 0.000104s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
490.4.0:        ( 0.000071s |  0.00% |  0.06% )   ( 0.000083s |  0.00% |  0.07% )    	(1x)	│  │  │  │   evfd_signal
491.4.0:        ( 0.000070s |  0.00% |  0.06% )   ( 0.000082s |  0.00% |  0.07% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
494.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
496.3.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
501.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
503.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
504.3.0:        ( 0.000413s |  0.00% |  0.00% )   ( 0.000429s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
507.3.0:        ( 3.517448s |  0.34% |  0.69% )   ( 1.764511s |  0.19% |  0.38% )    	(1x)	│  │  │   << (SUBSHELL) >>
507.4.0:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
508.4.0:        ( 0.021947s |  0.00% |  0.62% )   ( 0.021889s |  0.00% |  1.24% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
509.4.0:        ( 0.020206s |  0.00% |  0.57% )   ( 0.020167s |  0.00% |  1.14% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
510.4.0:        ( 0.020186s |  0.00% |  0.57% )   ( 0.020146s |  0.00% |  1.14% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
511.4.0:        ( 0.020113s |  0.00% |  0.57% )   ( 0.020074s |  0.00% |  1.13% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
512.4.0:        ( 0.020045s |  0.00% |  0.56% )   ( 0.020008s |  0.00% |  1.13% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
513.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
514.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
515.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
517.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
518.4.0:        ( 0.086214s |  0.00% |  0.00% )   ( 0.099201s |  0.01% |  0.00% )    	(670x)	│  │  │  │   ${fallocateFlag}
519.4.0:        ( 2.045721s |  0.20% |  0.08% )   ( 0.116100s |  0.01% |  0.00% )    	(669x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
519.4.1:        ( 0.000540s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.01% )    	(3x)	│  │  │  │   continue
520.4.0:        ( 0.085581s |  0.00% |  0.00% )   ( 0.098574s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${REPLY} in
534.4.0:        ( 0.085447s |  0.00% |  0.00% )   ( 0.098444s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
535.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
538.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
543.4.0:        ( 0.083713s |  0.00% |  0.00% )   ( 0.096392s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${lseekPosFlag}
544.4.0:        ( 0.086758s |  0.00% |  0.00% )   ( 0.099273s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
545.4.0:        ( 0.089940s |  0.00% |  0.00% )   ( 0.100145s |  0.01% |  0.00% )    	(666x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
551.4.0:        ( 0.083796s |  0.00% |  0.00% )   ( 0.096559s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
552.4.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
553.4.0:        ( 0.087008s |  0.00% |  0.00% )   ( 0.096301s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
554.4.0:        ( 0.083920s |  0.00% |  0.00% )   ( 0.096624s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
555.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
556.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
557.4.0:        ( 0.006306s |  0.00% |  0.17% )   ( 0.006778s |  0.00% |  0.38% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
557.4.1:        ( 0.002885s |  0.00% |  0.08% )   ( 0.003269s |  0.00% |  0.18% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
557.5.0:        ( 0.002885s |  0.00% |100.00% )   ( 0.003269s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
558.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
559.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
561.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
562.4.0:        ( 0.000122s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
563.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
564.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
565.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
567.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.01% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
568.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
569.4.0:        ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
572.4.0:        ( 0.084141s |  0.00% |  0.00% )   ( 0.096920s |  0.01% |  0.00% )    	(666x)	│  │  │  │   ${fallocateFlag}
573.4.0:        ( 0.083425s |  0.00% |  0.00% )   ( 0.096235s |  0.01% |  0.00% )    	(666x)	│  │  │  │   case ${nWait} in
584.4.0:        ( 0.081337s |  0.00% |  0.00% )   ( 0.093687s |  0.01% |  0.00% )    	(645x)	│  │  │  │   ((nWait--))
588.4.0:        ( 0.086994s |  0.00% |  0.00% )   ( 0.099918s |  0.01% |  0.00% )    	(666x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
534.4.1:        ( 0.083804s |  0.00% |  0.00% )   ( 0.096526s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
551.4.1:        ( 0.084171s |  0.00% |  0.00% )   ( 0.096875s |  0.01% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
575.4.0:        ( 0.002659s |  0.00% |  0.00% )   ( 0.003046s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
576.4.0:        ( 0.002655s |  0.00% |  0.00% )   ( 0.003062s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
577.4.0:        ( 0.059041s |  0.00% |  0.07% )   ( 0.047144s |  0.00% |  0.12% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
578.4.0:        ( 0.003111s |  0.00% |  0.00% )   ( 0.003549s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
579.4.0:        ( 0.003015s |  0.00% |  0.00% )   ( 0.003441s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
581.4.0:        ( 0.002986s |  0.00% |  0.00% )   ( 0.003405s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
589.4.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
591.4.0:        ( 0.000136s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
518.4.1:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
518.4.2:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
24.4.0:         ( 0.007339s |  0.00% |  0.20% )   ( 0.007323s |  0.00% |  0.41% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/pAuto
597.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
598.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
600.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
979.3.0:        ( 0.069835s |  0.00% |  0.01% )   ( 0.069983s |  0.00% |  0.01% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
996.3.0:        ( 0.006012s |  0.00% |  0.00% )   ( 0.006908s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
996.4.0:        ( 0.000197s |  0.00% |  3.27% )   ( 0.000224s |  0.00% |  3.24% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
997.4.0:        ( 0.000134s |  0.00% |  2.22% )   ( 0.000154s |  0.00% |  2.22% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
997.4.1:        ( 0.000081s |  0.00% |  1.34% )   ( 0.000093s |  0.00% |  1.34% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1005.4.0:       ( 0.000217s |  0.00% |  3.60% )   ( 0.000230s |  0.00% |  3.32% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1006.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1078.4.0:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1081.4.0:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "{"
1082.4.0:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000075s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1083.4.0:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000075s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1083.4.1:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1084.4.0:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1085.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekFlag}
1085.4.1:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1086.4.0:       ( 0.000069s |  0.00% |  1.14% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1087.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1087.4.1:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000080s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1088.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1090.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1091.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1091.4.1:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.2:       ( 0.000073s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1092.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${lseekFlag}
1095.4.0:       ( 0.000071s |  0.00% |  1.18% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1096.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1099.4.0:       ( 0.000084s |  0.00% |  1.39% )   ( 0.000096s |  0.00% |  1.38% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1137.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1142.4.0:       ( 0.000073s |  0.00% |  1.21% )   ( 0.000084s |  0.00% |  1.21% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1143.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1144.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekFlag}
1144.4.1:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   printf '\n'
1145.4.0:       ( 0.000071s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1146.4.0:       ( 0.000111s |  0.00% |  1.84% )   ( 0.000122s |  0.00% |  1.76% )    	(1x)	│  │  │  │   echo "}"
1148.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1148.4.1:       ( 0.000064s |  0.00% |  1.06% )   ( 0.000075s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1148.4.2:       ( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${readBytesFlag}
1148.4.3:       ( 0.000080s |  0.00% |  1.33% )   ( 0.000088s |  0.00% |  1.27% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1162.4.0:       ( 0.000099s |  0.00% |  1.64% )   ( 0.000111s |  0.00% |  1.60% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1163.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1166.4.0:       ( 0.000092s |  0.00% |  1.53% )   ( 0.000103s |  0.00% |  1.49% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1177.4.0:       ( 0.000078s |  0.00% |  1.29% )   ( 0.000089s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1178.4.0:       ( 0.000105s |  0.00% |  1.74% )   ( 0.000124s |  0.00% |  1.79% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1178.4.1:       ( 0.000083s |  0.00% |  1.38% )   ( 0.000098s |  0.00% |  1.41% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1179.4.0:       ( 0.000072s |  0.00% |  1.19% )   ( 0.000084s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nOrderFlag}
1180.4.0:       ( 0.000071s |  0.00% |  1.18% )   ( 0.000082s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1185.4.0:       ( 0.000080s |  0.00% |  1.33% )   ( 0.000092s |  0.00% |  1.33% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1186.4.0:       ( 0.000070s |  0.00% |  1.16% )   ( 0.000081s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${nOrderFlag}
1190.4.0:       ( 0.000079s |  0.00% |  1.31% )   ( 0.000091s |  0.00% |  1.31% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1191.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1191.4.1:       ( 0.000080s |  0.00% |  1.33% )   ( 0.000089s |  0.00% |  1.28% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1196.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${fallocateFlag}
1196.4.1:       ( 0.000086s |  0.00% |  1.43% )   ( 0.000099s |  0.00% |  1.43% )    	(1x)	│  │  │  │   printf '%s' ' || '
1197.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000094s |  0.00% |  1.56% )   ( 0.000107s |  0.00% |  1.54% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1198.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1198.4.1:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1198.4.2:       ( 0.000063s |  0.00% |  1.04% )   ( 0.000075s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1198.4.3:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000079s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${lseekFlag}
1206.4.0:       ( 0.000062s |  0.00% |  1.03% )   ( 0.000073s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1206.4.1:       ( 0.000078s |  0.00% |  1.29% )   ( 0.000086s |  0.00% |  1.24% )    	(1x)	│  │  │  │   echo '{'
1207.4.0:       ( 0.000067s |  0.00% |  1.11% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1207.4.1:       ( 0.000079s |  0.00% |  1.31% )   ( 0.000090s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nOrderFlag}
1208.4.0:       ( 0.000066s |  0.00% |  1.09% )   ( 0.000076s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1209.4.0:       ( 0.000104s |  0.00% |  1.72% )   ( 0.000116s |  0.00% |  1.67% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1210.4.0:       ( 0.000071s |  0.00% |  1.18% )   ( 0.000078s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${readBytesFlag}
1217.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000075s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1220.4.0:       ( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${noFuncFlag}
1223.4.0:       ( 0.000063s |  0.00% |  1.04% )   ( 0.000074s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1224.4.0:       ( 0.000098s |  0.00% |  1.63% )   ( 0.000109s |  0.00% |  1.57% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1229.4.0:       ( 0.000075s |  0.00% |  1.24% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1241.4.0:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000080s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${readBytesFlag}
1242.4.0:       ( 0.000065s |  0.00% |  1.08% )   ( 0.000077s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1242.4.1:       ( 0.000085s |  0.00% |  1.41% )   ( 0.000096s |  0.00% |  1.38% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1243.4.0:       ( 0.000074s |  0.00% |  1.23% )   ( 0.000092s |  0.00% |  1.33% )    	(1x)	│  │  │  │   echo "${outStr}"
1244.4.0:       ( 0.000077s |  0.00% |  1.28% )   ( 0.000083s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nOrderFlag}
1245.4.0:       ( 0.000068s |  0.00% |  1.13% )   ( 0.000080s |  0.00% |  1.15% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1250.4.0:       ( 0.000082s |  0.00% |  1.36% )   ( 0.000094s |  0.00% |  1.36% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
980.3.0:        ( 0.000276s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
985.3.0:        ( 0.000292s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
987.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
988.3.0:        ( 0.020423s |  0.00% |  0.00% )   ( 0.020337s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
992.3.0:        ( 0.020574s |  0.00% |  0.00% )   ( 0.146368s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
996.3.0:        ( 0.020271s |  0.00% |  0.00% )   ( 0.020154s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1000.3.0:       ( 0.019988s |  0.00% |  0.00% )   ( 0.019903s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1001.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1002.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1006.3.0:       ( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1010.3.0:       ( 0.000119s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1011.3.0:       ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1012.3.0:       ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1012.3.1:       ( 0.002894s |  0.00% |  0.00% )   ( 0.003326s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1014.3.0:       ( 0.002733s |  0.00% |  0.00% )   ( 0.003130s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1015.3.0:       ( 17.505950s |  1.73% |  3.45% )   ( 16.743139s |  1.82% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000594s |  0.00% |  0.00% )   ( 0.000613s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
23.4.0:         ( 17.505273s |  1.73% | 99.99% )   ( 16.742429s |  1.82% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p0
29.5.0:         ( 0.021440s |  0.00% |  0.12% )   ( 0.021386s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020136s |  0.00% |  0.11% )   ( 0.020099s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020394s |  0.00% |  0.11% )   ( 0.020356s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020439s |  0.00% |  0.11% )   ( 0.020389s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020494s |  0.00% |  0.11% )   ( 0.020457s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004178s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003694s |  0.00% |  0.00% )   ( 0.004199s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004558s |  0.00% |  0.00% )   ( 0.005069s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p0
40.5.0:         ( 0.243190s |  0.02% |  0.05% )   ( 0.005778s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004060s |  0.00% |  0.00% )   ( 0.004561s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003811s |  0.00% |  0.00% )   ( 0.004304s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003713s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.029264s |  0.00% |  0.00% )   ( 0.029675s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003516s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004278s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p0
65.5.0:         ( 0.003645s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003390s |  0.00% |  0.00% )   ( 0.003859s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000209s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
90.5.0:         ( 17.062775s |  1.68% |  3.89% )   ( 16.529039s |  1.79% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003533s |  0.00% |  0.02% )   ( 0.004028s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.144105s |  0.11% |  6.70% )   ( 1.096864s |  0.11% |  6.63% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.002937s |  0.19% | 11.73% )   ( 1.947040s |  0.21% | 11.77% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.609504s |  0.15% |  9.43% )   ( 1.573592s |  0.17% |  9.52% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.913136s |  0.18% | 11.21% )   ( 1.899972s |  0.20% | 11.49% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.524804s |  0.15% |  8.93% )   ( 1.507093s |  0.16% |  9.11% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.013296s |  0.10% |  5.93% )   ( 0.986541s |  0.10% |  5.96% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.512103s |  0.05% |  3.00% )   ( 0.503863s |  0.05% |  3.04% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.120692s |  0.11% |  6.56% )   ( 1.054543s |  0.11% |  6.37% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.460219s |  0.04% |  2.69% )   ( 0.448505s |  0.04% |  2.71% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.438429s |  0.14% |  8.43% )   ( 1.381232s |  0.15% |  8.35% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.219329s |  0.31% | 18.86% )   ( 3.138231s |  0.34% | 18.98% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.567852s |  0.05% |  3.32% )   ( 0.501999s |  0.05% |  3.03% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.532836s |  0.05% |  3.12% )   ( 0.485536s |  0.05% |  2.93% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
87.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.003590s |  0.00% |  0.00% )   ( 0.004087s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003720s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004065s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005242s |  0.00% |  0.02% )   ( 0.005309s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1012.3.0:       ( 0.002704s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1015.3.0:       ( 16.268433s |  1.61% |  3.20% )   ( 15.124287s |  1.64% |  3.29% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000594s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
23.4.0:         ( 16.267753s |  1.61% | 99.99% )   ( 15.123576s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p1
29.5.0:         ( 0.019986s |  0.00% |  0.12% )   ( 0.019931s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020346s |  0.00% |  0.12% )   ( 0.020306s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020472s |  0.00% |  0.12% )   ( 0.020424s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020516s |  0.00% |  0.12% )   ( 0.020478s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020451s |  0.00% |  0.12% )   ( 0.020418s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004972s |  0.00% |  0.00% )   ( 0.005596s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
37.5.0:         ( 0.004409s |  0.00% |  0.00% )   ( 0.004998s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000263s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005515s |  0.00% |  0.00% )   ( 0.006129s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p1
40.5.0:         ( 0.582550s |  0.05% |  0.11% )   ( 0.007845s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.005070s |  0.00% |  0.00% )   ( 0.005675s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004805s |  0.00% |  0.00% )   ( 0.005416s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.004327s |  0.00% |  0.00% )   ( 0.004914s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004536s |  0.00% |  0.00% )   ( 0.005109s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.040443s |  0.00% |  0.00% )   ( 0.037943s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004794s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.004130s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.005138s |  0.00% |  0.00% )   ( 0.005073s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005234s |  0.00% |  0.00% )   ( 0.005823s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p1
65.5.0:         ( 0.004393s |  0.00% |  0.00% )   ( 0.004882s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000237s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
90.5.0:         ( 15.456213s |  1.53% |  3.16% )   ( 14.883121s |  1.61% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004107s |  0.00% |  0.02% )   ( 0.004663s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.016817s |  0.10% |  6.57% )   ( 0.994088s |  0.10% |  6.67% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.709332s |  0.16% | 11.05% )   ( 1.634178s |  0.17% | 10.98% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.540659s |  0.15% |  9.96% )   ( 1.450260s |  0.15% |  9.74% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.678444s |  0.16% | 10.85% )   ( 1.621431s |  0.17% | 10.89% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.410864s |  0.13% |  9.12% )   ( 1.367932s |  0.14% |  9.19% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.005195s |  0.09% |  6.50% )   ( 0.931395s |  0.10% |  6.25% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.571027s |  0.05% |  3.69% )   ( 0.559602s |  0.06% |  3.75% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.964792s |  0.09% |  6.24% )   ( 0.935200s |  0.10% |  6.28% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.560280s |  0.05% |  3.62% )   ( 0.500878s |  0.05% |  3.36% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.301901s |  0.12% |  8.42% )   ( 1.263760s |  0.13% |  8.49% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.527750s |  0.25% | 16.35% )   ( 2.490233s |  0.27% | 16.73% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.589079s |  0.05% |  3.81% )   ( 0.564061s |  0.06% |  3.78% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.575966s |  0.05% |  3.72% )   ( 0.565440s |  0.06% |  3.79% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
87.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.004242s |  0.00% |  0.00% )   ( 0.004823s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.004122s |  0.00% |  0.00% )   ( 0.004697s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.007012s |  0.00% |  0.00% )   ( 0.005111s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008820s |  0.00% |  0.05% )   ( 0.008774s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1015.3.0:       ( 17.082762s |  1.69% |  3.36% )   ( 16.041756s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000594s |  0.00% |  0.00% )   ( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
23.4.0:         ( 17.082085s |  1.69% | 99.99% )   ( 16.041048s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000344s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p2
29.5.0:         ( 0.020282s |  0.00% |  0.11% )   ( 0.020248s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020465s |  0.00% |  0.11% )   ( 0.020431s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020481s |  0.00% |  0.11% )   ( 0.020443s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020497s |  0.00% |  0.11% )   ( 0.020459s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020443s |  0.00% |  0.11% )   ( 0.020406s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
37.5.0:         ( 0.003047s |  0.00% |  0.00% )   ( 0.003460s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004199s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p2
40.5.0:         ( 0.331777s |  0.03% |  0.08% )   ( 0.005216s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003558s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003152s |  0.00% |  0.00% )   ( 0.003572s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.002923s |  0.00% |  0.00% )   ( 0.003333s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.006070s |  0.00% |  0.00% )   ( 0.003477s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.026925s |  0.00% |  0.00% )   ( 0.024255s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002859s |  0.00% |  0.00% )   ( 0.003257s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002818s |  0.00% |  0.00% )   ( 0.003200s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.002958s |  0.00% |  0.00% )   ( 0.003366s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.003527s |  0.00% |  0.00% )   ( 0.003927s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p2
65.5.0:         ( 0.002685s |  0.00% |  0.00% )   ( 0.003069s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.002844s |  0.00% |  0.00% )   ( 0.003237s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000225s |  0.00% |  0.00% )   ( 0.000261s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
90.5.0:         ( 16.554812s |  1.63% |  4.61% )   ( 15.842803s |  1.72% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002947s |  0.00% |  0.01% )   ( 0.003374s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.113033s |  0.11% |  6.72% )   ( 1.021434s |  0.11% |  6.44% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.985283s |  0.19% | 11.99% )   ( 1.908853s |  0.20% | 12.04% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.552555s |  0.15% |  9.37% )   ( 1.517463s |  0.16% |  9.57% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.893446s |  0.18% | 11.43% )   ( 1.873835s |  0.20% | 11.82% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.559528s |  0.15% |  9.42% )   ( 1.488231s |  0.16% |  9.39% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.045371s |  0.10% |  6.31% )   ( 0.937370s |  0.10% |  5.91% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.448233s |  0.04% |  2.70% )   ( 0.429754s |  0.04% |  2.71% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.059141s |  0.10% |  6.39% )   ( 1.018634s |  0.11% |  6.42% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.403352s |  0.03% |  2.43% )   ( 0.380917s |  0.04% |  2.40% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.421222s |  0.14% |  8.58% )   ( 1.319997s |  0.14% |  8.33% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.208347s |  0.31% | 19.38% )   ( 3.116035s |  0.33% | 19.66% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.453268s |  0.04% |  2.73% )   ( 0.426498s |  0.04% |  2.69% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.409086s |  0.04% |  2.47% )   ( 0.400408s |  0.04% |  2.52% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
87.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.002950s |  0.00% |  0.00% )   ( 0.003347s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.002772s |  0.00% |  0.00% )   ( 0.003171s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.006119s |  0.00% |  0.00% )   ( 0.003474s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008543s |  0.00% |  0.05% )   ( 0.008622s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1015.3.0:       ( 17.521797s |  1.73% |  3.45% )   ( 16.833775s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000605s |  0.00% |  0.00% )   ( 0.000623s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
23.4.0:         ( 17.521108s |  1.73% | 99.99% )   ( 16.833052s |  1.83% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000340s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p3
29.5.0:         ( 0.020924s |  0.00% |  0.11% )   ( 0.020552s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020928s |  0.00% |  0.11% )   ( 0.020551s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020815s |  0.00% |  0.11% )   ( 0.020543s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020879s |  0.00% |  0.11% )   ( 0.020561s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020932s |  0.00% |  0.11% )   ( 0.020542s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002890s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
37.5.0:         ( 0.002586s |  0.00% |  0.00% )   ( 0.002926s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.003155s |  0.00% |  0.00% )   ( 0.003531s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p3
40.5.0:         ( 0.270297s |  0.02% |  0.08% )   ( 0.004735s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003148s |  0.00% |  0.00% )   ( 0.003549s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.002713s |  0.00% |  0.00% )   ( 0.003083s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002823s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002590s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.019623s |  0.00% |  0.00% )   ( 0.019921s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002571s |  0.00% |  0.00% )   ( 0.002931s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002514s |  0.00% |  0.00% )   ( 0.002873s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.006851s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.003185s |  0.00% |  0.00% )   ( 0.003563s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p3
65.5.0:         ( 0.002644s |  0.00% |  0.00% )   ( 0.002995s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.002498s |  0.00% |  0.00% )   ( 0.002850s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 17.066724s |  1.69% |  5.41% )   ( 16.646781s |  1.81% |  5.49% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002630s |  0.00% |  0.01% )   ( 0.002998s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.119381s |  0.11% |  6.55% )   ( 1.074905s |  0.11% |  6.45% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.021601s |  0.20% | 11.84% )   ( 1.997847s |  0.21% | 12.00% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.660299s |  0.16% |  9.72% )   ( 1.621432s |  0.17% |  9.74% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.048007s |  0.20% | 12.00% )   ( 2.034308s |  0.22% | 12.22% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.605752s |  0.15% |  9.40% )   ( 1.566298s |  0.17% |  9.40% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.048949s |  0.10% |  6.14% )   ( 1.009587s |  0.10% |  6.06% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.442432s |  0.04% |  2.59% )   ( 0.420613s |  0.04% |  2.52% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.095743s |  0.10% |  6.42% )   ( 1.080229s |  0.11% |  6.48% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.356964s |  0.03% |  2.09% )   ( 0.347210s |  0.03% |  2.08% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.394291s |  0.13% |  8.16% )   ( 1.358993s |  0.14% |  8.16% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.456846s |  0.34% | 20.25% )   ( 3.349002s |  0.36% | 20.11% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.437530s |  0.04% |  2.56% )   ( 0.409876s |  0.04% |  2.46% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.376299s |  0.03% |  2.20% )   ( 0.373483s |  0.04% |  2.24% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002506s |  0.00% |  0.00% )   ( 0.002853s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.002416s |  0.00% |  0.00% )   ( 0.002747s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.005547s |  0.00% |  0.00% )   ( 0.002999s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008563s |  0.00% |  0.04% )   ( 0.008641s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1015.3.0:       ( 16.583358s |  1.64% |  3.26% )   ( 15.892694s |  1.72% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000645s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
23.4.0:         ( 16.582615s |  1.64% | 99.99% )   ( 15.891912s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p4
29.5.0:         ( 0.022344s |  0.00% |  0.13% )   ( 0.022296s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020510s |  0.00% |  0.12% )   ( 0.020475s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020531s |  0.00% |  0.12% )   ( 0.020496s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020563s |  0.00% |  0.12% )   ( 0.020524s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020480s |  0.00% |  0.12% )   ( 0.020441s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004357s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005043s |  0.00% |  0.00% )   ( 0.005621s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p4
40.5.0:         ( 0.334537s |  0.03% |  0.07% )   ( 0.006468s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004304s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003882s |  0.00% |  0.00% )   ( 0.004391s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003397s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004194s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.029620s |  0.00% |  0.00% )   ( 0.030034s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004127s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003543s |  0.00% |  0.00% )   ( 0.003996s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003946s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004669s |  0.00% |  0.00% )   ( 0.005207s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p4
65.5.0:         ( 0.005608s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.037338s |  1.58% |  3.71% )   ( 15.667803s |  1.70% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003904s |  0.00% |  0.02% )   ( 0.004394s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.060665s |  0.10% |  6.61% )   ( 1.052098s |  0.11% |  6.71% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.834248s |  0.18% | 11.43% )   ( 1.781324s |  0.19% | 11.36% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.523761s |  0.15% |  9.50% )   ( 1.494286s |  0.16% |  9.53% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.825739s |  0.18% | 11.38% )   ( 1.773199s |  0.19% | 11.31% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.445386s |  0.14% |  9.01% )   ( 1.428331s |  0.15% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.977082s |  0.09% |  6.09% )   ( 0.945326s |  0.10% |  6.03% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.528162s |  0.05% |  3.29% )   ( 0.526689s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.010138s |  0.10% |  6.29% )   ( 0.999487s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.471882s |  0.04% |  2.94% )   ( 0.464244s |  0.05% |  2.96% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.375551s |  0.13% |  8.57% )   ( 1.343752s |  0.14% |  8.57% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.904173s |  0.28% | 18.10% )   ( 2.828905s |  0.30% | 18.05% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.554273s |  0.05% |  3.45% )   ( 0.520004s |  0.05% |  3.31% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.522374s |  0.05% |  3.25% )   ( 0.505764s |  0.05% |  3.22% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003970s |  0.00% |  0.00% )   ( 0.004499s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003747s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004184s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000219s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009868s |  0.00% |  0.05% )   ( 0.009944s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1015.3.0:       ( 16.276755s |  1.61% |  3.20% )   ( 15.182479s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000647s |  0.00% |  0.00% )   ( 0.000665s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
23.4.0:         ( 16.276023s |  1.61% | 99.99% )   ( 15.181714s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p5
29.5.0:         ( 0.020568s |  0.00% |  0.12% )   ( 0.020535s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020524s |  0.00% |  0.12% )   ( 0.020492s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020510s |  0.00% |  0.12% )   ( 0.020471s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020502s |  0.00% |  0.12% )   ( 0.020463s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020625s |  0.00% |  0.12% )   ( 0.020587s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004832s |  0.00% |  0.00% )   ( 0.005430s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004589s |  0.00% |  0.00% )   ( 0.005170s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005420s |  0.00% |  0.00% )   ( 0.006049s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p5
40.5.0:         ( 0.335735s |  0.03% |  0.07% )   ( 0.006996s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004515s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004171s |  0.00% |  0.00% )   ( 0.004716s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003821s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004363s |  0.00% |  0.00% )   ( 0.004920s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.035823s |  0.00% |  0.00% )   ( 0.033354s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004094s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.004028s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.009022s |  0.00% |  0.00% )   ( 0.004861s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005059s |  0.00% |  0.00% )   ( 0.005647s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p5
65.5.0:         ( 0.003878s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.717359s |  1.55% |  3.44% )   ( 14.949961s |  1.62% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004256s |  0.00% |  0.02% )   ( 0.004822s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.091456s |  0.10% |  6.94% )   ( 1.012790s |  0.11% |  6.77% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.681836s |  0.16% | 10.70% )   ( 1.640368s |  0.17% | 10.97% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.458729s |  0.14% |  9.28% )   ( 1.427811s |  0.15% |  9.55% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.722652s |  0.17% | 10.96% )   ( 1.639187s |  0.17% | 10.96% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.415764s |  0.14% |  9.00% )   ( 1.373807s |  0.14% |  9.18% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.978315s |  0.09% |  6.22% )   ( 0.926155s |  0.10% |  6.19% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.625648s |  0.06% |  3.98% )   ( 0.548187s |  0.05% |  3.66% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.042054s |  0.10% |  6.62% )   ( 0.954581s |  0.10% |  6.38% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.516807s |  0.05% |  3.28% )   ( 0.481367s |  0.05% |  3.21% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.320926s |  0.13% |  8.40% )   ( 1.267575s |  0.13% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.714778s |  0.26% | 17.27% )   ( 2.584053s |  0.28% | 17.28% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.589169s |  0.05% |  3.74% )   ( 0.550371s |  0.05% |  3.68% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.554969s |  0.05% |  3.53% )   ( 0.538887s |  0.05% |  3.60% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003813s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009139s |  0.00% |  0.05% )   ( 0.009205s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1015.3.0:       ( 17.738994s |  1.75% |  3.49% )   ( 17.096670s |  1.85% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000651s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
23.4.0:         ( 17.738251s |  1.75% | 99.99% )   ( 17.095901s |  1.85% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p6
29.5.0:         ( 0.020817s |  0.00% |  0.11% )   ( 0.020775s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020828s |  0.00% |  0.11% )   ( 0.020782s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020705s |  0.00% |  0.11% )   ( 0.020655s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020767s |  0.00% |  0.11% )   ( 0.020724s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020713s |  0.00% |  0.11% )   ( 0.020667s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002180s |  0.00% |  0.00% )   ( 0.002444s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   true
37.5.0:         ( 0.002013s |  0.00% |  0.00% )   ( 0.002280s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002335s |  0.00% |  0.00% )   ( 0.002593s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p6
40.5.0:         ( 0.223435s |  0.02% |  0.08% )   ( 0.003134s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002116s |  0.00% |  0.00% )   ( 0.002383s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.001914s |  0.00% |  0.00% )   ( 0.002189s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.001742s |  0.00% |  0.00% )   ( 0.001987s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.001863s |  0.00% |  0.00% )   ( 0.002121s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.015679s |  0.00% |  0.00% )   ( 0.013890s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.001720s |  0.00% |  0.00% )   ( 0.001959s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.001820s |  0.00% |  0.00% )   ( 0.002063s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.001939s |  0.00% |  0.00% )   ( 0.002186s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.002217s |  0.00% |  0.00% )   ( 0.002481s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p6
65.5.0:         ( 0.001817s |  0.00% |  0.00% )   ( 0.002059s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.001716s |  0.00% |  0.00% )   ( 0.001961s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 17.353828s |  1.71% |  7.52% )   ( 16.932607s |  1.84% |  7.61% )    	(13x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001877s |  0.00% |  0.01% )   ( 0.002147s |  0.00% |  0.01% )    	(13x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.103581s |  0.10% |  6.35% )   ( 1.076206s |  0.11% |  6.35% )    	(13x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.152855s |  0.21% | 12.40% )   ( 2.134523s |  0.23% | 12.60% )    	(13x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.667844s |  0.16% |  9.61% )   ( 1.597590s |  0.17% |  9.43% )    	(13x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.190740s |  0.21% | 12.62% )   ( 2.132657s |  0.23% | 12.59% )    	(13x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.596200s |  0.15% |  9.19% )   ( 1.575296s |  0.17% |  9.30% )    	(13x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.071266s |  0.10% |  6.17% )   ( 1.011640s |  0.11% |  5.97% )    	(13x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.372724s |  0.03% |  2.14% )   ( 0.362877s |  0.03% |  2.14% )    	(13x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.126433s |  0.11% |  6.49% )   ( 1.110207s |  0.12% |  6.55% )    	(13x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.293305s |  0.02% |  1.69% )   ( 0.284307s |  0.03% |  1.67% )    	(13x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.382951s |  0.13% |  7.96% )   ( 1.359110s |  0.14% |  8.02% )    	(13x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.680716s |  0.36% | 21.20% )   ( 3.645110s |  0.39% | 21.52% )    	(13x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.355090s |  0.03% |  2.04% )   ( 0.340865s |  0.03% |  2.01% )    	(13x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.358246s |  0.03% |  2.06% )   ( 0.300072s |  0.03% |  1.77% )    	(13x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.001860s |  0.00% |  0.00% )   ( 0.002112s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.001525s |  0.00% |  0.00% )   ( 0.001741s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004804s |  0.00% |  0.00% )   ( 0.002015s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.007124s |  0.00% |  0.04% )   ( 0.007201s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1015.3.0:       ( 16.736757s |  1.65% |  3.29% )   ( 15.897477s |  1.72% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000684s |  0.00% |  0.00% )   ( 0.000705s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
23.4.0:         ( 16.735990s |  1.65% | 99.99% )   ( 15.896674s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000325s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000388s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p7
29.5.0:         ( 0.020612s |  0.00% |  0.12% )   ( 0.020578s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020511s |  0.00% |  0.12% )   ( 0.020475s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020514s |  0.00% |  0.12% )   ( 0.020473s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020574s |  0.00% |  0.12% )   ( 0.020536s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020533s |  0.00% |  0.12% )   ( 0.020494s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004121s |  0.00% |  0.00% )   ( 0.004609s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003752s |  0.00% |  0.00% )   ( 0.004254s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004623s |  0.00% |  0.00% )   ( 0.005154s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p7
40.5.0:         ( 0.309715s |  0.03% |  0.07% )   ( 0.006092s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004135s |  0.00% |  0.00% )   ( 0.004672s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003714s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003916s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.033781s |  0.00% |  0.00% )   ( 0.031212s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003756s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004248s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.006887s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004438s |  0.00% |  0.00% )   ( 0.004955s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p7
65.5.0:         ( 0.003527s |  0.00% |  0.00% )   ( 0.004030s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003450s |  0.00% |  0.00% )   ( 0.003936s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.218065s |  1.60% |  3.87% )   ( 15.679945s |  1.70% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003463s |  0.00% |  0.02% )   ( 0.003960s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.069156s |  0.10% |  6.59% )   ( 1.007386s |  0.10% |  6.42% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.819686s |  0.18% | 11.22% )   ( 1.793404s |  0.19% | 11.43% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.576553s |  0.15% |  9.72% )   ( 1.505644s |  0.16% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.819654s |  0.18% | 11.21% )   ( 1.797726s |  0.19% | 11.46% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.484476s |  0.14% |  9.15% )   ( 1.462192s |  0.15% |  9.32% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.999690s |  0.09% |  6.16% )   ( 0.954418s |  0.10% |  6.08% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.525649s |  0.05% |  3.24% )   ( 0.518190s |  0.05% |  3.30% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.089073s |  0.10% |  6.71% )   ( 1.018618s |  0.11% |  6.49% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.466188s |  0.04% |  2.87% )   ( 0.443488s |  0.04% |  2.82% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.395490s |  0.13% |  8.60% )   ( 1.314504s |  0.14% |  8.38% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.914669s |  0.28% | 17.97% )   ( 2.881339s |  0.31% | 18.37% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.529877s |  0.05% |  3.26% )   ( 0.496233s |  0.05% |  3.16% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.524441s |  0.05% |  3.23% )   ( 0.482843s |  0.05% |  3.07% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003428s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003751s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005294s |  0.00% |  0.03% )   ( 0.005262s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1015.3.0:       ( 18.970739s |  1.87% |  3.74% )   ( 17.958478s |  1.95% |  3.91% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000686s |  0.00% |  0.00% )   ( 0.000682s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
23.4.0:         ( 18.969968s |  1.87% | 99.99% )   ( 17.957696s |  1.95% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000318s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p8
29.5.0:         ( 0.020562s |  0.00% |  0.10% )   ( 0.020525s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020529s |  0.00% |  0.10% )   ( 0.020488s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020523s |  0.00% |  0.10% )   ( 0.020483s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020501s |  0.00% |  0.10% )   ( 0.020464s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020481s |  0.00% |  0.10% )   ( 0.020447s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004550s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004984s |  0.00% |  0.00% )   ( 0.005556s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p8
40.5.0:         ( 0.422092s |  0.04% |  0.08% )   ( 0.006970s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004513s |  0.00% |  0.00% )   ( 0.005070s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004441s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003567s |  0.00% |  0.00% )   ( 0.004061s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004525s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.034523s |  0.00% |  0.00% )   ( 0.031879s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003796s |  0.00% |  0.00% )   ( 0.004317s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004192s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004862s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004712s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p8
65.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004207s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 18.337447s |  1.81% |  3.71% )   ( 17.736409s |  1.92% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003811s |  0.00% |  0.02% )   ( 0.004367s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.356336s |  0.13% |  7.39% )   ( 1.274764s |  0.13% |  7.18% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.153770s |  0.21% | 11.74% )   ( 2.105634s |  0.22% | 11.87% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.701270s |  0.16% |  9.27% )   ( 1.653563s |  0.17% |  9.32% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.004395s |  0.19% | 10.93% )   ( 1.986081s |  0.21% | 11.19% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.645476s |  0.16% |  8.97% )   ( 1.600921s |  0.17% |  9.02% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.185625s |  0.11% |  6.46% )   ( 1.134238s |  0.12% |  6.39% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.569179s |  0.05% |  3.10% )   ( 0.549022s |  0.05% |  3.09% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.242698s |  0.12% |  6.77% )   ( 1.168048s |  0.12% |  6.58% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.491576s |  0.04% |  2.68% )   ( 0.471261s |  0.05% |  2.65% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.486173s |  0.14% |  8.10% )   ( 1.447084s |  0.15% |  8.15% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.365283s |  0.33% | 18.35% )   ( 3.292104s |  0.35% | 18.56% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.612957s |  0.06% |  3.34% )   ( 0.537837s |  0.05% |  3.03% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.518898s |  0.05% |  2.82% )   ( 0.511485s |  0.05% |  2.88% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003667s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004405s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006000s |  0.00% |  0.03% )   ( 0.006066s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1015.3.0:       ( 16.781670s |  1.66% |  3.30% )   ( 16.135979s |  1.75% |  3.51% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000670s |  0.00% |  0.00% )   ( 0.000686s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
23.4.0:         ( 16.780905s |  1.66% | 99.99% )   ( 16.135187s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000339s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000358s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p9
29.5.0:         ( 0.020744s |  0.00% |  0.12% )   ( 0.020645s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.033284s |  0.00% |  0.19% )   ( 0.033057s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.026074s |  0.00% |  0.15% )   ( 0.025944s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.034540s |  0.00% |  0.20% )   ( 0.034262s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.023446s |  0.00% |  0.13% )   ( 0.023249s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003952s |  0.00% |  0.00% )   ( 0.004445s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003778s |  0.00% |  0.00% )   ( 0.004260s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004784s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p9
40.5.0:         ( 0.274077s |  0.02% |  0.06% )   ( 0.006157s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004135s |  0.00% |  0.00% )   ( 0.004647s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003674s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003374s |  0.00% |  0.00% )   ( 0.003817s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004015s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.028829s |  0.00% |  0.00% )   ( 0.029220s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003381s |  0.00% |  0.00% )   ( 0.003848s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003782s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004726s |  0.00% |  0.00% )   ( 0.004092s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004635s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p9
65.5.0:         ( 0.003504s |  0.00% |  0.00% )   ( 0.003916s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003377s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.269482s |  1.61% |  4.03% )   ( 15.885570s |  1.72% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003419s |  0.00% |  0.02% )   ( 0.003893s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.073217s |  0.10% |  6.59% )   ( 1.055253s |  0.11% |  6.64% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.860521s |  0.18% | 11.43% )   ( 1.837856s |  0.19% | 11.56% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.507225s |  0.14% |  9.26% )   ( 1.489105s |  0.16% |  9.37% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.867942s |  0.18% | 11.48% )   ( 1.826302s |  0.19% | 11.49% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.557726s |  0.15% |  9.57% )   ( 1.480064s |  0.16% |  9.31% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.986648s |  0.09% |  6.06% )   ( 0.960135s |  0.10% |  6.04% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.531775s |  0.05% |  3.26% )   ( 0.506972s |  0.05% |  3.19% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.072374s |  0.10% |  6.59% )   ( 1.023997s |  0.11% |  6.44% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.448522s |  0.04% |  2.75% )   ( 0.439614s |  0.04% |  2.76% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.391784s |  0.13% |  8.55% )   ( 1.348757s |  0.14% |  8.49% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.959865s |  0.29% | 18.19% )   ( 2.937531s |  0.31% | 18.49% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.510536s |  0.05% |  3.13% )   ( 0.492515s |  0.05% |  3.10% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.497928s |  0.04% |  3.06% )   ( 0.483576s |  0.05% |  3.04% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003451s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003356s |  0.00% |  0.00% )   ( 0.003821s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003704s |  0.00% |  0.00% )   ( 0.004176s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009237s |  0.00% |  0.05% )   ( 0.009307s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1015.3.0:       ( 16.686806s |  1.65% |  3.28% )   ( 15.373887s |  1.67% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000712s |  0.00% |  0.00% )   ( 0.000735s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
23.4.0:         ( 16.686008s |  1.65% | 99.99% )   ( 15.373051s |  1.67% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000355s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p10
29.5.0:         ( 0.020712s |  0.00% |  0.12% )   ( 0.020653s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020667s |  0.00% |  0.12% )   ( 0.020625s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020600s |  0.00% |  0.12% )   ( 0.020556s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020681s |  0.00% |  0.12% )   ( 0.020644s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020525s |  0.00% |  0.12% )   ( 0.020489s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004856s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
37.5.0:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004894s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005271s |  0.00% |  0.00% )   ( 0.005859s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p10
40.5.0:         ( 0.499448s |  0.04% |  0.09% )   ( 0.007430s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.005127s |  0.00% |  0.00% )   ( 0.005746s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004865s |  0.00% |  0.00% )   ( 0.005166s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.004246s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004474s |  0.00% |  0.00% )   ( 0.005041s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.038578s |  0.00% |  0.00% )   ( 0.036073s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004195s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.004187s |  0.00% |  0.00% )   ( 0.004735s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004425s |  0.00% |  0.00% )   ( 0.005002s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005443s |  0.00% |  0.00% )   ( 0.006044s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p10
65.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.004250s |  0.00% |  0.00% )   ( 0.004816s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000112s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.965712s |  1.58% |  3.29% )   ( 15.138333s |  1.64% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004319s |  0.00% |  0.02% )   ( 0.004885s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.108578s |  0.10% |  6.94% )   ( 1.025911s |  0.11% |  6.77% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.746983s |  0.17% | 10.94% )   ( 1.674856s |  0.18% | 11.06% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.496513s |  0.14% |  9.37% )   ( 1.446633s |  0.15% |  9.55% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.850958s |  0.18% | 11.59% )   ( 1.673628s |  0.18% | 11.05% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.479225s |  0.14% |  9.26% )   ( 1.394408s |  0.15% |  9.21% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.001499s |  0.09% |  6.27% )   ( 0.945756s |  0.10% |  6.24% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.595591s |  0.05% |  3.73% )   ( 0.546828s |  0.05% |  3.61% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.032010s |  0.10% |  6.46% )   ( 0.962378s |  0.10% |  6.35% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.529289s |  0.05% |  3.31% )   ( 0.492017s |  0.05% |  3.25% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.320835s |  0.13% |  8.27% )   ( 1.272995s |  0.13% |  8.40% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.652061s |  0.26% | 16.61% )   ( 2.581283s |  0.28% | 17.05% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.578427s |  0.05% |  3.62% )   ( 0.562224s |  0.06% |  3.71% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.569424s |  0.05% |  3.56% )   ( 0.554531s |  0.06% |  3.66% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004191s |  0.00% |  0.00% )   ( 0.004746s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004492s |  0.00% |  0.00% )   ( 0.005029s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005044s |  0.00% |  0.03% )   ( 0.005115s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1015.3.0:       ( 18.124754s |  1.79% |  3.57% )   ( 17.146220s |  1.86% |  3.73% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000701s |  0.00% |  0.00% )   ( 0.000719s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
23.4.0:         ( 18.123968s |  1.79% | 99.99% )   ( 17.145402s |  1.86% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p11
29.5.0:         ( 0.021143s |  0.00% |  0.11% )   ( 0.020945s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020800s |  0.00% |  0.11% )   ( 0.020566s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020866s |  0.00% |  0.11% )   ( 0.020713s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020978s |  0.00% |  0.11% )   ( 0.020743s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020691s |  0.00% |  0.11% )   ( 0.020580s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003603s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
37.5.0:         ( 0.003247s |  0.00% |  0.00% )   ( 0.003691s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004275s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p11
40.5.0:         ( 0.378185s |  0.03% |  0.09% )   ( 0.005194s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003899s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003195s |  0.00% |  0.00% )   ( 0.003599s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.002762s |  0.00% |  0.00% )   ( 0.003154s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002962s |  0.00% |  0.00% )   ( 0.003345s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.025984s |  0.00% |  0.00% )   ( 0.023322s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002812s |  0.00% |  0.00% )   ( 0.003199s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002676s |  0.00% |  0.00% )   ( 0.003051s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.007097s |  0.00% |  0.00% )   ( 0.003550s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.003517s |  0.00% |  0.00% )   ( 0.003934s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p11
65.5.0:         ( 0.002860s |  0.00% |  0.00% )   ( 0.003266s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.002875s |  0.00% |  0.00% )   ( 0.003206s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 17.552422s |  1.73% |  4.61% )   ( 16.950734s |  1.84% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.005871s |  0.00% |  0.03% )   ( 0.003275s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.212956s |  0.12% |  6.91% )   ( 1.172530s |  0.12% |  6.91% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.240555s |  0.22% | 12.76% )   ( 2.177176s |  0.23% | 12.84% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.767229s |  0.17% | 10.06% )   ( 1.718982s |  0.18% | 10.14% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.188044s |  0.21% | 12.46% )   ( 2.162569s |  0.23% | 12.75% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.711789s |  0.16% |  9.75% )   ( 1.674717s |  0.18% |  9.87% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.076873s |  0.10% |  6.13% )   ( 1.043341s |  0.11% |  6.15% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.578335s |  0.05% |  3.29% )   ( 0.469056s |  0.05% |  2.76% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.184645s |  0.11% |  6.74% )   ( 1.111592s |  0.12% |  6.55% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.414945s |  0.04% |  2.36% )   ( 0.401216s |  0.04% |  2.36% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.533109s |  0.15% |  8.73% )   ( 1.461519s |  0.15% |  8.62% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.743703s |  0.27% | 15.63% )   ( 2.694669s |  0.29% | 15.89% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.468170s |  0.04% |  2.66% )   ( 0.443922s |  0.04% |  2.61% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.426198s |  0.04% |  2.42% )   ( 0.416170s |  0.04% |  2.45% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003084s |  0.00% |  0.00% )   ( 0.003516s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.002870s |  0.00% |  0.00% )   ( 0.003277s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.006190s |  0.00% |  0.00% )   ( 0.003585s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005046s |  0.00% |  0.02% )   ( 0.005117s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1015.3.0:       ( 16.222830s |  1.60% |  3.19% )   ( 15.319259s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000721s |  0.00% |  0.00% )   ( 0.000738s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
23.4.0:         ( 16.222023s |  1.60% | 99.99% )   ( 15.318421s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p12
29.5.0:         ( 0.020708s |  0.00% |  0.12% )   ( 0.020585s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020495s |  0.00% |  0.12% )   ( 0.020459s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020532s |  0.00% |  0.12% )   ( 0.020495s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020495s |  0.00% |  0.12% )   ( 0.020459s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020461s |  0.00% |  0.12% )   ( 0.020423s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004760s |  0.00% |  0.00% )   ( 0.005317s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004097s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005207s |  0.00% |  0.00% )   ( 0.005782s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p12
40.5.0:         ( 0.417127s |  0.04% |  0.08% )   ( 0.007486s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.008065s |  0.00% |  0.00% )   ( 0.005330s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004482s |  0.00% |  0.00% )   ( 0.005055s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003958s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004223s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.040374s |  0.00% |  0.00% )   ( 0.034821s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004190s |  0.00% |  0.00% )   ( 0.004756s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.004100s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.007498s |  0.00% |  0.00% )   ( 0.005143s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005136s |  0.00% |  0.00% )   ( 0.005724s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p12
65.5.0:         ( 0.004455s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.576457s |  1.54% |  3.42% )   ( 15.085300s |  1.64% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003990s |  0.00% |  0.02% )   ( 0.004559s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.025257s |  0.10% |  6.58% )   ( 1.022488s |  0.11% |  6.77% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.690301s |  0.16% | 10.85% )   ( 1.665246s |  0.18% | 11.03% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.489976s |  0.14% |  9.56% )   ( 1.440410s |  0.15% |  9.54% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.747536s |  0.17% | 11.21% )   ( 1.685180s |  0.18% | 11.17% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.415314s |  0.14% |  9.08% )   ( 1.399401s |  0.15% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.966789s |  0.09% |  6.20% )   ( 0.935364s |  0.10% |  6.20% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.574469s |  0.05% |  3.68% )   ( 0.556154s |  0.06% |  3.68% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.995650s |  0.09% |  6.39% )   ( 0.947159s |  0.10% |  6.27% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.538596s |  0.05% |  3.45% )   ( 0.489782s |  0.05% |  3.24% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.329079s |  0.13% |  8.53% )   ( 1.277754s |  0.13% |  8.47% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.619321s |  0.25% | 16.81% )   ( 2.567087s |  0.27% | 17.01% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.579708s |  0.05% |  3.72% )   ( 0.545095s |  0.05% |  3.61% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.600471s |  0.05% |  3.85% )   ( 0.549621s |  0.05% |  3.64% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004786s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003933s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004418s |  0.00% |  0.00% )   ( 0.004967s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.007809s |  0.00% |  0.04% )   ( 0.007887s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1015.3.0:       ( 16.505337s |  1.63% |  3.25% )   ( 15.741643s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000782s |  0.00% |  0.00% )   ( 0.000801s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
23.4.0:         ( 16.504471s |  1.63% | 99.99% )   ( 15.740743s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p13
29.5.0:         ( 0.020665s |  0.00% |  0.12% )   ( 0.020585s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020520s |  0.00% |  0.12% )   ( 0.020483s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.020527s |  0.00% |  0.12% )   ( 0.020489s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020632s |  0.00% |  0.12% )   ( 0.020592s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.020606s |  0.00% |  0.12% )   ( 0.020562s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004396s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003527s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004316s |  0.00% |  0.00% )   ( 0.004816s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p13
40.5.0:         ( 0.289299s |  0.02% |  0.07% )   ( 0.006437s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004164s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004042s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004215s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003904s |  0.00% |  0.00% )   ( 0.004395s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.032219s |  0.00% |  0.00% )   ( 0.029663s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003776s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003541s |  0.00% |  0.00% )   ( 0.004008s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003895s |  0.00% |  0.00% )   ( 0.004402s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005191s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p13
65.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004123s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003885s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.001161s |  1.58% |  4.03% )   ( 15.521045s |  1.68% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003462s |  0.00% |  0.02% )   ( 0.003939s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.108314s |  0.10% |  6.92% )   ( 1.027636s |  0.11% |  6.62% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.887246s |  0.18% | 11.79% )   ( 1.794075s |  0.19% | 11.55% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.567089s |  0.15% |  9.79% )   ( 1.472721s |  0.16% |  9.48% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.822227s |  0.18% | 11.38% )   ( 1.791541s |  0.19% | 11.54% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.453167s |  0.14% |  9.08% )   ( 1.442556s |  0.15% |  9.29% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.966881s |  0.09% |  6.04% )   ( 0.955805s |  0.10% |  6.15% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.541731s |  0.05% |  3.38% )   ( 0.497409s |  0.05% |  3.20% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.038743s |  0.10% |  6.49% )   ( 1.004648s |  0.10% |  6.47% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.442827s |  0.04% |  2.76% )   ( 0.426323s |  0.04% |  2.74% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.312440s |  0.12% |  8.20% )   ( 1.285918s |  0.13% |  8.28% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.877134s |  0.28% | 17.98% )   ( 2.854097s |  0.31% | 18.38% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.500261s |  0.04% |  3.12% )   ( 0.494629s |  0.05% |  3.18% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.479639s |  0.04% |  2.99% )   ( 0.469748s |  0.05% |  3.02% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003399s |  0.00% |  0.00% )   ( 0.003876s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003468s |  0.00% |  0.00% )   ( 0.003921s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
66.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
75.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
78.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.DsviNd"/.quit
79.5.0:         ( 0.000237s |  0.00% |  0.00% )   ( 0.000255s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p* 1>&21
80.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.016383s |  0.00% |  0.09% )   ( 0.010331s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1015.3.0:       ( 16.582769s |  1.64% |  3.26% )   ( 15.614736s |  1.69% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000886s |  0.00% |  0.00% )   ( 0.000915s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
23.4.0:         ( 16.581713s |  1.64% | 99.99% )   ( 15.613624s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p14
29.5.0:         ( 0.039234s |  0.00% |  0.23% )   ( 0.039105s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039585s |  0.00% |  0.23% )   ( 0.039453s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.039216s |  0.00% |  0.23% )   ( 0.039079s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.039484s |  0.00% |  0.23% )   ( 0.039332s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.039240s |  0.00% |  0.23% )   ( 0.039101s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004689s |  0.00% |  0.00% )   ( 0.005225s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004957s |  0.00% |  0.00% )   ( 0.005466s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p14
40.5.0:         ( 0.329554s |  0.03% |  0.07% )   ( 0.006632s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.008298s |  0.00% |  0.00% )   ( 0.005255s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004159s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.004020s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004142s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031813s |  0.00% |  0.00% )   ( 0.032275s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003775s |  0.00% |  0.00% )   ( 0.004266s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.013368s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004701s |  0.00% |  0.00% )   ( 0.005241s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p14
65.5.0:         ( 0.003855s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003787s |  0.00% |  0.00% )   ( 0.004315s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.931393s |  1.57% |  3.69% )   ( 15.293690s |  1.66% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003844s |  0.00% |  0.02% )   ( 0.004398s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.054191s |  0.10% |  6.61% )   ( 1.032140s |  0.11% |  6.74% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.743472s |  0.17% | 10.94% )   ( 1.723705s |  0.18% | 11.27% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.550499s |  0.15% |  9.73% )   ( 1.484317s |  0.16% |  9.70% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.784415s |  0.17% | 11.20% )   ( 1.719349s |  0.18% | 11.24% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.477400s |  0.14% |  9.27% )   ( 1.394649s |  0.15% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.968629s |  0.09% |  6.08% )   ( 0.930722s |  0.10% |  6.08% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.551511s |  0.05% |  3.46% )   ( 0.512893s |  0.05% |  3.35% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.013741s |  0.10% |  6.36% )   ( 0.972362s |  0.10% |  6.35% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.486392s |  0.04% |  3.05% )   ( 0.451879s |  0.04% |  2.95% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.353841s |  0.13% |  8.49% )   ( 1.278204s |  0.13% |  8.35% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.809724s |  0.27% | 17.63% )   ( 2.758667s |  0.30% | 18.03% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.580433s |  0.05% |  3.64% )   ( 0.525341s |  0.05% |  3.43% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.553301s |  0.05% |  3.47% )   ( 0.505064s |  0.05% |  3.30% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003952s |  0.00% |  0.00% )   ( 0.004473s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003744s |  0.00% |  0.00% )   ( 0.004255s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.007351s |  0.00% |  0.00% )   ( 0.004688s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008126s |  0.00% |  0.04% )   ( 0.008201s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000170s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1015.3.0:       ( 18.975068s |  1.87% |  3.74% )   ( 17.844019s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001029s |  0.00% |  0.00% )   ( 0.001053s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
23.4.0:         ( 18.973895s |  1.87% | 99.99% )   ( 17.842801s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p15
29.5.0:         ( 0.020717s |  0.00% |  0.10% )   ( 0.020670s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.022979s |  0.00% |  0.12% )   ( 0.022915s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.022231s |  0.00% |  0.11% )   ( 0.022183s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.020664s |  0.00% |  0.10% )   ( 0.020613s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.022967s |  0.00% |  0.12% )   ( 0.022904s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004247s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004501s |  0.00% |  0.00% )   ( 0.004999s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p15
40.5.0:         ( 0.351229s |  0.03% |  0.07% )   ( 0.006259s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003669s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003454s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.030963s |  0.00% |  0.00% )   ( 0.028366s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003595s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003578s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.007130s |  0.00% |  0.00% )   ( 0.004311s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004366s |  0.00% |  0.00% )   ( 0.004872s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p15
65.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003994s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003513s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 18.412228s |  1.82% |  3.88% )   ( 17.624332s |  1.91% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003441s |  0.00% |  0.01% )   ( 0.003926s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.326726s |  0.13% |  7.20% )   ( 1.273330s |  0.13% |  7.22% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.093258s |  0.20% | 11.36% )   ( 2.077997s |  0.22% | 11.79% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.670504s |  0.16% |  9.07% )   ( 1.657700s |  0.18% |  9.40% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.073513s |  0.20% | 11.26% )   ( 2.008151s |  0.21% | 11.39% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.647955s |  0.16% |  8.95% )   ( 1.598893s |  0.17% |  9.07% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.203895s |  0.11% |  6.53% )   ( 1.108307s |  0.12% |  6.28% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.543530s |  0.05% |  2.95% )   ( 0.532632s |  0.05% |  3.02% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.240290s |  0.12% |  6.73% )   ( 1.165160s |  0.12% |  6.61% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.529018s |  0.05% |  2.87% )   ( 0.466040s |  0.05% |  2.64% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.522059s |  0.15% |  8.26% )   ( 1.431824s |  0.15% |  8.12% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.391468s |  0.33% | 18.41% )   ( 3.263260s |  0.35% | 18.51% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.591974s |  0.05% |  3.21% )   ( 0.530351s |  0.05% |  3.00% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.574597s |  0.05% |  3.12% )   ( 0.506761s |  0.05% |  2.87% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003687s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003413s |  0.00% |  0.00% )   ( 0.003863s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003663s |  0.00% |  0.00% )   ( 0.004119s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005331s |  0.00% |  0.02% )   ( 0.005403s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1015.3.0:       ( 18.458250s |  1.82% |  3.63% )   ( 17.846197s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001045s |  0.00% |  0.00% )   ( 0.001067s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
23.4.0:         ( 18.457059s |  1.82% | 99.99% )   ( 17.844962s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p16
29.5.0:         ( 0.035503s |  0.00% |  0.19% )   ( 0.035400s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.036551s |  0.00% |  0.19% )   ( 0.036452s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.034016s |  0.00% |  0.18% )   ( 0.033912s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.039042s |  0.00% |  0.21% )   ( 0.038912s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.039233s |  0.00% |  0.21% )   ( 0.039116s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002629s |  0.00% |  0.00% )   ( 0.002973s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
37.5.0:         ( 0.002433s |  0.00% |  0.00% )   ( 0.002767s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002912s |  0.00% |  0.00% )   ( 0.003251s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p16
40.5.0:         ( 0.263888s |  0.02% |  0.08% )   ( 0.004241s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002712s |  0.00% |  0.00% )   ( 0.003033s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004327s |  0.00% |  0.00% )   ( 0.002788s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.002237s |  0.00% |  0.00% )   ( 0.002516s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002396s |  0.00% |  0.00% )   ( 0.002702s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.019149s |  0.00% |  0.00% )   ( 0.019361s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002225s |  0.00% |  0.00% )   ( 0.002530s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002230s |  0.00% |  0.00% )   ( 0.002511s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003404s |  0.00% |  0.00% )   ( 0.002681s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.002857s |  0.00% |  0.00% )   ( 0.003145s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p16
65.5.0:         ( 0.002221s |  0.00% |  0.00% )   ( 0.002525s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.002229s |  0.00% |  0.00% )   ( 0.002530s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 17.941904s |  1.77% |  6.48% )   ( 17.587533s |  1.91% |  6.57% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002392s |  0.00% |  0.01% )   ( 0.002719s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.221667s |  0.12% |  6.80% )   ( 1.198887s |  0.13% |  6.81% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.365821s |  0.23% | 13.18% )   ( 2.349301s |  0.25% | 13.35% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.896309s |  0.18% | 10.56% )   ( 1.791427s |  0.19% | 10.18% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.415923s |  0.23% | 13.46% )   ( 2.312157s |  0.25% | 13.14% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.757740s |  0.17% |  9.79% )   ( 1.736350s |  0.18% |  9.87% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.047301s |  0.10% |  5.83% )   ( 1.038150s |  0.11% |  5.90% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.397938s |  0.03% |  2.21% )   ( 0.396864s |  0.04% |  2.25% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.160229s |  0.11% |  6.46% )   ( 1.143915s |  0.12% |  6.50% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.328016s |  0.03% |  1.82% )   ( 0.329848s |  0.03% |  1.87% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.439566s |  0.14% |  8.02% )   ( 1.425259s |  0.15% |  8.10% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.178588s |  0.31% | 17.71% )   ( 3.161538s |  0.34% | 17.97% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.360710s |  0.03% |  2.01% )   ( 0.360022s |  0.03% |  2.04% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.369704s |  0.03% |  2.06% )   ( 0.341096s |  0.03% |  1.93% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002165s |  0.00% |  0.00% )   ( 0.002458s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.002121s |  0.00% |  0.00% )   ( 0.002411s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.002299s |  0.00% |  0.00% )   ( 0.002590s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005057s |  0.00% |  0.02% )   ( 0.005134s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1015.3.0:       ( 16.696438s |  1.65% |  3.29% )   ( 15.549399s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
23.4.0:         ( 16.695250s |  1.65% | 99.99% )   ( 15.548164s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p17
29.5.0:         ( 0.036062s |  0.00% |  0.21% )   ( 0.035930s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.023416s |  0.00% |  0.14% )   ( 0.023339s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.027950s |  0.00% |  0.16% )   ( 0.027862s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.039094s |  0.00% |  0.23% )   ( 0.038948s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.037807s |  0.00% |  0.22% )   ( 0.037688s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003602s |  0.00% |  0.00% )   ( 0.004096s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005224s |  0.00% |  0.00% )   ( 0.005031s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p17
40.5.0:         ( 0.481732s |  0.04% |  0.11% )   ( 0.006255s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003686s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003491s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003770s |  0.00% |  0.00% )   ( 0.004254s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031375s |  0.00% |  0.00% )   ( 0.028764s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003373s |  0.00% |  0.00% )   ( 0.003822s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003374s |  0.00% |  0.00% )   ( 0.003852s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.007987s |  0.00% |  0.00% )   ( 0.004351s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004238s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p17
65.5.0:         ( 0.003490s |  0.00% |  0.00% )   ( 0.003969s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003421s |  0.00% |  0.00% )   ( 0.003896s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.947457s |  1.57% |  3.98% )   ( 15.275928s |  1.66% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003393s |  0.00% |  0.02% )   ( 0.003867s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.055761s |  0.10% |  6.62% )   ( 1.000314s |  0.10% |  6.54% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.809885s |  0.17% | 11.34% )   ( 1.741441s |  0.18% | 11.39% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.572737s |  0.15% |  9.86% )   ( 1.467346s |  0.15% |  9.60% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.791450s |  0.17% | 11.23% )   ( 1.731631s |  0.18% | 11.33% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.450326s |  0.14% |  9.09% )   ( 1.425883s |  0.15% |  9.33% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.002013s |  0.09% |  6.28% )   ( 0.935710s |  0.10% |  6.12% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.532586s |  0.05% |  3.33% )   ( 0.494033s |  0.05% |  3.23% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.068761s |  0.10% |  6.70% )   ( 0.986188s |  0.10% |  6.45% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.471915s |  0.04% |  2.95% )   ( 0.438779s |  0.04% |  2.87% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.326860s |  0.13% |  8.32% )   ( 1.278384s |  0.13% |  8.36% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.875149s |  0.28% | 18.02% )   ( 2.814659s |  0.30% | 18.42% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.521100s |  0.05% |  3.26% )   ( 0.494589s |  0.05% |  3.23% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.465521s |  0.04% |  2.91% )   ( 0.463104s |  0.05% |  3.03% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003514s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003300s |  0.00% |  0.00% )   ( 0.003746s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003562s |  0.00% |  0.00% )   ( 0.004026s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005067s |  0.00% |  0.03% )   ( 0.005126s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1015.3.0:       ( 19.589927s |  1.93% |  3.86% )   ( 18.602436s |  2.02% |  4.05% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001074s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
23.4.0:         ( 19.588735s |  1.93% | 99.99% )   ( 18.601192s |  2.02% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p18
29.5.0:         ( 0.038460s |  0.00% |  0.19% )   ( 0.038330s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.026660s |  0.00% |  0.13% )   ( 0.026572s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.023782s |  0.00% |  0.12% )   ( 0.023711s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.026167s |  0.00% |  0.13% )   ( 0.026080s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.028495s |  0.00% |  0.14% )   ( 0.028398s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004358s |  0.00% |  0.00% )   ( 0.004900s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.004000s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004847s |  0.00% |  0.00% )   ( 0.005401s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p18
40.5.0:         ( 0.305377s |  0.03% |  0.05% )   ( 0.006475s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004424s |  0.00% |  0.00% )   ( 0.004990s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004269s |  0.00% |  0.00% )   ( 0.004811s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004517s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.034943s |  0.00% |  0.00% )   ( 0.032371s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003823s |  0.00% |  0.00% )   ( 0.004331s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.006916s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004666s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004886s |  0.00% |  0.00% )   ( 0.005439s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p18
65.5.0:         ( 0.003824s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003655s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 19.026196s |  1.88% |  3.73% )   ( 18.337811s |  1.99% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.006865s |  0.00% |  0.03% )   ( 0.004387s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.370947s |  0.13% |  7.20% )   ( 1.342491s |  0.14% |  7.32% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.096421s |  0.20% | 11.01% )   ( 2.064391s |  0.22% | 11.25% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.744524s |  0.17% |  9.16% )   ( 1.702842s |  0.18% |  9.28% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.121991s |  0.21% | 11.15% )   ( 2.076848s |  0.22% | 11.32% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.712577s |  0.16% |  9.00% )   ( 1.648721s |  0.17% |  8.99% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.193739s |  0.11% |  6.27% )   ( 1.167222s |  0.12% |  6.36% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.608385s |  0.06% |  3.19% )   ( 0.565363s |  0.06% |  3.08% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.242570s |  0.12% |  6.53% )   ( 1.212740s |  0.13% |  6.61% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.532521s |  0.05% |  2.79% )   ( 0.490000s |  0.05% |  2.67% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.622582s |  0.16% |  8.52% )   ( 1.530014s |  0.16% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.608204s |  0.35% | 18.96% )   ( 3.443637s |  0.37% | 18.77% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.588584s |  0.05% |  3.09% )   ( 0.555069s |  0.06% |  3.02% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.576286s |  0.05% |  3.02% )   ( 0.534086s |  0.05% |  2.91% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003934s |  0.00% |  0.00% )   ( 0.004457s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003781s |  0.00% |  0.00% )   ( 0.004305s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.007164s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005152s |  0.00% |  0.02% )   ( 0.005222s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1015.3.0:       ( 16.272562s |  1.61% |  3.20% )   ( 15.037216s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001104s |  0.00% |  0.00% )   ( 0.001129s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
23.4.0:         ( 16.271290s |  1.61% | 99.99% )   ( 15.035907s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p19
29.5.0:         ( 0.038740s |  0.00% |  0.23% )   ( 0.038610s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.036139s |  0.00% |  0.22% )   ( 0.036015s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.039373s |  0.00% |  0.24% )   ( 0.039251s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.037166s |  0.00% |  0.22% )   ( 0.037045s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.038986s |  0.00% |  0.23% )   ( 0.038860s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004225s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003668s |  0.00% |  0.00% )   ( 0.004173s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004776s |  0.00% |  0.00% )   ( 0.005236s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p19
40.5.0:         ( 0.393059s |  0.03% |  0.09% )   ( 0.006325s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004155s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.005791s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003501s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004118s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.030121s |  0.00% |  0.00% )   ( 0.030561s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003983s |  0.00% |  0.00% )   ( 0.004502s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003673s |  0.00% |  0.00% )   ( 0.004167s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.005433s |  0.00% |  0.00% )   ( 0.004734s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004701s |  0.00% |  0.00% )   ( 0.005232s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p19
65.5.0:         ( 0.003805s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004130s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.579931s |  1.54% |  3.83% )   ( 14.726222s |  1.60% |  3.91% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003458s |  0.00% |  0.02% )   ( 0.003953s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.099039s |  0.10% |  7.05% )   ( 0.981132s |  0.10% |  6.66% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.693349s |  0.16% | 10.86% )   ( 1.642096s |  0.17% | 11.15% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.469126s |  0.14% |  9.42% )   ( 1.425827s |  0.15% |  9.68% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.792875s |  0.17% | 11.50% )   ( 1.679509s |  0.18% | 11.40% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.452192s |  0.14% |  9.32% )   ( 1.368702s |  0.14% |  9.29% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.976852s |  0.09% |  6.26% )   ( 0.906370s |  0.09% |  6.15% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.550972s |  0.05% |  3.53% )   ( 0.493836s |  0.05% |  3.35% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.008751s |  0.09% |  6.47% )   ( 0.930895s |  0.10% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.494234s |  0.04% |  3.17% )   ( 0.439462s |  0.04% |  2.98% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.338881s |  0.13% |  8.59% )   ( 1.246647s |  0.13% |  8.46% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.696198s |  0.26% | 17.30% )   ( 2.622262s |  0.28% | 17.80% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.510471s |  0.05% |  3.27% )   ( 0.503398s |  0.05% |  3.41% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.493533s |  0.04% |  3.16% )   ( 0.482133s |  0.05% |  3.27% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003683s |  0.00% |  0.00% )   ( 0.004145s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003409s |  0.00% |  0.00% )   ( 0.003904s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003898s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
66.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
75.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
78.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.DsviNd"/.quit
79.5.0:         ( 0.000220s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p* 1>&21
80.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009201s |  0.00% |  0.05% )   ( 0.009277s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1015.3.0:       ( 17.541763s |  1.73% |  3.45% )   ( 16.930753s |  1.84% |  3.68% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001053s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
23.4.0:         ( 17.540547s |  1.73% | 99.99% )   ( 16.929493s |  1.84% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p20
29.5.0:         ( 0.039286s |  0.00% |  0.22% )   ( 0.039158s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039233s |  0.00% |  0.22% )   ( 0.039112s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.039425s |  0.00% |  0.22% )   ( 0.039275s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.033654s |  0.00% |  0.19% )   ( 0.033539s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.042671s |  0.00% |  0.24% )   ( 0.042498s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004309s |  0.00% |  0.00% )   ( 0.004860s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004148s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004633s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p20
40.5.0:         ( 0.311068s |  0.03% |  0.06% )   ( 0.005966s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003936s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003863s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.037535s |  0.00% |  0.00% )   ( 0.031000s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003598s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003699s |  0.00% |  0.00% )   ( 0.004157s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.009338s |  0.00% |  0.00% )   ( 0.004506s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.004939s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p20
65.5.0:         ( 0.003637s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003547s |  0.00% |  0.00% )   ( 0.004035s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.923763s |  1.67% |  3.85% )   ( 16.622294s |  1.80% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003487s |  0.00% |  0.02% )   ( 0.003985s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.181458s |  0.11% |  6.98% )   ( 1.156423s |  0.12% |  6.95% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.058404s |  0.20% | 12.16% )   ( 2.017202s |  0.21% | 12.13% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.688420s |  0.16% |  9.97% )   ( 1.659536s |  0.18% |  9.98% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.040069s |  0.20% | 12.05% )   ( 2.011152s |  0.21% | 12.09% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.556347s |  0.15% |  9.19% )   ( 1.547195s |  0.16% |  9.30% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.039731s |  0.10% |  6.14% )   ( 1.004548s |  0.10% |  6.04% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.523964s |  0.05% |  3.09% )   ( 0.505438s |  0.05% |  3.04% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.044261s |  0.10% |  6.17% )   ( 1.035751s |  0.11% |  6.23% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.448889s |  0.04% |  2.65% )   ( 0.446650s |  0.04% |  2.68% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.391593s |  0.13% |  8.22% )   ( 1.326833s |  0.14% |  7.98% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.934020s |  0.29% | 17.33% )   ( 2.911874s |  0.31% | 17.51% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.522711s |  0.05% |  3.08% )   ( 0.513234s |  0.05% |  3.08% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.490409s |  0.04% |  2.89% )   ( 0.482473s |  0.05% |  2.90% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003648s |  0.00% |  0.00% )   ( 0.004158s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003521s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004232s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005236s |  0.00% |  0.02% )   ( 0.005302s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000163s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1015.3.0:       ( 16.453462s |  1.62% |  3.24% )   ( 15.499988s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001068s |  0.00% |  0.00% )   ( 0.001096s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
23.4.0:         ( 16.452242s |  1.62% | 99.99% )   ( 15.498718s |  1.68% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p21
29.5.0:         ( 0.037129s |  0.00% |  0.22% )   ( 0.036849s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.043275s |  0.00% |  0.26% )   ( 0.042883s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.041774s |  0.00% |  0.25% )   ( 0.041389s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.038105s |  0.00% |  0.23% )   ( 0.037807s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.036059s |  0.00% |  0.21% )   ( 0.035786s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004351s |  0.00% |  0.00% )   ( 0.004853s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004715s |  0.00% |  0.00% )   ( 0.005254s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p21
40.5.0:         ( 0.297977s |  0.02% |  0.07% )   ( 0.006387s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004068s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003754s |  0.00% |  0.00% )   ( 0.004249s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003439s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003651s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.030642s |  0.00% |  0.00% )   ( 0.028019s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003368s |  0.00% |  0.00% )   ( 0.003816s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003347s |  0.00% |  0.00% )   ( 0.003790s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004122s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004335s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p21
65.5.0:         ( 0.003399s |  0.00% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003430s |  0.00% |  0.00% )   ( 0.003903s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.855627s |  1.57% |  4.01% )   ( 15.190002s |  1.65% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003578s |  0.00% |  0.02% )   ( 0.004064s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.085915s |  0.10% |  6.84% )   ( 1.022411s |  0.11% |  6.73% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.816667s |  0.17% | 11.45% )   ( 1.748444s |  0.19% | 11.51% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.501433s |  0.14% |  9.46% )   ( 1.460004s |  0.15% |  9.61% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.822005s |  0.18% | 11.49% )   ( 1.736187s |  0.18% | 11.42% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.457877s |  0.14% |  9.19% )   ( 1.395435s |  0.15% |  9.18% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.959991s |  0.09% |  6.05% )   ( 0.911939s |  0.09% |  6.00% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.512991s |  0.05% |  3.23% )   ( 0.489865s |  0.05% |  3.22% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.021883s |  0.10% |  6.44% )   ( 0.966767s |  0.10% |  6.36% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.458864s |  0.04% |  2.89% )   ( 0.428316s |  0.04% |  2.81% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.364810s |  0.13% |  8.60% )   ( 1.275805s |  0.13% |  8.39% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.849979s |  0.28% | 17.97% )   ( 2.785496s |  0.30% | 18.33% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.519306s |  0.05% |  3.27% )   ( 0.493180s |  0.05% |  3.24% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.480328s |  0.04% |  3.02% )   ( 0.472089s |  0.05% |  3.10% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003848s |  0.00% |  0.00% )   ( 0.004366s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003812s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.010135s |  0.00% |  0.06% )   ( 0.010218s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1015.3.0:       ( 16.037870s |  1.58% |  3.16% )   ( 15.323932s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001079s |  0.00% |  0.00% )   ( 0.001107s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
23.4.0:         ( 16.036642s |  1.58% | 99.99% )   ( 15.322655s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p22
29.5.0:         ( 0.034597s |  0.00% |  0.21% )   ( 0.034451s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039011s |  0.00% |  0.24% )   ( 0.038868s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.042607s |  0.00% |  0.26% )   ( 0.042463s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.039439s |  0.00% |  0.24% )   ( 0.039286s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.042755s |  0.00% |  0.26% )   ( 0.042614s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.005000s |  0.00% |  0.00% )   ( 0.005600s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004422s |  0.00% |  0.00% )   ( 0.005016s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005380s |  0.00% |  0.00% )   ( 0.005985s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p22
40.5.0:         ( 0.307978s |  0.03% |  0.06% )   ( 0.007054s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005169s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004208s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004145s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031598s |  0.00% |  0.00% )   ( 0.032054s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003998s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004384s |  0.00% |  0.00% )   ( 0.004927s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005161s |  0.00% |  0.00% )   ( 0.005761s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p22
65.5.0:         ( 0.004018s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003886s |  0.00% |  0.00% )   ( 0.004405s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.415785s |  1.52% |  3.43% )   ( 14.996886s |  1.63% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004275s |  0.00% |  0.02% )   ( 0.004846s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.065741s |  0.10% |  6.91% )   ( 1.012538s |  0.11% |  6.75% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.703651s |  0.16% | 11.05% )   ( 1.645899s |  0.17% | 10.97% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.472100s |  0.14% |  9.54% )   ( 1.449182s |  0.15% |  9.66% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.641571s |  0.16% | 10.64% )   ( 1.632131s |  0.17% | 10.88% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.429291s |  0.14% |  9.27% )   ( 1.381276s |  0.15% |  9.21% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.957713s |  0.09% |  6.21% )   ( 0.916765s |  0.09% |  6.11% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.555556s |  0.05% |  3.60% )   ( 0.543204s |  0.05% |  3.62% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.000042s |  0.09% |  6.48% )   ( 0.951570s |  0.10% |  6.34% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.516206s |  0.05% |  3.34% )   ( 0.481832s |  0.05% |  3.21% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.300411s |  0.12% |  8.43% )   ( 1.275094s |  0.13% |  8.50% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.648421s |  0.26% | 17.17% )   ( 2.600377s |  0.28% | 17.33% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.573618s |  0.05% |  3.72% )   ( 0.560452s |  0.06% |  3.73% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.547189s |  0.05% |  3.54% )   ( 0.541720s |  0.05% |  3.61% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004308s |  0.00% |  0.00% )   ( 0.004868s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003792s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.007255s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008917s |  0.00% |  0.05% )   ( 0.008985s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1015.3.0:       ( 17.216384s |  1.70% |  3.39% )   ( 16.717697s |  1.81% |  3.64% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.000996s |  0.00% |  0.00% )   ( 0.001028s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
23.4.0:         ( 17.215207s |  1.70% | 99.99% )   ( 16.716465s |  1.81% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p23
29.5.0:         ( 0.039294s |  0.00% |  0.22% )   ( 0.039155s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039553s |  0.00% |  0.22% )   ( 0.039413s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.039263s |  0.00% |  0.22% )   ( 0.039119s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.032238s |  0.00% |  0.18% )   ( 0.032127s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.039514s |  0.00% |  0.22% )   ( 0.039381s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002515s |  0.00% |  0.00% )   ( 0.002826s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
37.5.0:         ( 0.002284s |  0.00% |  0.00% )   ( 0.002578s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002775s |  0.00% |  0.00% )   ( 0.003082s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p23
40.5.0:         ( 0.146584s |  0.01% |  0.05% )   ( 0.003706s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002327s |  0.00% |  0.00% )   ( 0.002618s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.002200s |  0.00% |  0.00% )   ( 0.002487s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.001967s |  0.00% |  0.00% )   ( 0.002237s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002108s |  0.00% |  0.00% )   ( 0.002374s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.017947s |  0.00% |  0.00% )   ( 0.018190s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002055s |  0.00% |  0.00% )   ( 0.002340s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002046s |  0.00% |  0.00% )   ( 0.002329s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.008521s |  0.00% |  0.00% )   ( 0.002527s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002768s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p23
65.5.0:         ( 0.001978s |  0.00% |  0.00% )   ( 0.002238s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.005007s |  0.00% |  0.00% )   ( 0.002293s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.808160s |  1.66% |  6.97% )   ( 16.457170s |  1.78% |  7.03% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001953s |  0.00% |  0.01% )   ( 0.002233s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.087967s |  0.10% |  6.47% )   ( 1.072104s |  0.11% |  6.51% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.056170s |  0.20% | 12.23% )   ( 2.034746s |  0.22% | 12.36% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.571684s |  0.15% |  9.35% )   ( 1.534938s |  0.16% |  9.32% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.057136s |  0.20% | 12.23% )   ( 2.038935s |  0.22% | 12.38% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.554492s |  0.15% |  9.24% )   ( 1.545837s |  0.16% |  9.39% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.958034s |  0.09% |  5.69% )   ( 0.950401s |  0.10% |  5.77% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.376939s |  0.03% |  2.24% )   ( 0.367084s |  0.03% |  2.23% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.094585s |  0.10% |  6.51% )   ( 1.044469s |  0.11% |  6.34% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.332376s |  0.03% |  1.97% )   ( 0.300878s |  0.03% |  1.82% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.380047s |  0.13% |  8.21% )   ( 1.316201s |  0.14% |  7.99% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.621503s |  0.35% | 21.54% )   ( 3.588561s |  0.39% | 21.80% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.357088s |  0.03% |  2.12% )   ( 0.340548s |  0.03% |  2.06% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.358186s |  0.03% |  2.13% )   ( 0.320235s |  0.03% |  1.94% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002146s |  0.00% |  0.00% )   ( 0.002453s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.001959s |  0.00% |  0.00% )   ( 0.002233s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.002049s |  0.00% |  0.00% )   ( 0.002316s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006781s |  0.00% |  0.03% )   ( 0.006854s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1015.3.0:       ( 16.782387s |  1.66% |  3.30% )   ( 15.820872s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001062s |  0.00% |  0.00% )   ( 0.001092s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
23.4.0:         ( 16.781178s |  1.66% | 99.99% )   ( 15.819610s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p24
29.5.0:         ( 0.038744s |  0.00% |  0.23% )   ( 0.038602s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.040820s |  0.00% |  0.24% )   ( 0.040683s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.040660s |  0.00% |  0.24% )   ( 0.040492s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.041995s |  0.00% |  0.25% )   ( 0.041841s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.037271s |  0.00% |  0.22% )   ( 0.037136s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004165s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004231s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004514s |  0.00% |  0.00% )   ( 0.005024s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p24
40.5.0:         ( 0.344620s |  0.03% |  0.08% )   ( 0.006205s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004469s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004319s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003754s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.033526s |  0.00% |  0.00% )   ( 0.030928s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003544s |  0.00% |  0.00% )   ( 0.004019s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003503s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004385s |  0.00% |  0.00% )   ( 0.004918s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p24
65.5.0:         ( 0.003765s |  0.00% |  0.00% )   ( 0.004105s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003386s |  0.00% |  0.00% )   ( 0.003872s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 16.135377s |  1.59% |  4.00% )   ( 15.507647s |  1.68% |  4.08% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003476s |  0.00% |  0.02% )   ( 0.003970s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.098231s |  0.10% |  6.80% )   ( 1.051581s |  0.11% |  6.78% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.884481s |  0.18% | 11.67% )   ( 1.813274s |  0.19% | 11.69% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.584966s |  0.15% |  9.82% )   ( 1.515170s |  0.16% |  9.77% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.833859s |  0.18% | 11.36% )   ( 1.787008s |  0.19% | 11.52% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.478504s |  0.14% |  9.16% )   ( 1.454162s |  0.15% |  9.37% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.001776s |  0.09% |  6.20% )   ( 0.945629s |  0.10% |  6.09% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.537845s |  0.05% |  3.33% )   ( 0.493815s |  0.05% |  3.18% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.011246s |  0.10% |  6.26% )   ( 0.983208s |  0.10% |  6.34% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.470077s |  0.04% |  2.91% )   ( 0.433785s |  0.04% |  2.79% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.355362s |  0.13% |  8.39% )   ( 1.311370s |  0.14% |  8.45% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.808253s |  0.27% | 17.40% )   ( 2.731434s |  0.29% | 17.61% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.531872s |  0.05% |  3.29% )   ( 0.494253s |  0.05% |  3.18% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.535429s |  0.05% |  3.31% )   ( 0.488988s |  0.05% |  3.15% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003569s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003231s |  0.00% |  0.00% )   ( 0.003687s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.003579s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006644s |  0.00% |  0.03% )   ( 0.006688s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1015.3.0:       ( 20.208791s |  2.00% |  3.98% )   ( 19.276723s |  2.09% |  4.19% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001094s |  0.00% |  0.00% )   ( 0.001130s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
23.4.0:         ( 20.207547s |  2.00% | 99.99% )   ( 19.275421s |  2.09% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p25
29.5.0:         ( 0.045527s |  0.00% |  0.22% )   ( 0.039739s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.041199s |  0.00% |  0.20% )   ( 0.041055s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.037861s |  0.00% |  0.18% )   ( 0.037725s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.044313s |  0.00% |  0.21% )   ( 0.044155s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.039794s |  0.00% |  0.19% )   ( 0.039668s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002867s |  0.00% |  0.00% )   ( 0.003237s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
37.5.0:         ( 0.002583s |  0.00% |  0.00% )   ( 0.002932s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.003074s |  0.00% |  0.00% )   ( 0.003423s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p25
40.5.0:         ( 0.316540s |  0.03% |  0.08% )   ( 0.004481s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002979s |  0.00% |  0.00% )   ( 0.003347s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.002765s |  0.00% |  0.00% )   ( 0.003133s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.002473s |  0.00% |  0.00% )   ( 0.002813s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002593s |  0.00% |  0.00% )   ( 0.002913s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.022199s |  0.00% |  0.00% )   ( 0.021449s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.002591s |  0.00% |  0.00% )   ( 0.002926s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.002740s |  0.00% |  0.00% )   ( 0.003051s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.002677s |  0.00% |  0.00% )   ( 0.003024s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.003108s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p25
65.5.0:         ( 0.003029s |  0.00% |  0.00% )   ( 0.002829s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.002395s |  0.00% |  0.00% )   ( 0.002727s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 19.610666s |  1.94% |  5.70% )   ( 18.992517s |  2.06% |  5.79% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002618s |  0.00% |  0.01% )   ( 0.002961s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.419728s |  0.14% |  7.23% )   ( 1.286598s |  0.13% |  6.77% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.357822s |  0.23% | 12.02% )   ( 2.293027s |  0.24% | 12.07% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.811189s |  0.17% |  9.23% )   ( 1.784443s |  0.19% |  9.39% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.341120s |  0.23% | 11.93% )   ( 2.321245s |  0.25% | 12.22% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.843605s |  0.18% |  9.40% )   ( 1.735978s |  0.18% |  9.14% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.188570s |  0.11% |  6.06% )   ( 1.177222s |  0.12% |  6.19% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.460786s |  0.04% |  2.34% )   ( 0.451387s |  0.04% |  2.37% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.313872s |  0.13% |  6.69% )   ( 1.274772s |  0.13% |  6.71% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.400462s |  0.03% |  2.04% )   ( 0.375706s |  0.04% |  1.97% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.568890s |  0.15% |  8.00% )   ( 1.517414s |  0.16% |  7.98% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.983247s |  0.39% | 20.31% )   ( 3.956095s |  0.43% | 20.82% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.471666s |  0.04% |  2.40% )   ( 0.420618s |  0.04% |  2.21% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.447091s |  0.04% |  2.27% )   ( 0.395051s |  0.04% |  2.08% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002397s |  0.00% |  0.00% )   ( 0.002716s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.002313s |  0.00% |  0.00% )   ( 0.002639s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.002464s |  0.00% |  0.00% )   ( 0.002750s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005078s |  0.00% |  0.02% )   ( 0.005165s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1015.3.0:       ( 15.973884s |  1.58% |  3.14% )   ( 15.037218s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001081s |  0.00% |  0.00% )   ( 0.001108s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
23.4.0:         ( 15.972649s |  1.58% | 99.99% )   ( 15.035928s |  1.63% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p26
29.5.0:         ( 0.054510s |  0.00% |  0.34% )   ( 0.041177s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.040450s |  0.00% |  0.25% )   ( 0.040317s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.037069s |  0.00% |  0.23% )   ( 0.036940s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.041513s |  0.00% |  0.25% )   ( 0.041373s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.043318s |  0.00% |  0.27% )   ( 0.043171s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.005112s |  0.00% |  0.00% )   ( 0.005755s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
37.5.0:         ( 0.004663s |  0.00% |  0.00% )   ( 0.005249s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005550s |  0.00% |  0.00% )   ( 0.006169s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p26
40.5.0:         ( 0.370491s |  0.03% |  0.07% )   ( 0.007287s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004883s |  0.00% |  0.00% )   ( 0.005512s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004525s |  0.00% |  0.00% )   ( 0.005140s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004537s |  0.00% |  0.00% )   ( 0.005119s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.035995s |  0.00% |  0.00% )   ( 0.036435s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.004219s |  0.00% |  0.00% )   ( 0.004800s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.004815s |  0.00% |  0.00% )   ( 0.005431s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.005228s |  0.00% |  0.00% )   ( 0.005853s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p26
65.5.0:         ( 0.004284s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.004485s |  0.00% |  0.00% )   ( 0.004749s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.261407s |  1.51% |  3.29% )   ( 14.694880s |  1.59% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004413s |  0.00% |  0.02% )   ( 0.005018s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.057239s |  0.10% |  6.92% )   ( 0.998227s |  0.10% |  6.79% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.672264s |  0.16% | 10.95% )   ( 1.625361s |  0.17% | 11.06% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.418376s |  0.14% |  9.29% )   ( 1.413551s |  0.15% |  9.61% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.595949s |  0.15% | 10.45% )   ( 1.589716s |  0.17% | 10.81% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.436767s |  0.14% |  9.41% )   ( 1.350800s |  0.14% |  9.19% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.018352s |  0.10% |  6.67% )   ( 0.922844s |  0.10% |  6.28% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.580466s |  0.05% |  3.80% )   ( 0.549761s |  0.05% |  3.74% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.964599s |  0.09% |  6.32% )   ( 0.931674s |  0.10% |  6.34% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.501017s |  0.04% |  3.28% )   ( 0.486986s |  0.05% |  3.31% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.303576s |  0.12% |  8.54% )   ( 1.253633s |  0.13% |  8.53% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.528285s |  0.25% | 16.56% )   ( 2.464465s |  0.26% | 16.77% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.595152s |  0.05% |  3.89% )   ( 0.559051s |  0.06% |  3.80% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.584952s |  0.05% |  3.83% )   ( 0.543793s |  0.05% |  3.70% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.004158s |  0.00% |  0.00% )   ( 0.004696s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.007351s |  0.00% |  0.00% )   ( 0.004953s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009520s |  0.00% |  0.05% )   ( 0.009604s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1015.3.0:       ( 16.098265s |  1.59% |  3.17% )   ( 15.284006s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001091s |  0.00% |  0.00% )   ( 0.001118s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
23.4.0:         ( 16.097028s |  1.59% | 99.99% )   ( 15.282719s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.DsviNd"
25.5.0:         ( 0.000190s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p27
29.5.0:         ( 0.035129s |  0.00% |  0.21% )   ( 0.034993s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039368s |  0.00% |  0.24% )   ( 0.039187s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 61212 ${BASHPID}' INT
32.5.0:         ( 0.042146s |  0.00% |  0.26% )   ( 0.041988s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 61212 ${BASHPID}' TERM
33.5.0:         ( 0.041828s |  0.00% |  0.25% )   ( 0.041684s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 61212 ${BASHPID}' HUP
34.5.0:         ( 0.041943s |  0.00% |  0.26% )   ( 0.041779s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004482s |  0.00% |  0.00% )   ( 0.005004s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.004174s |  0.00% |  0.00% )   ( 0.004718s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000203s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.DsviNd"/.nLines
37.5.2:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005041s |  0.00% |  0.00% )   ( 0.005582s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p27
40.5.0:         ( 0.351976s |  0.03% |  0.08% )   ( 0.006758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.quit ]]
45.5.0:         ( 0.004177s |  0.00% |  0.00% )   ( 0.004707s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.done ]]
45.5.1:         ( 0.003804s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.032562s |  0.00% |  0.00% )   ( 0.032958s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
50.5.0:         ( 0.003701s |  0.00% |  0.00% )   ( 0.004214s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
50.5.1:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004427s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
64.5.0:         ( 0.004592s |  0.00% |  0.00% )   ( 0.005109s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.DsviNd"/.wait/p27
65.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004357s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
85.5.0:         ( 0.003832s |  0.00% |  0.00% )   ( 0.004363s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
86.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
87.5.1:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
90.5.0:         ( 15.435583s |  1.52% |  3.68% )   ( 14.958222s |  1.62% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003867s |  0.00% |  0.02% )   ( 0.004397s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.016294s |  0.10% |  6.58% )   ( 0.983929s |  0.10% |  6.57% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.679710s |  0.16% | 10.88% )   ( 1.669952s |  0.18% | 11.16% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.461073s |  0.14% |  9.46% )   ( 1.434690s |  0.15% |  9.59% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.730060s |  0.17% | 11.20% )   ( 1.674084s |  0.18% | 11.19% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.429196s |  0.14% |  9.25% )   ( 1.385402s |  0.15% |  9.26% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.973277s |  0.09% |  6.30% )   ( 0.926312s |  0.10% |  6.19% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.568901s |  0.05% |  3.68% )   ( 0.521590s |  0.05% |  3.48% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.973692s |  0.09% |  6.30% )   ( 0.944518s |  0.10% |  6.31% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.468047s |  0.04% |  3.03% )   ( 0.455350s |  0.04% |  3.04% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.346437s |  0.13% |  8.72% )   ( 1.269394s |  0.13% |  8.48% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.717066s |  0.26% | 17.60% )   ( 2.666425s |  0.29% | 17.82% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.537626s |  0.05% |  3.48% )   ( 0.522995s |  0.05% |  3.49% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.530337s |  0.05% |  3.43% )   ( 0.499184s |  0.05% |  3.33% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004059s |  0.00% |  0.00% )   ( 0.004572s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
85.5.1:         ( 0.003591s |  0.00% |  0.00% )   ( 0.004068s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
88.5.0:         ( 0.004156s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009206s |  0.00% |  0.05% )   ( 0.009286s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.DsviNd"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.DsviNd"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000146s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1017.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1018.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1019.3.0:       ( 0.000139s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1021.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1025.3.0:       ( 0.001418s |  0.00% |  0.00% )   ( 0.001433s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1026.3.0:       ( 0.000139s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1070.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1071.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1078.3.0:       ( 21.508129s |  2.12% |  4.24% )   ( 0.001131s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1080.3.0:       ( 0.000098s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1083.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1084.2.0:       ( 0.000319s |  0.00% |  0.00% )   ( 0.000358s |  0.00% |  0.00% )    	(1x)	│  │   wait
24.2.0:         ( 0.006685s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.DsviNd" 2>/dev/null

10.0.0:         ( 502.511449s | 49.76% )            ( 459.662828s | 49.99% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001363s |  0.00% |  0.00% )   ( 0.001128s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
23.1.0:         ( 502.510086s | 49.76% | 99.99% )   ( 459.661700s | 49.99% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
23.2.0:         ( 0.034983s |  0.00% |  0.00% )   ( 0.034890s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
24.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
25.2.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
26.2.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
27.2.0:         ( 0.000104s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
28.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
29.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
30.2.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
31.2.0:         ( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
31.2.1:         ( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
32.2.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
32.2.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
32.2.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
33.2.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
164.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
164.2.1:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
214.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
215.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
217.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
222.2.0:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
223.2.0:        ( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
225.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
225.2.1:        ( 0.000062s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
229.2.0:        ( 0.001258s |  0.00% |  0.00% )   ( 0.001017s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
229.2.1:        ( 0.008870s |  0.00% |  0.00% )   ( 0.008870s |  0.00% |  0.00% )    	(1x)	│  │   << (SUBSHELL) >>
229.3.0:        ( 0.008870s |  0.00% |100.00% )   ( 0.008870s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
230.2.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
231.2.0:        ( 0.001188s |  0.00% |  0.00% )   ( 0.001262s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
232.2.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
233.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
233.2.1:        ( 0.022796s |  0.00% |  0.00% )   ( 0.001017s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
234.2.0:        ( 502.435179s | 49.75% | 99.98% )   ( 459.609774s | 49.98% | 99.98% )    	(1x)	│  │   << (SUBSHELL) >>
234.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1083.3.0:       ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 70003  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1083.3.1:       ( 0.000436s |  0.00% |  0.00% )   ( 0.000516s |  0.00% |  0.00% )    	(5x)	│  │  │   << (SUBSHELL) >>
1083.4.0:       ( 0.000436s |  0.00% |100.00% )   ( 0.000516s |  0.00% |100.00% )    	(5x)	│  │  │  └─  :
237.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
238.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
239.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
240.3.0:        ( 0.000178s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
241.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
242.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
243.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
245.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
246.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
247.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
248.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
252.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
253.3.0:        ( 0.003225s |  0.00% |  0.00% )   ( 0.003275s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
253.3.1:        ( 0.000117s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
253.4.0:        ( 0.000117s |  0.00% |100.00% )   ( 0.000126s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
253.3.2:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
255.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
258.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
260.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
261.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
261.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
262.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
263.3.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
264.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
315.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
319.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
321.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
322.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
324.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
328.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
332.3.0:        ( 0.000877s |  0.00% |  0.00% )   ( 0.001014s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000068s |  0.00% |  7.75% )   ( 0.000081s |  0.00% |  7.98% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
23.4.0:         ( 0.000068s |  0.00% |  7.75% )   ( 0.000080s |  0.00% |  7.88% )    	(1x)	│  │  │  │   local +i -l nn
24.4.0:         ( 0.000067s |  0.00% |  7.63% )   ( 0.000079s |  0.00% |  7.79% )    	(1x)	│  │  │  │   local vOut
25.4.0:         ( 0.000066s |  0.00% |  7.52% )   ( 0.000078s |  0.00% |  7.69% )    	(1x)	│  │  │  │   local -n vOut="$1"
26.4.0:         ( 0.000064s |  0.00% |  7.29% )   ( 0.000075s |  0.00% |  7.39% )    	(1x)	│  │  │  │   shift 1
27.4.0:         ( 0.000069s |  0.00% |  7.86% )   ( 0.000081s |  0.00% |  7.98% )    	(1x)	│  │  │  │   local -g vOut
28.4.0:         ( 0.000077s |  0.00% |  8.77% )   ( 0.000088s |  0.00% |  8.67% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
28.4.1:         ( 0.000117s |  0.00% | 13.34% )   ( 0.000125s |  0.00% | 12.32% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
29.4.0:         ( 0.000080s |  0.00% |  9.12% )   ( 0.000091s |  0.00% |  8.97% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
31.4.0:         ( 0.000064s |  0.00% |  7.29% )   ( 0.000076s |  0.00% |  7.49% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
31.4.1:         ( 0.000068s |  0.00% |  7.75% )   ( 0.000079s |  0.00% |  7.79% )    	(1x)	│  │  │  │   continue
41.4.0:         ( 0.000069s |  0.00% |  7.86% )   ( 0.000081s |  0.00% |  7.98% )    	(1x)	│  │  │  └─  local +n vOut
333.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
334.3.0:        ( 0.007726s |  0.00% |  0.00% )   ( 0.007774s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
334.3.1:        ( 0.002563s |  0.00% |  0.00% )   ( 0.002636s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
334.4.0:        ( 0.000164s |  0.00% |  6.39% )   ( 0.000178s |  0.00% |  6.75% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
334.4.1:        ( 0.002399s |  0.00% | 93.60% )   ( 0.002458s |  0.00% | 93.24% )    	(1x)	│  │  │  └─  nproc
335.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
337.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
339.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
339.3.1:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
341.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
345.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
347.3.0:        ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
348.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
349.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
350.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
352.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
354.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
355.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
359.3.0:        ( 0.000144s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
359.3.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
359.3.2:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
360.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
361.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
362.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
366.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
368.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
368.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
369.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
370.3.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000116s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
371.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
372.3.0:        ( 0.003343s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
373.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
380.3.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
381.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
382.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
400.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
409.3.0:        ( 0.003085s |  0.00% |  0.00% )   ( 0.003195s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
409.3.1:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
409.4.0:        ( 0.000087s |  0.00% |100.00% )   ( 0.000099s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
410.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
413.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
418.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
419.3.0:        ( 0.001255s |  0.00% |  0.00% )   ( 0.001328s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
420.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
421.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
422.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
449.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
450.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
454.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
455.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
458.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
469.3.0:        ( 0.000525s |  0.00% |  0.00% )   ( 0.000540s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
472.3.0:        ( 0.116433s |  0.01% |  0.02% )   ( 0.116159s |  0.01% |  0.02% )    	(1x)	│  │  │   << (SUBSHELL) >>
472.4.0:        ( 0.000085s |  0.00% |  0.07% )   ( 0.000097s |  0.00% |  0.08% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
473.4.0:        ( 0.017722s |  0.00% | 15.22% )   ( 0.017662s |  0.00% | 15.20% )    	(1x)	│  │  │  │   trap - EXIT
474.4.0:        ( 0.020170s |  0.00% | 17.32% )   ( 0.020123s |  0.00% | 17.32% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
475.4.0:        ( 0.020132s |  0.00% | 17.29% )   ( 0.020076s |  0.00% | 17.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
476.4.0:        ( 0.020211s |  0.00% | 17.35% )   ( 0.020160s |  0.00% | 17.35% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
477.4.0:        ( 0.020130s |  0.00% | 17.28% )   ( 0.020065s |  0.00% | 17.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
478.4.0:        ( 0.000066s |  0.00% |  0.05% )   ( 0.000077s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
480.4.0:        ( 0.017689s |  0.00% | 15.19% )   ( 0.017637s |  0.00% | 15.18% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
489.4.0:        ( 0.000095s |  0.00% |  0.08% )   ( 0.000108s |  0.00% |  0.09% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
490.4.0:        ( 0.000063s |  0.00% |  0.05% )   ( 0.000074s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
491.4.0:        ( 0.000070s |  0.00% |  0.06% )   ( 0.000080s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
494.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
496.3.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
501.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
503.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
504.3.0:        ( 0.000423s |  0.00% |  0.00% )   ( 0.000441s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
507.3.0:        ( 3.005054s |  0.29% |  0.59% )   ( 1.782856s |  0.19% |  0.38% )    	(1x)	│  │  │   << (SUBSHELL) >>
507.4.0:        ( 0.000164s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
508.4.0:        ( 0.020836s |  0.00% |  0.69% )   ( 0.020766s |  0.00% |  1.16% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
509.4.0:        ( 0.020272s |  0.00% |  0.67% )   ( 0.020206s |  0.00% |  1.13% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
510.4.0:        ( 0.020133s |  0.00% |  0.66% )   ( 0.020067s |  0.00% |  1.12% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
511.4.0:        ( 0.020236s |  0.00% |  0.67% )   ( 0.020172s |  0.00% |  1.13% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
512.4.0:        ( 0.020149s |  0.00% |  0.67% )   ( 0.020083s |  0.00% |  1.12% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
513.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
514.4.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
515.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
517.4.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
518.4.0:        ( 0.087955s |  0.00% |  0.00% )   ( 0.100569s |  0.01% |  0.00% )    	(668x)	│  │  │  │   ${fallocateFlag}
519.4.0:        ( 1.517996s |  0.15% |  0.07% )   ( 0.114799s |  0.01% |  0.00% )    	(667x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
519.4.1:        ( 0.000477s |  0.00% |  0.00% )   ( 0.000543s |  0.00% |  0.01% )    	(3x)	│  │  │  │   continue
520.4.0:        ( 0.085676s |  0.00% |  0.00% )   ( 0.098568s |  0.01% |  0.00% )    	(664x)	│  │  │  │   case ${REPLY} in
534.4.0:        ( 0.085391s |  0.00% |  0.00% )   ( 0.098315s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nLinesAutoFlag}
535.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
538.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
543.4.0:        ( 0.086225s |  0.00% |  0.00% )   ( 0.099178s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${lseekPosFlag}
544.4.0:        ( 0.088682s |  0.00% |  0.00% )   ( 0.101488s |  0.01% |  0.00% )    	(664x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
545.4.0:        ( 0.088857s |  0.00% |  0.00% )   ( 0.101840s |  0.01% |  0.00% )    	(664x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
551.4.0:        ( 0.085073s |  0.00% |  0.00% )   ( 0.097941s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nLinesAutoFlag}
552.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
553.4.0:        ( 0.085294s |  0.00% |  0.00% )   ( 0.097959s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nSpawnFlag}
554.4.0:        ( 0.088766s |  0.00% |  0.00% )   ( 0.098680s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${nLinesAutoFlag}
555.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
556.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
557.4.0:        ( 0.001708s |  0.00% |  0.05% )   ( 0.001602s |  0.00% |  0.08% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
557.4.1:        ( 0.005901s |  0.00% |  0.19% )   ( 0.006296s |  0.00% |  0.35% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
557.5.0:        ( 0.005901s |  0.00% |100.00% )   ( 0.006296s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
558.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
559.4.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
561.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
562.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
563.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
565.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
567.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
568.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
569.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
572.4.0:        ( 0.085053s |  0.00% |  0.00% )   ( 0.097894s |  0.01% |  0.00% )    	(664x)	│  │  │  │   ${fallocateFlag}
573.4.0:        ( 0.087101s |  0.00% |  0.00% )   ( 0.097088s |  0.01% |  0.00% )    	(664x)	│  │  │  │   case ${nWait} in
584.4.0:        ( 0.083233s |  0.00% |  0.00% )   ( 0.095743s |  0.01% |  0.00% )    	(643x)	│  │  │  │   ((nWait--))
588.4.0:        ( 0.089128s |  0.00% |  0.00% )   ( 0.102339s |  0.01% |  0.00% )    	(664x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
534.4.1:        ( 0.085833s |  0.00% |  0.00% )   ( 0.098697s |  0.01% |  0.00% )    	(663x)	│  │  │  │   ${nSpawnFlag}
551.4.1:        ( 0.085223s |  0.00% |  0.00% )   ( 0.098109s |  0.01% |  0.00% )    	(663x)	│  │  │  │   ${nSpawnFlag}
575.4.0:        ( 0.002837s |  0.00% |  0.00% )   ( 0.003270s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
576.4.0:        ( 0.002766s |  0.00% |  0.00% )   ( 0.003180s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
577.4.0:        ( 0.056025s |  0.00% |  0.08% )   ( 0.047596s |  0.00% |  0.12% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
578.4.0:        ( 0.003123s |  0.00% |  0.00% )   ( 0.003534s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
579.4.0:        ( 0.002904s |  0.00% |  0.00% )   ( 0.003331s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
581.4.0:        ( 0.002965s |  0.00% |  0.00% )   ( 0.003375s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
589.4.0:        ( 0.000120s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
591.4.0:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
518.4.1:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
518.4.2:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
24.4.0:         ( 0.007058s |  0.00% |  0.23% )   ( 0.007138s |  0.00% |  0.40% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/pAuto
597.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
598.3.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
600.3.0:        ( 0.000104s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
979.3.0:        ( 0.001862s |  0.00% |  0.00% )   ( 0.000998s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
996.3.0:        ( 0.005364s |  0.00% |  0.00% )   ( 0.006148s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
996.4.0:        ( 0.000467s |  0.00% |  8.70% )   ( 0.000504s |  0.00% |  8.19% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
997.4.0:        ( 0.000288s |  0.00% |  5.36% )   ( 0.000323s |  0.00% |  5.25% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
997.4.1:        ( 0.000078s |  0.00% |  1.45% )   ( 0.000090s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1005.4.0:       ( 0.000218s |  0.00% |  4.06% )   ( 0.000230s |  0.00% |  3.74% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1006.4.0:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${readBytesFlag}
1078.4.0:       ( 0.000065s |  0.00% |  1.21% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1081.4.0:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "{"
1082.4.0:       ( 0.000062s |  0.00% |  1.15% )   ( 0.000073s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${nOrderFlag}
1083.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1083.4.1:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1084.4.0:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1085.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${lseekFlag}
1085.4.1:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1086.4.0:       ( 0.000071s |  0.00% |  1.32% )   ( 0.000082s |  0.00% |  1.33% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1087.4.0:       ( 0.000065s |  0.00% |  1.21% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1087.4.1:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1088.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1088.4.2:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1090.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1091.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1091.4.1:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.2:       ( 0.000093s |  0.00% |  1.73% )   ( 0.000105s |  0.00% |  1.70% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1148.4.0:       ( 0.000065s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1148.4.1:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000074s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1148.4.2:       ( 0.000073s |  0.00% |  1.36% )   ( 0.000085s |  0.00% |  1.38% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000077s |  0.00% |  1.43% )   ( 0.000087s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1162.4.0:       ( 0.000083s |  0.00% |  1.54% )   ( 0.000094s |  0.00% |  1.52% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1163.4.0:       ( 0.000065s |  0.00% |  1.21% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1166.4.0:       ( 0.000091s |  0.00% |  1.69% )   ( 0.000102s |  0.00% |  1.65% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1177.4.0:       ( 0.000079s |  0.00% |  1.47% )   ( 0.000091s |  0.00% |  1.48% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1178.4.0:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000077s |  0.00% |  1.25% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1178.4.1:       ( 0.000084s |  0.00% |  1.56% )   ( 0.000095s |  0.00% |  1.54% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1179.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nOrderFlag}
1180.4.0:       ( 0.000069s |  0.00% |  1.28% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1185.4.0:       ( 0.000092s |  0.00% |  1.71% )   ( 0.000104s |  0.00% |  1.69% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1186.4.0:       ( 0.000067s |  0.00% |  1.24% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1190.4.0:       ( 0.000081s |  0.00% |  1.51% )   ( 0.000091s |  0.00% |  1.48% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1191.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1191.4.1:       ( 0.000073s |  0.00% |  1.36% )   ( 0.000100s |  0.00% |  1.62% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1196.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${fallocateFlag}
1196.4.1:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   printf '%s' ' || '
1197.4.0:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000074s |  0.00% |  1.20% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000079s |  0.00% |  1.47% )   ( 0.000090s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1198.4.0:       ( 0.000062s |  0.00% |  1.15% )   ( 0.000072s |  0.00% |  1.17% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1198.4.1:       ( 0.000067s |  0.00% |  1.24% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1206.4.0:       ( 0.000062s |  0.00% |  1.15% )   ( 0.000073s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1206.4.1:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo '{'
1207.4.0:       ( 0.000063s |  0.00% |  1.17% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1207.4.1:       ( 0.000066s |  0.00% |  1.23% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${nOrderFlag}
1208.4.0:       ( 0.000065s |  0.00% |  1.21% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1209.4.0:       ( 0.000102s |  0.00% |  1.90% )   ( 0.000114s |  0.00% |  1.85% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1210.4.0:       ( 0.000061s |  0.00% |  1.13% )   ( 0.000073s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${readBytesFlag}
1217.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1220.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000076s |  0.00% |  1.23% )    	(1x)	│  │  │  │   ${noFuncFlag}
1223.4.0:       ( 0.000064s |  0.00% |  1.19% )   ( 0.000075s |  0.00% |  1.21% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1224.4.0:       ( 0.000096s |  0.00% |  1.78% )   ( 0.000108s |  0.00% |  1.75% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1229.4.0:       ( 0.000067s |  0.00% |  1.24% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1241.4.0:       ( 0.000067s |  0.00% |  1.24% )   ( 0.000078s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${readBytesFlag}
1242.4.0:       ( 0.000062s |  0.00% |  1.15% )   ( 0.000073s |  0.00% |  1.18% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1242.4.1:       ( 0.000084s |  0.00% |  1.56% )   ( 0.000095s |  0.00% |  1.54% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1243.4.0:       ( 0.000070s |  0.00% |  1.30% )   ( 0.000081s |  0.00% |  1.31% )    	(1x)	│  │  │  │   echo "${outStr}"
1244.4.0:       ( 0.000067s |  0.00% |  1.24% )   ( 0.000079s |  0.00% |  1.28% )    	(1x)	│  │  │  │   ${nOrderFlag}
1245.4.0:       ( 0.000068s |  0.00% |  1.26% )   ( 0.000080s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1250.4.0:       ( 0.000085s |  0.00% |  1.58% )   ( 0.000097s |  0.00% |  1.57% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
980.3.0:        ( 0.000297s |  0.00% |  0.00% )   ( 0.000338s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
985.3.0:        ( 0.000289s |  0.00% |  0.00% )   ( 0.000329s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
987.3.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
988.3.0:        ( 0.020407s |  0.00% |  0.00% )   ( 0.020370s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
992.3.0:        ( 0.020398s |  0.00% |  0.00% )   ( 0.020361s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
996.3.0:        ( 0.020260s |  0.00% |  0.00% )   ( 0.146082s |  0.01% |  0.03% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1000.3.0:       ( 0.020037s |  0.00% |  0.00% )   ( 0.019992s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1001.3.0:       ( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1006.3.0:       ( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1010.3.0:       ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1011.3.0:       ( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1012.3.0:       ( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1012.3.1:       ( 0.002793s |  0.00% |  0.00% )   ( 0.003217s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1014.3.0:       ( 0.002680s |  0.00% |  0.00% )   ( 0.003083s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1015.3.0:       ( 16.236514s |  1.60% |  3.23% )   ( 15.598311s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000571s |  0.00% |  0.00% )   ( 0.000586s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
23.4.0:         ( 16.235858s |  1.60% | 99.99% )   ( 15.597627s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000270s |  0.00% |  0.00% )   ( 0.000291s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p0
29.5.0:         ( 0.019911s |  0.00% |  0.12% )   ( 0.019877s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020184s |  0.00% |  0.12% )   ( 0.020140s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020310s |  0.00% |  0.12% )   ( 0.020278s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020662s |  0.00% |  0.12% )   ( 0.020622s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020525s |  0.00% |  0.12% )   ( 0.020488s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.005390s |  0.00% |  0.00% )   ( 0.006045s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
37.5.0:         ( 0.004604s |  0.00% |  0.00% )   ( 0.005232s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000228s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005812s |  0.00% |  0.00% )   ( 0.006492s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p0
40.5.0:         ( 0.120633s |  0.01% |  0.02% )   ( 0.006729s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.008035s |  0.00% |  0.00% )   ( 0.005712s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004710s |  0.00% |  0.00% )   ( 0.005344s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004622s |  0.00% |  0.00% )   ( 0.005275s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004693s |  0.00% |  0.00% )   ( 0.005294s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.037679s |  0.00% |  0.00% )   ( 0.038190s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.009579s |  0.00% |  0.00% )   ( 0.005577s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.005617s |  0.00% |  0.00% )   ( 0.006296s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p0
53.5.0:         ( 0.004620s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.007361s |  0.00% |  0.00% )   ( 0.004979s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
78.5.0:         ( 15.887995s |  1.57% |  3.15% )   ( 15.364780s |  1.67% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004598s |  0.00% |  0.02% )   ( 0.005218s |  0.00% |  0.03% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.051153s |  0.10% |  6.61% )   ( 1.036380s |  0.11% |  6.74% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.754724s |  0.17% | 11.04% )   ( 1.683415s |  0.18% | 10.95% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.564362s |  0.15% |  9.84% )   ( 1.469629s |  0.15% |  9.56% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.721968s |  0.17% | 10.83% )   ( 1.668484s |  0.18% | 10.85% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.455868s |  0.14% |  9.16% )   ( 1.414508s |  0.15% |  9.20% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.966262s |  0.09% |  6.08% )   ( 0.947795s |  0.10% |  6.16% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.593038s |  0.05% |  3.73% )   ( 0.576831s |  0.06% |  3.75% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.001896s |  0.09% |  6.30% )   ( 0.967065s |  0.10% |  6.29% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.561443s |  0.05% |  3.53% )   ( 0.525749s |  0.05% |  3.42% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.367288s |  0.13% |  8.60% )   ( 1.313217s |  0.14% |  8.54% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.664156s |  0.26% | 16.76% )   ( 2.594797s |  0.28% | 16.88% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.592222s |  0.05% |  3.72% )   ( 0.583227s |  0.06% |  3.79% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.589017s |  0.05% |  3.70% )   ( 0.578465s |  0.06% |  3.76% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
75.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.004546s |  0.00% |  0.00% )   ( 0.005149s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.004167s |  0.00% |  0.00% )   ( 0.004750s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004568s |  0.00% |  0.00% )   ( 0.005159s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.007616s |  0.00% |  0.04% )   ( 0.007697s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1012.3.0:       ( 0.002653s |  0.00% |  0.00% )   ( 0.003074s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1015.3.0:       ( 16.354120s |  1.61% |  3.25% )   ( 15.101654s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000563s |  0.00% |  0.00% )   ( 0.000579s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
23.4.0:         ( 16.353473s |  1.61% | 99.99% )   ( 15.100979s |  1.64% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p1
29.5.0:         ( 0.020088s |  0.00% |  0.12% )   ( 0.020053s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020234s |  0.00% |  0.12% )   ( 0.020197s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020503s |  0.00% |  0.12% )   ( 0.020468s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020559s |  0.00% |  0.12% )   ( 0.020519s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020486s |  0.00% |  0.12% )   ( 0.020451s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.005197s |  0.00% |  0.00% )   ( 0.005814s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
37.5.0:         ( 0.004596s |  0.00% |  0.00% )   ( 0.005200s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005506s |  0.00% |  0.00% )   ( 0.006116s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p1
40.5.0:         ( 0.175097s |  0.01% |  0.03% )   ( 0.006939s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004966s |  0.00% |  0.00% )   ( 0.005577s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004585s |  0.00% |  0.00% )   ( 0.005195s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004318s |  0.00% |  0.00% )   ( 0.004907s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004565s |  0.00% |  0.00% )   ( 0.005152s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.037039s |  0.00% |  0.00% )   ( 0.035929s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.009591s |  0.00% |  0.00% )   ( 0.005394s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.005239s |  0.00% |  0.00% )   ( 0.005870s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p1
53.5.0:         ( 0.004239s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004152s |  0.00% |  0.00% )   ( 0.004731s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
78.5.0:         ( 15.957867s |  1.58% |  3.25% )   ( 14.873160s |  1.61% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004216s |  0.00% |  0.02% )   ( 0.004801s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.046851s |  0.10% |  6.56% )   ( 0.987596s |  0.10% |  6.64% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.725610s |  0.17% | 10.81% )   ( 1.624084s |  0.17% | 10.91% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.528410s |  0.15% |  9.57% )   ( 1.406300s |  0.15% |  9.45% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.820388s |  0.18% | 11.40% )   ( 1.614447s |  0.17% | 10.85% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.509377s |  0.14% |  9.45% )   ( 1.380971s |  0.15% |  9.28% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.957922s |  0.09% |  6.00% )   ( 0.927323s |  0.10% |  6.23% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.578902s |  0.05% |  3.62% )   ( 0.547555s |  0.05% |  3.68% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.094909s |  0.10% |  6.86% )   ( 0.960228s |  0.10% |  6.45% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.551678s |  0.05% |  3.45% )   ( 0.504709s |  0.05% |  3.39% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.370931s |  0.13% |  8.59% )   ( 1.278094s |  0.13% |  8.59% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.601499s |  0.25% | 16.30% )   ( 2.526046s |  0.27% | 16.98% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.581504s |  0.05% |  3.64% )   ( 0.560655s |  0.06% |  3.76% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.585670s |  0.05% |  3.67% )   ( 0.550351s |  0.05% |  3.70% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
75.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.004401s |  0.00% |  0.00% )   ( 0.004987s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.004038s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.006596s |  0.00% |  0.00% )   ( 0.005031s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008161s |  0.00% |  0.04% )   ( 0.008238s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1015.3.0:       ( 16.644365s |  1.64% |  3.31% )   ( 15.970478s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000569s |  0.00% |  0.00% )   ( 0.000571s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
23.4.0:         ( 16.643710s |  1.64% | 99.99% )   ( 15.969810s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000207s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000222s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p2
29.5.0:         ( 0.022458s |  0.00% |  0.13% )   ( 0.022409s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020478s |  0.00% |  0.12% )   ( 0.020447s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020542s |  0.00% |  0.12% )   ( 0.020502s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020532s |  0.00% |  0.12% )   ( 0.020498s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020500s |  0.00% |  0.12% )   ( 0.020465s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004123s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003894s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000226s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000191s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004585s |  0.00% |  0.00% )   ( 0.005114s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p2
40.5.0:         ( 0.185504s |  0.01% |  0.04% )   ( 0.006012s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003954s |  0.00% |  0.00% )   ( 0.004463s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003709s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004069s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004193s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.029597s |  0.00% |  0.00% )   ( 0.029994s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.010163s |  0.00% |  0.00% )   ( 0.004502s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p2
53.5.0:         ( 0.003529s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003393s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000206s |  0.00% |  0.00% )   ( 0.000238s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
78.5.0:         ( 16.256484s |  1.60% |  3.90% )   ( 15.760787s |  1.71% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003576s |  0.00% |  0.02% )   ( 0.004094s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.092981s |  0.10% |  6.72% )   ( 1.045769s |  0.11% |  6.63% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.889055s |  0.18% | 11.62% )   ( 1.833026s |  0.19% | 11.63% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.575369s |  0.15% |  9.69% )   ( 1.513859s |  0.16% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.828957s |  0.18% | 11.25% )   ( 1.817618s |  0.19% | 11.53% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.502582s |  0.14% |  9.24% )   ( 1.481837s |  0.16% |  9.40% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.979850s |  0.09% |  6.02% )   ( 0.955043s |  0.10% |  6.05% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.543129s |  0.05% |  3.34% )   ( 0.493657s |  0.05% |  3.13% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.021685s |  0.10% |  6.28% )   ( 0.990942s |  0.10% |  6.28% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.468103s |  0.04% |  2.87% )   ( 0.435457s |  0.04% |  2.76% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.377544s |  0.13% |  8.47% )   ( 1.308200s |  0.14% |  8.30% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.967252s |  0.29% | 18.25% )   ( 2.914252s |  0.31% | 18.49% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.500611s |  0.04% |  3.07% )   ( 0.489464s |  0.05% |  3.10% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.505790s |  0.05% |  3.11% )   ( 0.477569s |  0.05% |  3.03% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
75.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.003611s |  0.00% |  0.00% )   ( 0.004071s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003266s |  0.00% |  0.00% )   ( 0.003699s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003455s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006398s |  0.00% |  0.03% )   ( 0.006462s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1015.3.0:       ( 16.630413s |  1.64% |  3.30% )   ( 15.730980s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000649s |  0.00% |  0.00% )   ( 0.000655s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
23.4.0:         ( 16.629680s |  1.64% | 99.99% )   ( 15.730229s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000251s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p3
29.5.0:         ( 0.020355s |  0.00% |  0.12% )   ( 0.020322s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020555s |  0.00% |  0.12% )   ( 0.020517s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020556s |  0.00% |  0.12% )   ( 0.020520s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020552s |  0.00% |  0.12% )   ( 0.020518s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020491s |  0.00% |  0.12% )   ( 0.020456s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004529s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
37.5.0:         ( 0.004089s |  0.00% |  0.00% )   ( 0.004629s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004758s |  0.00% |  0.00% )   ( 0.005314s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p3
40.5.0:         ( 0.256721s |  0.02% |  0.05% )   ( 0.006372s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004374s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004769s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.032720s |  0.00% |  0.00% )   ( 0.032150s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.005562s |  0.00% |  0.00% )   ( 0.004839s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004647s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p3
53.5.0:         ( 0.003766s |  0.00% |  0.00% )   ( 0.004279s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004595s |  0.00% |  0.00% )   ( 0.004193s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000272s |  0.00% |  0.00% )   ( 0.000311s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000228s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
78.5.0:         ( 16.171493s |  1.60% |  3.60% )   ( 15.517623s |  1.68% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003938s |  0.00% |  0.02% )   ( 0.004485s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.115005s |  0.11% |  6.89% )   ( 1.046442s |  0.11% |  6.74% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.870558s |  0.18% | 11.56% )   ( 1.755304s |  0.19% | 11.31% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.593161s |  0.15% |  9.85% )   ( 1.493958s |  0.16% |  9.62% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.787067s |  0.17% | 11.05% )   ( 1.726590s |  0.18% | 11.12% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.461278s |  0.14% |  9.03% )   ( 1.436859s |  0.15% |  9.25% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.987451s |  0.09% |  6.10% )   ( 0.959582s |  0.10% |  6.18% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.571036s |  0.05% |  3.53% )   ( 0.526472s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.004482s |  0.09% |  6.21% )   ( 0.985529s |  0.10% |  6.35% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.489711s |  0.04% |  3.02% )   ( 0.471664s |  0.05% |  3.03% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.378655s |  0.13% |  8.52% )   ( 1.324178s |  0.14% |  8.53% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.835350s |  0.28% | 17.53% )   ( 2.761299s |  0.30% | 17.79% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.545981s |  0.05% |  3.37% )   ( 0.519606s |  0.05% |  3.34% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.527820s |  0.05% |  3.26% )   ( 0.505655s |  0.05% |  3.25% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
75.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
37.5.1:         ( 0.003809s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003608s |  0.00% |  0.00% )   ( 0.004113s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.004982s |  0.00% |  0.02% )   ( 0.005046s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1015.3.0:       ( 16.379924s |  1.62% |  3.26% )   ( 15.626878s |  1.69% |  3.40% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000613s |  0.00% |  0.00% )   ( 0.000630s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
23.4.0:         ( 16.379227s |  1.62% | 99.99% )   ( 15.626151s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000113s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p4
29.5.0:         ( 0.021793s |  0.00% |  0.13% )   ( 0.021751s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020529s |  0.00% |  0.12% )   ( 0.020496s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020537s |  0.00% |  0.12% )   ( 0.020500s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020510s |  0.00% |  0.12% )   ( 0.020475s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020534s |  0.00% |  0.12% )   ( 0.020495s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005052s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004611s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004730s |  0.00% |  0.00% )   ( 0.005288s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p4
40.5.0:         ( 0.139469s |  0.01% |  0.03% )   ( 0.005709s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004232s |  0.00% |  0.00% )   ( 0.004760s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003649s |  0.00% |  0.00% )   ( 0.004151s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004009s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.030920s |  0.00% |  0.00% )   ( 0.031348s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004503s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004590s |  0.00% |  0.00% )   ( 0.005132s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p4
53.5.0:         ( 0.003645s |  0.00% |  0.00% )   ( 0.004124s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003634s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.038420s |  1.58% |  3.76% )   ( 15.411400s |  1.67% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003672s |  0.00% |  0.02% )   ( 0.004182s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.022627s |  0.10% |  6.37% )   ( 1.005039s |  0.10% |  6.52% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.778114s |  0.17% | 11.08% )   ( 1.732787s |  0.18% | 11.24% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.608271s |  0.15% | 10.02% )   ( 1.491336s |  0.16% |  9.67% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.835801s |  0.18% | 11.44% )   ( 1.728277s |  0.18% | 11.21% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.428233s |  0.14% |  8.90% )   ( 1.410964s |  0.15% |  9.15% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.980171s |  0.09% |  6.11% )   ( 0.941112s |  0.10% |  6.10% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.533936s |  0.05% |  3.32% )   ( 0.518940s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.021958s |  0.10% |  6.37% )   ( 0.975304s |  0.10% |  6.32% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.495728s |  0.04% |  3.09% )   ( 0.461900s |  0.05% |  2.99% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.353865s |  0.13% |  8.44% )   ( 1.303794s |  0.14% |  8.45% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.874715s |  0.28% | 17.92% )   ( 2.806526s |  0.30% | 18.21% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.544063s |  0.05% |  3.39% )   ( 0.519192s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.557266s |  0.05% |  3.47% )   ( 0.512047s |  0.05% |  3.32% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003997s |  0.00% |  0.00% )   ( 0.004540s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003692s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003857s |  0.00% |  0.00% )   ( 0.004341s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009020s |  0.00% |  0.05% )   ( 0.009098s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1015.3.0:       ( 16.743082s |  1.65% |  3.33% )   ( 15.979590s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000626s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
23.4.0:         ( 16.742371s |  1.65% | 99.99% )   ( 15.978848s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000328s |  0.00% |  0.00% )   ( 0.000363s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000350s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p5
29.5.0:         ( 0.020608s |  0.00% |  0.12% )   ( 0.020536s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020597s |  0.00% |  0.12% )   ( 0.020524s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020587s |  0.00% |  0.12% )   ( 0.020496s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020596s |  0.00% |  0.12% )   ( 0.020519s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020558s |  0.00% |  0.12% )   ( 0.020479s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004132s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003660s |  0.00% |  0.00% )   ( 0.004168s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004444s |  0.00% |  0.00% )   ( 0.004942s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p5
40.5.0:         ( 0.247106s |  0.02% |  0.05% )   ( 0.006080s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004200s |  0.00% |  0.00% )   ( 0.004705s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004513s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003639s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003913s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.030279s |  0.00% |  0.00% )   ( 0.029701s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003979s |  0.00% |  0.00% )   ( 0.004487s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004490s |  0.00% |  0.00% )   ( 0.005022s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p5
53.5.0:         ( 0.003511s |  0.00% |  0.00% )   ( 0.003973s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003275s |  0.00% |  0.00% )   ( 0.003707s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.300059s |  1.61% |  3.89% )   ( 15.771489s |  1.71% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003702s |  0.00% |  0.02% )   ( 0.004211s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.122912s |  0.11% |  6.88% )   ( 1.040776s |  0.11% |  6.59% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.917358s |  0.18% | 11.76% )   ( 1.820245s |  0.19% | 11.54% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.575964s |  0.15% |  9.66% )   ( 1.495088s |  0.16% |  9.47% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.887537s |  0.18% | 11.57% )   ( 1.832384s |  0.19% | 11.61% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.510003s |  0.14% |  9.26% )   ( 1.463413s |  0.15% |  9.27% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.990150s |  0.09% |  6.07% )   ( 0.958770s |  0.10% |  6.07% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.518836s |  0.05% |  3.18% )   ( 0.510922s |  0.05% |  3.23% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.029213s |  0.10% |  6.31% )   ( 1.014955s |  0.11% |  6.43% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.456782s |  0.04% |  2.80% )   ( 0.448404s |  0.04% |  2.84% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.338198s |  0.13% |  8.20% )   ( 1.305303s |  0.14% |  8.27% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.927325s |  0.28% | 17.95% )   ( 2.882256s |  0.31% | 18.27% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.517688s |  0.05% |  3.17% )   ( 0.506677s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.504391s |  0.04% |  3.09% )   ( 0.488085s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003686s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003299s |  0.00% |  0.00% )   ( 0.003764s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003842s |  0.00% |  0.00% )   ( 0.004325s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006554s |  0.00% |  0.03% )   ( 0.006611s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1015.3.0:       ( 20.004974s |  1.98% |  3.98% )   ( 19.501105s |  2.12% |  4.24% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000633s |  0.00% |  0.00% )   ( 0.000649s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
23.4.0:         ( 20.004257s |  1.98% | 99.99% )   ( 19.500359s |  2.12% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p6
29.5.0:         ( 0.020569s |  0.00% |  0.10% )   ( 0.020534s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020589s |  0.00% |  0.10% )   ( 0.020551s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020548s |  0.00% |  0.10% )   ( 0.020507s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020559s |  0.00% |  0.10% )   ( 0.020521s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020570s |  0.00% |  0.10% )   ( 0.020526s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003742s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
37.5.0:         ( 0.003568s |  0.00% |  0.00% )   ( 0.004049s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004321s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p6
40.5.0:         ( 0.153232s |  0.01% |  0.03% )   ( 0.005433s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003793s |  0.00% |  0.00% )   ( 0.004285s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003573s |  0.00% |  0.00% )   ( 0.004032s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003213s |  0.00% |  0.00% )   ( 0.003667s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003899s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.027703s |  0.00% |  0.00% )   ( 0.028088s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.004193s |  0.00% |  0.00% )   ( 0.004079s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004430s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p6
53.5.0:         ( 0.003369s |  0.00% |  0.00% )   ( 0.003830s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003190s |  0.00% |  0.00% )   ( 0.003649s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 19.660544s |  1.94% |  4.27% )   ( 19.301199s |  2.09% |  4.30% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003502s |  0.00% |  0.01% )   ( 0.003966s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.378093s |  0.13% |  7.00% )   ( 1.352161s |  0.14% |  7.00% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.319908s |  0.22% | 11.79% )   ( 2.295799s |  0.24% | 11.89% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.897655s |  0.18% |  9.65% )   ( 1.843198s |  0.20% |  9.54% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.286489s |  0.22% | 11.62% )   ( 2.262118s |  0.24% | 11.72% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.759711s |  0.17% |  8.95% )   ( 1.744619s |  0.18% |  9.03% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.248581s |  0.12% |  6.35% )   ( 1.234767s |  0.13% |  6.39% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.546930s |  0.05% |  2.78% )   ( 0.528687s |  0.05% |  2.73% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.346430s |  0.13% |  6.84% )   ( 1.313127s |  0.14% |  6.80% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.484095s |  0.04% |  2.46% )   ( 0.456528s |  0.04% |  2.36% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.601089s |  0.15% |  8.14% )   ( 1.537251s |  0.16% |  7.96% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.767373s |  0.37% | 19.16% )   ( 3.728517s |  0.40% | 19.31% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.529232s |  0.05% |  2.69% )   ( 0.516334s |  0.05% |  2.67% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.491456s |  0.04% |  2.49% )   ( 0.484127s |  0.05% |  2.50% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003812s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003070s |  0.00% |  0.00% )   ( 0.003500s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.006512s |  0.00% |  0.00% )   ( 0.003951s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005727s |  0.00% |  0.02% )   ( 0.005760s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1015.3.0:       ( 16.251024s |  1.60% |  3.23% )   ( 15.590119s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000622s |  0.00% |  0.00% )   ( 0.000639s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
23.4.0:         ( 16.250314s |  1.60% | 99.99% )   ( 15.589384s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000326s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000345s |  0.00% |  0.00% )   ( 0.000380s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p7
29.5.0:         ( 0.020574s |  0.00% |  0.12% )   ( 0.020538s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020544s |  0.00% |  0.12% )   ( 0.020505s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020525s |  0.00% |  0.12% )   ( 0.020483s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020524s |  0.00% |  0.12% )   ( 0.020485s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020500s |  0.00% |  0.12% )   ( 0.020466s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005209s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004619s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005119s |  0.00% |  0.00% )   ( 0.005693s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p7
40.5.0:         ( 0.099473s |  0.00% |  0.02% )   ( 0.005851s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004345s |  0.00% |  0.00% )   ( 0.004906s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004055s |  0.00% |  0.00% )   ( 0.004596s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.007020s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004323s |  0.00% |  0.00% )   ( 0.004898s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.036314s |  0.00% |  0.00% )   ( 0.033808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.004303s |  0.00% |  0.00% )   ( 0.004864s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004927s |  0.00% |  0.00% )   ( 0.005452s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p7
53.5.0:         ( 0.004031s |  0.00% |  0.00% )   ( 0.004576s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004070s |  0.00% |  0.00% )   ( 0.004642s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 15.940564s |  1.57% |  3.50% )   ( 15.370977s |  1.67% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004052s |  0.00% |  0.02% )   ( 0.004609s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.070117s |  0.10% |  6.71% )   ( 1.027853s |  0.11% |  6.68% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.786346s |  0.17% | 11.20% )   ( 1.729247s |  0.18% | 11.25% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.529033s |  0.15% |  9.59% )   ( 1.484515s |  0.16% |  9.65% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.742634s |  0.17% | 10.93% )   ( 1.705781s |  0.18% | 11.09% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.485867s |  0.14% |  9.32% )   ( 1.411535s |  0.15% |  9.18% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.972701s |  0.09% |  6.10% )   ( 0.942553s |  0.10% |  6.13% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.558017s |  0.05% |  3.50% )   ( 0.542108s |  0.05% |  3.52% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.991315s |  0.09% |  6.21% )   ( 0.978328s |  0.10% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.506824s |  0.05% |  3.17% )   ( 0.487840s |  0.05% |  3.17% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.400164s |  0.13% |  8.78% )   ( 1.318694s |  0.14% |  8.57% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.720113s |  0.26% | 17.06% )   ( 2.657552s |  0.28% | 17.28% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.596509s |  0.05% |  3.74% )   ( 0.551628s |  0.05% |  3.58% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.576872s |  0.05% |  3.61% )   ( 0.528734s |  0.05% |  3.43% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004527s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004579s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004501s |  0.00% |  0.00% )   ( 0.005071s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006596s |  0.00% |  0.04% )   ( 0.006663s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1015.3.0:       ( 16.781435s |  1.66% |  3.34% )   ( 15.952069s |  1.73% |  3.47% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000630s |  0.00% |  0.00% )   ( 0.000653s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
23.4.0:         ( 16.780722s |  1.66% | 99.99% )   ( 15.951320s |  1.73% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000317s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p8
29.5.0:         ( 0.020563s |  0.00% |  0.12% )   ( 0.020525s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020558s |  0.00% |  0.12% )   ( 0.020518s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020539s |  0.00% |  0.12% )   ( 0.020500s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020528s |  0.00% |  0.12% )   ( 0.020489s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020560s |  0.00% |  0.12% )   ( 0.020523s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003797s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
37.5.0:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003837s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004039s |  0.00% |  0.00% )   ( 0.004519s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p8
40.5.0:         ( 0.195799s |  0.01% |  0.05% )   ( 0.005348s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003405s |  0.00% |  0.00% )   ( 0.003834s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003323s |  0.00% |  0.00% )   ( 0.003768s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.002926s |  0.00% |  0.00% )   ( 0.003324s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003428s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.027815s |  0.00% |  0.00% )   ( 0.025127s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003296s |  0.00% |  0.00% )   ( 0.003700s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.003820s |  0.00% |  0.00% )   ( 0.004263s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p8
53.5.0:         ( 0.002931s |  0.00% |  0.00% )   ( 0.003343s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003157s |  0.00% |  0.00% )   ( 0.003573s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.394150s |  1.62% |  4.65% )   ( 15.754786s |  1.71% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002977s |  0.00% |  0.01% )   ( 0.003402s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.097731s |  0.10% |  6.69% )   ( 1.035802s |  0.11% |  6.57% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.979930s |  0.19% | 12.07% )   ( 1.846062s |  0.20% | 11.71% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.552139s |  0.15% |  9.46% )   ( 1.504746s |  0.16% |  9.55% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.859784s |  0.18% | 11.34% )   ( 1.842936s |  0.20% | 11.69% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.487115s |  0.14% |  9.07% )   ( 1.462937s |  0.15% |  9.28% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.947261s |  0.09% |  5.77% )   ( 0.942985s |  0.10% |  5.98% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.502892s |  0.04% |  3.06% )   ( 0.456005s |  0.04% |  2.89% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.032382s |  0.10% |  6.29% )   ( 1.010207s |  0.10% |  6.41% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.397467s |  0.03% |  2.42% )   ( 0.392369s |  0.04% |  2.49% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.402428s |  0.13% |  8.55% )   ( 1.315568s |  0.14% |  8.35% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.171487s |  0.31% | 19.34% )   ( 3.059416s |  0.33% | 19.41% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.476663s |  0.04% |  2.90% )   ( 0.451664s |  0.04% |  2.86% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.483894s |  0.04% |  2.95% )   ( 0.430687s |  0.04% |  2.73% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003267s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.006133s |  0.00% |  0.00% )   ( 0.003579s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003391s |  0.00% |  0.00% )   ( 0.003818s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009171s |  0.00% |  0.05% )   ( 0.009249s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1015.3.0:       ( 16.600913s |  1.64% |  3.30% )   ( 15.728129s |  1.71% |  3.42% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000642s |  0.00% |  0.00% )   ( 0.000659s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
23.4.0:         ( 16.600183s |  1.64% | 99.99% )   ( 15.727370s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000330s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000385s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p9
29.5.0:         ( 0.020802s |  0.00% |  0.12% )   ( 0.020771s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020569s |  0.00% |  0.12% )   ( 0.020530s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020552s |  0.00% |  0.12% )   ( 0.020513s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020561s |  0.00% |  0.12% )   ( 0.020526s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020522s |  0.00% |  0.12% )   ( 0.020486s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004341s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003850s |  0.00% |  0.00% )   ( 0.004358s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004661s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p9
40.5.0:         ( 0.315115s |  0.03% |  0.07% )   ( 0.006090s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004097s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003658s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003576s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003492s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.029396s |  0.00% |  0.00% )   ( 0.029725s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.007028s |  0.00% |  0.00% )   ( 0.004482s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004305s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p9
53.5.0:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003967s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003331s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.085978s |  1.59% |  3.87% )   ( 15.518022s |  1.68% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003744s |  0.00% |  0.02% )   ( 0.004251s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.057015s |  0.10% |  6.57% )   ( 1.033296s |  0.11% |  6.65% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.837760s |  0.18% | 11.42% )   ( 1.761328s |  0.19% | 11.35% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.490037s |  0.14% |  9.26% )   ( 1.462116s |  0.15% |  9.42% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.780944s |  0.17% | 11.07% )   ( 1.737780s |  0.18% | 11.19% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.452254s |  0.14% |  9.02% )   ( 1.439824s |  0.15% |  9.27% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.973408s |  0.09% |  6.05% )   ( 0.938054s |  0.10% |  6.04% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.501340s |  0.04% |  3.11% )   ( 0.497770s |  0.05% |  3.20% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.065088s |  0.10% |  6.62% )   ( 0.998381s |  0.10% |  6.43% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.486787s |  0.04% |  3.02% )   ( 0.453592s |  0.04% |  2.92% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.400394s |  0.13% |  8.70% )   ( 1.313865s |  0.14% |  8.46% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.004204s |  0.29% | 18.67% )   ( 2.888660s |  0.31% | 18.61% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.513989s |  0.05% |  3.19% )   ( 0.509526s |  0.05% |  3.28% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.519014s |  0.05% |  3.22% )   ( 0.479579s |  0.05% |  3.09% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003599s |  0.00% |  0.00% )   ( 0.004081s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003399s |  0.00% |  0.00% )   ( 0.003851s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003761s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008738s |  0.00% |  0.05% )   ( 0.008820s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1015.3.0:       ( 16.590889s |  1.64% |  3.30% )   ( 15.698806s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000682s |  0.00% |  0.00% )   ( 0.000697s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
23.4.0:         ( 16.590115s |  1.64% | 99.99% )   ( 15.698010s |  1.70% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p10
29.5.0:         ( 0.035561s |  0.00% |  0.21% )   ( 0.035423s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.033536s |  0.00% |  0.20% )   ( 0.033428s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.027665s |  0.00% |  0.16% )   ( 0.027580s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.021341s |  0.00% |  0.12% )   ( 0.021305s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.021660s |  0.00% |  0.13% )   ( 0.021605s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004147s |  0.00% |  0.00% )   ( 0.004646s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003705s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p10
40.5.0:         ( 0.175957s |  0.01% |  0.04% )   ( 0.005538s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003890s |  0.00% |  0.00% )   ( 0.004404s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003525s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003345s |  0.00% |  0.00% )   ( 0.003780s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003529s |  0.00% |  0.00% )   ( 0.004016s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.032423s |  0.00% |  0.00% )   ( 0.029821s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.008719s |  0.00% |  0.00% )   ( 0.004339s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004709s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p10
53.5.0:         ( 0.003519s |  0.00% |  0.00% )   ( 0.003893s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003388s |  0.00% |  0.00% )   ( 0.003849s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.175493s |  1.60% |  4.06% )   ( 15.454837s |  1.68% |  4.10% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003555s |  0.00% |  0.02% )   ( 0.004057s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.156673s |  0.11% |  7.15% )   ( 1.021811s |  0.11% |  6.61% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.817800s |  0.18% | 11.23% )   ( 1.783326s |  0.19% | 11.53% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.570358s |  0.15% |  9.70% )   ( 1.488203s |  0.16% |  9.62% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.849249s |  0.18% | 11.43% )   ( 1.772667s |  0.19% | 11.46% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.511446s |  0.14% |  9.34% )   ( 1.428904s |  0.15% |  9.24% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.054309s |  0.10% |  6.51% )   ( 0.930006s |  0.10% |  6.01% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.554239s |  0.05% |  3.42% )   ( 0.514088s |  0.05% |  3.32% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.029654s |  0.10% |  6.36% )   ( 0.980964s |  0.10% |  6.34% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.435974s |  0.04% |  2.69% )   ( 0.428026s |  0.04% |  2.76% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.315202s |  0.13% |  8.13% )   ( 1.284496s |  0.13% |  8.31% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.863882s |  0.28% | 17.70% )   ( 2.845832s |  0.30% | 18.41% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.516872s |  0.05% |  3.19% )   ( 0.488159s |  0.05% |  3.15% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.496280s |  0.04% |  3.06% )   ( 0.484298s |  0.05% |  3.13% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003577s |  0.00% |  0.00% )   ( 0.004055s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003227s |  0.00% |  0.00% )   ( 0.003692s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003644s |  0.00% |  0.00% )   ( 0.004089s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008724s |  0.00% |  0.05% )   ( 0.008824s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000092s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1015.3.0:       ( 16.555959s |  1.63% |  3.29% )   ( 15.868459s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000706s |  0.00% |  0.00% )   ( 0.000728s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
23.4.0:         ( 16.555167s |  1.63% | 99.99% )   ( 15.867632s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p11
29.5.0:         ( 0.020860s |  0.00% |  0.12% )   ( 0.020703s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.020651s |  0.00% |  0.12% )   ( 0.020607s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.020638s |  0.00% |  0.12% )   ( 0.020592s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.020688s |  0.00% |  0.12% )   ( 0.020660s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.020721s |  0.00% |  0.12% )   ( 0.020677s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004463s |  0.00% |  0.00% )   ( 0.005014s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
37.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005347s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p11
40.5.0:         ( 0.178939s |  0.01% |  0.03% )   ( 0.006235s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004867s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004062s |  0.00% |  0.00% )   ( 0.004623s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003940s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031798s |  0.00% |  0.00% )   ( 0.032281s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.006972s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004976s |  0.00% |  0.00% )   ( 0.005520s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p11
53.5.0:         ( 0.003969s |  0.00% |  0.00% )   ( 0.004500s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003914s |  0.00% |  0.00% )   ( 0.004444s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.173385s |  1.60% |  3.61% )   ( 15.653409s |  1.70% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004001s |  0.00% |  0.02% )   ( 0.004541s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.112727s |  0.11% |  6.87% )   ( 1.068809s |  0.11% |  6.82% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.905108s |  0.18% | 11.77% )   ( 1.789174s |  0.19% | 11.42% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.588896s |  0.15% |  9.82% )   ( 1.502810s |  0.16% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.789110s |  0.17% | 11.06% )   ( 1.761289s |  0.19% | 11.25% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.455597s |  0.14% |  8.99% )   ( 1.442283s |  0.15% |  9.21% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.984085s |  0.09% |  6.08% )   ( 0.968085s |  0.10% |  6.18% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.562330s |  0.05% |  3.47% )   ( 0.531719s |  0.05% |  3.39% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.051701s |  0.10% |  6.50% )   ( 0.995693s |  0.10% |  6.36% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.479383s |  0.04% |  2.96% )   ( 0.471624s |  0.05% |  3.01% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.353017s |  0.13% |  8.36% )   ( 1.318423s |  0.14% |  8.42% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.816628s |  0.27% | 17.41% )   ( 2.764357s |  0.30% | 17.65% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.539520s |  0.05% |  3.33% )   ( 0.527208s |  0.05% |  3.36% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.531282s |  0.05% |  3.28% )   ( 0.507394s |  0.05% |  3.24% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003964s |  0.00% |  0.00% )   ( 0.004493s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003855s |  0.00% |  0.00% )   ( 0.004372s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004344s |  0.00% |  0.00% )   ( 0.004875s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005000s |  0.00% |  0.03% )   ( 0.005063s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1015.3.0:       ( 16.478067s |  1.63% |  3.27% )   ( 15.560658s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000730s |  0.00% |  0.00% )   ( 0.000744s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
23.4.0:         ( 16.477250s |  1.63% | 99.99% )   ( 15.559815s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p12
29.5.0:         ( 0.020616s |  0.00% |  0.12% )   ( 0.020563s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.026816s |  0.00% |  0.16% )   ( 0.026730s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.021777s |  0.00% |  0.13% )   ( 0.021710s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.021583s |  0.00% |  0.13% )   ( 0.021542s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.037807s |  0.00% |  0.22% )   ( 0.037688s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004660s |  0.00% |  0.00% )   ( 0.005199s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.003962s |  0.00% |  0.00% )   ( 0.004481s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005025s |  0.00% |  0.00% )   ( 0.005589s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p12
40.5.0:         ( 0.097245s |  0.00% |  0.02% )   ( 0.005804s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004244s |  0.00% |  0.00% )   ( 0.004801s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003877s |  0.00% |  0.00% )   ( 0.004401s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004413s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003884s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031430s |  0.00% |  0.00% )   ( 0.031873s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.007236s |  0.00% |  0.00% )   ( 0.004754s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004651s |  0.00% |  0.00% )   ( 0.005196s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p12
53.5.0:         ( 0.003844s |  0.00% |  0.00% )   ( 0.004371s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003827s |  0.00% |  0.00% )   ( 0.004352s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.148711s |  1.59% |  3.76% )   ( 15.317924s |  1.66% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003761s |  0.00% |  0.02% )   ( 0.004292s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.060732s |  0.10% |  6.56% )   ( 1.027135s |  0.11% |  6.70% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.810275s |  0.17% | 11.21% )   ( 1.740423s |  0.18% | 11.36% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.569901s |  0.15% |  9.72% )   ( 1.490815s |  0.16% |  9.73% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.759534s |  0.17% | 10.89% )   ( 1.715366s |  0.18% | 11.19% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.509618s |  0.14% |  9.34% )   ( 1.439285s |  0.15% |  9.39% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.964854s |  0.09% |  5.97% )   ( 0.932011s |  0.10% |  6.08% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.583339s |  0.05% |  3.61% )   ( 0.519843s |  0.05% |  3.39% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.084769s |  0.10% |  6.71% )   ( 0.976127s |  0.10% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.527546s |  0.05% |  3.26% )   ( 0.462250s |  0.05% |  3.01% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.438299s |  0.14% |  8.90% )   ( 1.291649s |  0.14% |  8.43% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.794334s |  0.27% | 17.30% )   ( 2.691389s |  0.29% | 17.57% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.524959s |  0.05% |  3.25% )   ( 0.515962s |  0.05% |  3.36% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.516790s |  0.05% |  3.20% )   ( 0.511377s |  0.05% |  3.33% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003799s |  0.00% |  0.00% )   ( 0.004322s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004755s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008935s |  0.00% |  0.05% )   ( 0.009013s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1015.3.0:       ( 16.138468s |  1.59% |  3.21% )   ( 15.352672s |  1.66% |  3.34% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000712s |  0.00% |  0.00% )   ( 0.000728s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
23.4.0:         ( 16.137671s |  1.59% | 99.99% )   ( 15.351846s |  1.66% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000219s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p13
29.5.0:         ( 0.024215s |  0.00% |  0.15% )   ( 0.024122s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.035407s |  0.00% |  0.21% )   ( 0.035301s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.032248s |  0.00% |  0.19% )   ( 0.032136s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.023954s |  0.00% |  0.14% )   ( 0.023885s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.024765s |  0.00% |  0.15% )   ( 0.024709s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004535s |  0.00% |  0.00% )   ( 0.005073s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
37.5.0:         ( 0.004119s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004899s |  0.00% |  0.00% )   ( 0.005448s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p13
40.5.0:         ( 0.138390s |  0.01% |  0.03% )   ( 0.005997s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004268s |  0.00% |  0.00% )   ( 0.004821s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004118s |  0.00% |  0.00% )   ( 0.004665s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003760s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003925s |  0.00% |  0.00% )   ( 0.004441s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.035359s |  0.00% |  0.00% )   ( 0.030767s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.007078s |  0.00% |  0.00% )   ( 0.004588s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004794s |  0.00% |  0.00% )   ( 0.005352s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p13
53.5.0:         ( 0.003881s |  0.00% |  0.00% )   ( 0.004397s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003592s |  0.00% |  0.00% )   ( 0.004109s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 15.752454s |  1.55% |  3.75% )   ( 15.099421s |  1.64% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003637s |  0.00% |  0.02% )   ( 0.004166s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.010906s |  0.10% |  6.41% )   ( 0.994145s |  0.10% |  6.58% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.693175s |  0.16% | 10.74% )   ( 1.686511s |  0.18% | 11.16% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.566178s |  0.15% |  9.94% )   ( 1.443287s |  0.15% |  9.55% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.735708s |  0.17% | 11.01% )   ( 1.675989s |  0.18% | 11.09% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.474552s |  0.14% |  9.36% )   ( 1.401858s |  0.15% |  9.28% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.965134s |  0.09% |  6.12% )   ( 0.931893s |  0.10% |  6.17% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.557610s |  0.05% |  3.53% )   ( 0.525185s |  0.05% |  3.47% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.042807s |  0.10% |  6.61% )   ( 0.956802s |  0.10% |  6.33% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.467339s |  0.04% |  2.96% )   ( 0.461445s |  0.05% |  3.05% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.326101s |  0.13% |  8.41% )   ( 1.292085s |  0.14% |  8.55% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.798970s |  0.27% | 17.76% )   ( 2.694856s |  0.29% | 17.84% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.551612s |  0.05% |  3.50% )   ( 0.524857s |  0.05% |  3.47% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.558725s |  0.05% |  3.54% )   ( 0.506342s |  0.05% |  3.35% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003579s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004044s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008993s |  0.00% |  0.05% )   ( 0.009057s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1015.3.0:       ( 16.495808s |  1.63% |  3.28% )   ( 15.171494s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000730s |  0.00% |  0.00% )   ( 0.000749s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
23.4.0:         ( 16.494989s |  1.63% | 99.99% )   ( 15.170644s |  1.65% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p14
29.5.0:         ( 0.032746s |  0.00% |  0.19% )   ( 0.032640s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.021487s |  0.00% |  0.13% )   ( 0.021432s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.023030s |  0.00% |  0.13% )   ( 0.022965s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.023328s |  0.00% |  0.14% )   ( 0.023259s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.025919s |  0.00% |  0.15% )   ( 0.025830s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004687s |  0.00% |  0.00% )   ( 0.005254s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004325s |  0.00% |  0.00% )   ( 0.004906s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005319s |  0.00% |  0.00% )   ( 0.005933s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p14
40.5.0:         ( 0.194882s |  0.01% |  0.04% )   ( 0.006604s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004562s |  0.00% |  0.00% )   ( 0.005182s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004466s |  0.00% |  0.00% )   ( 0.005079s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004220s |  0.00% |  0.00% )   ( 0.004808s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004403s |  0.00% |  0.00% )   ( 0.004990s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.038408s |  0.00% |  0.00% )   ( 0.035905s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.009892s |  0.00% |  0.00% )   ( 0.005321s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.005086s |  0.00% |  0.00% )   ( 0.005656s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p14
53.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004010s |  0.00% |  0.00% )   ( 0.004549s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.061499s |  1.59% |  3.47% )   ( 14.925226s |  1.62% |  3.51% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004054s |  0.00% |  0.02% )   ( 0.004631s |  0.00% |  0.03% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.045677s |  0.10% |  6.51% )   ( 0.992979s |  0.10% |  6.65% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.781538s |  0.17% | 11.09% )   ( 1.652895s |  0.17% | 11.07% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.527981s |  0.15% |  9.51% )   ( 1.418637s |  0.15% |  9.50% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.751493s |  0.17% | 10.90% )   ( 1.647185s |  0.17% | 11.03% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.471345s |  0.14% |  9.16% )   ( 1.393370s |  0.15% |  9.33% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.978721s |  0.09% |  6.09% )   ( 0.945174s |  0.10% |  6.33% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.546783s |  0.05% |  3.40% )   ( 0.539935s |  0.05% |  3.61% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.059978s |  0.10% |  6.59% )   ( 0.958171s |  0.10% |  6.41% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.562868s |  0.05% |  3.50% )   ( 0.495348s |  0.05% |  3.31% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.468470s |  0.14% |  9.14% )   ( 1.271056s |  0.13% |  8.51% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.695071s |  0.26% | 16.77% )   ( 2.520654s |  0.27% | 16.88% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.608957s |  0.06% |  3.79% )   ( 0.544086s |  0.05% |  3.64% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.558563s |  0.05% |  3.47% )   ( 0.541105s |  0.05% |  3.62% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005080s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005035s |  0.00% |  0.03% )   ( 0.005096s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1015.3.0:       ( 16.569766s |  1.64% |  3.29% )   ( 16.009522s |  1.74% |  3.48% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000874s |  0.00% |  0.00% )   ( 0.000899s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
23.4.0:         ( 16.568716s |  1.64% | 99.99% )   ( 16.008425s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p15
29.5.0:         ( 0.039345s |  0.00% |  0.23% )   ( 0.039213s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039425s |  0.00% |  0.23% )   ( 0.039289s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.039321s |  0.00% |  0.23% )   ( 0.039188s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.039541s |  0.00% |  0.23% )   ( 0.039405s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.039310s |  0.00% |  0.23% )   ( 0.039168s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004311s |  0.00% |  0.00% )   ( 0.004842s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003968s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.005433s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p15
40.5.0:         ( 0.106942s |  0.01% |  0.02% )   ( 0.005903s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004402s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003690s |  0.00% |  0.00% )   ( 0.004184s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.029627s |  0.00% |  0.00% )   ( 0.030045s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.005450s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004442s |  0.00% |  0.00% )   ( 0.004980s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p15
53.5.0:         ( 0.003682s |  0.00% |  0.00% )   ( 0.004175s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003623s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.167289s |  1.60% |  3.90% )   ( 15.703210s |  1.70% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003699s |  0.00% |  0.02% )   ( 0.004198s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.061927s |  0.10% |  6.56% )   ( 1.041747s |  0.11% |  6.63% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.868402s |  0.18% | 11.55% )   ( 1.798428s |  0.19% | 11.45% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.537433s |  0.15% |  9.50% )   ( 1.493257s |  0.16% |  9.50% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.847710s |  0.18% | 11.42% )   ( 1.799239s |  0.19% | 11.45% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.496883s |  0.14% |  9.25% )   ( 1.462323s |  0.15% |  9.31% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.959061s |  0.09% |  5.93% )   ( 0.948029s |  0.10% |  6.03% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.536497s |  0.05% |  3.31% )   ( 0.524961s |  0.05% |  3.34% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.094009s |  0.10% |  6.76% )   ( 1.004037s |  0.10% |  6.39% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.474697s |  0.04% |  2.93% )   ( 0.449928s |  0.04% |  2.86% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.339475s |  0.13% |  8.28% )   ( 1.312606s |  0.14% |  8.35% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.916377s |  0.28% | 18.03% )   ( 2.873629s |  0.31% | 18.29% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.510491s |  0.05% |  3.15% )   ( 0.501954s |  0.05% |  3.19% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.520628s |  0.05% |  3.22% )   ( 0.488874s |  0.05% |  3.11% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003858s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003880s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008847s |  0.00% |  0.05% )   ( 0.008930s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1015.3.0:       ( 16.076007s |  1.59% |  3.19% )   ( 15.548763s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000998s |  0.00% |  0.00% )   ( 0.001021s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
23.4.0:         ( 16.074861s |  1.59% | 99.99% )   ( 15.547574s |  1.69% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p16
29.5.0:         ( 0.038424s |  0.00% |  0.23% )   ( 0.038302s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.035968s |  0.00% |  0.22% )   ( 0.035855s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.039197s |  0.00% |  0.24% )   ( 0.039074s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.033887s |  0.00% |  0.21% )   ( 0.033787s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.038018s |  0.00% |  0.23% )   ( 0.037895s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004736s |  0.00% |  0.00% )   ( 0.005309s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
37.5.0:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004631s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004983s |  0.00% |  0.00% )   ( 0.005539s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p16
40.5.0:         ( 0.090242s |  0.00% |  0.02% )   ( 0.005924s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004516s |  0.00% |  0.00% )   ( 0.005084s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004537s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004684s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.032077s |  0.00% |  0.00% )   ( 0.032532s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.008365s |  0.00% |  0.00% )   ( 0.005032s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004947s |  0.00% |  0.00% )   ( 0.005510s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p16
53.5.0:         ( 0.004022s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 15.692749s |  1.55% |  3.61% )   ( 15.246141s |  1.65% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004099s |  0.00% |  0.02% )   ( 0.004690s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.026202s |  0.10% |  6.53% )   ( 1.009801s |  0.10% |  6.62% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.704484s |  0.16% | 10.86% )   ( 1.691070s |  0.18% | 11.09% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.535417s |  0.15% |  9.78% )   ( 1.471456s |  0.16% |  9.65% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.731413s |  0.17% | 11.03% )   ( 1.715534s |  0.18% | 11.25% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.432118s |  0.14% |  9.12% )   ( 1.394051s |  0.15% |  9.14% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.993718s |  0.09% |  6.33% )   ( 0.931790s |  0.10% |  6.11% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.556790s |  0.05% |  3.54% )   ( 0.532564s |  0.05% |  3.49% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 0.987110s |  0.09% |  6.29% )   ( 0.965074s |  0.10% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.496197s |  0.04% |  3.16% )   ( 0.478354s |  0.05% |  3.13% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.366179s |  0.13% |  8.70% )   ( 1.325153s |  0.14% |  8.69% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.733310s |  0.27% | 17.41% )   ( 2.661522s |  0.28% | 17.45% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.564079s |  0.05% |  3.59% )   ( 0.533802s |  0.05% |  3.50% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.561633s |  0.05% |  3.57% )   ( 0.531280s |  0.05% |  3.48% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003963s |  0.00% |  0.00% )   ( 0.004492s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004197s |  0.00% |  0.00% )   ( 0.004715s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009164s |  0.00% |  0.05% )   ( 0.009021s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1015.3.0:       ( 16.839358s |  1.66% |  3.35% )   ( 16.124381s |  1.75% |  3.50% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001015s |  0.00% |  0.00% )   ( 0.001040s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
23.4.0:         ( 16.838196s |  1.66% | 99.99% )   ( 16.123174s |  1.75% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p17
29.5.0:         ( 0.038862s |  0.00% |  0.23% )   ( 0.038724s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.027548s |  0.00% |  0.16% )   ( 0.027465s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.023549s |  0.00% |  0.13% )   ( 0.023484s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.033119s |  0.00% |  0.19% )   ( 0.033007s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.038973s |  0.00% |  0.23% )   ( 0.038848s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002922s |  0.00% |  0.00% )   ( 0.003304s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
37.5.0:         ( 0.002702s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.003252s |  0.00% |  0.00% )   ( 0.003627s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p17
40.5.0:         ( 0.158046s |  0.01% |  0.05% )   ( 0.004152s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002970s |  0.00% |  0.00% )   ( 0.003276s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.002657s |  0.00% |  0.00% )   ( 0.003026s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.002438s |  0.00% |  0.00% )   ( 0.002770s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002600s |  0.00% |  0.00% )   ( 0.002951s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.019730s |  0.00% |  0.00% )   ( 0.020019s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.002726s |  0.00% |  0.00% )   ( 0.003068s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.003068s |  0.00% |  0.00% )   ( 0.003415s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p17
53.5.0:         ( 0.002552s |  0.00% |  0.00% )   ( 0.002907s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.002476s |  0.00% |  0.00% )   ( 0.002818s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.448707s |  1.62% |  5.74% )   ( 15.885153s |  1.72% |  5.79% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002667s |  0.00% |  0.01% )   ( 0.003030s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.130226s |  0.11% |  6.87% )   ( 1.041780s |  0.11% |  6.55% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.982985s |  0.19% | 12.05% )   ( 1.907585s |  0.20% | 12.00% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.572859s |  0.15% |  9.56% )   ( 1.527057s |  0.16% |  9.61% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.937619s |  0.19% | 11.77% )   ( 1.916981s |  0.20% | 12.06% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.503517s |  0.14% |  9.14% )   ( 1.480250s |  0.16% |  9.31% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.982371s |  0.09% |  5.97% )   ( 0.956392s |  0.10% |  6.02% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.445033s |  0.04% |  2.70% )   ( 0.416791s |  0.04% |  2.62% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.055087s |  0.10% |  6.41% )   ( 1.020601s |  0.11% |  6.42% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.371661s |  0.03% |  2.25% )   ( 0.334909s |  0.03% |  2.10% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.348025s |  0.13% |  8.19% )   ( 1.283280s |  0.13% |  8.07% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.343584s |  0.33% | 20.32% )   ( 3.243035s |  0.35% | 20.41% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.401303s |  0.03% |  2.43% )   ( 0.388635s |  0.04% |  2.44% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.371770s |  0.03% |  2.26% )   ( 0.364827s |  0.03% |  2.29% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002538s |  0.00% |  0.00% )   ( 0.002872s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.002312s |  0.00% |  0.00% )   ( 0.002625s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.002624s |  0.00% |  0.00% )   ( 0.002935s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.010368s |  0.00% |  0.06% )   ( 0.008001s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1015.3.0:       ( 18.466682s |  1.82% |  3.67% )   ( 17.716140s |  1.92% |  3.85% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001038s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
23.4.0:         ( 18.465496s |  1.82% | 99.99% )   ( 17.714911s |  1.92% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p18
29.5.0:         ( 0.039966s |  0.00% |  0.21% )   ( 0.039837s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.030278s |  0.00% |  0.16% )   ( 0.030184s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.034917s |  0.00% |  0.18% )   ( 0.034805s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.030889s |  0.00% |  0.16% )   ( 0.030778s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.035266s |  0.00% |  0.19% )   ( 0.035145s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004944s |  0.00% |  0.00% )   ( 0.005514s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
37.5.0:         ( 0.004602s |  0.00% |  0.00% )   ( 0.005163s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005357s |  0.00% |  0.00% )   ( 0.005979s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p18
40.5.0:         ( 0.089472s |  0.00% |  0.01% )   ( 0.006341s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004754s |  0.00% |  0.00% )   ( 0.005372s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004397s |  0.00% |  0.00% )   ( 0.004996s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004231s |  0.00% |  0.00% )   ( 0.004791s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004938s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.038699s |  0.00% |  0.00% )   ( 0.036187s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.004575s |  0.00% |  0.00% )   ( 0.005164s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.005256s |  0.00% |  0.00% )   ( 0.005823s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p18
53.5.0:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004732s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004078s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 18.096708s |  1.79% |  3.37% )   ( 17.424017s |  1.89% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004223s |  0.00% |  0.02% )   ( 0.004796s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.306014s |  0.12% |  7.21% )   ( 1.262143s |  0.13% |  7.24% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.004266s |  0.19% | 11.07% )   ( 1.984320s |  0.21% | 11.38% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.727581s |  0.17% |  9.54% )   ( 1.653154s |  0.17% |  9.48% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.968049s |  0.19% | 10.87% )   ( 1.910280s |  0.20% | 10.96% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.677523s |  0.16% |  9.26% )   ( 1.583588s |  0.17% |  9.08% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.149218s |  0.11% |  6.35% )   ( 1.116370s |  0.12% |  6.40% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.607625s |  0.06% |  3.35% )   ( 0.577487s |  0.06% |  3.31% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.202200s |  0.11% |  6.64% )   ( 1.145334s |  0.12% |  6.57% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.546518s |  0.05% |  3.01% )   ( 0.516401s |  0.05% |  2.96% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.497527s |  0.14% |  8.27% )   ( 1.453223s |  0.15% |  8.34% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.194748s |  0.31% | 17.65% )   ( 3.073260s |  0.33% | 17.63% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.613223s |  0.06% |  3.38% )   ( 0.578362s |  0.06% |  3.31% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.597993s |  0.05% |  3.30% )   ( 0.565299s |  0.06% |  3.24% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004221s |  0.00% |  0.00% )   ( 0.004792s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003892s |  0.00% |  0.00% )   ( 0.004451s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004258s |  0.00% |  0.00% )   ( 0.004784s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005009s |  0.00% |  0.02% )   ( 0.005072s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1015.3.0:       ( 17.498380s |  1.73% |  3.48% )   ( 16.416377s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001022s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
23.4.0:         ( 17.497207s |  1.73% | 99.99% )   ( 16.415159s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p19
29.5.0:         ( 0.038924s |  0.00% |  0.22% )   ( 0.038787s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.034577s |  0.00% |  0.19% )   ( 0.034467s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.034010s |  0.00% |  0.19% )   ( 0.033908s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.030945s |  0.00% |  0.17% )   ( 0.030831s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.033354s |  0.00% |  0.19% )   ( 0.033245s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004299s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
37.5.0:         ( 0.003902s |  0.00% |  0.00% )   ( 0.004388s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004566s |  0.00% |  0.00% )   ( 0.005104s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p19
40.5.0:         ( 0.148970s |  0.01% |  0.03% )   ( 0.006097s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.007115s |  0.00% |  0.00% )   ( 0.004625s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003911s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003735s |  0.00% |  0.00% )   ( 0.004224s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003952s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.033193s |  0.00% |  0.00% )   ( 0.030586s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003948s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004421s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p19
53.5.0:         ( 0.003620s |  0.00% |  0.00% )   ( 0.004142s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003500s |  0.00% |  0.00% )   ( 0.003992s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 17.078301s |  1.69% |  4.06% )   ( 16.138702s |  1.75% |  4.09% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003533s |  0.00% |  0.02% )   ( 0.004029s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.233205s |  0.12% |  7.22% )   ( 1.114308s |  0.12% |  6.90% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.046249s |  0.20% | 11.98% )   ( 1.972390s |  0.21% | 12.22% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.658015s |  0.16% |  9.70% )   ( 1.599847s |  0.17% |  9.91% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.054614s |  0.20% | 12.03% )   ( 1.957490s |  0.21% | 12.12% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.588416s |  0.15% |  9.30% )   ( 1.507281s |  0.16% |  9.33% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.007484s |  0.09% |  5.89% )   ( 0.982542s |  0.10% |  6.08% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.579382s |  0.05% |  3.39% )   ( 0.492363s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.181852s |  0.11% |  6.92% )   ( 1.014919s |  0.11% |  6.28% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.488985s |  0.04% |  2.86% )   ( 0.437914s |  0.04% |  2.71% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.373821s |  0.13% |  8.04% )   ( 1.272938s |  0.13% |  7.88% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.864034s |  0.28% | 16.77% )   ( 2.815689s |  0.30% | 17.44% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.508709s |  0.05% |  2.97% )   ( 0.493037s |  0.05% |  3.05% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.490002s |  0.04% |  2.86% )   ( 0.473955s |  0.05% |  2.93% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003746s |  0.00% |  0.00% )   ( 0.004233s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003357s |  0.00% |  0.00% )   ( 0.003824s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004393s |  0.00% |  0.00% )   ( 0.004284s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005227s |  0.00% |  0.02% )   ( 0.005298s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1015.3.0:       ( 18.642751s |  1.84% |  3.71% )   ( 18.259535s |  1.98% |  3.97% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001011s |  0.00% |  0.00% )   ( 0.001034s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
23.4.0:         ( 18.641588s |  1.84% | 99.99% )   ( 18.258331s |  1.98% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p20
29.5.0:         ( 0.038118s |  0.00% |  0.20% )   ( 0.037861s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.029681s |  0.00% |  0.15% )   ( 0.029479s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.036798s |  0.00% |  0.19% )   ( 0.036556s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.039718s |  0.00% |  0.21% )   ( 0.039406s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.043573s |  0.00% |  0.23% )   ( 0.043244s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.001743s |  0.00% |  0.00% )   ( 0.001970s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   true
37.5.0:         ( 0.001474s |  0.00% |  0.00% )   ( 0.001672s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002042s |  0.00% |  0.00% )   ( 0.002268s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p20
40.5.0:         ( 0.090441s |  0.00% |  0.04% )   ( 0.002422s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.001610s |  0.00% |  0.00% )   ( 0.001828s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.001399s |  0.00% |  0.00% )   ( 0.001591s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.001462s |  0.00% |  0.00% )   ( 0.001668s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.001488s |  0.00% |  0.00% )   ( 0.001678s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.012008s |  0.00% |  0.00% )   ( 0.012206s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.001667s |  0.00% |  0.00% )   ( 0.001873s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.001845s |  0.00% |  0.00% )   ( 0.002058s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p20
53.5.0:         ( 0.001502s |  0.00% |  0.00% )   ( 0.001718s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.001446s |  0.00% |  0.00% )   ( 0.001656s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 18.319632s |  1.81% |  9.82% )   ( 18.025534s |  1.96% |  9.87% )    	(10x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001434s |  0.00% |  0.00% )   ( 0.001641s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.233965s |  0.12% |  6.73% )   ( 1.224157s |  0.13% |  6.79% )    	(10x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.488418s |  0.24% | 13.58% )   ( 2.461737s |  0.26% | 13.65% )    	(10x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.833596s |  0.18% | 10.00% )   ( 1.815969s |  0.19% | 10.07% )    	(10x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.461190s |  0.24% | 13.43% )   ( 2.447114s |  0.26% | 13.57% )    	(10x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.789746s |  0.17% |  9.76% )   ( 1.779331s |  0.19% |  9.87% )    	(10x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.065408s |  0.10% |  5.81% )   ( 1.059572s |  0.11% |  5.87% )    	(10x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.335900s |  0.03% |  1.83% )   ( 0.328884s |  0.03% |  1.82% )    	(10x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.290289s |  0.12% |  7.04% )   ( 1.234860s |  0.13% |  6.85% )    	(10x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.268378s |  0.02% |  1.46% )   ( 0.262206s |  0.02% |  1.45% )    	(10x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.460987s |  0.14% |  7.97% )   ( 1.441116s |  0.15% |  7.99% )    	(10x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.509893s |  0.34% | 19.15% )   ( 3.423700s |  0.37% | 18.99% )    	(10x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.301222s |  0.02% |  1.64% )   ( 0.292117s |  0.03% |  1.62% )    	(10x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.279206s |  0.02% |  1.52% )   ( 0.253130s |  0.02% |  1.40% )    	(10x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.001486s |  0.00% |  0.00% )   ( 0.001687s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.001377s |  0.00% |  0.00% )   ( 0.001566s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004557s |  0.00% |  0.00% )   ( 0.001622s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005181s |  0.00% |  0.02% )   ( 0.005251s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1015.3.0:       ( 16.531746s |  1.63% |  3.29% )   ( 16.077334s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001081s |  0.00% |  0.00% )   ( 0.001103s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
23.4.0:         ( 16.530515s |  1.63% | 99.99% )   ( 16.076062s |  1.74% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p21
29.5.0:         ( 0.039012s |  0.00% |  0.23% )   ( 0.038876s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.035850s |  0.00% |  0.21% )   ( 0.035734s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.047284s |  0.00% |  0.28% )   ( 0.047131s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.041425s |  0.00% |  0.25% )   ( 0.041271s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.036964s |  0.00% |  0.22% )   ( 0.036819s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002994s |  0.00% |  0.00% )   ( 0.003350s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
37.5.0:         ( 0.002893s |  0.00% |  0.00% )   ( 0.003278s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.003482s |  0.00% |  0.00% )   ( 0.003873s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p21
40.5.0:         ( 0.080091s |  0.00% |  0.02% )   ( 0.004052s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002871s |  0.00% |  0.00% )   ( 0.003251s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.002913s |  0.00% |  0.00% )   ( 0.003295s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.002612s |  0.00% |  0.00% )   ( 0.002980s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002673s |  0.00% |  0.00% )   ( 0.003009s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.021912s |  0.00% |  0.00% )   ( 0.022241s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.006402s |  0.00% |  0.00% )   ( 0.003469s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003704s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p21
53.5.0:         ( 0.002857s |  0.00% |  0.00% )   ( 0.003246s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.002472s |  0.00% |  0.00% )   ( 0.002820s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.173809s |  1.60% |  5.43% )   ( 15.793728s |  1.71% |  5.45% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002706s |  0.00% |  0.01% )   ( 0.003075s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.119153s |  0.11% |  6.91% )   ( 1.040214s |  0.11% |  6.58% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.963359s |  0.19% | 12.13% )   ( 1.911111s |  0.20% | 12.10% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.534325s |  0.15% |  9.48% )   ( 1.503321s |  0.16% |  9.51% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.949848s |  0.19% | 12.05% )   ( 1.915039s |  0.20% | 12.12% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.508465s |  0.14% |  9.32% )   ( 1.476780s |  0.16% |  9.35% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.956312s |  0.09% |  5.91% )   ( 0.923907s |  0.10% |  5.84% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.447922s |  0.04% |  2.76% )   ( 0.419174s |  0.04% |  2.65% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.005869s |  0.09% |  6.21% )   ( 0.986916s |  0.10% |  6.24% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.360885s |  0.03% |  2.23% )   ( 0.358861s |  0.03% |  2.27% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.300586s |  0.12% |  8.04% )   ( 1.295919s |  0.14% |  8.20% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.226526s |  0.31% | 19.94% )   ( 3.176906s |  0.34% | 20.11% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.400505s |  0.03% |  2.47% )   ( 0.402069s |  0.04% |  2.54% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.397348s |  0.03% |  2.45% )   ( 0.380436s |  0.04% |  2.40% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002711s |  0.00% |  0.00% )   ( 0.003055s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.002489s |  0.00% |  0.00% )   ( 0.002826s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.002741s |  0.00% |  0.00% )   ( 0.003091s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
54.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
63.5.0:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
66.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit
67.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p* 1>&21
68.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.008785s |  0.00% |  0.05% )   ( 0.008768s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1015.3.0:       ( 16.632848s |  1.64% |  3.31% )   ( 15.767117s |  1.71% |  3.43% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001059s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
23.4.0:         ( 16.631635s |  1.64% | 99.99% )   ( 15.765859s |  1.71% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p22
29.5.0:         ( 0.039109s |  0.00% |  0.23% )   ( 0.038972s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.039610s |  0.00% |  0.23% )   ( 0.039476s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.039936s |  0.00% |  0.24% )   ( 0.039780s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.040666s |  0.00% |  0.24% )   ( 0.040527s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.040676s |  0.00% |  0.24% )   ( 0.040555s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004869s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003980s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004893s |  0.00% |  0.00% )   ( 0.005441s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p22
40.5.0:         ( 0.174216s |  0.01% |  0.04% )   ( 0.006018s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004342s |  0.00% |  0.00% )   ( 0.004892s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003985s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004299s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.039013s |  0.00% |  0.00% )   ( 0.032829s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.011387s |  0.00% |  0.00% )   ( 0.004739s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004889s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p22
53.5.0:         ( 0.003550s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003477s |  0.00% |  0.00% )   ( 0.003938s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.147037s |  1.59% |  3.88% )   ( 15.456109s |  1.68% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003731s |  0.00% |  0.02% )   ( 0.004266s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.114355s |  0.11% |  6.90% )   ( 1.056188s |  0.11% |  6.83% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.910813s |  0.18% | 11.83% )   ( 1.798645s |  0.19% | 11.63% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.607806s |  0.15% |  9.95% )   ( 1.519186s |  0.16% |  9.82% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.844217s |  0.18% | 11.42% )   ( 1.788821s |  0.19% | 11.57% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.525193s |  0.15% |  9.44% )   ( 1.467970s |  0.15% |  9.49% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.007163s |  0.09% |  6.23% )   ( 0.960832s |  0.10% |  6.21% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.568588s |  0.05% |  3.52% )   ( 0.516930s |  0.05% |  3.34% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.034612s |  0.10% |  6.40% )   ( 0.997563s |  0.10% |  6.45% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.505026s |  0.05% |  3.12% )   ( 0.456406s |  0.04% |  2.95% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.334532s |  0.13% |  8.26% )   ( 1.270857s |  0.13% |  8.22% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.650826s |  0.26% | 16.41% )   ( 2.617527s |  0.28% | 16.93% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.521086s |  0.05% |  3.22% )   ( 0.504653s |  0.05% |  3.26% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.519089s |  0.05% |  3.21% )   ( 0.496265s |  0.05% |  3.21% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003883s |  0.00% |  0.00% )   ( 0.004401s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003855s |  0.00% |  0.00% )   ( 0.004343s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.006772s |  0.00% |  0.04% )   ( 0.006814s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1015.3.0:       ( 16.572472s |  1.64% |  3.29% )   ( 15.894721s |  1.72% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001043s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
23.4.0:         ( 16.571272s |  1.64% | 99.99% )   ( 15.893478s |  1.72% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p23
29.5.0:         ( 0.040692s |  0.00% |  0.24% )   ( 0.040538s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.042180s |  0.00% |  0.25% )   ( 0.042026s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.039424s |  0.00% |  0.23% )   ( 0.039264s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.042120s |  0.00% |  0.25% )   ( 0.041972s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.044813s |  0.00% |  0.27% )   ( 0.044649s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004690s |  0.00% |  0.00% )   ( 0.005296s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
37.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004777s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.005359s |  0.00% |  0.00% )   ( 0.005952s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p23
40.5.0:         ( 0.177136s |  0.01% |  0.03% )   ( 0.006599s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004548s |  0.00% |  0.00% )   ( 0.005148s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.005010s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004793s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.004170s |  0.00% |  0.00% )   ( 0.004713s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.034771s |  0.00% |  0.00% )   ( 0.032239s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.009015s |  0.00% |  0.00% )   ( 0.005196s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.005117s |  0.00% |  0.00% )   ( 0.005729s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p23
53.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004675s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.004033s |  0.00% |  0.00% )   ( 0.004613s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.077400s |  1.59% |  3.46% )   ( 15.569489s |  1.69% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004064s |  0.00% |  0.02% )   ( 0.004638s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.127153s |  0.11% |  7.01% )   ( 1.056463s |  0.11% |  6.78% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 1.831179s |  0.18% | 11.38% )   ( 1.772500s |  0.19% | 11.38% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.602232s |  0.15% |  9.96% )   ( 1.521662s |  0.16% |  9.77% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.714616s |  0.16% | 10.66% )   ( 1.692299s |  0.18% | 10.86% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.444818s |  0.14% |  8.98% )   ( 1.415878s |  0.15% |  9.09% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.007518s |  0.09% |  6.26% )   ( 0.962087s |  0.10% |  6.17% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.574879s |  0.05% |  3.57% )   ( 0.543455s |  0.05% |  3.49% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.065172s |  0.10% |  6.62% )   ( 1.000639s |  0.10% |  6.42% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.514338s |  0.05% |  3.19% )   ( 0.489216s |  0.05% |  3.14% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.325208s |  0.13% |  8.24% )   ( 1.310188s |  0.14% |  8.41% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 2.748004s |  0.27% | 17.09% )   ( 2.711437s |  0.29% | 17.41% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.565541s |  0.05% |  3.51% )   ( 0.546401s |  0.05% |  3.50% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.552678s |  0.05% |  3.43% )   ( 0.542626s |  0.05% |  3.48% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.004110s |  0.00% |  0.00% )   ( 0.004690s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.004092s |  0.00% |  0.00% )   ( 0.004654s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.004391s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005141s |  0.00% |  0.03% )   ( 0.005209s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1015.3.0:       ( 18.462084s |  1.82% |  3.67% )   ( 18.157329s |  1.97% |  3.95% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001048s |  0.00% |  0.00% )   ( 0.001074s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
23.4.0:         ( 18.460871s |  1.82% | 99.99% )   ( 18.156071s |  1.97% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p24
29.5.0:         ( 0.044365s |  0.00% |  0.24% )   ( 0.044200s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.038511s |  0.00% |  0.20% )   ( 0.038372s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.039004s |  0.00% |  0.21% )   ( 0.038876s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.038958s |  0.00% |  0.21% )   ( 0.038832s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.038933s |  0.00% |  0.21% )   ( 0.038810s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.001702s |  0.00% |  0.00% )   ( 0.001921s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   true
37.5.0:         ( 0.001545s |  0.00% |  0.00% )   ( 0.001756s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002055s |  0.00% |  0.00% )   ( 0.002289s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p24
40.5.0:         ( 0.061099s |  0.00% |  0.03% )   ( 0.002465s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.001665s |  0.00% |  0.00% )   ( 0.001890s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.001628s |  0.00% |  0.00% )   ( 0.001841s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.001494s |  0.00% |  0.00% )   ( 0.001704s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.001540s |  0.00% |  0.00% )   ( 0.001748s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.012693s |  0.00% |  0.00% )   ( 0.012869s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.001557s |  0.00% |  0.00% )   ( 0.001747s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.001741s |  0.00% |  0.00% )   ( 0.001953s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p24
53.5.0:         ( 0.001471s |  0.00% |  0.00% )   ( 0.001690s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.001295s |  0.00% |  0.00% )   ( 0.001485s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000116s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 18.159134s |  1.79% |  9.83% )   ( 17.910321s |  1.94% |  9.86% )    	(10x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001466s |  0.00% |  0.00% )   ( 0.001682s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.201783s |  0.11% |  6.61% )   ( 1.192564s |  0.12% |  6.65% )    	(10x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.388030s |  0.23% | 13.15% )   ( 2.379390s |  0.25% | 13.28% )    	(10x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.838680s |  0.18% | 10.12% )   ( 1.793097s |  0.19% | 10.01% )    	(10x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.458157s |  0.24% | 13.53% )   ( 2.418985s |  0.26% | 13.50% )    	(10x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.786792s |  0.17% |  9.83% )   ( 1.775332s |  0.19% |  9.91% )    	(10x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.053981s |  0.10% |  5.80% )   ( 1.050835s |  0.11% |  5.86% )    	(10x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.332597s |  0.03% |  1.83% )   ( 0.320790s |  0.03% |  1.79% )    	(10x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.232134s |  0.12% |  6.78% )   ( 1.185709s |  0.12% |  6.62% )    	(10x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.273544s |  0.02% |  1.50% )   ( 0.263276s |  0.02% |  1.46% )    	(10x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.475990s |  0.14% |  8.12% )   ( 1.459667s |  0.15% |  8.14% )    	(10x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.550653s |  0.35% | 19.55% )   ( 3.522958s |  0.38% | 19.66% )    	(10x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.288108s |  0.02% |  1.58% )   ( 0.288435s |  0.03% |  1.61% )    	(10x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.277219s |  0.02% |  1.52% )   ( 0.257601s |  0.02% |  1.43% )    	(10x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.001473s |  0.00% |  0.00% )   ( 0.001679s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.001218s |  0.00% |  0.00% )   ( 0.001402s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.001504s |  0.00% |  0.00% )   ( 0.001705s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005008s |  0.00% |  0.02% )   ( 0.005074s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000165s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1015.3.0:       ( 16.838983s |  1.66% |  3.35% )   ( 16.446339s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001015s |  0.00% |  0.00% )   ( 0.001042s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
23.4.0:         ( 16.837800s |  1.66% | 99.99% )   ( 16.445109s |  1.78% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000189s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p25
29.5.0:         ( 0.043148s |  0.00% |  0.25% )   ( 0.037400s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.035257s |  0.00% |  0.20% )   ( 0.033593s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.043037s |  0.00% |  0.25% )   ( 0.042857s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.036130s |  0.00% |  0.21% )   ( 0.036003s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.039787s |  0.00% |  0.23% )   ( 0.039651s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.002534s |  0.00% |  0.00% )   ( 0.002840s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   true
37.5.0:         ( 0.002189s |  0.00% |  0.00% )   ( 0.002490s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.002528s |  0.00% |  0.00% )   ( 0.002823s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p25
40.5.0:         ( 0.104767s |  0.01% |  0.04% )   ( 0.003363s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.002505s |  0.00% |  0.00% )   ( 0.002805s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.002253s |  0.00% |  0.00% )   ( 0.002590s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.002089s |  0.00% |  0.00% )   ( 0.002382s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.002360s |  0.00% |  0.00% )   ( 0.002673s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.018619s |  0.00% |  0.00% )   ( 0.018870s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.002391s |  0.00% |  0.00% )   ( 0.002679s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.002544s |  0.00% |  0.00% )   ( 0.002840s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p25
53.5.0:         ( 0.002127s |  0.00% |  0.00% )   ( 0.002430s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.002072s |  0.00% |  0.00% )   ( 0.002339s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 16.474781s |  1.63% |  6.98% )   ( 16.186735s |  1.76% |  7.03% )    	(14x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002120s |  0.00% |  0.01% )   ( 0.002419s |  0.00% |  0.01% )    	(14x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.091441s |  0.10% |  6.62% )   ( 1.063661s |  0.11% |  6.57% )    	(14x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.021345s |  0.20% | 12.26% )   ( 2.005845s |  0.21% | 12.39% )    	(14x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.549387s |  0.15% |  9.40% )   ( 1.519053s |  0.16% |  9.38% )    	(14x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 1.990738s |  0.19% | 12.08% )   ( 1.974268s |  0.21% | 12.19% )    	(14x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.562224s |  0.15% |  9.48% )   ( 1.523683s |  0.16% |  9.41% )    	(14x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 0.923343s |  0.09% |  5.60% )   ( 0.917363s |  0.09% |  5.66% )    	(14x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.365887s |  0.03% |  2.22% )   ( 0.352592s |  0.03% |  2.17% )    	(14x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.045225s |  0.10% |  6.34% )   ( 1.040722s |  0.11% |  6.42% )    	(14x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.320985s |  0.03% |  1.94% )   ( 0.309904s |  0.03% |  1.91% )    	(14x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.366923s |  0.13% |  8.29% )   ( 1.304703s |  0.14% |  8.06% )    	(14x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.542987s |  0.35% | 21.50% )   ( 3.511873s |  0.38% | 21.69% )    	(14x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.365867s |  0.03% |  2.22% )   ( 0.343630s |  0.03% |  2.12% )    	(14x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.326309s |  0.03% |  1.98% )   ( 0.317019s |  0.03% |  1.95% )    	(14x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.002054s |  0.00% |  0.00% )   ( 0.002338s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.001845s |  0.00% |  0.00% )   ( 0.002104s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.002127s |  0.00% |  0.00% )   ( 0.002358s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.009018s |  0.00% |  0.05% )   ( 0.009096s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000168s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1015.3.0:       ( 19.356851s |  1.91% |  3.85% )   ( 18.728525s |  2.03% |  4.07% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001046s |  0.00% |  0.00% )   ( 0.001065s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
23.4.0:         ( 19.355649s |  1.91% | 99.99% )   ( 18.727288s |  2.03% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p26
29.5.0:         ( 0.038861s |  0.00% |  0.20% )   ( 0.038719s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.038956s |  0.00% |  0.20% )   ( 0.038826s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.038973s |  0.00% |  0.20% )   ( 0.038848s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.038995s |  0.00% |  0.20% )   ( 0.038870s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.040404s |  0.00% |  0.20% )   ( 0.040258s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.004354s |  0.00% |  0.00% )   ( 0.004880s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
37.5.0:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004449s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p26
40.5.0:         ( 0.116117s |  0.01% |  0.02% )   ( 0.005768s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004694s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003603s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003903s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031016s |  0.00% |  0.00% )   ( 0.029058s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003817s |  0.00% |  0.00% )   ( 0.004294s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004381s |  0.00% |  0.00% )   ( 0.004897s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p26
53.5.0:         ( 0.006637s |  0.00% |  0.00% )   ( 0.004136s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003450s |  0.00% |  0.00% )   ( 0.003932s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 18.948184s |  1.87% |  3.91% )   ( 18.428498s |  2.00% |  3.93% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003593s |  0.00% |  0.01% )   ( 0.004080s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.371770s |  0.13% |  7.23% )   ( 1.352283s |  0.14% |  7.33% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.197677s |  0.21% | 11.59% )   ( 2.164323s |  0.23% | 11.74% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.766557s |  0.17% |  9.32% )   ( 1.715788s |  0.18% |  9.31% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.172172s |  0.21% | 11.46% )   ( 2.104708s |  0.22% | 11.42% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.738683s |  0.17% |  9.17% )   ( 1.689835s |  0.18% |  9.16% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.217576s |  0.12% |  6.42% )   ( 1.203322s |  0.13% |  6.52% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.561406s |  0.05% |  2.96% )   ( 0.539366s |  0.05% |  2.92% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.305844s |  0.12% |  6.89% )   ( 1.231501s |  0.13% |  6.68% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.479477s |  0.04% |  2.53% )   ( 0.462093s |  0.05% |  2.50% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.546865s |  0.15% |  8.16% )   ( 1.506428s |  0.16% |  8.17% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.526696s |  0.34% | 18.61% )   ( 3.432936s |  0.37% | 18.62% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.547460s |  0.05% |  2.88% )   ( 0.523788s |  0.05% |  2.84% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.512408s |  0.05% |  2.70% )   ( 0.498047s |  0.05% |  2.70% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004252s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003393s |  0.00% |  0.00% )   ( 0.003847s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003798s |  0.00% |  0.00% )   ( 0.004273s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.004933s |  0.00% |  0.02% )   ( 0.005014s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1015.3.0:       ( 18.565534s |  1.83% |  3.69% )   ( 17.866886s |  1.94% |  3.88% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001059s |  0.00% |  0.00% )   ( 0.001081s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
23.4.0:         ( 18.564325s |  1.83% | 99.99% )   ( 17.865635s |  1.94% | 99.99% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
23.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.nXEGXL"
25.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p27
29.5.0:         ( 0.039765s |  0.00% |  0.21% )   ( 0.039616s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
31.5.0:         ( 0.044299s |  0.00% |  0.23% )   ( 0.044149s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 69989 ${BASHPID}' INT
32.5.0:         ( 0.040981s |  0.00% |  0.22% )   ( 0.040838s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 69989 ${BASHPID}' TERM
33.5.0:         ( 0.043163s |  0.00% |  0.23% )   ( 0.042974s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 69989 ${BASHPID}' HUP
34.5.0:         ( 0.043016s |  0.00% |  0.23% )   ( 0.042883s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
36.5.0:         ( 0.003734s |  0.00% |  0.00% )   ( 0.004189s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
37.5.0:         ( 0.003466s |  0.00% |  0.00% )   ( 0.003919s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
37.5.1:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.nXEGXL"/.nLines
37.5.2:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
37.5.3:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
39.5.0:         ( 0.004330s |  0.00% |  0.00% )   ( 0.004827s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p27
40.5.0:         ( 0.155519s |  0.01% |  0.03% )   ( 0.005337s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
41.5.0:         ( 0.003790s |  0.00% |  0.00% )   ( 0.004301s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.quit ]]
45.5.0:         ( 0.003788s |  0.00% |  0.00% )   ( 0.004258s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.done ]]
45.5.1:         ( 0.003463s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
47.5.0:         ( 0.003575s |  0.00% |  0.00% )   ( 0.004041s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
48.5.0:         ( 0.031715s |  0.00% |  0.00% )   ( 0.029098s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
51.5.0:         ( 0.003546s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
52.5.0:         ( 0.004140s |  0.00% |  0.00% )   ( 0.004644s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.nXEGXL"/.wait/p27
53.5.0:         ( 0.003328s |  0.00% |  0.00% )   ( 0.003774s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
73.5.0:         ( 0.003366s |  0.00% |  0.00% )   ( 0.003829s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
74.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
75.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
75.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
78.5.0:         ( 18.108843s |  1.79% |  4.24% )   ( 17.556948s |  1.90% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003502s |  0.00% |  0.01% )   ( 0.004010s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
23.6.0:         ( 1.285222s |  0.12% |  7.09% )   ( 1.259386s |  0.13% |  7.17% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
24.6.0:         ( 2.128749s |  0.21% | 11.75% )   ( 2.071149s |  0.22% | 11.79% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
25.6.0:         ( 1.826260s |  0.18% | 10.08% )   ( 1.658532s |  0.18% |  9.44% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
26.6.0:         ( 2.091374s |  0.20% | 11.54% )   ( 2.031284s |  0.22% | 11.56% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
27.6.0:         ( 1.634601s |  0.16% |  9.02% )   ( 1.605949s |  0.17% |  9.14% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
28.6.0:         ( 1.102962s |  0.10% |  6.09% )   ( 1.088522s |  0.11% |  6.19% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
29.6.0:         ( 0.522413s |  0.05% |  2.88% )   ( 0.513152s |  0.05% |  2.92% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
30.6.0:         ( 1.177876s |  0.11% |  6.50% )   ( 1.159939s |  0.12% |  6.60% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
31.6.0:         ( 0.472281s |  0.04% |  2.60% )   ( 0.441439s |  0.04% |  2.51% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
32.6.0:         ( 1.476546s |  0.14% |  8.15% )   ( 1.419648s |  0.15% |  8.08% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
33.6.0:         ( 3.349966s |  0.33% | 18.49% )   ( 3.324711s |  0.36% | 18.93% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
34.6.0:         ( 0.554971s |  0.05% |  3.06% )   ( 0.501389s |  0.05% |  2.85% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
35.6.0:         ( 0.482120s |  0.04% |  2.66% )   ( 0.477838s |  0.05% |  2.72% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
37.5.1:         ( 0.003306s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
73.5.1:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003751s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
76.5.0:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004042s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
42.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
19.5.0:         ( 0.005046s |  0.00% |  0.02% )   ( 0.005120s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.nXEGXL"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.nXEGXL"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1017.3.0:       ( 0.000172s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1018.3.0:       ( 0.000166s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1019.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1021.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1025.3.0:       ( 0.001428s |  0.00% |  0.00% )   ( 0.001443s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1026.3.0:       ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1070.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1071.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1078.3.0:       ( 21.244424s |  2.10% |  4.22% )   ( 0.001642s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1080.3.0:       ( 0.000168s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1083.3.0:       ( 0.000164s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  └─  ${nSpawnFlag}
1084.2.0:       ( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │   wait
24.2.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.002411s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.nXEGXL" 2>/dev/null
