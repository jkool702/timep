LINE.DEPTH.CMD NUMBER     	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:     	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
__________________________	________________________________	________________________________	____________________________________
9.0.0:                    	( 462.926707s | 50.09% )          	( 419.468068s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:                 	( 0.000606s |  0.00% |  0.00% )   	( 0.000296s |  0.00% |  0.00% )    	(1x)	├─ forkrun ff < /mnt/ramdisk/flist > /dev/null
│  433.1.0:               	( 462.926101s | 99.99% | 50.09% )   	( 419.467772s | 99.99% | 49.93% )    	(1x)	│  << (SUBSHELL) >>
│  ├─ 433.2.0:            	( 0.023609s |  0.00% |  0.00% )   	( 0.023559s |  0.00% |  0.00% )    	(1x)	│  ├─ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:            	( 0.000072s |  0.00% |  0.00% )   	( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  shopt -s extglob
│  │  113.2.0:            	( 0.000078s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:            	( 0.000129s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:            	( 0.000095s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:            	( 0.000079s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:            	( 0.000090s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  [[ $# == 0 ]]
│  │  125.2.1:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  optParseFlag=true
│  │  126.2.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  ${optParseFlag}
│  │  126.2.1:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  (( $# > 0  ))
│  │  126.2.2:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  [[ "$1" == [-+]* ]]
│  │  323.2.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  [ -t "${fd_stdin0}" ]
│  │  332.2.0:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${TMPDIR} ]]
│  │  332.2.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  [[ -d '/dev/shm' ]]
│  │  332.2.3:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  tmpDirRoot='/dev/shm'
│  │  334.2.0:            	( 0.000670s |  0.00% |  0.00% )   	( 0.000347s |  0.00% |  0.00% )    	(1x)	│  │  tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:            	( 0.002823s |  0.00% |  0.00% )   	( 0.002823s |  0.00% |  0.00% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  └─ 334.3.0:         	( 0.002823s |100.00% |  0.00% )   	( 0.002823s |100.00% |  0.00% )    	(1x)	│  │  └─ mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  fPath="${tmpDir}"/.stdin
│  │  337.2.0:            	( 0.001159s |  0.00% |  0.00% )   	( 0.001243s |  0.00% |  0.00% )    	(1x)	│  │  mkdir -p "${tmpDir}"/.run
│  │  338.2.0:            	( 0.000085s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  : > "${fPath}"
│  │  340.2.0:            	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  ${rmTmpDirFlag}
│  │  340.2.1:            	( 0.014159s |  0.00% |  0.00% )   	( 0.000365s |  0.00% |  0.00% )    	(1x)	│  │  trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:           	( 462.879034s | 99.98% | 50.09% )   	( 419.435527s | 99.99% | 49.93% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  ├─ 348.3.0:         	( 0.000073s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  ├─ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:        	( 0.000078s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:     	( 0.000467s |100.00% |  0.00% )   	( 0.000556s |100.00% |  0.00% )    	(6x)	│  │  │  └─ :
│  │  │  1502.3.1:        	( 0.000079s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.2:        	( 0.000078s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.3:        	( 0.000077s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.4:        	( 0.000077s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.5:        	( 0.000078s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  363.3.0:         	( 0.000085s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  LC_ALL=C
│  │  │  364.3.0:         	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  LANG=C
│  │  │  365.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  IFS=
│  │  │  367.3.0:         	( 0.000181s |  0.00% |  0.00% )   	( 0.000195s |  0.00% |  0.00% )    	(1x)	│  │  │  enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:         	( 0.000072s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  PID0="${BASHPID}"
│  │  │  375.3.0:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  shopt -s nullglob
│  │  │  378.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:         	( 0.000079s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  enable lseek &> /dev/null
│  │  │  381.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekFlag:=true}"
│  │  │  386.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  387.3.0:         	( 0.003024s |  0.00% |  0.00% )   	( 0.003074s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:         	( 0.000108s |  0.00% |  0.00% )   	( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 387.4.0:      	( 0.000108s |100.00% |  0.00% )   	( 0.000122s |100.00% |  0.00% )    	(1x)	│  │  │  └─ lseek $fd_read 0
│  │  │  387.3.2:         	( 0.000072s |  0.00% |  0.00% )   	( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekPosFlag:=true}"
│  │  │  391.3.0:         	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  runCmd=("${@//''/}")
│  │  │  398.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  noFuncFlag=false
│  │  │  401.3.0:         	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  467.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nLines} ]]
│  │  │  467.3.1:         	( 0.000072s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${nLines} ]]
│  │  │  468.3.1:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  nLines=1
│  │  │  472.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:         	( 0.000933s |  0.00% |  0.00% )   	( 0.001077s |  0.00% |  0.00% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:        	( 0.000060s |  6.43% |  0.00% )   	( 0.000072s |  6.68% |  0.00% )    	(1x)	│  │  │  ├─ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:        	( 0.000072s |  7.71% |  0.00% )   	( 0.000085s |  7.89% |  0.00% )    	(1x)	│  │  │  │  local +i -l nn
│  │  │  │  9.4.0:        	( 0.000091s |  9.75% |  0.00% )   	( 0.000105s |  9.74% |  0.00% )    	(1x)	│  │  │  │  local vOut
│  │  │  │  11.4.0:       	( 0.000072s |  7.71% |  0.00% )   	( 0.000084s |  7.79% |  0.00% )    	(1x)	│  │  │  │  local -n vOut="$1"
│  │  │  │  12.4.0:       	( 0.000068s |  7.28% |  0.00% )   	( 0.000080s |  7.42% |  0.00% )    	(1x)	│  │  │  │  shift 1
│  │  │  │  13.4.0:       	( 0.000074s |  7.93% |  0.00% )   	( 0.000086s |  7.98% |  0.00% )    	(1x)	│  │  │  │  local -g vOut
│  │  │  │  15.4.0:       	( 0.000065s |  6.96% |  0.00% )   	( 0.000077s |  7.14% |  0.00% )    	(1x)	│  │  │  │  (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:       	( 0.000166s | 17.79% |  0.00% )   	( 0.000176s | 16.34% |  0.00% )    	(1x)	│  │  │  │  local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:       	( 0.000063s |  6.75% |  0.00% )   	( 0.000075s |  6.96% |  0.00% )    	(1x)	│  │  │  │  for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:       	( 0.000062s |  6.64% |  0.00% )   	( 0.000074s |  6.87% |  0.00% )    	(1x)	│  │  │  │  [[ -n ${nn} ]]
│  │  │  │  18.4.1:       	( 0.000067s |  7.18% |  0.00% )   	( 0.000078s |  7.24% |  0.00% )    	(1x)	│  │  │  │  continue
│  │  │  └─ 28.4.0:       	( 0.000073s |  7.82% |  0.00% )   	( 0.000085s |  7.89% |  0.00% )    	(1x)	│  │  │  └─ local +n vOut
│  │  │  483.3.0:         	( 0.000078s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  485.3.0:         	( 0.005403s |  0.00% |  0.00% )   	( 0.005523s |  0.00% |  0.00% )    	(1x)	│  │  │  nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/'$'\n''}") && tmpA=("${tmpA[@]//!('$'\n'')/}") && tmpA=("${tmpA[@]//'$'\n''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:         	( 0.001797s |  0.00% |  0.00% )   	( 0.001885s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:      	( 0.000175s |  9.73% |  0.00% )   	( 0.000188s |  9.97% |  0.00% )    	(1x)	│  │  │  ├─ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:      	( 0.001622s | 90.26% |  0.00% )   	( 0.001697s | 90.02% |  0.00% )    	(1x)	│  │  │  └─ nproc
│  │  │  486.3.0:         	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nCPU < 1 ))
│  │  │  487.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nProcs} ]]
│  │  │  487.3.1:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  487.3.2:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  nProcs=${nCPU}
│  │  │  489.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.1:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  499.3.0:         	( 0.000098s |  0.00% |  0.00% )   	( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:         	( 0.000075s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  504.3.1:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < nLines ))
│  │  │  506.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  doneIndicatorFlag=false
│  │  │  509.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.0:         	( 0.000158s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  type -a fallocate &> /dev/null
│  │  │  515.3.1:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.2:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${fallocateFlag:=true}"
│  │  │  518.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${exportOrderFlag}
│  │  │  521.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  522.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  523.3.0:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nullDelimiterFlag}
│  │  │  544.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:         	( 0.000082s |  0.00% |  0.00% )   	( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  546.3.1:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  557.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${unescapeFlag}
│  │  │  566.3.0:         	( 0.002808s |  0.00% |  0.00% )   	( 0.002929s |  0.00% |  0.00% )    	(1x)	│  │  │  mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:         	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 566.4.0:      	( 0.000082s |100.00% |  0.00% )   	( 0.000094s |100.00% |  0.00% )    	(1x)	│  │  │  └─ printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringFlag}
│  │  │  570.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringIDFlag}
│  │  │  576.3.0:         	( 0.000080s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  nLinesCur=${nLines}
│  │  │  578.3.0:         	( 0.001610s |  0.00% |  0.00% )   	( 0.001698s |  0.00% |  0.00% )    	(1x)	│  │  │  mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:         	( 0.000093s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  582.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  ${rmTmpDirFlag}
│  │  │  584.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:         	( 0.000080s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  evfd_init
│  │  │  622.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  628.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  638.3.0:         	( 0.000547s |  0.00% |  0.00% )   	( 0.000559s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:         	( 0.080307s |  0.01% |  0.00% )   	( 0.080239s |  0.01% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:      	( 0.000087s |  0.10% |  0.00% )   	( 0.000099s |  0.12% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:      	( 0.011576s | 14.41% |  0.00% )   	( 0.011557s | 14.40% |  0.00% )    	(1x)	│  │  │  │  trap - EXIT
│  │  │  │  647.4.0:      	( 0.012550s | 15.62% |  0.00% )   	( 0.012533s | 15.61% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:      	( 0.012617s | 15.71% |  0.00% )   	( 0.012595s | 15.69% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:      	( 0.012583s | 15.66% |  0.00% )   	( 0.012562s | 15.65% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:      	( 0.012559s | 15.63% |  0.00% )   	( 0.012538s | 15.62% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:      	( 0.000063s |  0.07% |  0.00% )   	( 0.000074s |  0.09% |  0.00% )    	(1x)	│  │  │  │  case ${writeFileProgType} in
│  │  │  │  653.4.0:      	( 0.018039s | 22.46% |  0.00% )   	( 0.018012s | 22.44% |  0.00% )    	(1x)	│  │  │  │  evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:      	( 0.000094s |  0.11% |  0.00% )   	( 0.000107s |  0.13% |  0.00% )    	(1x)	│  │  │  │  : > "${tmpDir}"/.done
│  │  │  │  659.4.0:      	( 0.000070s |  0.08% |  0.00% )   	( 0.000082s |  0.10% |  0.00% )    	(1x)	│  │  │  │  evfd_signal
│  │  │  └─ 660.4.0:      	( 0.000069s |  0.08% |  0.00% )   	( 0.000080s |  0.09% |  0.00% )    	(1x)	│  │  │  └─ (( ${verboseLevel} > 1 ))
│  │  │  668.3.0:         	( 0.000080s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  715.3.0:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:         	( 0.000086s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  721.3.0:         	( 0.000420s |  0.00% |  0.00% )   	( 0.000441s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:         	( 3.328738s |  0.71% |  0.36% )   	( 1.760294s |  0.41% |  0.20% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:      	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:      	( 0.012661s |  0.38% |  0.00% )   	( 0.012637s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:      	( 0.012557s |  0.37% |  0.00% )   	( 0.012538s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:      	( 0.012655s |  0.38% |  0.00% )   	( 0.012633s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:      	( 0.012577s |  0.37% |  0.00% )   	( 0.012552s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:      	( 0.012640s |  0.37% |  0.00% )   	( 0.012602s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:      	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  740.4.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:      	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fd_read_pos_old=0
│  │  │  │  743.4.0:      	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=0
│  │  │  │  745.4.0:      	( 0.088436s |  2.65% |  0.00% )   	( 0.101528s |  5.76% |  0.01% )    	(671x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  747.4.0:      	( 1.875657s | 56.34% |  0.20% )   	( 0.115162s |  6.54% |  0.01% )    	(670x)	│  │  │  │  read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:      	( 0.000615s |  0.01% |  0.00% )   	( 0.000709s |  0.04% |  0.00% )    	(5x)	│  │  │  │  continue
│  │  │  │  749.4.0:      	( 0.086596s |  2.60% |  0.00% )   	( 0.099655s |  5.66% |  0.01% )    	(665x)	│  │  │  │  case ${REPLY} in
│  │  │  │  763.4.0:      	( 0.087015s |  2.61% |  0.00% )   	( 0.099471s |  5.65% |  0.01% )    	(665x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  764.4.0:      	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:      	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:      	( 0.086064s |  2.58% |  0.00% )   	( 0.098946s |  5.62% |  0.01% )    	(665x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  774.4.0:      	( 0.089217s |  2.68% |  0.00% )   	( 0.102095s |  5.79% |  0.01% )    	(665x)	│  │  │  │  lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:      	( 0.089734s |  2.69% |  0.00% )   	( 0.102710s |  5.83% |  0.01% )    	(665x)	│  │  │  │  lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:      	( 0.086054s |  2.58% |  0.00% )   	( 0.098942s |  5.62% |  0.01% )    	(665x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  782.4.1:      	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:      	( 0.085940s |  2.58% |  0.00% )   	( 0.098882s |  5.61% |  0.01% )    	(665x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  786.4.0:      	( 0.086006s |  2.58% |  0.00% )   	( 0.098938s |  5.62% |  0.01% )    	(665x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  788.4.0:      	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  790.4.0:      	( 0.000069s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │  [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:      	( 0.005942s |  0.17% |  0.00% )   	( 0.006398s |  0.36% |  0.00% )    	(1x)	│  │  │  │  mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:      	( 0.002996s |  0.09% |  0.00% )   	( 0.003382s |  0.19% |  0.00% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:   	( 0.002996s |100.00% |  0.00% )   	( 0.003382s |100.00% |  0.00% )    	(1x)	│  │  │  │  └─ : | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:      	( 0.000128s |  0.00% |  0.00% )   	( 0.000147s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:      	( 0.000116s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:      	( 0.000129s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:      	( 0.000122s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:      	( 0.000119s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:      	( 0.000123s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:      	( 0.000120s |  0.00% |  0.00% )   	( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  802.4.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000177s |  0.01% |  0.00% )    	(1x)	│  │  │  │  printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:      	( 0.000118s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:      	( 0.000125s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:      	( 0.085762s |  2.57% |  0.00% )   	( 0.098610s |  5.60% |  0.01% )    	(665x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  812.4.0:      	( 0.085107s |  2.55% |  0.00% )   	( 0.098144s |  5.57% |  0.01% )    	(665x)	│  │  │  │  case ${nWait} in
│  │  │  │  823.4.0:      	( 0.083903s |  2.52% |  0.00% )   	( 0.096015s |  5.45% |  0.01% )    	(644x)	│  │  │  │  ((nWait--))
│  │  │  │  828.4.0:      	( 0.092711s |  2.78% |  0.01% )   	( 0.102911s |  5.84% |  0.01% )    	(665x)	│  │  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:      	( 0.087063s |  2.61% |  0.00% )   	( 0.099980s |  5.67% |  0.01% )    	(664x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  782.4.1:      	( 0.086502s |  2.59% |  0.00% )   	( 0.099417s |  5.64% |  0.01% )    	(664x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  814.4.0:      	( 0.002924s |  0.08% |  0.00% )   	( 0.003367s |  0.19% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:      	( 0.002903s |  0.08% |  0.00% )   	( 0.003327s |  0.18% |  0.00% )    	(21x)	│  │  │  │  (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:      	( 0.047648s |  1.43% |  0.00% )   	( 0.048319s |  2.74% |  0.00% )    	(21x)	│  │  │  │  fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:      	( 0.002980s |  0.08% |  0.00% )   	( 0.003413s |  0.19% |  0.00% )    	(21x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:      	( 0.002985s |  0.08% |  0.00% )   	( 0.003402s |  0.19% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:      	( 0.003096s |  0.09% |  0.00% )   	( 0.003533s |  0.20% |  0.00% )    	(21x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  829.4.0:      	( 0.000190s |  0.00% |  0.00% )   	( 0.000207s |  0.01% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  830.4.0:      	( 0.000177s |  0.00% |  0.00% )   	( 0.000204s |  0.01% |  0.00% )    	(1x)	│  │  │  │  fallocateFlag=false
│  │  │  │  831.4.0:      	( 0.000183s |  0.00% |  0.00% )   	( 0.000209s |  0.01% |  0.00% )    	(1x)	│  │  │  │  nSpawnFlag=false
│  │  │  │  745.4.1:      	( 0.000182s |  0.00% |  0.00% )   	( 0.000204s |  0.01% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  745.4.2:      	( 0.000213s |  0.00% |  0.00% )   	( 0.000241s |  0.01% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ -256.4.0:     	( 0.008887s |  0.26% |  0.00% )   	( 0.006757s |  0.38% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/pAuto'
│  │  │  839.3.0:         	( 0.000072s |  0.00% |  0.00% )   	( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:         	( 0.000099s |  0.00% |  0.00% )   	( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:         	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1345.3.0:        	( 0.058121s |  0.01% |  0.00% )   	( 0.058070s |  0.01% |  0.00% )    	(1x)	│  │  │  coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:        	( 0.005644s |  0.00% |  0.00% )   	( 0.006510s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:     	( 0.000121s |  2.14% |  0.00% )   	( 0.000133s |  2.04% |  0.00% )    	(1x)	│  │  │  ├─ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000081s |  1.24% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1363.4.1:     	( 0.000081s |  1.43% |  0.00% )   	( 0.000092s |  1.41% |  0.00% )    	(1x)	│  │  │  │  echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:     	( 0.000222s |  3.93% |  0.00% )   	( 0.000231s |  3.54% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1444.4.0:     	( 0.000062s |  1.09% |  0.00% )   	( 0.000074s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  echo "{"
│  │  │  │  1448.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1449.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1449.4.1:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:     	( 0.000071s |  1.25% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "mapfile"
│  │  │  │  1451.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1451.4.1:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000078s |  1.19% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1452.4.0:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1453.4.1:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1454.4.1:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1456.4.0:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1457.4.1:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000077s |  1.18% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1457.4.2:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1461.4.0:     	( 0.000075s |  1.32% |  0.00% )   	( 0.000083s |  1.27% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1465.4.0:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:     	( 0.000072s |  1.27% |  0.00% )   	( 0.000083s |  1.27% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1510.4.1:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000078s |  1.19% |  0.00% )    	(1x)	│  │  │  │  printf '\n'
│  │  │  │  1511.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:     	( 0.000095s |  1.68% |  0.00% )   	( 0.000107s |  1.64% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1514.4.0:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1514.4.1:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1514.4.2:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1514.4.3:     	( 0.000088s |  1.55% |  0.00% )   	( 0.000100s |  1.53% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1515.4.0:     	( 0.000070s |  1.24% |  0.00% )   	( 0.000082s |  1.25% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:     	( 0.000099s |  1.75% |  0.00% )   	( 0.000110s |  1.68% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  1532.4.0:     	( 0.000084s |  1.48% |  0.00% )   	( 0.000090s |  1.38% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:     	( 0.000075s |  1.32% |  0.00% )   	( 0.000087s |  1.33% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1544.4.1:     	( 0.000084s |  1.48% |  0.00% )   	( 0.000096s |  1.47% |  0.00% )    	(1x)	│  │  │  │  echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1546.4.0:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  1551.4.0:     	( 0.000075s |  1.32% |  0.00% )   	( 0.000088s |  1.35% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:     	( 0.000070s |  1.24% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1556.4.0:     	( 0.000078s |  1.38% |  0.00% )   	( 0.000090s |  1.38% |  0.00% )    	(1x)	│  │  │  │  echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1557.4.1:     	( 0.000077s |  1.36% |  0.00% )   	( 0.000089s |  1.36% |  0.00% )    	(1x)	│  │  │  │  printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:     	( 0.000065s |  1.15% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1562.4.1:     	( 0.000071s |  1.25% |  0.00% )   	( 0.000083s |  1.27% |  0.00% )    	(1x)	│  │  │  │  printf '%s' ' || '
│  │  │  │  1563.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1563.4.1:     	( 0.000079s |  1.39% |  0.00% )   	( 0.000090s |  1.38% |  0.00% )    	(1x)	│  │  │  │  echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000074s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1564.4.1:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000074s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1564.4.2:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000076s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1564.4.3:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000081s |  1.24% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1572.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1572.4.1:     	( 0.000072s |  1.27% |  0.00% )   	( 0.000084s |  1.29% |  0.00% )    	(1x)	│  │  │  │  echo '{'
│  │  │  │  1573.4.0:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1573.4.1:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1574.4.0:     	( 0.000066s |  1.16% |  0.00% )   	( 0.000077s |  1.18% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1575.4.0:     	( 0.000087s |  1.54% |  0.00% )   	( 0.000099s |  1.52% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:     	( 0.000063s |  1.11% |  0.00% )   	( 0.000074s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1583.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${stdinRunFlag}
│  │  │  │  1586.4.0:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000077s |  1.18% |  0.00% )    	(1x)	│  │  │  │  ${noFuncFlag}
│  │  │  │  1589.4.0:     	( 0.000064s |  1.13% |  0.00% )   	( 0.000075s |  1.15% |  0.00% )    	(1x)	│  │  │  │  ${substituteStringFlag}
│  │  │  │  1590.4.0:     	( 0.000082s |  1.45% |  0.00% )   	( 0.000094s |  1.44% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:     	( 0.000070s |  1.24% |  0.00% )   	( 0.000082s |  1.25% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:     	( 0.000067s |  1.18% |  0.00% )   	( 0.000079s |  1.21% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1608.4.0:     	( 0.000062s |  1.09% |  0.00% )   	( 0.000072s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1608.4.1:     	( 0.000069s |  1.22% |  0.00% )   	( 0.000081s |  1.24% |  0.00% )    	(1x)	│  │  │  │  printf '\n%s ' '}'
│  │  │  │  1609.4.0:     	( 0.000070s |  1.24% |  0.00% )   	( 0.000081s |  1.24% |  0.00% )    	(1x)	│  │  │  │  echo "${outStr}"
│  │  │  │  1610.4.0:     	( 0.000068s |  1.20% |  0.00% )   	( 0.000080s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1611.4.0:     	( 0.000066s |  1.16% |  0.00% )   	( 0.000077s |  1.18% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ 1616.4.0:     	( 0.000098s |  1.73% |  0.00% )   	( 0.000108s |  1.65% |  0.00% )    	(1x)	│  │  │  └─ echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1355.3.0:        	( 0.000073s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:        	( 0.012867s |  0.00% |  0.00% )   	( 0.012844s |  0.00% |  0.00% )    	(1x)	│  │  │  trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:        	( 0.012806s |  0.00% |  0.00% )   	( 0.101579s |  0.02% |  0.01% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:        	( 0.012661s |  0.00% |  0.00% )   	( 0.012625s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:        	( 0.012371s |  0.00% |  0.00% )   	( 0.012336s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:        	( 0.000064s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:        	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1393.3.0:        	( 0.000078s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '\n' >&${fd_continue}
│  │  │  1396.3.0:        	( 0.000080s |  0.00% |  0.00% )   	( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1397.3.0:        	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ((kkProcs=0 ))
│  │  │  1397.3.1:        	( 0.002865s |  0.00% |  0.00% )   	( 0.003280s |  0.00% |  0.00% )    	(29x)	│  │  │  ((kkProcs<28 ))
│  │  │  1398.3.0:        	( 0.002591s |  0.00% |  0.00% )   	( 0.002991s |  0.00% |  0.00% )    	(28x)	│  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:        	( 15.655821s |  3.38% |  1.69% )   	( 14.815423s |  3.53% |  1.76% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000578s |  0.00% |  0.00% )   	( 0.000594s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p0 p0_PID (&)
│  │  │  │  73.4.0:       	( 440.740502s | 99.99% | 47.69% )   	( 417.325718s | 99.99% | 49.68% )    	(28x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0:    	( 0.003384s |  0.00% |  0.00% )   	( 0.003821s |  0.00% |  0.00% )    	(28x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.Zx4GEs"
│  │  │  │  │  8.5.0:     	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p0
│  │  │  │  │  12.5.0:    	( 0.012370s |  0.07% |  0.00% )   	( 0.012355s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0:    	( 0.560666s |  0.12% |  0.06% )   	( 0.550188s |  0.12% |  0.06% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 699880 ${BASHPID}' INT
│  │  │  │  │  15.5.0:    	( 0.554123s |  0.12% |  0.05% )   	( 0.549241s |  0.12% |  0.06% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 699880 ${BASHPID}' TERM
│  │  │  │  │  16.5.0:    	( 0.542226s |  0.11% |  0.05% )   	( 0.540601s |  0.12% |  0.06% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 699880 ${BASHPID}' HUP
│  │  │  │  │  17.5.0:    	( 0.546241s |  0.11% |  0.05% )   	( 0.544676s |  0.12% |  0.06% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0:    	( 0.112789s |  0.02% |  0.01% )   	( 0.126421s |  0.02% |  0.01% )    	(694x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0:    	( 0.098565s |  0.01% |  0.01% )   	( 0.112363s |  0.02% |  0.01% )    	(694x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1:    	( 0.004032s |  0.00% |  0.00% )   	( 0.004514s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.Zx4GEs"/.nLines
│  │  │  │  │  20.5.2:    	( 0.003229s |  0.00% |  0.00% )   	( 0.003723s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3:    	( 0.003282s |  0.00% |  0.00% )   	( 0.003800s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0:    	( 0.004255s |  0.02% |  0.00% )   	( 0.004774s |  0.03% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p0
│  │  │  │  │  23.5.0:    	( 8.384540s |  1.90% |  0.90% )   	( 0.163574s |  0.03% |  0.01% )    	(694x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0:    	( 0.107902s |  0.01% |  0.01% )   	( 0.120418s |  0.02% |  0.01% )    	(694x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.Zx4GEs"/.quit ]]
│  │  │  │  │  28.5.0:    	( 0.105135s |  0.01% |  0.01% )   	( 0.113443s |  0.02% |  0.01% )    	(668x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.Zx4GEs"/.done ]]
│  │  │  │  │  28.5.1:    	( 0.092992s |  0.01% |  0.01% )   	( 0.106423s |  0.02% |  0.01% )    	(668x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0:    	( 0.100343s |  0.01% |  0.01% )   	( 0.111504s |  0.02% |  0.01% )    	(668x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0:    	( 0.819466s |  0.18% |  0.08% )   	( 0.793603s |  0.18% |  0.09% )    	(668x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0:    	( 0.092583s |  0.01% |  0.01% )   	( 0.105888s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1:    	( 0.091880s |  0.01% |  0.00% )   	( 0.105023s |  0.02% |  0.01% )    	(666x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0:    	( 0.170402s |  0.03% |  0.01% )   	( 0.113797s |  0.02% |  0.01% )    	(668x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0:    	( 0.003893s |  0.02% |  0.00% )   	( 0.004369s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p0
│  │  │  │  │  48.5.0:    	( 0.101252s |  0.01% |  0.01% )   	( 0.105849s |  0.02% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0:    	( 0.093166s |  0.01% |  0.01% )   	( 0.104295s |  0.02% |  0.01% )    	(666x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0:    	( 0.003844s |  0.00% |  0.00% )   	( 0.004397s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0:    	( 0.003266s |  0.00% |  0.00% )   	( 0.003803s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0:    	( 426.909492s |  4.06% | 46.20% )   	( 411.647187s |  4.14% | 49.00% )    	(666x)	│  │  │  │  │  << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:  	( 0.092552s |  0.02% |  0.01% )   	( 0.100005s |  0.03% |  0.01% )    	(666x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:  	( 28.710498s |  6.81% |  3.10% )   	( 27.882962s |  6.88% |  3.31% )    	(666x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0:  	( 48.383645s | 10.35% |  5.23% )   	( 46.684868s | 10.33% |  5.55% )    	(666x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 40.768807s |  9.58% |  4.41% )   	( 39.398064s |  9.62% |  4.69% )    	(666x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 47.741443s | 10.19% |  5.16% )   	( 46.123201s | 10.21% |  5.49% )    	(666x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 39.299497s |  9.11% |  4.25% )   	( 37.840922s |  9.11% |  4.50% )    	(666x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 26.627415s |  6.50% |  2.88% )   	( 25.535196s |  6.47% |  3.03% )    	(666x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 14.768307s |  4.32% |  1.59% )   	( 13.953679s |  4.26% |  1.66% )    	(666x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 27.454441s |  6.34% |  2.97% )   	( 26.410913s |  6.33% |  3.14% )    	(666x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 13.044762s |  4.03% |  1.41% )   	( 12.406501s |  4.01% |  1.47% )    	(666x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 35.911232s |  8.71% |  3.88% )   	( 34.502797s |  8.70% |  4.10% )    	(666x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 74.871354s | 14.80% |  8.10% )   	( 73.065151s | 14.93% |  8.69% )    	(666x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 14.833005s |  4.56% |  1.60% )   	( 14.095623s |  4.50% |  1.67% )    	(666x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 14.402534s |  4.52% |  1.55% )   	( 13.647305s |  4.47% |  1.62% )    	(666x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1:    	( 0.003015s |  0.00% |  0.00% )   	( 0.003467s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1:    	( 0.096250s |  0.01% |  0.01% )   	( 0.109566s |  0.02% |  0.01% )    	(661x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1:    	( 0.093236s |  0.01% |  0.01% )   	( 0.101408s |  0.01% |  0.01% )    	(633x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0:    	( 0.107990s |  0.02% |  0.01% )   	( 0.111433s |  0.02% |  0.01% )    	(633x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0:    	( 0.002607s |  0.00% |  0.00% )   	( 0.002991s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0:    	( 0.002634s |  0.00% |  0.00% )   	( 0.003019s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0:     	( 0.174292s |  0.03% |  0.01% )   	( 0.174502s |  0.03% |  0.02% )    	(28x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p0_PID})
│  │  │  1397.3.0:        	( 0.002642s |  0.00% |  0.00% )   	( 0.003051s |  0.00% |  0.00% )    	(28x)	│  │  │  ((kkProcs++ ))
│  │  │  1399.3.0:        	( 15.628198s |  3.37% |  1.69% )   	( 14.753949s |  3.51% |  1.75% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p1 p1_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000574s |  0.00% |  0.00% )   	( 0.000588s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p1 p1_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p1
│  │  │  │  │  12.5.0:    	( 0.012556s |  0.08% |  0.00% )   	( 0.012540s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004403s |  0.02% |  0.00% )   	( 0.004937s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p1
│  │  │  │  │  47.5.0:    	( 0.004117s |  0.02% |  0.00% )   	( 0.004631s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p1
│  │  │  └─ 146.4.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p1_PID})
│  │  │  1399.3.0:        	( 15.971216s |  3.45% |  1.72% )   	( 15.258414s |  3.63% |  1.81% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p2 p2_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000574s |  0.00% |  0.00% )   	( 0.000590s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p2 p2_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p2
│  │  │  │  │  12.5.0:    	( 0.012575s |  0.07% |  0.00% )   	( 0.012558s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002969s |  0.01% |  0.00% )   	( 0.003298s |  0.02% |  0.00% )    	(17x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p2
│  │  │  │  │  47.5.0:    	( 0.002699s |  0.01% |  0.00% )   	( 0.003011s |  0.01% |  0.00% )    	(16x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p2
│  │  │  └─ 146.4.0:      	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p2_PID})
│  │  │  1399.3.0:        	( 15.312782s |  3.30% |  1.65% )   	( 14.382946s |  3.42% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p3 p3_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000598s |  0.00% |  0.00% )   	( 0.000615s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p3 p3_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p3
│  │  │  │  │  12.5.0:    	( 0.012693s |  0.08% |  0.00% )   	( 0.012617s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004826s |  0.03% |  0.00% )   	( 0.005358s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p3
│  │  │  │  │  47.5.0:    	( 0.004716s |  0.03% |  0.00% )   	( 0.005304s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p3
│  │  │  └─ 146.4.0:      	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p3_PID})
│  │  │  1399.3.0:        	( 15.801043s |  3.41% |  1.71% )   	( 15.005246s |  3.57% |  1.78% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000600s |  0.00% |  0.00% )   	( 0.000612s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p4 p4_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p4
│  │  │  │  │  12.5.0:    	( 0.012624s |  0.07% |  0.00% )   	( 0.012606s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004033s |  0.02% |  0.00% )   	( 0.004512s |  0.03% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p4
│  │  │  │  │  47.5.0:    	( 0.003703s |  0.02% |  0.00% )   	( 0.004170s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p4
│  │  │  └─ 146.4.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p4_PID})
│  │  │  1399.3.0:        	( 16.358959s |  3.53% |  1.77% )   	( 15.664079s |  3.73% |  1.86% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p5 p5_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000590s |  0.00% |  0.00% )   	( 0.000603s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p5 p5_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000089s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p5
│  │  │  │  │  12.5.0:    	( 0.012818s |  0.07% |  0.00% )   	( 0.012800s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004346s |  0.02% |  0.00% )   	( 0.004869s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p5
│  │  │  │  │  47.5.0:    	( 0.004017s |  0.02% |  0.00% )   	( 0.004531s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p5
│  │  │  └─ 146.4.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p5_PID})
│  │  │  1399.3.0:        	( 15.731355s |  3.39% |  1.70% )   	( 15.008480s |  3.57% |  1.78% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000630s |  0.00% |  0.00% )   	( 0.000646s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p6 p6_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p6
│  │  │  │  │  12.5.0:    	( 0.012934s |  0.08% |  0.00% )   	( 0.012914s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004048s |  0.02% |  0.00% )   	( 0.004518s |  0.03% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p6
│  │  │  │  │  47.5.0:    	( 0.003730s |  0.02% |  0.00% )   	( 0.004181s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p6
│  │  │  └─ 146.4.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p6_PID})
│  │  │  1399.3.0:        	( 15.735747s |  3.39% |  1.70% )   	( 15.051772s |  3.58% |  1.79% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p7 p7_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000623s |  0.00% |  0.00% )   	( 0.000636s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p7 p7_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p7
│  │  │  │  │  12.5.0:    	( 0.012938s |  0.08% |  0.00% )   	( 0.012920s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004333s |  0.02% |  0.00% )   	( 0.004837s |  0.03% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p7
│  │  │  │  │  47.5.0:    	( 0.003957s |  0.02% |  0.00% )   	( 0.004429s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p7
│  │  │  └─ 146.4.0:      	( 0.000084s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p7_PID})
│  │  │  1399.3.0:        	( 17.004231s |  3.67% |  1.84% )   	( 16.119702s |  3.84% |  1.91% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p8 p8_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000622s |  0.00% |  0.00% )   	( 0.000638s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p8 p8_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p8
│  │  │  │  │  12.5.0:    	( 0.012906s |  0.07% |  0.00% )   	( 0.012886s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005544s |  0.03% |  0.00% )   	( 0.004967s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p8
│  │  │  │  │  47.5.0:    	( 0.004396s |  0.02% |  0.00% )   	( 0.004919s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p8
│  │  │  └─ 146.4.0:      	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p8_PID})
│  │  │  1399.3.0:        	( 15.418420s |  3.33% |  1.66% )   	( 14.406347s |  3.43% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p9 p9_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000623s |  0.00% |  0.00% )   	( 0.000637s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p9 p9_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000092s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p9
│  │  │  │  │  12.5.0:    	( 0.012928s |  0.08% |  0.00% )   	( 0.012907s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004643s |  0.03% |  0.00% )   	( 0.005192s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p9
│  │  │  │  │  47.5.0:    	( 0.004255s |  0.02% |  0.00% )   	( 0.004764s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p9
│  │  │  └─ 146.4.0:      	( 0.000090s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p9_PID})
│  │  │  1399.3.0:        	( 15.512395s |  3.35% |  1.67% )   	( 14.416252s |  3.43% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p10 p10_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000630s |  0.00% |  0.00% )   	( 0.000644s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p10 p10_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000095s |  0.00% |  0.00% )   	( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p10
│  │  │  │  │  12.5.0:    	( 0.014828s |  0.09% |  0.00% )   	( 0.014801s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004902s |  0.03% |  0.00% )   	( 0.005485s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p10
│  │  │  │  │  47.5.0:    	( 0.004628s |  0.02% |  0.00% )   	( 0.005199s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p10
│  │  │  └─ 146.4.0:      	( 0.000100s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p10_PID})
│  │  │  1399.3.0:        	( 15.760777s |  3.40% |  1.70% )   	( 15.117886s |  3.60% |  1.79% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p11 p11_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000698s |  0.00% |  0.00% )   	( 0.000717s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p11 p11_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p11
│  │  │  │  │  12.5.0:    	( 0.012965s |  0.08% |  0.00% )   	( 0.012940s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002907s |  0.01% |  0.00% )   	( 0.003251s |  0.02% |  0.00% )    	(18x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p11
│  │  │  │  │  47.5.0:    	( 0.003158s |  0.02% |  0.00% )   	( 0.003559s |  0.02% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p11
│  │  │  │  │  49.5.0:    	( 0.000288s |  0.00% |  0.00% )   	( 0.000334s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  58.5.0:    	( 0.000342s |  0.00% |  0.00% )   	( 0.000396s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  59.5.0:    	( 0.000299s |  0.00% |  0.00% )   	( 0.000335s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0:    	( 0.000304s |  0.00% |  0.00% )   	( 0.000351s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  : > "/dev/shm/.forkrun.Zx4GEs"/.quit
│  │  │  │  │  62.5.0:    	( 0.000513s |  0.00% |  0.00% )   	( 0.000556s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.Zx4GEs"/.run/p* 1>&21
│  │  │  │  │  63.5.0:    	( 0.000324s |  0.00% |  0.00% )   	( 0.000368s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │  break
│  │  │  └─ 146.4.0:      	( 0.000086s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p11_PID})
│  │  │  1399.3.0:        	( 15.472560s |  3.34% |  1.67% )   	( 14.715470s |  3.50% |  1.75% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p12 p12_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000682s |  0.00% |  0.00% )   	( 0.000695s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p12 p12_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000162s |  0.00% |  0.00% )   	( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p12
│  │  │  │  │  12.5.0:    	( 0.020506s |  0.13% |  0.00% )   	( 0.020401s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004554s |  0.02% |  0.00% )   	( 0.005117s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p12
│  │  │  │  │  47.5.0:    	( 0.004364s |  0.02% |  0.00% )   	( 0.004900s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p12
│  │  │  └─ 146.4.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p12_PID})
│  │  │  1399.3.0:        	( 15.135494s |  3.26% |  1.63% )   	( 14.069857s |  3.35% |  1.67% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p13 p13_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000703s |  0.00% |  0.00% )   	( 0.000717s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p13 p13_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000157s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p13
│  │  │  │  │  12.5.0:    	( 0.016956s |  0.11% |  0.00% )   	( 0.016839s |  0.11% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004855s |  0.03% |  0.00% )   	( 0.005451s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p13
│  │  │  │  │  47.5.0:    	( 0.004874s |  0.03% |  0.00% )   	( 0.005453s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p13
│  │  │  └─ 146.4.0:      	( 0.000100s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p13_PID})
│  │  │  1399.3.0:        	( 15.645059s |  3.37% |  1.69% )   	( 14.726842s |  3.51% |  1.75% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p14 p14_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000870s |  0.00% |  0.00% )   	( 0.000897s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p14 p14_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000157s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p14
│  │  │  │  │  12.5.0:    	( 0.024865s |  0.15% |  0.00% )   	( 0.024779s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005079s |  0.03% |  0.00% )   	( 0.005673s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p14
│  │  │  │  │  47.5.0:    	( 0.004670s |  0.02% |  0.00% )   	( 0.005235s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p14
│  │  │  └─ 146.4.0:      	( 0.000162s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p14_PID})
│  │  │  1399.3.0:        	( 15.490181s |  3.34% |  1.67% )   	( 14.640555s |  3.49% |  1.74% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p15 p15_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001024s |  0.00% |  0.00% )   	( 0.001044s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p15 p15_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000161s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p15
│  │  │  │  │  12.5.0:    	( 0.019202s |  0.12% |  0.00% )   	( 0.019110s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004769s |  0.03% |  0.00% )   	( 0.005316s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p15
│  │  │  │  │  47.5.0:    	( 0.004170s |  0.02% |  0.00% )   	( 0.004659s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p15
│  │  │  └─ 146.4.0:      	( 0.000146s |  0.00% |  0.00% )   	( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p15_PID})
│  │  │  1399.3.0:        	( 16.342741s |  3.53% |  1.76% )   	( 15.562362s |  3.71% |  1.85% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000980s |  0.00% |  0.00% )   	( 0.001005s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p16 p16_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p16
│  │  │  │  │  12.5.0:    	( 0.013978s |  0.08% |  0.00% )   	( 0.013906s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004405s |  0.02% |  0.00% )   	( 0.004938s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p16
│  │  │  │  │  47.5.0:    	( 0.004225s |  0.02% |  0.00% )   	( 0.004729s |  0.03% |  0.00% )    	(24x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p16
│  │  │  └─ 146.4.0:      	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p16_PID})
│  │  │  1399.3.0:        	( 15.673672s |  3.38% |  1.69% )   	( 14.932860s |  3.56% |  1.77% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p17 p17_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000992s |  0.00% |  0.00% )   	( 0.001012s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p17 p17_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p17
│  │  │  │  │  12.5.0:    	( 0.024699s |  0.15% |  0.00% )   	( 0.024611s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003559s |  0.02% |  0.00% )   	( 0.003981s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p17
│  │  │  │  │  47.5.0:    	( 0.003368s |  0.02% |  0.00% )   	( 0.003781s |  0.02% |  0.00% )    	(19x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p17
│  │  │  └─ 146.4.0:      	( 0.000155s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p17_PID})
│  │  │  1399.3.0:        	( 15.406078s |  3.32% |  1.66% )   	( 14.502503s |  3.45% |  1.72% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p18 p18_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000982s |  0.00% |  0.00% )   	( 0.001005s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p18 p18_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000167s |  0.00% |  0.00% )   	( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p18
│  │  │  │  │  12.5.0:    	( 0.025709s |  0.16% |  0.00% )   	( 0.025616s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004261s |  0.02% |  0.00% )   	( 0.004764s |  0.03% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p18
│  │  │  │  │  47.5.0:    	( 0.003936s |  0.02% |  0.00% )   	( 0.004392s |  0.03% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p18
│  │  │  └─ 146.4.0:      	( 0.000153s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p18_PID})
│  │  │  1399.3.0:        	( 15.491638s |  3.34% |  1.67% )   	( 14.864441s |  3.54% |  1.76% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p19 p19_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001012s |  0.00% |  0.00% )   	( 0.001034s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p19 p19_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000095s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p19
│  │  │  │  │  12.5.0:    	( 0.021999s |  0.14% |  0.00% )   	( 0.021930s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003987s |  0.02% |  0.00% )   	( 0.004441s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p19
│  │  │  │  │  47.5.0:    	( 0.003700s |  0.02% |  0.00% )   	( 0.004158s |  0.02% |  0.00% )    	(21x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p19
│  │  │  └─ 146.4.0:      	( 0.000145s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p19_PID})
│  │  │  1399.3.0:        	( 16.769077s |  3.62% |  1.81% )   	( 15.949469s |  3.80% |  1.89% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p20 p20_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001001s |  0.00% |  0.00% )   	( 0.001022s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p20 p20_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p20
│  │  │  │  │  12.5.0:    	( 0.023189s |  0.13% |  0.00% )   	( 0.023111s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005286s |  0.03% |  0.00% )   	( 0.005915s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p20
│  │  │  │  │  47.5.0:    	( 0.005133s |  0.03% |  0.00% )   	( 0.005738s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p20
│  │  │  └─ 146.4.0:      	( 0.000148s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p20_PID})
│  │  │  1399.3.0:        	( 16.064982s |  3.47% |  1.73% )   	( 15.427926s |  3.67% |  1.83% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p21 p21_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001040s |  0.00% |  0.00% )   	( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p21 p21_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000113s |  0.00% |  0.00% )   	( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p21
│  │  │  │  │  12.5.0:    	( 0.014140s |  0.08% |  0.00% )   	( 0.014099s |  0.09% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004601s |  0.02% |  0.00% )   	( 0.005163s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p21
│  │  │  │  │  47.5.0:    	( 0.004525s |  0.02% |  0.00% )   	( 0.005092s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p21
│  │  │  └─ 146.4.0:      	( 0.000165s |  0.00% |  0.00% )   	( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p21_PID})
│  │  │  1399.3.0:        	( 15.027608s |  3.24% |  1.62% )   	( 14.058333s |  3.35% |  1.67% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001105s |  0.00% |  0.00% )   	( 0.001124s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p22 p22_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000183s |  0.00% |  0.00% )   	( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p22
│  │  │  │  │  12.5.0:    	( 0.025307s |  0.16% |  0.00% )   	( 0.025225s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004733s |  0.03% |  0.00% )   	( 0.005284s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p22
│  │  │  │  │  47.5.0:    	( 0.004343s |  0.02% |  0.00% )   	( 0.004890s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p22
│  │  │  └─ 146.4.0:      	( 0.000157s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p22_PID})
│  │  │  1399.3.0:        	( 14.952212s |  3.23% |  1.61% )   	( 13.816925s |  3.29% |  1.64% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p23 p23_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001116s |  0.00% |  0.00% )   	( 0.001130s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p23 p23_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000155s |  0.00% |  0.00% )   	( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p23
│  │  │  │  │  12.5.0:    	( 0.024601s |  0.16% |  0.00% )   	( 0.024510s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005401s |  0.03% |  0.00% )   	( 0.006012s |  0.04% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p23
│  │  │  │  │  47.5.0:    	( 0.005151s |  0.03% |  0.00% )   	( 0.005777s |  0.04% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p23
│  │  │  └─ 146.4.0:      	( 0.000156s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p23_PID})
│  │  │  1399.3.0:        	( 15.294061s |  3.30% |  1.65% )   	( 14.355994s |  3.42% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p24 p24_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001080s |  0.00% |  0.00% )   	( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p24 p24_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000179s |  0.00% |  0.00% )   	( 0.000197s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p24
│  │  │  │  │  12.5.0:    	( 0.026470s |  0.17% |  0.00% )   	( 0.026379s |  0.18% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004837s |  0.03% |  0.00% )   	( 0.005403s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p24
│  │  │  │  │  47.5.0:    	( 0.004602s |  0.03% |  0.00% )   	( 0.005124s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p24
│  │  │  └─ 146.4.0:      	( 0.000154s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p24_PID})
│  │  │  1399.3.0:        	( 15.291402s |  3.30% |  1.65% )   	( 14.557275s |  3.47% |  1.73% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p25 p25_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000942s |  0.00% |  0.00% )   	( 0.000960s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p25 p25_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000159s |  0.00% |  0.00% )   	( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p25
│  │  │  │  │  12.5.0:    	( 0.024936s |  0.16% |  0.00% )   	( 0.024843s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004268s |  0.02% |  0.00% )   	( 0.004769s |  0.03% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p25
│  │  │  │  │  47.5.0:    	( 0.003842s |  0.02% |  0.00% )   	( 0.004295s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p25
│  │  │  └─ 146.4.0:      	( 0.000165s |  0.00% |  0.00% )   	( 0.000185s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p25_PID})
│  │  │  1399.3.0:        	( 17.611771s |  3.80% |  1.90% )   	( 16.911937s |  4.03% |  2.01% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p26 p26_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001101s |  0.00% |  0.00% )   	( 0.001114s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p26 p26_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000203s |  0.00% |  0.00% )   	( 0.000226s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p26
│  │  │  │  │  12.5.0:    	( 0.025237s |  0.14% |  0.00% )   	( 0.023952s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002922s |  0.01% |  0.00% )   	( 0.003282s |  0.01% |  0.00% )    	(17x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p26
│  │  │  │  │  47.5.0:    	( 0.002855s |  0.01% |  0.00% )   	( 0.003181s |  0.01% |  0.00% )    	(16x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p26
│  │  │  └─ 146.4.0:      	( 0.000152s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p26_PID})
│  │  │  1399.3.0:        	( 15.207491s |  3.28% |  1.64% )   	( 14.259870s |  3.39% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p27 p27_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001101s |  0.00% |  0.00% )   	( 0.001123s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p27 p27_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000156s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.Zx4GEs"/.run/p27
│  │  │  │  │  12.5.0:    	( 0.024771s |  0.16% |  0.00% )   	( 0.024679s |  0.17% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.Zx4GEs"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.Zx4GEs"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.Zx4GEs"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004549s |  0.02% |  0.00% )   	( 0.005062s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p27
│  │  │  │  │  47.5.0:    	( 0.004147s |  0.02% |  0.00% )   	( 0.004655s |  0.03% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.Zx4GEs"/.wait/p27
│  │  │  └─ 146.4.0:      	( 0.000154s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p27_PID})
│  │  │  1401.3.0:        	( 0.000158s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:        	( 0.000152s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:        	( 0.000127s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:        	( 0.001192s |  0.00% |  0.00% )   	( 0.001209s |  0.00% |  0.00% )    	(1x)	│  │  │  declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:        	( 0.000128s |  0.00% |  0.00% )   	( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1478.3.0:        	( 0.000136s |  0.00% |  0.00% )   	( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:        	( 0.000121s |  0.00% |  0.00% )   	( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1488.3.0:        	( 18.554902s |  4.00% |  2.00% )   	( 0.001169s |  0.00% |  0.00% )    	(1x)	│  │  │  wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:        	( 0.000071s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  └─ ${nSpawnFlag}
│  │  1503.2.0:           	( 0.000083s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  wait
└─ └─ -256.2.0:           	( 0.003109s |  0.00% |  0.00% )   	( 0.002098s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.Zx4GEs" 2>/dev/null'

TOTAL RUN TIME: 924.016748s
TOTAL CPU TIME: 839.974595s
