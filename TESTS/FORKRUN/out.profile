LINE.DEPTH.CMD NUMBER 	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>: 	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
______________________	________________________________	________________________________	____________________________________
9.0.0:                 	( 461.367956s | 50.06% )            ( 417.522175s | 49.88% )             	(1x)	<< (FUNCTION): F:0 main >>
├─ 1.1.0:           	( 0.000653s |  0.00% |  0.00% )   ( 0.000320s |  0.00% |  0.00% )    	(1x)	├─ forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:           	( 461.367303s | 99.99% | 50.06% )   ( 417.521855s | 99.99% | 49.88% )    	(1x)	│  << (SUBSHELL) >>
│  ├─ 425.2.0:    	( 0.023184s |  0.00% |  0.00% )   ( 0.023129s |  0.00% |  0.00% )    	(1x)	│  ├─ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  shopt -s extglob
│  │  113.2.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:      	( 0.000127s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:      	( 0.000095s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:      	( 0.000073s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  [[ $# == 0 ]]
│  │  125.2.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  optParseFlag=true
│  │  126.2.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  ${optParseFlag}
│  │  126.2.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  (( $# > 0  ))
│  │  126.2.2:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  [[ "$1" == [-+]* ]]
│  │  323.2.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  [ -t "${fd_stdin0}" ]
│  │  332.2.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${TMPDIR} ]]
│  │  332.2.2:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  [[ -d '/dev/shm' ]]
│  │  332.2.3:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  tmpDirRoot='/dev/shm'
│  │  334.2.0:      	( 0.001376s |  0.00% |  0.00% )   ( 0.001064s |  0.00% |  0.00% )    	(1x)	│  │  tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:      	( 0.007640s |  0.00% |  0.00% )   ( 0.007640s |  0.00% |  0.00% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  └─ 334.3.0: 	( 0.007640s |100.00% |  0.00% )   ( 0.007640s |100.00% |  0.00% )    	(1x)	│  │  └─ mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  fPath="${tmpDir}"/.stdin
│  │  337.2.0:      	( 0.001177s |  0.00% |  0.00% )   ( 0.001253s |  0.00% |  0.00% )    	(1x)	│  │  mkdir -p "${tmpDir}"/.run
│  │  338.2.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  : > "${fPath}"
│  │  340.2.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  ${rmTmpDirFlag}
│  │  340.2.1:      	( 0.014124s |  0.00% |  0.00% )   ( 0.000908s |  0.00% |  0.00% )    	(1x)	│  │  trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:      	( 461.314346s | 99.98% | 50.06% )   ( 417.483914s | 99.99% | 49.88% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  ├─ 348.3.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  ├─ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0: 	( 0.000547s |  0.00% |  0.00% )   ( 0.000646s |  0.00% |  0.00% )    	(6x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 1502.4.0: 	( 0.000547s |100.00% |  0.00% )   ( 0.000646s |100.00% |  0.00% )    	(6x)	│  │  │  └─ :
│  │  │  363.3.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  LC_ALL=C
│  │  │  364.3.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  LANG=C
│  │  │  365.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  IFS=
│  │  │  367.3.0: 	( 0.000235s |  0.00% |  0.00% )   ( 0.000246s |  0.00% |  0.00% )    	(1x)	│  │  │  enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  PID0="${BASHPID}"
│  │  │  375.3.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  shopt -s nullglob
│  │  │  378.3.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0: 	( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  enable lseek &> /dev/null
│  │  │  381.3.0: 	( 0.000081s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekFlag:=true}"
│  │  │  386.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  387.3.0: 	( 0.002986s |  0.00% |  0.00% )   ( 0.003045s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1: 	( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 387.4.0: 	( 0.000106s |100.00% |  0.00% )   ( 0.000120s |100.00% |  0.00% )    	(1x)	│  │  │  └─ lseek $fd_read 0
│  │  │  387.3.2: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekPosFlag:=true}"
│  │  │  391.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  runCmd=("${@//''/}")
│  │  │  398.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  noFuncFlag=false
│  │  │  400.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  401.3.0: 	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  467.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nLines} ]]
│  │  │  467.3.1: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${nLines} ]]
│  │  │  468.3.1: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  nLines=1
│  │  │  472.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0: 	( 0.000883s |  0.00% |  0.00% )   ( 0.001034s |  0.00% |  0.00% )    	(1x)	│  │  │  << (FUNCTION): F:2 main.forkrun >>
│  │  │  ├─ 1.4.0: 	( 0.000057s |  6.45% |  0.00% )   ( 0.000068s |  6.57% |  0.00% )    	(1x)	│  │  │  ├─ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0: 	( 0.000108s | 12.23% |  0.00% )   ( 0.000125s | 12.08% |  0.00% )    	(1x)	│  │  │  │  local +i -l nn
│  │  │  │  9.4.0: 	( 0.000063s |  7.13% |  0.00% )   ( 0.000075s |  7.25% |  0.00% )    	(1x)	│  │  │  │  local vOut
│  │  │  │  11.4.0: 	( 0.000102s | 11.55% |  0.00% )   ( 0.000119s | 11.50% |  0.00% )    	(1x)	│  │  │  │  local -n vOut="$1"
│  │  │  │  12.4.0: 	( 0.000065s |  7.36% |  0.00% )   ( 0.000077s |  7.44% |  0.00% )    	(1x)	│  │  │  │  shift 1
│  │  │  │  13.4.0: 	( 0.000067s |  7.58% |  0.00% )   ( 0.000078s |  7.54% |  0.00% )    	(1x)	│  │  │  │  local -g vOut
│  │  │  │  15.4.0: 	( 0.000059s |  6.68% |  0.00% )   ( 0.000071s |  6.86% |  0.00% )    	(1x)	│  │  │  │  (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1: 	( 0.000114s | 12.91% |  0.00% )   ( 0.000126s | 12.18% |  0.00% )    	(1x)	│  │  │  │  local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0: 	( 0.000062s |  7.02% |  0.00% )   ( 0.000074s |  7.15% |  0.00% )    	(1x)	│  │  │  │  for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0: 	( 0.000060s |  6.79% |  0.00% )   ( 0.000071s |  6.86% |  0.00% )    	(1x)	│  │  │  │  [[ -n ${nn} ]]
│  │  │  │  18.4.1: 	( 0.000061s |  6.90% |  0.00% )   ( 0.000073s |  7.05% |  0.00% )    	(1x)	│  │  │  │  continue
│  │  │  └─ 28.4.0: 	( 0.000065s |  7.36% |  0.00% )   ( 0.000077s |  7.44% |  0.00% )    	(1x)	│  │  │  └─ local +n vOut
│  │  │  483.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  485.3.0: 	( 0.007318s |  0.00% |  0.00% )   ( 0.007384s |  0.00% |  0.00% )    	(1x)	│  │  │  nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1: 	( 0.002467s |  0.00% |  0.00% )   ( 0.002553s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 485.4.0: 	( 0.000449s | 18.20% |  0.00% )   ( 0.000473s | 18.52% |  0.00% )    	(1x)	│  │  │  ├─ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1: 	( 0.002018s | 81.79% |  0.00% )   ( 0.002080s | 81.47% |  0.00% )    	(1x)	│  │  │  └─ nproc
│  │  │  486.3.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nCPU < 1 ))
│  │  │  487.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nProcs} ]]
│  │  │  487.3.1: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  487.3.2: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  nProcs=${nCPU}
│  │  │  489.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.1: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  499.3.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  504.3.1: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < nLines ))
│  │  │  506.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  doneIndicatorFlag=false
│  │  │  509.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.0: 	( 0.000197s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  type -a fallocate &> /dev/null
│  │  │  515.3.1: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.2: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${fallocateFlag:=true}"
│  │  │  518.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${exportOrderFlag}
│  │  │  521.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  522.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  523.3.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nullDelimiterFlag}
│  │  │  544.3.0: 	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${delimiterVal} ]]
│  │  │  545.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0: 	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  546.3.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  557.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${unescapeFlag}
│  │  │  566.3.0: 	( 0.003551s |  0.00% |  0.00% )   ( 0.003664s |  0.00% |  0.00% )    	(1x)	│  │  │  mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1: 	( 0.000103s |  0.00% |  0.00% )   ( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 566.4.0: 	( 0.000103s |100.00% |  0.00% )   ( 0.000119s |100.00% |  0.00% )    	(1x)	│  │  │  └─ printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringFlag}
│  │  │  570.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringIDFlag}
│  │  │  576.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  nLinesCur=${nLines}
│  │  │  578.3.0: 	( 0.001752s |  0.00% |  0.00% )   ( 0.001827s |  0.00% |  0.00% )    	(1x)	│  │  │  mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  582.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${rmTmpDirFlag}
│  │  │  584.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 0 ))
│  │  │  615.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  evfd_init
│  │  │  622.3.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  628.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  638.3.0: 	( 0.000554s |  0.00% |  0.00% )   ( 0.000572s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0: 	( 0.078998s |  0.01% |  0.00% )   ( 0.078906s |  0.01% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 644.4.0: 	( 0.000077s |  0.09% |  0.00% )   ( 0.000089s |  0.11% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0: 	( 0.011240s | 14.22% |  0.00% )   ( 0.011221s | 14.22% |  0.00% )    	(1x)	│  │  │  │  trap - EXIT
│  │  │  │  647.4.0: 	( 0.012048s | 15.25% |  0.00% )   ( 0.012033s | 15.24% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0: 	( 0.012142s | 15.37% |  0.00% )   ( 0.012124s | 15.36% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0: 	( 0.012248s | 15.50% |  0.00% )   ( 0.012218s | 15.48% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0: 	( 0.012050s | 15.25% |  0.00% )   ( 0.012027s | 15.24% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0: 	( 0.000059s |  0.07% |  0.00% )   ( 0.000069s |  0.08% |  0.00% )    	(1x)	│  │  │  │  case ${writeFileProgType} in
│  │  │  │  653.4.0: 	( 0.018902s | 23.92% |  0.00% )   ( 0.018859s | 23.90% |  0.00% )    	(1x)	│  │  │  │  evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0: 	( 0.000087s |  0.11% |  0.00% )   ( 0.000099s |  0.12% |  0.00% )    	(1x)	│  │  │  │  : > "${tmpDir}"/.done
│  │  │  │  659.4.0: 	( 0.000070s |  0.08% |  0.00% )   ( 0.000081s |  0.10% |  0.00% )    	(1x)	│  │  │  │  evfd_signal
│  │  │  └─ 660.4.0: 	( 0.000075s |  0.09% |  0.00% )   ( 0.000086s |  0.10% |  0.00% )    	(1x)	│  │  │  └─ (( ${verboseLevel} > 1 ))
│  │  │  668.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  715.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  outStr='>&'"${fd_stdout}"
│  │  │  719.3.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  721.3.0: 	( 0.000420s |  0.00% |  0.00% )   ( 0.000446s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0: 	( 3.590300s |  0.77% |  0.38% )   ( 1.710849s |  0.40% |  0.20% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 731.4.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0: 	( 0.014140s |  0.39% |  0.00% )   ( 0.014097s |  0.82% |  0.00% )    	(1x)	│  │  │  │  trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0: 	( 0.012119s |  0.33% |  0.00% )   ( 0.012101s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0: 	( 0.012184s |  0.33% |  0.00% )   ( 0.012168s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0: 	( 0.012222s |  0.34% |  0.00% )   ( 0.012204s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0: 	( 0.012034s |  0.33% |  0.00% )   ( 0.012017s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  740.4.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0: 	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fd_read_pos_old=0
│  │  │  │  743.4.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=0
│  │  │  │  745.4.0: 	( 0.085912s |  0.00% |  0.00% )   ( 0.098833s |  0.00% |  0.01% )    	(675x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  747.4.0: 	( 2.174496s |  0.08% |  0.23% )   ( 0.113538s |  0.00% |  0.01% )    	(674x)	│  │  │  │  read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1: 	( 0.000995s |  0.00% |  0.00% )   ( 0.001127s |  0.00% |  0.00% )    	(6x)	│  │  │  │  continue
│  │  │  │  749.4.0: 	( 0.083469s |  0.00% |  0.00% )   ( 0.096389s |  0.00% |  0.01% )    	(668x)	│  │  │  │  case ${REPLY} in
│  │  │  │  763.4.0: 	( 0.089467s |  0.00% |  0.00% )   ( 0.096381s |  0.00% |  0.01% )    	(667x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  764.4.0: 	( 0.000190s |  0.00% |  0.00% )   ( 0.000221s |  0.01% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  767.4.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0: 	( 0.083523s |  0.00% |  0.00% )   ( 0.096420s |  0.00% |  0.01% )    	(668x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  774.4.0: 	( 0.086879s |  0.00% |  0.00% )   ( 0.099675s |  0.00% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0: 	( 0.086184s |  0.00% |  0.00% )   ( 0.098942s |  0.00% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0: 	( 0.082577s |  0.00% |  0.00% )   ( 0.095355s |  0.00% |  0.01% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  782.4.1: 	( 0.000147s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0: 	( 0.083142s |  0.00% |  0.00% )   ( 0.095735s |  0.00% |  0.01% )    	(668x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  786.4.0: 	( 0.083293s |  0.00% |  0.00% )   ( 0.096073s |  0.00% |  0.01% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  788.4.0: 	( 0.000109s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  790.4.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0: 	( 0.008625s |  0.24% |  0.00% )   ( 0.009274s |  0.54% |  0.00% )    	(1x)	│  │  │  │  mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1: 	( 0.004278s |  0.11% |  0.00% )   ( 0.004809s |  0.28% |  0.00% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 791.5.0: 	( 0.004278s |100.00% |  0.00% )   ( 0.004809s |100.00% |  0.00% )    	(1x)	│  │  │  │  ├─ : | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  └─ 791.5.1: 	( 0.001840s | 43.01% |  0.00% )   ( 0.002380s | 49.49% |  0.00% )    	(1x)	│  │  │  │  └─ cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0: 	( 0.000153s |  0.00% |  0.00% )   ( 0.000173s |  0.01% |  0.00% )    	(1x)	│  │  │  │  nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=${nLinesMax}
│  │  │  │  800.4.2: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000174s |  0.01% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  802.4.0: 	( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0: 	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesCur=${nLinesNew}
│  │  │  │  811.4.0: 	( 0.083053s |  0.00% |  0.00% )   ( 0.095937s |  0.00% |  0.01% )    	(668x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  812.4.0: 	( 0.082042s |  0.00% |  0.00% )   ( 0.094941s |  0.00% |  0.01% )    	(668x)	│  │  │  │  case ${nWait} in
│  │  │  │  823.4.0: 	( 0.080270s |  0.00% |  0.00% )   ( 0.092512s |  0.00% |  0.01% )    	(647x)	│  │  │  │  ((nWait--))
│  │  │  │  828.4.0: 	( 0.085968s |  0.00% |  0.00% )   ( 0.099005s |  0.00% |  0.01% )    	(668x)	│  │  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1: 	( 0.083881s |  0.00% |  0.00% )   ( 0.096811s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  782.4.1: 	( 0.083639s |  0.00% |  0.00% )   ( 0.096385s |  0.00% |  0.01% )    	(667x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  814.4.0: 	( 0.002642s |  0.00% |  0.00% )   ( 0.003046s |  0.00% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0: 	( 0.002665s |  0.00% |  0.00% )   ( 0.003087s |  0.00% |  0.00% )    	(21x)	│  │  │  │  (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0: 	( 0.054313s |  0.06% |  0.00% )   ( 0.045965s |  0.12% |  0.00% )    	(21x)	│  │  │  │  fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0: 	( 0.002750s |  0.00% |  0.00% )   ( 0.003162s |  0.00% |  0.00% )    	(21x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0: 	( 0.002658s |  0.00% |  0.00% )   ( 0.003072s |  0.00% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0: 	( 0.002739s |  0.00% |  0.00% )   ( 0.003152s |  0.00% |  0.00% )    	(21x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0: 	( 0.000112s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  829.4.0: 	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  830.4.0: 	( 0.000107s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fallocateFlag=false
│  │  │  │  831.4.0: 	( 0.000109s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nSpawnFlag=false
│  │  │  │  745.4.1: 	( 0.000110s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  745.4.2: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ -248.4.0: 	( 0.005440s |  0.15% |  0.00% )   ( 0.005518s |  0.32% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.KPtvk5"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.KPtvk5"/.run/pAuto'
│  │  │  839.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0: 	( 0.000091s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1345.3.0: 	( 0.001962s |  0.00% |  0.00% )   ( 0.001231s |  0.00% |  0.00% )    	(1x)	│  │  │  coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0: 	( 0.008533s |  0.00% |  0.00% )   ( 0.009811s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0: 	( 0.000417s |  4.88% |  0.00% )   ( 0.000463s |  4.71% |  0.00% )    	(1x)	│  │  │  ├─ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0: 	( 0.000066s |  0.77% |  0.00% )   ( 0.000078s |  0.79% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1363.4.1: 	( 0.000074s |  0.86% |  0.00% )   ( 0.000086s |  0.87% |  0.00% )    	(1x)	│  │  │  │  echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0: 	( 0.000214s |  2.50% |  0.00% )   ( 0.000227s |  2.31% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0: 	( 0.000073s |  0.85% |  0.00% )   ( 0.000085s |  0.86% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1444.4.0: 	( 0.000059s |  0.69% |  0.00% )   ( 0.000070s |  0.71% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0: 	( 0.000063s |  0.73% |  0.00% )   ( 0.000075s |  0.76% |  0.00% )    	(1x)	│  │  │  │  echo "{"
│  │  │  │  1448.4.0: 	( 0.000062s |  0.72% |  0.00% )   ( 0.000074s |  0.75% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1449.4.0: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1449.4.1: 	( 0.000066s |  0.77% |  0.00% )   ( 0.000078s |  0.79% |  0.00% )    	(1x)	│  │  │  │  echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0: 	( 0.000065s |  0.76% |  0.00% )   ( 0.000076s |  0.77% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "mapfile"
│  │  │  │  1451.4.0: 	( 0.000060s |  0.70% |  0.00% )   ( 0.000071s |  0.72% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1451.4.1: 	( 0.000063s |  0.73% |  0.00% )   ( 0.000074s |  0.75% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1452.4.0: 	( 0.000065s |  0.76% |  0.00% )   ( 0.000076s |  0.77% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0: 	( 0.000059s |  0.69% |  0.00% )   ( 0.000070s |  0.71% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1453.4.1: 	( 0.000065s |  0.76% |  0.00% )   ( 0.000076s |  0.77% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' ${fd_read}
│  │  │  │  1454.4.0: 	( 0.000062s |  0.72% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1454.4.1: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000072s |  0.73% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1456.4.0: 	( 0.000065s |  0.76% |  0.00% )   ( 0.000076s |  0.77% |  0.00% )    	(1x)	│  │  │  │  echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0: 	( 0.000060s |  0.70% |  0.00% )   ( 0.000072s |  0.73% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1457.4.1: 	( 0.000063s |  0.73% |  0.00% )   ( 0.000072s |  0.73% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1457.4.2: 	( 0.000063s |  0.73% |  0.00% )   ( 0.000074s |  0.75% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000072s |  0.73% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1461.4.0: 	( 0.000072s |  0.84% |  0.00% )   ( 0.000081s |  0.82% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0: 	( 0.000063s |  0.73% |  0.00% )   ( 0.000074s |  0.75% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1465.4.0: 	( 0.000067s |  0.78% |  0.00% )   ( 0.000079s |  0.80% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0: 	( 0.000064s |  0.75% |  0.00% )   ( 0.000075s |  0.76% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0: 	( 0.000070s |  0.82% |  0.00% )   ( 0.000081s |  0.82% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0: 	( 0.000067s |  0.78% |  0.00% )   ( 0.000078s |  0.79% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0: 	( 0.000064s |  0.75% |  0.00% )   ( 0.000075s |  0.76% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1510.4.1: 	( 0.000066s |  0.77% |  0.00% )   ( 0.000077s |  0.78% |  0.00% )    	(1x)	│  │  │  │  printf '\n'
│  │  │  │  1511.4.0: 	( 0.000062s |  0.72% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0: 	( 0.000094s |  1.10% |  0.00% )   ( 0.000105s |  1.07% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1514.4.0: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1514.4.1: 	( 0.000062s |  0.72% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1514.4.2: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000071s |  0.72% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1514.4.3: 	( 0.000096s |  1.12% |  0.00% )   ( 0.000104s |  1.06% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1515.4.0: 	( 0.000071s |  0.83% |  0.00% )   ( 0.000083s |  0.84% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0: 	( 0.000084s |  0.98% |  0.00% )   ( 0.000096s |  0.97% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0: 	( 0.000064s |  0.75% |  0.00% )   ( 0.000077s |  0.78% |  0.00% )    	(1x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  1532.4.0: 	( 0.000088s |  1.03% |  0.00% )   ( 0.000099s |  1.00% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0: 	( 0.000074s |  0.86% |  0.00% )   ( 0.000086s |  0.87% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0: 	( 0.000061s |  0.71% |  0.00% )   ( 0.000073s |  0.74% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1544.4.1: 	( 0.000082s |  0.96% |  0.00% )   ( 0.000093s |  0.94% |  0.00% )    	(1x)	│  │  │  │  echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0: 	( 0.000066s |  0.77% |  0.00% )   ( 0.000078s |  0.79% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1546.4.0: 	( 0.000065s |  0.76% |  0.00% )   ( 0.000076s |  0.77% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  1551.4.0: 	( 0.000092s |  1.07% |  0.00% )   ( 0.000111s |  1.13% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0: 	( 0.000062s |  0.72% |  0.00% )   ( 0.000074s |  0.75% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1556.4.0: 	( 0.000073s |  0.85% |  0.00% )   ( 0.000084s |  0.85% |  0.00% )    	(1x)	│  │  │  │  echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0: 	( 0.000123s |  1.44% |  0.00% )   ( 0.000144s |  1.46% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1557.4.1: 	( 0.000131s |  1.53% |  0.00% )   ( 0.000148s |  1.50% |  0.00% )    	(1x)	│  │  │  │  printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0: 	( 0.000173s |  2.02% |  0.00% )   ( 0.000195s |  1.98% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1562.4.1: 	( 0.000171s |  2.00% |  0.00% )   ( 0.000197s |  2.00% |  0.00% )    	(1x)	│  │  │  │  printf '%s' ' || '
│  │  │  │  1563.4.0: 	( 0.000152s |  1.78% |  0.00% )   ( 0.000176s |  1.79% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1563.4.1: 	( 0.000206s |  2.41% |  0.00% )   ( 0.000232s |  2.36% |  0.00% )    	(1x)	│  │  │  │  echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0: 	( 0.000146s |  1.71% |  0.00% )   ( 0.000170s |  1.73% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1564.4.1: 	( 0.000147s |  1.72% |  0.00% )   ( 0.000174s |  1.77% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1564.4.2: 	( 0.000182s |  2.13% |  0.00% )   ( 0.000203s |  2.06% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1564.4.3: 	( 0.000159s |  1.86% |  0.00% )   ( 0.000183s |  1.86% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1572.4.0: 	( 0.000151s |  1.76% |  0.00% )   ( 0.000176s |  1.79% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1572.4.1: 	( 0.000186s |  2.17% |  0.00% )   ( 0.000209s |  2.13% |  0.00% )    	(1x)	│  │  │  │  echo '{'
│  │  │  │  1573.4.0: 	( 0.000145s |  1.69% |  0.00% )   ( 0.000170s |  1.73% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1573.4.1: 	( 0.000164s |  1.92% |  0.00% )   ( 0.000190s |  1.93% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1574.4.0: 	( 0.000156s |  1.82% |  0.00% )   ( 0.000178s |  1.81% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1575.4.0: 	( 0.000221s |  2.58% |  0.00% )   ( 0.000248s |  2.52% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0: 	( 0.000145s |  1.69% |  0.00% )   ( 0.000168s |  1.71% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1583.4.0: 	( 0.000167s |  1.95% |  0.00% )   ( 0.000189s |  1.92% |  0.00% )    	(1x)	│  │  │  │  ${stdinRunFlag}
│  │  │  │  1586.4.0: 	( 0.000144s |  1.68% |  0.00% )   ( 0.000169s |  1.72% |  0.00% )    	(1x)	│  │  │  │  ${noFuncFlag}
│  │  │  │  1589.4.0: 	( 0.000149s |  1.74% |  0.00% )   ( 0.000172s |  1.75% |  0.00% )    	(1x)	│  │  │  │  ${substituteStringFlag}
│  │  │  │  1590.4.0: 	( 0.000210s |  2.46% |  0.00% )   ( 0.000228s |  2.32% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0: 	( 0.000156s |  1.82% |  0.00% )   ( 0.000179s |  1.82% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0: 	( 0.000154s |  1.80% |  0.00% )   ( 0.000178s |  1.81% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1608.4.0: 	( 0.000153s |  1.79% |  0.00% )   ( 0.000175s |  1.78% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1608.4.1: 	( 0.000157s |  1.83% |  0.00% )   ( 0.000183s |  1.86% |  0.00% )    	(1x)	│  │  │  │  printf '\n%s ' '}'
│  │  │  │  1609.4.0: 	( 0.000162s |  1.89% |  0.00% )   ( 0.000187s |  1.90% |  0.00% )    	(1x)	│  │  │  │  echo "${outStr}"
│  │  │  │  1610.4.0: 	( 0.000162s |  1.89% |  0.00% )   ( 0.000183s |  1.86% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1611.4.0: 	( 0.000160s |  1.87% |  0.00% )   ( 0.000186s |  1.89% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ 1616.4.0: 	( 0.000183s |  2.14% |  0.00% )   ( 0.000209s |  2.13% |  0.00% )    	(1x)	│  │  │  └─ echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0: 	( 0.000301s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1355.3.0: 	( 0.000298s |  0.00% |  0.00% )   ( 0.000339s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0: 	( 0.012683s |  0.00% |  0.00% )   ( 0.012655s |  0.00% |  0.00% )    	(1x)	│  │  │  trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0: 	( 0.012274s |  0.00% |  0.00% )   ( 0.012150s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0: 	( 0.012113s |  0.00% |  0.00% )   ( 0.011961s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0: 	( 0.012173s |  0.00% |  0.00% )   ( 0.012051s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0: 	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0: 	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1393.3.0: 	( 0.000090s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '\n' >&${fd_continue}
│  │  │  1396.3.0: 	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1397.3.0: 	( 0.000058s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │  ((kkProcs=0 ))
│  │  │  1397.3.1: 	( 0.002761s |  0.00% |  0.00% )   ( 0.003180s |  0.00% |  0.00% )    	(29x)	│  │  │  ((kkProcs<28 ))
│  │  │  1398.3.0: 	( 0.002598s |  0.00% |  0.00% )   ( 0.003011s |  0.00% |  0.00% )    	(28x)	│  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0: 	( 81.130657s |  3.51% |  8.80% )   ( 76.821310s |  3.67% |  9.17% )    	(5x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.003065s |  0.00% |  0.00% )   ( 0.003146s |  0.00% |  0.00% )    	(5x)	│  │  │  ├─ local p0 p0_PID (&)
│  │  │  │  73.4.0: 	( 81.127176s | 99.99% |  8.80% )   ( 76.817688s | 99.99% |  9.17% )    	(5x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.001168s |  0.00% |  0.00% )   ( 0.001329s |  0.00% |  0.00% )    	(5x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.KPtvk5"
│  │  │  │  │  8.5.0: 	( 0.001017s |  0.00% |  0.00% )   ( 0.001141s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.KPtvk5"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.065829s |  0.07% |  0.00% )   ( 0.065722s |  0.08% |  0.00% )    	(5x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.KPtvk5"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.KPtvk5"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.KPtvk5"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.061951s |  0.07% |  0.00% )   ( 0.061859s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 700788 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.062334s |  0.07% |  0.00% )   ( 0.062236s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 700788 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.062409s |  0.07% |  0.00% )   ( 0.062307s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 700788 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.062346s |  0.07% |  0.00% )   ( 0.062247s |  0.07% |  0.00% )    	(5x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.020846s |  0.00% |  0.00% )   ( 0.023578s |  0.00% |  0.00% )    	(137x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.018341s |  0.00% |  0.00% )   ( 0.020977s |  0.00% |  0.00% )    	(137x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000953s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.KPtvk5"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000748s |  0.00% |  0.00% )   ( 0.000877s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000701s |  0.00% |  0.00% )   ( 0.000823s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.022810s |  0.00% |  0.00% )   ( 0.025611s |  0.00% |  0.00% )    	(137x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.KPtvk5"/.wait/p0
│  │  │  │  │  23.5.0: 	( 1.613115s |  0.07% |  0.17% )   ( 0.030065s |  0.00% |  0.00% )    	(137x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.019174s |  0.00% |  0.00% )   ( 0.021877s |  0.00% |  0.00% )    	(137x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.021005s |  0.00% |  0.00% )   ( 0.020794s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.017387s |  0.00% |  0.00% )   ( 0.019919s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.017945s |  0.00% |  0.00% )   ( 0.020519s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.160452s |  0.00% |  0.01% )   ( 0.155746s |  0.00% |  0.01% )    	(132x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.017312s |  0.00% |  0.00% )   ( 0.019914s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.017038s |  0.00% |  0.00% )   ( 0.019595s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.028649s |  0.00% |  0.00% )   ( 0.020902s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.021118s |  0.00% |  0.00% )   ( 0.023730s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.KPtvk5"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.016643s |  0.00% |  0.00% )   ( 0.019142s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.016218s |  0.00% |  0.00% )   ( 0.018715s |  0.00% |  0.00% )    	(132x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000843s |  0.00% |  0.00% )   ( 0.000976s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000772s |  0.00% |  0.00% )   ( 0.000906s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 78.696230s |  3.66% |  8.53% )   ( 75.945396s |  3.73% |  9.07% )    	(132x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.015889s |  0.03% |  0.00% )   ( 0.018530s |  0.03% |  0.00% )    	(132x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 5.360304s |  6.87% |  0.58% )   ( 5.233521s |  6.97% |  0.62% )    	(132x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 8.818629s | 10.23% |  0.95% )   ( 8.488921s | 10.25% |  1.01% )    	(132x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 7.437035s |  9.51% |  0.80% )   ( 7.137903s |  9.45% |  0.85% )    	(132x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 8.617516s | 10.10% |  0.93% )   ( 8.400539s | 10.19% |  1.00% )    	(132x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 7.120703s |  9.04% |  0.77% )   ( 6.948580s |  9.10% |  0.83% )    	(132x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 4.972563s |  6.53% |  0.53% )   ( 4.793416s |  6.52% |  0.57% )    	(132x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 2.782696s |  4.27% |  0.30% )   ( 2.645951s |  4.27% |  0.31% )    	(132x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 5.163902s |  6.50% |  0.56% )   ( 4.927322s |  6.39% |  0.58% )    	(132x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 2.487656s |  4.12% |  0.26% )   ( 2.369135s |  4.10% |  0.28% )    	(132x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 6.691841s |  8.77% |  0.72% )   ( 6.340291s |  8.62% |  0.75% )    	(132x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 13.744055s | 14.92% |  1.49% )   ( 13.362663s | 14.92% |  1.59% )    	(132x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 2.743262s |  4.43% |  0.29% )   ( 2.674927s |  4.51% |  0.31% )    	(132x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 2.740179s |  4.54% |  0.29% )   ( 2.603697s |  4.52% |  0.31% )    	(132x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000549s |  0.00% |  0.00% )   ( 0.000630s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.017878s |  0.00% |  0.00% )   ( 0.020444s |  0.00% |  0.00% )    	(127x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.015839s |  0.00% |  0.00% )   ( 0.018189s |  0.00% |  0.00% )    	(122x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.017613s |  0.00% |  0.00% )   ( 0.020011s |  0.00% |  0.00% )    	(122x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000512s |  0.00% |  0.00% )   ( 0.000579s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000439s |  0.00% |  0.00% )   ( 0.000506s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.028992s |  0.03% |  0.00% )   ( 0.029348s |  0.03% |  0.00% )    	(5x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0: 	( 0.000416s |  0.00% |  0.00% )   ( 0.000476s |  0.00% |  0.00% )    	(5x)	│  │  │  └─ p_PID+=(${p0_PID})
│  │  │  1397.3.0: 	( 0.002668s |  0.00% |  0.00% )   ( 0.003037s |  0.00% |  0.00% )    	(28x)	│  │  │  ((kkProcs++ ))
│  │  │  1399.3.0: 	( 15.213540s |  3.29% |  1.65% )   ( 14.080013s |  3.37% |  1.68% )    	(1x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.000591s |  0.00% |  0.00% )   ( 0.000609s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p4 p4_PID (&)
│  │  │  │  73.4.0: 	( 15.212864s | 99.99% |  1.65% )   ( 14.079306s | 99.99% |  1.68% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000226s |  0.00% |  0.00% )   ( 0.000258s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.KPtvk5"
│  │  │  │  │  8.5.0: 	( 0.000249s |  0.00% |  0.00% )   ( 0.000281s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.KPtvk5"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.014106s |  0.09% |  0.00% )   ( 0.014088s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.KPtvk5"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.KPtvk5"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.KPtvk5"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012457s |  0.08% |  0.00% )   ( 0.012438s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 700788 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012445s |  0.08% |  0.00% )   ( 0.012426s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 700788 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012436s |  0.08% |  0.00% )   ( 0.012415s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 700788 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012447s |  0.08% |  0.00% )   ( 0.012428s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004135s |  0.00% |  0.00% )   ( 0.004683s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.003491s |  0.00% |  0.00% )   ( 0.004006s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000162s |  0.00% |  0.00% )   ( 0.000185s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.KPtvk5"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000128s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.004576s |  0.00% |  0.00% )   ( 0.005136s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.KPtvk5"/.wait/p4
│  │  │  │  │  23.5.0: 	( 0.457895s |  0.10% |  0.04% )   ( 0.006504s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.003997s |  0.00% |  0.00% )   ( 0.004532s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003644s |  0.00% |  0.00% )   ( 0.004181s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003546s |  0.00% |  0.00% )   ( 0.004056s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003657s |  0.00% |  0.00% )   ( 0.004198s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.030108s |  0.00% |  0.00% )   ( 0.030576s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003537s |  0.00% |  0.00% )   ( 0.004046s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003357s |  0.00% |  0.00% )   ( 0.003841s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.006772s |  0.00% |  0.00% )   ( 0.004393s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.004480s |  0.00% |  0.00% )   ( 0.005050s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.KPtvk5"/.wait/p4
│  │  │  │  │  48.5.0: 	( 0.003531s |  0.00% |  0.00% )   ( 0.004093s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.003429s |  0.00% |  0.00% )   ( 0.003962s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 14.585625s |  3.68% |  1.58% )   ( 13.900509s |  3.79% |  1.66% )    	(26x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.003068s |  0.02% |  0.00% )   ( 0.003573s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 0.973403s |  6.86% |  0.10% )   ( 0.940708s |  6.91% |  0.11% )    	(26x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 1.617520s | 10.09% |  0.17% )   ( 1.539691s | 10.20% |  0.18% )    	(26x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 1.390413s |  9.36% |  0.15% )   ( 1.332644s |  9.47% |  0.15% )    	(26x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 1.584302s | 10.08% |  0.17% )   ( 1.524428s | 10.08% |  0.18% )    	(26x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 1.314052s |  9.00% |  0.14% )   ( 1.273071s |  9.08% |  0.15% )    	(26x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 0.951791s |  6.79% |  0.10% )   ( 0.851870s |  6.46% |  0.10% )    	(26x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 0.561177s |  4.55% |  0.06% )   ( 0.502818s |  4.30% |  0.06% )    	(26x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 0.968414s |  6.56% |  0.10% )   ( 0.882954s |  6.26% |  0.10% )    	(26x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 0.471596s |  4.09% |  0.05% )   ( 0.454695s |  4.12% |  0.05% )    	(26x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 1.196280s |  8.51% |  0.12% )   ( 1.173334s |  8.71% |  0.14% )    	(26x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 2.483019s | 14.94% |  0.26% )   ( 2.388426s | 15.01% |  0.28% )    	(26x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 0.530054s |  4.48% |  0.05% )   ( 0.524545s |  4.64% |  0.06% )    	(26x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 0.540536s |  4.52% |  0.05% )   ( 0.507752s |  4.58% |  0.06% )    	(26x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.003515s |  0.00% |  0.00% )   ( 0.004001s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.003145s |  0.00% |  0.00% )   ( 0.003634s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.006785s |  0.00% |  0.00% )   ( 0.004100s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000104s |  0.00% |  0.00% )   ( 0.000121s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000113s |  0.00% |  0.00% )   ( 0.000130s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000090s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  : > "/dev/shm/.forkrun.KPtvk5"/.quit
│  │  │  │  │  62.5.0: 	( 0.000131s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.KPtvk5"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000142s |  0.00% |  0.00% )   ( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.007815s |  0.05% |  0.00% )   ( 0.007799s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0: 	( 0.000085s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p4_PID})
│  │  │  1399.3.0: 	( 327.361546s |  3.37% | 35.52% )   ( 310.607195s |  3.53% | 37.11% )    	(21x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.018271s |  0.00% |  0.00% )   ( 0.018595s |  0.00% |  0.00% )    	(21x)	│  │  │  ├─ local p6 p6_PID (&)
│  │  │  │  73.4.0: 	( 327.340611s | 99.99% | 35.52% )   ( 310.585597s | 99.99% | 37.10% )    	(21x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003273s |  0.00% |  0.00% )   ( 0.003696s |  0.00% |  0.00% )    	(21x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.KPtvk5"
│  │  │  │  │  8.5.0: 	( 0.005872s |  0.00% |  0.00% )   ( 0.003254s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.KPtvk5"/.run/p6
│  │  │  │  │  12.5.0: 	( 0.416622s |  0.12% |  0.04% )   ( 0.393999s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.KPtvk5"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.KPtvk5"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.KPtvk5"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.407139s |  0.12% |  0.04% )   ( 0.404872s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 700788 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.395705s |  0.11% |  0.04% )   ( 0.394442s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 700788 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.397676s |  0.11% |  0.04% )   ( 0.396480s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 700788 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.403121s |  0.11% |  0.04% )   ( 0.401796s |  0.12% |  0.04% )    	(21x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.079982s |  0.00% |  0.00% )   ( 0.090389s |  0.00% |  0.01% )    	(505x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.069681s |  0.00% |  0.00% )   ( 0.079694s |  0.00% |  0.00% )    	(505x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002594s |  0.00% |  0.00% )   ( 0.002947s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.KPtvk5"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002154s |  0.00% |  0.00% )   ( 0.002496s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002154s |  0.00% |  0.00% )   ( 0.002506s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.086742s |  0.00% |  0.00% )   ( 0.097143s |  0.00% |  0.01% )    	(505x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.KPtvk5"/.wait/p6
│  │  │  │  │  23.5.0: 	( 5.739541s |  0.06% |  0.62% )   ( 0.113941s |  0.00% |  0.01% )    	(505x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.075859s |  0.00% |  0.00% )   ( 0.083839s |  0.00% |  0.01% )    	(505x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.077964s |  0.00% |  0.00% )   ( 0.077952s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.065230s |  0.00% |  0.00% )   ( 0.074851s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.069107s |  0.00% |  0.00% )   ( 0.078751s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.586029s |  0.00% |  0.06% )   ( 0.577695s |  0.00% |  0.06% )    	(484x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.064655s |  0.00% |  0.00% )   ( 0.074290s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.063915s |  0.00% |  0.00% )   ( 0.073392s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.132360s |  0.00% |  0.01% )   ( 0.080080s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.082829s |  0.00% |  0.00% )   ( 0.089857s |  0.00% |  0.01% )    	(484x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.KPtvk5"/.wait/p6
│  │  │  │  │  48.5.0: 	( 0.063576s |  0.00% |  0.00% )   ( 0.073076s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.062628s |  0.00% |  0.00% )   ( 0.072004s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002319s |  0.00% |  0.00% )   ( 0.002640s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002114s |  0.00% |  0.00% )   ( 0.002458s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002249s |  0.00% |  0.00% )   ( 0.002607s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 317.635181s |  4.20% | 34.46% )   ( 306.471680s |  4.27% | 36.61% )    	(484x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.060144s |  0.02% |  0.00% )   ( 0.069850s |  0.02% |  0.00% )    	(484x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 21.398327s |  6.84% |  2.32% )   ( 20.599246s |  6.85% |  2.46% )    	(484x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 35.978325s | 10.27% |  3.90% )   ( 34.942802s | 10.35% |  4.17% )    	(484x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 30.368714s |  9.60% |  3.29% )   ( 29.314584s |  9.61% |  3.50% )    	(484x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 36.014275s | 10.29% |  3.90% )   ( 34.731474s | 10.27% |  4.14% )    	(484x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 29.284644s |  9.13% |  3.17% )   ( 28.337033s |  9.16% |  3.38% )    	(484x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 19.695650s |  6.47% |  2.13% )   ( 18.806633s |  6.42% |  2.24% )    	(484x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 10.667615s |  4.26% |  1.15% )   ( 10.218570s |  4.25% |  1.22% )    	(484x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 20.574124s |  6.37% |  2.23% )   ( 19.637037s |  6.31% |  2.34% )    	(484x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 9.608051s |  4.03% |  1.04% )   ( 8.999679s |  3.95% |  1.07% )    	(484x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 26.591397s |  8.75% |  2.88% )   ( 25.639158s |  8.74% |  3.06% )    	(484x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 56.392205s | 14.95% |  6.11% )   ( 55.017496s | 15.01% |  6.57% )    	(484x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 10.642487s |  4.45% |  1.15% )   ( 10.258810s |  4.47% |  1.22% )    	(484x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 10.359223s |  4.44% |  1.12% )   ( 9.899308s |  4.44% |  1.18% )    	(484x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.067792s |  0.00% |  0.00% )   ( 0.077501s |  0.00% |  0.00% )    	(484x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.060940s |  0.00% |  0.00% )   ( 0.070056s |  0.00% |  0.00% )    	(463x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.078754s |  0.00% |  0.00% )   ( 0.078415s |  0.00% |  0.00% )    	(463x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002203s |  0.00% |  0.00% )   ( 0.002527s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002349s |  0.00% |  0.00% )   ( 0.002700s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.130302s |  0.03% |  0.01% )   ( 0.131571s |  0.03% |  0.01% )    	(21x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0: 	( 0.002664s |  0.00% |  0.00% )   ( 0.003003s |  0.00% |  0.00% )    	(21x)	│  │  │  └─ p_PID+=(${p6_PID})
│  │  │  1399.3.0: 	( 15.064616s |  3.26% |  1.63% )   ( 14.083057s |  3.37% |  1.68% )    	(1x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.001005s |  0.00% |  0.00% )   ( 0.001024s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p17 p17_PID (&)
│  │  │  │  73.4.0: 	( 15.063467s | 99.99% |  1.63% )   ( 14.081870s | 99.99% |  1.68% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000088s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.KPtvk5"
│  │  │  │  │  8.5.0: 	( 0.000089s |  0.00% |  0.00% )   ( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.KPtvk5"/.run/p17
│  │  │  │  │  12.5.0: 	( 0.017914s |  0.11% |  0.00% )   ( 0.017837s |  0.12% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.KPtvk5"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.KPtvk5"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.KPtvk5"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.021091s |  0.14% |  0.00% )   ( 0.021021s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 700788 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.014560s |  0.09% |  0.00% )   ( 0.014531s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 700788 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.014572s |  0.09% |  0.00% )   ( 0.014536s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 700788 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012652s |  0.08% |  0.00% )   ( 0.012619s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004037s |  0.00% |  0.00% )   ( 0.004580s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.003600s |  0.00% |  0.00% )   ( 0.004110s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000135s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.KPtvk5"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.004639s |  0.00% |  0.00% )   ( 0.005200s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.KPtvk5"/.wait/p17
│  │  │  │  │  23.5.0: 	( 0.313970s |  0.07% |  0.03% )   ( 0.006217s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004152s |  0.00% |  0.00% )   ( 0.004710s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003852s |  0.00% |  0.00% )   ( 0.004424s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.KPtvk5"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003793s |  0.00% |  0.00% )   ( 0.004336s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.004041s |  0.00% |  0.00% )   ( 0.004612s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.035152s |  0.00% |  0.00% )   ( 0.032620s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003623s |  0.00% |  0.00% )   ( 0.004150s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003473s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.006735s |  0.00% |  0.00% )   ( 0.004423s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.004511s |  0.00% |  0.00% )   ( 0.005056s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.KPtvk5"/.wait/p17
│  │  │  │  │  48.5.0: 	( 0.003570s |  0.00% |  0.00% )   ( 0.004121s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.003390s |  0.00% |  0.00% )   ( 0.003912s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 14.559535s |  3.71% |  1.57% )   ( 13.882410s |  3.78% |  1.65% )    	(26x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.003357s |  0.02% |  0.00% )   ( 0.003911s |  0.02% |  0.00% )    	(26x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 0.987563s |  6.84% |  0.10% )   ( 0.950290s |  6.97% |  0.11% )    	(26x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 1.574204s | 10.34% |  0.17% )   ( 1.508390s | 10.30% |  0.18% )    	(26x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 1.375069s |  9.54% |  0.14% )   ( 1.327517s |  9.63% |  0.15% )    	(26x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 1.601996s | 10.48% |  0.17% )   ( 1.512363s | 10.25% |  0.18% )    	(26x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 1.362364s |  9.22% |  0.14% )   ( 1.278806s |  9.17% |  0.15% )    	(26x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 0.910763s |  6.53% |  0.09% )   ( 0.859395s |  6.39% |  0.10% )    	(26x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 0.556509s |  4.24% |  0.06% )   ( 0.515648s |  4.23% |  0.06% )    	(26x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 0.953154s |  6.45% |  0.10% )   ( 0.878351s |  6.26% |  0.10% )    	(26x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 0.500884s |  4.05% |  0.05% )   ( 0.472904s |  4.03% |  0.05% )    	(26x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 1.196696s |  8.40% |  0.12% )   ( 1.171286s |  8.60% |  0.13% )    	(26x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 2.411515s | 14.63% |  0.26% )   ( 2.344249s | 14.92% |  0.28% )    	(26x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 0.571631s |  4.55% |  0.06% )   ( 0.534801s |  4.53% |  0.06% )    	(26x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 0.553830s |  4.58% |  0.06% )   ( 0.524499s |  4.54% |  0.06% )    	(26x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003580s |  0.00% |  0.00% )   ( 0.004085s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.003475s |  0.00% |  0.00% )   ( 0.003993s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.003642s |  0.00% |  0.00% )   ( 0.004144s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000162s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000166s |  0.00% |  0.00% )   ( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  : > "/dev/shm/.forkrun.KPtvk5"/.quit
│  │  │  │  │  62.5.0: 	( 0.000200s |  0.00% |  0.00% )   ( 0.000212s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.KPtvk5"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.008016s |  0.05% |  0.00% )   ( 0.008092s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p17_PID})
│  │  │  1401.3.0: 	( 0.000154s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  : > "${tmpDir}"/.spawned
│  │  │  1403.3.0: 	( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0: 	( 0.001259s |  0.00% |  0.00% )   ( 0.001277s |  0.00% |  0.00% )    	(1x)	│  │  │  declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1478.3.0: 	( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0: 	( 0.000114s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1488.3.0: 	( 18.777295s |  4.07% |  2.03% )   ( 0.001943s |  0.00% |  0.00% )    	(1x)	│  │  │  wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0: 	( 0.000269s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0: 	( 0.000279s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(1x)	│  │  └─ ${nSpawnFlag}
│  │  1503.2.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  wait
└─ └─ -248.2.0: 	( 0.003885s |  0.00% |  0.00% )   ( 0.002105s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.KPtvk5" 2>/dev/null'

10.0.0:                	( 460.152862s | 49.93% )            ( 419.430252s | 50.11% )             	(1x)	<< (FUNCTION):  >>
├─ 1.1.0:           	( 0.000635s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(1x)	├─ forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  425.1.0:           	( 460.152227s | 99.99% | 49.93% )   ( 419.429940s | 99.99% | 50.11% )    	(1x)	│  << (SUBSHELL) >>
│  ├─ 425.2.0:    	( 0.023268s |  0.00% |  0.00% )   ( 0.022865s |  0.00% |  0.00% )    	(1x)	│  ├─ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  shopt -s extglob
│  │  113.2.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:      	( 0.000120s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  [[ $# == 0 ]]
│  │  125.2.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  optParseFlag=true
│  │  126.2.0:      	( 0.000117s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(2x)	│  │  ${optParseFlag}
│  │  126.2.1:      	( 0.000116s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(2x)	│  │  (( $# > 0  ))
│  │  126.2.2:      	( 0.000118s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(2x)	│  │  [[ "$1" == [-+]* ]]
│  │  127.2.0:      	( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  case "${1}" in
│  │  254.2.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  [[ "${1:0:1}" == '-' ]]
│  │  254.2.1:      	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  nullDelimiterFlag=true
│  │  318.2.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  shift 1
│  │  319.2.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  [[ ${#} == 0 ]]
│  │  323.2.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  [ -t "${fd_stdin0}" ]
│  │  332.2.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${TMPDIR} ]]
│  │  332.2.2:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  [[ -d '/dev/shm' ]]
│  │  332.2.3:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  tmpDirRoot='/dev/shm'
│  │  334.2.0:      	( 0.001386s |  0.00% |  0.00% )   ( 0.001079s |  0.00% |  0.00% )    	(1x)	│  │  tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:      	( 0.007647s |  0.00% |  0.00% )   ( 0.007647s |  0.00% |  0.00% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  └─ 334.3.0: 	( 0.007647s |100.00% |  0.00% )   ( 0.007647s |100.00% |  0.00% )    	(1x)	│  │  └─ mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  fPath="${tmpDir}"/.stdin
│  │  337.2.0:      	( 0.001241s |  0.00% |  0.00% )   ( 0.001309s |  0.00% |  0.00% )    	(1x)	│  │  mkdir -p "${tmpDir}"/.run
│  │  338.2.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  : > "${fPath}"
│  │  340.2.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  ${rmTmpDirFlag}
│  │  340.2.1:      	( 0.014307s |  0.00% |  0.00% )   ( 0.001023s |  0.00% |  0.00% )    	(1x)	│  │  trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:      	( 460.098508s | 99.98% | 49.92% )   ( 419.391502s | 99.99% | 50.10% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  ├─ 348.3.0: 	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  ├─ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0: 	( 0.001735s |  0.00% |  0.00% )   ( 0.002021s |  0.00% |  0.00% )    	(6x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 1502.4.0: 	( 0.001735s |100.00% |  0.00% )   ( 0.002021s |100.00% |  0.00% )    	(6x)	│  │  │  └─ :
│  │  │  363.3.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  LC_ALL=C
│  │  │  364.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  LANG=C
│  │  │  365.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  IFS=
│  │  │  367.3.0: 	( 0.000238s |  0.00% |  0.00% )   ( 0.000253s |  0.00% |  0.00% )    	(1x)	│  │  │  enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  PID0="${BASHPID}"
│  │  │  375.3.0: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  shopt -s nullglob
│  │  │  378.3.0: 	( 0.000085s |  0.00% |  0.00% )   ( 0.009125s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0: 	( 0.000077s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  enable lseek &> /dev/null
│  │  │  381.3.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekFlag:=true}"
│  │  │  386.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  387.3.0: 	( 0.002960s |  0.00% |  0.00% )   ( 0.003013s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1: 	( 0.000105s |  0.00% |  0.00% )   ( 0.000118s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 387.4.0: 	( 0.000105s |100.00% |  0.00% )   ( 0.000118s |100.00% |  0.00% )    	(1x)	│  │  │  └─ lseek $fd_read 0
│  │  │  387.3.2: 	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekPosFlag:=true}"
│  │  │  391.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  runCmd=("${@//''/}")
│  │  │  398.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  noFuncFlag=false
│  │  │  400.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  401.3.0: 	( 0.000082s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  467.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nLines} ]]
│  │  │  467.3.1: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${nLines} ]]
│  │  │  468.3.1: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  nLines=1
│  │  │  472.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0: 	( 0.000824s |  0.00% |  0.00% )   ( 0.000964s |  0.00% |  0.00% )    	(1x)	│  │  │  << (FUNCTION): F:2 main.forkrun >>
│  │  │  ├─ 1.4.0: 	( 0.000060s |  7.28% |  0.00% )   ( 0.000071s |  7.36% |  0.00% )    	(1x)	│  │  │  ├─ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0: 	( 0.000067s |  8.13% |  0.00% )   ( 0.000079s |  8.19% |  0.00% )    	(1x)	│  │  │  │  local +i -l nn
│  │  │  │  9.4.0: 	( 0.000065s |  7.88% |  0.00% )   ( 0.000076s |  7.88% |  0.00% )    	(1x)	│  │  │  │  local vOut
│  │  │  │  11.4.0: 	( 0.000064s |  7.76% |  0.00% )   ( 0.000076s |  7.88% |  0.00% )    	(1x)	│  │  │  │  local -n vOut="$1"
│  │  │  │  12.4.0: 	( 0.000063s |  7.64% |  0.00% )   ( 0.000075s |  7.78% |  0.00% )    	(1x)	│  │  │  │  shift 1
│  │  │  │  13.4.0: 	( 0.000067s |  8.13% |  0.00% )   ( 0.000079s |  8.19% |  0.00% )    	(1x)	│  │  │  │  local -g vOut
│  │  │  │  15.4.0: 	( 0.000063s |  7.64% |  0.00% )   ( 0.000074s |  7.67% |  0.00% )    	(1x)	│  │  │  │  (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1: 	( 0.000113s | 13.71% |  0.00% )   ( 0.000126s | 13.07% |  0.00% )    	(1x)	│  │  │  │  local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0: 	( 0.000067s |  8.13% |  0.00% )   ( 0.000076s |  7.88% |  0.00% )    	(1x)	│  │  │  │  for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0: 	( 0.000062s |  7.52% |  0.00% )   ( 0.000074s |  7.67% |  0.00% )    	(1x)	│  │  │  │  [[ -n ${nn} ]]
│  │  │  │  18.4.1: 	( 0.000064s |  7.76% |  0.00% )   ( 0.000077s |  7.98% |  0.00% )    	(1x)	│  │  │  │  continue
│  │  │  └─ 28.4.0: 	( 0.000069s |  8.37% |  0.00% )   ( 0.000081s |  8.40% |  0.00% )    	(1x)	│  │  │  └─ local +n vOut
│  │  │  483.3.0: 	( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  485.3.0: 	( 0.006219s |  0.00% |  0.00% )   ( 0.006300s |  0.00% |  0.00% )    	(1x)	│  │  │  nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1: 	( 0.002273s |  0.00% |  0.00% )   ( 0.002342s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 485.4.0: 	( 0.000313s | 13.77% |  0.00% )   ( 0.000327s | 13.96% |  0.00% )    	(1x)	│  │  │  ├─ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1: 	( 0.001960s | 86.22% |  0.00% )   ( 0.002015s | 86.03% |  0.00% )    	(1x)	│  │  │  └─ nproc
│  │  │  486.3.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nCPU < 1 ))
│  │  │  487.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nProcs} ]]
│  │  │  487.3.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  487.3.2: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  nProcs=${nCPU}
│  │  │  489.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.1: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  499.3.0: 	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  504.3.1: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < nLines ))
│  │  │  506.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  doneIndicatorFlag=false
│  │  │  509.3.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.0: 	( 0.000197s |  0.00% |  0.00% )   ( 0.000209s |  0.00% |  0.00% )    	(1x)	│  │  │  type -a fallocate &> /dev/null
│  │  │  515.3.1: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.2: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${fallocateFlag:=true}"
│  │  │  518.3.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${exportOrderFlag}
│  │  │  521.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  522.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  523.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nullDelimiterFlag}
│  │  │  524.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  delimiterReadStr="-d ''"
│  │  │  525.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  525.3.1: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nullDelimiterProg:='lseek'}"
│  │  │  526.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nullDelimiterProg:=bash}"
│  │  │  527.3.0: 	( 0.000103s |  0.00% |  0.00% )   ( 0.000114s |  0.00% |  0.00% )    	(1x)	│  │  │  type -p dd &> /dev/null
│  │  │  528.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  ddAvailableFlag=true
│  │  │  529.3.0: 	( 0.003068s |  0.00% |  0.00% )   ( 0.004160s |  0.00% |  0.00% )    	(1x)	│  │  │  dd --version | grep -qF 'coreutils'
│  │  │  529.3.1: 	( 0.001870s |  0.00% |  0.00% )   ( 0.002968s |  0.00% |  0.00% )    	(1x)	│  │  │  grep -qF 'coreutils'
│  │  │  530.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ddQuietStr='status=none'
│  │  │  537.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  538.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  539.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  nullDelimiterProg=''
│  │  │  557.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${unescapeFlag}
│  │  │  566.3.0: 	( 0.002815s |  0.00% |  0.00% )   ( 0.002969s |  0.00% |  0.00% )    	(1x)	│  │  │  mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 566.4.0: 	( 0.000076s |100.00% |  0.00% )   ( 0.000088s |100.00% |  0.00% )    	(1x)	│  │  │  └─ printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringFlag}
│  │  │  570.3.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringIDFlag}
│  │  │  576.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  nLinesCur=${nLines}
│  │  │  578.3.0: 	( 0.001217s |  0.00% |  0.00% )   ( 0.001286s |  0.00% |  0.00% )    	(1x)	│  │  │  mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  582.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  ${rmTmpDirFlag}
│  │  │  584.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 0 ))
│  │  │  615.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0: 	( 0.000076s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  evfd_init
│  │  │  622.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  628.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  638.3.0: 	( 0.000541s |  0.00% |  0.00% )   ( 0.000557s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0: 	( 0.079325s |  0.01% |  0.00% )   ( 0.079227s |  0.01% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 644.4.0: 	( 0.000076s |  0.09% |  0.00% )   ( 0.000087s |  0.10% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0: 	( 0.011261s | 14.19% |  0.00% )   ( 0.011224s | 14.16% |  0.00% )    	(1x)	│  │  │  │  trap - EXIT
│  │  │  │  647.4.0: 	( 0.012164s | 15.33% |  0.00% )   ( 0.012145s | 15.32% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0: 	( 0.012164s | 15.33% |  0.00% )   ( 0.012145s | 15.32% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0: 	( 0.012160s | 15.32% |  0.00% )   ( 0.012142s | 15.32% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0: 	( 0.012242s | 15.43% |  0.00% )   ( 0.012220s | 15.42% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0: 	( 0.000065s |  0.08% |  0.00% )   ( 0.000077s |  0.09% |  0.00% )    	(1x)	│  │  │  │  case ${writeFileProgType} in
│  │  │  │  653.4.0: 	( 0.018968s | 23.91% |  0.00% )   ( 0.018931s | 23.89% |  0.00% )    	(1x)	│  │  │  │  evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0: 	( 0.000096s |  0.12% |  0.00% )   ( 0.000104s |  0.13% |  0.00% )    	(1x)	│  │  │  │  : > "${tmpDir}"/.done
│  │  │  │  659.4.0: 	( 0.000063s |  0.07% |  0.00% )   ( 0.000074s |  0.09% |  0.00% )    	(1x)	│  │  │  │  evfd_signal
│  │  │  └─ 660.4.0: 	( 0.000066s |  0.08% |  0.00% )   ( 0.000078s |  0.09% |  0.00% )    	(1x)	│  │  │  └─ (( ${verboseLevel} > 1 ))
│  │  │  668.3.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  715.3.0: 	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  outStr='>&'"${fd_stdout}"
│  │  │  719.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  721.3.0: 	( 0.000420s |  0.00% |  0.00% )   ( 0.000445s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0: 	( 3.243096s |  0.70% |  0.35% )   ( 1.718855s |  0.40% |  0.20% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 731.4.0: 	( 0.000202s |  0.00% |  0.00% )   ( 0.000230s |  0.01% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0: 	( 0.012230s |  0.37% |  0.00% )   ( 0.012215s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0: 	( 0.012195s |  0.37% |  0.00% )   ( 0.012178s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0: 	( 0.012166s |  0.37% |  0.00% )   ( 0.012144s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0: 	( 0.012232s |  0.37% |  0.00% )   ( 0.012216s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0: 	( 0.012195s |  0.37% |  0.00% )   ( 0.012177s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  740.4.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fd_read_pos_old=0
│  │  │  │  743.4.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=0
│  │  │  │  745.4.0: 	( 0.086141s |  0.00% |  0.00% )   ( 0.099027s |  0.00% |  0.01% )    	(670x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  747.4.0: 	( 1.821796s |  0.07% |  0.19% )   ( 0.112538s |  0.00% |  0.01% )    	(669x)	│  │  │  │  read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1: 	( 0.000468s |  0.00% |  0.00% )   ( 0.000537s |  0.00% |  0.00% )    	(3x)	│  │  │  │  continue
│  │  │  │  749.4.0: 	( 0.084097s |  0.00% |  0.00% )   ( 0.097157s |  0.00% |  0.01% )    	(666x)	│  │  │  │  case ${REPLY} in
│  │  │  │  763.4.0: 	( 0.083167s |  0.00% |  0.00% )   ( 0.096106s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  764.4.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  767.4.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0: 	( 0.084562s |  0.00% |  0.00% )   ( 0.097467s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  774.4.0: 	( 0.087328s |  0.00% |  0.00% )   ( 0.100294s |  0.00% |  0.01% )    	(666x)	│  │  │  │  lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0: 	( 0.086931s |  0.00% |  0.00% )   ( 0.099820s |  0.00% |  0.01% )    	(666x)	│  │  │  │  lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0: 	( 0.083356s |  0.00% |  0.00% )   ( 0.096184s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  782.4.1: 	( 0.000068s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0: 	( 0.084290s |  0.00% |  0.00% )   ( 0.097240s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  786.4.0: 	( 0.084437s |  0.00% |  0.00% )   ( 0.097445s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  788.4.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  790.4.0: 	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0: 	( 0.006089s |  0.18% |  0.00% )   ( 0.006642s |  0.38% |  0.00% )    	(1x)	│  │  │  │  mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1: 	( 0.003159s |  0.09% |  0.00% )   ( 0.003585s |  0.20% |  0.00% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 791.5.0: 	( 0.003159s |100.00% |  0.00% )   ( 0.003585s |100.00% |  0.00% )    	(1x)	│  │  │  │  ├─ : | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  └─ 791.5.1: 	( 0.001452s | 45.96% |  0.00% )   ( 0.001891s | 52.74% |  0.00% )    	(1x)	│  │  │  │  └─ cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0: 	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=${nLinesMax}
│  │  │  │  800.4.2: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  802.4.0: 	( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0: 	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesCur=${nLinesNew}
│  │  │  │  811.4.0: 	( 0.084166s |  0.00% |  0.00% )   ( 0.097087s |  0.00% |  0.01% )    	(666x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  812.4.0: 	( 0.082768s |  0.00% |  0.00% )   ( 0.095739s |  0.00% |  0.01% )    	(666x)	│  │  │  │  case ${nWait} in
│  │  │  │  823.4.0: 	( 0.081321s |  0.00% |  0.00% )   ( 0.093797s |  0.00% |  0.01% )    	(645x)	│  │  │  │  ((nWait--))
│  │  │  │  828.4.0: 	( 0.086770s |  0.00% |  0.00% )   ( 0.099847s |  0.00% |  0.01% )    	(666x)	│  │  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1: 	( 0.084823s |  0.00% |  0.00% )   ( 0.097724s |  0.00% |  0.01% )    	(665x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  782.4.1: 	( 0.084179s |  0.00% |  0.00% )   ( 0.097032s |  0.00% |  0.01% )    	(665x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  814.4.0: 	( 0.002708s |  0.00% |  0.00% )   ( 0.003110s |  0.00% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0: 	( 0.002723s |  0.00% |  0.00% )   ( 0.003121s |  0.00% |  0.00% )    	(21x)	│  │  │  │  (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0: 	( 0.059581s |  0.08% |  0.00% )   ( 0.047560s |  0.12% |  0.00% )    	(21x)	│  │  │  │  fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0: 	( 0.002750s |  0.00% |  0.00% )   ( 0.003152s |  0.00% |  0.00% )    	(21x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0: 	( 0.002692s |  0.00% |  0.00% )   ( 0.003101s |  0.00% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0: 	( 0.002731s |  0.00% |  0.00% )   ( 0.003131s |  0.00% |  0.00% )    	(21x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  829.4.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  830.4.0: 	( 0.000085s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fallocateFlag=false
│  │  │  │  831.4.0: 	( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nSpawnFlag=false
│  │  │  │  745.4.1: 	( 0.000159s |  0.00% |  0.00% )   ( 0.000184s |  0.01% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  745.4.2: 	( 0.000184s |  0.00% |  0.00% )   ( 0.000209s |  0.01% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ -248.4.0: 	( 0.006877s |  0.21% |  0.00% )   ( 0.006969s |  0.40% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.3UymWV"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.3UymWV"/.run/pAuto'
│  │  │  839.3.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0: 	( 0.000094s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0: 	( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1345.3.0: 	( 0.001902s |  0.00% |  0.00% )   ( 0.001150s |  0.00% |  0.00% )    	(1x)	│  │  │  coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0: 	( 0.005037s |  0.00% |  0.00% )   ( 0.005826s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0: 	( 0.000401s |  7.96% |  0.00% )   ( 0.000445s |  7.63% |  0.00% )    	(1x)	│  │  │  ├─ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0: 	( 0.000257s |  5.10% |  0.00% )   ( 0.000298s |  5.11% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1363.4.1: 	( 0.000076s |  1.50% |  0.00% )   ( 0.000088s |  1.51% |  0.00% )    	(1x)	│  │  │  │  echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0: 	( 0.000213s |  4.22% |  0.00% )   ( 0.000225s |  3.86% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000073s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1444.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0: 	( 0.000063s |  1.25% |  0.00% )   ( 0.000075s |  1.28% |  0.00% )    	(1x)	│  │  │  │  echo "{"
│  │  │  │  1448.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000072s |  1.23% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1449.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1449.4.1: 	( 0.000071s |  1.40% |  0.00% )   ( 0.000080s |  1.37% |  0.00% )    	(1x)	│  │  │  │  echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0: 	( 0.000063s |  1.25% |  0.00% )   ( 0.000074s |  1.27% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "mapfile"
│  │  │  │  1451.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1451.4.1: 	( 0.000068s |  1.35% |  0.00% )   ( 0.000077s |  1.32% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1452.4.0: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000075s |  1.28% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000072s |  1.23% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1453.4.1: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000075s |  1.28% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' ${fd_read}
│  │  │  │  1454.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1454.4.1: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000072s |  1.23% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1454.4.2: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000075s |  1.28% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1456.4.0: 	( 0.000066s |  1.31% |  0.00% )   ( 0.000076s |  1.30% |  0.00% )    	(1x)	│  │  │  │  echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1457.4.1: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000073s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1457.4.2: 	( 0.000090s |  1.78% |  0.00% )   ( 0.000101s |  1.73% |  0.00% )    	(1x)	│  │  │  │  [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1514.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000073s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1514.4.1: 	( 0.000062s |  1.23% |  0.00% )   ( 0.000073s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1514.4.2: 	( 0.000071s |  1.40% |  0.00% )   ( 0.000082s |  1.40% |  0.00% )    	(1x)	│  │  │  │  [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1515.4.0: 	( 0.000072s |  1.42% |  0.00% )   ( 0.000083s |  1.42% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0: 	( 0.000082s |  1.62% |  0.00% )   ( 0.000094s |  1.61% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000072s |  1.23% |  0.00% )    	(1x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  1532.4.0: 	( 0.000075s |  1.48% |  0.00% )   ( 0.000085s |  1.45% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0: 	( 0.000074s |  1.46% |  0.00% )   ( 0.000085s |  1.45% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0: 	( 0.000062s |  1.23% |  0.00% )   ( 0.000073s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1544.4.1: 	( 0.000066s |  1.31% |  0.00% )   ( 0.000077s |  1.32% |  0.00% )    	(1x)	│  │  │  │  echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0: 	( 0.000066s |  1.31% |  0.00% )   ( 0.000078s |  1.33% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1546.4.0: 	( 0.000065s |  1.29% |  0.00% )   ( 0.000076s |  1.30% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  1551.4.0: 	( 0.000073s |  1.44% |  0.00% )   ( 0.000085s |  1.45% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0: 	( 0.000062s |  1.23% |  0.00% )   ( 0.000074s |  1.27% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1556.4.0: 	( 0.000076s |  1.50% |  0.00% )   ( 0.000088s |  1.51% |  0.00% )    	(1x)	│  │  │  │  echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1557.4.1: 	( 0.000075s |  1.48% |  0.00% )   ( 0.000087s |  1.49% |  0.00% )    	(1x)	│  │  │  │  printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1562.4.1: 	( 0.000068s |  1.35% |  0.00% )   ( 0.000080s |  1.37% |  0.00% )    	(1x)	│  │  │  │  printf '%s' ' || '
│  │  │  │  1563.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1563.4.1: 	( 0.000079s |  1.56% |  0.00% )   ( 0.000090s |  1.54% |  0.00% )    	(1x)	│  │  │  │  echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0: 	( 0.000063s |  1.25% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1564.4.1: 	( 0.000063s |  1.25% |  0.00% )   ( 0.000074s |  1.27% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1572.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1572.4.1: 	( 0.000090s |  1.78% |  0.00% )   ( 0.000096s |  1.64% |  0.00% )    	(1x)	│  │  │  │  echo '{'
│  │  │  │  1573.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1573.4.1: 	( 0.000063s |  1.25% |  0.00% )   ( 0.000074s |  1.27% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1574.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1575.4.0: 	( 0.000098s |  1.94% |  0.00% )   ( 0.000110s |  1.88% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000071s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1583.4.0: 	( 0.000068s |  1.35% |  0.00% )   ( 0.000079s |  1.35% |  0.00% )    	(1x)	│  │  │  │  ${stdinRunFlag}
│  │  │  │  1586.4.0: 	( 0.000059s |  1.17% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${noFuncFlag}
│  │  │  │  1589.4.0: 	( 0.000060s |  1.19% |  0.00% )   ( 0.000070s |  1.20% |  0.00% )    	(1x)	│  │  │  │  ${substituteStringFlag}
│  │  │  │  1590.4.0: 	( 0.000094s |  1.86% |  0.00% )   ( 0.000106s |  1.81% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0: 	( 0.000065s |  1.29% |  0.00% )   ( 0.000076s |  1.30% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0: 	( 0.000061s |  1.21% |  0.00% )   ( 0.000072s |  1.23% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1608.4.0: 	( 0.000058s |  1.15% |  0.00% )   ( 0.000069s |  1.18% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1608.4.1: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000092s |  1.57% |  0.00% )    	(1x)	│  │  │  │  printf '\n%s ' '}'
│  │  │  │  1609.4.0: 	( 0.000067s |  1.33% |  0.00% )   ( 0.000077s |  1.32% |  0.00% )    	(1x)	│  │  │  │  echo "${outStr}"
│  │  │  │  1610.4.0: 	( 0.000064s |  1.27% |  0.00% )   ( 0.000076s |  1.30% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1611.4.0: 	( 0.000085s |  1.68% |  0.00% )   ( 0.000092s |  1.57% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ 1616.4.0: 	( 0.000082s |  1.62% |  0.00% )   ( 0.000093s |  1.59% |  0.00% )    	(1x)	│  │  │  └─ echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0: 	( 0.000256s |  0.00% |  0.00% )   ( 0.000295s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1355.3.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0: 	( 0.012509s |  0.00% |  0.00% )   ( 0.012485s |  0.00% |  0.00% )    	(1x)	│  │  │  trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0: 	( 0.012299s |  0.00% |  0.00% )   ( 0.099763s |  0.02% |  0.01% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0: 	( 0.012210s |  0.00% |  0.00% )   ( 0.012192s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0: 	( 0.012019s |  0.00% |  0.00% )   ( 0.011994s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0: 	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1393.3.0: 	( 0.000069s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '\n' >&${fd_continue}
│  │  │  1396.3.0: 	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1397.3.0: 	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ((kkProcs=0 ))
│  │  │  1397.3.1: 	( 0.002627s |  0.00% |  0.00% )   ( 0.003057s |  0.00% |  0.00% )    	(29x)	│  │  │  ((kkProcs<28 ))
│  │  │  1398.3.0: 	( 0.002493s |  0.00% |  0.00% )   ( 0.002893s |  0.00% |  0.00% )    	(28x)	│  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0: 	( 63.555274s |  3.44% |  6.89% )   ( 60.660777s |  3.61% |  7.24% )    	(4x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.002386s |  0.00% |  0.00% )   ( 0.002426s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─ local p0 p0_PID (&)
│  │  │  │  73.4.0: 	( 63.552533s | 99.99% |  6.89% )   ( 60.657954s | 99.99% |  7.24% )    	(4x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000852s |  0.00% |  0.00% )   ( 0.000965s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.3UymWV"
│  │  │  │  │  8.5.0: 	( 0.000616s |  0.00% |  0.00% )   ( 0.000698s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.3UymWV"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.049817s |  0.07% |  0.00% )   ( 0.049748s |  0.07% |  0.00% )    	(4x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.3UymWV"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.3UymWV"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.3UymWV"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.048973s |  0.07% |  0.00% )   ( 0.048898s |  0.07% |  0.00% )    	(4x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 709599 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049378s |  0.07% |  0.00% )   ( 0.049313s |  0.07% |  0.00% )    	(4x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 709599 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049784s |  0.07% |  0.00% )   ( 0.049712s |  0.07% |  0.00% )    	(4x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 709599 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.049861s |  0.07% |  0.00% )   ( 0.049782s |  0.07% |  0.00% )    	(4x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.016223s |  0.00% |  0.00% )   ( 0.018336s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.014125s |  0.00% |  0.00% )   ( 0.016174s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000770s |  0.00% |  0.00% )   ( 0.000874s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.3UymWV"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000613s |  0.00% |  0.00% )   ( 0.000717s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000620s |  0.00% |  0.00% )   ( 0.000721s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.017756s |  0.00% |  0.00% )   ( 0.019841s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.3UymWV"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.474713s |  0.02% |  0.05% )   ( 0.021031s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.015036s |  0.00% |  0.00% )   ( 0.017188s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.014014s |  0.00% |  0.00% )   ( 0.016090s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013355s |  0.00% |  0.00% )   ( 0.015374s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.014009s |  0.00% |  0.00% )   ( 0.016000s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.118661s |  0.00% |  0.01% )   ( 0.117307s |  0.00% |  0.01% )    	(101x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.023694s |  0.00% |  0.00% )   ( 0.016711s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.018775s |  0.00% |  0.00% )   ( 0.018886s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.3UymWV"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.013419s |  0.00% |  0.00% )   ( 0.015459s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.013187s |  0.00% |  0.00% )   ( 0.015199s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000896s |  0.00% |  0.00% )   ( 0.001034s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000884s |  0.00% |  0.00% )   ( 0.001024s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 62.464087s |  3.88% |  6.77% )   ( 60.009377s |  3.91% |  7.16% )    	(101x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.012329s |  0.03% |  0.00% )   ( 0.014344s |  0.03% |  0.00% )    	(101x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 4.253781s |  6.97% |  0.46% )   ( 4.120112s |  7.08% |  0.49% )    	(101x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 7.057524s | 10.24% |  0.76% )   ( 6.853037s | 10.33% |  0.81% )    	(101x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 5.975735s |  9.56% |  0.64% )   ( 5.724481s |  9.57% |  0.68% )    	(101x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 6.947074s | 10.04% |  0.75% )   ( 6.718554s | 10.09% |  0.80% )    	(101x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 5.751463s |  9.14% |  0.62% )   ( 5.497748s |  9.07% |  0.65% )    	(101x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 3.814464s |  6.44% |  0.41% )   ( 3.697853s |  6.52% |  0.44% )    	(101x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 2.144753s |  4.39% |  0.23% )   ( 2.025918s |  4.34% |  0.24% )    	(101x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 4.028610s |  6.35% |  0.43% )   ( 3.838226s |  6.30% |  0.45% )    	(101x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 1.924659s |  4.16% |  0.20% )   ( 1.828789s |  4.21% |  0.21% )    	(101x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 5.247753s |  8.70% |  0.56% )   ( 4.974926s |  8.57% |  0.59% )    	(101x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 11.004110s | 14.55% |  1.19% )   ( 10.664177s | 14.52% |  1.27% )    	(101x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 2.134203s |  4.57% |  0.23% )   ( 2.054162s |  4.62% |  0.24% )    	(101x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 2.167629s |  4.73% |  0.23% )   ( 1.997050s |  4.60% |  0.23% )    	(101x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000494s |  0.00% |  0.00% )   ( 0.000574s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.013582s |  0.00% |  0.00% )   ( 0.015560s |  0.00% |  0.00% )    	(97x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.012272s |  0.00% |  0.00% )   ( 0.014100s |  0.00% |  0.00% )    	(93x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.016742s |  0.00% |  0.00% )   ( 0.015535s |  0.00% |  0.00% )    	(93x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000398s |  0.00% |  0.00% )   ( 0.000460s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000412s |  0.00% |  0.00% )   ( 0.000473s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.024515s |  0.03% |  0.00% )   ( 0.024793s |  0.03% |  0.00% )    	(4x)	│  │  │  │  └─ break
│  │  │  └─ 134.4.0: 	( 0.000355s |  0.00% |  0.00% )   ( 0.000397s |  0.00% |  0.00% )    	(4x)	│  │  │  └─ p_PID+=(${p0_PID})
│  │  │  1397.3.0: 	( 0.002538s |  0.00% |  0.00% )   ( 0.002942s |  0.00% |  0.00% )    	(28x)	│  │  │  ((kkProcs++ ))
│  │  │  1399.3.0: 	( 359.160248s |  3.38% | 38.97% )   ( 342.301051s |  3.54% | 40.89% )    	(23x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.019616s |  0.00% |  0.00% )   ( 0.020027s |  0.00% |  0.00% )    	(23x)	│  │  │  ├─ local p4 p4_PID (&)
│  │  │  │  73.4.0: 	( 359.137843s | 99.99% | 38.97% )   ( 342.277859s | 99.99% | 40.89% )    	(23x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003794s |  0.00% |  0.00% )   ( 0.004278s |  0.00% |  0.00% )    	(23x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.3UymWV"
│  │  │  │  │  8.5.0: 	( 0.003658s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.3UymWV"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.448488s |  0.12% |  0.04% )   ( 0.443870s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.3UymWV"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.3UymWV"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.3UymWV"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.449468s |  0.12% |  0.04% )   ( 0.437111s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 709599 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.450573s |  0.12% |  0.04% )   ( 0.449231s |  0.12% |  0.05% )    	(23x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 709599 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.463562s |  0.12% |  0.05% )   ( 0.462259s |  0.13% |  0.05% )    	(23x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 709599 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.470338s |  0.12% |  0.05% )   ( 0.468986s |  0.13% |  0.05% )    	(23x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.089887s |  0.00% |  0.00% )   ( 0.101511s |  0.00% |  0.01% )    	(566x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.078394s |  0.00% |  0.00% )   ( 0.089645s |  0.00% |  0.01% )    	(566x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002789s |  0.00% |  0.00% )   ( 0.003179s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.3UymWV"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002314s |  0.00% |  0.00% )   ( 0.002680s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002330s |  0.00% |  0.00% )   ( 0.002700s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.097264s |  0.00% |  0.01% )   ( 0.108875s |  0.00% |  0.01% )    	(566x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.3UymWV"/.wait/p4
│  │  │  │  │  23.5.0: 	( 3.005168s |  0.03% |  0.32% )   ( 0.117566s |  0.00% |  0.01% )    	(566x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.082995s |  0.00% |  0.00% )   ( 0.094452s |  0.00% |  0.01% )    	(566x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.082584s |  0.00% |  0.00% )   ( 0.087529s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.081778s |  0.00% |  0.00% )   ( 0.084079s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.077549s |  0.00% |  0.00% )   ( 0.088518s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.676910s |  0.00% |  0.07% )   ( 0.659190s |  0.00% |  0.07% )    	(543x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.120290s |  0.00% |  0.01% )   ( 0.092716s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.092876s |  0.00% |  0.01% )   ( 0.103776s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.3UymWV"/.wait/p4
│  │  │  │  │  36.5.0: 	( 0.082499s |  0.00% |  0.00% )   ( 0.084477s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.072725s |  0.00% |  0.00% )   ( 0.083686s |  0.00% |  0.00% )    	(543x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002914s |  0.00% |  0.00% )   ( 0.003342s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002631s |  0.00% |  0.00% )   ( 0.003046s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002695s |  0.00% |  0.00% )   ( 0.003111s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 351.779591s |  4.14% | 38.17% )   ( 337.771341s |  4.17% | 40.35% )    	(543x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.069858s |  0.02% |  0.00% )   ( 0.080166s |  0.02% |  0.00% )    	(543x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 23.788992s |  6.79% |  2.58% )   ( 22.878090s |  6.86% |  2.73% )    	(543x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 39.764762s | 10.31% |  4.31% )   ( 38.397617s | 10.37% |  4.58% )    	(543x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 33.859768s |  9.69% |  3.67% )   ( 32.395638s |  9.65% |  3.87% )    	(543x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 39.001359s | 10.16% |  4.23% )   ( 37.943490s | 10.26% |  4.53% )    	(543x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 32.423944s |  9.16% |  3.51% )   ( 31.096041s |  9.15% |  3.71% )    	(543x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 21.922152s |  6.47% |  2.37% )   ( 20.814102s |  6.42% |  2.48% )    	(543x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 12.161159s |  4.27% |  1.31% )   ( 11.409474s |  4.22% |  1.36% )    	(543x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 22.399608s |  6.31% |  2.43% )   ( 21.529497s |  6.31% |  2.57% )    	(543x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 10.794235s |  4.00% |  1.17% )   ( 10.123636s |  3.94% |  1.20% )    	(543x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 29.625262s |  8.76% |  3.21% )   ( 28.244857s |  8.70% |  3.37% )    	(543x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 61.646500s | 14.87% |  6.68% )   ( 60.098993s | 15.03% |  7.18% )    	(543x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 12.353952s |  4.54% |  1.34% )   ( 11.552900s |  4.47% |  1.38% )    	(543x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 11.968040s |  4.51% |  1.29% )   ( 11.206840s |  4.44% |  1.33% )    	(543x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.076841s |  0.00% |  0.00% )   ( 0.087826s |  0.00% |  0.01% )    	(543x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.073288s |  0.00% |  0.00% )   ( 0.080964s |  0.00% |  0.00% )    	(520x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.096870s |  0.00% |  0.01% )   ( 0.089807s |  0.00% |  0.01% )    	(520x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002482s |  0.00% |  0.00% )   ( 0.002849s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002618s |  0.00% |  0.00% )   ( 0.002980s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.159680s |  0.04% |  0.01% )   ( 0.158172s |  0.04% |  0.01% )    	(23x)	│  │  │  │  └─ break
│  │  │  └─ 134.4.0: 	( 0.002789s |  0.00% |  0.00% )   ( 0.003165s |  0.00% |  0.00% )    	(23x)	│  │  │  └─ p_PID+=(${p4_PID})
│  │  │  1399.3.0: 	( 15.295897s |  3.32% |  1.65% )   ( 14.433869s |  3.44% |  1.72% )    	(1x)	│  │  │  << (FUNCTION):  >>
│  │  │  ├─ 1.4.0: 	( 0.000631s |  0.00% |  0.00% )   ( 0.000645s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p10 p10_PID (&)
│  │  │  │  73.4.0: 	( 15.295183s | 99.99% |  1.65% )   ( 14.433128s | 99.99% |  1.72% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000316s |  0.00% |  0.00% )   ( 0.000357s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.3UymWV"
│  │  │  │  │  8.5.0: 	( 0.000339s |  0.00% |  0.00% )   ( 0.000383s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.3UymWV"/.run/p10
│  │  │  │  │  12.5.0: 	( 0.013438s |  0.08% |  0.00% )   ( 0.013416s |  0.09% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.3UymWV"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.3UymWV"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.3UymWV"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012493s |  0.08% |  0.00% )   ( 0.012472s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 709599 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012477s |  0.08% |  0.00% )   ( 0.012462s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 709599 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012480s |  0.08% |  0.00% )   ( 0.012460s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 709599 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012484s |  0.08% |  0.00% )   ( 0.012466s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.003640s |  0.00% |  0.00% )   ( 0.004084s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0: 	( 0.003301s |  0.00% |  0.00% )   ( 0.003777s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.3UymWV"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.007170s |  0.00% |  0.00% )   ( 0.004653s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.3UymWV"/.wait/p10
│  │  │  │  │  23.5.0: 	( 0.145241s |  0.03% |  0.01% )   ( 0.005138s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.006345s |  0.00% |  0.00% )   ( 0.003800s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003014s |  0.00% |  0.00% )   ( 0.003492s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.3UymWV"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003125s |  0.00% |  0.00% )   ( 0.003507s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003207s |  0.00% |  0.00% )   ( 0.003668s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.030099s |  0.00% |  0.00% )   ( 0.026902s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.007012s |  0.00% |  0.00% )   ( 0.003965s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.003871s |  0.00% |  0.00% )   ( 0.004324s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.3UymWV"/.wait/p10
│  │  │  │  │  36.5.0: 	( 0.003081s |  0.00% |  0.00% )   ( 0.003523s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.002859s |  0.00% |  0.00% )   ( 0.003290s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000072s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 14.985710s |  4.44% |  1.62% )   ( 14.274566s |  4.49% |  1.70% )    	(22x)	│  │  │  │  │  << (FUNCTION): F:3 main.forkrun.source >>
│  │  │  │  │  ├─ 1.6.0: 	( 0.002849s |  0.02% |  0.00% )   ( 0.003300s |  0.03% |  0.00% )    	(22x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0: 	( 1.043206s |  7.24% |  0.11% )   ( 0.952972s |  6.95% |  0.11% )    	(22x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0: 	( 1.655351s | 10.04% |  0.17% )   ( 1.617502s | 10.37% |  0.19% )    	(22x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 1.423479s |  9.56% |  0.15% )   ( 1.375020s |  9.81% |  0.16% )    	(22x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 1.658781s |  9.97% |  0.18% )   ( 1.617075s | 10.17% |  0.19% )    	(22x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 1.434433s |  9.51% |  0.15% )   ( 1.327554s |  9.17% |  0.15% )    	(22x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 0.940255s |  6.65% |  0.10% )   ( 0.868423s |  6.41% |  0.10% )    	(22x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 0.519457s |  4.38% |  0.05% )   ( 0.470684s |  4.26% |  0.05% )    	(22x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 0.986202s |  6.46% |  0.10% )   ( 0.908062s |  6.19% |  0.10% )    	(22x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 0.431296s |  3.87% |  0.04% )   ( 0.409314s |  3.93% |  0.04% )    	(22x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 1.225972s |  8.49% |  0.13% )   ( 1.185102s |  8.58% |  0.14% )    	(22x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 2.713218s | 14.86% |  0.29% )   ( 2.613667s | 14.99% |  0.31% )    	(22x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 0.478293s |  4.39% |  0.05% )   ( 0.471555s |  4.54% |  0.05% )    	(22x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 0.472918s |  4.43% |  0.05% )   ( 0.454336s |  4.47% |  0.05% )    	(22x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003295s |  0.00% |  0.00% )   ( 0.003727s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.002955s |  0.00% |  0.00% )   ( 0.003395s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.003235s |  0.00% |  0.00% )   ( 0.003653s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000139s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  : > "/dev/shm/.forkrun.3UymWV"/.quit
│  │  │  │  │  50.5.0: 	( 0.000202s |  0.00% |  0.00% )   ( 0.000221s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.3UymWV"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0: 	( 0.012681s |  0.08% |  0.00% )   ( 0.008153s |  0.05% |  0.00% )    	(1x)	│  │  │  │  └─ break
│  │  │  └─ 134.4.0: 	( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p10_PID})
│  │  │  1401.3.0: 	( 0.000165s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0: 	( 0.000144s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  : > "${tmpDir}"/.spawned
│  │  │  1403.3.0: 	( 0.000126s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0: 	( 0.001238s |  0.00% |  0.00% )   ( 0.001255s |  0.00% |  0.00% )    	(1x)	│  │  │  declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1478.3.0: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0: 	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1488.3.0: 	( 18.669600s |  4.05% |  2.02% )   ( 0.001717s |  0.00% |  0.00% )    	(1x)	│  │  │  wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0: 	( 0.000288s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0: 	( 0.000272s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(1x)	│  │  └─ ${nSpawnFlag}
│  │  1503.2.0:     	( 0.000207s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  wait
└─ └─ -248.2.0: 	( 0.003794s |  0.00% |  0.00% )   ( 0.002054s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.3UymWV" 2>/dev/null'


TOTAL RUN TIME: 921.520818s
TOTAL CPU TIME: 836.952427s
