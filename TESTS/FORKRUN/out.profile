LINE DEPTH CMD 	COMBINED WALL-CLOCK TIME          COMBINED CPU TIME               	COMMAND                             
line.depth.cmd:	( time | total % | cur depth % )  ( time | total % | cur depth % )   	(count) <command>
_______________	__________________________________________________________________	____________________________________

9.0.0:          ( 549.537853s | 50.08% )            ( 997.663157s | 49.95% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
1.1.0:          ( 0.000645s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(1x)	├─  forkrun ff < /mnt/ramdisk/flist > /dev/null
24.1.0:         ( 549.537208s | 50.08% | 99.99% )   ( 997.662845s | 49.95% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041161s |  0.00% |  0.00% )   ( 0.040926s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │   [[ "$1" == [-+]* ]]
218.2.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.000878s |  0.00% |  0.00% )   ( 0.000701s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.005902s |  0.00% |  0.00% )   ( 0.005902s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.005902s |  0.00% |100.00% )   ( 0.005902s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001058s |  0.00% |  0.00% )   ( 0.001136s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026306s |  0.00% |  0.00% )   ( 0.000884s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 549.453621s | 50.08% | 99.98% )   ( 997.601802s | 49.95% | 99.99% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001908s |  0.00% |  0.00% )   ( 0.002199s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001908s |  0.00% |100.00% )   ( 0.002199s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000127s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000343s |  0.00% |  0.00% )   ( 0.010751s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003099s |  0.00% |  0.00% )   ( 0.003149s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000121s |  0.00% |100.00% )   ( 0.000149s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000870s |  0.00% |  0.00% )   ( 0.001009s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000069s |  0.00% |  7.93% )   ( 0.000081s |  0.00% |  8.02% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000068s |  0.00% |  7.81% )   ( 0.000080s |  0.00% |  7.92% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000070s |  0.00% |  8.04% )   ( 0.000082s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000071s |  0.00% |  8.16% )   ( 0.000082s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000071s |  0.00% |  8.16% )   ( 0.000080s |  0.00% |  7.92% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000070s |  0.00% |  8.04% )   ( 0.000082s |  0.00% |  8.12% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.70% )   ( 0.000079s |  0.00% |  7.82% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000114s |  0.00% | 13.10% )   ( 0.000126s |  0.00% | 12.48% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000067s |  0.00% |  7.70% )   ( 0.000079s |  0.00% |  7.82% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000066s |  0.00% |  7.58% )   ( 0.000078s |  0.00% |  7.73% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000067s |  0.00% |  7.70% )   ( 0.000079s |  0.00% |  7.82% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000070s |  0.00% |  8.04% )   ( 0.000081s |  0.00% |  8.02% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.007575s |  0.00% |  0.00% )   ( 0.007661s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.002454s |  0.00% |  0.00% )   ( 0.002545s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000466s |  0.00% | 18.98% )   ( 0.000483s |  0.00% | 18.97% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.001988s |  0.00% | 81.01% )   ( 0.002062s |  0.00% | 81.02% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
389.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${delimiterVal} ]]
390.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterVal='$'"'"'\n'"'"
391.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
391.3.1:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
401.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.003847s |  0.00% |  0.00% )   ( 0.003967s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000113s |  0.00% |100.00% )   ( 0.000130s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.001285s |  0.00% |  0.00% )   ( 0.001371s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000502s |  0.00% |  0.00% )   ( 0.000521s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.135203s |  0.01% |  0.02% )   ( 0.134984s |  0.00% |  0.01% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000299s |  0.00% |  0.22% )   ( 0.000330s |  0.00% |  0.24% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.021743s |  0.00% | 16.08% )   ( 0.021699s |  0.00% | 16.07% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023525s |  0.00% | 17.39% )   ( 0.023477s |  0.00% | 17.39% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023563s |  0.00% | 17.42% )   ( 0.023498s |  0.00% | 17.40% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023553s |  0.00% | 17.42% )   ( 0.023501s |  0.00% | 17.41% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023525s |  0.00% | 17.39% )   ( 0.023472s |  0.00% | 17.38% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000070s |  0.00% |  0.05% )   ( 0.000081s |  0.00% |  0.06% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.018698s |  0.00% | 13.82% )   ( 0.018664s |  0.00% | 13.82% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000091s |  0.00% |  0.06% )   ( 0.000103s |  0.00% |  0.07% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000071s |  0.00% |  0.05% )   ( 0.000082s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000065s |  0.00% |  0.04% )   ( 0.000077s |  0.00% |  0.05% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000418s |  0.00% |  0.00% )   ( 0.000449s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.061863s |  0.37% |  0.73% )   ( 1.843609s |  0.09% |  0.18% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.023429s |  0.00% |  0.57% )   ( 0.023381s |  0.00% |  1.26% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023595s |  0.00% |  0.58% )   ( 0.023545s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023568s |  0.00% |  0.58% )   ( 0.023519s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023512s |  0.00% |  0.57% )   ( 0.023463s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023551s |  0.00% |  0.57% )   ( 0.023498s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.090845s |  0.00% |  0.00% )   ( 0.103881s |  0.00% |  0.00% )    	(673x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.527586s |  0.23% |  0.09% )   ( 0.123699s |  0.00% |  0.00% )    	(672x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000952s |  0.00% |  0.00% )   ( 0.001073s |  0.00% |  0.01% )    	(5x)	│  │  │  │   continue
521.4.0:        ( 0.089551s |  0.00% |  0.00% )   ( 0.102221s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.089938s |  0.00% |  0.00% )   ( 0.102932s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000129s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.089652s |  0.00% |  0.00% )   ( 0.102567s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090672s |  0.00% |  0.00% )   ( 0.103390s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091225s |  0.00% |  0.00% )   ( 0.103868s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.087648s |  0.00% |  0.00% )   ( 0.100463s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.087933s |  0.00% |  0.00% )   ( 0.100715s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.087616s |  0.00% |  0.00% )   ( 0.100324s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.006633s |  0.00% |  0.16% )   ( 0.007077s |  0.00% |  0.38% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002647s |  0.00% |  0.06% )   ( 0.002991s |  0.00% |  0.16% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002647s |  0.00% |100.00% )   ( 0.002991s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086479s |  0.00% |  0.00% )   ( 0.099330s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.086184s |  0.00% |  0.00% )   ( 0.098986s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.085144s |  0.00% |  0.00% )   ( 0.097656s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.091934s |  0.00% |  0.00% )   ( 0.104922s |  0.00% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.089178s |  0.00% |  0.00% )   ( 0.102066s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.088106s |  0.00% |  0.00% )   ( 0.100881s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002796s |  0.00% |  0.00% )   ( 0.003186s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002818s |  0.00% |  0.00% )   ( 0.003243s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.052962s |  0.00% |  0.06% )   ( 0.043303s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003263s |  0.00% |  0.00% )   ( 0.003700s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.002997s |  0.00% |  0.00% )   ( 0.003411s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003216s |  0.00% |  0.00% )   ( 0.003639s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.003924s |  0.00% |  0.09% )   ( 0.004022s |  0.00% |  0.21% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/pAuto
598.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.074581s |  0.00% |  0.01% )   ( 0.074741s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.006346s |  0.00% |  0.00% )   ( 0.007268s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000429s |  0.00% |  6.76% )   ( 0.000473s |  0.00% |  6.50% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000283s |  0.00% |  4.45% )   ( 0.000304s |  0.00% |  4.18% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000080s |  0.00% |  1.26% )   ( 0.000091s |  0.00% |  1.25% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000217s |  0.00% |  3.41% )   ( 0.000230s |  0.00% |  3.16% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.10% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000081s |  0.00% |  1.27% )   ( 0.000092s |  0.00% |  1.26% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1091.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
1093.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000080s |  0.00% |  1.10% )    	(1x)	│  │  │  │   ${lseekFlag}
1096.4.0:       ( 0.000073s |  0.00% |  1.15% )   ( 0.000084s |  0.00% |  1.15% )    	(1x)	│  │  │  │   $'echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""
1097.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1100.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000083s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
1138.4.0:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000086s |  0.00% |  1.18% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1143.4.0:       ( 0.000115s |  0.00% |  1.81% )   ( 0.000132s |  0.00% |  1.81% )    	(1x)	│  │  │  │   $'echo """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""
1144.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   printf '%s' "A[-1]+=\"\${REPLY}\""
1145.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${lseekFlag}
1145.4.1:       ( 0.000074s |  0.00% |  1.16% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   printf '\n'
1146.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1147.4.0:       ( 0.000099s |  0.00% |  1.56% )   ( 0.000111s |  0.00% |  1.52% )    	(1x)	│  │  │  │   echo "}"
1149.4.0:       ( 0.000067s |  0.00% |  1.05% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000078s |  0.00% |  1.07% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1149.4.3:       ( 0.000076s |  0.00% |  1.19% )   ( 0.000087s |  0.00% |  1.19% )    	(1x)	│  │  │  │   echo "}"
1150.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.14% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000086s |  0.00% |  1.35% )   ( 0.000098s |  0.00% |  1.34% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000078s |  0.00% |  1.22% )   ( 0.000090s |  0.00% |  1.23% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000077s |  0.00% |  1.21% )   ( 0.000089s |  0.00% |  1.22% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.22% )   ( 0.000091s |  0.00% |  1.25% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000094s |  0.00% |  1.48% )   ( 0.000106s |  0.00% |  1.45% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000090s |  0.00% |  1.41% )   ( 0.000101s |  0.00% |  1.38% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.15% )   ( 0.000085s |  0.00% |  1.16% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000096s |  0.00% |  1.51% )   ( 0.000107s |  0.00% |  1.47% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1199.4.2:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${readBytesFlag}
1199.4.3:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${lseekFlag}
1207.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.03% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000073s |  0.00% |  1.15% )   ( 0.000084s |  0.00% |  1.15% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000082s |  0.00% |  1.12% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000104s |  0.00% |  1.63% )   ( 0.000116s |  0.00% |  1.59% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000063s |  0.00% |  0.99% )   ( 0.000074s |  0.00% |  1.01% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000066s |  0.00% |  1.04% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.04% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000084s |  0.00% |  1.32% )   ( 0.000095s |  0.00% |  1.30% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000072s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.14% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000068s |  0.00% |  1.07% )   ( 0.000079s |  0.00% |  1.08% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000065s |  0.00% |  1.02% )   ( 0.000077s |  0.00% |  1.05% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000076s |  0.00% |  1.19% )   ( 0.000084s |  0.00% |  1.15% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.11% )   ( 0.000083s |  0.00% |  1.14% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000070s |  0.00% |  1.10% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.08% )   ( 0.000081s |  0.00% |  1.11% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000087s |  0.00% |  1.37% )   ( 0.000099s |  0.00% |  1.36% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000288s |  0.00% |  0.00% )   ( 0.000329s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023841s |  0.00% |  0.00% )   ( 0.023787s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023812s |  0.00% |  0.00% )   ( 0.023772s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.023841s |  0.00% |  0.00% )   ( 0.173387s |  0.00% |  0.01% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023312s |  0.00% |  0.00% )   ( 0.023256s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002954s |  0.00% |  0.00% )   ( 0.003389s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002783s |  0.00% |  0.00% )   ( 0.003199s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 18.515067s |  1.68% |  3.36% )   ( 35.423297s |  1.77% |  3.55% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000625s |  0.00% |  0.00% )   ( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 18.514347s |  1.68% | 99.99% )   ( 17.711276s |  0.88% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p0
30.5.0:         ( 0.023183s |  0.00% |  0.12% )   ( 0.023137s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023501s |  0.00% |  0.12% )   ( 0.023459s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023727s |  0.00% |  0.12% )   ( 0.023681s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.024084s |  0.00% |  0.13% )   ( 0.024037s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.024147s |  0.00% |  0.13% )   ( 0.024097s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003908s |  0.00% |  0.00% )   ( 0.004382s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003478s |  0.00% |  0.00% )   ( 0.003933s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000234s |  0.00% |  0.00% )   ( 0.000265s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000197s |  0.00% |  0.00% )   ( 0.000226s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004209s |  0.00% |  0.00% )   ( 0.004684s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p0
41.5.0:         ( 0.306248s |  0.02% |  0.06% )   ( 0.005450s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003716s |  0.00% |  0.00% )   ( 0.004164s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003508s |  0.00% |  0.00% )   ( 0.003963s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003346s |  0.00% |  0.00% )   ( 0.003798s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003477s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.026302s |  0.00% |  0.00% )   ( 0.026623s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003102s |  0.00% |  0.00% )   ( 0.003524s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003233s |  0.00% |  0.00% )   ( 0.003683s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006667s |  0.00% |  0.00% )   ( 0.003890s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004437s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p0
66.5.0:         ( 0.003324s |  0.00% |  0.00% )   ( 0.003780s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003259s |  0.00% |  0.00% )   ( 0.003713s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000212s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000223s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 17.997842s |  1.64% |  4.22% )   ( 17.491260s |  0.87% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003312s |  0.00% |  0.01% )   ( 0.003703s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.217740s |  0.11% |  6.76% )   ( 1.174195s |  0.05% |  6.71% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.130795s |  0.19% | 11.83% )   ( 2.114531s |  0.10% | 12.08% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.777361s |  0.16% |  9.87% )   ( 1.705727s |  0.08% |  9.75% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.107706s |  0.19% | 11.71% )   ( 2.097637s |  0.10% | 11.99% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.681314s |  0.15% |  9.34% )   ( 1.622335s |  0.08% |  9.27% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.080525s |  0.09% |  6.00% )   ( 1.027227s |  0.05% |  5.87% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.503212s |  0.04% |  2.79% )   ( 0.474416s |  0.02% |  2.71% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.106578s |  0.10% |  6.14% )   ( 1.103950s |  0.05% |  6.31% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.403699s |  0.03% |  2.24% )   ( 0.406171s |  0.02% |  2.32% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.433293s |  0.13% |  7.96% )   ( 1.404112s |  0.07% |  8.02% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.482300s |  0.31% | 19.34% )   ( 3.436471s |  0.17% | 19.64% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.539025s |  0.04% |  2.99% )   ( 0.475939s |  0.02% |  2.72% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.530982s |  0.04% |  2.95% )   ( 0.444846s |  0.02% |  2.54% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003045s |  0.00% |  0.00% )   ( 0.003434s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003318s |  0.00% |  0.00% )   ( 0.003726s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004946s |  0.00% |  0.02% )   ( 0.005017s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p0\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002758s |  0.00% |  0.00% )   ( 0.003170s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 17.442658s |  1.58% |  3.17% )   ( 33.155123s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000592s |  0.00% |  0.00% )   ( 0.000611s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 17.441980s |  1.58% | 99.99% )   ( 16.577207s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000342s |  0.00% |  0.00% )   ( 0.000378s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000362s |  0.00% |  0.00% )   ( 0.000400s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p1
30.5.0:         ( 0.023253s |  0.00% |  0.13% )   ( 0.023207s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023446s |  0.00% |  0.13% )   ( 0.023403s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023683s |  0.00% |  0.13% )   ( 0.023633s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.024021s |  0.00% |  0.13% )   ( 0.023973s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.024407s |  0.00% |  0.13% )   ( 0.024350s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005475s |  0.00% |  0.00% )   ( 0.006140s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004780s |  0.00% |  0.00% )   ( 0.005411s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000240s |  0.00% |  0.00% )   ( 0.000271s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000201s |  0.00% |  0.00% )   ( 0.000231s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000199s |  0.00% |  0.00% )   ( 0.000229s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005752s |  0.00% |  0.00% )   ( 0.006398s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p1
41.5.0:         ( 0.352022s |  0.03% |  0.06% )   ( 0.007386s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004999s |  0.00% |  0.00% )   ( 0.005602s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004759s |  0.00% |  0.00% )   ( 0.005403s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004402s |  0.00% |  0.00% )   ( 0.005017s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004615s |  0.00% |  0.00% )   ( 0.005218s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.036254s |  0.00% |  0.00% )   ( 0.036749s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004457s |  0.00% |  0.00% )   ( 0.005085s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005176s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004777s |  0.00% |  0.00% )   ( 0.005378s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005493s |  0.00% |  0.00% )   ( 0.006104s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p1
66.5.0:         ( 0.004462s |  0.00% |  0.00% )   ( 0.005081s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004365s |  0.00% |  0.00% )   ( 0.004960s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 16.848364s |  1.53% |  3.11% )   ( 16.317839s |  0.81% |  3.17% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004304s |  0.00% |  0.02% )   ( 0.004908s |  0.00% |  0.03% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120593s |  0.10% |  6.65% )   ( 1.078157s |  0.05% |  6.60% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.859082s |  0.16% | 11.03% )   ( 1.807755s |  0.09% | 11.07% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.635167s |  0.14% |  9.70% )   ( 1.568383s |  0.07% |  9.61% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.837485s |  0.16% | 10.90% )   ( 1.813767s |  0.09% | 11.11% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.592378s |  0.14% |  9.45% )   ( 1.527808s |  0.07% |  9.36% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.022363s |  0.09% |  6.06% )   ( 1.009253s |  0.05% |  6.18% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.611566s |  0.05% |  3.62% )   ( 0.574238s |  0.02% |  3.51% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.121609s |  0.10% |  6.65% )   ( 1.046880s |  0.05% |  6.41% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.541889s |  0.04% |  3.21% )   ( 0.523629s |  0.02% |  3.20% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.454303s |  0.13% |  8.63% )   ( 1.390598s |  0.06% |  8.52% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.875291s |  0.26% | 17.06% )   ( 2.831026s |  0.14% | 17.34% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581570s |  0.05% |  3.45% )   ( 0.576174s |  0.02% |  3.53% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.590764s |  0.05% |  3.50% )   ( 0.565263s |  0.02% |  3.46% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004681s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004251s |  0.00% |  0.00% )   ( 0.004812s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004711s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008009s |  0.00% |  0.04% )   ( 0.008089s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p1\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 19.006886s |  1.73% |  3.45% )   ( 37.346763s |  1.87% |  3.74% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000602s |  0.00% |  0.00% )   ( 0.000618s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 19.006197s |  1.73% | 99.99% )   ( 18.673023s |  0.93% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p2
30.5.0:         ( 0.023408s |  0.00% |  0.12% )   ( 0.023372s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023433s |  0.00% |  0.12% )   ( 0.023396s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023818s |  0.00% |  0.12% )   ( 0.023773s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023983s |  0.00% |  0.12% )   ( 0.023942s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023942s |  0.00% |  0.12% )   ( 0.023898s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001439s |  0.00% |  0.00% )   ( 0.001591s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   true
38.5.0:         ( 0.001295s |  0.00% |  0.00% )   ( 0.001460s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000235s |  0.00% |  0.00% )   ( 0.000266s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000204s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000222s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.001676s |  0.00% |  0.00% )   ( 0.001855s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p2
41.5.0:         ( 0.097120s |  0.00% |  0.05% )   ( 0.001979s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.001396s |  0.00% |  0.00% )   ( 0.001580s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.001329s |  0.00% |  0.00% )   ( 0.001514s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.001190s |  0.00% |  0.00% )   ( 0.001351s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001339s |  0.00% |  0.00% )   ( 0.001516s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.009502s |  0.00% |  0.00% )   ( 0.009651s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.001146s |  0.00% |  0.00% )   ( 0.001321s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.001242s |  0.00% |  0.00% )   ( 0.001415s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.001334s |  0.00% |  0.00% )   ( 0.001517s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.001566s |  0.00% |  0.00% )   ( 0.001737s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p2
66.5.0:         ( 0.001224s |  0.00% |  0.00% )   ( 0.001402s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.001219s |  0.00% |  0.00% )   ( 0.001387s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000316s |  0.00% |  0.00% )   ( 0.000359s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000224s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
91.5.0:         ( 18.749249s |  1.70% | 10.96% )   ( 18.508308s |  0.92% | 11.01% )    	(9x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001249s |  0.00% |  0.00% )   ( 0.001434s |  0.00% |  0.00% )    	(9x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.203804s |  0.10% |  6.42% )   ( 1.184065s |  0.05% |  6.39% )    	(9x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.462606s |  0.22% | 13.13% )   ( 2.439537s |  0.12% | 13.18% )    	(9x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.748260s |  0.15% |  9.32% )   ( 1.743424s |  0.08% |  9.41% )    	(9x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.448505s |  0.22% | 13.05% )   ( 2.426085s |  0.12% | 13.10% )    	(9x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.763550s |  0.16% |  9.40% )   ( 1.721400s |  0.08% |  9.30% )    	(9x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.028077s |  0.09% |  5.48% )   ( 1.019744s |  0.05% |  5.50% )    	(9x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.296586s |  0.02% |  1.58% )   ( 0.287761s |  0.01% |  1.55% )    	(9x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.218452s |  0.11% |  6.49% )   ( 1.214638s |  0.06% |  6.56% )    	(9x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.236593s |  0.02% |  1.26% )   ( 0.231184s |  0.01% |  1.24% )    	(9x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.504644s |  0.13% |  8.02% )   ( 1.480685s |  0.07% |  8.00% )    	(9x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.345737s |  0.39% | 23.17% )   ( 4.282983s |  0.21% | 23.14% )    	(9x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.268853s |  0.02% |  1.43% )   ( 0.257457s |  0.01% |  1.39% )    	(9x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.222333s |  0.02% |  1.18% )   ( 0.217911s |  0.01% |  1.17% )    	(9x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.001134s |  0.00% |  0.00% )   ( 0.001280s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.000959s |  0.00% |  0.00% )   ( 0.001083s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.001115s |  0.00% |  0.00% )   ( 0.001249s |  0.00% |  0.00% )    	(7x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009194s |  0.00% |  0.04% )   ( 0.009260s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p2\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.312369s |  1.66% |  3.33% )   ( 34.574027s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000610s |  0.00% |  0.00% )   ( 0.000626s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.311672s |  1.66% | 99.99% )   ( 17.286651s |  0.86% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000327s |  0.00% |  0.00% )   ( 0.000369s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000393s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p3
30.5.0:         ( 0.023401s |  0.00% |  0.12% )   ( 0.023363s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023723s |  0.00% |  0.12% )   ( 0.023677s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023942s |  0.00% |  0.13% )   ( 0.023896s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023971s |  0.00% |  0.13% )   ( 0.023926s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023947s |  0.00% |  0.13% )   ( 0.023896s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004697s |  0.00% |  0.00% )   ( 0.005280s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004169s |  0.00% |  0.00% )   ( 0.004717s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005024s |  0.00% |  0.00% )   ( 0.005584s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p3
41.5.0:         ( 0.388017s |  0.03% |  0.07% )   ( 0.006688s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004417s |  0.00% |  0.00% )   ( 0.004984s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004316s |  0.00% |  0.00% )   ( 0.004857s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004052s |  0.00% |  0.00% )   ( 0.004408s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004661s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037773s |  0.00% |  0.00% )   ( 0.032216s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003896s |  0.00% |  0.00% )   ( 0.004416s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003880s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004161s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004787s |  0.00% |  0.00% )   ( 0.005352s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p3
66.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004446s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003932s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.686581s |  1.61% |  3.57% )   ( 17.046489s |  0.85% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004008s |  0.00% |  0.02% )   ( 0.004534s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.282537s |  0.11% |  7.25% )   ( 1.125437s |  0.05% |  6.60% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.999243s |  0.18% | 11.30% )   ( 1.931043s |  0.09% | 11.32% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.659916s |  0.15% |  9.38% )   ( 1.635940s |  0.08% |  9.59% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.000438s |  0.18% | 11.31% )   ( 1.954001s |  0.09% | 11.46% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.618298s |  0.14% |  9.14% )   ( 1.586732s |  0.07% |  9.30% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.092659s |  0.09% |  6.17% )   ( 1.051315s |  0.05% |  6.16% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.597542s |  0.05% |  3.37% )   ( 0.543715s |  0.02% |  3.18% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.161494s |  0.10% |  6.56% )   ( 1.091921s |  0.05% |  6.40% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.503021s |  0.04% |  2.84% )   ( 0.476726s |  0.02% |  2.79% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.467001s |  0.13% |  8.29% )   ( 1.434017s |  0.07% |  8.41% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.171695s |  0.28% | 17.93% )   ( 3.135566s |  0.15% | 18.39% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.584120s |  0.05% |  3.30% )   ( 0.548087s |  0.02% |  3.21% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544609s |  0.04% |  3.07% )   ( 0.527455s |  0.02% |  3.09% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004531s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.010781s |  0.00% |  0.00% )   ( 0.004813s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005062s |  0.00% |  0.02% )   ( 0.005130s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p3\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 20.678471s |  1.88% |  3.76% )   ( 39.839730s |  1.99% |  3.99% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000595s |  0.00% |  0.00% )   ( 0.000611s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 20.677789s |  1.88% | 99.99% )   ( 19.919510s |  0.99% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000329s |  0.00% |  0.00% )   ( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p4
30.5.0:         ( 0.023474s |  0.00% |  0.11% )   ( 0.023434s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023910s |  0.00% |  0.11% )   ( 0.023867s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023960s |  0.00% |  0.11% )   ( 0.023914s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023939s |  0.00% |  0.11% )   ( 0.023895s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023977s |  0.00% |  0.11% )   ( 0.023928s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004247s |  0.00% |  0.00% )   ( 0.004741s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004337s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004432s |  0.00% |  0.00% )   ( 0.004955s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p4
41.5.0:         ( 0.393647s |  0.03% |  0.07% )   ( 0.006065s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004063s |  0.00% |  0.00% )   ( 0.004560s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004231s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003569s |  0.00% |  0.00% )   ( 0.004031s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003736s |  0.00% |  0.00% )   ( 0.004202s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031228s |  0.00% |  0.00% )   ( 0.028778s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003415s |  0.00% |  0.00% )   ( 0.003860s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003555s |  0.00% |  0.00% )   ( 0.004006s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003737s |  0.00% |  0.00% )   ( 0.004203s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004442s |  0.00% |  0.00% )   ( 0.004961s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p4
66.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004063s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003306s |  0.00% |  0.00% )   ( 0.003739s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 20.063586s |  1.82% |  4.04% )   ( 19.687815s |  0.98% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003471s |  0.00% |  0.01% )   ( 0.003925s |  0.00% |  0.01% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.453221s |  0.13% |  7.24% )   ( 1.424511s |  0.07% |  7.23% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.421012s |  0.22% | 12.06% )   ( 2.350754s |  0.11% | 11.94% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.847473s |  0.16% |  9.20% )   ( 1.830192s |  0.09% |  9.29% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.307845s |  0.21% | 11.50% )   ( 2.290226s |  0.11% | 11.63% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.842644s |  0.16% |  9.18% )   ( 1.813228s |  0.09% |  9.20% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.244050s |  0.11% |  6.20% )   ( 1.237324s |  0.06% |  6.28% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.543652s |  0.04% |  2.70% )   ( 0.539355s |  0.02% |  2.73% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.373413s |  0.12% |  6.84% )   ( 1.320239s |  0.06% |  6.70% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.469812s |  0.04% |  2.34% )   ( 0.453427s |  0.02% |  2.30% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.668921s |  0.15% |  8.31% )   ( 1.611181s |  0.08% |  8.18% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.847642s |  0.35% | 19.17% )   ( 3.808461s |  0.19% | 19.34% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.524650s |  0.04% |  2.61% )   ( 0.518502s |  0.02% |  2.63% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.515780s |  0.04% |  2.57% )   ( 0.486490s |  0.02% |  2.47% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004129s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003291s |  0.00% |  0.00% )   ( 0.003744s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003777s |  0.00% |  0.00% )   ( 0.004152s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008511s |  0.00% |  0.04% )   ( 0.008600s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p4\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.835237s |  1.62% |  3.24% )   ( 33.727326s |  1.68% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000603s |  0.00% |  0.00% )   ( 0.000621s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.834548s |  1.62% | 99.99% )   ( 16.863303s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000324s |  0.00% |  0.00% )   ( 0.000367s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000353s |  0.00% |  0.00% )   ( 0.000396s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p5
30.5.0:         ( 0.023790s |  0.00% |  0.13% )   ( 0.023748s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023968s |  0.00% |  0.13% )   ( 0.023927s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023971s |  0.00% |  0.13% )   ( 0.023924s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023842s |  0.00% |  0.13% )   ( 0.023792s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023965s |  0.00% |  0.13% )   ( 0.023914s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004479s |  0.00% |  0.00% )   ( 0.005013s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004040s |  0.00% |  0.00% )   ( 0.004574s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004818s |  0.00% |  0.00% )   ( 0.005374s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p5
41.5.0:         ( 0.341125s |  0.03% |  0.07% )   ( 0.006467s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004371s |  0.00% |  0.00% )   ( 0.004885s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004589s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003672s |  0.00% |  0.00% )   ( 0.004138s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003927s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035588s |  0.00% |  0.00% )   ( 0.033011s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003773s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003784s |  0.00% |  0.00% )   ( 0.004289s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006626s |  0.00% |  0.00% )   ( 0.004850s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004734s |  0.00% |  0.00% )   ( 0.005254s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p5
66.5.0:         ( 0.003828s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004280s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.262235s |  1.57% |  3.72% )   ( 16.624027s |  0.83% |  3.79% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003592s |  0.00% |  0.02% )   ( 0.004078s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.172394s |  0.10% |  6.79% )   ( 1.092245s |  0.05% |  6.57% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.038043s |  0.18% | 11.80% )   ( 1.941918s |  0.09% | 11.68% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.657606s |  0.15% |  9.60% )   ( 1.595834s |  0.07% |  9.59% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.956788s |  0.17% | 11.33% )   ( 1.898924s |  0.09% | 11.42% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.612060s |  0.14% |  9.33% )   ( 1.555796s |  0.07% |  9.35% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.079759s |  0.09% |  6.25% )   ( 1.017812s |  0.05% |  6.12% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.568707s |  0.05% |  3.29% )   ( 0.534568s |  0.02% |  3.21% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.122976s |  0.10% |  6.50% )   ( 1.067390s |  0.05% |  6.42% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.462275s |  0.04% |  2.67% )   ( 0.456846s |  0.02% |  2.74% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.447324s |  0.13% |  8.38% )   ( 1.405323s |  0.07% |  8.45% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.074760s |  0.28% | 17.81% )   ( 3.025254s |  0.15% | 18.19% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.529261s |  0.04% |  3.06% )   ( 0.525530s |  0.02% |  3.16% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.536690s |  0.04% |  3.10% )   ( 0.502509s |  0.02% |  3.02% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.005802s |  0.00% |  0.00% )   ( 0.004565s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003700s |  0.00% |  0.00% )   ( 0.004194s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003991s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005255s |  0.00% |  0.02% )   ( 0.005360s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p5\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.699345s |  1.61% |  3.22% )   ( 33.582182s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000660s |  0.00% |  0.00% )   ( 0.000677s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.698596s |  1.61% | 99.99% )   ( 16.790702s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000314s |  0.00% |  0.00% )   ( 0.000355s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p6
30.5.0:         ( 0.023892s |  0.00% |  0.13% )   ( 0.023849s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023945s |  0.00% |  0.13% )   ( 0.023903s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023960s |  0.00% |  0.13% )   ( 0.023912s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023974s |  0.00% |  0.13% )   ( 0.023927s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023922s |  0.00% |  0.13% )   ( 0.023873s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.007316s |  0.00% |  0.00% )   ( 0.004832s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004316s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004671s |  0.00% |  0.00% )   ( 0.005204s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p6
41.5.0:         ( 0.311099s |  0.02% |  0.06% )   ( 0.006233s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004249s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003935s |  0.00% |  0.00% )   ( 0.004454s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003513s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003743s |  0.00% |  0.00% )   ( 0.004219s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032865s |  0.00% |  0.00% )   ( 0.030267s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004103s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003507s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.006874s |  0.00% |  0.00% )   ( 0.004369s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004401s |  0.00% |  0.00% )   ( 0.004905s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p6
66.5.0:         ( 0.006590s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004099s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.154076s |  1.56% |  3.87% )   ( 16.554690s |  0.82% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003700s |  0.00% |  0.02% )   ( 0.004219s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.165613s |  0.10% |  6.79% )   ( 1.095730s |  0.05% |  6.61% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.954032s |  0.17% | 11.39% )   ( 1.916065s |  0.09% | 11.57% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612144s |  0.14% |  9.39% )   ( 1.590088s |  0.07% |  9.60% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.949607s |  0.17% | 11.36% )   ( 1.917522s |  0.09% | 11.58% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.561880s |  0.14% |  9.10% )   ( 1.518906s |  0.07% |  9.17% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.026402s |  0.09% |  5.98% )   ( 1.004503s |  0.05% |  6.06% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541935s |  0.04% |  3.15% )   ( 0.513649s |  0.02% |  3.10% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.101459s |  0.10% |  6.42% )   ( 1.036116s |  0.05% |  6.25% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.487280s |  0.04% |  2.84% )   ( 0.452300s |  0.02% |  2.73% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.495405s |  0.13% |  8.71% )   ( 1.390748s |  0.06% |  8.40% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.194830s |  0.29% | 18.62% )   ( 3.126649s |  0.15% | 18.88% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.535262s |  0.04% |  3.12% )   ( 0.499430s |  0.02% |  3.01% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.524527s |  0.04% |  3.05% )   ( 0.488765s |  0.02% |  2.95% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003812s |  0.00% |  0.00% )   ( 0.004320s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003490s |  0.00% |  0.00% )   ( 0.003978s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003863s |  0.00% |  0.00% )   ( 0.004338s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008739s |  0.00% |  0.04% )   ( 0.008807s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p6\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 17.355616s |  1.58% |  3.15% )   ( 32.525870s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000628s |  0.00% |  0.00% )   ( 0.000652s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 17.354887s |  1.58% | 99.99% )   ( 16.262555s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000338s |  0.00% |  0.00% )   ( 0.000373s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000364s |  0.00% |  0.00% )   ( 0.000400s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p7
30.5.0:         ( 0.023913s |  0.00% |  0.13% )   ( 0.023871s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023973s |  0.00% |  0.13% )   ( 0.023929s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.024066s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.024037s |  0.00% |  0.13% )   ( 0.023991s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.024013s |  0.00% |  0.13% )   ( 0.023970s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005170s |  0.00% |  0.00% )   ( 0.005800s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   true
38.5.0:         ( 0.004728s |  0.00% |  0.00% )   ( 0.005343s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.007126s |  0.00% |  0.00% )   ( 0.006057s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p7
41.5.0:         ( 0.417726s |  0.03% |  0.07% )   ( 0.007415s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005095s |  0.00% |  0.00% )   ( 0.005717s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.005168s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004404s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004658s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037743s |  0.00% |  0.00% )   ( 0.038201s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004430s |  0.00% |  0.00% )   ( 0.005019s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004570s |  0.00% |  0.00% )   ( 0.005172s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004601s |  0.00% |  0.00% )   ( 0.005187s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005238s |  0.00% |  0.00% )   ( 0.005820s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p7
66.5.0:         ( 0.004344s |  0.00% |  0.00% )   ( 0.004924s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004289s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.692901s |  1.52% |  3.20% )   ( 16.002556s |  0.80% |  3.28% )    	(30x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004545s |  0.00% |  0.02% )   ( 0.005156s |  0.00% |  0.03% )    	(30x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.090321s |  0.09% |  6.53% )   ( 1.063653s |  0.05% |  6.64% )    	(30x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.886946s |  0.17% | 11.30% )   ( 1.767965s |  0.08% | 11.04% )    	(30x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.628810s |  0.14% |  9.75% )   ( 1.548793s |  0.07% |  9.67% )    	(30x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.836953s |  0.16% | 11.00% )   ( 1.767756s |  0.08% | 11.04% )    	(30x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.563449s |  0.14% |  9.36% )   ( 1.470424s |  0.07% |  9.18% )    	(30x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.051755s |  0.09% |  6.30% )   ( 0.992430s |  0.04% |  6.20% )    	(30x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.596460s |  0.05% |  3.57% )   ( 0.581961s |  0.02% |  3.63% )    	(30x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038534s |  0.09% |  6.22% )   ( 1.014498s |  0.05% |  6.33% )    	(30x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.544311s |  0.04% |  3.26% )   ( 0.515077s |  0.02% |  3.21% )    	(30x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.417031s |  0.12% |  8.48% )   ( 1.376335s |  0.06% |  8.60% )    	(30x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.827049s |  0.25% | 16.93% )   ( 2.751147s |  0.13% | 17.19% )    	(30x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.607262s |  0.05% |  3.63% )   ( 0.578765s |  0.02% |  3.61% )    	(30x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.599475s |  0.05% |  3.59% )   ( 0.568596s |  0.02% |  3.55% )    	(30x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004520s |  0.00% |  0.00% )   ( 0.005118s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004377s |  0.00% |  0.00% )   ( 0.004972s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004684s |  0.00% |  0.00% )   ( 0.005265s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008268s |  0.00% |  0.04% )   ( 0.008348s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p7\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 20.525971s |  1.87% |  3.73% )   ( 39.096737s |  1.95% |  3.91% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000656s |  0.00% |  0.00% )   ( 0.000674s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 20.525226s |  1.87% | 99.99% )   ( 19.547981s |  0.97% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p8
30.5.0:         ( 0.023872s |  0.00% |  0.11% )   ( 0.023827s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023941s |  0.00% |  0.11% )   ( 0.023892s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023990s |  0.00% |  0.11% )   ( 0.023937s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023977s |  0.00% |  0.11% )   ( 0.023927s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023947s |  0.00% |  0.11% )   ( 0.023901s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004069s |  0.00% |  0.00% )   ( 0.004573s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.005670s |  0.00% |  0.00% )   ( 0.004212s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004489s |  0.00% |  0.00% )   ( 0.005000s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p8
41.5.0:         ( 0.354080s |  0.03% |  0.06% )   ( 0.006402s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004577s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003775s |  0.00% |  0.00% )   ( 0.004262s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003968s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003725s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029112s |  0.00% |  0.00% )   ( 0.029502s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003464s |  0.00% |  0.00% )   ( 0.003955s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003462s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004254s |  0.00% |  0.00% )   ( 0.004114s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004248s |  0.00% |  0.00% )   ( 0.004728s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p8
66.5.0:         ( 0.003493s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003380s |  0.00% |  0.00% )   ( 0.003861s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.954432s |  1.81% |  4.05% )   ( 19.319532s |  0.96% |  4.11% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003361s |  0.00% |  0.01% )   ( 0.003810s |  0.00% |  0.01% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.451052s |  0.13% |  7.27% )   ( 1.373353s |  0.06% |  7.10% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.733457s |  0.24% | 13.69% )   ( 2.560901s |  0.12% | 13.25% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.076972s |  0.18% | 10.40% )   ( 2.030863s |  0.10% | 10.51% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.660663s |  0.24% | 13.33% )   ( 2.585987s |  0.12% | 13.38% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.034732s |  0.18% | 10.19% )   ( 1.998881s |  0.10% | 10.34% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.295033s |  0.11% |  6.48% )   ( 1.235320s |  0.06% |  6.39% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.547234s |  0.04% |  2.74% )   ( 0.523270s |  0.02% |  2.70% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.227561s |  0.11% |  6.15% )   ( 1.209840s |  0.06% |  6.26% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.454245s |  0.04% |  2.27% )   ( 0.445273s |  0.02% |  2.30% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.427919s |  0.13% |  7.15% )   ( 1.368321s |  0.06% |  7.08% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.034164s |  0.27% | 15.20% )   ( 3.016061s |  0.15% | 15.61% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.510937s |  0.04% |  2.56% )   ( 0.496624s |  0.02% |  2.57% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.497102s |  0.04% |  2.49% )   ( 0.471028s |  0.02% |  2.43% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003692s |  0.00% |  0.00% )   ( 0.004162s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003253s |  0.00% |  0.00% )   ( 0.003665s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003578s |  0.00% |  0.00% )   ( 0.003998s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004975s |  0.00% |  0.02% )   ( 0.005036s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p8\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 19.834799s |  1.80% |  3.60% )   ( 38.066288s |  1.90% |  3.81% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000652s |  0.00% |  0.00% )   ( 0.000669s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 19.834053s |  1.80% | 99.99% )   ( 19.032758s |  0.95% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000335s |  0.00% |  0.00% )   ( 0.000371s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000349s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p9
30.5.0:         ( 0.023936s |  0.00% |  0.12% )   ( 0.023837s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024045s |  0.00% |  0.12% )   ( 0.023896s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.024026s |  0.00% |  0.12% )   ( 0.023931s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.024091s |  0.00% |  0.12% )   ( 0.023942s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023886s |  0.00% |  0.12% )   ( 0.023782s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004338s |  0.00% |  0.00% )   ( 0.004871s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003961s |  0.00% |  0.00% )   ( 0.004479s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004824s |  0.00% |  0.00% )   ( 0.005377s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p9
41.5.0:         ( 0.316695s |  0.02% |  0.06% )   ( 0.006488s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004182s |  0.00% |  0.00% )   ( 0.004686s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003646s |  0.00% |  0.00% )   ( 0.004126s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004163s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035561s |  0.00% |  0.00% )   ( 0.029575s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003714s |  0.00% |  0.00% )   ( 0.004220s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003930s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005905s |  0.00% |  0.00% )   ( 0.004355s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004307s |  0.00% |  0.00% )   ( 0.004795s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p9
66.5.0:         ( 0.003552s |  0.00% |  0.00% )   ( 0.004002s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003456s |  0.00% |  0.00% )   ( 0.003947s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.290888s |  1.75% |  3.89% )   ( 18.800302s |  0.94% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003573s |  0.00% |  0.01% )   ( 0.004070s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.350186s |  0.12% |  6.99% )   ( 1.334979s |  0.06% |  7.10% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.503694s |  0.22% | 12.97% )   ( 2.403255s |  0.12% | 12.78% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.948461s |  0.17% | 10.10% )   ( 1.877182s |  0.09% |  9.98% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.517486s |  0.22% | 13.05% )   ( 2.455328s |  0.12% | 13.06% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.968151s |  0.17% | 10.20% )   ( 1.916228s |  0.09% | 10.19% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.227991s |  0.11% |  6.36% )   ( 1.208119s |  0.06% |  6.42% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.561728s |  0.05% |  2.91% )   ( 0.543790s |  0.02% |  2.89% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.347098s |  0.12% |  6.98% )   ( 1.304949s |  0.06% |  6.94% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.458132s |  0.04% |  2.37% )   ( 0.457211s |  0.02% |  2.43% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.458155s |  0.13% |  7.55% )   ( 1.375897s |  0.06% |  7.31% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.910059s |  0.26% | 15.08% )   ( 2.900625s |  0.14% | 15.42% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.519142s |  0.04% |  2.69% )   ( 0.519114s |  0.02% |  2.76% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.517032s |  0.04% |  2.68% )   ( 0.499555s |  0.02% |  2.65% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003921s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003595s |  0.00% |  0.00% )   ( 0.004060s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004001s |  0.00% |  0.00% )   ( 0.004491s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005139s |  0.00% |  0.02% )   ( 0.005203s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p9\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000094s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 22.596757s |  2.05% |  4.11% )   ( 43.457920s |  2.17% |  4.35% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000658s |  0.00% |  0.00% )   ( 0.000677s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 22.596009s |  2.05% | 99.99% )   ( 21.728570s |  1.08% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p10
30.5.0:         ( 0.023920s |  0.00% |  0.10% )   ( 0.023871s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023928s |  0.00% |  0.10% )   ( 0.023872s |  0.00% |  0.10% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.023964s |  0.00% |  0.10% )   ( 0.023919s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023978s |  0.00% |  0.10% )   ( 0.023929s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.023959s |  0.00% |  0.10% )   ( 0.023910s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004663s |  0.00% |  0.00% )   ( 0.005264s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004343s |  0.00% |  0.00% )   ( 0.004925s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005409s |  0.00% |  0.00% )   ( 0.005999s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p10
41.5.0:         ( 0.450244s |  0.04% |  0.06% )   ( 0.007123s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004595s |  0.00% |  0.00% )   ( 0.005173s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004255s |  0.00% |  0.00% )   ( 0.004824s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004112s |  0.00% |  0.00% )   ( 0.004679s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004367s |  0.00% |  0.00% )   ( 0.004917s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037249s |  0.00% |  0.00% )   ( 0.036495s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004234s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004279s |  0.00% |  0.00% )   ( 0.004830s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005080s |  0.00% |  0.00% )   ( 0.005614s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p10
66.5.0:         ( 0.007018s |  0.00% |  0.00% )   ( 0.004597s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003965s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.910069s |  1.99% |  3.34% )   ( 21.480646s |  1.07% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004296s |  0.00% |  0.01% )   ( 0.004908s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.588908s |  0.14% |  7.25% )   ( 1.574350s |  0.07% |  7.32% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.507255s |  0.22% | 11.44% )   ( 2.496036s |  0.12% | 11.61% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.074351s |  0.18% |  9.46% )   ( 2.037964s |  0.10% |  9.48% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.508659s |  0.22% | 11.44% )   ( 2.466756s |  0.12% | 11.48% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.003648s |  0.18% |  9.14% )   ( 1.944960s |  0.09% |  9.05% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.456200s |  0.13% |  6.64% )   ( 1.420591s |  0.07% |  6.61% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.640727s |  0.05% |  2.92% )   ( 0.618623s |  0.03% |  2.87% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.483775s |  0.13% |  6.77% )   ( 1.463057s |  0.07% |  6.81% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.591453s |  0.05% |  2.69% )   ( 0.559504s |  0.02% |  2.60% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.827766s |  0.16% |  8.34% )   ( 1.740134s |  0.08% |  8.10% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.983705s |  0.36% | 18.18% )   ( 3.948064s |  0.19% | 18.37% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.632644s |  0.05% |  2.88% )   ( 0.614513s |  0.03% |  2.86% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.606682s |  0.05% |  2.76% )   ( 0.591186s |  0.02% |  2.75% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004877s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003849s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004336s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004921s |  0.00% |  0.02% )   ( 0.004985s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p10\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 18.315874s |  1.66% |  3.33% )   ( 35.189078s |  1.76% |  3.52% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000695s |  0.00% |  0.00% )   ( 0.000714s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 18.315088s |  1.66% | 99.99% )   ( 17.594130s |  0.88% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p11
30.5.0:         ( 0.024159s |  0.00% |  0.13% )   ( 0.024023s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023987s |  0.00% |  0.13% )   ( 0.023935s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.024022s |  0.00% |  0.13% )   ( 0.023974s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.023931s |  0.00% |  0.13% )   ( 0.023884s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.024135s |  0.00% |  0.13% )   ( 0.024077s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003614s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003360s |  0.00% |  0.00% )   ( 0.003801s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004055s |  0.00% |  0.00% )   ( 0.004515s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p11
41.5.0:         ( 0.299476s |  0.02% |  0.07% )   ( 0.005525s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003560s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003325s |  0.00% |  0.00% )   ( 0.003740s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003042s |  0.00% |  0.00% )   ( 0.003459s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003217s |  0.00% |  0.00% )   ( 0.003626s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025627s |  0.00% |  0.00% )   ( 0.025924s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003014s |  0.00% |  0.00% )   ( 0.003409s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002995s |  0.00% |  0.00% )   ( 0.003412s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003157s |  0.00% |  0.00% )   ( 0.003571s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003786s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p11
66.5.0:         ( 0.002972s |  0.00% |  0.00% )   ( 0.003379s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002927s |  0.00% |  0.00% )   ( 0.003336s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.807875s |  1.62% |  4.63% )   ( 17.373927s |  0.87% |  4.70% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003060s |  0.00% |  0.01% )   ( 0.003482s |  0.00% |  0.02% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.200334s |  0.10% |  6.74% )   ( 1.144435s |  0.05% |  6.58% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.115181s |  0.19% | 11.87% )   ( 2.095066s |  0.10% | 12.05% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.697000s |  0.15% |  9.52% )   ( 1.683439s |  0.08% |  9.68% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.116879s |  0.19% | 11.88% )   ( 2.084161s |  0.10% | 11.99% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.656171s |  0.15% |  9.30% )   ( 1.629719s |  0.08% |  9.38% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.044820s |  0.09% |  5.86% )   ( 1.029131s |  0.05% |  5.92% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.471807s |  0.04% |  2.64% )   ( 0.460666s |  0.02% |  2.65% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.175976s |  0.10% |  6.60% )   ( 1.124805s |  0.05% |  6.47% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.407407s |  0.03% |  2.28% )   ( 0.399294s |  0.01% |  2.29% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.472922s |  0.13% |  8.27% )   ( 1.427129s |  0.07% |  8.21% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.456147s |  0.31% | 19.40% )   ( 3.406842s |  0.17% | 19.60% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.534546s |  0.04% |  3.00% )   ( 0.458650s |  0.02% |  2.63% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.455625s |  0.04% |  2.55% )   ( 0.427108s |  0.02% |  2.45% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003282s |  0.00% |  0.00% )   ( 0.003724s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003037s |  0.00% |  0.00% )   ( 0.003447s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003416s |  0.00% |  0.00% )   ( 0.003835s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008206s |  0.00% |  0.04% )   ( 0.008285s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p11\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 21.614266s |  1.97% |  3.93% )   ( 41.749382s |  2.09% |  4.18% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000736s |  0.00% |  0.00% )   ( 0.000752s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 21.613417s |  1.97% | 99.99% )   ( 20.874254s |  1.04% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p12
30.5.0:         ( 0.031370s |  0.00% |  0.14% )   ( 0.031259s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.037266s |  0.00% |  0.17% )   ( 0.037156s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045338s |  0.00% |  0.20% )   ( 0.045176s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.026797s |  0.00% |  0.12% )   ( 0.026719s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.028742s |  0.00% |  0.13% )   ( 0.028656s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003025s |  0.00% |  0.00% )   ( 0.003413s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   true
38.5.0:         ( 0.002760s |  0.00% |  0.00% )   ( 0.003134s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003358s |  0.00% |  0.00% )   ( 0.003755s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p12
41.5.0:         ( 0.299464s |  0.02% |  0.07% )   ( 0.004622s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003021s |  0.00% |  0.00% )   ( 0.003403s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.002823s |  0.00% |  0.00% )   ( 0.003197s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.002586s |  0.00% |  0.00% )   ( 0.002944s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002816s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.024835s |  0.00% |  0.00% )   ( 0.022297s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002432s |  0.00% |  0.00% )   ( 0.002727s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002398s |  0.00% |  0.00% )   ( 0.002720s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002615s |  0.00% |  0.00% )   ( 0.002960s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003192s |  0.00% |  0.00% )   ( 0.003556s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p12
66.5.0:         ( 0.002497s |  0.00% |  0.00% )   ( 0.002827s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002365s |  0.00% |  0.00% )   ( 0.002681s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 21.068545s |  1.92% |  5.41% )   ( 20.621504s |  1.03% |  5.48% )    	(18x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002656s |  0.00% |  0.01% )   ( 0.003020s |  0.00% |  0.01% )    	(18x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.451342s |  0.13% |  6.88% )   ( 1.438093s |  0.07% |  6.97% )    	(18x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.564655s |  0.23% | 12.17% )   ( 2.534578s |  0.12% | 12.29% )    	(18x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.960494s |  0.17% |  9.30% )   ( 1.918475s |  0.09% |  9.30% )    	(18x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.543120s |  0.23% | 12.07% )   ( 2.490916s |  0.12% | 12.07% )    	(18x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.888549s |  0.17% |  8.96% )   ( 1.878709s |  0.09% |  9.11% )    	(18x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.286596s |  0.11% |  6.10% )   ( 1.281391s |  0.06% |  6.21% )    	(18x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.512270s |  0.04% |  2.43% )   ( 0.470694s |  0.02% |  2.28% )    	(18x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.458660s |  0.13% |  6.92% )   ( 1.404518s |  0.07% |  6.81% )    	(18x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.406048s |  0.03% |  1.92% )   ( 0.394910s |  0.01% |  1.91% )    	(18x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.679125s |  0.15% |  7.96% )   ( 1.637660s |  0.08% |  7.94% )    	(18x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.448721s |  0.40% | 21.11% )   ( 4.320845s |  0.21% | 20.95% )    	(18x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.468518s |  0.04% |  2.22% )   ( 0.446103s |  0.02% |  2.16% )    	(18x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.397791s |  0.03% |  1.88% )   ( 0.401592s |  0.02% |  1.94% )    	(18x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002696s |  0.00% |  0.00% )   ( 0.003054s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002433s |  0.00% |  0.00% )   ( 0.002761s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002722s |  0.00% |  0.00% )   ( 0.003067s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006344s |  0.00% |  0.02% )   ( 0.006385s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p12\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000113s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 17.307262s |  1.57% |  3.14% )   ( 32.604091s |  1.63% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000887s |  0.00% |  0.00% )   ( 0.000913s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 17.306203s |  1.57% | 99.99% )   ( 16.301492s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p13
30.5.0:         ( 0.045920s |  0.00% |  0.26% )   ( 0.045771s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046004s |  0.00% |  0.26% )   ( 0.045826s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045809s |  0.00% |  0.26% )   ( 0.045651s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.046006s |  0.00% |  0.26% )   ( 0.045841s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.045972s |  0.00% |  0.26% )   ( 0.045802s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005129s |  0.00% |  0.00% )   ( 0.005724s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004680s |  0.00% |  0.00% )   ( 0.005282s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005740s |  0.00% |  0.00% )   ( 0.006351s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p13
41.5.0:         ( 0.365128s |  0.03% |  0.07% )   ( 0.007272s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005090s |  0.00% |  0.00% )   ( 0.005688s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004540s |  0.00% |  0.00% )   ( 0.005098s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004273s |  0.00% |  0.00% )   ( 0.004843s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004426s |  0.00% |  0.00% )   ( 0.004994s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035998s |  0.00% |  0.00% )   ( 0.036496s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004379s |  0.00% |  0.00% )   ( 0.004970s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004859s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.007744s |  0.00% |  0.00% )   ( 0.005319s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005178s |  0.00% |  0.00% )   ( 0.005764s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p13
66.5.0:         ( 0.004261s |  0.00% |  0.00% )   ( 0.004822s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.588288s |  1.51% |  3.30% )   ( 15.935188s |  0.79% |  3.37% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004263s |  0.00% |  0.02% )   ( 0.004856s |  0.00% |  0.03% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.152533s |  0.10% |  6.94% )   ( 1.076005s |  0.05% |  6.75% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.840432s |  0.16% | 11.09% )   ( 1.774187s |  0.08% | 11.13% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.563750s |  0.14% |  9.42% )   ( 1.535055s |  0.07% |  9.63% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.813108s |  0.16% | 10.93% )   ( 1.783405s |  0.08% | 11.19% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.515757s |  0.13% |  9.13% )   ( 1.468569s |  0.07% |  9.21% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.057891s |  0.09% |  6.37% )   ( 0.967754s |  0.04% |  6.07% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.635869s |  0.05% |  3.83% )   ( 0.556483s |  0.02% |  3.49% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.053970s |  0.09% |  6.35% )   ( 0.995473s |  0.04% |  6.24% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.516614s |  0.04% |  3.11% )   ( 0.497905s |  0.02% |  3.12% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.416162s |  0.12% |  8.53% )   ( 1.356235s |  0.06% |  8.51% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.862282s |  0.26% | 17.25% )   ( 2.812392s |  0.14% | 17.64% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581518s |  0.05% |  3.50% )   ( 0.554619s |  0.02% |  3.48% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.574139s |  0.05% |  3.46% )   ( 0.552250s |  0.02% |  3.46% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004517s |  0.00% |  0.00% )   ( 0.005115s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.004173s |  0.00% |  0.00% )   ( 0.004727s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004547s |  0.00% |  0.00% )   ( 0.005112s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008444s |  0.00% |  0.04% )   ( 0.008523s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p13\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000172s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 19.158903s |  1.74% |  3.48% )   ( 36.564988s |  1.83% |  3.66% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000999s |  0.00% |  0.00% )   ( 0.001018s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 19.157759s |  1.74% | 99.99% )   ( 18.281902s |  0.91% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p14
30.5.0:         ( 0.025888s |  0.00% |  0.13% )   ( 0.025810s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045935s |  0.00% |  0.23% )   ( 0.045787s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045425s |  0.00% |  0.23% )   ( 0.045276s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.045506s |  0.00% |  0.23% )   ( 0.045363s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.045377s |  0.00% |  0.23% )   ( 0.045226s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003596s |  0.00% |  0.00% )   ( 0.004037s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   true
38.5.0:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003634s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003917s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p14
41.5.0:         ( 0.407613s |  0.03% |  0.09% )   ( 0.005666s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003738s |  0.00% |  0.00% )   ( 0.004197s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003201s |  0.00% |  0.00% )   ( 0.003608s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003091s |  0.00% |  0.00% )   ( 0.003529s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003379s |  0.00% |  0.00% )   ( 0.003780s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028274s |  0.00% |  0.00% )   ( 0.026624s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003211s |  0.00% |  0.00% )   ( 0.003648s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003199s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003329s |  0.00% |  0.00% )   ( 0.003732s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003801s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p14
66.5.0:         ( 0.003034s |  0.00% |  0.00% )   ( 0.003464s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003070s |  0.00% |  0.00% )   ( 0.003484s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.450747s |  1.68% |  4.58% )   ( 17.972135s |  0.89% |  4.68% )    	(21x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003149s |  0.00% |  0.01% )   ( 0.003580s |  0.00% |  0.01% )    	(21x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.236641s |  0.11% |  6.70% )   ( 1.209857s |  0.06% |  6.73% )    	(21x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.356533s |  0.21% | 12.77% )   ( 2.328556s |  0.11% | 12.95% )    	(21x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.865638s |  0.17% | 10.11% )   ( 1.813382s |  0.09% | 10.08% )    	(21x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.376003s |  0.21% | 12.87% )   ( 2.311626s |  0.11% | 12.86% )    	(21x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.834851s |  0.16% |  9.94% )   ( 1.773899s |  0.08% |  9.87% )    	(21x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.155606s |  0.10% |  6.26% )   ( 1.114308s |  0.05% |  6.20% )    	(21x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.535384s |  0.04% |  2.90% )   ( 0.484005s |  0.02% |  2.69% )    	(21x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.240374s |  0.11% |  6.72% )   ( 1.219731s |  0.06% |  6.78% )    	(21x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.428458s |  0.03% |  2.32% )   ( 0.406734s |  0.02% |  2.26% )    	(21x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.562287s |  0.14% |  8.46% )   ( 1.539269s |  0.07% |  8.56% )    	(21x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.925298s |  0.26% | 15.85% )   ( 2.894494s |  0.14% | 16.10% )    	(21x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.467527s |  0.04% |  2.53% )   ( 0.450558s |  0.02% |  2.50% )    	(21x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.462998s |  0.04% |  2.50% )   ( 0.422136s |  0.02% |  2.34% )    	(21x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003042s |  0.00% |  0.00% )   ( 0.003462s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002929s |  0.00% |  0.00% )   ( 0.003318s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003343s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008623s |  0.00% |  0.04% )   ( 0.008697s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p14\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 17.266882s |  1.57% |  3.14% )   ( 32.523389s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.001044s |  0.00% |  0.00% )   ( 0.001072s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 17.265687s |  1.57% | 99.99% )   ( 16.261073s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p15
30.5.0:         ( 0.045968s |  0.00% |  0.26% )   ( 0.045826s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045603s |  0.00% |  0.26% )   ( 0.045450s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045483s |  0.00% |  0.26% )   ( 0.045335s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.045375s |  0.00% |  0.26% )   ( 0.045230s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.039130s |  0.00% |  0.22% )   ( 0.038997s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004851s |  0.00% |  0.00% )   ( 0.005423s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004518s |  0.00% |  0.00% )   ( 0.005089s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005369s |  0.00% |  0.00% )   ( 0.005931s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p15
41.5.0:         ( 0.382035s |  0.03% |  0.07% )   ( 0.007129s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004874s |  0.00% |  0.00% )   ( 0.005469s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004555s |  0.00% |  0.00% )   ( 0.005135s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004263s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033560s |  0.00% |  0.00% )   ( 0.033939s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004101s |  0.00% |  0.00% )   ( 0.004638s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004633s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004946s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.005049s |  0.00% |  0.00% )   ( 0.005644s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p15
66.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004662s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004552s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.544475s |  1.50% |  3.42% )   ( 15.908656s |  0.79% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004122s |  0.00% |  0.02% )   ( 0.004692s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.100160s |  0.10% |  6.64% )   ( 1.068653s |  0.05% |  6.71% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.858514s |  0.16% | 11.23% )   ( 1.779200s |  0.08% | 11.18% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.603961s |  0.14% |  9.69% )   ( 1.521130s |  0.07% |  9.56% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.852121s |  0.16% | 11.19% )   ( 1.764463s |  0.08% | 11.09% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.538810s |  0.14% |  9.30% )   ( 1.473032s |  0.07% |  9.25% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.986847s |  0.08% |  5.96% )   ( 0.966593s |  0.04% |  6.07% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.564458s |  0.05% |  3.41% )   ( 0.551618s |  0.02% |  3.46% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.075369s |  0.09% |  6.49% )   ( 1.007803s |  0.05% |  6.33% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.540453s |  0.04% |  3.26% )   ( 0.486954s |  0.02% |  3.06% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.374679s |  0.12% |  8.30% )   ( 1.337338s |  0.06% |  8.40% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.895213s |  0.26% | 17.49% )   ( 2.851926s |  0.14% | 17.92% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.592569s |  0.05% |  3.58% )   ( 0.555166s |  0.02% |  3.48% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.557199s |  0.05% |  3.36% )   ( 0.540088s |  0.02% |  3.39% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004809s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003959s |  0.00% |  0.00% )   ( 0.004461s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.007108s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008960s |  0.00% |  0.05% )   ( 0.009041s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p15\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 18.009592s |  1.64% |  3.27% )   ( 34.820177s |  1.74% |  3.49% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.001010s |  0.00% |  0.00% )   ( 0.001031s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 18.008430s |  1.64% | 99.99% )   ( 17.409487s |  0.87% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p16
30.5.0:         ( 0.037399s |  0.00% |  0.20% )   ( 0.037259s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029577s |  0.00% |  0.16% )   ( 0.029480s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.032375s |  0.00% |  0.17% )   ( 0.032267s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.036763s |  0.00% |  0.20% )   ( 0.036622s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.033653s |  0.00% |  0.18% )   ( 0.033527s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003238s |  0.00% |  0.00% )   ( 0.003637s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   true
38.5.0:         ( 0.002837s |  0.00% |  0.00% )   ( 0.003216s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003527s |  0.00% |  0.00% )   ( 0.003946s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p16
41.5.0:         ( 0.263433s |  0.02% |  0.07% )   ( 0.005006s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003344s |  0.00% |  0.00% )   ( 0.003758s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003061s |  0.00% |  0.00% )   ( 0.003432s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.002684s |  0.00% |  0.00% )   ( 0.003049s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002915s |  0.00% |  0.00% )   ( 0.003251s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.023022s |  0.00% |  0.00% )   ( 0.023336s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002527s |  0.00% |  0.00% )   ( 0.002888s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002572s |  0.00% |  0.00% )   ( 0.002924s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.002767s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003285s |  0.00% |  0.00% )   ( 0.003690s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p16
66.5.0:         ( 0.002667s |  0.00% |  0.00% )   ( 0.003018s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002627s |  0.00% |  0.00% )   ( 0.002994s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.495189s |  1.59% |  5.11% )   ( 17.148811s |  0.85% |  5.18% )    	(19x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002699s |  0.00% |  0.01% )   ( 0.003094s |  0.00% |  0.01% )    	(19x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120060s |  0.10% |  6.40% )   ( 1.101646s |  0.05% |  6.42% )    	(19x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.096053s |  0.19% | 11.98% )   ( 2.076434s |  0.10% | 12.10% )    	(19x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.699871s |  0.15% |  9.71% )   ( 1.653631s |  0.08% |  9.64% )    	(19x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.122912s |  0.19% | 12.13% )   ( 2.062482s |  0.10% | 12.02% )    	(19x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.599149s |  0.14% |  9.14% )   ( 1.592071s |  0.07% |  9.28% )    	(19x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.016365s |  0.09% |  5.80% )   ( 1.003485s |  0.05% |  5.85% )    	(19x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.464087s |  0.04% |  2.65% )   ( 0.442281s |  0.02% |  2.57% )    	(19x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.132520s |  0.10% |  6.47% )   ( 1.096691s |  0.05% |  6.39% )    	(19x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.380278s |  0.03% |  2.17% )   ( 0.379598s |  0.01% |  2.21% )    	(19x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.435441s |  0.13% |  8.20% )   ( 1.413619s |  0.07% |  8.24% )    	(19x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.564897s |  0.32% | 20.37% )   ( 3.503814s |  0.17% | 20.43% )    	(19x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.455089s |  0.04% |  2.60% )   ( 0.428257s |  0.02% |  2.49% )    	(19x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.405768s |  0.03% |  2.31% )   ( 0.391708s |  0.01% |  2.28% )    	(19x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002937s |  0.00% |  0.00% )   ( 0.003314s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002565s |  0.00% |  0.00% )   ( 0.002893s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002879s |  0.00% |  0.00% )   ( 0.003235s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009427s |  0.00% |  0.05% )   ( 0.009508s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p16\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 17.356346s |  1.58% |  3.15% )   ( 32.540394s |  1.62% |  3.26% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001042s |  0.00% |  0.00% )   ( 0.001066s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 17.355147s |  1.58% | 99.99% )   ( 16.269576s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000193s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p17
30.5.0:         ( 0.035924s |  0.00% |  0.20% )   ( 0.035819s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024062s |  0.00% |  0.13% )   ( 0.024009s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.026807s |  0.00% |  0.15% )   ( 0.026734s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.026709s |  0.00% |  0.15% )   ( 0.026632s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.026671s |  0.00% |  0.15% )   ( 0.026594s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004803s |  0.00% |  0.00% )   ( 0.005366s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004581s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000194s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004942s |  0.00% |  0.00% )   ( 0.005459s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p17
41.5.0:         ( 0.421218s |  0.03% |  0.08% )   ( 0.006842s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004531s |  0.00% |  0.00% )   ( 0.005080s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003999s |  0.00% |  0.00% )   ( 0.004507s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003910s |  0.00% |  0.00% )   ( 0.004421s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030896s |  0.00% |  0.00% )   ( 0.031248s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003833s |  0.00% |  0.00% )   ( 0.004337s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004637s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005360s |  0.00% |  0.00% )   ( 0.004852s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.007833s |  0.00% |  0.00% )   ( 0.005445s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p17
66.5.0:         ( 0.003876s |  0.00% |  0.00% )   ( 0.004370s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003909s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.681683s |  1.52% |  3.69% )   ( 16.005842s |  0.80% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003740s |  0.00% |  0.02% )   ( 0.004247s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.086203s |  0.09% |  6.51% )   ( 1.062856s |  0.05% |  6.64% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.910132s |  0.17% | 11.45% )   ( 1.841120s |  0.09% | 11.50% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.616887s |  0.14% |  9.69% )   ( 1.549903s |  0.07% |  9.68% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.955988s |  0.17% | 11.72% )   ( 1.816825s |  0.09% | 11.35% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.585992s |  0.14% |  9.50% )   ( 1.503797s |  0.07% |  9.39% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.978412s |  0.08% |  5.86% )   ( 0.964101s |  0.04% |  6.02% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.531086s |  0.04% |  3.18% )   ( 0.521389s |  0.02% |  3.25% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.017434s |  0.09% |  6.09% )   ( 1.003780s |  0.05% |  6.27% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.455381s |  0.04% |  2.72% )   ( 0.452872s |  0.02% |  2.82% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.408554s |  0.12% |  8.44% )   ( 1.336157s |  0.06% |  8.34% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.045752s |  0.27% | 18.25% )   ( 2.927478s |  0.14% | 18.29% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546071s |  0.04% |  3.27% )   ( 0.521945s |  0.02% |  3.26% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.540051s |  0.04% |  3.23% )   ( 0.499372s |  0.02% |  3.11% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003938s |  0.00% |  0.00% )   ( 0.004457s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003828s |  0.00% |  0.00% )   ( 0.004362s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004179s |  0.00% |  0.00% )   ( 0.004658s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008448s |  0.00% |  0.04% )   ( 0.008509s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p17\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.620059s |  1.60% |  3.20% )   ( 33.894167s |  1.69% |  3.39% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001078s |  0.00% |  0.00% )   ( 0.001097s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.618829s |  1.60% | 99.99% )   ( 16.946449s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000188s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000185s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p18
30.5.0:         ( 0.043473s |  0.00% |  0.24% )   ( 0.043331s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045297s |  0.00% |  0.25% )   ( 0.045147s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.043698s |  0.00% |  0.24% )   ( 0.043553s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.045588s |  0.00% |  0.25% )   ( 0.045437s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.045655s |  0.00% |  0.25% )   ( 0.045364s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004047s |  0.00% |  0.00% )   ( 0.004516s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003532s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004405s |  0.00% |  0.00% )   ( 0.004898s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p18
41.5.0:         ( 0.294883s |  0.02% |  0.06% )   ( 0.005944s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003905s |  0.00% |  0.00% )   ( 0.004383s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003679s |  0.00% |  0.00% )   ( 0.004154s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003495s |  0.00% |  0.00% )   ( 0.003975s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003653s |  0.00% |  0.00% )   ( 0.004102s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028579s |  0.00% |  0.00% )   ( 0.028819s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003391s |  0.00% |  0.00% )   ( 0.003852s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009889s |  0.00% |  0.00% )   ( 0.004109s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004556s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p18
66.5.0:         ( 0.003216s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003109s |  0.00% |  0.00% )   ( 0.003541s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.994795s |  1.54% |  4.19% )   ( 16.613466s |  0.83% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003321s |  0.00% |  0.01% )   ( 0.003776s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.065953s |  0.09% |  6.27% )   ( 1.041559s |  0.05% |  6.26% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.009739s |  0.18% | 11.82% )   ( 1.978139s |  0.09% | 11.90% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.619285s |  0.14% |  9.52% )   ( 1.599028s |  0.08% |  9.62% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.973092s |  0.17% | 11.60% )   ( 1.951031s |  0.09% | 11.74% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.569709s |  0.14% |  9.23% )   ( 1.526063s |  0.07% |  9.18% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.008888s |  0.09% |  5.93% )   ( 0.992138s |  0.04% |  5.97% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.500080s |  0.04% |  2.94% )   ( 0.483919s |  0.02% |  2.91% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.088044s |  0.09% |  6.40% )   ( 1.065222s |  0.05% |  6.41% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.443121s |  0.04% |  2.60% )   ( 0.422065s |  0.02% |  2.54% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.391027s |  0.12% |  8.18% )   ( 1.365203s |  0.06% |  8.21% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.289355s |  0.29% | 19.35% )   ( 3.252033s |  0.16% | 19.57% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.509018s |  0.04% |  2.99% )   ( 0.478233s |  0.02% |  2.87% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.524163s |  0.04% |  3.08% )   ( 0.455057s |  0.02% |  2.73% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003355s |  0.00% |  0.00% )   ( 0.003802s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.005920s |  0.00% |  0.00% )   ( 0.003495s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003376s |  0.00% |  0.00% )   ( 0.003794s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008849s |  0.00% |  0.05% )   ( 0.008924s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p18\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 18.999635s |  1.73% |  3.45% )   ( 35.706652s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001061s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 18.998419s |  1.73% | 99.99% )   ( 17.852695s |  0.89% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000205s |  0.00% |  0.00% )   ( 0.000230s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p19
30.5.0:         ( 0.043779s |  0.00% |  0.23% )   ( 0.043621s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.030424s |  0.00% |  0.16% )   ( 0.030322s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.033347s |  0.00% |  0.17% )   ( 0.033229s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.044979s |  0.00% |  0.23% )   ( 0.044818s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.043532s |  0.00% |  0.22% )   ( 0.043353s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004612s |  0.00% |  0.00% )   ( 0.005151s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003865s |  0.00% |  0.00% )   ( 0.004379s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004792s |  0.00% |  0.00% )   ( 0.005319s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p19
41.5.0:         ( 0.474416s |  0.04% |  0.09% )   ( 0.006676s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004471s |  0.00% |  0.00% )   ( 0.004984s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004084s |  0.00% |  0.00% )   ( 0.004607s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003756s |  0.00% |  0.00% )   ( 0.004240s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003901s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033004s |  0.00% |  0.00% )   ( 0.032696s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003899s |  0.00% |  0.00% )   ( 0.004420s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004418s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.013808s |  0.00% |  0.00% )   ( 0.004691s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.005141s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p19
66.5.0:         ( 0.003665s |  0.00% |  0.00% )   ( 0.004187s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003753s |  0.00% |  0.00% )   ( 0.004253s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.212923s |  1.66% |  3.68% )   ( 17.537179s |  0.87% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003665s |  0.00% |  0.02% )   ( 0.004192s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.287616s |  0.11% |  7.06% )   ( 1.231335s |  0.06% |  7.02% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.223574s |  0.20% | 12.20% )   ( 2.168996s |  0.10% | 12.36% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.865043s |  0.16% | 10.24% )   ( 1.775576s |  0.08% | 10.12% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.204480s |  0.20% | 12.10% )   ( 2.132687s |  0.10% | 12.16% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.606184s |  0.14% |  8.81% )   ( 1.526675s |  0.07% |  8.70% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.119656s |  0.10% |  6.14% )   ( 1.063600s |  0.05% |  6.06% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.559223s |  0.05% |  3.07% )   ( 0.535516s |  0.02% |  3.05% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.127895s |  0.10% |  6.19% )   ( 1.109154s |  0.05% |  6.32% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.476244s |  0.04% |  2.61% )   ( 0.467427s |  0.02% |  2.66% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.481237s |  0.13% |  8.13% )   ( 1.395374s |  0.06% |  7.95% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.140486s |  0.28% | 17.24% )   ( 3.090674s |  0.15% | 17.62% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.557858s |  0.05% |  3.06% )   ( 0.527839s |  0.02% |  3.00% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.559762s |  0.05% |  3.07% )   ( 0.508134s |  0.02% |  2.89% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003643s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003563s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004086s |  0.00% |  0.00% )   ( 0.004567s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006287s |  0.00% |  0.03% )   ( 0.006337s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p19\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 18.316393s |  1.66% |  3.33% )   ( 35.403478s |  1.77% |  3.54% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001024s |  0.00% |  0.00% )   ( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 18.315211s |  1.66% | 99.99% )   ( 17.701129s |  0.88% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000100s |  0.00% |  0.00% )   ( 0.000113s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p20
30.5.0:         ( 0.044855s |  0.00% |  0.24% )   ( 0.044659s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038721s |  0.00% |  0.21% )   ( 0.038591s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.048640s |  0.00% |  0.26% )   ( 0.048495s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.048535s |  0.00% |  0.26% )   ( 0.048359s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.052155s |  0.00% |  0.28% )   ( 0.051976s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002824s |  0.00% |  0.00% )   ( 0.003145s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   true
38.5.0:         ( 0.002286s |  0.00% |  0.00% )   ( 0.002561s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000101s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002862s |  0.00% |  0.00% )   ( 0.003172s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p20
41.5.0:         ( 0.211111s |  0.01% |  0.07% )   ( 0.003595s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002707s |  0.00% |  0.00% )   ( 0.003042s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.002275s |  0.00% |  0.00% )   ( 0.002588s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.002104s |  0.00% |  0.00% )   ( 0.002392s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002342s |  0.00% |  0.00% )   ( 0.002657s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.020592s |  0.00% |  0.00% )   ( 0.017831s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002141s |  0.00% |  0.00% )   ( 0.002429s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002098s |  0.00% |  0.00% )   ( 0.002385s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005439s |  0.00% |  0.00% )   ( 0.002563s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.002788s |  0.00% |  0.00% )   ( 0.003107s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p20
66.5.0:         ( 0.002172s |  0.00% |  0.00% )   ( 0.002470s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002121s |  0.00% |  0.00% )   ( 0.002404s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.800333s |  1.62% |  6.47% )   ( 17.395544s |  0.87% |  6.55% )    	(15x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002193s |  0.00% |  0.01% )   ( 0.002506s |  0.00% |  0.01% )    	(15x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.165362s |  0.10% |  6.54% )   ( 1.127811s |  0.05% |  6.48% )    	(15x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.236333s |  0.20% | 12.56% )   ( 2.172239s |  0.10% | 12.48% )    	(15x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.691070s |  0.15% |  9.50% )   ( 1.668208s |  0.08% |  9.58% )    	(15x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.215078s |  0.20% | 12.44% )   ( 2.160640s |  0.10% | 12.42% )    	(15x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.655557s |  0.15% |  9.30% )   ( 1.611088s |  0.08% |  9.26% )    	(15x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.048361s |  0.09% |  5.88% )   ( 1.012061s |  0.05% |  5.81% )    	(15x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.381639s |  0.03% |  2.14% )   ( 0.379688s |  0.01% |  2.18% )    	(15x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.120304s |  0.10% |  6.29% )   ( 1.077371s |  0.05% |  6.19% )    	(15x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.315939s |  0.02% |  1.77% )   ( 0.310445s |  0.01% |  1.78% )    	(15x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.411025s |  0.12% |  7.92% )   ( 1.381524s |  0.06% |  7.94% )    	(15x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.828021s |  0.34% | 21.50% )   ( 3.796892s |  0.19% | 21.82% )    	(15x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.385132s |  0.03% |  2.16% )   ( 0.362931s |  0.01% |  2.08% )    	(15x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.344319s |  0.03% |  1.93% )   ( 0.332140s |  0.01% |  1.90% )    	(15x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002042s |  0.00% |  0.00% )   ( 0.002318s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.001963s |  0.00% |  0.00% )   ( 0.002235s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.002096s |  0.00% |  0.00% )   ( 0.002363s |  0.00% |  0.00% )    	(14x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008814s |  0.00% |  0.04% )   ( 0.008894s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p20\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 19.400429s |  1.76% |  3.53% )   ( 37.156812s |  1.86% |  3.72% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001073s |  0.00% |  0.00% )   ( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 19.399198s |  1.76% | 99.99% )   ( 18.577768s |  0.93% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000098s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000096s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p21
30.5.0:         ( 0.043358s |  0.00% |  0.22% )   ( 0.043208s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047134s |  0.00% |  0.24% )   ( 0.046952s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045370s |  0.00% |  0.23% )   ( 0.045208s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.046217s |  0.00% |  0.23% )   ( 0.046048s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.045946s |  0.00% |  0.23% )   ( 0.045776s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004204s |  0.00% |  0.00% )   ( 0.004702s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003602s |  0.00% |  0.00% )   ( 0.004082s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004483s |  0.00% |  0.00% )   ( 0.004971s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p21
41.5.0:         ( 0.357352s |  0.03% |  0.07% )   ( 0.005689s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004411s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004110s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003781s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003453s |  0.00% |  0.00% )   ( 0.003865s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031243s |  0.00% |  0.00% )   ( 0.028612s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003498s |  0.00% |  0.00% )   ( 0.003957s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003298s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009587s |  0.00% |  0.00% )   ( 0.004017s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004667s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p21
66.5.0:         ( 0.003428s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003420s |  0.00% |  0.00% )   ( 0.003864s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 18.711827s |  1.70% |  4.19% )   ( 18.243929s |  0.91% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003455s |  0.00% |  0.01% )   ( 0.003950s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.380896s |  0.12% |  7.37% )   ( 1.290596s |  0.06% |  7.07% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.290568s |  0.20% | 12.24% )   ( 2.217344s |  0.11% | 12.15% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.798895s |  0.16% |  9.61% )   ( 1.740998s |  0.08% |  9.54% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.135488s |  0.19% | 11.41% )   ( 2.123059s |  0.10% | 11.63% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.727711s |  0.15% |  9.23% )   ( 1.677471s |  0.08% |  9.19% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.157543s |  0.10% |  6.18% )   ( 1.129178s |  0.05% |  6.18% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.529390s |  0.04% |  2.82% )   ( 0.518218s |  0.02% |  2.84% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.202104s |  0.10% |  6.42% )   ( 1.184170s |  0.05% |  6.49% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.436295s |  0.03% |  2.33% )   ( 0.434315s |  0.02% |  2.38% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.495331s |  0.13% |  7.99% )   ( 1.462541s |  0.07% |  8.01% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.581588s |  0.32% | 19.14% )   ( 3.505091s |  0.17% | 19.21% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.513033s |  0.04% |  2.74% )   ( 0.500941s |  0.02% |  2.74% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.459530s |  0.04% |  2.45% )   ( 0.456057s |  0.02% |  2.49% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003418s |  0.00% |  0.00% )   ( 0.003882s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003673s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004135s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000095s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005117s |  0.00% |  0.02% )   ( 0.005184s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p21\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.247714s |  1.57% |  3.13% )   ( 32.700621s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.001060s |  0.00% |  0.00% )   ( 0.001085s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.246493s |  1.57% | 99.99% )   ( 16.349678s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p22
30.5.0:         ( 0.045644s |  0.00% |  0.26% )   ( 0.045460s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045504s |  0.00% |  0.26% )   ( 0.045349s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.046073s |  0.00% |  0.26% )   ( 0.045847s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.049429s |  0.00% |  0.28% )   ( 0.049229s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.046787s |  0.00% |  0.27% )   ( 0.046606s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004473s |  0.00% |  0.00% )   ( 0.004997s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004434s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004720s |  0.00% |  0.00% )   ( 0.005269s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p22
41.5.0:         ( 0.317366s |  0.02% |  0.07% )   ( 0.006204s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004166s |  0.00% |  0.00% )   ( 0.004678s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003970s |  0.00% |  0.00% )   ( 0.004426s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003755s |  0.00% |  0.00% )   ( 0.004237s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003893s |  0.00% |  0.00% )   ( 0.004380s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029131s |  0.00% |  0.00% )   ( 0.029531s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003691s |  0.00% |  0.00% )   ( 0.004159s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003403s |  0.00% |  0.00% )   ( 0.003858s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003863s |  0.00% |  0.00% )   ( 0.004335s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004520s |  0.00% |  0.00% )   ( 0.004962s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p22
66.5.0:         ( 0.003629s |  0.00% |  0.00% )   ( 0.004139s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003351s |  0.00% |  0.00% )   ( 0.003825s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.586844s |  1.51% |  4.00% )   ( 16.000192s |  0.80% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003607s |  0.00% |  0.02% )   ( 0.004099s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.120097s |  0.10% |  6.75% )   ( 1.066748s |  0.05% |  6.66% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.000548s |  0.18% | 12.06% )   ( 1.850085s |  0.09% | 11.56% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.584541s |  0.14% |  9.55% )   ( 1.552889s |  0.07% |  9.70% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.916097s |  0.17% | 11.55% )   ( 1.873085s |  0.09% | 11.70% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.526277s |  0.13% |  9.20% )   ( 1.491969s |  0.07% |  9.32% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.007896s |  0.09% |  6.07% )   ( 0.967205s |  0.04% |  6.04% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.537289s |  0.04% |  3.23% )   ( 0.500238s |  0.02% |  3.12% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.087157s |  0.09% |  6.55% )   ( 1.028644s |  0.05% |  6.42% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.456642s |  0.04% |  2.75% )   ( 0.441299s |  0.02% |  2.75% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.402277s |  0.12% |  8.45% )   ( 1.337007s |  0.06% |  8.35% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.963630s |  0.27% | 17.86% )   ( 2.923042s |  0.14% | 18.26% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.499644s |  0.04% |  3.01% )   ( 0.494249s |  0.02% |  3.08% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.481142s |  0.04% |  2.90% )   ( 0.469633s |  0.02% |  2.93% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003559s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003324s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.005763s |  0.00% |  0.00% )   ( 0.004210s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
67.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
76.5.0:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
77.5.0:         ( 0.001439s |  0.00% |  0.00% )   ( 0.000227s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
79.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit
80.5.0:         ( 0.000227s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p* 1>&21
81.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-81.5.0:        ( 0.012206s |  0.00% |  0.07% )   ( 0.009078s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p22\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 17.556381s |  1.60% |  3.19% )   ( 33.181604s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.000933s |  0.00% |  0.00% )   ( 0.000958s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 17.555263s |  1.60% | 99.99% )   ( 16.590218s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p23
30.5.0:         ( 0.045904s |  0.00% |  0.26% )   ( 0.045737s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046196s |  0.00% |  0.26% )   ( 0.046018s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045996s |  0.00% |  0.26% )   ( 0.045822s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.050438s |  0.00% |  0.28% )   ( 0.050264s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.047794s |  0.00% |  0.27% )   ( 0.047613s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004296s |  0.00% |  0.00% )   ( 0.004787s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   true
38.5.0:         ( 0.003672s |  0.00% |  0.00% )   ( 0.004172s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004627s |  0.00% |  0.00% )   ( 0.005160s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p23
41.5.0:         ( 0.234015s |  0.02% |  0.05% )   ( 0.006225s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003951s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003814s |  0.00% |  0.00% )   ( 0.004303s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003424s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003859s |  0.00% |  0.00% )   ( 0.004368s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030947s |  0.00% |  0.00% )   ( 0.031354s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003613s |  0.00% |  0.00% )   ( 0.004091s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003485s |  0.00% |  0.00% )   ( 0.003976s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003655s |  0.00% |  0.00% )   ( 0.004131s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004380s |  0.00% |  0.00% )   ( 0.004901s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p23
66.5.0:         ( 0.003528s |  0.00% |  0.00% )   ( 0.004027s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003571s |  0.00% |  0.00% )   ( 0.004028s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000187s |  0.00% |  0.00% )   ( 0.000214s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.976203s |  1.54% |  4.02% )   ( 16.237990s |  0.81% |  4.07% )    	(24x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003579s |  0.00% |  0.02% )   ( 0.004072s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.129965s |  0.10% |  6.65% )   ( 1.074470s |  0.05% |  6.61% )    	(24x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.040653s |  0.18% | 12.02% )   ( 1.887394s |  0.09% | 11.62% )    	(24x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.726813s |  0.15% | 10.17% )   ( 1.565973s |  0.07% |  9.64% )    	(24x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.941882s |  0.17% | 11.43% )   ( 1.890391s |  0.09% | 11.64% )    	(24x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.564777s |  0.14% |  9.21% )   ( 1.516755s |  0.07% |  9.34% )    	(24x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.973603s |  0.08% |  5.73% )   ( 0.950351s |  0.04% |  5.85% )    	(24x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.528173s |  0.04% |  3.11% )   ( 0.502294s |  0.02% |  3.09% )    	(24x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.046828s |  0.09% |  6.16% )   ( 1.032093s |  0.05% |  6.35% )    	(24x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.466464s |  0.04% |  2.74% )   ( 0.437872s |  0.02% |  2.69% )    	(24x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.391436s |  0.12% |  8.19% )   ( 1.348755s |  0.06% |  8.30% )    	(24x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.150721s |  0.28% | 18.55% )   ( 3.071969s |  0.15% | 18.91% )    	(24x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.521503s |  0.04% |  3.07% )   ( 0.489909s |  0.02% |  3.01% )    	(24x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.489806s |  0.04% |  2.88% )   ( 0.465692s |  0.02% |  2.86% )    	(24x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003583s |  0.00% |  0.00% )   ( 0.004041s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003486s |  0.00% |  0.00% )   ( 0.003951s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.010473s |  0.00% |  0.00% )   ( 0.004318s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008747s |  0.00% |  0.04% )   ( 0.008826s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p23\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000185s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.535258s |  1.59% |  3.19% )   ( 33.619170s |  1.68% |  3.36% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001068s |  0.00% |  0.00% )   ( 0.001091s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.534035s |  1.59% | 99.99% )   ( 16.808952s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000211s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000239s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p24
30.5.0:         ( 0.042920s |  0.00% |  0.24% )   ( 0.042764s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046978s |  0.00% |  0.26% )   ( 0.046790s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.050807s |  0.00% |  0.28% )   ( 0.050638s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.043201s |  0.00% |  0.24% )   ( 0.043066s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.046091s |  0.00% |  0.26% )   ( 0.045952s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003638s |  0.00% |  0.00% )   ( 0.004087s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003459s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000106s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p24
41.5.0:         ( 0.309729s |  0.02% |  0.07% )   ( 0.005871s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003840s |  0.00% |  0.00% )   ( 0.004319s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003511s |  0.00% |  0.00% )   ( 0.003970s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003226s |  0.00% |  0.00% )   ( 0.003669s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003574s |  0.00% |  0.00% )   ( 0.004013s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027230s |  0.00% |  0.00% )   ( 0.027591s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003316s |  0.00% |  0.00% )   ( 0.003767s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003301s |  0.00% |  0.00% )   ( 0.003737s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003924s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003960s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p24
66.5.0:         ( 0.003261s |  0.00% |  0.00% )   ( 0.003709s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003242s |  0.00% |  0.00% )   ( 0.003689s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000162s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.903091s |  1.54% |  4.19% )   ( 16.474790s |  0.82% |  4.26% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003299s |  0.00% |  0.01% )   ( 0.003759s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.158305s |  0.10% |  6.85% )   ( 1.080696s |  0.05% |  6.55% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.986500s |  0.18% | 11.75% )   ( 1.933188s |  0.09% | 11.73% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.612658s |  0.14% |  9.54% )   ( 1.585070s |  0.07% |  9.62% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.990237s |  0.18% | 11.77% )   ( 1.943125s |  0.09% | 11.79% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.596285s |  0.14% |  9.44% )   ( 1.531496s |  0.07% |  9.29% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.015795s |  0.09% |  6.00% )   ( 1.000284s |  0.05% |  6.07% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.481001s |  0.04% |  2.84% )   ( 0.471425s |  0.02% |  2.86% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.061809s |  0.09% |  6.28% )   ( 1.049728s |  0.05% |  6.37% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.432726s |  0.03% |  2.56% )   ( 0.417015s |  0.02% |  2.53% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.406078s |  0.12% |  8.31% )   ( 1.360301s |  0.06% |  8.25% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.204714s |  0.29% | 18.95% )   ( 3.174571s |  0.15% | 19.26% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.500267s |  0.04% |  2.95% )   ( 0.476168s |  0.02% |  2.89% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.453417s |  0.04% |  2.68% )   ( 0.447964s |  0.02% |  2.71% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003404s |  0.00% |  0.00% )   ( 0.003843s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003007s |  0.00% |  0.00% )   ( 0.003416s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003510s |  0.00% |  0.00% )   ( 0.003934s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006227s |  0.00% |  0.03% )   ( 0.006324s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p24\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 17.752166s |  1.61% |  3.23% )   ( 34.095814s |  1.70% |  3.41% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001129s |  0.00% |  0.00% )   ( 0.001154s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 17.750883s |  1.61% | 99.99% )   ( 17.047243s |  0.85% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p25
30.5.0:         ( 0.044509s |  0.00% |  0.25% )   ( 0.044291s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047349s |  0.00% |  0.26% )   ( 0.047168s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.049993s |  0.00% |  0.28% )   ( 0.049773s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.047095s |  0.00% |  0.26% )   ( 0.046932s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.047804s |  0.00% |  0.26% )   ( 0.047602s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003520s |  0.00% |  0.00% )   ( 0.003926s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003575s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003800s |  0.00% |  0.00% )   ( 0.004223s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p25
41.5.0:         ( 0.241739s |  0.02% |  0.06% )   ( 0.004793s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003488s |  0.00% |  0.00% )   ( 0.003900s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.003180s |  0.00% |  0.00% )   ( 0.003614s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.002903s |  0.00% |  0.00% )   ( 0.003278s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003043s |  0.00% |  0.00% )   ( 0.003436s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.025070s |  0.00% |  0.00% )   ( 0.024179s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.002900s |  0.00% |  0.00% )   ( 0.003290s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.002941s |  0.00% |  0.00% )   ( 0.003337s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.003063s |  0.00% |  0.00% )   ( 0.003464s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.003564s |  0.00% |  0.00% )   ( 0.003922s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p25
66.5.0:         ( 0.002851s |  0.00% |  0.00% )   ( 0.003228s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.002899s |  0.00% |  0.00% )   ( 0.003308s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000154s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 17.186436s |  1.56% |  4.84% )   ( 16.714899s |  0.83% |  4.90% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002911s |  0.00% |  0.01% )   ( 0.003325s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.156877s |  0.10% |  6.73% )   ( 1.109931s |  0.05% |  6.64% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.145855s |  0.19% | 12.48% )   ( 2.049039s |  0.10% | 12.25% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.676847s |  0.15% |  9.75% )   ( 1.624090s |  0.08% |  9.71% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.015759s |  0.18% | 11.72% )   ( 1.983710s |  0.09% | 11.86% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.587356s |  0.14% |  9.23% )   ( 1.551276s |  0.07% |  9.28% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.983521s |  0.08% |  5.72% )   ( 0.968112s |  0.04% |  5.79% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.456976s |  0.04% |  2.65% )   ( 0.438391s |  0.02% |  2.62% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.099526s |  0.10% |  6.39% )   ( 1.059358s |  0.05% |  6.33% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.394382s |  0.03% |  2.29% )   ( 0.380694s |  0.01% |  2.27% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.402058s |  0.12% |  8.15% )   ( 1.355384s |  0.06% |  8.10% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.385709s |  0.30% | 19.69% )   ( 3.353101s |  0.16% | 20.06% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.437977s |  0.03% |  2.54% )   ( 0.432878s |  0.02% |  2.58% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.440682s |  0.04% |  2.56% )   ( 0.405610s |  0.02% |  2.42% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003001s |  0.00% |  0.00% )   ( 0.003400s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.002843s |  0.00% |  0.00% )   ( 0.003252s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003228s |  0.00% |  0.00% )   ( 0.003638s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008973s |  0.00% |  0.05% )   ( 0.009052s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p25\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 17.450114s |  1.59% |  3.17% )   ( 33.168126s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001068s |  0.00% |  0.00% )   ( 0.001093s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 17.448887s |  1.59% | 99.99% )   ( 16.583427s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p26
30.5.0:         ( 0.045905s |  0.00% |  0.26% )   ( 0.045700s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045969s |  0.00% |  0.26% )   ( 0.045780s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.045948s |  0.00% |  0.26% )   ( 0.045766s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.045971s |  0.00% |  0.26% )   ( 0.045799s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.045942s |  0.00% |  0.26% )   ( 0.045751s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004848s |  0.00% |  0.00% )   ( 0.005429s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004685s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000108s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005186s |  0.00% |  0.00% )   ( 0.005777s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p26
41.5.0:         ( 0.360145s |  0.03% |  0.07% )   ( 0.006566s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.006505s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004422s |  0.00% |  0.00% )   ( 0.005034s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004489s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004162s |  0.00% |  0.00% )   ( 0.004673s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037923s |  0.00% |  0.00% )   ( 0.032323s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.004013s |  0.00% |  0.00% )   ( 0.004528s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.004023s |  0.00% |  0.00% )   ( 0.004557s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.005243s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004933s |  0.00% |  0.00% )   ( 0.005491s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p26
66.5.0:         ( 0.003926s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003802s |  0.00% |  0.00% )   ( 0.004297s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 16.742705s |  1.52% |  3.55% )   ( 16.231384s |  0.81% |  3.62% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003972s |  0.00% |  0.02% )   ( 0.004522s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.190240s |  0.10% |  7.10% )   ( 1.093467s |  0.05% |  6.73% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.917204s |  0.17% | 11.45% )   ( 1.873824s |  0.09% | 11.54% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.601047s |  0.14% |  9.56% )   ( 1.562056s |  0.07% |  9.62% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.895720s |  0.17% | 11.32% )   ( 1.828800s |  0.09% | 11.26% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.529706s |  0.13% |  9.13% )   ( 1.504701s |  0.07% |  9.27% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.031935s |  0.09% |  6.16% )   ( 0.991030s |  0.04% |  6.10% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.544150s |  0.04% |  3.25% )   ( 0.539511s |  0.02% |  3.32% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.068299s |  0.09% |  6.38% )   ( 1.020471s |  0.05% |  6.28% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.511835s |  0.04% |  3.05% )   ( 0.480315s |  0.02% |  2.95% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.403690s |  0.12% |  8.38% )   ( 1.356234s |  0.06% |  8.35% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.993778s |  0.27% | 17.88% )   ( 2.934250s |  0.14% | 18.07% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.530710s |  0.04% |  3.16% )   ( 0.530922s |  0.02% |  3.27% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.520419s |  0.04% |  3.10% )   ( 0.511281s |  0.02% |  3.14% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004114s |  0.00% |  0.00% )   ( 0.004671s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003819s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.004151s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005838s |  0.00% |  0.03% )   ( 0.005892s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p26\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 19.806549s |  1.80% |  3.60% )   ( 37.499490s |  1.87% |  3.75% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001083s |  0.00% |  0.00% )   ( 0.001103s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 19.805310s |  1.80% | 99.99% )   ( 18.749105s |  0.93% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.eGDvrC"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p27
30.5.0:         ( 0.047098s |  0.00% |  0.23% )   ( 0.046931s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.043776s |  0.00% |  0.22% )   ( 0.043630s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1261885 ${BASHPID}' INT
33.5.0:         ( 0.053345s |  0.00% |  0.26% )   ( 0.053146s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1261885 ${BASHPID}' TERM
34.5.0:         ( 0.050895s |  0.00% |  0.25% )   ( 0.050724s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1261885 ${BASHPID}' HUP
35.5.0:         ( 0.041553s |  0.00% |  0.20% )   ( 0.041396s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004692s |  0.00% |  0.00% )   ( 0.005234s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004342s |  0.00% |  0.00% )   ( 0.004886s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.eGDvrC"/.nLines
38.5.2:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005255s |  0.00% |  0.00% )   ( 0.005829s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p27
41.5.0:         ( 0.342861s |  0.03% |  0.06% )   ( 0.007044s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004624s |  0.00% |  0.00% )   ( 0.005175s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.quit ]]
46.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004818s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.done ]]
46.5.1:         ( 0.003831s |  0.00% |  0.00% )   ( 0.004344s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003943s |  0.00% |  0.00% )   ( 0.004436s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031264s |  0.00% |  0.00% )   ( 0.031639s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 A
51.5.0:         ( 0.003807s |  0.00% |  0.00% )   ( 0.004319s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
51.5.1:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004428s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.009084s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
65.5.0:         ( 0.004632s |  0.00% |  0.00% )   ( 0.005179s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.eGDvrC"/.wait/p27
66.5.0:         ( 0.003750s |  0.00% |  0.00% )   ( 0.004247s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
86.5.0:         ( 0.003714s |  0.00% |  0.00% )   ( 0.004201s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
87.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
88.5.0:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
88.5.1:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
91.5.0:         ( 19.115477s |  1.74% |  3.71% )   ( 18.392099s |  0.92% |  3.77% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003671s |  0.00% |  0.01% )   ( 0.004168s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.413115s |  0.12% |  7.39% )   ( 1.327504s |  0.06% |  7.21% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.162735s |  0.19% | 11.31% )   ( 2.100206s |  0.10% | 11.41% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.787239s |  0.16% |  9.34% )   ( 1.741369s |  0.08% |  9.46% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.180201s |  0.19% | 11.40% )   ( 2.108907s |  0.10% | 11.46% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.726760s |  0.15% |  9.03% )   ( 1.676891s |  0.08% |  9.11% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.223404s |  0.11% |  6.40% )   ( 1.177462s |  0.05% |  6.40% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.572477s |  0.05% |  2.99% )   ( 0.542348s |  0.02% |  2.94% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.283465s |  0.11% |  6.71% )   ( 1.198643s |  0.06% |  6.51% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.548518s |  0.04% |  2.86% )   ( 0.479950s |  0.02% |  2.60% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.606006s |  0.14% |  8.40% )   ( 1.511562s |  0.07% |  8.21% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.491788s |  0.31% | 18.26% )   ( 3.458733s |  0.17% | 18.80% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.581412s |  0.05% |  3.04% )   ( 0.546772s |  0.02% |  2.97% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.534686s |  0.04% |  2.79% )   ( 0.517584s |  0.02% |  2.81% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004083s |  0.00% |  0.00% )   ( 0.004627s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
86.5.1:         ( 0.003497s |  0.00% |  0.00% )   ( 0.003967s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
89.5.0:         ( 0.003829s |  0.00% |  0.00% )   ( 0.004302s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006373s |  0.00% |  0.03% )   ( 0.006394s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p27\; $'\n'printf '\n' >&21
257.4.0:        ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000163s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000145s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001408s |  0.00% |  0.00% )   ( 0.001424s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000131s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.475876s |  2.23% |  4.45% )   ( 0.001647s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000135s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.047916s |  0.00% |  0.00% )   ( 0.048029s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.eGDvrC"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.eGDvrC"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1261897  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.eGDvrC"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000333s |  0.00% |  0.00% )   ( 0.000374s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.006447s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.eGDvrC" 2>/dev/null

10.0.0:         ( 547.568272s | 49.91% )            ( 999.280967s | 50.04% )             	(1x)	<< (FUNCTION): main.forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
1.1.0:          ( 0.001274s |  0.00% |  0.00% )   ( 0.001073s |  0.00% |  0.00% )    	(1x)	├─  forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
24.1.0:         ( 547.566998s | 49.91% | 99.99% )   ( 999.279894s | 50.04% | 99.99% )    	(1x)	│   << (SUBSHELL) >>
24.2.0:         ( 0.041389s |  0.00% |  0.00% )   ( 0.041325s |  0.00% |  0.00% )    	(1x)	│  ├─  trap - EXIT INT TERM HUP USR1
25.2.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │   shopt -s extglob
26.2.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │   local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
27.2.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │   local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
28.2.0:         ( 0.000102s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │   local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
29.2.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │   local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
30.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
31.2.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
32.2.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ $# == 0 ]]
32.2.1:         ( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │   optParseFlag=true
33.2.0:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │   ${optParseFlag}
33.2.1:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │   (( $# > 0  ))
33.2.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │   [[ "$1" == [-+]* ]]
34.2.0:         ( 0.000091s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │   case "${1}" in
165.2.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │   [[ "${1:0:1}" == '-' ]]
165.2.1:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   nullDelimiterFlag=true
215.2.0:        ( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │   shift 1
216.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   [[ ${#} == 0 ]]
218.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [ -t "${fd_stdin0}" ]
223.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${tmpDirRoot} ]]
224.2.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │   [[ -n ${TMPDIR} ]]
226.2.0:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │   [[ -d '/dev/shm' ]]
226.2.1:        ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │   tmpDirRoot='/dev/shm'
230.2.0:        ( 0.001235s |  0.00% |  0.00% )   ( 0.001057s |  0.00% |  0.00% )    	(1x)	│  │   tmpDir="$(mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX)"
230.2.1:        ( 0.008211s |  0.00% |  0.00% )   ( 0.008211s |  0.00% |  0.00% )    	(1x)	│  │   << (BACKGROUND FORK) >>
230.3.0:        ( 0.008211s |  0.00% |100.00% )   ( 0.008211s |  0.00% |100.00% )    	(1x)	│  │  └─  mktemp -p "${tmpDirRoot}/.forkrun" -d forkrun.XXXXXX
231.2.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │   fPath="${tmpDir}"/.stdin
232.2.0:        ( 0.001060s |  0.00% |  0.00% )   ( 0.001144s |  0.00% |  0.00% )    	(1x)	│  │   mkdir -p "${tmpDir}"/.run
233.2.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │   : > "${fPath}"
234.2.0:        ( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │   ${rmTmpDirFlag}
234.2.1:        ( 0.026183s |  0.00% |  0.00% )   ( 0.000957s |  0.00% |  0.00% )    	(1x)	│  │   trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
235.2.0:        ( 547.481750s | 49.90% | 99.98% )   ( 999.214139s | 50.03% | 99.99% )    	(1x)	│  │   << (SUBSHELL) >>
235.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  ├─  [[ -n ${DEBUG_FORKRUN} ]]
1084.3.0:       ( 0.001846s |  0.00% |  0.00% )   ( 0.002101s |  0.00% |  0.00% )    	(6x)	│  │  │   << (BACKGROUND FORK) >>
1084.4.0:       ( 0.001846s |  0.00% |100.00% )   ( 0.002101s |  0.00% |100.00% )    	(6x)	│  │  │  └─  :
238.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   LC_ALL=C
239.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   LANG=C
240.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   IFS=
241.3.0:        ( 0.000186s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │   enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
242.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │   export LC_ALL=C LANG=C IFS=
243.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   FORKRUN_TMPDIR="$tmpDir"
244.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   export FORKRUN_TMPDIR="$tmpDir"
245.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   PID0="${BASHPID}"
246.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   shopt -s nullglob
247.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.010548s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
248.3.0:        ( 0.000083s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   enable lseek &> /dev/null
249.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekFlag:=true}"
253.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
254.3.0:        ( 0.003084s |  0.00% |  0.00% )   ( 0.003135s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "$(lseek $fd_read 0)" == 0 ]]
254.3.1:        ( 0.000119s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
254.4.0:        ( 0.000119s |  0.00% |100.00% )   ( 0.000132s |  0.00% |100.00% )    	(1x)	│  │  │  └─  lseek $fd_read 0
254.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${lseekPosFlag:=true}"
256.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowCarriageReturnsFlag:-false}
259.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'runCmd=("${@//\'\r\'/}")
261.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${#runCmd[@]} > 0 ))
262.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   noFuncFlag=false
263.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${noFuncFlag}
264.3.0:        ( 0.000091s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │   hash "${runCmd[0]}" &> /dev/null
265.3.0:        ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
316.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nLines} ]]
320.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nLinesAutoFlag:=true}"
322.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -z ${nLines} ]]
323.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   nLines=1
325.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == '-'* ]]
329.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nProcs}" == *','* ]]
333.3.0:        ( 0.000912s |  0.00% |  0.00% )   ( 0.001056s |  0.00% |  0.00% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
1.4.0:          ( 0.000079s |  0.00% |  8.66% )   ( 0.000092s |  0.00% |  8.71% )    	(1x)	│  │  │  ├─  _forkrun_getVal nProcs "${nProcs%%,*}"
24.4.0:         ( 0.000070s |  0.00% |  7.67% )   ( 0.000082s |  0.00% |  7.76% )    	(1x)	│  │  │  │   local +i -l nn
25.4.0:         ( 0.000068s |  0.00% |  7.45% )   ( 0.000080s |  0.00% |  7.57% )    	(1x)	│  │  │  │   local vOut
26.4.0:         ( 0.000070s |  0.00% |  7.67% )   ( 0.000081s |  0.00% |  7.67% )    	(1x)	│  │  │  │   local -n vOut="$1"
27.4.0:         ( 0.000065s |  0.00% |  7.12% )   ( 0.000077s |  0.00% |  7.29% )    	(1x)	│  │  │  │   shift 1
28.4.0:         ( 0.000070s |  0.00% |  7.67% )   ( 0.000082s |  0.00% |  7.76% )    	(1x)	│  │  │  │   local -g vOut
29.4.0:         ( 0.000067s |  0.00% |  7.34% )   ( 0.000079s |  0.00% |  7.48% )    	(1x)	│  │  │  │   (( ${#pMap[@]} == 20 ))
29.4.1:         ( 0.000119s |  0.00% | 13.04% )   ( 0.000130s |  0.00% | 12.31% )    	(1x)	│  │  │  │   local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
30.4.0:         ( 0.000067s |  0.00% |  7.34% )   ( 0.000079s |  0.00% |  7.48% )    	(1x)	│  │  │  │   for nn in "${@%%[Bb]*}"
32.4.0:         ( 0.000067s |  0.00% |  7.34% )   ( 0.000078s |  0.00% |  7.38% )    	(1x)	│  │  │  │   [[ -n ${nn} ]]
32.4.1:         ( 0.000094s |  0.00% | 10.30% )   ( 0.000108s |  0.00% | 10.22% )    	(1x)	│  │  │  │   continue
42.4.0:         ( 0.000076s |  0.00% |  8.33% )   ( 0.000088s |  0.00% |  8.33% )    	(1x)	│  │  │  └─  local +n vOut
334.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
335.3.0:        ( 0.010337s |  0.00% |  0.00% )   ( 0.010450s |  0.00% |  0.00% )    	(1x)	│  │  │   $'nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE \'^processor.*: \' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/\'\034\'}") && tmpA=("${tmpA[@]//!(\'\034\')/}") && tmpA=("${tmpA[@]//\'\034\'/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf \'8\')"
335.3.1:        ( 0.003071s |  0.00% |  0.00% )   ( 0.003228s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
335.4.0:        ( 0.000382s |  0.00% | 12.43% )   ( 0.000411s |  0.00% | 12.73% )    	(1x)	│  │  │  ├─  type -a nproc &> /dev/null
335.4.1:        ( 0.002689s |  0.00% | 87.56% )   ( 0.002817s |  0.00% | 87.26% )    	(1x)	│  │  │  └─  nproc
336.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nCPU < 1 ))
338.3.0:        ( 0.000112s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ -n ${nProcs} ]]
340.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
340.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   nProcs=${nCPU}
342.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
346.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
347.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nSpawnFlag:=false}"
348.3.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
349.3.0:        ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │   local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
350.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
351.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < 2 * nLines ))
353.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   (( nLinesMax < nLines ))
355.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   doneIndicatorFlag=false
356.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.0:        ( 0.000155s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │   type -a fallocate &> /dev/null
360.3.1:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
360.3.2:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${fallocateFlag:=true}"
361.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   ${exportOrderFlag}
362.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${readBytesFlag}
363.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
367.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nullDelimiterFlag}
368.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   delimiterReadStr="-d ''"
369.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │   ${lseekFlag}
369.3.1:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:='lseek'}"
370.3.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${nullDelimiterProg:=bash}"
371.3.0:        ( 0.000110s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │   type -p dd &> /dev/null
372.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ddAvailableFlag=true
373.3.0:        ( 0.002684s |  0.00% |  0.00% )   ( 0.003520s |  0.00% |  0.00% )    	(1x)	│  │  │   dd --version | grep --color=auto -qF 'coreutils'
374.3.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │   ddQuietStr='status=none'
381.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
382.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${FORCE_allowUnsafeNullDelimiterFlag}
383.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   nullDelimiterProg=''
401.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${unescapeFlag}
410.3.0:        ( 0.008361s |  0.00% |  0.00% )   ( 0.008409s |  0.00% |  0.00% )    	(1x)	│  │  │   mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
410.3.1:        ( 0.000340s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
410.4.0:        ( 0.000340s |  0.00% |100.00% )   ( 0.000383s |  0.00% |100.00% )    	(1x)	│  │  │  └─  printf '%q\n' "${runCmd[@]}"
411.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringFlag}
414.3.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${substituteStringIDFlag}
419.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   nLinesCur=${nLines}
420.3.0:        ( 0.002839s |  0.00% |  0.00% )   ( 0.002902s |  0.00% |  0.00% )    	(1x)	│  │  │   mkdir -p "${tmpDir}"/.{run,wait}
421.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
422.3.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │   ${rmTmpDirFlag}
423.3.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 0 ))
450.3.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │   tStart="${EPOCHREALTIME//./}"
451.3.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │   evfd_init
455.3.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr=\': >"\'"${tmpDir}"\'"/.done;\n: >"\'"${tmpDir}"\'"/.quit;\nkill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
456.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │   ${pipeReadFlag}
459.3.0:        ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesReadLimitFlag}
470.3.0:        ( 0.000504s |  0.00% |  0.00% )   ( 0.000538s |  0.00% |  0.00% )    	(1x)	│  │  │   : "${writeFileProgType:=1}" (&)
473.3.0:        ( 0.134447s |  0.01% |  0.02% )   ( 0.134243s |  0.00% |  0.01% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
473.4.0:        ( 0.000328s |  0.00% |  0.24% )   ( 0.000373s |  0.00% |  0.27% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
474.4.0:        ( 0.020978s |  0.00% | 15.60% )   ( 0.020935s |  0.00% | 15.59% )    	(1x)	│  │  │  │   trap - EXIT
475.4.0:        ( 0.023527s |  0.00% | 17.49% )   ( 0.023463s |  0.00% | 17.47% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
476.4.0:        ( 0.023462s |  0.00% | 17.45% )   ( 0.023407s |  0.00% | 17.43% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
477.4.0:        ( 0.023442s |  0.00% | 17.43% )   ( 0.023393s |  0.00% | 17.42% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
478.4.0:        ( 0.023306s |  0.00% | 17.33% )   ( 0.023259s |  0.00% | 17.32% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
479.4.0:        ( 0.000062s |  0.00% |  0.04% )   ( 0.000073s |  0.00% |  0.05% )    	(1x)	│  │  │  │   case ${writeFileProgType} in
481.4.0:        ( 0.019099s |  0.00% | 14.20% )   ( 0.019063s |  0.00% | 14.20% )    	(1x)	│  │  │  │   evfd_copy ${fd_write} ${fd_stdin}
490.4.0:        ( 0.000101s |  0.00% |  0.07% )   ( 0.000110s |  0.00% |  0.08% )    	(1x)	│  │  │  │   : > "${tmpDir}"/.done
491.4.0:        ( 0.000074s |  0.00% |  0.05% )   ( 0.000086s |  0.00% |  0.06% )    	(1x)	│  │  │  │   evfd_signal
492.4.0:        ( 0.000068s |  0.00% |  0.05% )   ( 0.000081s |  0.00% |  0.06% )    	(1x)	│  │  │  └─  (( ${verboseLevel} > 1 ))
495.3.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   exitTrapStr_kill+="${pWrite_PID} "
497.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
502.3.0:        ( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   outStr='>&'"${fd_stdout}"
504.3.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nLinesAutoFlag}
505.3.0:        ( 0.000423s |  0.00% |  0.00% )   ( 0.000448s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
508.3.0:        ( 4.070284s |  0.37% |  0.74% )   ( 1.833383s |  0.09% |  0.18% )    	(1x)	│  │  │   << (BACKGROUND FORK) >>
508.4.0:        ( 0.000323s |  0.00% |  0.00% )   ( 0.000365s |  0.00% |  0.01% )    	(1x)	│  │  │  ├─  export LC_ALL=C LANG=C IFS=
509.4.0:        ( 0.025613s |  0.00% |  0.62% )   ( 0.025396s |  0.00% |  1.38% )    	(1x)	│  │  │  │   trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
510.4.0:        ( 0.023709s |  0.00% |  0.58% )   ( 0.023579s |  0.00% |  1.28% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
511.4.0:        ( 0.023444s |  0.00% |  0.57% )   ( 0.023398s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
512.4.0:        ( 0.023716s |  0.00% |  0.58% )   ( 0.023381s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
513.4.0:        ( 0.023420s |  0.00% |  0.57% )   ( 0.023370s |  0.00% |  1.27% )    	(1x)	│  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
514.4.0:        ( 0.000075s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${fallocateFlag}
515.4.0:        ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
516.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fd_read_pos_old=0
518.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=0
519.4.0:        ( 0.089558s |  0.00% |  0.00% )   ( 0.102455s |  0.00% |  0.00% )    	(671x)	│  │  │  │   ${fallocateFlag}
520.4.0:        ( 2.533994s |  0.23% |  0.09% )   ( 0.119863s |  0.00% |  0.00% )    	(670x)	│  │  │  │   read -u ${fd_nAuto} -t 0.1
520.4.1:        ( 0.000687s |  0.00% |  0.00% )   ( 0.000762s |  0.00% |  0.01% )    	(3x)	│  │  │  │   continue
521.4.0:        ( 0.094221s |  0.00% |  0.00% )   ( 0.100782s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${REPLY} in
535.4.0:        ( 0.088616s |  0.00% |  0.00% )   ( 0.101635s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nLinesAutoFlag}
536.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
539.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesRead=$(( nLinesRead + ${REPLY} ))
544.4.0:        ( 0.087834s |  0.00% |  0.00% )   ( 0.100652s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${lseekPosFlag}
545.4.0:        ( 0.090953s |  0.00% |  0.00% )   ( 0.103674s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_read 0 SEEK_CUR fd_read_pos
546.4.0:        ( 0.091588s |  0.00% |  0.00% )   ( 0.104560s |  0.00% |  0.00% )    	(667x)	│  │  │  │   lseek $fd_write 0 SEEK_CUR fd_write_pos
552.4.0:        ( 0.086891s |  0.00% |  0.00% )   ( 0.099703s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
553.4.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
554.4.0:        ( 0.086816s |  0.00% |  0.00% )   ( 0.099609s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nSpawnFlag}
555.4.0:        ( 0.087298s |  0.00% |  0.00% )   ( 0.100212s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${nLinesAutoFlag}
556.4.0:        ( 0.000077s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │   ${nSpawnFlag}
557.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   [[ -d "${tmpDir}"/.wait ]]
558.4.0:        ( 0.005753s |  0.00% |  0.14% )   ( 0.006172s |  0.00% |  0.33% )    	(1x)	│  │  │  │   mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
558.4.1:        ( 0.002597s |  0.00% |  0.06% )   ( 0.002923s |  0.00% |  0.15% )    	(1x)	│  │  │  │   << (SUBSHELL) >>
558.5.0:        ( 0.002597s |  0.00% |100.00% )   ( 0.002923s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─  : | cat "${tmpDir}"/.wait 2> /dev/null
559.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nProcsA=(${nProcsA//0/})
560.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${#nProcsA[@]} > 0 ))
562.4.0:        ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
563.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} > ${nLinesCur} ))
564.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${nLinesNew} >= ${nLinesMax} ))
565.4.0:        ( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesNew=${nLinesMax}
566.4.0:        ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
568.4.0:        ( 0.000098s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │   printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
569.4.0:        ( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
570.4.0:        ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesCur=${nLinesNew}
573.4.0:        ( 0.086888s |  0.00% |  0.00% )   ( 0.099707s |  0.00% |  0.00% )    	(667x)	│  │  │  │   ${fallocateFlag}
574.4.0:        ( 0.085603s |  0.00% |  0.00% )   ( 0.098497s |  0.00% |  0.00% )    	(667x)	│  │  │  │   case ${nWait} in
585.4.0:        ( 0.087518s |  0.00% |  0.00% )   ( 0.096931s |  0.00% |  0.00% )    	(646x)	│  │  │  │   ((nWait--))
589.4.0:        ( 0.093933s |  0.00% |  0.00% )   ( 0.103979s |  0.00% |  0.00% )    	(667x)	│  │  │  │   [[ -f "${tmpDir}"/.quit ]]
535.4.1:        ( 0.087909s |  0.00% |  0.00% )   ( 0.100746s |  0.00% |  0.00% )    	(665x)	│  │  │  │   ${nSpawnFlag}
552.4.1:        ( 0.087135s |  0.00% |  0.00% )   ( 0.099973s |  0.00% |  0.00% )    	(666x)	│  │  │  │   ${nSpawnFlag}
576.4.0:        ( 0.002898s |  0.00% |  0.00% )   ( 0.003320s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
577.4.0:        ( 0.002817s |  0.00% |  0.00% )   ( 0.003236s |  0.00% |  0.00% )    	(21x)	│  │  │  │   (( ${fd_read_pos} > ${fd_read_pos_old} ))
578.4.0:        ( 0.048211s |  0.00% |  0.05% )   ( 0.042519s |  0.00% |  0.11% )    	(21x)	│  │  │  │   fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
579.4.0:        ( 0.003458s |  0.00% |  0.00% )   ( 0.003887s |  0.00% |  0.01% )    	(21x)	│  │  │  │   (( ${verboseLevel} > 2 ))
580.4.0:        ( 0.003127s |  0.00% |  0.00% )   ( 0.003557s |  0.00% |  0.00% )    	(21x)	│  │  │  │   fd_read_pos_old=${fd_read_pos}
582.4.0:        ( 0.003263s |  0.00% |  0.00% )   ( 0.003716s |  0.00% |  0.00% )    	(21x)	│  │  │  │   nWait=$(( 16 + ( ${nProcs} / 2 ) ))
529.4.0:        ( 0.000176s |  0.00% |  0.00% )   ( 0.000197s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
590.4.0:        ( 0.000152s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │   nLinesAutoFlag=false
591.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │   fallocateFlag=false
592.4.0:        ( 0.000181s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.01% )    	(1x)	│  │  │  │   nSpawnFlag=false
519.4.1:        ( 0.000208s |  0.00% |  0.00% )   ( 0.000233s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
519.4.2:        ( 0.000221s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.01% )    	(1x)	│  │  │  │   ${nSpawnFlag}
-519.4.0:       ( 0.008033s |  0.00% |  0.19% )   ( 0.008018s |  0.00% |  0.43% )    	(1x)	│  │  │  └─  @TRAP (EXIT): [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/pAuto
598.3.0:        ( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'printf \'"\'"\'0\\n\'"\'"\' >&\'"${fd_nAuto}"\'; \'\'\n\'
599.3.0:        ( 0.000101s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
601.3.0:        ( 0.000102s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
980.3.0:        ( 0.061314s |  0.00% |  0.01% )   ( 0.061360s |  0.00% |  0.00% )    	(1x)	│  │  │   $'coprocSrcCode="$(echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && read -r <\\"${tmpDir}\\"/.nLines && [[ \\${REPLY} == +([0-9]) ]] && nLinesCur=\\${REPLY}"\necho """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""\nif ${readBytesFlag}; then\n    case "${readBytesProg}" in \n        \'dd\')\n            printf \'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} \' "${nBytes}" "${tmpDir}" "${tmpDir}"\n${pipeReadFlag} && printf \'iflag=fullblock <&%s\\n\' "${fd_stdin}" || printf \'<&%s\\n\' "${fd_read}"\nprintf \'[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$\'"\'"\'\\\\n\'"\'"\'"0 bytes"* ]] && A=() || A[0]=1\\n\' "${tmpDir}"\n        ;;\n        \'head\')\n            printf \'head -c %s \' "${nBytes}"\n${pipeReadFlag} && printf \'<&%s \' "${fd_stdin}" || printf \'<&%s \' "${fd_read}"\nprintf \'>"%s"/.stdin.tmp.{<#>}\\n\' "${tmpDir}"\nprintf \'[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\\n\' "${tmpDir}"\n        ;;\n        \'bash\')\n            if ${stdinRunFlag}; then\n                [[ -n ${tTimeout} ]] && echo "SECONDS=0"\nprintf \'if read -r -d \'"\'\'"\' -n %s -u %s\' "${nBytes}" "${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=(\'\')\n                trailingNullFlag=true"""\n${readBytesExactFlag} && echo \'nBytesRead=1\'\necho """\n            else\n                [[ \\${REPLY} ]] && A=(\\"\\${REPLY}\\") || A=()\n                trailingNullFlag=false"""\n${readBytesExactFlag} && echo \'nBytesRead=0\'\necho \'fi\'\nif ${readBytesExactFlag}; then\n                    echo """\n            nBytesRead+=\\${#REPLY}\n            [[ \\${nBytesRead} == 0 ]] || (( \\${nBytesRead} >= ${nBytes} )) || {"""\n[[ -n ${tTimeout} ]] && echo "while (( \\${SECONDS} < ${tTimeout} )); do" || echo "while true; do"\necho "[[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"\nprintf "if read -r -d \'\' -n \\$(( ${nBytes} - \\${nBytesRead} )) -u ${fd_read}"\n[[ -n ${tTimeout} ]] && printf \' -t %s\' "${tTimeout}"\necho """; then\n                    ((nBytesRead++))\n                    nBytesRead+=\\${#REPLY}\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\") || A+=(\'\')\n                    (( \\${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }\n                else\n                    trailingNullFlag=false\n                    [[ \\${REPLY} ]] && A+=(\\"\\${REPLY}\\")\n                    { (( \\${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }\n                    break\n                fi\n            done\n        }""";\n                fi\necho """\n        {\n            if \\${trailingNullFlag}; then\n                printf \'%s\\0\' \\"\\${A[@]}\\" \n            else\n                printf \'%s\' \\"\\${A[0]}\\" \n                printf \'\\0%s\' \\"\\${A[@]:1}\\"\n            fi \n        } >\\"${tmpDir}\\"/.stdin.tmp.{<#>}""";\n            else\n                printf \'read -r -N %s -u \' "${nBytes}"\nif ${readBytesExactFlag}; then\n                    printf \'%s \' "${fd_stdin}"\n[[ -n ${tTimeout} ]] && printf \'-t %s \' "${tTimeout} ";\n                else\n                    printf \'%s \' ${fd_read};\n                fi\necho \'-a A\';\n            fi\n        ;;\n    esac;\nelse\n    ${nLinesReadLimitFlag} && printf \'%s\' """read -r nLinesRead <\\"${tmpDir}\\"/.nLinesRead\n    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\\$(( nLinesReadLimit - nLinesRead ))\n    (( nLinesCur == 0 )) && A=() || """\necho "{"\n${nOrderFlag} && echo "order_get nOrder"\n${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"\nprintf \'%s \' "mapfile"\n${lseekFlag} && printf \'%s \' \'-t\'\nprintf \'%s \' \'-n\' "\\${nLinesCur}" \'-u\'\n${pipeReadFlag} && printf \'%s \' ${fd_stdin} || printf \'%s \' ${fd_read}\n{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf \'%s \' \'-t\'\necho """${delimiterReadStr} A\n    }"""\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \\${#A[@]} == 0 ]] || \\${doneIndicatorFlag} || {"\nif ${lseekFlag}; then\n        echo """\n                lseek ${fd_read} -1 SEEK_CUR \'\'\n                read -r -u ${fd_read} -N 1"""\nif ${nullDelimiterFlag}; then\n            echo "[[ \\${#REPLY} == 0 ]] || {";\n        else\n            echo "[[ \\"\\${REPLY}\\" == ${delimiterVal} ]] || {";\n        fi;\n    else\n        if ${nullDelimiterFlag}; then\n            echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""\ncase "${nullDelimiterProg}" in \n                \'dd\')\n                    echo """\n                { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } || {"""\n                ;;\n                \'bash\')\n                    echo """\n                IFS=\\$\'\\\\t\' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}\n                nBytes=\\$(( fd_read_pos - fd_read_pos0 - \\${#A[@]} ))"""\nif ${ddAvailableFlag}; then\n                        echo """\n                    {\n                        if (( \\${nBytes}  > 65535 )); then\n                            { dd if=\\"${fPath}\\" bs=1 count=1 ${ddQuietStr} skip=\\$(( fd_read_pos - 1 )) | read -t 1 -r -d \'\'; } \n                        else\n                            read -r -u ${fd_read0} -N \\${nBytes} _\n                            read -r -u ${fd_read0} -d \'\'\n                            [[ \\${#REPLY} == 0 ]]\n                        fi\n                    } || {""";\n                    else\n                        echo """\n                    read -r -u ${fd_read0} -N \\${nBytes} _\n                    read -r -u ${fd_read0} -d \'\'\n                    [[ \\${#REPLY} == 0 ]] || {""";\n                    fi\n                ;;\n            esac;\n        else\n            echo "[[ \\"\\${A[-1]: -1}\\" == ${delimiterVal} ]] || {";\n        fi;\n    fi\n(( ${verboseLevel} > 2 )) && echo """\n                echo \\"Partial read at: \\${A[-1]}\\" >&${fd_stderr}"""\necho """\n                until read -r -u ${fd_read} ${delimiterReadStr}; do \n                    A[-1]+=\\"\\${REPLY}\\"; \n                done"""\nprintf \'%s\' "A[-1]+=\\"\\${REPLY}\\""\n${lseekFlag} && printf \'\\n\' || printf \'%s\\n\' "${delimiterVal}"\n(( ${verboseLevel} > 2 )) && echo "echo \\"Partial read fixed to: \\${A[-1]}\\" >&${fd_stderr}"\necho "}"; };\nfi\n${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"\n${nLinesReadLimitFlag} && echo """\nnLinesRead+=\\${#A[@]}\necho \\${nLinesRead} >\\"${tmpDir}\\"/.nLinesRead\n(( nLinesRead == nLinesReadLimit )) && {\n    : >\\"${tmpDir}\\"/.quit\n    echo \'0\' >\\"${tmpDir}\\"/.nLines\n}\n"""\necho """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""\nif ${lseekPosFlag}; then\n    echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos""";\nelse\n    echo """\n            IFS=\\$\'\\\\t\' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};\n            IFS=\\$\'\\\\t\' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; \n                """;\nfi\necho """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""\n${nLinesAutoFlag} && echo "printf \'x\\\\n\' >&\\${fd_nAuto0}"\n${nOrderFlag} && echo ": >\\"${tmpDir}\\"/.out/.quit{<#>}"\n${nSpawnFlag} && echo """printf \'q\\\\n\' >&${fd_nSpawn}\n            printf \'q\\\\n\' >&\\${fd_nAuto0}"""\necho """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""\n${nOrderFlag} && echo """else\n            printf \'x%s\\n\' \\"\\${nOrder}\\" >&\\${fd_nOrder0}"""\necho """fi\n        continue\n    }"""\n{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""\n${fallocateFlag} && printf \'%s\' \' || \' || echo; }\n${fallocateFlag} && echo "printf \'\\\\n\' >&\\${fd_nAuto0}"\n${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """\n        { [[ \\"\\${A[*]##*${delimiterVal}}\\" ]] || [[ -z \\${A[0]} ]]; } && {"""\n(( ${verboseLevel} > 2 )) && echo "echo \\"FIXING SPLIT READ\\" >&${fd_stderr}"\necho """\n            A[-1]=\\"\\${A[-1]%${delimiterVal}}\\"\n            IFS=\n            mapfile ${delimiterReadStr} A <<<\\"\\${A[*]}\\"\n        }"""; }\n${subshellRunFlag} && echo \'(\' || echo \'{\'\n{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo \'nOrder0="${nOrder:1}"\'\n${exportOrderFlag} && echo "printf \'\\034%s:\\035\\n\' \\"\\${nOrder0}\\""\nprintf \'%s \' "${runCmd[@]}"\nif ${readBytesFlag} && ! { [[ ${readBytesProg} == \'bash\' ]] && ! ${stdinRunFlag}; }; then\n    if ${stdinRunFlag} || ${noFuncFlag}; then\n        printf \'<"%s"/%s\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    else\n        printf \'"$(<"%s"/%s)"\' "${tmpDir}" \'.stdin.tmp.{<#>}\';\n    fi;\nelse\n    if ${stdinRunFlag}; then\n        printf \'<<<%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n    else\n        if ${noFuncFlag}; then\n            printf "<<<\\"\\${A[*]%s}\\"" "${delimiterRemoveStr}";\n        else\n            if ! ${substituteStringFlag}; then\n                printf \'%s\' "\\"\\${A[@]${delimiterRemoveStr}}\\"";\n            fi;\n        fi;\n    fi;\nfi\n(( ${verboseLevel} > 2 )) && echo """ || {\n        {\n            printf \'\\\\n\\\\n----------------------------------------------\\\\n\\\\n\'\n            echo \'ERROR DURING \\"${runCmd[*]}\\" CALL\'\n            declare -p A nLinesCur nLinesAutoFlag\n            echo \'fd_read:\'\n            cat /proc/self/fdinfo/${fd_read}\n            echo \'fd_write:\'\n            cat /proc/self/fdinfo/${fd_write}\n            echo\n        } >&${fd_stderr}\n    }"""\n${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf \'\\n\\\\rm -f "\'"${tmpDir}"\'"/.stdin.tmp.{<#>}\\n\'\n${subshellRunFlag} && printf \'\\n%s \' \')\' || printf \'\\n%s \' \'}\'\necho "${outStr}"\n${nOrderFlag} && echo "printf \'%s\\\\n\' \\"\\${nOrder}\\" >&${fd_nOrder0}"\n${nSpawnFlag} && echo "printf \'l%s\\\\nt%s\\\\n\' \\${#A[@]} \\${EPOCHREALTIME//./} >&${fd_nSpawn}"\necho """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})""")"
997.3.0:        ( 0.005004s |  0.00% |  0.00% )   ( 0.005730s |  0.00% |  0.00% )    	(1x)	│  │  │   << (SUBSHELL) >>
997.4.0:        ( 0.000234s |  0.00% |  4.67% )   ( 0.000253s |  0.00% |  4.41% )    	(1x)	│  │  │  ├─  $'echo """\nlocal p{<#>} p{<#>}_PID\n\n{ coproc p{<#>} {\nexport LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\\"${tmpDir}\\"\n\necho \\"\\${BASH_PID}\\" >\\"${tmpDir}\\"/.run/p{<#>}\n\ntrap \': >\\"${tmpDir}\\"/.quit; \n[[ -f \\"${tmpDir}\\"/.run/p{<#>} ]] && \\\\rm -f \\"${tmpDir}\\"/.run/p{<#>}; \nprintf \'\\"\'\\"\'\\n\'\\"\'\\"\' >&${fd_continue}\' EXIT\n\ntrap \'trap - TERM INT HUP USR1; kill -INT ${PID0} \\${BASHPID}\' INT\ntrap \'trap - TERM INT HUP USR1; kill -TERM ${PID0} \\${BASHPID}\' TERM\ntrap \'trap - TERM INT HUP USR1; kill -HUP ${PID0} \\${BASHPID}\' HUP\ntrap \'trap - TERM INT HUP USR1\' USR1\n\nwhile true; do"""
998.4.0:        ( 0.000070s |  0.00% |  1.39% )   ( 0.000081s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
998.4.1:        ( 0.000083s |  0.00% |  1.65% )   ( 0.000095s |  0.00% |  1.65% )    	(1x)	│  │  │  │   echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
1006.4.0:       ( 0.000218s |  0.00% |  4.35% )   ( 0.000231s |  0.00% |  4.03% )    	(1x)	│  │  │  │   $'echo """\n    echo 1 >\\"${tmpDir}\\"/.wait/p{<#>}\n    read -r -u ${fd_continue} _\n    [[ -f \\"${tmpDir}\\"/.quit ]] && {\n        printf \'\\n\' >&${fd_continue}\n        break\n    }\n    [[ -f \\"${tmpDir}\\"/.done ]] && doneIndicatorFlag=true"""
1007.4.0:       ( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${readBytesFlag}
1079.4.0:       ( 0.000063s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1082.4.0:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   echo "{"
1083.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000078s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${nOrderFlag}
1084.4.0:       ( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1084.4.1:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   echo "evfd_wait ${fd_nSpawn}"
1085.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   printf '%s ' "mapfile"
1086.4.0:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${lseekFlag}
1086.4.1:       ( 0.000069s |  0.00% |  1.37% )   ( 0.000080s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1087.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   printf '%s ' '-n' "\${nLinesCur}" '-u'
1088.4.0:       ( 0.000065s |  0.00% |  1.29% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1088.4.1:       ( 0.000069s |  0.00% |  1.37% )   ( 0.000081s |  0.00% |  1.41% )    	(1x)	│  │  │  │   printf '%s ' ${fd_read}
1089.4.0:       ( 0.000065s |  0.00% |  1.29% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1089.4.1:       ( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1089.4.2:       ( 0.000069s |  0.00% |  1.37% )   ( 0.000080s |  0.00% |  1.39% )    	(1x)	│  │  │  │   printf '%s ' '-t'
1091.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000082s |  0.00% |  1.43% )    	(1x)	│  │  │  │   $'echo """${delimiterReadStr} A\n    }"""
1092.4.0:       ( 0.000065s |  0.00% |  1.29% )   ( 0.000076s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1092.4.1:       ( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1092.4.2:       ( 0.000096s |  0.00% |  1.91% )   ( 0.000107s |  0.00% |  1.86% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1149.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000078s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1149.4.1:       ( 0.000066s |  0.00% |  1.31% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1149.4.2:       ( 0.000073s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.46% )    	(1x)	│  │  │  │   [[ -z ${nullDelimiterProg} ]]
1150.4.0:       ( 0.000072s |  0.00% |  1.43% )   ( 0.000083s |  0.00% |  1.44% )    	(1x)	│  │  │  │   ${nLinesReadLimitFlag}
1163.4.0:       ( 0.000087s |  0.00% |  1.73% )   ( 0.000098s |  0.00% |  1.71% )    	(1x)	│  │  │  │   $'echo """\n    printf \'\\\\n\' >&${fd_continue}\n    echo 0 >\\"${tmpDir}\\"/.wait/p{<#>}\n    [[ \\${#A[@]} == 0 ]] && {\n        \\${doneIndicatorFlag} || { \n          [[ -f \\"${tmpDir}\\"/.done ]] && {"""
1164.4.0:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${lseekPosFlag}
1167.4.0:       ( 0.000078s |  0.00% |  1.55% )   ( 0.000089s |  0.00% |  1.55% )    	(1x)	│  │  │  │   $'echo """\n            lseek $fd_read 0 SEEK_CUR fd_read_pos \n            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
1178.4.0:       ( 0.000078s |  0.00% |  1.55% )   ( 0.000089s |  0.00% |  1.55% )    	(1x)	│  │  │  │   $'echo """\n            [[ \\"\\${fd_read_pos}\\" == \\"\\${fd_write_pos}\\" ]] && doneIndicatorFlag=true\n          }\n        }\n        if \\${doneIndicatorFlag} || [[ -f \\"${tmpDir}\\"/.quit ]]; then"""
1179.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1179.4.1:       ( 0.000073s |  0.00% |  1.45% )   ( 0.000085s |  0.00% |  1.48% )    	(1x)	│  │  │  │   echo "printf 'x\\n' >&\${fd_nAuto0}"
1180.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000081s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nOrderFlag}
1181.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000081s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1186.4.0:       ( 0.000078s |  0.00% |  1.55% )   ( 0.000089s |  0.00% |  1.55% )    	(1x)	│  │  │  │   $'echo """\n            : >\\"${tmpDir}\\"/.quit\n            printf \'%.0s\\\\n\' \\"${tmpDir}\\"/.run/p* >&${fd_continue}\n            break"""
1187.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1191.4.0:       ( 0.000080s |  0.00% |  1.59% )   ( 0.000091s |  0.00% |  1.58% )    	(1x)	│  │  │  │   $'echo """fi\n        continue\n    }"""
1192.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nLinesAutoFlag}
1192.4.1:       ( 0.000075s |  0.00% |  1.49% )   ( 0.000087s |  0.00% |  1.51% )    	(1x)	│  │  │  │   $'printf \'%s\' """\n    { \\${nLinesAutoFlag} || \\${nSpawnFlag}; } && {\n        printf \'%s\\\\n\' \\${#A[@]} >&\\${fd_nAuto0}\n        (( \\${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false\n    }"""
1197.4.0:       ( 0.000069s |  0.00% |  1.37% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${fallocateFlag}
1197.4.1:       ( 0.000073s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.46% )    	(1x)	│  │  │  │   printf '%s' ' || '
1198.4.0:       ( 0.000065s |  0.00% |  1.29% )   ( 0.000076s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${fallocateFlag}
1198.4.1:       ( 0.000082s |  0.00% |  1.63% )   ( 0.000093s |  0.00% |  1.62% )    	(1x)	│  │  │  │   echo "printf '\\n' >&\${fd_nAuto0}"
1199.4.0:       ( 0.000064s |  0.00% |  1.27% )   ( 0.000076s |  0.00% |  1.32% )    	(1x)	│  │  │  │   ${pipeReadFlag}
1199.4.1:       ( 0.000071s |  0.00% |  1.41% )   ( 0.000082s |  0.00% |  1.43% )    	(1x)	│  │  │  │   ${nullDelimiterFlag}
1207.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1207.4.1:       ( 0.000073s |  0.00% |  1.45% )   ( 0.000084s |  0.00% |  1.46% )    	(1x)	│  │  │  │   echo '{'
1208.4.0:       ( 0.000065s |  0.00% |  1.29% )   ( 0.000077s |  0.00% |  1.34% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1208.4.1:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${nOrderFlag}
1209.4.0:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.37% )    	(1x)	│  │  │  │   ${exportOrderFlag}
1210.4.0:       ( 0.000121s |  0.00% |  2.41% )   ( 0.000129s |  0.00% |  2.25% )    	(1x)	│  │  │  │   printf '%s ' "${runCmd[@]}"
1211.4.0:       ( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${readBytesFlag}
1218.4.0:       ( 0.000062s |  0.00% |  1.23% )   ( 0.000073s |  0.00% |  1.27% )    	(1x)	│  │  │  │   ${stdinRunFlag}
1221.4.0:       ( 0.000064s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${noFuncFlag}
1224.4.0:       ( 0.000064s |  0.00% |  1.27% )   ( 0.000075s |  0.00% |  1.30% )    	(1x)	│  │  │  │   ${substituteStringFlag}
1225.4.0:       ( 0.000125s |  0.00% |  2.49% )   ( 0.000136s |  0.00% |  2.37% )    	(1x)	│  │  │  │   printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
1230.4.0:       ( 0.000070s |  0.00% |  1.39% )   ( 0.000082s |  0.00% |  1.43% )    	(1x)	│  │  │  │   (( ${verboseLevel} > 2 ))
1242.4.0:       ( 0.000067s |  0.00% |  1.33% )   ( 0.000078s |  0.00% |  1.36% )    	(1x)	│  │  │  │   ${readBytesFlag}
1243.4.0:       ( 0.000063s |  0.00% |  1.25% )   ( 0.000074s |  0.00% |  1.29% )    	(1x)	│  │  │  │   ${subshellRunFlag}
1243.4.1:       ( 0.000086s |  0.00% |  1.71% )   ( 0.000096s |  0.00% |  1.67% )    	(1x)	│  │  │  │   printf '\n%s ' '}'
1244.4.0:       ( 0.000071s |  0.00% |  1.41% )   ( 0.000083s |  0.00% |  1.44% )    	(1x)	│  │  │  │   echo "${outStr}"
1245.4.0:       ( 0.000068s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.39% )    	(1x)	│  │  │  │   ${nOrderFlag}
1246.4.0:       ( 0.000069s |  0.00% |  1.37% )   ( 0.000081s |  0.00% |  1.41% )    	(1x)	│  │  │  │   ${nSpawnFlag}
1251.4.0:       ( 0.000100s |  0.00% |  1.99% )   ( 0.000112s |  0.00% |  1.95% )    	(1x)	│  │  │  └─  $'echo """\ndone\n} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}\n} 2>/dev/null\np_PID+=(\\${p{<#>}_PID})"""
981.3.0:        ( 0.000291s |  0.00% |  0.00% )   ( 0.000331s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
986.3.0:        ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'kill $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null;\n        kill -9 \'"${exitTrapStr_kill}"\' 2>/dev/null; \n        kill -9 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) 2>/dev/null; \'\'\n\'
988.3.0:        ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │   $'exitTrapStr+=\'trap - INT TERM HUP USR1; \n        return ${returnVal:-0}\'
989.3.0:        ( 0.023878s |  0.00% |  0.00% )   ( 0.023829s |  0.00% |  0.00% )    	(1x)	│  │  │   trap "${exitTrapStr}" EXIT
993.3.0:        ( 0.023713s |  0.00% |  0.00% )   ( 0.023667s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -INT $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" INT
997.3.0:        ( 0.024009s |  0.00% |  0.00% )   ( 0.171710s |  0.00% |  0.01% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -TERM $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" TERM
1001.3.0:       ( 0.023688s |  0.00% |  0.00% )   ( 0.023631s |  0.00% |  0.00% )    	(1x)	│  │  │   $'trap \'trap - TERM INT HUP USR1; \n        returnVal=1; \n        kill -USR1 $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null); \n        kill -HUP $(cat </dev/null "\'"${tmpDir}"\'"/.run/p* 2>/dev/null) \'"${PID0}" HUP
1002.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1003.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1007.3.0:       ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1011.3.0:       ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │   printf '\n' >&${fd_continue}
1012.3.0:       ( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1013.3.0:       ( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │   ((kkProcs=0 ))
1013.3.1:       ( 0.002994s |  0.00% |  0.00% )   ( 0.003424s |  0.00% |  0.00% )    	(29x)	│  │  │   ((kkProcs<28 ))
1015.3.0:       ( 0.002807s |  0.00% |  0.00% )   ( 0.003233s |  0.00% |  0.00% )    	(28x)	│  │  │   [[ -f "${tmpDir}"/.quit ]]
1016.3.0:       ( 17.598673s |  1.60% |  3.21% )   ( 33.861295s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p0 p0_PID >>
1.4.0:          ( 0.000568s |  0.00% |  0.00% )   ( 0.000588s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p0 p0_PID (&)
24.4.0:         ( 17.598016s |  1.60% | 99.99% )   ( 16.930304s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p0
30.5.0:         ( 0.023118s |  0.00% |  0.13% )   ( 0.023079s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p0 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p0; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023519s |  0.00% |  0.13% )   ( 0.023478s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.023870s |  0.00% |  0.13% )   ( 0.023828s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.023961s |  0.00% |  0.13% )   ( 0.023919s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023973s |  0.00% |  0.13% )   ( 0.023933s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004940s |  0.00% |  0.00% )   ( 0.005544s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004446s |  0.00% |  0.00% )   ( 0.005033s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000177s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005352s |  0.00% |  0.00% )   ( 0.005948s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p0
41.5.0:         ( 0.094598s |  0.00% |  0.01% )   ( 0.005950s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004614s |  0.00% |  0.00% )   ( 0.005202s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004872s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004012s |  0.00% |  0.00% )   ( 0.004541s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004780s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035052s |  0.00% |  0.00% )   ( 0.034497s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007463s |  0.00% |  0.00% )   ( 0.005052s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005187s |  0.00% |  0.00% )   ( 0.005767s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p0
54.5.0:         ( 0.004146s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003920s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 17.274882s |  1.57% |  3.38% )   ( 16.691356s |  0.83% |  3.39% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004142s |  0.00% |  0.02% )   ( 0.004728s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.197180s |  0.10% |  6.93% )   ( 1.105191s |  0.05% |  6.62% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.921753s |  0.17% | 11.12% )   ( 1.868985s |  0.09% | 11.19% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.692004s |  0.15% |  9.79% )   ( 1.601651s |  0.08% |  9.59% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.947211s |  0.17% | 11.27% )   ( 1.871879s |  0.09% | 11.21% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.566952s |  0.14% |  9.07% )   ( 1.545302s |  0.07% |  9.25% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.063321s |  0.09% |  6.15% )   ( 1.024991s |  0.05% |  6.14% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.581202s |  0.05% |  3.36% )   ( 0.563103s |  0.02% |  3.37% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.091624s |  0.09% |  6.31% )   ( 1.065806s |  0.05% |  6.38% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.519478s |  0.04% |  3.00% )   ( 0.499941s |  0.02% |  2.99% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.461160s |  0.13% |  8.45% )   ( 1.409885s |  0.07% |  8.44% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.060983s |  0.27% | 17.71% )   ( 3.015029s |  0.15% | 18.06% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.574660s |  0.05% |  3.32% )   ( 0.563389s |  0.02% |  3.37% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.593212s |  0.05% |  3.43% )   ( 0.551476s |  0.02% |  3.30% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004333s |  0.00% |  0.00% )   ( 0.004879s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003941s |  0.00% |  0.00% )   ( 0.004478s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004216s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008601s |  0.00% |  0.04% )   ( 0.008684s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p0\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000089s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p0_PID})
1013.3.0:       ( 0.002825s |  0.00% |  0.00% )   ( 0.003262s |  0.00% |  0.00% )    	(28x)	│  │  │   ((kkProcs++ ))
1016.3.0:       ( 18.461220s |  1.68% |  3.37% )   ( 35.932116s |  1.79% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p1 p1_PID >>
1.4.0:          ( 0.000575s |  0.00% |  0.00% )   ( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p1 p1_PID (&)
24.4.0:         ( 18.460563s |  1.68% | 99.99% )   ( 17.965713s |  0.89% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000333s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000363s |  0.00% |  0.00% )   ( 0.000401s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p1
30.5.0:         ( 0.023407s |  0.00% |  0.12% )   ( 0.023368s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p1 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p1; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023788s |  0.00% |  0.12% )   ( 0.023745s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.023968s |  0.00% |  0.12% )   ( 0.023923s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024020s |  0.00% |  0.13% )   ( 0.023982s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023924s |  0.00% |  0.12% )   ( 0.023880s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004090s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003607s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000179s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000187s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004521s |  0.00% |  0.00% )   ( 0.005027s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p1
41.5.0:         ( 0.098113s |  0.00% |  0.02% )   ( 0.005255s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004459s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003774s |  0.00% |  0.00% )   ( 0.004246s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003538s |  0.00% |  0.00% )   ( 0.004023s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003794s |  0.00% |  0.00% )   ( 0.004271s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028551s |  0.00% |  0.00% )   ( 0.028970s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006886s |  0.00% |  0.00% )   ( 0.004373s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004449s |  0.00% |  0.00% )   ( 0.004951s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p1
54.5.0:         ( 0.003577s |  0.00% |  0.00% )   ( 0.004059s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003556s |  0.00% |  0.00% )   ( 0.004039s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 18.142284s |  1.65% |  3.93% )   ( 17.745350s |  0.88% |  3.95% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003674s |  0.00% |  0.02% )   ( 0.004170s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.225013s |  0.11% |  6.75% )   ( 1.173701s |  0.05% |  6.61% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.171431s |  0.19% | 11.96% )   ( 2.122697s |  0.10% | 11.96% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.697957s |  0.15% |  9.35% )   ( 1.688692s |  0.08% |  9.51% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.137161s |  0.19% | 11.77% )   ( 2.077211s |  0.10% | 11.70% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.652784s |  0.15% |  9.11% )   ( 1.643073s |  0.08% |  9.25% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.101466s |  0.10% |  6.07% )   ( 1.071980s |  0.05% |  6.04% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.517574s |  0.04% |  2.85% )   ( 0.505383s |  0.02% |  2.84% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.135768s |  0.10% |  6.26% )   ( 1.118256s |  0.05% |  6.30% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.465757s |  0.04% |  2.56% )   ( 0.442642s |  0.02% |  2.49% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.474219s |  0.13% |  8.12% )   ( 1.444145s |  0.07% |  8.13% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.499392s |  0.31% | 19.28% )   ( 3.470931s |  0.17% | 19.55% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.551141s |  0.05% |  3.03% )   ( 0.497880s |  0.02% |  2.80% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.508947s |  0.04% |  2.80% )   ( 0.484589s |  0.02% |  2.73% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.003433s |  0.00% |  0.00% )   ( 0.003882s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003396s |  0.00% |  0.00% )   ( 0.003854s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.013092s |  0.00% |  0.00% )   ( 0.004257s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005113s |  0.00% |  0.02% )   ( 0.005180s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p1\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p1_PID})
1016.3.0:       ( 20.993262s |  1.91% |  3.83% )   ( 40.445984s |  2.02% |  4.04% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p2 p2_PID >>
1.4.0:          ( 0.000576s |  0.00% |  0.00% )   ( 0.000590s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p2 p2_PID (&)
24.4.0:         ( 20.992600s |  1.91% | 99.99% )   ( 20.222647s |  1.01% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p2
30.5.0:         ( 0.023550s |  0.00% |  0.11% )   ( 0.023501s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p2 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p2; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023940s |  0.00% |  0.11% )   ( 0.023884s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.023999s |  0.00% |  0.11% )   ( 0.023941s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.023951s |  0.00% |  0.11% )   ( 0.023908s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023793s |  0.00% |  0.11% )   ( 0.023748s |  0.00% |  0.11% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004764s |  0.00% |  0.00% )   ( 0.005330s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004160s |  0.00% |  0.00% )   ( 0.004721s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000178s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005219s |  0.00% |  0.00% )   ( 0.005795s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p2
41.5.0:         ( 0.140427s |  0.01% |  0.02% )   ( 0.006247s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004443s |  0.00% |  0.00% )   ( 0.005024s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004745s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004014s |  0.00% |  0.00% )   ( 0.004564s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004258s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034037s |  0.00% |  0.00% )   ( 0.034443s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007827s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005173s |  0.00% |  0.00% )   ( 0.005768s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p2
54.5.0:         ( 0.004120s |  0.00% |  0.00% )   ( 0.004693s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003995s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000252s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000225s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
79.5.0:         ( 20.626305s |  1.88% |  3.38% )   ( 19.985250s |  1.00% |  3.40% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004184s |  0.00% |  0.02% )   ( 0.004753s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.477056s |  0.13% |  7.16% )   ( 1.446529s |  0.07% |  7.23% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.414922s |  0.22% | 11.70% )   ( 2.361601s |  0.11% | 11.81% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.934858s |  0.17% |  9.38% )   ( 1.852855s |  0.09% |  9.27% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.312068s |  0.21% | 11.20% )   ( 2.267944s |  0.11% | 11.34% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.825668s |  0.16% |  8.85% )   ( 1.801012s |  0.09% |  9.01% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.331638s |  0.12% |  6.45% )   ( 1.272483s |  0.06% |  6.36% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.684019s |  0.06% |  3.31% )   ( 0.594016s |  0.02% |  2.97% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.374063s |  0.12% |  6.66% )   ( 1.332364s |  0.06% |  6.66% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.554852s |  0.05% |  2.69% )   ( 0.532792s |  0.02% |  2.66% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.678634s |  0.15% |  8.13% )   ( 1.635780s |  0.08% |  8.18% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.842932s |  0.35% | 18.63% )   ( 3.736929s |  0.18% | 18.69% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.600362s |  0.05% |  2.91% )   ( 0.581399s |  0.02% |  2.90% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.591049s |  0.05% |  2.86% )   ( 0.564793s |  0.02% |  2.82% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
38.5.1:         ( 0.004128s |  0.00% |  0.00% )   ( 0.004681s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004442s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004302s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006748s |  0.00% |  0.03% )   ( 0.006773s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p2\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p2_PID})
1016.3.0:       ( 18.513593s |  1.68% |  3.38% )   ( 35.931973s |  1.79% |  3.59% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p3 p3_PID >>
1.4.0:          ( 0.000578s |  0.00% |  0.00% )   ( 0.000591s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p3 p3_PID (&)
24.4.0:         ( 18.512930s |  1.68% | 99.99% )   ( 17.965642s |  0.89% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000329s |  0.00% |  0.00% )   ( 0.000375s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000351s |  0.00% |  0.00% )   ( 0.000395s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p3
30.5.0:         ( 0.023940s |  0.00% |  0.12% )   ( 0.023853s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p3 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p3; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024147s |  0.00% |  0.13% )   ( 0.024012s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024020s |  0.00% |  0.12% )   ( 0.023930s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024050s |  0.00% |  0.12% )   ( 0.023917s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023907s |  0.00% |  0.12% )   ( 0.023812s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002768s |  0.00% |  0.00% )   ( 0.003112s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002478s |  0.00% |  0.00% )   ( 0.002817s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003114s |  0.00% |  0.00% )   ( 0.003487s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p3
41.5.0:         ( 0.069139s |  0.00% |  0.02% )   ( 0.003573s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002772s |  0.00% |  0.00% )   ( 0.003090s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.002401s |  0.00% |  0.00% )   ( 0.002717s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002185s |  0.00% |  0.00% )   ( 0.002463s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002396s |  0.00% |  0.00% )   ( 0.002716s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.015978s |  0.00% |  0.00% )   ( 0.016236s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002555s |  0.00% |  0.00% )   ( 0.002734s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002673s |  0.00% |  0.00% )   ( 0.002988s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p3
54.5.0:         ( 0.002263s |  0.00% |  0.00% )   ( 0.002584s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002092s |  0.00% |  0.00% )   ( 0.002390s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.265157s |  1.66% |  6.16% )   ( 17.779117s |  0.89% |  6.18% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002210s |  0.00% |  0.01% )   ( 0.002512s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.179478s |  0.10% |  6.45% )   ( 1.115166s |  0.05% |  6.27% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.173419s |  0.19% | 11.89% )   ( 2.142149s |  0.10% | 12.04% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.760608s |  0.16% |  9.63% )   ( 1.707150s |  0.08% |  9.60% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.322257s |  0.21% | 12.71% )   ( 2.238719s |  0.11% | 12.59% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.732631s |  0.15% |  9.48% )   ( 1.710389s |  0.08% |  9.62% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.095820s |  0.09% |  5.99% )   ( 1.055926s |  0.05% |  5.93% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.412589s |  0.03% |  2.25% )   ( 0.404004s |  0.02% |  2.27% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.184407s |  0.10% |  6.48% )   ( 1.141914s |  0.05% |  6.42% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.347551s |  0.03% |  1.90% )   ( 0.327634s |  0.01% |  1.84% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.431093s |  0.13% |  7.83% )   ( 1.411874s |  0.07% |  7.94% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.870612s |  0.35% | 21.19% )   ( 3.801387s |  0.19% | 21.38% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.397981s |  0.03% |  2.17% )   ( 0.378906s |  0.01% |  2.13% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.354501s |  0.03% |  1.94% )   ( 0.341387s |  0.01% |  1.92% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002442s |  0.00% |  0.00% )   ( 0.002767s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002107s |  0.00% |  0.00% )   ( 0.002393s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002384s |  0.00% |  0.00% )   ( 0.002679s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006554s |  0.00% |  0.03% )   ( 0.006649s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p3\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p3_PID})
1016.3.0:       ( 17.491696s |  1.59% |  3.19% )   ( 33.237569s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p4 p4_PID >>
1.4.0:          ( 0.000596s |  0.00% |  0.00% )   ( 0.000613s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p4 p4_PID (&)
24.4.0:         ( 17.491016s |  1.59% | 99.99% )   ( 16.618429s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p4
30.5.0:         ( 0.023880s |  0.00% |  0.13% )   ( 0.023835s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p4 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p4; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024121s |  0.00% |  0.13% )   ( 0.024075s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.023993s |  0.00% |  0.13% )   ( 0.023949s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.023985s |  0.00% |  0.13% )   ( 0.023944s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023999s |  0.00% |  0.13% )   ( 0.023940s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004708s |  0.00% |  0.00% )   ( 0.005238s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004072s |  0.00% |  0.00% )   ( 0.004616s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005111s |  0.00% |  0.00% )   ( 0.005670s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p4
41.5.0:         ( 0.191965s |  0.01% |  0.03% )   ( 0.006292s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004407s |  0.00% |  0.00% )   ( 0.004936s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003965s |  0.00% |  0.00% )   ( 0.004477s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003793s |  0.00% |  0.00% )   ( 0.004309s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004135s |  0.00% |  0.00% )   ( 0.004649s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.034511s |  0.00% |  0.00% )   ( 0.031947s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007275s |  0.00% |  0.00% )   ( 0.004776s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004835s |  0.00% |  0.00% )   ( 0.005370s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p4
54.5.0:         ( 0.003906s |  0.00% |  0.00% )   ( 0.004429s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003816s |  0.00% |  0.00% )   ( 0.004349s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.070574s |  1.55% |  3.61% )   ( 16.383757s |  0.82% |  3.65% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003985s |  0.00% |  0.02% )   ( 0.004546s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.179050s |  0.10% |  6.90% )   ( 1.084298s |  0.05% |  6.61% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.907081s |  0.17% | 11.17% )   ( 1.827752s |  0.09% | 11.15% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.600561s |  0.14% |  9.37% )   ( 1.556232s |  0.07% |  9.49% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.942260s |  0.17% | 11.37% )   ( 1.861937s |  0.09% | 11.36% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.595166s |  0.14% |  9.34% )   ( 1.537340s |  0.07% |  9.38% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.025136s |  0.09% |  6.00% )   ( 1.004014s |  0.05% |  6.12% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539641s |  0.04% |  3.16% )   ( 0.533527s |  0.02% |  3.25% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.120440s |  0.10% |  6.56% )   ( 1.036288s |  0.05% |  6.32% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.511183s |  0.04% |  2.99% )   ( 0.483273s |  0.02% |  2.94% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.452986s |  0.13% |  8.51% )   ( 1.380308s |  0.06% |  8.42% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.059385s |  0.27% | 17.92% )   ( 3.013031s |  0.15% | 18.39% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.578089s |  0.05% |  3.38% )   ( 0.536595s |  0.02% |  3.27% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.555611s |  0.05% |  3.25% )   ( 0.524616s |  0.02% |  3.20% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003924s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006271s |  0.00% |  0.00% )   ( 0.004903s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008760s |  0.00% |  0.05% )   ( 0.008824s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p4\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p4_PID})
1016.3.0:       ( 17.448116s |  1.59% |  3.18% )   ( 33.192287s |  1.66% |  3.32% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p5 p5_PID >>
1.4.0:          ( 0.000629s |  0.00% |  0.00% )   ( 0.000650s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p5 p5_PID (&)
24.4.0:         ( 17.447402s |  1.59% | 99.99% )   ( 16.595769s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000217s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000223s |  0.00% |  0.00% )   ( 0.000254s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p5
30.5.0:         ( 0.025509s |  0.00% |  0.14% )   ( 0.025466s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p5 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p5; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024001s |  0.00% |  0.13% )   ( 0.023961s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.023981s |  0.00% |  0.13% )   ( 0.023937s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.023932s |  0.00% |  0.13% )   ( 0.023886s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024020s |  0.00% |  0.13% )   ( 0.023976s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004959s |  0.00% |  0.00% )   ( 0.005544s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004602s |  0.00% |  0.00% )   ( 0.005058s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005244s |  0.00% |  0.00% )   ( 0.005822s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p5
41.5.0:         ( 0.113468s |  0.01% |  0.02% )   ( 0.006224s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004283s |  0.00% |  0.00% )   ( 0.004865s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003930s |  0.00% |  0.00% )   ( 0.004464s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004324s |  0.00% |  0.00% )   ( 0.004862s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033441s |  0.00% |  0.00% )   ( 0.033917s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004679s |  0.00% |  0.00% )   ( 0.005261s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.006843s |  0.00% |  0.00% )   ( 0.005763s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p5
54.5.0:         ( 0.004202s |  0.00% |  0.00% )   ( 0.004756s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004141s |  0.00% |  0.00% )   ( 0.004725s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.107291s |  1.55% |  3.50% )   ( 16.357035s |  0.81% |  3.52% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004120s |  0.00% |  0.02% )   ( 0.004694s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.197204s |  0.10% |  6.99% )   ( 1.096444s |  0.05% |  6.70% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.887348s |  0.17% | 11.03% )   ( 1.846913s |  0.09% | 11.29% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.608340s |  0.14% |  9.40% )   ( 1.578265s |  0.07% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.916332s |  0.17% | 11.20% )   ( 1.826814s |  0.09% | 11.16% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.542043s |  0.14% |  9.01% )   ( 1.517142s |  0.07% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.097146s |  0.10% |  6.41% )   ( 0.997723s |  0.04% |  6.09% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.590760s |  0.05% |  3.45% )   ( 0.556954s |  0.02% |  3.40% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.080413s |  0.09% |  6.31% )   ( 1.026693s |  0.05% |  6.27% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.520845s |  0.04% |  3.04% )   ( 0.498288s |  0.02% |  3.04% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.405711s |  0.12% |  8.21% )   ( 1.371736s |  0.06% |  8.38% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.041586s |  0.27% | 17.77% )   ( 2.937106s |  0.14% | 17.95% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.607297s |  0.05% |  3.54% )   ( 0.552787s |  0.02% |  3.37% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.608146s |  0.05% |  3.55% )   ( 0.545476s |  0.02% |  3.33% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004276s |  0.00% |  0.00% )   ( 0.004847s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003956s |  0.00% |  0.00% )   ( 0.004484s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.005283s |  0.00% |  0.00% )   ( 0.005034s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005245s |  0.00% |  0.03% )   ( 0.005347s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p5\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000085s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p5_PID})
1016.3.0:       ( 17.672550s |  1.61% |  3.22% )   ( 33.726378s |  1.68% |  3.37% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p6 p6_PID >>
1.4.0:          ( 0.000630s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p6 p6_PID (&)
24.4.0:         ( 17.671833s |  1.61% | 99.99% )   ( 16.862815s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p6
30.5.0:         ( 0.024071s |  0.00% |  0.13% )   ( 0.024026s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p6 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p6; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024008s |  0.00% |  0.13% )   ( 0.023968s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024019s |  0.00% |  0.13% )   ( 0.023972s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.023998s |  0.00% |  0.13% )   ( 0.023953s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024011s |  0.00% |  0.13% )   ( 0.023962s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004243s |  0.00% |  0.00% )   ( 0.004733s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003929s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004743s |  0.00% |  0.00% )   ( 0.005273s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p6
41.5.0:         ( 0.179300s |  0.01% |  0.03% )   ( 0.006081s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004353s |  0.00% |  0.00% )   ( 0.004876s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003918s |  0.00% |  0.00% )   ( 0.004398s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003584s |  0.00% |  0.00% )   ( 0.004065s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003779s |  0.00% |  0.00% )   ( 0.004241s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.032741s |  0.00% |  0.00% )   ( 0.030115s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004050s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004459s |  0.00% |  0.00% )   ( 0.004944s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p6
54.5.0:         ( 0.003616s |  0.00% |  0.00% )   ( 0.004116s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003570s |  0.00% |  0.00% )   ( 0.004067s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.273815s |  1.57% |  3.90% )   ( 16.633710s |  0.83% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003677s |  0.00% |  0.02% )   ( 0.004175s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.143206s |  0.10% |  6.61% )   ( 1.095648s |  0.05% |  6.58% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.991183s |  0.18% | 11.52% )   ( 1.905589s |  0.09% | 11.45% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.729355s |  0.15% | 10.01% )   ( 1.593947s |  0.07% |  9.58% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.938875s |  0.17% | 11.22% )   ( 1.909460s |  0.09% | 11.47% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.593355s |  0.14% |  9.22% )   ( 1.538204s |  0.07% |  9.24% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.013397s |  0.09% |  5.86% )   ( 0.986830s |  0.04% |  5.93% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.539464s |  0.04% |  3.12% )   ( 0.509917s |  0.02% |  3.06% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.110797s |  0.10% |  6.43% )   ( 1.068590s |  0.05% |  6.42% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.507044s |  0.04% |  2.93% )   ( 0.454227s |  0.02% |  2.73% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.450889s |  0.13% |  8.39% )   ( 1.411162s |  0.07% |  8.48% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.175136s |  0.28% | 18.38% )   ( 3.145612s |  0.15% | 18.91% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.559564s |  0.05% |  3.23% )   ( 0.516338s |  0.02% |  3.10% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.517873s |  0.04% |  2.99% )   ( 0.494011s |  0.02% |  2.96% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003996s |  0.00% |  0.00% )   ( 0.004538s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003506s |  0.00% |  0.00% )   ( 0.003985s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004057s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009124s |  0.00% |  0.05% )   ( 0.009205s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p6\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p6_PID})
1016.3.0:       ( 20.116666s |  1.83% |  3.67% )   ( 38.871295s |  1.94% |  3.89% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p7 p7_PID >>
1.4.0:          ( 0.000650s |  0.00% |  0.00% )   ( 0.000671s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p7 p7_PID (&)
24.4.0:         ( 20.115928s |  1.83% | 99.99% )   ( 19.435261s |  0.97% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000336s |  0.00% |  0.00% )   ( 0.000381s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000365s |  0.00% |  0.00% )   ( 0.000404s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p7
30.5.0:         ( 0.024226s |  0.00% |  0.12% )   ( 0.024183s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p7 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p7; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024080s |  0.00% |  0.11% )   ( 0.024036s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024104s |  0.00% |  0.11% )   ( 0.024049s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024060s |  0.00% |  0.11% )   ( 0.024008s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024213s |  0.00% |  0.12% )   ( 0.024155s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003973s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003574s |  0.00% |  0.00% )   ( 0.004048s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000087s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004340s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p7
41.5.0:         ( 0.156135s |  0.01% |  0.03% )   ( 0.005286s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003619s |  0.00% |  0.00% )   ( 0.004077s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003641s |  0.00% |  0.00% )   ( 0.004098s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003373s |  0.00% |  0.00% )   ( 0.003823s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003473s |  0.00% |  0.00% )   ( 0.003917s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027596s |  0.00% |  0.00% )   ( 0.027920s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006604s |  0.00% |  0.00% )   ( 0.003929s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004109s |  0.00% |  0.00% )   ( 0.004553s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p7
54.5.0:         ( 0.003210s |  0.00% |  0.00% )   ( 0.003654s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.747211s |  1.79% |  4.26% )   ( 19.213888s |  0.96% |  4.29% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003299s |  0.00% |  0.01% )   ( 0.003735s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.393301s |  0.12% |  7.05% )   ( 1.337160s |  0.06% |  6.95% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.644493s |  0.24% | 13.39% )   ( 2.549526s |  0.12% | 13.26% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.089371s |  0.19% | 10.58% )   ( 1.986298s |  0.09% | 10.33% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.575731s |  0.23% | 13.04% )   ( 2.518271s |  0.12% | 13.10% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.972889s |  0.17% |  9.99% )   ( 1.947184s |  0.09% | 10.13% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.259532s |  0.11% |  6.37% )   ( 1.244009s |  0.06% |  6.47% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541855s |  0.04% |  2.74% )   ( 0.519177s |  0.02% |  2.70% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.294755s |  0.11% |  6.55% )   ( 1.253185s |  0.06% |  6.52% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.439769s |  0.04% |  2.22% )   ( 0.428353s |  0.02% |  2.22% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.380294s |  0.12% |  6.98% )   ( 1.360380s |  0.06% |  7.08% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.149675s |  0.28% | 15.94% )   ( 3.101239s |  0.15% | 16.14% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.518444s |  0.04% |  2.62% )   ( 0.496774s |  0.02% |  2.58% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.483803s |  0.04% |  2.44% )   ( 0.468597s |  0.02% |  2.43% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003576s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003172s |  0.00% |  0.00% )   ( 0.003618s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003363s |  0.00% |  0.00% )   ( 0.003783s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009626s |  0.00% |  0.04% )   ( 0.009625s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p7\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000088s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p7_PID})
1016.3.0:       ( 19.774527s |  1.80% |  3.61% )   ( 38.592592s |  1.93% |  3.86% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p8 p8_PID >>
1.4.0:          ( 0.000641s |  0.00% |  0.00% )   ( 0.000658s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p8 p8_PID (&)
24.4.0:         ( 19.773800s |  1.80% | 99.99% )   ( 19.295916s |  0.96% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p8
30.5.0:         ( 0.024077s |  0.00% |  0.12% )   ( 0.024027s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p8 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p8; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024012s |  0.00% |  0.12% )   ( 0.023959s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024077s |  0.00% |  0.12% )   ( 0.024018s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024012s |  0.00% |  0.12% )   ( 0.023967s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024053s |  0.00% |  0.12% )   ( 0.023978s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002666s |  0.00% |  0.00% )   ( 0.002990s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002364s |  0.00% |  0.00% )   ( 0.002653s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003142s |  0.00% |  0.00% )   ( 0.003509s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p8
41.5.0:         ( 0.109463s |  0.00% |  0.03% )   ( 0.003886s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002628s |  0.00% |  0.00% )   ( 0.002960s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.002506s |  0.00% |  0.00% )   ( 0.002822s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002298s |  0.00% |  0.00% )   ( 0.002636s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002323s |  0.00% |  0.00% )   ( 0.002623s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019682s |  0.00% |  0.00% )   ( 0.019947s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002509s |  0.00% |  0.00% )   ( 0.002822s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002725s |  0.00% |  0.00% )   ( 0.003045s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p8
54.5.0:         ( 0.002180s |  0.00% |  0.00% )   ( 0.002484s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002164s |  0.00% |  0.00% )   ( 0.002469s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.484197s |  1.77% |  6.15% )   ( 19.107291s |  0.95% |  6.18% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002289s |  0.00% |  0.01% )   ( 0.002589s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.347614s |  0.12% |  6.91% )   ( 1.307882s |  0.06% |  6.84% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.550009s |  0.23% | 13.08% )   ( 2.534120s |  0.12% | 13.26% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.948170s |  0.17% |  9.99% )   ( 1.924967s |  0.09% | 10.07% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.505453s |  0.22% | 12.85% )   ( 2.480393s |  0.12% | 12.98% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.899943s |  0.17% |  9.75% )   ( 1.841064s |  0.09% |  9.63% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.202015s |  0.10% |  6.16% )   ( 1.145904s |  0.05% |  5.99% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.443927s |  0.04% |  2.27% )   ( 0.418937s |  0.02% |  2.19% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.302965s |  0.11% |  6.68% )   ( 1.286323s |  0.06% |  6.73% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.362276s |  0.03% |  1.85% )   ( 0.355025s |  0.01% |  1.85% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.604640s |  0.14% |  8.23% )   ( 1.587795s |  0.07% |  8.30% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.566847s |  0.32% | 18.30% )   ( 3.487336s |  0.17% | 18.25% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.382844s |  0.03% |  1.96% )   ( 0.378523s |  0.01% |  1.98% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.365205s |  0.03% |  1.87% )   ( 0.356433s |  0.01% |  1.86% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002332s |  0.00% |  0.00% )   ( 0.002648s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002176s |  0.00% |  0.00% )   ( 0.002479s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002404s |  0.00% |  0.00% )   ( 0.002713s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005017s |  0.00% |  0.02% )   ( 0.005089s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p8\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000086s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p8_PID})
1016.3.0:       ( 17.992595s |  1.64% |  3.28% )   ( 34.441300s |  1.72% |  3.44% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p9 p9_PID >>
1.4.0:          ( 0.000645s |  0.00% |  0.00% )   ( 0.000666s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p9 p9_PID (&)
24.4.0:         ( 17.991860s |  1.63% | 99.99% )   ( 17.220265s |  0.86% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000305s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000321s |  0.00% |  0.00% )   ( 0.000361s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p9
30.5.0:         ( 0.024052s |  0.00% |  0.13% )   ( 0.024007s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p9 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p9; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.023940s |  0.00% |  0.13% )   ( 0.023897s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024044s |  0.00% |  0.13% )   ( 0.023995s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024033s |  0.00% |  0.13% )   ( 0.023984s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024047s |  0.00% |  0.13% )   ( 0.024000s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004277s |  0.00% |  0.00% )   ( 0.004785s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.003834s |  0.00% |  0.00% )   ( 0.004329s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004582s |  0.00% |  0.00% )   ( 0.005093s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p9
41.5.0:         ( 0.158201s |  0.01% |  0.03% )   ( 0.005849s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004306s |  0.00% |  0.00% )   ( 0.004840s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004003s |  0.00% |  0.00% )   ( 0.004526s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003748s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004017s |  0.00% |  0.00% )   ( 0.004533s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035125s |  0.00% |  0.00% )   ( 0.030516s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004136s |  0.00% |  0.00% )   ( 0.004652s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004571s |  0.00% |  0.00% )   ( 0.004994s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p9
54.5.0:         ( 0.003632s |  0.00% |  0.00% )   ( 0.004106s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003448s |  0.00% |  0.00% )   ( 0.003914s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.616354s |  1.60% |  3.91% )   ( 16.994842s |  0.85% |  3.94% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003622s |  0.00% |  0.02% )   ( 0.004110s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.127571s |  0.10% |  6.40% )   ( 1.119389s |  0.05% |  6.58% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.056208s |  0.18% | 11.67% )   ( 1.989041s |  0.09% | 11.70% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.689786s |  0.15% |  9.59% )   ( 1.642302s |  0.08% |  9.66% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.050681s |  0.18% | 11.64% )   ( 1.988007s |  0.09% | 11.69% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.565097s |  0.14% |  8.88% )   ( 1.541244s |  0.07% |  9.06% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049380s |  0.09% |  5.95% )   ( 1.007870s |  0.05% |  5.93% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.528108s |  0.04% |  2.99% )   ( 0.514237s |  0.02% |  3.02% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.107151s |  0.10% |  6.28% )   ( 1.075281s |  0.05% |  6.32% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.509566s |  0.04% |  2.89% )   ( 0.451083s |  0.02% |  2.65% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.483783s |  0.13% |  8.42% )   ( 1.393518s |  0.06% |  8.19% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.359174s |  0.30% | 19.06% )   ( 3.258900s |  0.16% | 19.17% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.552293s |  0.05% |  3.13% )   ( 0.512762s |  0.02% |  3.01% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.533934s |  0.04% |  3.03% )   ( 0.497098s |  0.02% |  2.92% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003851s |  0.00% |  0.00% )   ( 0.004342s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003521s |  0.00% |  0.00% )   ( 0.003988s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003809s |  0.00% |  0.00% )   ( 0.004272s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005124s |  0.00% |  0.02% )   ( 0.005192s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p9\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p9_PID})
1016.3.0:       ( 17.445546s |  1.59% |  3.18% )   ( 32.679382s |  1.63% |  3.27% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p10 p10_PID >>
1.4.0:          ( 0.000640s |  0.00% |  0.00% )   ( 0.000660s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p10 p10_PID (&)
24.4.0:         ( 17.444819s |  1.59% | 99.99% )   ( 16.339310s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000093s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p10
30.5.0:         ( 0.024115s |  0.00% |  0.13% )   ( 0.024031s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p10 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p10; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024034s |  0.00% |  0.13% )   ( 0.023983s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024122s |  0.00% |  0.13% )   ( 0.024067s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.024029s |  0.00% |  0.13% )   ( 0.023980s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.023919s |  0.00% |  0.13% )   ( 0.023864s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004804s |  0.00% |  0.00% )   ( 0.005360s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004714s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004999s |  0.00% |  0.00% )   ( 0.005574s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p10
41.5.0:         ( 0.232084s |  0.02% |  0.04% )   ( 0.006342s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004576s |  0.00% |  0.00% )   ( 0.005145s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004115s |  0.00% |  0.00% )   ( 0.004668s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003886s |  0.00% |  0.00% )   ( 0.004384s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004218s |  0.00% |  0.00% )   ( 0.004758s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.033913s |  0.00% |  0.00% )   ( 0.034340s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.005168s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005073s |  0.00% |  0.00% )   ( 0.005611s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p10
54.5.0:         ( 0.004095s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003953s |  0.00% |  0.00% )   ( 0.004470s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.987749s |  1.54% |  3.60% )   ( 16.100024s |  0.80% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004119s |  0.00% |  0.02% )   ( 0.004688s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.137417s |  0.10% |  6.69% )   ( 1.070326s |  0.05% |  6.64% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.862617s |  0.16% | 10.96% )   ( 1.818019s |  0.09% | 11.29% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.606508s |  0.14% |  9.45% )   ( 1.546899s |  0.07% |  9.60% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.929231s |  0.17% | 11.35% )   ( 1.801209s |  0.09% | 11.18% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.613380s |  0.14% |  9.49% )   ( 1.501029s |  0.07% |  9.32% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.049462s |  0.09% |  6.17% )   ( 0.978308s |  0.04% |  6.07% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.573838s |  0.05% |  3.37% )   ( 0.524084s |  0.02% |  3.25% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.092526s |  0.09% |  6.43% )   ( 1.019405s |  0.05% |  6.33% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.549270s |  0.05% |  3.23% )   ( 0.476717s |  0.02% |  2.96% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.477928s |  0.13% |  8.69% )   ( 1.371113s |  0.06% |  8.51% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.986857s |  0.27% | 17.58% )   ( 2.947203s |  0.14% | 18.30% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.558291s |  0.05% |  3.28% )   ( 0.528045s |  0.02% |  3.27% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.546305s |  0.04% |  3.21% )   ( 0.512979s |  0.02% |  3.18% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004139s |  0.00% |  0.00% )   ( 0.004668s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004007s |  0.00% |  0.00% )   ( 0.004536s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004368s |  0.00% |  0.00% )   ( 0.004884s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008858s |  0.00% |  0.05% )   ( 0.008937s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p10\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000087s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p10_PID})
1016.3.0:       ( 17.641193s |  1.60% |  3.22% )   ( 33.302458s |  1.66% |  3.33% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p11 p11_PID >>
1.4.0:          ( 0.000668s |  0.00% |  0.00% )   ( 0.000686s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p11 p11_PID (&)
24.4.0:         ( 17.640432s |  1.60% | 99.99% )   ( 16.650834s |  0.83% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000092s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p11
30.5.0:         ( 0.024253s |  0.00% |  0.13% )   ( 0.024170s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p11 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p11; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.024036s |  0.00% |  0.13% )   ( 0.023956s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.025491s |  0.00% |  0.14% )   ( 0.025406s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.048181s |  0.00% |  0.27% )   ( 0.047976s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.024414s |  0.00% |  0.13% )   ( 0.024315s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004416s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.003952s |  0.00% |  0.00% )   ( 0.004472s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004783s |  0.00% |  0.00% )   ( 0.005302s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p11
41.5.0:         ( 0.205879s |  0.01% |  0.04% )   ( 0.006003s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004550s |  0.00% |  0.00% )   ( 0.005100s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004087s |  0.00% |  0.00% )   ( 0.004632s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003847s |  0.00% |  0.00% )   ( 0.004354s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003942s |  0.00% |  0.00% )   ( 0.004439s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.030419s |  0.00% |  0.00% )   ( 0.030843s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004294s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004569s |  0.00% |  0.00% )   ( 0.005057s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p11
54.5.0:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004190s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003609s |  0.00% |  0.00% )   ( 0.004083s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.194580s |  1.56% |  3.74% )   ( 16.397653s |  0.82% |  3.78% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003855s |  0.00% |  0.02% )   ( 0.004367s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.159807s |  0.10% |  6.74% )   ( 1.088228s |  0.05% |  6.63% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.991121s |  0.18% | 11.57% )   ( 1.883618s |  0.09% | 11.48% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629068s |  0.14% |  9.47% )   ( 1.569746s |  0.07% |  9.57% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.065690s |  0.18% | 12.01% )   ( 1.861754s |  0.09% | 11.35% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.547707s |  0.14% |  9.00% )   ( 1.514443s |  0.07% |  9.23% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.006048s |  0.09% |  5.85% )   ( 0.978845s |  0.04% |  5.96% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.533961s |  0.04% |  3.10% )   ( 0.521654s |  0.02% |  3.18% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.073997s |  0.09% |  6.24% )   ( 1.045513s |  0.05% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.507281s |  0.04% |  2.95% )   ( 0.468278s |  0.02% |  2.85% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.458178s |  0.13% |  8.48% )   ( 1.394072s |  0.06% |  8.50% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.103365s |  0.28% | 18.04% )   ( 3.032540s |  0.15% | 18.49% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.546716s |  0.04% |  3.17% )   ( 0.528613s |  0.02% |  3.22% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.567786s |  0.05% |  3.30% )   ( 0.505982s |  0.02% |  3.08% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003841s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003790s |  0.00% |  0.00% )   ( 0.004296s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004093s |  0.00% |  0.00% )   ( 0.004605s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004928s |  0.00% |  0.02% )   ( 0.004999s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p11\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000093s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p11_PID})
1016.3.0:       ( 19.732896s |  1.79% |  3.60% )   ( 37.747197s |  1.89% |  3.77% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p12 p12_PID >>
1.4.0:          ( 0.000834s |  0.00% |  0.00% )   ( 0.000865s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p12 p12_PID (&)
24.4.0:         ( 19.731887s |  1.79% | 99.99% )   ( 18.873065s |  0.94% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p12
30.5.0:         ( 0.046025s |  0.00% |  0.23% )   ( 0.045882s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p12 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p12; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046123s |  0.00% |  0.23% )   ( 0.045967s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.046163s |  0.00% |  0.23% )   ( 0.046010s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.045810s |  0.00% |  0.23% )   ( 0.045652s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.046137s |  0.00% |  0.23% )   ( 0.045970s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005141s |  0.00% |  0.00% )   ( 0.005776s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   true
38.5.0:         ( 0.004672s |  0.00% |  0.00% )   ( 0.005295s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005764s |  0.00% |  0.00% )   ( 0.006419s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p12
41.5.0:         ( 0.240758s |  0.02% |  0.03% )   ( 0.007383s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.005063s |  0.00% |  0.00% )   ( 0.005687s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004842s |  0.00% |  0.00% )   ( 0.005483s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004522s |  0.00% |  0.00% )   ( 0.005103s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004705s |  0.00% |  0.00% )   ( 0.005337s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.038966s |  0.00% |  0.00% )   ( 0.037002s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004863s |  0.00% |  0.00% )   ( 0.005475s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005546s |  0.00% |  0.00% )   ( 0.006175s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p12
54.5.0:         ( 0.004529s |  0.00% |  0.00% )   ( 0.005131s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004482s |  0.00% |  0.00% )   ( 0.005088s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.146181s |  1.74% |  3.13% )   ( 18.514628s |  0.92% |  3.16% )    	(31x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004516s |  0.00% |  0.02% )   ( 0.005133s |  0.00% |  0.02% )    	(31x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.412274s |  0.12% |  7.37% )   ( 1.316885s |  0.06% |  7.11% )    	(31x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.132028s |  0.19% | 11.13% )   ( 2.100476s |  0.10% | 11.34% )    	(31x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.780725s |  0.16% |  9.30% )   ( 1.743641s |  0.08% |  9.41% )    	(31x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.077390s |  0.18% | 10.85% )   ( 2.034783s |  0.10% | 10.99% )    	(31x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.715405s |  0.15% |  8.95% )   ( 1.679478s |  0.08% |  9.07% )    	(31x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.284432s |  0.11% |  6.70% )   ( 1.210367s |  0.06% |  6.53% )    	(31x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.669164s |  0.06% |  3.49% )   ( 0.621157s |  0.03% |  3.35% )    	(31x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.235149s |  0.11% |  6.45% )   ( 1.214720s |  0.06% |  6.56% )    	(31x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.585628s |  0.05% |  3.05% )   ( 0.542982s |  0.02% |  2.93% )    	(31x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.597441s |  0.14% |  8.34% )   ( 1.549222s |  0.07% |  8.36% )    	(31x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.320138s |  0.30% | 17.34% )   ( 3.266655s |  0.16% | 17.64% )    	(31x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.670182s |  0.06% |  3.50% )   ( 0.627066s |  0.03% |  3.38% )    	(31x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.661709s |  0.06% |  3.45% )   ( 0.602063s |  0.03% |  3.25% )    	(31x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004616s |  0.00% |  0.00% )   ( 0.005226s |  0.00% |  0.00% )    	(31x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004575s |  0.00% |  0.00% )   ( 0.005180s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004856s |  0.00% |  0.00% )   ( 0.005442s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006277s |  0.00% |  0.03% )   ( 0.006321s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p12\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000175s |  0.00% |  0.00% )   ( 0.000202s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p12_PID})
1016.3.0:       ( 18.224677s |  1.66% |  3.32% )   ( 35.432005s |  1.77% |  3.54% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p13 p13_PID >>
1.4.0:          ( 0.000940s |  0.00% |  0.00% )   ( 0.000960s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p13 p13_PID (&)
24.4.0:         ( 18.223594s |  1.66% | 99.99% )   ( 17.715440s |  0.88% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000097s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p13
30.5.0:         ( 0.037363s |  0.00% |  0.20% )   ( 0.037237s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p13 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p13; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026472s |  0.00% |  0.14% )   ( 0.026393s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.024102s |  0.00% |  0.13% )   ( 0.024041s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.026434s |  0.00% |  0.14% )   ( 0.026357s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.026731s |  0.00% |  0.14% )   ( 0.026656s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003070s |  0.00% |  0.00% )   ( 0.003453s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002765s |  0.00% |  0.00% )   ( 0.003130s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003345s |  0.00% |  0.00% )   ( 0.003735s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p13
41.5.0:         ( 0.052457s |  0.00% |  0.01% )   ( 0.003588s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002787s |  0.00% |  0.00% )   ( 0.003150s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.002482s |  0.00% |  0.00% )   ( 0.002828s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002472s |  0.00% |  0.00% )   ( 0.002800s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002483s |  0.00% |  0.00% )   ( 0.002798s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.019492s |  0.00% |  0.00% )   ( 0.019783s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002622s |  0.00% |  0.00% )   ( 0.002949s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003033s |  0.00% |  0.00% )   ( 0.003360s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p13
54.5.0:         ( 0.002311s |  0.00% |  0.00% )   ( 0.002622s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002369s |  0.00% |  0.00% )   ( 0.002697s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.962552s |  1.63% |  5.79% )   ( 17.498337s |  0.87% |  5.81% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002456s |  0.00% |  0.01% )   ( 0.002796s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.147953s |  0.10% |  6.39% )   ( 1.117786s |  0.05% |  6.38% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.214165s |  0.20% | 12.32% )   ( 2.167546s |  0.10% | 12.38% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.757002s |  0.16% |  9.78% )   ( 1.679151s |  0.08% |  9.59% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.202626s |  0.20% | 12.26% )   ( 2.152074s |  0.10% | 12.29% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.639337s |  0.14% |  9.12% )   ( 1.612924s |  0.08% |  9.21% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.029044s |  0.09% |  5.72% )   ( 1.003842s |  0.05% |  5.73% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.438983s |  0.04% |  2.44% )   ( 0.404843s |  0.02% |  2.31% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.145899s |  0.10% |  6.37% )   ( 1.115179s |  0.05% |  6.37% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.363045s |  0.03% |  2.02% )   ( 0.341828s |  0.01% |  1.95% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.451217s |  0.13% |  8.07% )   ( 1.426623s |  0.07% |  8.15% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.735465s |  0.34% | 20.79% )   ( 3.706553s |  0.18% | 21.18% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.428603s |  0.03% |  2.38% )   ( 0.396934s |  0.01% |  2.26% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.406757s |  0.03% |  2.26% )   ( 0.370258s |  0.01% |  2.11% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002684s |  0.00% |  0.00% )   ( 0.003053s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002357s |  0.00% |  0.00% )   ( 0.002682s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002528s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009448s |  0.00% |  0.05% )   ( 0.009518s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p13\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000143s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p13_PID})
1016.3.0:       ( 18.694311s |  1.70% |  3.41% )   ( 36.528558s |  1.82% |  3.65% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p14 p14_PID >>
1.4.0:          ( 0.000985s |  0.00% |  0.00% )   ( 0.001008s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p14 p14_PID (&)
24.4.0:         ( 18.693177s |  1.70% | 99.99% )   ( 18.263690s |  0.91% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p14
30.5.0:         ( 0.035192s |  0.00% |  0.18% )   ( 0.035075s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p14 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p14; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.026829s |  0.00% |  0.14% )   ( 0.026741s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.026830s |  0.00% |  0.14% )   ( 0.026750s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.026951s |  0.00% |  0.14% )   ( 0.026871s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.029340s |  0.00% |  0.15% )   ( 0.029248s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.001982s |  0.00% |  0.00% )   ( 0.002230s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   true
38.5.0:         ( 0.001733s |  0.00% |  0.00% )   ( 0.001974s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002263s |  0.00% |  0.00% )   ( 0.002528s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p14
41.5.0:         ( 0.078287s |  0.00% |  0.03% )   ( 0.002765s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002002s |  0.00% |  0.00% )   ( 0.002268s |  0.00% |  0.00% )    	(13x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.001703s |  0.00% |  0.00% )   ( 0.001930s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.001644s |  0.00% |  0.00% )   ( 0.001871s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.001832s |  0.00% |  0.00% )   ( 0.002051s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.013913s |  0.00% |  0.00% )   ( 0.014121s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.001720s |  0.00% |  0.00% )   ( 0.001955s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002042s |  0.00% |  0.00% )   ( 0.002289s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p14
54.5.0:         ( 0.001676s |  0.00% |  0.00% )   ( 0.001908s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.001642s |  0.00% |  0.00% )   ( 0.001867s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.420556s |  1.67% |  8.21% )   ( 18.063308s |  0.90% |  8.24% )    	(12x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.001717s |  0.00% |  0.00% )   ( 0.001972s |  0.00% |  0.01% )    	(12x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.163762s |  0.10% |  6.31% )   ( 1.144962s |  0.05% |  6.33% )    	(12x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.349115s |  0.21% | 12.75% )   ( 2.302331s |  0.11% | 12.74% )    	(12x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.773319s |  0.16% |  9.62% )   ( 1.742426s |  0.08% |  9.64% )    	(12x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.359995s |  0.21% | 12.81% )   ( 2.298689s |  0.11% | 12.72% )    	(12x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.708029s |  0.15% |  9.27% )   ( 1.699953s |  0.08% |  9.41% )    	(12x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.104811s |  0.10% |  5.99% )   ( 1.037498s |  0.05% |  5.74% )    	(12x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.372653s |  0.03% |  2.02% )   ( 0.347036s |  0.01% |  1.92% )    	(12x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.204512s |  0.10% |  6.53% )   ( 1.182954s |  0.05% |  6.54% )    	(12x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.283192s |  0.02% |  1.53% )   ( 0.281300s |  0.01% |  1.55% )    	(12x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.476698s |  0.13% |  8.01% )   ( 1.463289s |  0.07% |  8.10% )    	(12x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 4.010484s |  0.36% | 21.77% )   ( 3.962247s |  0.19% | 21.93% )    	(12x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.322957s |  0.02% |  1.75% )   ( 0.314921s |  0.01% |  1.74% )    	(12x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.289312s |  0.02% |  1.57% )   ( 0.283730s |  0.01% |  1.57% )    	(12x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.001773s |  0.00% |  0.00% )   ( 0.001996s |  0.00% |  0.00% )    	(12x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.001698s |  0.00% |  0.00% )   ( 0.001932s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.001822s |  0.00% |  0.00% )   ( 0.002040s |  0.00% |  0.00% )    	(11x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008683s |  0.00% |  0.04% )   ( 0.008762s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p14\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p14_PID})
1016.3.0:       ( 21.008990s |  1.91% |  3.83% )   ( 40.859331s |  2.04% |  4.08% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p15 p15_PID >>
1.4.0:          ( 0.000987s |  0.00% |  0.00% )   ( 0.001012s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p15 p15_PID (&)
24.4.0:         ( 21.007855s |  1.91% | 99.99% )   ( 20.429075s |  1.02% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000109s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p15
30.5.0:         ( 0.026450s |  0.00% |  0.12% )   ( 0.026361s |  0.00% |  0.12% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p15 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p15; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.029606s |  0.00% |  0.14% )   ( 0.029511s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.026805s |  0.00% |  0.12% )   ( 0.026726s |  0.00% |  0.13% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.032458s |  0.00% |  0.15% )   ( 0.032342s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.032175s |  0.00% |  0.15% )   ( 0.032061s |  0.00% |  0.15% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002692s |  0.00% |  0.00% )   ( 0.003023s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   true
38.5.0:         ( 0.002500s |  0.00% |  0.00% )   ( 0.002819s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.002925s |  0.00% |  0.00% )   ( 0.003251s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p15
41.5.0:         ( 0.196176s |  0.01% |  0.05% )   ( 0.004158s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002693s |  0.00% |  0.00% )   ( 0.003007s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.002453s |  0.00% |  0.00% )   ( 0.002773s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002283s |  0.00% |  0.00% )   ( 0.002606s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002542s |  0.00% |  0.00% )   ( 0.002864s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.021770s |  0.00% |  0.00% )   ( 0.019060s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.002437s |  0.00% |  0.00% )   ( 0.002743s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.002743s |  0.00% |  0.00% )   ( 0.003051s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p15
54.5.0:         ( 0.002249s |  0.00% |  0.00% )   ( 0.002562s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002189s |  0.00% |  0.00% )   ( 0.002477s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000141s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 20.601798s |  1.87% |  6.12% )   ( 20.213666s |  1.01% |  6.18% )    	(16x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002425s |  0.00% |  0.01% )   ( 0.002733s |  0.00% |  0.01% )    	(16x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.454354s |  0.13% |  7.05% )   ( 1.414045s |  0.07% |  6.99% )    	(16x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.824197s |  0.25% | 13.70% )   ( 2.784146s |  0.13% | 13.77% )    	(16x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 2.163384s |  0.19% | 10.50% )   ( 2.107522s |  0.10% | 10.42% )    	(16x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.859626s |  0.26% | 13.88% )   ( 2.819534s |  0.14% | 13.94% )    	(16x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 2.101875s |  0.19% | 10.20% )   ( 2.071642s |  0.10% | 10.24% )    	(16x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.287299s |  0.11% |  6.24% )   ( 1.272812s |  0.06% |  6.29% )    	(16x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.434401s |  0.03% |  2.10% )   ( 0.434085s |  0.02% |  2.14% )    	(16x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.275172s |  0.11% |  6.18% )   ( 1.252913s |  0.06% |  6.19% )    	(16x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.363920s |  0.03% |  1.76% )   ( 0.345786s |  0.01% |  1.71% )    	(16x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.430084s |  0.13% |  6.94% )   ( 1.392479s |  0.06% |  6.88% )    	(16x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.617926s |  0.32% | 17.56% )   ( 3.563397s |  0.17% | 17.62% )    	(16x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.420367s |  0.03% |  2.04% )   ( 0.393445s |  0.01% |  1.94% )    	(16x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.366768s |  0.03% |  1.78% )   ( 0.359127s |  0.01% |  1.77% )    	(16x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002420s |  0.00% |  0.00% )   ( 0.002733s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002042s |  0.00% |  0.00% )   ( 0.002326s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.002393s |  0.00% |  0.00% )   ( 0.002694s |  0.00% |  0.00% )    	(15x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000078s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005060s |  0.00% |  0.02% )   ( 0.005124s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p15\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000148s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p15_PID})
1016.3.0:       ( 17.464324s |  1.59% |  3.18% )   ( 32.794706s |  1.64% |  3.28% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p16 p16_PID >>
1.4.0:          ( 0.000988s |  0.00% |  0.00% )   ( 0.001015s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p16 p16_PID (&)
24.4.0:         ( 17.463185s |  1.59% | 99.99% )   ( 16.396759s |  0.82% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000174s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p16
30.5.0:         ( 0.026978s |  0.00% |  0.15% )   ( 0.026880s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p16 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p16; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.027023s |  0.00% |  0.15% )   ( 0.026942s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.029997s |  0.00% |  0.17% )   ( 0.029894s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.029818s |  0.00% |  0.17% )   ( 0.029727s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.029611s |  0.00% |  0.16% )   ( 0.029512s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004843s |  0.00% |  0.00% )   ( 0.005407s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004382s |  0.00% |  0.00% )   ( 0.004940s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005185s |  0.00% |  0.00% )   ( 0.005769s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p16
41.5.0:         ( 0.161362s |  0.01% |  0.03% )   ( 0.006039s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004443s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004124s |  0.00% |  0.00% )   ( 0.004664s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.005864s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004053s |  0.00% |  0.00% )   ( 0.004559s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035495s |  0.00% |  0.00% )   ( 0.032950s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004948s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005034s |  0.00% |  0.00% )   ( 0.005619s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p16
54.5.0:         ( 0.004075s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003889s |  0.00% |  0.00% )   ( 0.004435s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000160s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.053801s |  1.55% |  3.61% )   ( 16.139874s |  0.80% |  3.64% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004303s |  0.00% |  0.02% )   ( 0.004899s |  0.00% |  0.03% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.212508s |  0.11% |  7.10% )   ( 1.092424s |  0.05% |  6.76% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.881459s |  0.17% | 11.03% )   ( 1.854768s |  0.09% | 11.49% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.745117s |  0.15% | 10.23% )   ( 1.572545s |  0.07% |  9.74% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.952529s |  0.17% | 11.44% )   ( 1.838926s |  0.09% | 11.39% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.579630s |  0.14% |  9.26% )   ( 1.499743s |  0.07% |  9.29% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.059009s |  0.09% |  6.20% )   ( 1.009302s |  0.05% |  6.25% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.576963s |  0.05% |  3.38% )   ( 0.531593s |  0.02% |  3.29% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.060474s |  0.09% |  6.21% )   ( 1.036379s |  0.05% |  6.42% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.484834s |  0.04% |  2.84% )   ( 0.473569s |  0.02% |  2.93% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.444214s |  0.13% |  8.46% )   ( 1.381454s |  0.06% |  8.55% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.887111s |  0.26% | 16.92% )   ( 2.800172s |  0.14% | 17.34% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.583450s |  0.05% |  3.42% )   ( 0.532280s |  0.02% |  3.29% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.582200s |  0.05% |  3.41% )   ( 0.511820s |  0.02% |  3.17% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004372s |  0.00% |  0.00% )   ( 0.004913s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003822s |  0.00% |  0.00% )   ( 0.004307s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004307s |  0.00% |  0.00% )   ( 0.004841s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004955s |  0.00% |  0.02% )   ( 0.005027s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p16\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p16_PID})
1016.3.0:       ( 18.969005s |  1.72% |  3.46% )   ( 35.739583s |  1.78% |  3.57% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p17 p17_PID >>
1.4.0:          ( 0.001022s |  0.00% |  0.00% )   ( 0.001047s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p17 p17_PID (&)
24.4.0:         ( 18.967832s |  1.72% | 99.99% )   ( 17.869181s |  0.89% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000182s |  0.00% |  0.00% )   ( 0.000203s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p17
30.5.0:         ( 0.038615s |  0.00% |  0.20% )   ( 0.038462s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p17 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p17; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.034248s |  0.00% |  0.18% )   ( 0.034118s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.045660s |  0.00% |  0.24% )   ( 0.045493s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.045594s |  0.00% |  0.24% )   ( 0.045429s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.045556s |  0.00% |  0.24% )   ( 0.045375s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004977s |  0.00% |  0.00% )   ( 0.005559s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   true
38.5.0:         ( 0.004621s |  0.00% |  0.00% )   ( 0.005223s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000146s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005441s |  0.00% |  0.00% )   ( 0.006043s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p17
41.5.0:         ( 0.235235s |  0.02% |  0.04% )   ( 0.006899s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004899s |  0.00% |  0.00% )   ( 0.005498s |  0.00% |  0.00% )    	(30x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004726s |  0.00% |  0.00% )   ( 0.005341s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004333s |  0.00% |  0.00% )   ( 0.004906s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004542s |  0.00% |  0.00% )   ( 0.005108s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.043828s |  0.00% |  0.00% )   ( 0.035546s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008370s |  0.00% |  0.00% )   ( 0.005221s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005419s |  0.00% |  0.00% )   ( 0.006017s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p17
54.5.0:         ( 0.004677s |  0.00% |  0.00% )   ( 0.005270s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004413s |  0.00% |  0.00% )   ( 0.004992s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000170s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.402279s |  1.67% |  3.34% )   ( 17.536599s |  0.87% |  3.38% )    	(29x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004513s |  0.00% |  0.02% )   ( 0.005095s |  0.00% |  0.02% )    	(29x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.297320s |  0.11% |  7.04% )   ( 1.227129s |  0.06% |  6.99% )    	(29x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.221968s |  0.20% | 12.07% )   ( 2.074318s |  0.10% | 11.82% )    	(29x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.748985s |  0.15% |  9.50% )   ( 1.647275s |  0.08% |  9.39% )    	(29x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.037803s |  0.18% | 11.07% )   ( 1.923356s |  0.09% | 10.96% )    	(29x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.657818s |  0.15% |  9.00% )   ( 1.583971s |  0.07% |  9.03% )    	(29x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.158902s |  0.10% |  6.29% )   ( 1.116614s |  0.05% |  6.36% )    	(29x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.592315s |  0.05% |  3.21% )   ( 0.582410s |  0.02% |  3.32% )    	(29x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.169689s |  0.10% |  6.35% )   ( 1.140878s |  0.05% |  6.50% )    	(29x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.573216s |  0.05% |  3.11% )   ( 0.517473s |  0.02% |  2.95% )    	(29x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.543307s |  0.14% |  8.38% )   ( 1.465206s |  0.07% |  8.35% )    	(29x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.162674s |  0.28% | 17.18% )   ( 3.118740s |  0.15% | 17.78% )    	(29x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.637038s |  0.05% |  3.46% )   ( 0.584692s |  0.02% |  3.33% )    	(29x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.596731s |  0.05% |  3.24% )   ( 0.549442s |  0.02% |  3.13% )    	(29x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004383s |  0.00% |  0.00% )   ( 0.004950s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004687s |  0.00% |  0.00% )   ( 0.004970s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004879s |  0.00% |  0.00% )   ( 0.005455s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005113s |  0.00% |  0.02% )   ( 0.005186s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p17\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p17_PID})
1016.3.0:       ( 17.138819s |  1.56% |  3.13% )   ( 32.177525s |  1.61% |  3.22% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p18 p18_PID >>
1.4.0:          ( 0.001005s |  0.00% |  0.00% )   ( 0.001032s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p18 p18_PID (&)
24.4.0:         ( 17.137665s |  1.56% | 99.99% )   ( 16.088161s |  0.80% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000164s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000195s |  0.00% |  0.00% )   ( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p18
30.5.0:         ( 0.033339s |  0.00% |  0.19% )   ( 0.033213s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p18 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p18; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.038135s |  0.00% |  0.22% )   ( 0.038000s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.037834s |  0.00% |  0.22% )   ( 0.037701s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.033985s |  0.00% |  0.19% )   ( 0.033871s |  0.00% |  0.21% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.044057s |  0.00% |  0.25% )   ( 0.043871s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004628s |  0.00% |  0.00% )   ( 0.005200s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   true
38.5.0:         ( 0.004241s |  0.00% |  0.00% )   ( 0.004805s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005245s |  0.00% |  0.00% )   ( 0.005801s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p18
41.5.0:         ( 0.209394s |  0.01% |  0.04% )   ( 0.006597s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004567s |  0.00% |  0.00% )   ( 0.005167s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004321s |  0.00% |  0.00% )   ( 0.004889s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004081s |  0.00% |  0.00% )   ( 0.004610s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004332s |  0.00% |  0.00% )   ( 0.004887s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.040386s |  0.00% |  0.00% )   ( 0.034838s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.011212s |  0.00% |  0.00% )   ( 0.005039s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005037s |  0.00% |  0.00% )   ( 0.005620s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p18
54.5.0:         ( 0.003992s |  0.00% |  0.00% )   ( 0.004543s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003900s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.620276s |  1.51% |  3.59% )   ( 15.780703s |  0.79% |  3.63% )    	(27x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004085s |  0.00% |  0.02% )   ( 0.004611s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.098182s |  0.10% |  6.60% )   ( 1.046827s |  0.05% |  6.63% )    	(27x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.842985s |  0.16% | 11.08% )   ( 1.776099s |  0.08% | 11.25% )    	(27x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.637767s |  0.14% |  9.85% )   ( 1.512159s |  0.07% |  9.58% )    	(27x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.790734s |  0.16% | 10.77% )   ( 1.743024s |  0.08% | 11.04% )    	(27x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.542222s |  0.14% |  9.27% )   ( 1.464472s |  0.07% |  9.28% )    	(27x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.088162s |  0.09% |  6.54% )   ( 0.957766s |  0.04% |  6.06% )    	(27x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.576971s |  0.05% |  3.47% )   ( 0.527447s |  0.02% |  3.34% )    	(27x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.049280s |  0.09% |  6.31% )   ( 0.992947s |  0.04% |  6.29% )    	(27x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.527912s |  0.04% |  3.17% )   ( 0.476471s |  0.02% |  3.01% )    	(27x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.431462s |  0.13% |  8.61% )   ( 1.347001s |  0.06% |  8.53% )    	(27x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.939350s |  0.26% | 17.68% )   ( 2.886721s |  0.14% | 18.29% )    	(27x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.551216s |  0.05% |  3.31% )   ( 0.535387s |  0.02% |  3.39% )    	(27x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.539948s |  0.04% |  3.24% )   ( 0.509771s |  0.02% |  3.23% )    	(27x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004256s |  0.00% |  0.00% )   ( 0.004814s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.005968s |  0.00% |  0.00% )   ( 0.004341s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004019s |  0.00% |  0.00% )   ( 0.004501s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000138s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.009019s |  0.00% |  0.05% )   ( 0.009094s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p18\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p18_PID})
1016.3.0:       ( 17.666432s |  1.61% |  3.22% )   ( 33.836646s |  1.69% |  3.38% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p19 p19_PID >>
1.4.0:          ( 0.001036s |  0.00% |  0.00% )   ( 0.001059s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p19 p19_PID (&)
24.4.0:         ( 17.665239s |  1.61% | 99.99% )   ( 16.917704s |  0.84% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000172s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p19
30.5.0:         ( 0.045617s |  0.00% |  0.25% )   ( 0.045460s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p19 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p19; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045596s |  0.00% |  0.25% )   ( 0.045441s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.045577s |  0.00% |  0.25% )   ( 0.045423s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.043229s |  0.00% |  0.24% )   ( 0.043073s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.045760s |  0.00% |  0.25% )   ( 0.045603s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003941s |  0.00% |  0.00% )   ( 0.004422s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003512s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004339s |  0.00% |  0.00% )   ( 0.004838s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p19
41.5.0:         ( 0.102807s |  0.00% |  0.02% )   ( 0.004992s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003758s |  0.00% |  0.00% )   ( 0.004243s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003572s |  0.00% |  0.00% )   ( 0.004033s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003273s |  0.00% |  0.00% )   ( 0.003739s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003533s |  0.00% |  0.00% )   ( 0.003990s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031151s |  0.00% |  0.00% )   ( 0.028451s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004712s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004224s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p19
54.5.0:         ( 0.003490s |  0.00% |  0.00% )   ( 0.003965s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003835s |  0.00% |  0.00% )   ( 0.003754s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.240015s |  1.57% |  4.43% )   ( 16.591518s |  0.83% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003368s |  0.00% |  0.01% )   ( 0.003841s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.167391s |  0.10% |  6.77% )   ( 1.103089s |  0.05% |  6.64% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.082546s |  0.18% | 12.07% )   ( 1.978156s |  0.09% | 11.92% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629807s |  0.14% |  9.45% )   ( 1.569844s |  0.07% |  9.46% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.971981s |  0.17% | 11.43% )   ( 1.948508s |  0.09% | 11.74% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.612413s |  0.14% |  9.35% )   ( 1.550241s |  0.07% |  9.34% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.036160s |  0.09% |  6.01% )   ( 1.014455s |  0.05% |  6.11% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.501218s |  0.04% |  2.90% )   ( 0.470819s |  0.02% |  2.83% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.081335s |  0.09% |  6.27% )   ( 1.030191s |  0.05% |  6.20% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.465472s |  0.04% |  2.69% )   ( 0.411290s |  0.02% |  2.47% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.401939s |  0.12% |  8.13% )   ( 1.371409s |  0.06% |  8.26% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.317434s |  0.30% | 19.24% )   ( 3.248310s |  0.16% | 19.57% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.510997s |  0.04% |  2.96% )   ( 0.463819s |  0.02% |  2.79% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.457954s |  0.04% |  2.65% )   ( 0.427546s |  0.02% |  2.57% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.006531s |  0.00% |  0.00% )   ( 0.004050s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003224s |  0.00% |  0.00% )   ( 0.003646s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003431s |  0.00% |  0.00% )   ( 0.003866s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000168s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008692s |  0.00% |  0.04% )   ( 0.008769s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p19\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000157s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p19_PID})
1016.3.0:       ( 17.209311s |  1.56% |  3.14% )   ( 32.498886s |  1.62% |  3.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p20 p20_PID >>
1.4.0:          ( 0.001004s |  0.00% |  0.00% )   ( 0.001030s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p20 p20_PID (&)
24.4.0:         ( 17.208154s |  1.56% | 99.99% )   ( 16.248840s |  0.81% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000118s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p20
30.5.0:         ( 0.033541s |  0.00% |  0.19% )   ( 0.033433s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p20 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p20; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.047942s |  0.00% |  0.27% )   ( 0.047739s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.046089s |  0.00% |  0.26% )   ( 0.045928s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.046236s |  0.00% |  0.26% )   ( 0.046066s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.047109s |  0.00% |  0.27% )   ( 0.046937s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004549s |  0.00% |  0.00% )   ( 0.005129s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   true
38.5.0:         ( 0.004008s |  0.00% |  0.00% )   ( 0.004555s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004780s |  0.00% |  0.00% )   ( 0.005317s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p20
41.5.0:         ( 0.211678s |  0.01% |  0.04% )   ( 0.005849s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004314s |  0.00% |  0.00% )   ( 0.004819s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004509s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003744s |  0.00% |  0.00% )   ( 0.004261s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003915s |  0.00% |  0.00% )   ( 0.004414s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.031703s |  0.00% |  0.00% )   ( 0.032068s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.005240s |  0.00% |  0.00% )   ( 0.004761s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004663s |  0.00% |  0.00% )   ( 0.005205s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p20
54.5.0:         ( 0.003681s |  0.00% |  0.00% )   ( 0.004177s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003685s |  0.00% |  0.00% )   ( 0.004196s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000125s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.675821s |  1.51% |  3.72% )   ( 15.916292s |  0.79% |  3.76% )    	(26x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003901s |  0.00% |  0.02% )   ( 0.004428s |  0.00% |  0.02% )    	(26x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.110838s |  0.10% |  6.66% )   ( 1.064607s |  0.05% |  6.68% )    	(26x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.872231s |  0.17% | 11.22% )   ( 1.794597s |  0.08% | 11.27% )    	(26x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.527107s |  0.13% |  9.15% )   ( 1.516680s |  0.07% |  9.52% )    	(26x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.869816s |  0.17% | 11.21% )   ( 1.796477s |  0.08% | 11.28% )    	(26x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.515540s |  0.13% |  9.08% )   ( 1.470932s |  0.07% |  9.24% )    	(26x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.037236s |  0.09% |  6.21% )   ( 0.965119s |  0.04% |  6.06% )    	(26x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.541665s |  0.04% |  3.24% )   ( 0.522635s |  0.02% |  3.28% )    	(26x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.138177s |  0.10% |  6.82% )   ( 1.014167s |  0.05% |  6.37% )    	(26x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.512353s |  0.04% |  3.07% )   ( 0.461737s |  0.02% |  2.90% )    	(26x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.412310s |  0.12% |  8.46% )   ( 1.341462s |  0.06% |  8.42% )    	(26x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.041931s |  0.27% | 18.24% )   ( 2.929655s |  0.14% | 18.40% )    	(26x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.548463s |  0.04% |  3.28% )   ( 0.524147s |  0.02% |  3.29% )    	(26x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.544253s |  0.04% |  3.26% )   ( 0.509649s |  0.02% |  3.20% )    	(26x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003729s |  0.00% |  0.00% )   ( 0.004228s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003491s |  0.00% |  0.00% )   ( 0.003971s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003978s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008946s |  0.00% |  0.05% )   ( 0.009025s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p20\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000153s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p20_PID})
1016.3.0:       ( 17.846059s |  1.62% |  3.25% )   ( 34.647486s |  1.73% |  3.46% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p21 p21_PID >>
1.4.0:          ( 0.001029s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p21 p21_PID (&)
24.4.0:         ( 17.844879s |  1.62% | 99.99% )   ( 17.323129s |  0.86% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000167s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p21
30.5.0:         ( 0.046178s |  0.00% |  0.25% )   ( 0.045933s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p21 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p21; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.034089s |  0.00% |  0.19% )   ( 0.033964s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.034373s |  0.00% |  0.19% )   ( 0.034250s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.043874s |  0.00% |  0.24% )   ( 0.043711s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.049907s |  0.00% |  0.27% )   ( 0.047942s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.002936s |  0.00% |  0.00% )   ( 0.003310s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   true
38.5.0:         ( 0.002652s |  0.00% |  0.00% )   ( 0.002995s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003158s |  0.00% |  0.00% )   ( 0.003507s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p21
41.5.0:         ( 0.076891s |  0.00% |  0.02% )   ( 0.003729s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.002850s |  0.00% |  0.00% )   ( 0.003221s |  0.00% |  0.00% )    	(18x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.002562s |  0.00% |  0.00% )   ( 0.002903s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002398s |  0.00% |  0.00% )   ( 0.002720s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.002659s |  0.00% |  0.00% )   ( 0.002998s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028224s |  0.00% |  0.00% )   ( 0.020082s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004827s |  0.00% |  0.00% )   ( 0.003051s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003101s |  0.00% |  0.00% )   ( 0.003474s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p21
54.5.0:         ( 0.002490s |  0.00% |  0.00% )   ( 0.002835s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002325s |  0.00% |  0.00% )   ( 0.002641s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000135s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.481495s |  1.59% |  5.76% )   ( 17.041565s |  0.85% |  5.78% )    	(17x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002447s |  0.00% |  0.01% )   ( 0.002782s |  0.00% |  0.01% )    	(17x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.185689s |  0.10% |  6.78% )   ( 1.125069s |  0.05% |  6.60% )    	(17x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.090047s |  0.19% | 11.95% )   ( 2.067269s |  0.10% | 12.13% )    	(17x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.664496s |  0.15% |  9.52% )   ( 1.629963s |  0.08% |  9.56% )    	(17x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.117887s |  0.19% | 12.11% )   ( 2.073145s |  0.10% | 12.16% )    	(17x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.651237s |  0.15% |  9.44% )   ( 1.594482s |  0.07% |  9.35% )    	(17x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.014182s |  0.09% |  5.80% )   ( 0.984416s |  0.04% |  5.77% )    	(17x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.426192s |  0.03% |  2.43% )   ( 0.403567s |  0.02% |  2.36% )    	(17x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.122399s |  0.10% |  6.42% )   ( 1.091268s |  0.05% |  6.40% )    	(17x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.348220s |  0.03% |  1.99% )   ( 0.333099s |  0.01% |  1.95% )    	(17x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.415874s |  0.12% |  8.09% )   ( 1.374479s |  0.06% |  8.06% )    	(17x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.689181s |  0.33% | 21.10% )   ( 3.628027s |  0.18% | 21.28% )    	(17x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.389662s |  0.03% |  2.22% )   ( 0.379241s |  0.01% |  2.22% )    	(17x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.363982s |  0.03% |  2.08% )   ( 0.354758s |  0.01% |  2.08% )    	(17x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002536s |  0.00% |  0.00% )   ( 0.002877s |  0.00% |  0.00% )    	(17x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002255s |  0.00% |  0.00% )   ( 0.002578s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003364s |  0.00% |  0.00% )   ( 0.002849s |  0.00% |  0.00% )    	(16x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000139s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008359s |  0.00% |  0.04% )   ( 0.008432s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p21\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000151s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p21_PID})
1016.3.0:       ( 17.778716s |  1.62% |  3.24% )   ( 34.556529s |  1.73% |  3.45% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p22 p22_PID >>
1.4.0:          ( 0.000911s |  0.00% |  0.00% )   ( 0.000944s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p22 p22_PID (&)
24.4.0:         ( 17.777621s |  1.62% | 99.99% )   ( 17.277688s |  0.86% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000165s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p22
30.5.0:         ( 0.045911s |  0.00% |  0.25% )   ( 0.045750s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p22 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p22; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046164s |  0.00% |  0.25% )   ( 0.045989s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.045731s |  0.00% |  0.25% )   ( 0.045563s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.046327s |  0.00% |  0.26% )   ( 0.046160s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.048956s |  0.00% |  0.27% )   ( 0.048788s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003990s |  0.00% |  0.00% )   ( 0.004392s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   true
38.5.0:         ( 0.003684s |  0.00% |  0.00% )   ( 0.004146s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000158s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004264s |  0.00% |  0.00% )   ( 0.004747s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p22
41.5.0:         ( 0.117920s |  0.01% |  0.02% )   ( 0.005209s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003591s |  0.00% |  0.00% )   ( 0.004053s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003358s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003145s |  0.00% |  0.00% )   ( 0.003590s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003402s |  0.00% |  0.00% )   ( 0.003824s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.027065s |  0.00% |  0.00% )   ( 0.027435s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003484s |  0.00% |  0.00% )   ( 0.003925s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003966s |  0.00% |  0.00% )   ( 0.004419s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p22
54.5.0:         ( 0.003297s |  0.00% |  0.00% )   ( 0.003732s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003147s |  0.00% |  0.00% )   ( 0.003584s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 17.343944s |  1.58% |  4.43% )   ( 16.950868s |  0.84% |  4.45% )    	(22x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003114s |  0.00% |  0.01% )   ( 0.003546s |  0.00% |  0.02% )    	(22x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.137894s |  0.10% |  6.56% )   ( 1.120094s |  0.05% |  6.60% )    	(22x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.069780s |  0.18% | 11.93% )   ( 2.033071s |  0.10% | 11.99% )    	(22x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.628372s |  0.14% |  9.38% )   ( 1.613048s |  0.08% |  9.51% )    	(22x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.027396s |  0.18% | 11.68% )   ( 2.001400s |  0.10% | 11.80% )    	(22x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.601438s |  0.14% |  9.23% )   ( 1.584564s |  0.07% |  9.34% )    	(22x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.052242s |  0.09% |  6.06% )   ( 1.019045s |  0.05% |  6.01% )    	(22x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.521378s |  0.04% |  3.00% )   ( 0.480150s |  0.02% |  2.83% )    	(22x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.185883s |  0.10% |  6.83% )   ( 1.095059s |  0.05% |  6.46% )    	(22x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.445564s |  0.04% |  2.56% )   ( 0.415742s |  0.02% |  2.45% )    	(22x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.436545s |  0.13% |  8.28% )   ( 1.411177s |  0.07% |  8.32% )    	(22x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.306660s |  0.30% | 19.06% )   ( 3.270637s |  0.16% | 19.29% )    	(22x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.471631s |  0.04% |  2.71% )   ( 0.460014s |  0.02% |  2.71% )    	(22x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.456047s |  0.04% |  2.62% )   ( 0.443321s |  0.02% |  2.61% )    	(22x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003536s |  0.00% |  0.00% )   ( 0.003905s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003099s |  0.00% |  0.00% )   ( 0.003505s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003411s |  0.00% |  0.00% )   ( 0.003826s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000086s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.005028s |  0.00% |  0.02% )   ( 0.005101s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p22\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000184s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p22_PID})
1016.3.0:       ( 20.167294s |  1.83% |  3.68% )   ( 39.003865s |  1.95% |  3.90% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p23 p23_PID >>
1.4.0:          ( 0.001027s |  0.00% |  0.00% )   ( 0.001055s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p23 p23_PID (&)
24.4.0:         ( 20.166108s |  1.83% | 99.99% )   ( 19.501312s |  0.97% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000176s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p23
30.5.0:         ( 0.027743s |  0.00% |  0.13% )   ( 0.027668s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p23 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p23; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.045579s |  0.00% |  0.22% )   ( 0.045403s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.048090s |  0.00% |  0.23% )   ( 0.047915s |  0.00% |  0.24% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.051220s |  0.00% |  0.25% )   ( 0.051034s |  0.00% |  0.26% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.050842s |  0.00% |  0.25% )   ( 0.050657s |  0.00% |  0.25% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004030s |  0.00% |  0.00% )   ( 0.004502s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   true
38.5.0:         ( 0.003680s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000153s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004484s |  0.00% |  0.00% )   ( 0.004963s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p23
41.5.0:         ( 0.128001s |  0.01% |  0.02% )   ( 0.005654s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004006s |  0.00% |  0.00% )   ( 0.004521s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003853s |  0.00% |  0.00% )   ( 0.004377s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003458s |  0.00% |  0.00% )   ( 0.003932s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003559s |  0.00% |  0.00% )   ( 0.003997s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.029656s |  0.00% |  0.00% )   ( 0.029962s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.006762s |  0.00% |  0.00% )   ( 0.004218s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004154s |  0.00% |  0.00% )   ( 0.004634s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p23
54.5.0:         ( 0.003449s |  0.00% |  0.00% )   ( 0.003945s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.003466s |  0.00% |  0.00% )   ( 0.003898s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000149s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000137s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000134s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 19.716900s |  1.79% |  4.25% )   ( 19.174384s |  0.96% |  4.27% )    	(23x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003235s |  0.00% |  0.01% )   ( 0.003689s |  0.00% |  0.01% )    	(23x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.427196s |  0.13% |  7.23% )   ( 1.354869s |  0.06% |  7.06% )    	(23x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.354255s |  0.21% | 11.94% )   ( 2.301748s |  0.11% | 12.00% )    	(23x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.850656s |  0.16% |  9.38% )   ( 1.785645s |  0.08% |  9.31% )    	(23x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.307485s |  0.21% | 11.70% )   ( 2.267758s |  0.11% | 11.82% )    	(23x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.783599s |  0.16% |  9.04% )   ( 1.743955s |  0.08% |  9.09% )    	(23x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.228857s |  0.11% |  6.23% )   ( 1.202843s |  0.06% |  6.27% )    	(23x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.534202s |  0.04% |  2.70% )   ( 0.520401s |  0.02% |  2.71% )    	(23x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.267978s |  0.11% |  6.43% )   ( 1.261041s |  0.06% |  6.57% )    	(23x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.496814s |  0.04% |  2.51% )   ( 0.443878s |  0.02% |  2.31% )    	(23x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.611532s |  0.14% |  8.17% )   ( 1.546633s |  0.07% |  8.06% )    	(23x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.837833s |  0.34% | 19.46% )   ( 3.764010s |  0.18% | 19.63% )    	(23x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.511153s |  0.04% |  2.59% )   ( 0.502678s |  0.02% |  2.62% )    	(23x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.502105s |  0.04% |  2.54% )   ( 0.475236s |  0.02% |  2.47% )    	(23x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003500s |  0.00% |  0.00% )   ( 0.003964s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003208s |  0.00% |  0.00% )   ( 0.003617s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.006807s |  0.00% |  0.00% )   ( 0.003980s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000124s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.008227s |  0.00% |  0.04% )   ( 0.008309s |  0.00% |  0.04% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p23\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000159s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p23_PID})
1016.3.0:       ( 17.393389s |  1.58% |  3.17% )   ( 33.070046s |  1.65% |  3.30% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p24 p24_PID >>
1.4.0:          ( 0.001008s |  0.00% |  0.00% )   ( 0.001038s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p24 p24_PID (&)
24.4.0:         ( 17.392234s |  1.58% | 99.99% )   ( 16.534419s |  0.82% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000161s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p24
30.5.0:         ( 0.030991s |  0.00% |  0.17% )   ( 0.030880s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p24 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p24; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046342s |  0.00% |  0.26% )   ( 0.046174s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.051087s |  0.00% |  0.29% )   ( 0.050904s |  0.00% |  0.30% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.053508s |  0.00% |  0.30% )   ( 0.053323s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.049537s |  0.00% |  0.28% )   ( 0.049380s |  0.00% |  0.29% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.005034s |  0.00% |  0.00% )   ( 0.005654s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004352s |  0.00% |  0.00% )   ( 0.004926s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000180s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000155s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000166s |  0.00% |  0.00% )   ( 0.000190s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005364s |  0.00% |  0.00% )   ( 0.005967s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p24
41.5.0:         ( 0.169962s |  0.01% |  0.03% )   ( 0.006427s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004749s |  0.00% |  0.00% )   ( 0.005333s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004594s |  0.00% |  0.00% )   ( 0.005189s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004181s |  0.00% |  0.00% )   ( 0.004736s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004440s |  0.00% |  0.00% )   ( 0.005003s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035495s |  0.00% |  0.00% )   ( 0.034979s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.007740s |  0.00% |  0.00% )   ( 0.005333s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005227s |  0.00% |  0.00% )   ( 0.005809s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p24
54.5.0:         ( 0.004286s |  0.00% |  0.00% )   ( 0.004845s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004148s |  0.00% |  0.00% )   ( 0.004704s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000136s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000121s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.878026s |  1.53% |  3.46% )   ( 16.183904s |  0.81% |  3.49% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.004241s |  0.00% |  0.02% )   ( 0.004788s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.160382s |  0.10% |  6.87% )   ( 1.098129s |  0.05% |  6.78% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 1.958086s |  0.17% | 11.60% )   ( 1.883046s |  0.09% | 11.63% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.629850s |  0.14% |  9.65% )   ( 1.560981s |  0.07% |  9.64% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.874929s |  0.17% | 11.10% )   ( 1.807244s |  0.09% | 11.16% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.643877s |  0.14% |  9.73% )   ( 1.501433s |  0.07% |  9.27% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.050069s |  0.09% |  6.22% )   ( 0.987108s |  0.04% |  6.09% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.546814s |  0.04% |  3.23% )   ( 0.540053s |  0.02% |  3.33% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.038692s |  0.09% |  6.15% )   ( 1.030075s |  0.05% |  6.36% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.497432s |  0.04% |  2.94% )   ( 0.480707s |  0.02% |  2.97% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.359762s |  0.12% |  8.05% )   ( 1.346335s |  0.06% |  8.31% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 2.993049s |  0.27% | 17.73% )   ( 2.854981s |  0.14% | 17.64% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.570718s |  0.05% |  3.38% )   ( 0.551537s |  0.02% |  3.40% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.550125s |  0.05% |  3.25% )   ( 0.537487s |  0.02% |  3.32% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004166s |  0.00% |  0.00% )   ( 0.004716s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.004011s |  0.00% |  0.00% )   ( 0.004545s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.008694s |  0.00% |  0.00% )   ( 0.005125s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004932s |  0.00% |  0.02% )   ( 0.005002s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p24\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000147s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p24_PID})
1016.3.0:       ( 22.097474s |  2.01% |  4.03% )   ( 42.548169s |  2.13% |  4.25% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p25 p25_PID >>
1.4.0:          ( 0.001032s |  0.00% |  0.00% )   ( 0.001059s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p25 p25_PID (&)
24.4.0:         ( 22.096288s |  2.01% | 99.99% )   ( 21.273467s |  1.06% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000186s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000192s |  0.00% |  0.00% )   ( 0.000211s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p25
30.5.0:         ( 0.049262s |  0.00% |  0.22% )   ( 0.049063s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p25 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p25; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049539s |  0.00% |  0.22% )   ( 0.049266s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.050589s |  0.00% |  0.22% )   ( 0.050389s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.050658s |  0.00% |  0.22% )   ( 0.050469s |  0.00% |  0.23% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.048632s |  0.00% |  0.22% )   ( 0.048422s |  0.00% |  0.22% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004977s |  0.00% |  0.00% )   ( 0.005470s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   true
38.5.0:         ( 0.004399s |  0.00% |  0.00% )   ( 0.004939s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000175s |  0.00% |  0.00% )   ( 0.000201s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.005355s |  0.00% |  0.00% )   ( 0.005958s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p25
41.5.0:         ( 0.146965s |  0.01% |  0.02% )   ( 0.006661s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004411s |  0.00% |  0.00% )   ( 0.004993s |  0.00% |  0.00% )    	(29x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004161s |  0.00% |  0.00% )   ( 0.004708s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.004172s |  0.00% |  0.00% )   ( 0.004743s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.004403s |  0.00% |  0.00% )   ( 0.004951s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.035676s |  0.00% |  0.00% )   ( 0.036116s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.004509s |  0.00% |  0.00% )   ( 0.005051s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.005277s |  0.00% |  0.00% )   ( 0.005878s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p25
54.5.0:         ( 0.004211s |  0.00% |  0.00% )   ( 0.004790s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.004144s |  0.00% |  0.00% )   ( 0.004712s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000140s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 21.596358s |  1.96% |  3.49% )   ( 20.906476s |  1.04% |  3.50% )    	(28x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003952s |  0.00% |  0.01% )   ( 0.004506s |  0.00% |  0.02% )    	(28x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.634023s |  0.14% |  7.56% )   ( 1.540974s |  0.07% |  7.37% )    	(28x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.469448s |  0.22% | 11.43% )   ( 2.412932s |  0.12% | 11.54% )    	(28x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.970621s |  0.17% |  9.12% )   ( 1.936348s |  0.09% |  9.26% )    	(28x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.450920s |  0.22% | 11.34% )   ( 2.404135s |  0.12% | 11.49% )    	(28x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.985727s |  0.18% |  9.19% )   ( 1.885021s |  0.09% |  9.01% )    	(28x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.438854s |  0.13% |  6.66% )   ( 1.387570s |  0.06% |  6.63% )    	(28x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.679643s |  0.06% |  3.14% )   ( 0.618028s |  0.03% |  2.95% )    	(28x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.445865s |  0.13% |  6.69% )   ( 1.421558s |  0.07% |  6.79% )    	(28x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.548545s |  0.04% |  2.53% )   ( 0.527407s |  0.02% |  2.52% )    	(28x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.805083s |  0.16% |  8.35% )   ( 1.708737s |  0.08% |  8.17% )    	(28x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.937544s |  0.35% | 18.23% )   ( 3.884469s |  0.19% | 18.58% )    	(28x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.636291s |  0.05% |  2.94% )   ( 0.602554s |  0.03% |  2.88% )    	(28x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.589842s |  0.05% |  2.73% )   ( 0.572237s |  0.02% |  2.73% )    	(28x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.004041s |  0.00% |  0.00% )   ( 0.004563s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003967s |  0.00% |  0.00% )   ( 0.004494s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.004415s |  0.00% |  0.00% )   ( 0.004941s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000075s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.004788s |  0.00% |  0.02% )   ( 0.004851s |  0.00% |  0.02% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p25\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000154s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p25_PID})
1016.3.0:       ( 18.758877s |  1.70% |  3.42% )   ( 36.102527s |  1.80% |  3.61% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p26 p26_PID >>
1.4.0:          ( 0.001101s |  0.00% |  0.00% )   ( 0.001131s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p26 p26_PID (&)
24.4.0:         ( 18.757618s |  1.70% | 99.99% )   ( 18.050608s |  0.90% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000184s |  0.00% |  0.00% )   ( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000200s |  0.00% |  0.00% )   ( 0.000217s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p26
30.5.0:         ( 0.063173s |  0.00% |  0.33% )   ( 0.050065s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p26 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p26; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.049150s |  0.00% |  0.26% )   ( 0.048892s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.049240s |  0.00% |  0.26% )   ( 0.049061s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.051359s |  0.00% |  0.27% )   ( 0.051170s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.050515s |  0.00% |  0.26% )   ( 0.050327s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.004494s |  0.00% |  0.00% )   ( 0.004890s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   true
38.5.0:         ( 0.004073s |  0.00% |  0.00% )   ( 0.004573s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000128s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.004771s |  0.00% |  0.00% )   ( 0.005309s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p26
41.5.0:         ( 0.169664s |  0.01% |  0.03% )   ( 0.005713s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.004235s |  0.00% |  0.00% )   ( 0.004763s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.004067s |  0.00% |  0.00% )   ( 0.004624s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.003696s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003991s |  0.00% |  0.00% )   ( 0.004455s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.037812s |  0.00% |  0.00% )   ( 0.031610s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.003977s |  0.00% |  0.00% )   ( 0.004485s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.004683s |  0.00% |  0.00% )   ( 0.005206s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p26
54.5.0:         ( 0.003582s |  0.00% |  0.00% )   ( 0.004080s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.005692s |  0.00% |  0.00% )   ( 0.004209s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000181s |  0.00% |  0.00% )   ( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000131s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 18.220586s |  1.66% |  3.88% )   ( 17.692456s |  0.88% |  3.92% )    	(25x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.003568s |  0.00% |  0.01% )   ( 0.004074s |  0.00% |  0.02% )    	(25x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.250632s |  0.11% |  6.86% )   ( 1.229752s |  0.06% |  6.95% )    	(25x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.275592s |  0.20% | 12.48% )   ( 2.191793s |  0.10% | 12.38% )    	(25x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.828045s |  0.16% | 10.03% )   ( 1.770550s |  0.08% | 10.00% )    	(25x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 2.259593s |  0.20% | 12.40% )   ( 2.193176s |  0.10% | 12.39% )    	(25x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.629786s |  0.14% |  8.94% )   ( 1.586648s |  0.07% |  8.96% )    	(25x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 1.114869s |  0.10% |  6.11% )   ( 1.082900s |  0.05% |  6.12% )    	(25x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.528306s |  0.04% |  2.89% )   ( 0.511978s |  0.02% |  2.89% )    	(25x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.140949s |  0.10% |  6.26% )   ( 1.129566s |  0.05% |  6.38% )    	(25x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.469743s |  0.04% |  2.57% )   ( 0.445981s |  0.02% |  2.52% )    	(25x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.425115s |  0.12% |  7.82% )   ( 1.406196s |  0.07% |  7.94% )    	(25x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.177384s |  0.28% | 17.43% )   ( 3.143069s |  0.15% | 17.76% )    	(25x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.549855s |  0.05% |  3.01% )   ( 0.512254s |  0.02% |  2.89% )    	(25x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.567149s |  0.05% |  3.11% )   ( 0.484519s |  0.02% |  2.73% )    	(25x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.003808s |  0.00% |  0.00% )   ( 0.004292s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.003513s |  0.00% |  0.00% )   ( 0.004012s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003923s |  0.00% |  0.00% )   ( 0.004400s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
43.5.0:         ( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '\n' 1>&21
44.5.0:         ( 0.000084s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-44.5.0:        ( 0.006211s |  0.00% |  0.03% )   ( 0.006259s |  0.00% |  0.03% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p26\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000158s |  0.00% |  0.00% )   ( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p26_PID})
1016.3.0:       ( 17.417200s |  1.58% |  3.18% )   ( 33.093477s |  1.65% |  3.31% )    	(1x)	│  │  │   << (FUNCTION): main.forkrun.local p27 p27_PID >>
1.4.0:          ( 0.001105s |  0.00% |  0.00% )   ( 0.001131s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─  local p27 p27_PID (&)
24.4.0:         ( 17.415934s |  1.58% | 99.99% )   ( 16.546084s |  0.82% | 49.99% )    	(1x)	│  │  │  │   << (BACKGROUND FORK) >>
24.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─  export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun/forkrun.Ruxbrq"
26.5.0:         ( 0.000163s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   echo "${BASH_PID}" > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p27
30.5.0:         ( 0.054344s |  0.00% |  0.31% )   ( 0.054104s |  0.00% |  0.32% )    	(1x)	│  │  │  │  │   $'trap \': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit; \n[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p27 ]] && \\rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p27; \nprintf \'"\'"\'\\n\'"\'"\' >&21\' EXIT
32.5.0:         ( 0.046546s |  0.00% |  0.26% )   ( 0.045924s |  0.00% |  0.27% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -INT 1270673 ${BASHPID}' INT
33.5.0:         ( 0.047787s |  0.00% |  0.27% )   ( 0.047585s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -TERM 1270673 ${BASHPID}' TERM
34.5.0:         ( 0.047453s |  0.00% |  0.27% )   ( 0.047279s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1; kill -HUP 1270673 ${BASHPID}' HUP
35.5.0:         ( 0.047561s |  0.00% |  0.27% )   ( 0.047344s |  0.00% |  0.28% )    	(1x)	│  │  │  │  │   trap 'trap - TERM INT HUP USR1' USR1
37.5.0:         ( 0.003569s |  0.00% |  0.00% )   ( 0.004001s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   true
38.5.0:         ( 0.003179s |  0.00% |  0.00% )   ( 0.003593s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   ${nLinesAutoFlag}
38.5.1:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   read -r < "/dev/shm/.forkrun/forkrun.Ruxbrq"/.nLines
38.5.2:         ( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   [[ ${REPLY} == +([0-9]) ]]
38.5.3:         ( 0.000157s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesCur=${REPLY}
40.5.0:         ( 0.003879s |  0.00% |  0.00% )   ( 0.004286s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 1 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p27
41.5.0:         ( 0.189066s |  0.01% |  0.05% )   ( 0.005184s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   read -r -u 21 _
42.5.0:         ( 0.003361s |  0.00% |  0.00% )   ( 0.003779s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit ]]
46.5.0:         ( 0.003365s |  0.00% |  0.00% )   ( 0.003789s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.done ]]
46.5.1:         ( 0.002982s |  0.00% |  0.00% )   ( 0.003396s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   doneIndicatorFlag=true
48.5.0:         ( 0.003313s |  0.00% |  0.00% )   ( 0.003733s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   evfd_wait 25
49.5.0:         ( 0.028367s |  0.00% |  0.00% )   ( 0.024966s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
52.5.0:         ( 0.008713s |  0.00% |  0.00% )   ( 0.003748s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   printf '\n' 1>&21
53.5.0:         ( 0.003695s |  0.00% |  0.00% )   ( 0.004118s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   echo 0 > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.wait/p27
54.5.0:         ( 0.003059s |  0.00% |  0.00% )   ( 0.003466s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │   [[ ${#A[@]} == 0 ]]
74.5.0:         ( 0.002926s |  0.00% |  0.00% )   ( 0.003348s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nLinesAutoFlag}
75.5.0:         ( 0.000169s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%s\n' ${#A[@]} >&${fd_nAuto0}
76.5.0:         ( 0.000156s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   (( ${nLinesCur} < 1024 ))
76.5.1:         ( 0.000159s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   nLinesAutoFlag=false
79.5.0:         ( 16.892537s |  1.53% |  4.84% )   ( 16.210702s |  0.81% |  4.89% )    	(20x)	│  │  │  │  │   << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
1.6.0:          ( 0.002560s |  0.00% |  0.01% )   ( 0.002913s |  0.00% |  0.01% )    	(20x)	│  │  │  │  │  ├─  ff "${A[@]}"
24.6.0:         ( 1.095768s |  0.09% |  6.48% )   ( 1.060214s |  0.05% |  6.54% )    	(20x)	│  │  │  │  │  │   sha1sum "${@}"
25.6.0:         ( 2.003032s |  0.18% | 11.85% )   ( 1.944868s |  0.09% | 11.99% )    	(20x)	│  │  │  │  │  │   sha256sum "${@}"
26.6.0:         ( 1.630770s |  0.14% |  9.65% )   ( 1.546978s |  0.07% |  9.54% )    	(20x)	│  │  │  │  │  │   sha512sum "${@}"
27.6.0:         ( 1.953933s |  0.17% | 11.56% )   ( 1.934890s |  0.09% | 11.93% )    	(20x)	│  │  │  │  │  │   sha224sum "${@}"
28.6.0:         ( 1.616562s |  0.14% |  9.56% )   ( 1.526393s |  0.07% |  9.41% )    	(20x)	│  │  │  │  │  │   sha384sum "${@}"
29.6.0:         ( 0.977867s |  0.08% |  5.78% )   ( 0.958177s |  0.04% |  5.91% )    	(20x)	│  │  │  │  │  │   md5sum "${@}"
30.6.0:         ( 0.462809s |  0.04% |  2.73% )   ( 0.436577s |  0.02% |  2.69% )    	(20x)	│  │  │  │  │  │   sum -s "${@}"
31.6.0:         ( 1.108158s |  0.10% |  6.56% )   ( 1.027492s |  0.05% |  6.33% )    	(20x)	│  │  │  │  │  │   sum -r "${@}"
32.6.0:         ( 0.427554s |  0.03% |  2.53% )   ( 0.375844s |  0.01% |  2.31% )    	(20x)	│  │  │  │  │  │   cksum "${@}"
33.6.0:         ( 1.441720s |  0.13% |  8.53% )   ( 1.329182s |  0.06% |  8.19% )    	(20x)	│  │  │  │  │  │   b2sum "${@}"
34.6.0:         ( 3.313320s |  0.30% | 19.61% )   ( 3.235277s |  0.16% | 19.95% )    	(20x)	│  │  │  │  │  │   cksum -a sm3 "${@}"
35.6.0:         ( 0.449440s |  0.04% |  2.66% )   ( 0.425373s |  0.02% |  2.62% )    	(20x)	│  │  │  │  │  │   xxhsum "${@}"
36.6.0:         ( 0.409044s |  0.03% |  2.42% )   ( 0.406524s |  0.02% |  2.50% )    	(20x)	│  │  │  │  │  └─  xxhsum -H3 "${@}"
38.5.1:         ( 0.002982s |  0.00% |  0.00% )   ( 0.003381s |  0.00% |  0.00% )    	(20x)	│  │  │  │  │   ${nSpawnFlag}
74.5.1:         ( 0.002901s |  0.00% |  0.00% )   ( 0.003268s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   ${nSpawnFlag}
77.5.0:         ( 0.003075s |  0.00% |  0.00% )   ( 0.003463s |  0.00% |  0.00% )    	(19x)	│  │  │  │  │   printf '\n' >&${fd_nAuto0}
55.5.0:         ( 0.000152s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
64.5.0:         ( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   ${doneIndicatorFlag}
65.5.0:         ( 0.000150s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf 'x\n' >&${fd_nAuto0}
67.5.0:         ( 0.000173s |  0.00% |  0.00% )   ( 0.000194s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   : > "/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit
68.5.0:         ( 0.000216s |  0.00% |  0.00% )   ( 0.000236s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   printf '%.0s\n' "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p* 1>&21
69.5.0:         ( 0.000145s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │   break
-69.5.0:        ( 0.009073s |  0.00% |  0.05% )   ( 0.009154s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\; $'\n'[[ -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p27\; $'\n'printf '\n' >&21
245.4.0:        ( 0.000161s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─  p_PID+=(${p27_PID})
1018.3.0:       ( 0.000176s |  0.00% |  0.00% )   ( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │   echo "${kkProcs}" > "${tmpDir}"/.nWorkers
1019.3.0:       ( 0.000158s |  0.00% |  0.00% )   ( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │   : > "${tmpDir}"/.spawned
1020.3.0:       ( 0.000137s |  0.00% |  0.00% )   ( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1022.3.0:       ( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 3 ))
1026.3.0:       ( 0.001390s |  0.00% |  0.00% )   ( 0.001406s |  0.00% |  0.00% )    	(1x)	│  │  │   declare -p > "${tmpDir}"/.vars
1027.3.0:       ( 0.000134s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nOrderFlag}
1071.3.0:       ( 0.000134s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1072.3.0:       ( 0.000127s |  0.00% |  0.00% )   ( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
1079.3.0:       ( 24.298886s |  2.21% |  4.43% )   ( 0.001665s |  0.00% |  0.00% )    	(1x)	│  │  │   wait "${p_PID[@]}" &> /dev/null
1081.3.0:       ( 0.000303s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(1x)	│  │  │   (( ${verboseLevel} > 1 ))
1084.3.0:       ( 0.000308s |  0.00% |  0.00% )   ( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │   ${nSpawnFlag}
-1084.3.0:      ( 0.046025s |  0.00% |  0.00% )   ( 0.046180s |  0.00% |  0.00% )    	(1x)	│  │  └─  @TRAP (EXIT): : >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.done\;$'\n': >"/dev/shm/.forkrun/forkrun.Ruxbrq"/.quit\;$'\n'kill -USR1 $(cat </dev/null "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'printf '0\n' >&22\; $'\n'kill $(cat </dev/null "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p* 2>/dev/null) 2>/dev/null\;$'\n'        kill -9 1270687  2>/dev/null\; $'\n'        kill -9 $(cat </dev/null "/dev/shm/.forkrun/forkrun.Ruxbrq"/.run/p* 2>/dev/null) 2>/dev/null\; $'\n'trap - INT TERM HUP USR1\; $'\n'        return ${returnVal:-0}
1085.2.0:       ( 0.000093s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │   wait
-1085.2.0:      ( 0.005073s |  0.00% |  0.00% )   ( 0.002392s |  0.00% |  0.00% )    	(1x)	└─ └─  @TRAP (EXIT): \rm -rf "/dev/shm/.forkrun/forkrun.Ruxbrq" 2>/dev/null

WALL CLOCK TIME: 49.507810s
TOTAL RUN TIME:  1097.106125s
TOTAL CPU TIME:  1996.944124s

