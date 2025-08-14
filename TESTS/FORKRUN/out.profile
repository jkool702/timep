LINE.DEPTH.CMD NUMBER     	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:     	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
__________________________	________________________________	________________________________	____________________________________
9.0.0:                    	( 511.070254s | 50.03% )          	( 464.627530s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:                 	( 0.000596s |  0.00% |  0.00% )   	( 0.000317s |  0.00% |  0.00% )    	(1x)	├─ forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:               	( 511.069658s | 99.99% | 50.03% )   	( 464.627213s | 99.99% | 49.93% )    	(1x)	│  << (SUBSHELL) >>
│  ├─ 425.2.0:            	( 0.023174s |  0.00% |  0.00% )   	( 0.023120s |  0.00% |  0.00% )    	(1x)	│  ├─ trap - EXIT INT TERM HUP USR1
│  │  113.2.0:            	( 0.000074s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:            	( 0.000126s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:            	( 0.000095s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:            	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  [[ $# == 0 ]]
│  │  125.2.1:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  optParseFlag=true
│  │  126.2.0:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  ${optParseFlag}
│  │  126.2.1:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  (( $# > 0  ))
│  │  126.2.2:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  [[ "$1" == [-+]* ]]
│  │  323.2.0:            	( 0.000067s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  [ -t "${fd_stdin0}" ]
│  │  332.2.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${TMPDIR} ]]
│  │  332.2.2:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  [[ -d '/dev/shm' ]]
│  │  332.2.3:            	( 0.000059s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  tmpDirRoot='/dev/shm'
│  │  334.2.0:            	( 0.001357s |  0.00% |  0.00% )   	( 0.000998s |  0.00% |  0.00% )    	(1x)	│  │  tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:            	( 0.007605s |  0.00% |  0.00% )   	( 0.007605s |  0.00% |  0.00% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  └─ 334.3.0:         	( 0.007605s |100.00% |  0.00% )   	( 0.007605s |100.00% |  0.00% )    	(1x)	│  │  └─ mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:            	( 0.000122s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  fPath="${tmpDir}"/.stdin
│  │  337.2.0:            	( 0.003171s |  0.00% |  0.00% )   	( 0.003216s |  0.00% |  0.00% )    	(1x)	│  │  mkdir -p "${tmpDir}"/.run
│  │  338.2.0:            	( 0.000084s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  : > "${fPath}"
│  │  340.2.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  ${rmTmpDirFlag}
│  │  340.2.1:            	( 0.013548s |  0.00% |  0.00% )   	( 0.000261s |  0.00% |  0.00% )    	(1x)	│  │  trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:           	( 511.010644s | 99.98% | 50.03% )   	( 464.584643s | 99.99% | 49.92% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  ├─ 348.3.0:         	( 0.000127s |  0.00% |  0.00% )   	( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  ├─ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:        	( 0.000082s |  0.00% |  0.00% )   	( 0.000115s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:     	( 0.001290s |100.00% |  0.00% )   	( 0.001470s |100.00% |  0.00% )    	(6x)	│  │  │  └─ :
│  │  │  1502.3.1:        	( 0.000211s |  0.00% |  0.00% )   	( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.2:        	( 0.000193s |  0.00% |  0.00% )   	( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.3:        	( 0.000215s |  0.00% |  0.00% )   	( 0.000253s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.4:        	( 0.000302s |  0.00% |  0.00% )   	( 0.000344s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.5:        	( 0.000287s |  0.00% |  0.00% )   	( 0.000337s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  363.3.0:         	( 0.000080s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  LC_ALL=C
│  │  │  364.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  LANG=C
│  │  │  365.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  IFS=
│  │  │  367.3.0:         	( 0.000191s |  0.00% |  0.00% )   	( 0.000205s |  0.00% |  0.00% )    	(1x)	│  │  │  enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:         	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:         	( 0.000078s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  PID0="${BASHPID}"
│  │  │  375.3.0:         	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  shopt -s nullglob
│  │  │  378.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:         	( 0.000078s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  enable lseek &> /dev/null
│  │  │  381.3.0:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekFlag:=true}"
│  │  │  386.3.0:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  387.3.0:         	( 0.003003s |  0.00% |  0.00% )   	( 0.003070s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:         	( 0.000111s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 387.4.0:      	( 0.000111s |100.00% |  0.00% )   	( 0.000124s |100.00% |  0.00% )    	(1x)	│  │  │  └─ lseek $fd_read 0
│  │  │  387.3.2:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekPosFlag:=true}"
│  │  │  391.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  runCmd=("${@//''/}")
│  │  │  398.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  noFuncFlag=false
│  │  │  401.3.0:         	( 0.000083s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  467.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nLines} ]]
│  │  │  467.3.1:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${nLines} ]]
│  │  │  468.3.1:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  nLines=1
│  │  │  472.3.0:         	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:         	( 0.000813s |  0.00% |  0.00% )   	( 0.000953s |  0.00% |  0.00% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:        	( 0.000058s |  7.13% |  0.00% )   	( 0.000070s |  7.34% |  0.00% )    	(1x)	│  │  │  ├─ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:        	( 0.000066s |  8.11% |  0.00% )   	( 0.000077s |  8.07% |  0.00% )    	(1x)	│  │  │  │  local +i -l nn
│  │  │  │  9.4.0:        	( 0.000062s |  7.62% |  0.00% )   	( 0.000074s |  7.76% |  0.00% )    	(1x)	│  │  │  │  local vOut
│  │  │  │  11.4.0:       	( 0.000063s |  7.74% |  0.00% )   	( 0.000075s |  7.86% |  0.00% )    	(1x)	│  │  │  │  local -n vOut="$1"
│  │  │  │  12.4.0:       	( 0.000061s |  7.50% |  0.00% )   	( 0.000073s |  7.66% |  0.00% )    	(1x)	│  │  │  │  shift 1
│  │  │  │  13.4.0:       	( 0.000065s |  7.99% |  0.00% )   	( 0.000077s |  8.07% |  0.00% )    	(1x)	│  │  │  │  local -g vOut
│  │  │  │  15.4.0:       	( 0.000062s |  7.62% |  0.00% )   	( 0.000074s |  7.76% |  0.00% )    	(1x)	│  │  │  │  (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:       	( 0.000111s | 13.65% |  0.00% )   	( 0.000124s | 13.01% |  0.00% )    	(1x)	│  │  │  │  local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:       	( 0.000066s |  8.11% |  0.00% )   	( 0.000074s |  7.76% |  0.00% )    	(1x)	│  │  │  │  for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:       	( 0.000062s |  7.62% |  0.00% )   	( 0.000073s |  7.66% |  0.00% )    	(1x)	│  │  │  │  [[ -n ${nn} ]]
│  │  │  │  18.4.1:       	( 0.000064s |  7.87% |  0.00% )   	( 0.000076s |  7.97% |  0.00% )    	(1x)	│  │  │  │  continue
│  │  │  └─ 28.4.0:       	( 0.000073s |  8.97% |  0.00% )   	( 0.000086s |  9.02% |  0.00% )    	(1x)	│  │  │  └─ local +n vOut
│  │  │  483.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  485.3.0:         	( 0.007308s |  0.00% |  0.00% )   	( 0.007397s |  0.00% |  0.00% )    	(1x)	│  │  │  nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/'$'\n''}") && tmpA=("${tmpA[@]//!('$'\n'')/}") && tmpA=("${tmpA[@]//'$'\n''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:         	( 0.002548s |  0.00% |  0.00% )   	( 0.002653s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:      	( 0.000251s |  9.85% |  0.00% )   	( 0.000270s | 10.17% |  0.00% )    	(1x)	│  │  │  ├─ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:      	( 0.002297s | 90.14% |  0.00% )   	( 0.002383s | 89.82% |  0.00% )    	(1x)	│  │  │  └─ nproc
│  │  │  486.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nCPU < 1 ))
│  │  │  487.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nProcs} ]]
│  │  │  487.3.1:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  487.3.2:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  nProcs=${nCPU}
│  │  │  489.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.1:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  499.3.0:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  504.3.1:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < nLines ))
│  │  │  506.3.0:         	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │  doneIndicatorFlag=false
│  │  │  509.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.0:         	( 0.000163s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  type -a fallocate &> /dev/null
│  │  │  515.3.1:         	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.2:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${fallocateFlag:=true}"
│  │  │  518.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${exportOrderFlag}
│  │  │  521.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  522.3.0:         	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  523.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nullDelimiterFlag}
│  │  │  544.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  546.3.1:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  557.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${unescapeFlag}
│  │  │  566.3.0:         	( 0.003525s |  0.00% |  0.00% )   	( 0.003638s |  0.00% |  0.00% )    	(1x)	│  │  │  mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:         	( 0.000108s |  0.00% |  0.00% )   	( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 566.4.0:      	( 0.000108s |100.00% |  0.00% )   	( 0.000124s |100.00% |  0.00% )    	(1x)	│  │  │  └─ printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringFlag}
│  │  │  570.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringIDFlag}
│  │  │  576.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  nLinesCur=${nLines}
│  │  │  578.3.0:         	( 0.001463s |  0.00% |  0.00% )   	( 0.001542s |  0.00% |  0.00% )    	(1x)	│  │  │  mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  582.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${rmTmpDirFlag}
│  │  │  584.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:         	( 0.000077s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  evfd_init
│  │  │  622.3.0:         	( 0.000072s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  628.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  638.3.0:         	( 0.000525s |  0.00% |  0.00% )   	( 0.000541s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:         	( 0.077329s |  0.01% |  0.00% )   	( 0.077227s |  0.01% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:      	( 0.000074s |  0.09% |  0.00% )   	( 0.000085s |  0.11% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:      	( 0.011098s | 14.35% |  0.00% )   	( 0.011054s | 14.31% |  0.00% )    	(1x)	│  │  │  │  trap - EXIT
│  │  │  │  647.4.0:      	( 0.012152s | 15.71% |  0.00% )   	( 0.012132s | 15.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:      	( 0.012168s | 15.73% |  0.00% )   	( 0.012148s | 15.73% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:      	( 0.012132s | 15.68% |  0.00% )   	( 0.012116s | 15.68% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:      	( 0.012039s | 15.56% |  0.00% )   	( 0.012020s | 15.56% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:      	( 0.000061s |  0.07% |  0.00% )   	( 0.000072s |  0.09% |  0.00% )    	(1x)	│  │  │  │  case ${writeFileProgType} in
│  │  │  │  653.4.0:      	( 0.017389s | 22.48% |  0.00% )   	( 0.017351s | 22.46% |  0.00% )    	(1x)	│  │  │  │  evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:      	( 0.000085s |  0.10% |  0.00% )   	( 0.000097s |  0.12% |  0.00% )    	(1x)	│  │  │  │  : > "${tmpDir}"/.done
│  │  │  │  659.4.0:      	( 0.000060s |  0.07% |  0.00% )   	( 0.000072s |  0.09% |  0.00% )    	(1x)	│  │  │  │  evfd_signal
│  │  │  └─ 660.4.0:      	( 0.000071s |  0.09% |  0.00% )   	( 0.000080s |  0.10% |  0.00% )    	(1x)	│  │  │  └─ (( ${verboseLevel} > 1 ))
│  │  │  668.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:         	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  715.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  721.3.0:         	( 0.000407s |  0.00% |  0.00% )   	( 0.000428s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:         	( 4.711030s |  0.92% |  0.46% )   	( 1.674839s |  0.36% |  0.17% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:      	( 0.000230s |  0.00% |  0.00% )   	( 0.000263s |  0.01% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:      	( 0.014300s |  0.30% |  0.00% )   	( 0.014175s |  0.84% |  0.00% )    	(1x)	│  │  │  │  trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:      	( 0.012323s |  0.26% |  0.00% )   	( 0.012263s |  0.73% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:      	( 0.012248s |  0.25% |  0.00% )   	( 0.012167s |  0.72% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:      	( 0.012065s |  0.25% |  0.00% )   	( 0.012015s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:      	( 0.012251s |  0.26% |  0.00% )   	( 0.012198s |  0.72% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:      	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  740.4.0:      	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:      	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fd_read_pos_old=0
│  │  │  │  743.4.0:      	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=0
│  │  │  │  745.4.0:      	( 0.084314s |  1.78% |  0.00% )   	( 0.097371s |  5.81% |  0.01% )    	(678x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  747.4.0:      	( 3.323640s | 70.55% |  0.32% )   	( 0.113329s |  6.76% |  0.01% )    	(677x)	│  │  │  │  read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:      	( 0.001511s |  0.03% |  0.00% )   	( 0.001706s |  0.10% |  0.00% )    	(9x)	│  │  │  │  continue
│  │  │  │  749.4.0:      	( 0.086034s |  1.82% |  0.00% )   	( 0.093991s |  5.61% |  0.01% )    	(668x)	│  │  │  │  case ${REPLY} in
│  │  │  │  763.4.0:      	( 0.080795s |  1.71% |  0.00% )   	( 0.093814s |  5.60% |  0.01% )    	(667x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  764.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:      	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:      	( 0.081425s |  1.72% |  0.00% )   	( 0.094359s |  5.63% |  0.01% )    	(668x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  774.4.0:      	( 0.087260s |  1.85% |  0.00% )   	( 0.097009s |  5.79% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:      	( 0.084048s |  1.78% |  0.00% )   	( 0.097060s |  5.79% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:      	( 0.080453s |  1.70% |  0.00% )   	( 0.093171s |  5.56% |  0.01% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  782.4.1:      	( 0.000077s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:      	( 0.080738s |  1.71% |  0.00% )   	( 0.093565s |  5.58% |  0.01% )    	(668x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  786.4.0:      	( 0.080950s |  1.71% |  0.00% )   	( 0.093808s |  5.60% |  0.01% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  788.4.0:      	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  790.4.0:      	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:      	( 0.007139s |  0.15% |  0.00% )   	( 0.007574s |  0.45% |  0.00% )    	(1x)	│  │  │  │  mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:      	( 0.003534s |  0.07% |  0.00% )   	( 0.003890s |  0.23% |  0.00% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:   	( 0.003534s |100.00% |  0.00% )   	( 0.003890s |100.00% |  0.00% )    	(1x)	│  │  │  │  └─ : | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:      	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:      	( 0.000079s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:      	( 0.000121s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:      	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:      	( 0.000073s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:      	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  802.4.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:      	( 0.080876s |  1.71% |  0.00% )   	( 0.093667s |  5.59% |  0.01% )    	(668x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  812.4.0:      	( 0.079709s |  1.69% |  0.00% )   	( 0.092519s |  5.52% |  0.00% )    	(668x)	│  │  │  │  case ${nWait} in
│  │  │  │  823.4.0:      	( 0.078442s |  1.66% |  0.00% )   	( 0.090911s |  5.42% |  0.00% )    	(647x)	│  │  │  │  ((nWait--))
│  │  │  │  828.4.0:      	( 0.084101s |  1.78% |  0.00% )   	( 0.097155s |  5.80% |  0.01% )    	(668x)	│  │  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:      	( 0.081783s |  1.73% |  0.00% )   	( 0.094519s |  5.64% |  0.01% )    	(666x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  782.4.1:      	( 0.084454s |  1.79% |  0.00% )   	( 0.094198s |  5.62% |  0.01% )    	(667x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  814.4.0:      	( 0.002593s |  0.05% |  0.00% )   	( 0.002980s |  0.17% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:      	( 0.002467s |  0.05% |  0.00% )   	( 0.002866s |  0.17% |  0.00% )    	(21x)	│  │  │  │  (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:      	( 0.053389s |  1.13% |  0.00% )   	( 0.044725s |  2.67% |  0.00% )    	(21x)	│  │  │  │  fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:      	( 0.002702s |  0.05% |  0.00% )   	( 0.003104s |  0.18% |  0.00% )    	(21x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:      	( 0.002642s |  0.05% |  0.00% )   	( 0.003041s |  0.18% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:      	( 0.002676s |  0.05% |  0.00% )   	( 0.003079s |  0.18% |  0.00% )    	(21x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:      	( 0.000115s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  829.4.0:      	( 0.000114s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  830.4.0:      	( 0.000114s |  0.00% |  0.00% )   	( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fallocateFlag=false
│  │  │  │  831.4.0:      	( 0.000116s |  0.00% |  0.00% )   	( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nSpawnFlag=false
│  │  │  │  745.4.1:      	( 0.000118s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  745.4.2:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ -248.4.0:     	( 0.007911s |  0.16% |  0.00% )   	( 0.005991s |  0.35% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/pAuto'
│  │  │  839.3.0:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:         	( 0.000091s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:         	( 0.000081s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1345.3.0:        	( 0.001859s |  0.00% |  0.00% )   	( 0.001120s |  0.00% |  0.00% )    	(1x)	│  │  │  coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:        	( 0.005328s |  0.00% |  0.00% )   	( 0.006190s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:     	( 0.000110s |  2.06% |  0.00% )   	( 0.000123s |  1.98% |  0.00% )    	(1x)	│  │  │  ├─ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000077s |  1.24% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1363.4.1:     	( 0.000079s |  1.48% |  0.00% )   	( 0.000091s |  1.47% |  0.00% )    	(1x)	│  │  │  │  echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:     	( 0.000225s |  4.22% |  0.00% )   	( 0.000235s |  3.79% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1444.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:     	( 0.000062s |  1.16% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  echo "{"
│  │  │  │  1448.4.0:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1449.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1449.4.1:     	( 0.000066s |  1.23% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "mapfile"
│  │  │  │  1451.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1451.4.1:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1452.4.0:     	( 0.000066s |  1.23% |  0.00% )   	( 0.000077s |  1.24% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:     	( 0.000062s |  1.16% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1453.4.1:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000077s |  1.24% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1454.4.1:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1456.4.0:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:     	( 0.000076s |  1.42% |  0.00% )   	( 0.000087s |  1.40% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1457.4.1:     	( 0.000063s |  1.18% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1457.4.2:     	( 0.000063s |  1.18% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1461.4.0:     	( 0.000068s |  1.27% |  0.00% )   	( 0.000080s |  1.29% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1465.4.0:     	( 0.000066s |  1.23% |  0.00% )   	( 0.000077s |  1.24% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:     	( 0.000070s |  1.31% |  0.00% )   	( 0.000081s |  1.30% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:     	( 0.000068s |  1.27% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1510.4.1:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  printf '\n'
│  │  │  │  1511.4.0:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:     	( 0.000091s |  1.70% |  0.00% )   	( 0.000104s |  1.68% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1514.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1514.4.1:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1514.4.2:     	( 0.000062s |  1.16% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1514.4.3:     	( 0.000071s |  1.33% |  0.00% )   	( 0.000083s |  1.34% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1515.4.0:     	( 0.000071s |  1.33% |  0.00% )   	( 0.000083s |  1.34% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:     	( 0.000082s |  1.53% |  0.00% )   	( 0.000093s |  1.50% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:     	( 0.000062s |  1.16% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  1532.4.0:     	( 0.000074s |  1.38% |  0.00% )   	( 0.000085s |  1.37% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:     	( 0.000072s |  1.35% |  0.00% )   	( 0.000083s |  1.34% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:     	( 0.000062s |  1.16% |  0.00% )   	( 0.000073s |  1.17% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1544.4.1:     	( 0.000067s |  1.25% |  0.00% )   	( 0.000079s |  1.27% |  0.00% )    	(1x)	│  │  │  │  echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:     	( 0.000070s |  1.31% |  0.00% )   	( 0.000079s |  1.27% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1546.4.0:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  1551.4.0:     	( 0.000072s |  1.35% |  0.00% )   	( 0.000084s |  1.35% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:     	( 0.000067s |  1.25% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1556.4.0:     	( 0.000075s |  1.40% |  0.00% )   	( 0.000086s |  1.38% |  0.00% )    	(1x)	│  │  │  │  echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1557.4.1:     	( 0.000075s |  1.40% |  0.00% )   	( 0.000087s |  1.40% |  0.00% )    	(1x)	│  │  │  │  printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1562.4.1:     	( 0.000069s |  1.29% |  0.00% )   	( 0.000080s |  1.29% |  0.00% )    	(1x)	│  │  │  │  printf '%s' ' || '
│  │  │  │  1563.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1563.4.1:     	( 0.000077s |  1.44% |  0.00% )   	( 0.000088s |  1.42% |  0.00% )    	(1x)	│  │  │  │  echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1564.4.1:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1564.4.2:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000069s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1564.4.3:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000075s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1572.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000071s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1572.4.1:     	( 0.000067s |  1.25% |  0.00% )   	( 0.000078s |  1.26% |  0.00% )    	(1x)	│  │  │  │  echo '{'
│  │  │  │  1573.4.0:     	( 0.000060s |  1.12% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1573.4.1:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1574.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1575.4.0:     	( 0.000083s |  1.55% |  0.00% )   	( 0.000094s |  1.51% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1583.4.0:     	( 0.000058s |  1.08% |  0.00% )   	( 0.000069s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${stdinRunFlag}
│  │  │  │  1586.4.0:     	( 0.000059s |  1.10% |  0.00% )   	( 0.000070s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${noFuncFlag}
│  │  │  │  1589.4.0:     	( 0.000061s |  1.14% |  0.00% )   	( 0.000072s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${substituteStringFlag}
│  │  │  │  1590.4.0:     	( 0.000079s |  1.48% |  0.00% )   	( 0.000090s |  1.45% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:     	( 0.000065s |  1.21% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1608.4.0:     	( 0.000058s |  1.08% |  0.00% )   	( 0.000069s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1608.4.1:     	( 0.000068s |  1.27% |  0.00% )   	( 0.000078s |  1.26% |  0.00% )    	(1x)	│  │  │  │  printf '\n%s ' '}'
│  │  │  │  1609.4.0:     	( 0.000066s |  1.23% |  0.00% )   	( 0.000077s |  1.24% |  0.00% )    	(1x)	│  │  │  │  echo "${outStr}"
│  │  │  │  1610.4.0:     	( 0.000064s |  1.20% |  0.00% )   	( 0.000076s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1611.4.0:     	( 0.000063s |  1.18% |  0.00% )   	( 0.000074s |  1.19% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ 1616.4.0:     	( 0.000080s |  1.50% |  0.00% )   	( 0.000092s |  1.48% |  0.00% )    	(1x)	│  │  │  └─ echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:        	( 0.000252s |  0.00% |  0.00% )   	( 0.000290s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1355.3.0:        	( 0.000266s |  0.00% |  0.00% )   	( 0.000304s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:        	( 0.012359s |  0.00% |  0.00% )   	( 0.097799s |  0.02% |  0.01% )    	(1x)	│  │  │  trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:        	( 0.012188s |  0.00% |  0.00% )   	( 0.012180s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:        	( 0.012075s |  0.00% |  0.00% )   	( 0.012051s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:        	( 0.011887s |  0.00% |  0.00% )   	( 0.011865s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:        	( 0.000057s |  0.00% |  0.00% )   	( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:        	( 0.000056s |  0.00% |  0.00% )   	( 0.000066s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:        	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1393.3.0:        	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '\n' >&${fd_continue}
│  │  │  1396.3.0:        	( 0.000057s |  0.00% |  0.00% )   	( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1397.3.0:        	( 0.000057s |  0.00% |  0.00% )   	( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │  ((kkProcs=0 ))
│  │  │  1397.3.1:        	( 0.002753s |  0.00% |  0.00% )   	( 0.003173s |  0.00% |  0.00% )    	(29x)	│  │  │  ((kkProcs<28 ))
│  │  │  1398.3.0:        	( 0.002575s |  0.00% |  0.00% )   	( 0.002990s |  0.00% |  0.00% )    	(28x)	│  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:        	( 16.785445s |  3.28% |  1.64% )   	( 16.027777s |  3.44% |  1.72% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000556s |  0.00% |  0.00% )   	( 0.000574s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p0 p0_PID (&)
│  │  │  │  73.4.0:       	( 484.492146s | 99.99% | 47.43% )   	( 462.621246s | 99.99% | 49.71% )    	(28x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0:    	( 0.004475s |  0.00% |  0.00% )   	( 0.005106s |  0.00% |  0.00% )    	(28x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.w7oJ3p"
│  │  │  │  │  8.5.0:     	( 0.000080s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p0
│  │  │  │  │  12.5.0:    	( 0.012062s |  0.07% |  0.00% )   	( 0.012046s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0:    	( 0.479762s |  0.09% |  0.04% )   	( 0.472486s |  0.09% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 63086 ${BASHPID}' INT
│  │  │  │  │  15.5.0:    	( 0.478121s |  0.09% |  0.04% )   	( 0.473834s |  0.09% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 63086 ${BASHPID}' TERM
│  │  │  │  │  16.5.0:    	( 0.483646s |  0.09% |  0.04% )   	( 0.482198s |  0.09% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 63086 ${BASHPID}' HUP
│  │  │  │  │  17.5.0:    	( 0.504209s |  0.09% |  0.04% )   	( 0.502762s |  0.10% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0:    	( 0.110089s |  0.01% |  0.01% )   	( 0.121917s |  0.02% |  0.01% )    	(695x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0:    	( 0.094933s |  0.01% |  0.00% )   	( 0.108662s |  0.01% |  0.01% )    	(695x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1:    	( 0.003451s |  0.00% |  0.00% )   	( 0.003929s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.w7oJ3p"/.nLines
│  │  │  │  │  20.5.2:    	( 0.002968s |  0.00% |  0.00% )   	( 0.003464s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3:    	( 0.002892s |  0.00% |  0.00% )   	( 0.003366s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0:    	( 0.004358s |  0.02% |  0.00% )   	( 0.004911s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p0
│  │  │  │  │  23.5.0:    	( 6.540685s |  1.35% |  0.64% )   	( 0.153579s |  0.02% |  0.01% )    	(695x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0:    	( 0.101606s |  0.01% |  0.00% )   	( 0.115731s |  0.02% |  0.01% )    	(695x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.w7oJ3p"/.quit ]]
│  │  │  │  │  28.5.0:    	( 0.103626s |  0.01% |  0.01% )   	( 0.107788s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.w7oJ3p"/.done ]]
│  │  │  │  │  28.5.1:    	( 0.088957s |  0.01% |  0.00% )   	( 0.102069s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0:    	( 0.093016s |  0.01% |  0.00% )   	( 0.106211s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0:    	( 0.801003s |  0.16% |  0.07% )   	( 0.795015s |  0.16% |  0.08% )    	(668x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0:    	( 0.089485s |  0.01% |  0.00% )   	( 0.102859s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1:    	( 0.090769s |  0.01% |  0.00% )   	( 0.102676s |  0.01% |  0.01% )    	(667x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0:    	( 0.167123s |  0.03% |  0.01% )   	( 0.109847s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0:    	( 0.004263s |  0.02% |  0.00% )   	( 0.004806s |  0.02% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p0
│  │  │  │  │  48.5.0:    	( 0.091577s |  0.01% |  0.00% )   	( 0.102019s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0:    	( 0.090384s |  0.01% |  0.00% )   	( 0.100881s |  0.01% |  0.01% )    	(667x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0:    	( 0.003615s |  0.00% |  0.00% )   	( 0.004142s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0:    	( 0.003166s |  0.00% |  0.00% )   	( 0.003672s |  0.00% |  0.00% )    	(32x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0:    	( 472.835815s |  4.09% | 46.29% )   	( 457.286958s |  4.14% | 49.14% )    	(667x)	│  │  │  │  │  << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:  	( 0.084043s |  0.02% |  0.00% )   	( 0.097569s |  0.02% |  0.01% )    	(667x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:  	( 31.913276s |  6.86% |  3.12% )   	( 30.950030s |  6.90% |  3.32% )    	(667x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0:  	( 54.597424s | 10.35% |  5.34% )   	( 53.057854s | 10.40% |  5.70% )    	(667x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 45.559326s |  9.66% |  4.46% )   	( 43.925440s |  9.64% |  4.72% )    	(667x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 54.572640s | 10.33% |  5.34% )   	( 52.781826s | 10.31% |  5.67% )    	(667x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 43.604105s |  9.12% |  4.26% )   	( 42.262989s |  9.15% |  4.54% )    	(667x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 29.309935s |  6.47% |  2.86% )   	( 28.166308s |  6.45% |  3.02% )    	(667x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 15.148771s |  4.24% |  1.48% )   	( 14.416318s |  4.20% |  1.54% )    	(667x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 30.695619s |  6.36% |  3.00% )   	( 29.552894s |  6.33% |  3.17% )    	(667x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 13.240308s |  3.93% |  1.29% )   	( 12.641272s |  3.92% |  1.35% )    	(667x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 39.611386s |  8.73% |  3.87% )   	( 38.064158s |  8.67% |  4.09% )    	(667x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 84.820433s | 14.90% |  8.30% )   	( 83.240079s | 15.07% |  8.94% )    	(667x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 15.121147s |  4.46% |  1.48% )   	( 14.338427s |  4.42% |  1.54% )    	(667x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 14.557402s |  4.42% |  1.42% )   	( 13.791794s |  4.37% |  1.48% )    	(667x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1:    	( 0.003213s |  0.00% |  0.00% )   	( 0.003727s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1:    	( 0.092142s |  0.01% |  0.00% )   	( 0.105272s |  0.01% |  0.01% )    	(663x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1:    	( 0.084421s |  0.01% |  0.00% )   	( 0.097099s |  0.01% |  0.01% )    	(635x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0:    	( 0.124514s |  0.02% |  0.01% )   	( 0.109165s |  0.01% |  0.01% )    	(635x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0:    	( 0.002812s |  0.00% |  0.00% )   	( 0.003236s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0:    	( 0.002957s |  0.00% |  0.00% )   	( 0.003382s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0:     	( 0.187480s |  0.03% |  0.01% )   	( 0.183463s |  0.03% |  0.01% )    	(28x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0:      	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p0_PID})
│  │  │  1397.3.0:        	( 0.002581s |  0.00% |  0.00% )   	( 0.002992s |  0.00% |  0.00% )    	(28x)	│  │  │  ((kkProcs++ ))
│  │  │  1399.3.0:        	( 16.536080s |  3.23% |  1.61% )   	( 15.660790s |  3.37% |  1.68% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p1 p1_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000577s |  0.00% |  0.00% )   	( 0.000595s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p1 p1_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p1
│  │  │  │  │  12.5.0:    	( 0.012321s |  0.07% |  0.00% )   	( 0.012298s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005166s |  0.03% |  0.00% )   	( 0.005784s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p1
│  │  │  │  │  47.5.0:    	( 0.004555s |  0.02% |  0.00% )   	( 0.005121s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p1
│  │  │  └─ 146.4.0:      	( 0.000080s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p1_PID})
│  │  │  1399.3.0:        	( 16.693040s |  3.26% |  1.63% )   	( 15.795754s |  3.39% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p2 p2_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000590s |  0.00% |  0.00% )   	( 0.000610s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p2 p2_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p2
│  │  │  │  │  12.5.0:    	( 0.012202s |  0.07% |  0.00% )   	( 0.012187s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004766s |  0.02% |  0.00% )   	( 0.005340s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p2
│  │  │  │  │  47.5.0:    	( 0.004551s |  0.02% |  0.00% )   	( 0.005109s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p2
│  │  │  └─ 146.4.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p2_PID})
│  │  │  1399.3.0:        	( 16.783262s |  3.28% |  1.64% )   	( 15.939506s |  3.43% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p3 p3_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000571s |  0.00% |  0.00% )   	( 0.000592s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p3 p3_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000215s |  0.00% |  0.00% )   	( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p3
│  │  │  │  │  12.5.0:    	( 0.013144s |  0.07% |  0.00% )   	( 0.013123s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004132s |  0.02% |  0.00% )   	( 0.004640s |  0.02% |  0.00% )    	(25x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p3
│  │  │  │  │  47.5.0:    	( 0.003972s |  0.02% |  0.00% )   	( 0.004385s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p3
│  │  │  └─ 146.4.0:      	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p3_PID})
│  │  │  1399.3.0:        	( 18.258664s |  3.57% |  1.78% )   	( 17.661628s |  3.80% |  1.89% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000603s |  0.00% |  0.00% )   	( 0.000626s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p4 p4_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000337s |  0.00% |  0.00% )   	( 0.000372s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p4
│  │  │  │  │  12.5.0:    	( 0.012894s |  0.07% |  0.00% )   	( 0.012886s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003178s |  0.01% |  0.00% )   	( 0.003579s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p4
│  │  │  │  │  47.5.0:    	( 0.002719s |  0.01% |  0.00% )   	( 0.003069s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p4
│  │  │  └─ 146.4.0:      	( 0.000080s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p4_PID})
│  │  │  1399.3.0:        	( 20.341457s |  3.98% |  1.99% )   	( 19.670783s |  4.23% |  2.11% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p5 p5_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000594s |  0.00% |  0.00% )   	( 0.000616s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p5 p5_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000132s |  0.00% |  0.00% )   	( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p5
│  │  │  │  │  12.5.0:    	( 0.014665s |  0.07% |  0.00% )   	( 0.014643s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004730s |  0.02% |  0.00% )   	( 0.005296s |  0.02% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p5
│  │  │  │  │  47.5.0:    	( 0.004416s |  0.02% |  0.00% )   	( 0.004960s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p5
│  │  │  └─ 146.4.0:      	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p5_PID})
│  │  │  1399.3.0:        	( 16.530852s |  3.23% |  1.61% )   	( 15.820323s |  3.40% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000609s |  0.00% |  0.00% )   	( 0.000628s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p6 p6_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p6
│  │  │  │  │  12.5.0:    	( 0.012516s |  0.07% |  0.00% )   	( 0.012499s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004566s |  0.02% |  0.00% )   	( 0.005144s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p6
│  │  │  │  │  47.5.0:    	( 0.004430s |  0.02% |  0.00% )   	( 0.004993s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p6
│  │  │  │  │  49.5.0:    	( 0.000119s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  58.5.0:    	( 0.000120s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  59.5.0:    	( 0.000140s |  0.00% |  0.00% )   	( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0:    	( 0.000153s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  : > "/dev/shm/.forkrun.w7oJ3p"/.quit
│  │  │  │  │  62.5.0:    	( 0.000200s |  0.00% |  0.00% )   	( 0.000220s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.w7oJ3p"/.run/p* 1>&21
│  │  │  │  │  63.5.0:    	( 0.000142s |  0.00% |  0.00% )   	( 0.000158s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  break
│  │  │  └─ 146.4.0:      	( 0.000082s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p6_PID})
│  │  │  1399.3.0:        	( 16.539336s |  3.23% |  1.61% )   	( 15.639416s |  3.36% |  1.68% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p7 p7_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000614s |  0.00% |  0.00% )   	( 0.000631s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p7 p7_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p7
│  │  │  │  │  12.5.0:    	( 0.012509s |  0.07% |  0.00% )   	( 0.012490s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005095s |  0.03% |  0.00% )   	( 0.005696s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p7
│  │  │  │  │  47.5.0:    	( 0.004777s |  0.02% |  0.00% )   	( 0.005249s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p7
│  │  │  └─ 146.4.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p7_PID})
│  │  │  1399.3.0:        	( 17.433487s |  3.41% |  1.70% )   	( 16.733789s |  3.60% |  1.79% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p8 p8_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000608s |  0.00% |  0.00% )   	( 0.000629s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p8 p8_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000333s |  0.00% |  0.00% )   	( 0.000368s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p8
│  │  │  │  │  12.5.0:    	( 0.012487s |  0.07% |  0.00% )   	( 0.012469s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003193s |  0.01% |  0.00% )   	( 0.003588s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p8
│  │  │  │  │  47.5.0:    	( 0.002911s |  0.01% |  0.00% )   	( 0.003236s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p8
│  │  │  └─ 146.4.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p8_PID})
│  │  │  1399.3.0:        	( 17.147842s |  3.35% |  1.67% )   	( 16.511366s |  3.55% |  1.77% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p9 p9_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000623s |  0.00% |  0.00% )   	( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p9 p9_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000299s |  0.00% |  0.00% )   	( 0.000340s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p9
│  │  │  │  │  12.5.0:    	( 0.013025s |  0.07% |  0.00% )   	( 0.013009s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002986s |  0.01% |  0.00% )   	( 0.003359s |  0.02% |  0.00% )    	(18x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p9
│  │  │  │  │  47.5.0:    	( 0.002745s |  0.01% |  0.00% )   	( 0.003093s |  0.01% |  0.00% )    	(17x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p9
│  │  │  └─ 146.4.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p9_PID})
│  │  │  1399.3.0:        	( 17.202289s |  3.36% |  1.68% )   	( 16.486543s |  3.54% |  1.77% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p10 p10_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000628s |  0.00% |  0.00% )   	( 0.000643s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p10 p10_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000163s |  0.00% |  0.00% )   	( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p10
│  │  │  │  │  12.5.0:    	( 0.015344s |  0.08% |  0.00% )   	( 0.015314s |  0.09% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004378s |  0.02% |  0.00% )   	( 0.004907s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p10
│  │  │  │  │  47.5.0:    	( 0.004259s |  0.02% |  0.00% )   	( 0.004800s |  0.02% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p10
│  │  │  └─ 146.4.0:      	( 0.000085s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p10_PID})
│  │  │  1399.3.0:        	( 17.464723s |  3.41% |  1.70% )   	( 16.669848s |  3.58% |  1.79% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p11 p11_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000692s |  0.00% |  0.00% )   	( 0.000707s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p11 p11_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000091s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p11
│  │  │  │  │  12.5.0:    	( 0.016788s |  0.09% |  0.00% )   	( 0.016744s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003680s |  0.02% |  0.00% )   	( 0.004141s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p11
│  │  │  │  │  47.5.0:    	( 0.003443s |  0.01% |  0.00% )   	( 0.003868s |  0.02% |  0.00% )    	(21x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p11
│  │  │  └─ 146.4.0:      	( 0.000081s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p11_PID})
│  │  │  1399.3.0:        	( 16.290251s |  3.18% |  1.59% )   	( 15.233654s |  3.27% |  1.63% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p12 p12_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000699s |  0.00% |  0.00% )   	( 0.000714s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p12 p12_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000125s |  0.00% |  0.00% )   	( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p12
│  │  │  │  │  12.5.0:    	( 0.013773s |  0.08% |  0.00% )   	( 0.013731s |  0.09% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005396s |  0.03% |  0.00% )   	( 0.005993s |  0.03% |  0.00% )    	(32x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p12
│  │  │  │  │  47.5.0:    	( 0.005113s |  0.03% |  0.00% )   	( 0.005760s |  0.03% |  0.00% )    	(31x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p12
│  │  │  └─ 146.4.0:      	( 0.000084s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p12_PID})
│  │  │  1399.3.0:        	( 16.814096s |  3.29% |  1.64% )   	( 15.823274s |  3.40% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p13 p13_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000897s |  0.00% |  0.00% )   	( 0.000923s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p13 p13_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000147s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p13
│  │  │  │  │  12.5.0:    	( 0.023979s |  0.14% |  0.00% )   	( 0.023902s |  0.15% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004673s |  0.02% |  0.00% )   	( 0.005250s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p13
│  │  │  │  │  47.5.0:    	( 0.004422s |  0.02% |  0.00% )   	( 0.004993s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p13
│  │  │  └─ 146.4.0:      	( 0.000164s |  0.00% |  0.00% )   	( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p13_PID})
│  │  │  1399.3.0:        	( 19.761221s |  3.86% |  1.93% )   	( 18.776907s |  4.04% |  2.01% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p14 p14_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000961s |  0.00% |  0.00% )   	( 0.000984s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p14 p14_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000144s |  0.00% |  0.00% )   	( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p14
│  │  │  │  │  12.5.0:    	( 0.024099s |  0.12% |  0.00% )   	( 0.024015s |  0.12% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004668s |  0.02% |  0.00% )   	( 0.005214s |  0.02% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p14
│  │  │  │  │  47.5.0:    	( 0.004562s |  0.02% |  0.00% )   	( 0.005119s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p14
│  │  │  └─ 146.4.0:      	( 0.000143s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p14_PID})
│  │  │  1399.3.0:        	( 16.805056s |  3.28% |  1.64% )   	( 15.975211s |  3.43% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p15 p15_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000982s |  0.00% |  0.00% )   	( 0.001000s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p15 p15_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p15
│  │  │  │  │  12.5.0:    	( 0.012640s |  0.07% |  0.00% )   	( 0.012563s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004229s |  0.02% |  0.00% )   	( 0.004730s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p15
│  │  │  │  │  47.5.0:    	( 0.003893s |  0.02% |  0.00% )   	( 0.004370s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p15
│  │  │  └─ 146.4.0:      	( 0.000142s |  0.00% |  0.00% )   	( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p15_PID})
│  │  │  1399.3.0:        	( 16.337911s |  3.19% |  1.59% )   	( 15.491651s |  3.33% |  1.66% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000973s |  0.00% |  0.00% )   	( 0.000997s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p16 p16_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p16
│  │  │  │  │  12.5.0:    	( 0.015143s |  0.09% |  0.00% )   	( 0.015082s |  0.09% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004732s |  0.02% |  0.00% )   	( 0.005305s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p16
│  │  │  │  │  47.5.0:    	( 0.004761s |  0.02% |  0.00% )   	( 0.005349s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p16
│  │  │  └─ 146.4.0:      	( 0.000141s |  0.00% |  0.00% )   	( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p16_PID})
│  │  │  1399.3.0:        	( 16.419020s |  3.21% |  1.60% )   	( 15.355026s |  3.30% |  1.65% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p17 p17_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000968s |  0.00% |  0.00% )   	( 0.000994s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p17 p17_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p17
│  │  │  │  │  12.5.0:    	( 0.012932s |  0.07% |  0.00% )   	( 0.012902s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004535s |  0.02% |  0.00% )   	( 0.005069s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p17
│  │  │  │  │  47.5.0:    	( 0.004276s |  0.02% |  0.00% )   	( 0.004832s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p17
│  │  │  └─ 146.4.0:      	( 0.000140s |  0.00% |  0.00% )   	( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p17_PID})
│  │  │  1399.3.0:        	( 17.615703s |  3.44% |  1.72% )   	( 17.036423s |  3.66% |  1.83% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p18 p18_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000976s |  0.00% |  0.00% )   	( 0.000992s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p18 p18_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000086s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p18
│  │  │  │  │  12.5.0:    	( 0.014866s |  0.08% |  0.00% )   	( 0.014823s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003245s |  0.01% |  0.00% )   	( 0.003640s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p18
│  │  │  │  │  47.5.0:    	( 0.002938s |  0.01% |  0.00% )   	( 0.003310s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p18
│  │  │  └─ 146.4.0:      	( 0.000144s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p18_PID})
│  │  │  1399.3.0:        	( 18.931466s |  3.70% |  1.85% )   	( 18.377331s |  3.95% |  1.97% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p19 p19_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000982s |  0.00% |  0.00% )   	( 0.001007s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p19 p19_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000147s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p19
│  │  │  │  │  12.5.0:    	( 0.020930s |  0.11% |  0.00% )   	( 0.020865s |  0.11% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002635s |  0.01% |  0.00% )   	( 0.002943s |  0.01% |  0.00% )    	(16x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p19
│  │  │  │  │  47.5.0:    	( 0.002465s |  0.01% |  0.00% )   	( 0.002786s |  0.01% |  0.00% )    	(15x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p19
│  │  │  └─ 146.4.0:      	( 0.000142s |  0.00% |  0.00% )   	( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p19_PID})
│  │  │  1399.3.0:        	( 16.517519s |  3.23% |  1.61% )   	( 15.841029s |  3.40% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p20 p20_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001010s |  0.00% |  0.00% )   	( 0.001033s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p20 p20_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000088s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p20
│  │  │  │  │  12.5.0:    	( 0.013022s |  0.07% |  0.00% )   	( 0.012984s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005146s |  0.03% |  0.00% )   	( 0.005797s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p20
│  │  │  │  │  47.5.0:    	( 0.004819s |  0.02% |  0.00% )   	( 0.005389s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p20
│  │  │  └─ 146.4.0:      	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p20_PID})
│  │  │  1399.3.0:        	( 16.989340s |  3.32% |  1.66% )   	( 16.336698s |  3.51% |  1.75% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p21 p21_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001024s |  0.00% |  0.00% )   	( 0.001046s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p21 p21_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000163s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p21
│  │  │  │  │  12.5.0:    	( 0.024276s |  0.14% |  0.00% )   	( 0.024187s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004018s |  0.02% |  0.00% )   	( 0.004500s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p21
│  │  │  │  │  47.5.0:    	( 0.003855s |  0.02% |  0.00% )   	( 0.004315s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p21
│  │  │  └─ 146.4.0:      	( 0.000145s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p21_PID})
│  │  │  1399.3.0:        	( 17.382321s |  3.40% |  1.70% )   	( 16.831719s |  3.62% |  1.80% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000944s |  0.00% |  0.00% )   	( 0.000963s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p22 p22_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000155s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p22
│  │  │  │  │  12.5.0:    	( 0.024153s |  0.13% |  0.00% )   	( 0.024074s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003438s |  0.01% |  0.00% )   	( 0.003865s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p22
│  │  │  │  │  47.5.0:    	( 0.003323s |  0.01% |  0.00% )   	( 0.003718s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p22
│  │  │  └─ 146.4.0:      	( 0.000159s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p22_PID})
│  │  │  1399.3.0:        	( 18.797778s |  3.67% |  1.84% )   	( 17.748828s |  3.82% |  1.90% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p23 p23_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001063s |  0.00% |  0.00% )   	( 0.001083s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p23 p23_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000090s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p23
│  │  │  │  │  12.5.0:    	( 0.026422s |  0.14% |  0.00% )   	( 0.026338s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005126s |  0.02% |  0.00% )   	( 0.005751s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p23
│  │  │  │  │  47.5.0:    	( 0.004721s |  0.02% |  0.00% )   	( 0.005312s |  0.02% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p23
│  │  │  └─ 146.4.0:      	( 0.000149s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p23_PID})
│  │  │  1399.3.0:        	( 17.096059s |  3.34% |  1.67% )   	( 16.466208s |  3.54% |  1.76% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p24 p24_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001052s |  0.00% |  0.00% )   	( 0.001073s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p24 p24_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000183s |  0.00% |  0.00% )   	( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p24
│  │  │  │  │  12.5.0:    	( 0.024258s |  0.14% |  0.00% )   	( 0.024178s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003224s |  0.01% |  0.00% )   	( 0.003619s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p24
│  │  │  │  │  47.5.0:    	( 0.003207s |  0.01% |  0.00% )   	( 0.003611s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p24
│  │  │  └─ 146.4.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p24_PID})
│  │  │  1399.3.0:        	( 16.582491s |  3.24% |  1.62% )   	( 15.875747s |  3.41% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p25 p25_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001190s |  0.00% |  0.00% )   	( 0.001208s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p25 p25_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000170s |  0.00% |  0.00% )   	( 0.000193s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p25
│  │  │  │  │  12.5.0:    	( 0.025854s |  0.15% |  0.00% )   	( 0.025714s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004760s |  0.02% |  0.00% )   	( 0.005296s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p25
│  │  │  │  │  47.5.0:    	( 0.004463s |  0.02% |  0.00% )   	( 0.004989s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p25
│  │  │  └─ 146.4.0:      	( 0.000156s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p25_PID})
│  │  │  1399.3.0:        	( 17.787502s |  3.48% |  1.74% )   	( 17.126317s |  3.68% |  1.84% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p26 p26_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001085s |  0.00% |  0.00% )   	( 0.001105s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p26 p26_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p26
│  │  │  │  │  12.5.0:    	( 0.023715s |  0.13% |  0.00% )   	( 0.023644s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003407s |  0.01% |  0.00% )   	( 0.003813s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p26
│  │  │  │  │  47.5.0:    	( 0.006276s |  0.03% |  0.00% )   	( 0.003675s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p26
│  │  │  └─ 146.4.0:      	( 0.000152s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p26_PID})
│  │  │  1399.3.0:        	( 16.674406s |  3.26% |  1.63% )   	( 15.735173s |  3.38% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p27 p27_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001092s |  0.00% |  0.00% )   	( 0.001116s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p27 p27_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000200s |  0.00% |  0.00% )   	( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.w7oJ3p"/.run/p27
│  │  │  │  │  12.5.0:    	( 0.032917s |  0.19% |  0.00% )   	( 0.024352s |  0.15% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.w7oJ3p"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.w7oJ3p"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.w7oJ3p"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003940s |  0.02% |  0.00% )   	( 0.004426s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p27
│  │  │  │  │  47.5.0:    	( 0.003802s |  0.02% |  0.00% )   	( 0.004264s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.w7oJ3p"/.wait/p27
│  │  │  └─ 146.4.0:      	( 0.000155s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p27_PID})
│  │  │  1401.3.0:        	( 0.000151s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:        	( 0.000120s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:        	( 0.000120s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:        	( 0.001224s |  0.00% |  0.00% )   	( 0.001238s |  0.00% |  0.00% )    	(1x)	│  │  │  declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:        	( 0.000129s |  0.00% |  0.00% )   	( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1478.3.0:        	( 0.000115s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:        	( 0.000121s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1488.3.0:        	( 21.610155s |  4.22% |  2.11% )   	( 0.001555s |  0.00% |  0.00% )    	(1x)	│  │  │  wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:        	( 0.000282s |  0.00% |  0.00% )   	( 0.000316s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:        	( 0.000274s |  0.00% |  0.00% )   	( 0.000318s |  0.00% |  0.00% )    	(1x)	│  │  └─ ${nSpawnFlag}
│  │  1503.2.0:           	( 0.000304s |  0.00% |  0.00% )   	( 0.000352s |  0.00% |  0.00% )    	(1x)	│  │  wait
└─ └─ -248.2.0:           	( 0.008361s |  0.00% |  0.00% )   	( 0.005259s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.w7oJ3p" 2>/dev/null'

TOTAL RUN TIME: 1021.394622s
TOTAL CPU TIME: 930.520805s
