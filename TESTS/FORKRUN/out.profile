LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )   	( time | total % | cur depth % )   	(count) <command>
_____________________	________________________________	________________________________	____________________________________
9.0.0:                 	( 462.219133s | 50.07% )            ( 420.504698s | 49.89% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
├─ 1.1.0:              	( 0.000624s |  0.00% |  0.00% )   ( 0.000315s |  0.00% |  0.00% )    	(1x)	├─forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:            	( 462.218509s | 50.07% | 99.99% )   ( 420.504383s | 49.89% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.022900s |  0.00% |  0.00% )   ( 0.022811s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000076s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000128s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000094s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000069s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  323.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.000917s |  0.00% |  0.00% )   ( 0.000559s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.003682s |  0.00% |  0.00% )   ( 0.003682s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.003682s |  0.00% |100.00% )   ( 0.003682s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.001377s |  0.00% |  0.00% )   ( 0.001453s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000086s |  0.00% |  0.00% )   ( 0.000100s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.014198s |  0.00% |  0.00% )   ( 0.001037s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:         	( 462.168483s | 50.06% | 99.98% )   ( 420.470940s | 49.89% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000092s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.001723s |  0.00% |  0.00% )   ( 0.002004s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.001723s |  0.00% |100.00% )   ( 0.002004s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000102s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000225s |  0.00% |  0.00% )   ( 0.000242s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000091s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000100s |  0.00% |  0.00% )   ( 0.008489s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.008892s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.002970s |  0.00% |  0.00% )   ( 0.003038s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000821s |  0.00% |  0.00% )   ( 0.000963s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000057s |  0.00% |  6.94% )   ( 0.000067s |  0.00% |  6.95% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000060s |  0.00% |  7.30% )   ( 0.000072s |  0.00% |  7.47% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000062s |  0.00% |  7.55% )   ( 0.000073s |  0.00% |  7.58% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000061s |  0.00% |  7.42% )   ( 0.000071s |  0.00% |  7.37% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000060s |  0.00% |  7.30% )   ( 0.000072s |  0.00% |  7.47% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000066s |  0.00% |  8.03% )   ( 0.000078s |  0.00% |  8.09% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000061s |  0.00% |  7.42% )   ( 0.000074s |  0.00% |  7.68% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000130s |  0.00% | 15.83% )   ( 0.000143s |  0.00% | 14.84% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000064s |  0.00% |  7.79% )   ( 0.000077s |  0.00% |  7.99% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000064s |  0.00% |  7.79% )   ( 0.000076s |  0.00% |  7.89% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000063s |  0.00% |  7.67% )   ( 0.000075s |  0.00% |  7.78% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000073s |  0.00% |  8.89% )   ( 0.000085s |  0.00% |  8.82% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006758s |  0.00% |  0.00% )   ( 0.006866s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002135s |  0.00% |  0.00% )   ( 0.002236s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000237s |  0.00% | 11.10% )   ( 0.000254s |  0.00% | 11.35% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.001898s |  0.00% | 88.89% )   ( 0.001982s |  0.00% | 88.64% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000156s |  0.00% |  0.00% )   ( 0.000169s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  544.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  546.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  557.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003470s |  0.00% |  0.00% )   ( 0.003587s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000102s |  0.00% |  0.00% )   ( 0.000117s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000102s |  0.00% |100.00% )   ( 0.000117s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.002573s |  0.00% |  0.00% )   ( 0.002641s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000526s |  0.00% |  0.00% )   ( 0.000539s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.080594s |  0.00% |  0.01% )   ( 0.080508s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000098s |  0.00% |  0.12% )   ( 0.000112s |  0.00% |  0.13% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.012220s |  0.00% | 15.16% )   ( 0.012192s |  0.00% | 15.14% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012129s |  0.00% | 15.04% )   ( 0.012112s |  0.00% | 15.04% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012191s |  0.00% | 15.12% )   ( 0.012173s |  0.00% | 15.12% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012217s |  0.00% | 15.15% )   ( 0.012198s |  0.00% | 15.15% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012143s |  0.00% | 15.06% )   ( 0.012125s |  0.00% | 15.06% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000061s |  0.00% |  0.07% )   ( 0.000072s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.019306s |  0.00% | 23.95% )   ( 0.019259s |  0.00% | 23.92% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000094s |  0.00% |  0.11% )   ( 0.000107s |  0.00% |  0.13% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000068s |  0.00% |  0.08% )   ( 0.000080s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000067s |  0.00% |  0.08% )   ( 0.000078s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000413s |  0.00% |  0.00% )   ( 0.000437s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.484075s |  0.37% |  0.75% )   ( 1.689932s |  0.20% |  0.40% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012340s |  0.00% |  0.35% )   ( 0.012276s |  0.00% |  0.72% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012233s |  0.00% |  0.35% )   ( 0.012151s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012259s |  0.00% |  0.35% )   ( 0.012206s |  0.00% |  0.72% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012275s |  0.00% |  0.35% )   ( 0.012222s |  0.00% |  0.72% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012212s |  0.00% |  0.35% )   ( 0.012164s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.083806s |  0.00% |  0.00% )   ( 0.096600s |  0.01% |  0.00% )    	(670x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 2.077792s |  0.22% |  0.08% )   ( 0.111086s |  0.01% |  0.00% )    	(669x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000337s |  0.00% |  0.00% )   ( 0.000392s |  0.00% |  0.01% )    	(2x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.088967s |  0.00% |  0.00% )   ( 0.095762s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.082941s |  0.00% |  0.00% )   ( 0.095960s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000073s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.083115s |  0.00% |  0.00% )   ( 0.096053s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.086444s |  0.00% |  0.00% )   ( 0.099218s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.085909s |  0.00% |  0.00% )   ( 0.098593s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.082342s |  0.00% |  0.00% )   ( 0.095261s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.082582s |  0.00% |  0.00% )   ( 0.095251s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.082076s |  0.00% |  0.00% )   ( 0.094761s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.005836s |  0.00% |  0.16% )   ( 0.006391s |  0.00% |  0.37% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.002885s |  0.00% |  0.08% )   ( 0.003286s |  0.00% |  0.19% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.002885s |  0.00% |100.00% )   ( 0.003286s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000093s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.081720s |  0.00% |  0.00% )   ( 0.094416s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.080660s |  0.00% |  0.00% )   ( 0.093541s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.078989s |  0.00% |  0.00% )   ( 0.091386s |  0.01% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.085366s |  0.00% |  0.00% )   ( 0.097995s |  0.01% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.085939s |  0.00% |  0.00% )   ( 0.096614s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.083195s |  0.00% |  0.00% )   ( 0.095897s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002701s |  0.00% |  0.00% )   ( 0.003090s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002603s |  0.00% |  0.00% )   ( 0.003004s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.059670s |  0.00% |  0.08% )   ( 0.046862s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002724s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002625s |  0.00% |  0.00% )   ( 0.003043s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.003985s |  0.00% |  0.00% )   ( 0.003354s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  829.4.0:   	( 0.000120s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000131s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000116s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000087s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.005475s |  0.00% |  0.15% )   ( 0.005555s |  0.00% |  0.32% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.miwbkF"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000101s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.063536s |  0.00% |  0.01% )   ( 0.063671s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.006246s |  0.00% |  0.00% )   ( 0.007178s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000267s |  0.00% |  4.27% )   ( 0.000297s |  0.00% |  4.13% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000179s |  0.00% |  2.86% )   ( 0.000201s |  0.00% |  2.80% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000197s |  0.00% |  3.15% )   ( 0.000226s |  0.00% |  3.14% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000524s |  0.00% |  8.38% )   ( 0.000553s |  0.00% |  7.70% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000168s |  0.00% |  2.68% )   ( 0.000196s |  0.00% |  2.73% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000059s |  0.00% |  0.94% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000063s |  0.00% |  1.00% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000068s |  0.00% |  1.08% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000062s |  0.00% |  0.99% )   ( 0.000074s |  0.00% |  1.03% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000074s |  0.00% |  1.03% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1456.4.0:  	( 0.000066s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1461.4.0:  	( 0.000067s |  0.00% |  1.07% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1465.4.0:  	( 0.000084s |  0.00% |  1.34% )   ( 0.000092s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:  	( 0.000068s |  0.00% |  1.08% )   ( 0.000080s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1510.4.1:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1511.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:  	( 0.000093s |  0.00% |  1.48% )   ( 0.000103s |  0.00% |  1.43% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1514.4.0:  	( 0.000062s |  0.00% |  0.99% )   ( 0.000073s |  0.00% |  1.01% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1514.4.3:  	( 0.000071s |  0.00% |  1.13% )   ( 0.000083s |  0.00% |  1.15% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1515.4.0:  	( 0.000071s |  0.00% |  1.13% )   ( 0.000081s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000097s |  0.00% |  1.55% )   ( 0.000110s |  0.00% |  1.53% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000061s |  0.00% |  0.97% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000072s |  0.00% |  1.15% )   ( 0.000084s |  0.00% |  1.17% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000079s |  0.00% |  1.26% )   ( 0.000085s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000059s |  0.00% |  0.94% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000080s |  0.00% |  1.28% )   ( 0.000093s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000065s |  0.00% |  1.04% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000072s |  0.00% |  1.15% )   ( 0.000083s |  0.00% |  1.15% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000063s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000089s |  0.00% |  1.42% )   ( 0.000100s |  0.00% |  1.39% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000084s |  0.00% |  1.34% )   ( 0.000095s |  0.00% |  1.32% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000069s |  0.00% |  1.10% )   ( 0.000079s |  0.00% |  1.10% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000097s |  0.00% |  1.55% )   ( 0.000102s |  0.00% |  1.42% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000059s |  0.00% |  0.94% )   ( 0.000070s |  0.00% |  0.97% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1564.4.2:  	( 0.000081s |  0.00% |  1.29% )   ( 0.000088s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1564.4.3:  	( 0.000066s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1572.4.0:  	( 0.000059s |  0.00% |  0.94% )   ( 0.000069s |  0.00% |  0.96% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000083s |  0.00% |  1.32% )   ( 0.000094s |  0.00% |  1.30% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000071s |  0.00% |  0.98% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000063s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000063s |  0.00% |  1.00% )   ( 0.000074s |  0.00% |  1.03% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000085s |  0.00% |  1.36% )   ( 0.000096s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000070s |  0.00% |  0.97% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000075s |  0.00% |  1.20% )   ( 0.000086s |  0.00% |  1.19% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000067s |  0.00% |  1.07% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000080s |  0.00% |  1.28% )   ( 0.000091s |  0.00% |  1.26% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000066s |  0.00% |  1.05% )   ( 0.000077s |  0.00% |  1.07% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000060s |  0.00% |  0.96% )   ( 0.000072s |  0.00% |  1.00% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000067s |  0.00% |  1.07% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000067s |  0.00% |  1.07% )   ( 0.000078s |  0.00% |  1.08% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000075s |  0.00% |  1.04% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000064s |  0.00% |  1.02% )   ( 0.000076s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000079s |  0.00% |  1.26% )   ( 0.000091s |  0.00% |  1.26% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000281s |  0.00% |  0.00% )   ( 0.000322s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000302s |  0.00% |  0.00% )   ( 0.000343s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000109s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012693s |  0.00% |  0.00% )   ( 0.101971s |  0.01% |  0.02% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012457s |  0.00% |  0.00% )   ( 0.012440s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012301s |  0.00% |  0.00% )   ( 0.012277s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.012057s |  0.00% |  0.00% )   ( 0.012035s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002649s |  0.00% |  0.00% )   ( 0.003076s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002651s |  0.00% |  0.00% )   ( 0.003072s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 63.852853s |  6.91% |  3.45% )   ( 60.969937s |  7.23% |  3.62% )    	(4x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002412s |  0.00% |  0.00% )   ( 0.002467s |  0.00% |  0.00% )    	(4x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 63.850107s |  6.91% | 99.99% )   ( 60.967088s |  7.23% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000828s |  0.00% |  0.00% )   ( 0.000938s |  0.00% |  0.00% )    	(4x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.miwbkF"
│  │  │  │  │  8.5.0:  	( 0.000633s |  0.00% |  0.00% )   ( 0.000721s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.miwbkF"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.049297s |  0.00% |  0.07% )   ( 0.049227s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.miwbkF"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.057648s |  0.00% |  0.09% )   ( 0.057517s |  0.00% |  0.09% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1916079 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049735s |  0.00% |  0.07% )   ( 0.049665s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1916079 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049891s |  0.00% |  0.07% )   ( 0.049817s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1916079 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.049729s |  0.00% |  0.07% )   ( 0.049654s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.016489s |  0.00% |  0.00% )   ( 0.018717s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.014504s |  0.00% |  0.00% )   ( 0.016486s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000837s |  0.00% |  0.00% )   ( 0.000958s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.miwbkF"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000679s |  0.00% |  0.00% )   ( 0.000792s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000674s |  0.00% |  0.00% )   ( 0.000789s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.018069s |  0.00% |  0.00% )   ( 0.020125s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.miwbkF"/.wait/p0
│  │  │  │  │  23.5.0: 	( 1.129540s |  0.12% |  0.06% )   ( 0.023550s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.015339s |  0.00% |  0.00% )   ( 0.017471s |  0.00% |  0.00% )    	(108x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.013782s |  0.00% |  0.00% )   ( 0.015882s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013334s |  0.00% |  0.00% )   ( 0.015359s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.014253s |  0.00% |  0.00% )   ( 0.016286s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.120758s |  0.01% |  0.00% )   ( 0.117546s |  0.01% |  0.00% )    	(104x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.013024s |  0.00% |  0.00% )   ( 0.015001s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.013226s |  0.00% |  0.00% )   ( 0.015200s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.017316s |  0.00% |  0.00% )   ( 0.016277s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.017773s |  0.00% |  0.00% )   ( 0.018695s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.miwbkF"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.013176s |  0.00% |  0.00% )   ( 0.015194s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.013223s |  0.00% |  0.00% )   ( 0.015271s |  0.00% |  0.00% )    	(104x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000737s |  0.00% |  0.00% )   ( 0.000842s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000642s |  0.00% |  0.00% )   ( 0.000757s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 62.075601s |  6.72% |  3.75% )   ( 60.275563s |  7.15% |  3.82% )    	(104x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.012219s |  0.00% |  0.01% )   ( 0.014203s |  0.00% |  0.02% )    	(104x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.183485s |  0.45% |  6.73% )   ( 4.126282s |  0.48% |  6.84% )    	(104x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 6.931344s |  0.75% | 11.16% )   ( 6.768579s |  0.80% | 11.22% )    	(104x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 5.911124s |  0.64% |  9.52% )   ( 5.733908s |  0.68% |  9.51% )    	(104x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 6.822579s |  0.73% | 10.99% )   ( 6.684103s |  0.79% | 11.08% )    	(104x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 5.743329s |  0.62% |  9.25% )   ( 5.536754s |  0.65% |  9.18% )    	(104x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.908014s |  0.42% |  6.29% )   ( 3.759334s |  0.44% |  6.23% )    	(104x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.184707s |  0.23% |  3.51% )   ( 2.077733s |  0.24% |  3.44% )    	(104x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 3.973272s |  0.43% |  6.40% )   ( 3.883662s |  0.46% |  6.44% )    	(104x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.926081s |  0.20% |  3.10% )   ( 1.851619s |  0.21% |  3.07% )    	(104x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.214535s |  0.56% |  8.40% )   ( 5.037184s |  0.59% |  8.35% )    	(104x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 10.816706s |  1.17% | 17.42% )   ( 10.633671s |  1.26% | 17.64% )    	(104x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.230123s |  0.24% |  3.59% )   ( 2.106601s |  0.24% |  3.49% )    	(104x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.218083s |  0.24% |  3.57% )   ( 2.061930s |  0.24% |  3.42% )    	(104x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000405s |  0.00% |  0.00% )   ( 0.000469s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.013944s |  0.00% |  0.00% )   ( 0.015912s |  0.00% |  0.00% )    	(100x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.012424s |  0.00% |  0.00% )   ( 0.014350s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.016989s |  0.00% |  0.00% )   ( 0.016079s |  0.00% |  0.00% )    	(96x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000433s |  0.00% |  0.00% )   ( 0.000498s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000458s |  0.00% |  0.00% )   ( 0.000519s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.024717s |  0.00% |  0.03% )   ( 0.024961s |  0.00% |  0.04% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.miwbkF"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000334s |  0.00% |  0.00% )   ( 0.000382s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002482s |  0.00% |  0.00% )   ( 0.002903s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 360.789223s | 39.08% |  3.39% )   ( 343.284522s | 40.73% |  3.54% )    	(23x)	│  │  │ << (FUNCTION): .local p4 p4_PID >>
│  │  │  ├─ 1.4.0:     	( 0.020244s |  0.00% |  0.00% )   ( 0.020650s |  0.00% |  0.00% )    	(23x)	│  │  │  ├─local p4 p4_PID (&)
│  │  │  │  73.4.0:    	( 360.766132s | 39.08% | 99.99% )   ( 343.260650s | 40.73% | 99.99% )    	(23x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003577s |  0.00% |  0.00% )   ( 0.004043s |  0.00% |  0.00% )    	(23x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.miwbkF"
│  │  │  │  │  8.5.0:  	( 0.003534s |  0.00% |  0.00% )   ( 0.004004s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.miwbkF"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.450654s |  0.04% |  0.12% )   ( 0.441542s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.miwbkF"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.443635s |  0.04% |  0.12% )   ( 0.431862s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1916079 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.425375s |  0.04% |  0.11% )   ( 0.424240s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1916079 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.438709s |  0.04% |  0.12% )   ( 0.437533s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1916079 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.426923s |  0.04% |  0.11% )   ( 0.425766s |  0.05% |  0.12% )    	(23x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.087329s |  0.00% |  0.00% )   ( 0.098827s |  0.01% |  0.00% )    	(561x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.076050s |  0.00% |  0.00% )   ( 0.087025s |  0.01% |  0.00% )    	(561x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002643s |  0.00% |  0.00% )   ( 0.002994s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.miwbkF"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002018s |  0.00% |  0.00% )   ( 0.002367s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002112s |  0.00% |  0.00% )   ( 0.002462s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.096408s |  0.01% |  0.00% )   ( 0.106161s |  0.01% |  0.00% )    	(561x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.miwbkF"/.wait/p4
│  │  │  │  │  23.5.0: 	( 5.763792s |  0.62% |  0.06% )   ( 0.125920s |  0.01% |  0.00% )    	(561x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.085899s |  0.00% |  0.00% )   ( 0.094293s |  0.01% |  0.00% )    	(561x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.080626s |  0.00% |  0.00% )   ( 0.087530s |  0.01% |  0.00% )    	(538x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.072992s |  0.00% |  0.00% )   ( 0.083237s |  0.00% |  0.00% )    	(538x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.076977s |  0.00% |  0.00% )   ( 0.087774s |  0.01% |  0.00% )    	(538x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.659807s |  0.07% |  0.00% )   ( 0.648529s |  0.07% |  0.00% )    	(538x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.073779s |  0.00% |  0.00% )   ( 0.084207s |  0.00% |  0.00% )    	(538x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.071815s |  0.00% |  0.00% )   ( 0.082495s |  0.00% |  0.00% )    	(538x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.134566s |  0.01% |  0.00% )   ( 0.088687s |  0.01% |  0.00% )    	(538x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.090074s |  0.00% |  0.00% )   ( 0.101294s |  0.01% |  0.00% )    	(538x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.miwbkF"/.wait/p4
│  │  │  │  │  48.5.0: 	( 0.071298s |  0.00% |  0.00% )   ( 0.081916s |  0.00% |  0.00% )    	(538x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.070301s |  0.00% |  0.00% )   ( 0.081030s |  0.00% |  0.00% )    	(538x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002580s |  0.00% |  0.00% )   ( 0.002957s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002256s |  0.00% |  0.00% )   ( 0.002616s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002357s |  0.00% |  0.00% )   ( 0.002727s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 350.672062s | 37.98% |  4.15% )   ( 338.730824s | 40.19% |  4.22% )    	(538x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.066343s |  0.00% |  0.01% )   ( 0.077038s |  0.00% |  0.02% )    	(538x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 23.553722s |  2.55% |  6.71% )   ( 22.904575s |  2.71% |  6.76% )    	(538x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 39.574197s |  4.28% | 11.28% )   ( 38.493949s |  4.56% | 11.36% )    	(538x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 33.592237s |  3.63% |  9.57% )   ( 32.448741s |  3.85% |  9.57% )    	(538x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 39.559549s |  4.28% | 11.28% )   ( 38.123139s |  4.52% | 11.25% )    	(538x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 32.504761s |  3.52% |  9.26% )   ( 31.221380s |  3.70% |  9.21% )    	(538x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 21.823943s |  2.36% |  6.22% )   ( 20.897537s |  2.47% |  6.16% )    	(538x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 12.069884s |  1.30% |  3.44% )   ( 11.418234s |  1.35% |  3.37% )    	(538x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 22.714038s |  2.46% |  6.47% )   ( 21.736694s |  2.57% |  6.41% )    	(538x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.703767s |  1.15% |  3.05% )   ( 10.142488s |  1.20% |  2.99% )    	(538x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 29.200326s |  3.16% |  8.32% )   ( 28.288679s |  3.35% |  8.35% )    	(538x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 61.511877s |  6.66% | 17.54% )   ( 60.254943s |  7.14% | 17.78% )    	(538x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 12.078983s |  1.30% |  3.44% )   ( 11.534500s |  1.36% |  3.40% )    	(538x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.718435s |  1.26% |  3.34% )   ( 11.188927s |  1.32% |  3.30% )    	(538x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.073863s |  0.00% |  0.00% )   ( 0.084576s |  0.01% |  0.00% )    	(538x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.071743s |  0.00% |  0.00% )   ( 0.079379s |  0.00% |  0.00% )    	(515x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.078815s |  0.00% |  0.00% )   ( 0.087922s |  0.01% |  0.00% )    	(515x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002496s |  0.00% |  0.00% )   ( 0.002867s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002548s |  0.00% |  0.00% )   ( 0.002903s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.146519s |  0.01% |  0.04% )   ( 0.148141s |  0.01% |  0.04% )    	(23x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.miwbkF"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.002847s |  0.00% |  0.00% )   ( 0.003222s |  0.00% |  0.00% )    	(23x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1399.3.0:     	( 15.057505s |  1.63% |  3.25% )   ( 14.176836s |  1.68% |  3.37% )    	(1x)	│  │  │ << (FUNCTION): .local p24 p24_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001088s |  0.00% |  0.00% )   ( 0.001107s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p24 p24_PID (&)
│  │  │  │  73.4.0:    	( 15.056273s |  1.63% | 99.99% )   ( 14.175565s |  1.68% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.miwbkF"
│  │  │  │  │  8.5.0:  	( 0.000159s |  0.00% |  0.00% )   ( 0.000179s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.miwbkF"/.run/p24
│  │  │  │  │  12.5.0: 	( 0.032166s |  0.00% |  0.21% )   ( 0.027144s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.miwbkF"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p24; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.029434s |  0.00% |  0.19% )   ( 0.029340s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1916079 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.026621s |  0.00% |  0.17% )   ( 0.026518s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1916079 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.028647s |  0.00% |  0.19% )   ( 0.026853s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1916079 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.027129s |  0.00% |  0.18% )   ( 0.027050s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.003980s |  0.00% |  0.00% )   ( 0.004476s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003454s |  0.00% |  0.00% )   ( 0.003942s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000183s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.miwbkF"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000151s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.004311s |  0.00% |  0.00% )   ( 0.004816s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.miwbkF"/.wait/p24
│  │  │  │  │  23.5.0: 	( 0.267590s |  0.02% |  0.07% )   ( 0.006002s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.003978s |  0.00% |  0.00% )   ( 0.004474s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.006590s |  0.00% |  0.00% )   ( 0.004111s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.miwbkF"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003393s |  0.00% |  0.00% )   ( 0.003877s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003740s |  0.00% |  0.00% )   ( 0.004267s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.029319s |  0.00% |  0.00% )   ( 0.029751s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003495s |  0.00% |  0.00% )   ( 0.004012s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003186s |  0.00% |  0.00% )   ( 0.003661s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.004626s |  0.00% |  0.00% )   ( 0.004305s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.004351s |  0.00% |  0.00% )   ( 0.004866s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.miwbkF"/.wait/p24
│  │  │  │  │  48.5.0: 	( 0.003469s |  0.00% |  0.00% )   ( 0.004005s |  0.00% |  0.00% )    	(25x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.003303s |  0.00% |  0.00% )   ( 0.003806s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000119s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 14.543315s |  1.57% |  4.02% )   ( 13.926350s |  1.65% |  4.09% )    	(24x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.003123s |  0.00% |  0.02% )   ( 0.003622s |  0.00% |  0.02% )    	(24x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 0.998456s |  0.10% |  6.86% )   ( 0.936722s |  0.11% |  6.72% )    	(24x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.630020s |  0.17% | 11.20% )   ( 1.551348s |  0.18% | 11.13% )    	(24x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.371877s |  0.14% |  9.43% )   ( 1.340443s |  0.15% |  9.62% )    	(24x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.583991s |  0.17% | 10.89% )   ( 1.555384s |  0.18% | 11.16% )    	(24x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.349659s |  0.14% |  9.28% )   ( 1.286160s |  0.15% |  9.23% )    	(24x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.899638s |  0.09% |  6.18% )   ( 0.861296s |  0.10% |  6.18% )    	(24x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.556952s |  0.06% |  3.82% )   ( 0.499025s |  0.05% |  3.58% )    	(24x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.913262s |  0.09% |  6.27% )   ( 0.874702s |  0.10% |  6.28% )    	(24x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.508596s |  0.05% |  3.49% )   ( 0.442055s |  0.05% |  3.17% )    	(24x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.218045s |  0.13% |  8.37% )   ( 1.161497s |  0.13% |  8.34% )    	(24x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.480167s |  0.26% | 17.05% )   ( 2.418600s |  0.28% | 17.36% )    	(24x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.529304s |  0.05% |  3.63% )   ( 0.505155s |  0.05% |  3.62% )    	(24x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.500225s |  0.05% |  3.43% )   ( 0.490341s |  0.05% |  3.52% )    	(24x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003472s |  0.00% |  0.00% )   ( 0.003974s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.003082s |  0.00% |  0.00% )   ( 0.003540s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.003522s |  0.00% |  0.00% )   ( 0.004024s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000174s |  0.00% |  0.00% )   ( 0.000200s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000175s |  0.00% |  0.00% )   ( 0.000196s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000184s |  0.00% |  0.00% )   ( 0.000210s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000205s |  0.00% |  0.00% )   ( 0.000232s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.miwbkF"/.quit
│  │  │  │  │  62.5.0: 	( 0.000263s |  0.00% |  0.00% )   ( 0.000291s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.miwbkF"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000187s |  0.00% |  0.00% )   ( 0.000215s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.007779s |  0.00% |  0.05% )   ( 0.007762s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.miwbkF"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.miwbkF"/.run/p24 ]] && \rm -f "/dev/shm/.forkrun.miwbkF"/.run/p24\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p24_PID})
│  │  │  1401.3.0:     	( 0.000156s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000144s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001218s |  0.00% |  0.00% )   ( 0.001234s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.746952s |  2.03% |  4.05% )   ( 0.001025s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000145s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.005401s |  0.00% |  0.00% )   ( 0.002049s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.miwbkF" 2>/dev/null'

10.0.0:                	( 460.919018s | 49.92% )            ( 422.242770s | 50.10% )             	(1x)	<< (FUNCTION): .forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
├─ 1.1.0:              	( 0.000618s |  0.00% |  0.00% )   ( 0.000300s |  0.00% |  0.00% )    	(1x)	├─forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  425.1.0:            	( 460.918400s | 49.92% | 99.99% )   ( 422.242470s | 50.10% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  ├─ 425.2.0:         	( 0.023139s |  0.00% |  0.00% )   ( 0.023086s |  0.00% |  0.00% )    	(1x)	│  ├─trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000072s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000086s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000125s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000110s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000080s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000115s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000116s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  127.2.0:         	( 0.000086s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  254.2.0:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  254.2.1:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  318.2.0:         	( 0.000056s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  319.2.0:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  323.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000056s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001224s |  0.00% |  0.00% )   ( 0.000954s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.004486s |  0.00% |  0.00% )   ( 0.004486s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.004486s |  0.00% |100.00% )   ( 0.004486s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.001243s |  0.00% |  0.00% )   ( 0.001316s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000057s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.014601s |  0.00% |  0.00% )   ( 0.000582s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:        	( 460.865286s | 49.92% | 99.98% )   ( 422.205484s | 50.09% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  ├─ 348.3.0:      	( 0.000281s |  0.00% |  0.00% )   ( 0.000326s |  0.00% |  0.00% )    	(1x)	│  │  ├─[[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.001577s |  0.00% |  0.00% )   ( 0.001830s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.001577s |  0.00% |100.00% )   ( 0.001830s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000233s |  0.00% |  0.00% )   ( 0.000243s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.003732s |  0.00% |  0.00% )   ( 0.003772s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000143s |  0.00% |  0.00% )   ( 0.000159s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000143s |  0.00% |100.00% )   ( 0.000159s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000791s |  0.00% |  0.00% )   ( 0.000915s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  ├─ 1.4.0:     	( 0.000056s |  0.00% |  7.07% )   ( 0.000066s |  0.00% |  7.21% )    	(1x)	│  │  │  ├─_forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000066s |  0.00% |  8.34% )   ( 0.000074s |  0.00% |  8.08% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000060s |  0.00% |  7.58% )   ( 0.000072s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000060s |  0.00% |  7.58% )   ( 0.000072s |  0.00% |  7.86% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000073s |  0.00% |  9.22% )   ( 0.000074s |  0.00% |  8.08% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000064s |  0.00% |  8.09% )   ( 0.000075s |  0.00% |  8.19% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000059s |  0.00% |  7.45% )   ( 0.000072s |  0.00% |  7.86% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000110s |  0.00% | 13.90% )   ( 0.000122s |  0.00% | 13.33% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000058s |  0.00% |  7.33% )   ( 0.000070s |  0.00% |  7.65% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000058s |  0.00% |  7.33% )   ( 0.000069s |  0.00% |  7.54% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000061s |  0.00% |  7.71% )   ( 0.000072s |  0.00% |  7.86% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000066s |  0.00% |  8.34% )   ( 0.000077s |  0.00% |  8.41% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006191s |  0.00% |  0.00% )   ( 0.006296s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002047s |  0.00% |  0.00% )   ( 0.002149s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 485.4.0:   	( 0.000211s |  0.00% | 10.30% )   ( 0.000228s |  0.00% | 10.60% )    	(1x)	│  │  │  ├─type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.001836s |  0.00% | 89.69% )   ( 0.001921s |  0.00% | 89.39% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000076s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000153s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  524.3.0:      	( 0.000057s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  525.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  525.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  526.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  527.3.0:      	( 0.000101s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  528.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  529.3.0:      	( 0.003023s |  0.00% |  0.00% )   ( 0.004107s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  530.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  537.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000090s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  538.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  539.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  557.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003203s |  0.00% |  0.00% )   ( 0.003319s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000075s |  0.00% |100.00% )   ( 0.000087s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001265s |  0.00% |  0.00% )   ( 0.001343s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000079s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000554s |  0.00% |  0.00% )   ( 0.000571s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079068s |  0.00% |  0.01% )   ( 0.079005s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 644.4.0:   	( 0.000082s |  0.00% |  0.10% )   ( 0.000094s |  0.00% |  0.11% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011162s |  0.00% | 14.11% )   ( 0.011141s |  0.00% | 14.10% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012150s |  0.00% | 15.36% )   ( 0.012134s |  0.00% | 15.35% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012185s |  0.00% | 15.41% )   ( 0.012167s |  0.00% | 15.40% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012162s |  0.00% | 15.38% )   ( 0.012147s |  0.00% | 15.37% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012160s |  0.00% | 15.37% )   ( 0.012141s |  0.00% | 15.36% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000057s |  0.00% |  0.07% )   ( 0.000069s |  0.00% |  0.08% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.018891s |  0.00% | 23.89% )   ( 0.018859s |  0.00% | 23.87% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000089s |  0.00% |  0.11% )   ( 0.000100s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000065s |  0.00% |  0.08% )   ( 0.000077s |  0.00% |  0.09% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000065s |  0.00% |  0.08% )   ( 0.000076s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000408s |  0.00% |  0.00% )   ( 0.000437s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.186581s |  0.34% |  0.69% )   ( 1.718309s |  0.20% |  0.40% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 731.4.0:   	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012233s |  0.00% |  0.38% )   ( 0.012214s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012145s |  0.00% |  0.38% )   ( 0.012129s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012217s |  0.00% |  0.38% )   ( 0.012193s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012199s |  0.00% |  0.38% )   ( 0.012175s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012133s |  0.00% |  0.38% )   ( 0.012107s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.085790s |  0.00% |  0.00% )   ( 0.098796s |  0.01% |  0.00% )    	(672x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 1.758933s |  0.19% |  0.08% )   ( 0.112286s |  0.01% |  0.00% )    	(671x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000560s |  0.00% |  0.00% )   ( 0.000647s |  0.00% |  0.01% )    	(3x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.087469s |  0.00% |  0.00% )   ( 0.097473s |  0.01% |  0.00% )    	(668x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.088621s |  0.00% |  0.00% )   ( 0.096755s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000093s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.084286s |  0.00% |  0.00% )   ( 0.097278s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.087602s |  0.00% |  0.00% )   ( 0.100741s |  0.01% |  0.00% )    	(668x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.087432s |  0.00% |  0.00% )   ( 0.100462s |  0.01% |  0.00% )    	(668x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.083435s |  0.00% |  0.00% )   ( 0.096469s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.083829s |  0.00% |  0.00% )   ( 0.096793s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.083924s |  0.00% |  0.00% )   ( 0.096839s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000110s |  0.00% |  0.00% )   ( 0.000126s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.006592s |  0.00% |  0.20% )   ( 0.007085s |  0.00% |  0.41% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003007s |  0.00% |  0.09% )   ( 0.003381s |  0.00% |  0.19% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.003007s |  0.00% |100.00% )   ( 0.003381s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000111s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000126s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000144s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000157s |  0.00% |  0.00% )   ( 0.000182s |  0.00% |  0.01% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000113s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.083453s |  0.00% |  0.00% )   ( 0.096153s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.082328s |  0.00% |  0.00% )   ( 0.095322s |  0.01% |  0.00% )    	(668x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.080700s |  0.00% |  0.00% )   ( 0.093352s |  0.01% |  0.00% )    	(647x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.087202s |  0.00% |  0.00% )   ( 0.100316s |  0.01% |  0.00% )    	(668x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.084568s |  0.00% |  0.00% )   ( 0.097581s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.083776s |  0.00% |  0.00% )   ( 0.096613s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002693s |  0.00% |  0.00% )   ( 0.003113s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002686s |  0.00% |  0.00% )   ( 0.003079s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.057851s |  0.00% |  0.08% )   ( 0.048315s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002779s |  0.00% |  0.00% )   ( 0.003207s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002600s |  0.00% |  0.00% )   ( 0.002986s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002820s |  0.00% |  0.00% )   ( 0.003245s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000137s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  829.4.0:   	( 0.000122s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000140s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.008070s |  0.00% |  0.25% )   ( 0.006135s |  0.00% |  0.35% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.C6QzU6"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000094s |  0.00% |  0.00% )   ( 0.000103s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.050683s |  0.00% |  0.01% )   ( 0.050823s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.004855s |  0.00% |  0.00% )   ( 0.005631s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  ├─ 1362.4.0:  	( 0.000147s |  0.00% |  3.02% )   ( 0.000165s |  0.00% |  2.93% )    	(1x)	│  │  │  ├─echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000095s |  0.00% |  1.95% )   ( 0.000111s |  0.00% |  1.97% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000110s |  0.00% |  2.26% )   ( 0.000126s |  0.00% |  2.23% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000300s |  0.00% |  6.17% )   ( 0.000317s |  0.00% |  5.62% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000092s |  0.00% |  1.89% )   ( 0.000107s |  0.00% |  1.90% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000089s |  0.00% |  1.83% )   ( 0.000105s |  0.00% |  1.86% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000093s |  0.00% |  1.91% )   ( 0.000109s |  0.00% |  1.93% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000090s |  0.00% |  1.85% )   ( 0.000106s |  0.00% |  1.88% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000082s |  0.00% |  1.68% )   ( 0.000093s |  0.00% |  1.65% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000075s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000057s |  0.00% |  1.17% )   ( 0.000068s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000075s |  0.00% |  1.33% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000071s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000059s |  0.00% |  1.21% )   ( 0.000070s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1454.4.2:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1456.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000095s |  0.00% |  1.95% )   ( 0.000102s |  0.00% |  1.81% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1514.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000071s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000072s |  0.00% |  1.48% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1515.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000084s |  0.00% |  1.73% )   ( 0.000096s |  0.00% |  1.70% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000070s |  0.00% |  1.44% )   ( 0.000081s |  0.00% |  1.43% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000070s |  0.00% |  1.44% )   ( 0.000082s |  0.00% |  1.45% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000073s |  0.00% |  1.50% )   ( 0.000084s |  0.00% |  1.49% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000092s |  0.00% |  1.63% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000064s |  0.00% |  1.31% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000071s |  0.00% |  1.46% )   ( 0.000083s |  0.00% |  1.47% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000089s |  0.00% |  1.83% )   ( 0.000100s |  0.00% |  1.77% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000071s |  0.00% |  1.46% )   ( 0.000083s |  0.00% |  1.47% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000083s |  0.00% |  1.70% )   ( 0.000095s |  0.00% |  1.68% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000075s |  0.00% |  1.54% )   ( 0.000087s |  0.00% |  1.54% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000071s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000066s |  0.00% |  1.35% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1572.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000070s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000084s |  0.00% |  1.73% )   ( 0.000095s |  0.00% |  1.68% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000060s |  0.00% |  1.23% )   ( 0.000071s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000089s |  0.00% |  1.83% )   ( 0.000098s |  0.00% |  1.74% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000059s |  0.00% |  1.21% )   ( 0.000070s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000058s |  0.00% |  1.19% )   ( 0.000069s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000062s |  0.00% |  1.27% )   ( 0.000071s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000057s |  0.00% |  1.17% )   ( 0.000068s |  0.00% |  1.20% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000079s |  0.00% |  1.62% )   ( 0.000091s |  0.00% |  1.61% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000070s |  0.00% |  1.44% )   ( 0.000079s |  0.00% |  1.40% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000063s |  0.00% |  1.29% )   ( 0.000074s |  0.00% |  1.31% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000061s |  0.00% |  1.25% )   ( 0.000072s |  0.00% |  1.27% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000079s |  0.00% |  1.40% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000067s |  0.00% |  1.38% )   ( 0.000078s |  0.00% |  1.38% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000077s |  0.00% |  1.36% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000065s |  0.00% |  1.33% )   ( 0.000076s |  0.00% |  1.34% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000096s |  0.00% |  1.97% )   ( 0.000108s |  0.00% |  1.91% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000118s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000114s |  0.00% |  0.00% )   ( 0.000132s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000107s |  0.00% |  0.00% )   ( 0.000125s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.014585s |  0.00% |  0.00% )   ( 0.014554s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012348s |  0.00% |  0.00% )   ( 0.099671s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012195s |  0.00% |  0.00% )   ( 0.012173s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.012062s |  0.00% |  0.00% )   ( 0.012023s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000062s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002692s |  0.00% |  0.00% )   ( 0.003116s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002685s |  0.00% |  0.00% )   ( 0.003090s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 77.565084s |  8.40% |  3.36% )   ( 73.928312s |  8.77% |  3.50% )    	(5x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  ├─ 1.4.0:     	( 0.002870s |  0.00% |  0.00% )   ( 0.002965s |  0.00% |  0.00% )    	(5x)	│  │  │  ├─local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 77.561782s |  8.40% | 99.99% )   ( 73.924855s |  8.77% | 99.99% )    	(5x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.001076s |  0.00% |  0.00% )   ( 0.001215s |  0.00% |  0.00% )    	(5x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.C6QzU6"
│  │  │  │  │  8.5.0:  	( 0.000871s |  0.00% |  0.00% )   ( 0.000993s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.C6QzU6"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.064905s |  0.00% |  0.08% )   ( 0.064816s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.C6QzU6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.061558s |  0.00% |  0.07% )   ( 0.061467s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1924863 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.061880s |  0.00% |  0.07% )   ( 0.061796s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1924863 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.062244s |  0.00% |  0.08% )   ( 0.062156s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1924863 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.062357s |  0.00% |  0.08% )   ( 0.062258s |  0.00% |  0.08% )    	(5x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.019052s |  0.00% |  0.00% )   ( 0.021489s |  0.00% |  0.00% )    	(124x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.016279s |  0.00% |  0.00% )   ( 0.018642s |  0.00% |  0.00% )    	(124x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000887s |  0.00% |  0.00% )   ( 0.001009s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.C6QzU6"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000687s |  0.00% |  0.00% )   ( 0.000804s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000685s |  0.00% |  0.00% )   ( 0.000804s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.020578s |  0.00% |  0.00% )   ( 0.023109s |  0.00% |  0.00% )    	(124x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.C6QzU6"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.667025s |  0.07% |  0.03% )   ( 0.025363s |  0.00% |  0.00% )    	(124x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.017755s |  0.00% |  0.00% )   ( 0.020268s |  0.00% |  0.00% )    	(124x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.016180s |  0.00% |  0.00% )   ( 0.018576s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.015270s |  0.00% |  0.00% )   ( 0.017563s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.016251s |  0.00% |  0.00% )   ( 0.018557s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.150226s |  0.01% |  0.00% )   ( 0.140653s |  0.01% |  0.00% )    	(119x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.030534s |  0.00% |  0.00% )   ( 0.019816s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.019703s |  0.00% |  0.00% )   ( 0.022164s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.C6QzU6"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.015512s |  0.00% |  0.00% )   ( 0.017879s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.015323s |  0.00% |  0.00% )   ( 0.017608s |  0.00% |  0.00% )    	(119x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000890s |  0.00% |  0.00% )   ( 0.001033s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000856s |  0.00% |  0.00% )   ( 0.000998s |  0.00% |  0.00% )    	(10x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 76.139686s |  8.24% |  4.12% )   ( 73.133308s |  8.67% |  4.16% )    	(119x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.014617s |  0.00% |  0.01% )   ( 0.016887s |  0.00% |  0.02% )    	(119x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 5.104427s |  0.55% |  6.70% )   ( 4.906084s |  0.58% |  6.70% )    	(119x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 8.708403s |  0.94% | 11.43% )   ( 8.297815s |  0.98% | 11.34% )    	(119x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 7.238586s |  0.78% |  9.50% )   ( 6.981309s |  0.82% |  9.54% )    	(119x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 8.581200s |  0.92% | 11.27% )   ( 8.256959s |  0.97% | 11.29% )    	(119x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 6.985445s |  0.75% |  9.17% )   ( 6.779891s |  0.80% |  9.27% )    	(119x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 4.750907s |  0.51% |  6.23% )   ( 4.518799s |  0.53% |  6.17% )    	(119x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.648199s |  0.28% |  3.47% )   ( 2.451858s |  0.29% |  3.35% )    	(119x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.978849s |  0.53% |  6.53% )   ( 4.678160s |  0.55% |  6.39% )    	(119x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.249729s |  0.24% |  2.95% )   ( 2.153364s |  0.25% |  2.94% )    	(119x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 6.310956s |  0.68% |  8.28% )   ( 6.066466s |  0.71% |  8.29% )    	(119x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 13.445657s |  1.45% | 17.65% )   ( 13.161879s |  1.56% | 17.99% )    	(119x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.595397s |  0.28% |  3.40% )   ( 2.465683s |  0.29% |  3.37% )    	(119x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.527314s |  0.27% |  3.31% )   ( 2.398154s |  0.28% |  3.27% )    	(119x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000499s |  0.00% |  0.00% )   ( 0.000576s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.016267s |  0.00% |  0.00% )   ( 0.018268s |  0.00% |  0.00% )    	(114x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.014462s |  0.00% |  0.00% )   ( 0.016622s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.016179s |  0.00% |  0.00% )   ( 0.018360s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000554s |  0.00% |  0.00% )   ( 0.000632s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000631s |  0.00% |  0.00% )   ( 0.000729s |  0.00% |  0.00% )    	(5x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.034920s |  0.00% |  0.04% )   ( 0.035324s |  0.00% |  0.04% )    	(5x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.C6QzU6"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000432s |  0.00% |  0.00% )   ( 0.000492s |  0.00% |  0.00% )    	(5x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002526s |  0.00% |  0.00% )   ( 0.002939s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 346.011043s | 37.48% |  3.41% )   ( 331.647290s | 39.35% |  3.57% )    	(22x)	│  │  │ << (FUNCTION): .local p5 p5_PID >>
│  │  │  ├─ 1.4.0:     	( 0.018735s |  0.00% |  0.00% )   ( 0.019248s |  0.00% |  0.00% )    	(22x)	│  │  │  ├─local p5 p5_PID (&)
│  │  │  │  73.4.0:    	( 345.989485s | 37.47% | 99.99% )   ( 331.624856s | 39.35% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.003969s |  0.00% |  0.00% )   ( 0.004467s |  0.00% |  0.00% )    	(22x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.C6QzU6"
│  │  │  │  │  8.5.0:  	( 0.003493s |  0.00% |  0.00% )   ( 0.003966s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.C6QzU6"/.run/p5
│  │  │  │  │  12.5.0: 	( 0.416177s |  0.04% |  0.12% )   ( 0.414745s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.C6QzU6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.426060s |  0.04% |  0.12% )   ( 0.422227s |  0.05% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1924863 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.404373s |  0.04% |  0.11% )   ( 0.403151s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1924863 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.443333s |  0.04% |  0.12% )   ( 0.442035s |  0.05% |  0.13% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1924863 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.437263s |  0.04% |  0.12% )   ( 0.435937s |  0.05% |  0.13% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.088615s |  0.00% |  0.00% )   ( 0.097775s |  0.01% |  0.00% )    	(547x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.080960s |  0.00% |  0.00% )   ( 0.086476s |  0.01% |  0.00% )    	(547x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002681s |  0.00% |  0.00% )   ( 0.003048s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.C6QzU6"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002134s |  0.00% |  0.00% )   ( 0.002471s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002265s |  0.00% |  0.00% )   ( 0.002626s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.094898s |  0.01% |  0.00% )   ( 0.106304s |  0.01% |  0.00% )    	(547x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.C6QzU6"/.wait/p5
│  │  │  │  │  23.5.0: 	( 2.590404s |  0.28% |  0.03% )   ( 0.113686s |  0.01% |  0.00% )    	(547x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.084121s |  0.00% |  0.00% )   ( 0.090364s |  0.01% |  0.00% )    	(547x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.075171s |  0.00% |  0.00% )   ( 0.085750s |  0.01% |  0.00% )    	(525x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.070397s |  0.00% |  0.00% )   ( 0.080881s |  0.00% |  0.00% )    	(525x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.077365s |  0.00% |  0.00% )   ( 0.085212s |  0.01% |  0.00% )    	(525x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.657855s |  0.07% |  0.00% )   ( 0.641616s |  0.07% |  0.00% )    	(525x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.129036s |  0.01% |  0.00% )   ( 0.089254s |  0.01% |  0.00% )    	(525x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.090204s |  0.00% |  0.00% )   ( 0.100978s |  0.01% |  0.00% )    	(525x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.C6QzU6"/.wait/p5
│  │  │  │  │  36.5.0: 	( 0.070960s |  0.00% |  0.00% )   ( 0.081691s |  0.00% |  0.00% )    	(525x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.070863s |  0.00% |  0.00% )   ( 0.081291s |  0.00% |  0.00% )    	(525x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002609s |  0.00% |  0.00% )   ( 0.003012s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002344s |  0.00% |  0.00% )   ( 0.002723s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002504s |  0.00% |  0.00% )   ( 0.002854s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 339.294798s | 36.75% |  4.11% )   ( 327.349181s | 38.84% |  4.13% )    	(525x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.066093s |  0.00% |  0.01% )   ( 0.076791s |  0.00% |  0.02% )    	(525x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 23.171512s |  2.51% |  6.82% )   ( 22.271207s |  2.64% |  6.80% )    	(525x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 38.345377s |  4.15% | 11.30% )   ( 37.097764s |  4.40% | 11.33% )    	(525x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 32.203798s |  3.48% |  9.49% )   ( 31.152638s |  3.69% |  9.51% )    	(525x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 37.876676s |  4.10% | 11.16% )   ( 36.654981s |  4.34% | 11.19% )    	(525x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 31.116068s |  3.37% |  9.17% )   ( 30.182643s |  3.58% |  9.22% )    	(525x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 21.067065s |  2.28% |  6.20% )   ( 20.309416s |  2.40% |  6.20% )    	(525x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 11.706497s |  1.26% |  3.45% )   ( 11.157871s |  1.32% |  3.40% )    	(525x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 21.984899s |  2.38% |  6.47% )   ( 21.046874s |  2.49% |  6.42% )    	(525x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.432834s |  1.13% |  3.07% )   ( 9.914844s |  1.17% |  3.02% )    	(525x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 28.416381s |  3.07% |  8.37% )   ( 27.303525s |  3.23% |  8.34% )    	(525x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 59.638762s |  6.46% | 17.57% )   ( 58.071873s |  6.89% | 17.74% )    	(525x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 11.769719s |  1.27% |  3.46% )   ( 11.209253s |  1.33% |  3.42% )    	(525x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.499117s |  1.24% |  3.38% )   ( 10.899501s |  1.29% |  3.32% )    	(525x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.073995s |  0.00% |  0.00% )   ( 0.084599s |  0.01% |  0.00% )    	(525x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.067922s |  0.00% |  0.00% )   ( 0.078131s |  0.00% |  0.00% )    	(503x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.082615s |  0.00% |  0.00% )   ( 0.085995s |  0.01% |  0.00% )    	(503x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002287s |  0.00% |  0.00% )   ( 0.002627s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002368s |  0.00% |  0.00% )   ( 0.002713s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.135446s |  0.01% |  0.03% )   ( 0.137070s |  0.01% |  0.04% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.C6QzU6"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p5\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.002823s |  0.00% |  0.00% )   ( 0.003186s |  0.00% |  0.00% )    	(22x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1399.3.0:     	( 15.132839s |  1.63% |  3.28% )   ( 14.591537s |  1.73% |  3.45% )    	(1x)	│  │  │ << (FUNCTION): .local p22 p22_PID >>
│  │  │  ├─ 1.4.0:     	( 0.001058s |  0.00% |  0.00% )   ( 0.001079s |  0.00% |  0.00% )    	(1x)	│  │  │  ├─local p22 p22_PID (&)
│  │  │  │  73.4.0:    	( 15.131627s |  1.63% | 99.99% )   ( 14.590290s |  1.73% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  ├─ 73.5.0: 	( 0.000183s |  0.00% |  0.00% )   ( 0.000208s |  0.00% |  0.00% )    	(1x)	│  │  │  │  ├─export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.C6QzU6"
│  │  │  │  │  8.5.0:  	( 0.000095s |  0.00% |  0.00% )   ( 0.000108s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.C6QzU6"/.run/p22
│  │  │  │  │  12.5.0: 	( 0.021929s |  0.00% |  0.14% )   ( 0.021860s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.C6QzU6"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p22; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.025755s |  0.00% |  0.17% )   ( 0.025672s |  0.00% |  0.17% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1924863 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.026571s |  0.00% |  0.17% )   ( 0.026480s |  0.00% |  0.18% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1924863 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.027910s |  0.00% |  0.18% )   ( 0.027813s |  0.00% |  0.19% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1924863 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.029385s |  0.00% |  0.19% )   ( 0.029289s |  0.00% |  0.20% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.003807s |  0.00% |  0.00% )   ( 0.004314s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003417s |  0.00% |  0.00% )   ( 0.003923s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000149s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.C6QzU6"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.004215s |  0.00% |  0.00% )   ( 0.004730s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.C6QzU6"/.wait/p22
│  │  │  │  │  23.5.0: 	( 0.140262s |  0.01% |  0.03% )   ( 0.005565s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.003752s |  0.00% |  0.00% )   ( 0.004265s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003471s |  0.00% |  0.00% )   ( 0.003990s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.C6QzU6"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003362s |  0.00% |  0.00% )   ( 0.003847s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003462s |  0.00% |  0.00% )   ( 0.003934s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.027865s |  0.00% |  0.00% )   ( 0.028280s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.003565s |  0.00% |  0.00% )   ( 0.004066s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.004092s |  0.00% |  0.00% )   ( 0.004592s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.C6QzU6"/.wait/p22
│  │  │  │  │  36.5.0: 	( 0.003145s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.003076s |  0.00% |  0.00% )   ( 0.003513s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000129s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000139s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 14.772230s |  1.60% |  4.24% )   ( 14.358543s |  1.70% |  4.27% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  ├─ 1.6.0:   	( 0.002870s |  0.00% |  0.01% )   ( 0.003325s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  ├─ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 0.980723s |  0.10% |  6.63% )   ( 0.971195s |  0.11% |  6.76% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.667408s |  0.18% | 11.28% )   ( 1.632432s |  0.19% | 11.36% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.430231s |  0.15% |  9.68% )   ( 1.373547s |  0.16% |  9.56% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.652731s |  0.17% | 11.18% )   ( 1.622283s |  0.19% | 11.29% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.403960s |  0.15% |  9.50% )   ( 1.329483s |  0.15% |  9.25% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.880139s |  0.09% |  5.95% )   ( 0.866863s |  0.10% |  6.03% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.500958s |  0.05% |  3.39% )   ( 0.473465s |  0.05% |  3.29% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.941777s |  0.10% |  6.37% )   ( 0.904368s |  0.10% |  6.29% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.467185s |  0.05% |  3.16% )   ( 0.429648s |  0.05% |  2.99% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.212432s |  0.13% |  8.20% )   ( 1.191288s |  0.14% |  8.29% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.618035s |  0.28% | 17.72% )   ( 2.601582s |  0.30% | 18.11% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.520984s |  0.05% |  3.52% )   ( 0.486107s |  0.05% |  3.38% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.492797s |  0.05% |  3.33% )   ( 0.472957s |  0.05% |  3.29% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003290s |  0.00% |  0.00% )   ( 0.003770s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.002936s |  0.00% |  0.00% )   ( 0.003364s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.003322s |  0.00% |  0.00% )   ( 0.003776s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000143s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000145s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000191s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000160s |  0.00% |  0.00% )   ( 0.000181s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.C6QzU6"/.quit
│  │  │  │  │  50.5.0: 	( 0.000257s |  0.00% |  0.00% )   ( 0.000280s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.C6QzU6"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000166s |  0.00% |  0.00% )   ( 0.000184s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.008721s |  0.00% |  0.05% )   ( 0.008695s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.C6QzU6"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.C6QzU6"/.run/p22 ]] && \rm -f "/dev/shm/.forkrun.C6QzU6"/.run/p22\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000154s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p22_PID})
│  │  │  1401.3.0:     	( 0.000158s |  0.00% |  0.00% )   ( 0.000174s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000145s |  0.00% |  0.00% )   ( 0.000165s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001237s |  0.00% |  0.00% )   ( 0.001254s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000122s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000115s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.743946s |  2.03% |  4.06% )   ( 0.001661s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000270s |  0.00% |  0.00% )   ( 0.000312s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000281s |  0.00% |  0.00% )   ( 0.000342s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000179s |  0.00% |  0.00% )   ( 0.000207s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.006327s |  0.00% |  0.00% )   ( 0.004093s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.C6QzU6" 2>/dev/null'

TOTAL RUN TIME: 923.138151s
TOTAL CPU TIME: 842.747468s
