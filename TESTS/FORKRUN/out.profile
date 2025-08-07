LINE.DEPTH.CMD NUMBER     	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:     	( time | cur depth % | total % )   	( time | cur depth % | total % )   	(count) <command>
__________________________	________________________________	________________________________	____________________________________
9.0.0:                    	( 551.247387s | 50.06% )          	( 502.080965s | 49.96% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:                 	( 0.000636s |  0.00% |  0.00% )   	( 0.000329s |  0.00% |  0.00% )    	(1x)	├─ forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:               	( 551.246751s | 99.99% | 50.06% )   	( 502.080636s | 99.99% | 49.96% )    	(1x)	│  << (SUBSHELL) >>
│  ├─ 425.2.0:            	( 0.023368s |  0.00% |  0.00% )   	( 0.023311s |  0.00% |  0.00% )    	(1x)	│  ├─ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  shopt -s extglob
│  │  113.2.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:            	( 0.000121s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:            	( 0.000094s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:            	( 0.000075s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:            	( 0.000066s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:            	( 0.000061s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  [[ $# == 0 ]]
│  │  125.2.1:            	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  optParseFlag=true
│  │  126.2.0:            	( 0.000058s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  ${optParseFlag}
│  │  126.2.1:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  (( $# > 0  ))
│  │  126.2.2:            	( 0.000062s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  [[ "$1" == [-+]* ]]
│  │  323.2.0:            	( 0.000064s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  [ -t "${fd_stdin0}" ]
│  │  332.2.0:            	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:            	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  [[ -n ${TMPDIR} ]]
│  │  332.2.2:            	( 0.000070s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  [[ -d '/dev/shm' ]]
│  │  332.2.3:            	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  tmpDirRoot='/dev/shm'
│  │  334.2.0:            	( 0.001267s |  0.00% |  0.00% )   	( 0.001003s |  0.00% |  0.00% )    	(1x)	│  │  tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:            	( 0.007890s |  0.00% |  0.00% )   	( 0.007890s |  0.00% |  0.00% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  └─ 334.3.0:         	( 0.007890s |100.00% |  0.00% )   	( 0.007890s |100.00% |  0.00% )    	(1x)	│  │  └─ mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:            	( 0.000065s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  fPath="${tmpDir}"/.stdin
│  │  337.2.0:            	( 0.002982s |  0.00% |  0.00% )   	( 0.003039s |  0.00% |  0.00% )    	(1x)	│  │  mkdir -p "${tmpDir}"/.run
│  │  338.2.0:            	( 0.000086s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  : > "${fPath}"
│  │  340.2.0:            	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  ${rmTmpDirFlag}
│  │  340.2.1:            	( 0.013648s |  0.00% |  0.00% )   	( 0.000282s |  0.00% |  0.00% )    	(1x)	│  │  trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:           	( 551.190816s | 99.98% | 50.06% )   	( 502.039716s | 99.99% | 49.96% )    	(1x)	│  │  << (SUBSHELL) >>
│  │  ├─ 348.3.0:         	( 0.000082s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  ├─ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:        	( 0.000076s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:     	( 0.000704s |100.00% |  0.00% )   	( 0.000816s |100.00% |  0.00% )    	(6x)	│  │  │  └─ :
│  │  │  1502.3.1:        	( 0.000085s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.2:        	( 0.000143s |  0.00% |  0.00% )   	( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.3:        	( 0.000104s |  0.00% |  0.00% )   	( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.4:        	( 0.000139s |  0.00% |  0.00% )   	( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  1502.3.5:        	( 0.000157s |  0.00% |  0.00% )   	( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  363.3.0:         	( 0.000078s |  0.00% |  0.00% )   	( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  LC_ALL=C
│  │  │  364.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  LANG=C
│  │  │  365.3.0:         	( 0.000086s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  IFS=
│  │  │  367.3.0:         	( 0.000184s |  0.00% |  0.00% )   	( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  PID0="${BASHPID}"
│  │  │  375.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  shopt -s nullglob
│  │  │  378.3.0:         	( 0.000085s |  0.00% |  0.00% )   	( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:         	( 0.000074s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  enable lseek &> /dev/null
│  │  │  381.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekFlag:=true}"
│  │  │  386.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  387.3.0:         	( 0.003731s |  0.00% |  0.00% )   	( 0.003775s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:         	( 0.000154s |  0.00% |  0.00% )   	( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 387.4.0:      	( 0.000154s |100.00% |  0.00% )   	( 0.000165s |100.00% |  0.00% )    	(1x)	│  │  │  └─ lseek $fd_read 0
│  │  │  387.3.2:         	( 0.000069s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${lseekPosFlag:=true}"
│  │  │  391.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  runCmd=("${@//''/}")
│  │  │  398.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  noFuncFlag=false
│  │  │  400.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  401.3.0:         	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  467.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nLines} ]]
│  │  │  467.3.1:         	( 0.000068s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nLinesAutoFlag:=true}"
│  │  │  468.3.1:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  nLines=1
│  │  │  472.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:         	( 0.000783s |  0.00% |  0.00% )   	( 0.000915s |  0.00% |  0.00% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:        	( 0.000056s |  7.15% |  0.00% )   	( 0.000067s |  7.32% |  0.00% )    	(1x)	│  │  │  ├─ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:        	( 0.000067s |  8.55% |  0.00% )   	( 0.000075s |  8.19% |  0.00% )    	(1x)	│  │  │  │  local +i -l nn
│  │  │  │  9.4.0:        	( 0.000060s |  7.66% |  0.00% )   	( 0.000071s |  7.75% |  0.00% )    	(1x)	│  │  │  │  local vOut
│  │  │  │  11.4.0:       	( 0.000062s |  7.91% |  0.00% )   	( 0.000074s |  8.08% |  0.00% )    	(1x)	│  │  │  │  local -n vOut="$1"
│  │  │  │  12.4.0:       	( 0.000065s |  8.30% |  0.00% )   	( 0.000073s |  7.97% |  0.00% )    	(1x)	│  │  │  │  shift 1
│  │  │  │  13.4.0:       	( 0.000063s |  8.04% |  0.00% )   	( 0.000075s |  8.19% |  0.00% )    	(1x)	│  │  │  │  local -g vOut
│  │  │  │  15.4.0:       	( 0.000059s |  7.53% |  0.00% )   	( 0.000072s |  7.86% |  0.00% )    	(1x)	│  │  │  │  (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:       	( 0.000110s | 14.04% |  0.00% )   	( 0.000121s | 13.22% |  0.00% )    	(1x)	│  │  │  │  local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:       	( 0.000059s |  7.53% |  0.00% )   	( 0.000070s |  7.65% |  0.00% )    	(1x)	│  │  │  │  for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:       	( 0.000057s |  7.27% |  0.00% )   	( 0.000069s |  7.54% |  0.00% )    	(1x)	│  │  │  │  [[ -n ${nn} ]]
│  │  │  │  18.4.1:       	( 0.000061s |  7.79% |  0.00% )   	( 0.000072s |  7.86% |  0.00% )    	(1x)	│  │  │  │  continue
│  │  │  └─ 28.4.0:       	( 0.000064s |  8.17% |  0.00% )   	( 0.000076s |  8.30% |  0.00% )    	(1x)	│  │  │  └─ local +n vOut
│  │  │  483.3.0:         	( 0.000077s |  0.00% |  0.00% )   	( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  485.3.0:         	( 0.006281s |  0.00% |  0.00% )   	( 0.006348s |  0.00% |  0.00% )    	(1x)	│  │  │  nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/'$'\n''}") && tmpA=("${tmpA[@]//!('$'\n'')/}") && tmpA=("${tmpA[@]//'$'\n''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:         	( 0.001973s |  0.00% |  0.00% )   	( 0.002057s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:      	( 0.000231s | 11.70% |  0.00% )   	( 0.000249s | 12.10% |  0.00% )    	(1x)	│  │  │  ├─ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:      	( 0.001742s | 88.29% |  0.00% )   	( 0.001808s | 87.89% |  0.00% )    	(1x)	│  │  │  └─ nproc
│  │  │  486.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nCPU < 1 ))
│  │  │  487.3.0:         	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -n ${nProcs} ]]
│  │  │  487.3.1:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  487.3.2:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  nProcs=${nCPU}
│  │  │  489.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  493.3.1:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${nSpawnFlag:=false}"
│  │  │  501.3.0:         	( 0.000071s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  504.3.1:         	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  (( nLinesMax < nLines ))
│  │  │  506.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  doneIndicatorFlag=false
│  │  │  509.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.0:         	( 0.000168s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  type -a fallocate &> /dev/null
│  │  │  515.3.1:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  515.3.2:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${fallocateFlag:=true}"
│  │  │  518.3.0:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${exportOrderFlag}
│  │  │  521.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${readBytesFlag}
│  │  │  522.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  523.3.0:         	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nullDelimiterFlag}
│  │  │  544.3.0:         	( 0.000057s |  0.00% |  0.00% )   	( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │  [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:         	( 0.000058s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${noFuncFlag}
│  │  │  546.3.1:         	( 0.000065s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  ${lseekFlag}
│  │  │  557.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  ${unescapeFlag}
│  │  │  566.3.0:         	( 0.003584s |  0.00% |  0.00% )   	( 0.003703s |  0.00% |  0.00% )    	(1x)	│  │  │  mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:         	( 0.000104s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  └─ 566.4.0:      	( 0.000104s |100.00% |  0.00% )   	( 0.000134s |100.00% |  0.00% )    	(1x)	│  │  │  └─ printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringFlag}
│  │  │  570.3.0:         	( 0.000076s |  0.00% |  0.00% )   	( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │  ${substituteStringIDFlag}
│  │  │  576.3.0:         	( 0.000063s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  nLinesCur=${nLines}
│  │  │  578.3.0:         	( 0.002185s |  0.00% |  0.00% )   	( 0.002263s |  0.00% |  0.00% )    	(1x)	│  │  │  mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  582.3.0:         	( 0.000079s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  ${rmTmpDirFlag}
│  │  │  584.3.0:         	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:         	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:         	( 0.000080s |  0.00% |  0.00% )   	( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │  evfd_init
│  │  │  622.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  ${pipeReadFlag}
│  │  │  628.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesReadLimitFlag}
│  │  │  638.3.0:         	( 0.000562s |  0.00% |  0.00% )   	( 0.000577s |  0.00% |  0.00% )    	(1x)	│  │  │  : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:         	( 0.079061s |  0.01% |  0.00% )   	( 0.078908s |  0.01% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:      	( 0.000074s |  0.09% |  0.00% )   	( 0.000085s |  0.10% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:      	( 0.011178s | 14.13% |  0.00% )   	( 0.011162s | 14.14% |  0.00% )    	(1x)	│  │  │  │  trap - EXIT
│  │  │  │  647.4.0:      	( 0.012283s | 15.53% |  0.00% )   	( 0.012175s | 15.42% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:      	( 0.012786s | 16.17% |  0.00% )   	( 0.012763s | 16.17% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:      	( 0.012269s | 15.51% |  0.00% )   	( 0.012253s | 15.52% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:      	( 0.012178s | 15.40% |  0.00% )   	( 0.012160s | 15.41% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:      	( 0.000065s |  0.08% |  0.00% )   	( 0.000076s |  0.09% |  0.00% )    	(1x)	│  │  │  │  case ${writeFileProgType} in
│  │  │  │  653.4.0:      	( 0.017997s | 22.76% |  0.00% )   	( 0.017969s | 22.77% |  0.00% )    	(1x)	│  │  │  │  evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:      	( 0.000091s |  0.11% |  0.00% )   	( 0.000103s |  0.13% |  0.00% )    	(1x)	│  │  │  │  : > "${tmpDir}"/.done
│  │  │  │  659.4.0:      	( 0.000072s |  0.09% |  0.00% )   	( 0.000083s |  0.10% |  0.00% )    	(1x)	│  │  │  │  evfd_signal
│  │  │  └─ 660.4.0:      	( 0.000068s |  0.08% |  0.00% )   	( 0.000079s |  0.10% |  0.00% )    	(1x)	│  │  │  └─ (( ${verboseLevel} > 1 ))
│  │  │  668.3.0:         	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:         	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  715.3.0:         	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:         	( 0.000061s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nLinesAutoFlag}
│  │  │  721.3.0:         	( 0.000429s |  0.00% |  0.00% )   	( 0.000450s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:         	( 5.298579s |  0.96% |  0.48% )   	( 1.736692s |  0.34% |  0.17% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:      	( 0.000103s |  0.00% |  0.00% )   	( 0.000119s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:      	( 0.014089s |  0.26% |  0.00% )   	( 0.014065s |  0.80% |  0.00% )    	(1x)	│  │  │  │  trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:      	( 0.012422s |  0.23% |  0.00% )   	( 0.012402s |  0.71% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:      	( 0.012233s |  0.23% |  0.00% )   	( 0.012217s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:      	( 0.012218s |  0.23% |  0.00% )   	( 0.012201s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:      	( 0.012247s |  0.23% |  0.00% )   	( 0.012233s |  0.70% |  0.00% )    	(1x)	│  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  740.4.0:      	( 0.000064s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fd_read_pos_old=0
│  │  │  │  743.4.0:      	( 0.000060s |  0.00% |  0.00% )   	( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=0
│  │  │  │  745.4.0:      	( 0.086584s |  1.63% |  0.00% )   	( 0.099770s |  5.74% |  0.00% )    	(679x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  747.4.0:      	( 3.864321s | 72.93% |  0.35% )   	( 0.118108s |  6.80% |  0.01% )    	(678x)	│  │  │  │  read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:      	( 0.001386s |  0.02% |  0.00% )   	( 0.001598s |  0.09% |  0.00% )    	(10x)	│  │  │  │  continue
│  │  │  │  749.4.0:      	( 0.084175s |  1.58% |  0.00% )   	( 0.097356s |  5.60% |  0.00% )    	(668x)	│  │  │  │  case ${REPLY} in
│  │  │  │  763.4.0:      	( 0.090525s |  1.70% |  0.00% )   	( 0.097887s |  5.63% |  0.00% )    	(667x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  764.4.0:      	( 0.000135s |  0.00% |  0.00% )   	( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:      	( 0.000069s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:      	( 0.084496s |  1.59% |  0.00% )   	( 0.097565s |  5.61% |  0.00% )    	(668x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  774.4.0:      	( 0.087675s |  1.65% |  0.00% )   	( 0.100702s |  5.79% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:      	( 0.087901s |  1.65% |  0.00% )   	( 0.100984s |  5.81% |  0.01% )    	(668x)	│  │  │  │  lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:      	( 0.084353s |  1.59% |  0.00% )   	( 0.097441s |  5.61% |  0.00% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  782.4.1:      	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:      	( 0.084655s |  1.59% |  0.00% )   	( 0.097810s |  5.63% |  0.00% )    	(668x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  786.4.0:      	( 0.084545s |  1.59% |  0.00% )   	( 0.097717s |  5.62% |  0.00% )    	(668x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  788.4.0:      	( 0.000067s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  790.4.0:      	( 0.000065s |  0.00% |  0.00% )   	( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │  [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:      	( 0.006219s |  0.11% |  0.00% )   	( 0.006905s |  0.39% |  0.00% )    	(1x)	│  │  │  │  mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:      	( 0.003390s |  0.06% |  0.00% )   	( 0.003942s |  0.22% |  0.00% )    	(1x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:   	( 0.003390s |100.00% |  0.00% )   	( 0.003942s |100.00% |  0.00% )    	(1x)	│  │  │  │  └─ : | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:      	( 0.000067s |  0.00% |  0.00% )   	( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:      	( 0.000063s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:      	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:      	( 0.000063s |  0.00% |  0.00% )   	( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:      	( 0.000062s |  0.00% |  0.00% )   	( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:      	( 0.000067s |  0.00% |  0.00% )   	( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  802.4.0:      	( 0.000087s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:      	( 0.000063s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:      	( 0.000070s |  0.00% |  0.00% )   	( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:      	( 0.085481s |  1.61% |  0.00% )   	( 0.097794s |  5.63% |  0.00% )    	(668x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  812.4.0:      	( 0.083222s |  1.57% |  0.00% )   	( 0.096431s |  5.55% |  0.00% )    	(668x)	│  │  │  │  case ${nWait} in
│  │  │  │  823.4.0:      	( 0.082551s |  1.55% |  0.00% )   	( 0.094023s |  5.41% |  0.00% )    	(647x)	│  │  │  │  ((nWait--))
│  │  │  │  828.4.0:      	( 0.087241s |  1.64% |  0.00% )   	( 0.100381s |  5.78% |  0.00% )    	(668x)	│  │  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:      	( 0.084878s |  1.60% |  0.00% )   	( 0.097807s |  5.63% |  0.00% )    	(666x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  782.4.1:      	( 0.084725s |  1.59% |  0.00% )   	( 0.097923s |  5.63% |  0.00% )    	(667x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  814.4.0:      	( 0.002718s |  0.05% |  0.00% )   	( 0.003115s |  0.17% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:      	( 0.002628s |  0.04% |  0.00% )   	( 0.003041s |  0.17% |  0.00% )    	(21x)	│  │  │  │  (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:      	( 0.054975s |  1.03% |  0.00% )   	( 0.046922s |  2.70% |  0.00% )    	(21x)	│  │  │  │  fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:      	( 0.002820s |  0.05% |  0.00% )   	( 0.003263s |  0.18% |  0.00% )    	(21x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:      	( 0.002758s |  0.05% |  0.00% )   	( 0.003182s |  0.18% |  0.00% )    	(21x)	│  │  │  │  fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:      	( 0.002909s |  0.05% |  0.00% )   	( 0.003351s |  0.19% |  0.00% )    	(21x)	│  │  │  │  nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:      	( 0.000118s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  829.4.0:      	( 0.000116s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nLinesAutoFlag=false
│  │  │  │  830.4.0:      	( 0.000118s |  0.00% |  0.00% )   	( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │  fallocateFlag=false
│  │  │  │  831.4.0:      	( 0.000124s |  0.00% |  0.00% )   	( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │  nSpawnFlag=false
│  │  │  │  745.4.1:      	( 0.000119s |  0.00% |  0.00% )   	( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  745.4.2:      	( 0.000139s |  0.00% |  0.00% )   	( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ -248.4.0:     	( 0.006082s |  0.11% |  0.00% )   	( 0.006048s |  0.34% |  0.00% )    	(1x)	│  │  │  └─ -'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.576XDz"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/pAuto'
│  │  │  839.3.0:         	( 0.000070s |  0.00% |  0.00% )   	( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:         	( 0.000096s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:         	( 0.000087s |  0.00% |  0.00% )   	( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1345.3.0:        	( 0.060384s |  0.01% |  0.00% )   	( 0.060514s |  0.01% |  0.00% )    	(1x)	│  │  │  coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:        	( 0.005806s |  0.00% |  0.00% )   	( 0.006707s |  0.00% |  0.00% )    	(1x)	│  │  │  << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:     	( 0.000168s |  2.89% |  0.00% )   	( 0.000180s |  2.68% |  0.00% )    	(1x)	│  │  │  ├─ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:     	( 0.000095s |  1.63% |  0.00% )   	( 0.000110s |  1.64% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1363.4.1:     	( 0.000112s |  1.92% |  0.00% )   	( 0.000128s |  1.90% |  0.00% )    	(1x)	│  │  │  │  echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:     	( 0.000296s |  5.09% |  0.00% )   	( 0.000311s |  4.63% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1444.4.0:     	( 0.000067s |  1.15% |  0.00% )   	( 0.000075s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  echo "{"
│  │  │  │  1448.4.0:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1449.4.0:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1449.4.1:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:     	( 0.000064s |  1.10% |  0.00% )   	( 0.000075s |  1.11% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "mapfile"
│  │  │  │  1451.4.0:     	( 0.000058s |  0.99% |  0.00% )   	( 0.000069s |  1.02% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1451.4.1:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-t'
│  │  │  │  1452.4.0:     	( 0.000067s |  1.15% |  0.00% )   	( 0.000078s |  1.16% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1453.4.1:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1454.4.1:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1456.4.0:     	( 0.000078s |  1.34% |  0.00% )   	( 0.000090s |  1.34% |  0.00% )    	(1x)	│  │  │  │  echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:     	( 0.000060s |  1.03% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1457.4.1:     	( 0.000060s |  1.03% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1457.4.2:     	( 0.000083s |  1.42% |  0.00% )   	( 0.000091s |  1.35% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1461.4.0:     	( 0.000139s |  2.39% |  0.00% )   	( 0.000158s |  2.35% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000077s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1465.4.0:     	( 0.000076s |  1.30% |  0.00% )   	( 0.000089s |  1.32% |  0.00% )    	(1x)	│  │  │  │  echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:     	( 0.000068s |  1.17% |  0.00% )   	( 0.000081s |  1.20% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:     	( 0.000071s |  1.22% |  0.00% )   	( 0.000084s |  1.25% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000077s |  1.14% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000077s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1510.4.1:     	( 0.000066s |  1.13% |  0.00% )   	( 0.000077s |  1.14% |  0.00% )    	(1x)	│  │  │  │  printf '\n'
│  │  │  │  1511.4.0:     	( 0.000064s |  1.10% |  0.00% )   	( 0.000075s |  1.11% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:     	( 0.000094s |  1.61% |  0.00% )   	( 0.000106s |  1.58% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1514.4.0:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1514.4.1:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1514.4.2:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1514.4.3:     	( 0.000073s |  1.25% |  0.00% )   	( 0.000085s |  1.26% |  0.00% )    	(1x)	│  │  │  │  echo "}"
│  │  │  │  1515.4.0:     	( 0.000070s |  1.20% |  0.00% )   	( 0.000082s |  1.22% |  0.00% )    	(1x)	│  │  │  │  ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:     	( 0.000083s |  1.42% |  0.00% )   	( 0.000095s |  1.41% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000074s |  1.10% |  0.00% )    	(1x)	│  │  │  │  ${lseekPosFlag}
│  │  │  │  1532.4.0:     	( 0.000075s |  1.29% |  0.00% )   	( 0.000087s |  1.29% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:     	( 0.000084s |  1.44% |  0.00% )   	( 0.000096s |  1.43% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:     	( 0.000063s |  1.08% |  0.00% )   	( 0.000075s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1544.4.1:     	( 0.000068s |  1.17% |  0.00% )   	( 0.000080s |  1.19% |  0.00% )    	(1x)	│  │  │  │  echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:     	( 0.000081s |  1.39% |  0.00% )   	( 0.000090s |  1.34% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1546.4.0:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000077s |  1.14% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  │  1551.4.0:     	( 0.000074s |  1.27% |  0.00% )   	( 0.000086s |  1.28% |  0.00% )    	(1x)	│  │  │  │  echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000076s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1556.4.0:     	( 0.000075s |  1.29% |  0.00% )   	( 0.000087s |  1.29% |  0.00% )    	(1x)	│  │  │  │  echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:     	( 0.000062s |  1.06% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${nLinesAutoFlag}
│  │  │  │  1557.4.1:     	( 0.000073s |  1.25% |  0.00% )   	( 0.000084s |  1.25% |  0.00% )    	(1x)	│  │  │  │  printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:     	( 0.000060s |  1.03% |  0.00% )   	( 0.000071s |  1.05% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1562.4.1:     	( 0.000068s |  1.17% |  0.00% )   	( 0.000080s |  1.19% |  0.00% )    	(1x)	│  │  │  │  printf '%s' ' || '
│  │  │  │  1563.4.0:     	( 0.000060s |  1.03% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${fallocateFlag}
│  │  │  │  1563.4.1:     	( 0.000106s |  1.82% |  0.00% )   	( 0.000114s |  1.69% |  0.00% )    	(1x)	│  │  │  │  echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${pipeReadFlag}
│  │  │  │  1564.4.1:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${nullDelimiterFlag}
│  │  │  │  1564.4.2:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000076s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1564.4.3:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000076s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${lseekFlag}
│  │  │  │  1572.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1572.4.1:     	( 0.000071s |  1.22% |  0.00% )   	( 0.000083s |  1.23% |  0.00% )    	(1x)	│  │  │  │  echo '{'
│  │  │  │  1573.4.0:     	( 0.000079s |  1.36% |  0.00% )   	( 0.000087s |  1.29% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1573.4.1:     	( 0.000065s |  1.11% |  0.00% )   	( 0.000076s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1574.4.0:     	( 0.000064s |  1.10% |  0.00% )   	( 0.000075s |  1.11% |  0.00% )    	(1x)	│  │  │  │  ${exportOrderFlag}
│  │  │  │  1575.4.0:     	( 0.000088s |  1.51% |  0.00% )   	( 0.000101s |  1.50% |  0.00% )    	(1x)	│  │  │  │  printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000072s |  1.07% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1583.4.0:     	( 0.000061s |  1.05% |  0.00% )   	( 0.000073s |  1.08% |  0.00% )    	(1x)	│  │  │  │  ${stdinRunFlag}
│  │  │  │  1586.4.0:     	( 0.000059s |  1.01% |  0.00% )   	( 0.000070s |  1.04% |  0.00% )    	(1x)	│  │  │  │  ${noFuncFlag}
│  │  │  │  1589.4.0:     	( 0.000059s |  1.01% |  0.00% )   	( 0.000070s |  1.04% |  0.00% )    	(1x)	│  │  │  │  ${substituteStringFlag}
│  │  │  │  1590.4.0:     	( 0.000081s |  1.39% |  0.00% )   	( 0.000093s |  1.38% |  0.00% )    	(1x)	│  │  │  │  printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:     	( 0.000066s |  1.13% |  0.00% )   	( 0.000078s |  1.16% |  0.00% )    	(1x)	│  │  │  │  (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:     	( 0.000084s |  1.44% |  0.00% )   	( 0.000089s |  1.32% |  0.00% )    	(1x)	│  │  │  │  ${readBytesFlag}
│  │  │  │  1608.4.0:     	( 0.000059s |  1.01% |  0.00% )   	( 0.000071s |  1.05% |  0.00% )    	(1x)	│  │  │  │  ${subshellRunFlag}
│  │  │  │  1608.4.1:     	( 0.000080s |  1.37% |  0.00% )   	( 0.000092s |  1.37% |  0.00% )    	(1x)	│  │  │  │  printf '\n%s ' '}'
│  │  │  │  1609.4.0:     	( 0.000069s |  1.18% |  0.00% )   	( 0.000080s |  1.19% |  0.00% )    	(1x)	│  │  │  │  echo "${outStr}"
│  │  │  │  1610.4.0:     	( 0.000064s |  1.10% |  0.00% )   	( 0.000076s |  1.13% |  0.00% )    	(1x)	│  │  │  │  ${nOrderFlag}
│  │  │  │  1611.4.0:     	( 0.000067s |  1.15% |  0.00% )   	( 0.000078s |  1.16% |  0.00% )    	(1x)	│  │  │  │  ${nSpawnFlag}
│  │  │  └─ 1616.4.0:     	( 0.000098s |  1.68% |  0.00% )   	( 0.000110s |  1.64% |  0.00% )    	(1x)	│  │  │  └─ echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:        	( 0.000275s |  0.00% |  0.00% )   	( 0.000315s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1355.3.0:        	( 0.000270s |  0.00% |  0.00% )   	( 0.000310s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:        	( 0.000066s |  0.00% |  0.00% )   	( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:        	( 0.012629s |  0.00% |  0.00% )   	( 0.100066s |  0.01% |  0.00% )    	(1x)	│  │  │  trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:        	( 0.012357s |  0.00% |  0.00% )   	( 0.012334s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:        	( 0.012214s |  0.00% |  0.00% )   	( 0.012183s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:        	( 0.011828s |  0.00% |  0.00% )   	( 0.011811s |  0.00% |  0.00% )    	(1x)	│  │  │  trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:        	( 0.000059s |  0.00% |  0.00% )   	( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:        	( 0.000062s |  0.00% |  0.00% )   	( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:        	( 0.000076s |  0.00% |  0.00% )   	( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1393.3.0:        	( 0.000070s |  0.00% |  0.00% )   	( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  printf '\n' >&${fd_continue}
│  │  │  1396.3.0:        	( 0.000058s |  0.00% |  0.00% )   	( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1397.3.0:        	( 0.000056s |  0.00% |  0.00% )   	( 0.000067s |  0.00% |  0.00% )    	(1x)	│  │  │  ((kkProcs=0 ))
│  │  │  1397.3.1:        	( 0.002699s |  0.00% |  0.00% )   	( 0.003128s |  0.00% |  0.00% )    	(29x)	│  │  │  ((kkProcs<28 ))
│  │  │  1398.3.0:        	( 0.002553s |  0.00% |  0.00% )   	( 0.002966s |  0.00% |  0.00% )    	(28x)	│  │  │  [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:        	( 17.662354s |  3.20% |  1.60% )   	( 17.013516s |  3.38% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p0 p0_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000637s |  0.00% |  0.00% )   	( 0.000662s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p0 p0_PID (&)
│  │  │  │  73.4.0:       	( 521.693416s | 99.99% | 47.38% )   	( 499.950624s | 99.99% | 49.75% )    	(28x)	│  │  │  │  << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0:    	( 0.005124s |  0.00% |  0.00% )   	( 0.005773s |  0.00% |  0.00% )    	(28x)	│  │  │  │  ├─ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.576XDz"
│  │  │  │  │  8.5.0:     	( 0.000245s |  0.00% |  0.00% )   	( 0.000278s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p0
│  │  │  │  │  12.5.0:    	( 0.015097s |  0.08% |  0.00% )   	( 0.014991s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0:    	( 0.498446s |  0.09% |  0.04% )   	( 0.496876s |  0.09% |  0.04% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -INT 158335 ${BASHPID}' INT
│  │  │  │  │  15.5.0:    	( 0.497982s |  0.09% |  0.04% )   	( 0.496592s |  0.09% |  0.04% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -TERM 158335 ${BASHPID}' TERM
│  │  │  │  │  16.5.0:    	( 0.524135s |  0.09% |  0.04% )   	( 0.517570s |  0.09% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1; kill -HUP 158335 ${BASHPID}' HUP
│  │  │  │  │  17.5.0:    	( 0.526024s |  0.09% |  0.04% )   	( 0.524465s |  0.10% |  0.05% )    	(28x)	│  │  │  │  │  trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0:    	( 0.105732s |  0.01% |  0.00% )   	( 0.119762s |  0.02% |  0.01% )    	(695x)	│  │  │  │  │  true
│  │  │  │  │  20.5.0:    	( 0.096073s |  0.01% |  0.00% )   	( 0.106703s |  0.01% |  0.01% )    	(695x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  20.5.1:    	( 0.003730s |  0.00% |  0.00% )   	( 0.004235s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  read -r < "/dev/shm/.forkrun.576XDz"/.nLines
│  │  │  │  │  20.5.2:    	( 0.003092s |  0.00% |  0.00% )   	( 0.003603s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3:    	( 0.003101s |  0.00% |  0.00% )   	( 0.003611s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  nLinesCur=${REPLY}
│  │  │  │  │  22.5.0:    	( 0.004555s |  0.02% |  0.00% )   	( 0.005122s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p0
│  │  │  │  │  23.5.0:    	( 6.545151s |  1.25% |  0.59% )   	( 0.150794s |  0.02% |  0.01% )    	(695x)	│  │  │  │  │  read -r -u 21 _
│  │  │  │  │  24.5.0:    	( 0.100249s |  0.01% |  0.00% )   	( 0.114394s |  0.01% |  0.01% )    	(695x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.576XDz"/.quit ]]
│  │  │  │  │  28.5.0:    	( 0.093660s |  0.01% |  0.00% )   	( 0.107291s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ -f "/dev/shm/.forkrun.576XDz"/.done ]]
│  │  │  │  │  28.5.1:    	( 0.088388s |  0.01% |  0.00% )   	( 0.101571s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  doneIndicatorFlag=true
│  │  │  │  │  30.5.0:    	( 0.093649s |  0.01% |  0.00% )   	( 0.107141s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  evfd_wait 25
│  │  │  │  │  31.5.0:    	( 0.815258s |  0.15% |  0.07% )   	( 0.797507s |  0.15% |  0.07% )    	(668x)	│  │  │  │  │  mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0:    	( 0.088421s |  0.01% |  0.00% )   	( 0.101639s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1:    	( 0.088426s |  0.01% |  0.00% )   	( 0.101514s |  0.01% |  0.01% )    	(667x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  46.5.0:    	( 0.170540s |  0.02% |  0.01% )   	( 0.109601s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  47.5.0:    	( 0.004261s |  0.02% |  0.00% )   	( 0.004787s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p0
│  │  │  │  │  48.5.0:    	( 0.096101s |  0.01% |  0.00% )   	( 0.100864s |  0.01% |  0.01% )    	(668x)	│  │  │  │  │  [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0:    	( 0.087189s |  0.01% |  0.00% )   	( 0.099427s |  0.01% |  0.00% )    	(667x)	│  │  │  │  │  ${nLinesAutoFlag}
│  │  │  │  │  69.5.0:    	( 0.003730s |  0.00% |  0.00% )   	( 0.004295s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0:    	( 0.003424s |  0.00% |  0.00% )   	( 0.003993s |  0.00% |  0.00% )    	(33x)	│  │  │  │  │  (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0:    	( 509.915604s |  4.09% | 46.31% )   	( 494.511741s |  4.14% | 49.21% )    	(667x)	│  │  │  │  │  << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:  	( 0.083055s |  0.02% |  0.00% )   	( 0.096545s |  0.02% |  0.00% )    	(667x)	│  │  │  │  │  ├─ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:  	( 34.994731s |  6.93% |  3.17% )   	( 33.729369s |  6.90% |  3.35% )    	(667x)	│  │  │  │  │  │  sha1sum "${@}"
│  │  │  │  │  │  9.6.0:  	( 60.254159s | 10.39% |  5.47% )   	( 58.733182s | 10.45% |  5.84% )    	(667x)	│  │  │  │  │  │  sha256sum "${@}"
│  │  │  │  │  │  10.6.0: 	( 48.917432s |  9.58% |  4.44% )   	( 47.527080s |  9.62% |  4.72% )    	(667x)	│  │  │  │  │  │  sha512sum "${@}"
│  │  │  │  │  │  11.6.0: 	( 59.663111s | 10.31% |  5.41% )   	( 58.244027s | 10.33% |  5.79% )    	(667x)	│  │  │  │  │  │  sha224sum "${@}"
│  │  │  │  │  │  12.6.0: 	( 47.400390s |  9.07% |  4.30% )   	( 46.060926s |  9.13% |  4.58% )    	(667x)	│  │  │  │  │  │  sha384sum "${@}"
│  │  │  │  │  │  13.6.0: 	( 31.389496s |  6.42% |  2.85% )   	( 30.406524s |  6.43% |  3.02% )    	(667x)	│  │  │  │  │  │  md5sum "${@}"
│  │  │  │  │  │  14.6.0: 	( 15.491760s |  4.16% |  1.40% )   	( 14.776121s |  4.15% |  1.47% )    	(667x)	│  │  │  │  │  │  sum -s "${@}"
│  │  │  │  │  │  15.6.0: 	( 33.171677s |  6.42% |  3.01% )   	( 31.963553s |  6.34% |  3.18% )    	(667x)	│  │  │  │  │  │  sum -r "${@}"
│  │  │  │  │  │  16.6.0: 	( 13.578638s |  3.94% |  1.23% )   	( 12.869711s |  3.88% |  1.28% )    	(667x)	│  │  │  │  │  │  cksum "${@}"
│  │  │  │  │  │  17.6.0: 	( 41.980698s |  8.79% |  3.81% )   	( 40.261506s |  8.68% |  4.00% )    	(667x)	│  │  │  │  │  │  b2sum "${@}"
│  │  │  │  │  │  18.6.0: 	( 92.763791s | 15.06% |  8.42% )   	( 91.119051s | 15.21% |  9.06% )    	(667x)	│  │  │  │  │  │  cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0: 	( 15.299674s |  4.38% |  1.38% )   	( 14.680750s |  4.38% |  1.46% )    	(667x)	│  │  │  │  │  │  xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0: 	( 14.926992s |  4.41% |  1.35% )   	( 14.043396s |  4.34% |  1.39% )    	(667x)	│  │  │  │  │  └─ xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1:    	( 0.003057s |  0.00% |  0.00% )   	( 0.003549s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │  nLinesAutoFlag=false
│  │  │  │  │  20.5.1:    	( 0.091312s |  0.01% |  0.00% )   	( 0.104537s |  0.01% |  0.01% )    	(662x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  68.5.1:    	( 0.086870s |  0.01% |  0.00% )   	( 0.097065s |  0.01% |  0.00% )    	(634x)	│  │  │  │  │  ${nSpawnFlag}
│  │  │  │  │  71.5.0:    	( 0.123030s |  0.01% |  0.01% )   	( 0.107564s |  0.01% |  0.01% )    	(634x)	│  │  │  │  │  printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0:    	( 0.002716s |  0.00% |  0.00% )   	( 0.003117s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  printf '\n' 1>&21
│  │  │  │  │  26.5.0:    	( 0.002797s |  0.00% |  0.00% )   	( 0.003209s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │  break
│  │  │  │  └─ 2.5.0:     	( 0.174686s |  0.02% |  0.01% )   	( 0.176529s |  0.03% |  0.01% )    	(28x)	│  │  │  │  └─ break
│  │  │  └─ 146.4.0:      	( 0.000095s |  0.00% |  0.00% )   	( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p0_PID})
│  │  │  1397.3.0:        	( 0.002542s |  0.00% |  0.00% )   	( 0.002948s |  0.00% |  0.00% )    	(28x)	│  │  │  ((kkProcs++ ))
│  │  │  1399.3.0:        	( 18.515735s |  3.35% |  1.68% )   	( 17.786655s |  3.54% |  1.77% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p1 p1_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000556s |  0.00% |  0.00% )   	( 0.000575s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p1 p1_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000083s |  0.00% |  0.00% )   	( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p1
│  │  │  │  │  12.5.0:    	( 0.012338s |  0.06% |  0.00% )   	( 0.012299s |  0.06% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p1 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p1; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003324s |  0.01% |  0.00% )   	( 0.003722s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p1
│  │  │  │  │  47.5.0:    	( 0.002984s |  0.01% |  0.00% )   	( 0.003373s |  0.01% |  0.00% )    	(19x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p1
│  │  │  └─ 146.4.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p1_PID})
│  │  │  1399.3.0:        	( 20.525523s |  3.72% |  1.86% )   	( 19.499513s |  3.88% |  1.94% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p2 p2_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000550s |  0.00% |  0.00% )   	( 0.000570s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p2 p2_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000082s |  0.00% |  0.00% )   	( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p2
│  │  │  │  │  12.5.0:    	( 0.012240s |  0.05% |  0.00% )   	( 0.012225s |  0.06% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p2 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p2; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005566s |  0.02% |  0.00% )   	( 0.006226s |  0.03% |  0.00% )    	(33x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p2
│  │  │  │  │  47.5.0:    	( 0.005046s |  0.02% |  0.00% )   	( 0.005703s |  0.02% |  0.00% )    	(32x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p2
│  │  │  └─ 146.4.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p2_PID})
│  │  │  1399.3.0:        	( 17.780853s |  3.22% |  1.61% )   	( 16.926581s |  3.37% |  1.68% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p3 p3_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000573s |  0.00% |  0.00% )   	( 0.000589s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p3 p3_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000244s |  0.00% |  0.00% )   	( 0.000276s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p3
│  │  │  │  │  12.5.0:    	( 0.012286s |  0.06% |  0.00% )   	( 0.012271s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p3 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p3; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003791s |  0.02% |  0.00% )   	( 0.004255s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p3
│  │  │  │  │  47.5.0:    	( 0.003595s |  0.02% |  0.00% )   	( 0.004030s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p3
│  │  │  │  │  49.5.0:    	( 0.000129s |  0.00% |  0.00% )   	( 0.000150s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  58.5.0:    	( 0.000133s |  0.00% |  0.00% )   	( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  ${doneIndicatorFlag}
│  │  │  │  │  59.5.0:    	( 0.000137s |  0.00% |  0.00% )   	( 0.000157s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0:    	( 0.000156s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  : > "/dev/shm/.forkrun.576XDz"/.quit
│  │  │  │  │  62.5.0:    	( 0.000207s |  0.00% |  0.00% )   	( 0.000228s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  printf '%.0s\n' "/dev/shm/.forkrun.576XDz"/.run/p* 1>&21
│  │  │  │  │  63.5.0:    	( 0.000137s |  0.00% |  0.00% )   	( 0.000156s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  break
│  │  │  └─ 146.4.0:      	( 0.000097s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p3_PID})
│  │  │  1399.3.0:        	( 17.625562s |  3.19% |  1.60% )   	( 16.656379s |  3.31% |  1.65% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p4 p4_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000581s |  0.00% |  0.00% )   	( 0.000598s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p4 p4_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000333s |  0.00% |  0.00% )   	( 0.000377s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p4
│  │  │  │  │  12.5.0:    	( 0.012494s |  0.07% |  0.00% )   	( 0.012478s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004919s |  0.02% |  0.00% )   	( 0.005514s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p4
│  │  │  │  │  47.5.0:    	( 0.004569s |  0.02% |  0.00% )   	( 0.005131s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p4
│  │  │  └─ 146.4.0:      	( 0.000094s |  0.00% |  0.00% )   	( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p4_PID})
│  │  │  1399.3.0:        	( 18.975547s |  3.44% |  1.72% )   	( 18.132018s |  3.61% |  1.80% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p5 p5_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000584s |  0.00% |  0.00% )   	( 0.000602s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p5 p5_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000257s |  0.00% |  0.00% )   	( 0.000292s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p5
│  │  │  │  │  12.5.0:    	( 0.015062s |  0.07% |  0.00% )   	( 0.015036s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002760s |  0.01% |  0.00% )   	( 0.003086s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p5
│  │  │  │  │  47.5.0:    	( 0.002701s |  0.01% |  0.00% )   	( 0.003049s |  0.01% |  0.00% )    	(17x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p5
│  │  │  └─ 146.4.0:      	( 0.000096s |  0.00% |  0.00% )   	( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p5_PID})
│  │  │  1399.3.0:        	( 19.880874s |  3.60% |  1.80% )   	( 19.171242s |  3.81% |  1.90% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p6 p6_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000586s |  0.00% |  0.00% )   	( 0.000609s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p6 p6_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000139s |  0.00% |  0.00% )   	( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p6
│  │  │  │  │  12.5.0:    	( 0.012512s |  0.06% |  0.00% )   	( 0.012495s |  0.06% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p6 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p6; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002985s |  0.01% |  0.00% )   	( 0.003346s |  0.01% |  0.00% )    	(19x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p6
│  │  │  │  │  47.5.0:    	( 0.002942s |  0.01% |  0.00% )   	( 0.003316s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p6
│  │  │  └─ 146.4.0:      	( 0.000092s |  0.00% |  0.00% )   	( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p6_PID})
│  │  │  1399.3.0:        	( 18.542231s |  3.36% |  1.68% )   	( 17.598110s |  3.50% |  1.75% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p7 p7_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000587s |  0.00% |  0.00% )   	( 0.000604s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p7 p7_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000088s |  0.00% |  0.00% )   	( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p7
│  │  │  │  │  12.5.0:    	( 0.012504s |  0.06% |  0.00% )   	( 0.012488s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p7 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p7; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004618s |  0.02% |  0.00% )   	( 0.005159s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p7
│  │  │  │  │  47.5.0:    	( 0.004200s |  0.02% |  0.00% )   	( 0.004744s |  0.02% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p7
│  │  │  └─ 146.4.0:      	( 0.000098s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p7_PID})
│  │  │  1399.3.0:        	( 17.434150s |  3.16% |  1.58% )   	( 16.544220s |  3.29% |  1.64% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p8 p8_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000608s |  0.00% |  0.00% )   	( 0.000626s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p8 p8_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000085s |  0.00% |  0.00% )   	( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p8
│  │  │  │  │  12.5.0:    	( 0.012497s |  0.07% |  0.00% )   	( 0.012480s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p8 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p8; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.006004s |  0.03% |  0.00% )   	( 0.006294s |  0.03% |  0.00% )    	(33x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p8
│  │  │  │  │  47.5.0:    	( 0.005396s |  0.03% |  0.00% )   	( 0.006042s |  0.03% |  0.00% )    	(32x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p8
│  │  │  └─ 146.4.0:      	( 0.000091s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p8_PID})
│  │  │  1399.3.0:        	( 17.285308s |  3.13% |  1.56% )   	( 16.243827s |  3.23% |  1.61% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p9 p9_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000611s |  0.00% |  0.00% )   	( 0.000626s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p9 p9_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000344s |  0.00% |  0.00% )   	( 0.000389s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p9
│  │  │  │  │  12.5.0:    	( 0.012598s |  0.07% |  0.00% )   	( 0.012579s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p9 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p9; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005300s |  0.03% |  0.00% )   	( 0.005947s |  0.03% |  0.00% )    	(31x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p9
│  │  │  │  │  47.5.0:    	( 0.004968s |  0.02% |  0.00% )   	( 0.005582s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p9
│  │  │  └─ 146.4.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p9_PID})
│  │  │  1399.3.0:        	( 17.852525s |  3.23% |  1.62% )   	( 16.988695s |  3.38% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p10 p10_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000619s |  0.00% |  0.00% )   	( 0.000634s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p10 p10_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000328s |  0.00% |  0.00% )   	( 0.000371s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p10
│  │  │  │  │  12.5.0:    	( 0.013017s |  0.07% |  0.00% )   	( 0.013003s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p10 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p10; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004181s |  0.02% |  0.00% )   	( 0.004599s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p10
│  │  │  │  │  47.5.0:    	( 0.003954s |  0.02% |  0.00% )   	( 0.004450s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p10
│  │  │  └─ 146.4.0:      	( 0.000093s |  0.00% |  0.00% )   	( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p10_PID})
│  │  │  1399.3.0:        	( 17.633861s |  3.19% |  1.60% )   	( 16.715350s |  3.32% |  1.66% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p11 p11_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000647s |  0.00% |  0.00% )   	( 0.000667s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p11 p11_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000222s |  0.00% |  0.00% )   	( 0.000252s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p11
│  │  │  │  │  12.5.0:    	( 0.015037s |  0.08% |  0.00% )   	( 0.015001s |  0.08% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p11 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p11; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005015s |  0.02% |  0.00% )   	( 0.005633s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p11
│  │  │  │  │  47.5.0:    	( 0.004822s |  0.02% |  0.00% )   	( 0.005383s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p11
│  │  │  └─ 146.4.0:      	( 0.000107s |  0.00% |  0.00% )   	( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p11_PID})
│  │  │  1399.3.0:        	( 17.715028s |  3.21% |  1.60% )   	( 16.780874s |  3.34% |  1.66% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p12 p12_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000833s |  0.00% |  0.00% )   	( 0.000857s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p12 p12_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000155s |  0.00% |  0.00% )   	( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p12
│  │  │  │  │  12.5.0:    	( 0.024074s |  0.13% |  0.00% )   	( 0.024001s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p12 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p12; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004030s |  0.02% |  0.00% )   	( 0.004509s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p12
│  │  │  │  │  47.5.0:    	( 0.003712s |  0.02% |  0.00% )   	( 0.004192s |  0.02% |  0.00% )    	(22x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p12
│  │  │  └─ 146.4.0:      	( 0.000172s |  0.00% |  0.00% )   	( 0.000192s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p12_PID})
│  │  │  1399.3.0:        	( 18.402348s |  3.33% |  1.67% )   	( 17.863328s |  3.55% |  1.77% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p13 p13_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000953s |  0.00% |  0.00% )   	( 0.000976s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p13 p13_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000150s |  0.00% |  0.00% )   	( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p13
│  │  │  │  │  12.5.0:    	( 0.023991s |  0.13% |  0.00% )   	( 0.023902s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p13 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p13; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002080s |  0.01% |  0.00% )   	( 0.002329s |  0.01% |  0.00% )    	(12x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p13
│  │  │  │  │  47.5.0:    	( 0.001702s |  0.00% |  0.00% )   	( 0.001926s |  0.01% |  0.00% )    	(11x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p13
│  │  │  └─ 146.4.0:      	( 0.000153s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p13_PID})
│  │  │  1399.3.0:        	( 18.003721s |  3.26% |  1.63% )   	( 17.257577s |  3.43% |  1.71% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p14 p14_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000943s |  0.00% |  0.00% )   	( 0.000968s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p14 p14_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000088s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p14
│  │  │  │  │  12.5.0:    	( 0.012583s |  0.06% |  0.00% )   	( 0.012528s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p14 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p14; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004296s |  0.02% |  0.00% )   	( 0.004782s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p14
│  │  │  │  │  47.5.0:    	( 0.003869s |  0.02% |  0.00% )   	( 0.004357s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p14
│  │  │  └─ 146.4.0:      	( 0.000154s |  0.00% |  0.00% )   	( 0.000173s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p14_PID})
│  │  │  1399.3.0:        	( 18.138665s |  3.29% |  1.64% )   	( 17.374165s |  3.46% |  1.72% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p15 p15_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000977s |  0.00% |  0.00% )   	( 0.001003s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p15 p15_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000089s |  0.00% |  0.00% )   	( 0.000102s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p15
│  │  │  │  │  12.5.0:    	( 0.024080s |  0.13% |  0.00% )   	( 0.023995s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p15 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p15; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.005240s |  0.02% |  0.00% )   	( 0.005869s |  0.03% |  0.00% )    	(30x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p15
│  │  │  │  │  47.5.0:    	( 0.004802s |  0.02% |  0.00% )   	( 0.005400s |  0.03% |  0.00% )    	(29x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p15
│  │  │  └─ 146.4.0:      	( 0.000157s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p15_PID})
│  │  │  1399.3.0:        	( 21.731397s |  3.94% |  1.97% )   	( 21.161069s |  4.21% |  2.10% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p16 p16_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000935s |  0.00% |  0.00% )   	( 0.000964s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p16 p16_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000086s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p16
│  │  │  │  │  12.5.0:    	( 0.015093s |  0.06% |  0.00% )   	( 0.015042s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p16 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p16; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002965s |  0.01% |  0.00% )   	( 0.003340s |  0.01% |  0.00% )    	(19x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p16
│  │  │  │  │  47.5.0:    	( 0.002851s |  0.01% |  0.00% )   	( 0.003212s |  0.01% |  0.00% )    	(18x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p16
│  │  │  └─ 146.4.0:      	( 0.000161s |  0.00% |  0.00% )   	( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p16_PID})
│  │  │  1399.3.0:        	( 17.680170s |  3.20% |  1.60% )   	( 17.094695s |  3.40% |  1.70% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p17 p17_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000991s |  0.00% |  0.00% )   	( 0.001015s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p17 p17_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000090s |  0.00% |  0.00% )   	( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p17
│  │  │  │  │  12.5.0:    	( 0.012656s |  0.07% |  0.00% )   	( 0.012564s |  0.07% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p17 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p17; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004050s |  0.02% |  0.00% )   	( 0.004522s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p17
│  │  │  │  │  47.5.0:    	( 0.003566s |  0.02% |  0.00% )   	( 0.003997s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p17
│  │  │  └─ 146.4.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p17_PID})
│  │  │  1399.3.0:        	( 21.154265s |  3.83% |  1.92% )   	( 20.512731s |  4.08% |  2.04% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p18 p18_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001021s |  0.00% |  0.00% )   	( 0.001048s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p18 p18_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000160s |  0.00% |  0.00% )   	( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p18
│  │  │  │  │  12.5.0:    	( 0.023596s |  0.11% |  0.00% )   	( 0.023529s |  0.11% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p18 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p18; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004445s |  0.02% |  0.00% )   	( 0.004992s |  0.02% |  0.00% )    	(26x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p18
│  │  │  │  │  47.5.0:    	( 0.004163s |  0.01% |  0.00% )   	( 0.004683s |  0.02% |  0.00% )    	(25x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p18
│  │  │  └─ 146.4.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000177s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p18_PID})
│  │  │  1399.3.0:        	( 20.552405s |  3.72% |  1.86% )   	( 19.794650s |  3.94% |  1.96% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p19 p19_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001069s |  0.00% |  0.00% )   	( 0.001091s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p19 p19_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000086s |  0.00% |  0.00% )   	( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p19
│  │  │  │  │  12.5.0:    	( 0.012555s |  0.06% |  0.00% )   	( 0.012532s |  0.06% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004024s |  0.01% |  0.00% )   	( 0.004532s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p19
│  │  │  │  │  47.5.0:    	( 0.004142s |  0.02% |  0.00% )   	( 0.004627s |  0.02% |  0.00% )    	(23x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p19
│  │  │  └─ 146.4.0:      	( 0.000160s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p19_PID})
│  │  │  1399.3.0:        	( 17.395199s |  3.15% |  1.57% )   	( 16.614144s |  3.30% |  1.65% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p20 p20_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001097s |  0.00% |  0.00% )   	( 0.001121s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p20 p20_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000174s |  0.00% |  0.00% )   	( 0.000198s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p20
│  │  │  │  │  12.5.0:    	( 0.022857s |  0.13% |  0.00% )   	( 0.022794s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p20 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p20; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004824s |  0.02% |  0.00% )   	( 0.005432s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p20
│  │  │  │  │  47.5.0:    	( 0.004437s |  0.02% |  0.00% )   	( 0.004998s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p20
│  │  │  └─ 146.4.0:      	( 0.000160s |  0.00% |  0.00% )   	( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p20_PID})
│  │  │  1399.3.0:        	( 17.390602s |  3.15% |  1.57% )   	( 16.753274s |  3.33% |  1.66% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p21 p21_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000792s |  0.00% |  0.00% )   	( 0.000816s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p21 p21_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000133s |  0.00% |  0.00% )   	( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p21
│  │  │  │  │  12.5.0:    	( 0.026200s |  0.15% |  0.00% )   	( 0.026113s |  0.15% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p21 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p21; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004760s |  0.02% |  0.00% )   	( 0.005351s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p21
│  │  │  │  │  47.5.0:    	( 0.004561s |  0.02% |  0.00% )   	( 0.005107s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p21
│  │  │  └─ 146.4.0:      	( 0.000097s |  0.00% |  0.00% )   	( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p21_PID})
│  │  │  1399.3.0:        	( 20.655147s |  3.74% |  1.87% )   	( 20.202004s |  4.02% |  2.01% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p22 p22_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001081s |  0.00% |  0.00% )   	( 0.001110s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p22 p22_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000153s |  0.00% |  0.00% )   	( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p22
│  │  │  │  │  12.5.0:    	( 0.023996s |  0.11% |  0.00% )   	( 0.023913s |  0.11% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.002476s |  0.01% |  0.00% )   	( 0.002768s |  0.01% |  0.00% )    	(15x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p22
│  │  │  │  │  47.5.0:    	( 0.002391s |  0.01% |  0.00% )   	( 0.002703s |  0.01% |  0.00% )    	(14x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p22
│  │  │  └─ 146.4.0:      	( 0.000196s |  0.00% |  0.00% )   	( 0.000216s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p22_PID})
│  │  │  1399.3.0:        	( 18.028869s |  3.27% |  1.63% )   	( 17.473069s |  3.48% |  1.73% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p23 p23_PID >>
│  │  │  ├─ 1.4.0:        	( 0.000915s |  0.00% |  0.00% )   	( 0.000942s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p23 p23_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000148s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p23
│  │  │  │  │  12.5.0:    	( 0.029552s |  0.16% |  0.00% )   	( 0.024285s |  0.13% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.003277s |  0.01% |  0.00% )   	( 0.003675s |  0.02% |  0.00% )    	(21x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p23
│  │  │  │  │  47.5.0:    	( 0.003576s |  0.01% |  0.00% )   	( 0.003953s |  0.02% |  0.00% )    	(20x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p23
│  │  │  └─ 146.4.0:      	( 0.000175s |  0.00% |  0.00% )   	( 0.000189s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p23_PID})
│  │  │  1399.3.0:        	( 22.513992s |  4.08% |  2.04% )   	( 21.704477s |  4.32% |  2.15% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p24 p24_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001040s |  0.00% |  0.00% )   	( 0.001069s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p24 p24_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000171s |  0.00% |  0.00% )   	( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p24
│  │  │  │  │  12.5.0:    	( 0.029323s |  0.13% |  0.00% )   	( 0.023789s |  0.10% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004300s |  0.01% |  0.00% )   	( 0.004814s |  0.02% |  0.00% )    	(25x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p24
│  │  │  │  │  47.5.0:    	( 0.004228s |  0.01% |  0.00% )   	( 0.004737s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p24
│  │  │  └─ 146.4.0:      	( 0.000164s |  0.00% |  0.00% )   	( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p24_PID})
│  │  │  1399.3.0:        	( 17.743462s |  3.21% |  1.61% )   	( 17.049939s |  3.39% |  1.69% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p25 p25_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001108s |  0.00% |  0.00% )   	( 0.001131s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p25 p25_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000155s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p25
│  │  │  │  │  12.5.0:    	( 0.024267s |  0.13% |  0.00% )   	( 0.024181s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p25 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p25; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004329s |  0.02% |  0.00% )   	( 0.004844s |  0.02% |  0.00% )    	(25x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p25
│  │  │  │  │  47.5.0:    	( 0.004147s |  0.02% |  0.00% )   	( 0.004661s |  0.02% |  0.00% )    	(24x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p25
│  │  │  └─ 146.4.0:      	( 0.000158s |  0.00% |  0.00% )   	( 0.000178s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p25_PID})
│  │  │  1399.3.0:        	( 17.314354s |  3.14% |  1.57% )   	( 16.149975s |  3.21% |  1.60% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p26 p26_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001066s |  0.00% |  0.00% )   	( 0.001098s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p26 p26_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000152s |  0.00% |  0.00% )   	( 0.000167s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p26
│  │  │  │  │  12.5.0:    	( 0.024080s |  0.13% |  0.00% )   	( 0.023967s |  0.14% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p26 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p26; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004956s |  0.02% |  0.00% )   	( 0.005528s |  0.03% |  0.00% )    	(28x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p26
│  │  │  │  │  47.5.0:    	( 0.004605s |  0.02% |  0.00% )   	( 0.005201s |  0.03% |  0.00% )    	(27x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p26
│  │  │  └─ 146.4.0:      	( 0.000164s |  0.00% |  0.00% )   	( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p26_PID})
│  │  │  1399.3.0:        	( 17.585999s |  3.19% |  1.59% )   	( 16.916350s |  3.36% |  1.68% )    	(1x)	│  │  │  << (FUNCTION): main.forkrun.local p27 p27_PID >>
│  │  │  ├─ 1.4.0:        	( 0.001080s |  0.00% |  0.00% )   	( 0.001103s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─ local p27 p27_PID (&)
│  │  │  │  │  8.5.0:     	( 0.000156s |  0.00% |  0.00% )   	( 0.000176s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │  echo "${BASH_PID}" > "/dev/shm/.forkrun.576XDz"/.run/p27
│  │  │  │  │  12.5.0:    	( 0.035327s |  0.20% |  0.00% )   	( 0.027664s |  0.16% |  0.00% )    	(1x)	│  │  │  │  │  trap ': >"/dev/shm/.forkrun.576XDz"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.576XDz"/.run/p27 ]] && \rm -f "/dev/shm/.forkrun.576XDz"/.run/p27; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  22.5.0:    	( 0.004493s |  0.02% |  0.00% )   	( 0.005051s |  0.02% |  0.00% )    	(27x)	│  │  │  │  │  echo 1 > "/dev/shm/.forkrun.576XDz"/.wait/p27
│  │  │  │  │  47.5.0:    	( 0.004559s |  0.02% |  0.00% )   	( 0.005132s |  0.03% |  0.00% )    	(26x)	│  │  │  │  │  echo 0 > "/dev/shm/.forkrun.576XDz"/.wait/p27
│  │  │  └─ 146.4.0:      	( 0.000161s |  0.00% |  0.00% )   	( 0.000182s |  0.00% |  0.00% )    	(1x)	│  │  │  └─ p_PID+=(${p27_PID})
│  │  │  1401.3.0:        	( 0.000149s |  0.00% |  0.00% )   	( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:        	( 0.000144s |  0.00% |  0.00% )   	( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:        	( 0.000123s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:        	( 0.000115s |  0.00% |  0.00% )   	( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:        	( 0.001230s |  0.00% |  0.00% )   	( 0.001243s |  0.00% |  0.00% )    	(1x)	│  │  │  declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:        	( 0.000124s |  0.00% |  0.00% )   	( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nOrderFlag}
│  │  │  1478.3.0:        	( 0.000122s |  0.00% |  0.00% )   	( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:        	( 0.000115s |  0.00% |  0.00% )   	( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  ${nSpawnFlag}
│  │  │  1488.3.0:        	( 23.940721s |  4.34% |  2.17% )   	( 0.001802s |  0.00% |  0.00% )    	(1x)	│  │  │  wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:        	( 0.000299s |  0.00% |  0.00% )   	( 0.000334s |  0.00% |  0.00% )    	(1x)	│  │  │  (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:        	( 0.000273s |  0.00% |  0.00% )   	( 0.000314s |  0.00% |  0.00% )    	(1x)	│  │  └─ ${nSpawnFlag}
│  │  1503.2.0:           	( 0.000155s |  0.00% |  0.00% )   	( 0.000180s |  0.00% |  0.00% )    	(1x)	│  │  wait
└─ └─ -248.2.0:           	( 0.005231s |  0.00% |  0.00% )   	( 0.003566s |  0.00% |  0.00% )    	(1x)	└─ └─ -'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.576XDz" 2>/dev/null'

TOTAL RUN TIME: 1100.977034s
TOTAL CPU TIME: 1004.846468s
