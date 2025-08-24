LINE.DEPTH.CMD NUMBER	COMBINED WALL-CLOCK TIME        	COMBINED CPU TIME               	COMMAND                             
<line>.<depth>.<cmd>:	( time | total % | cur depth % )   	( time | total % | cur depth % )   	(count) <command>
_____________________	________________________________	________________________________	____________________________________
9.0.0:                 	( 462.649104s | 50.05% )            ( 420.263490s | 49.93% )             	(1x)	<< (FUNCTION): main.forkrun ff < /mnt/ramdisk/flist > /dev/null >>
│  1.1.0:              	( 0.000826s |  0.00% |  0.00% )   ( 0.000544s |  0.00% |  0.00% )    	(1x)	│ forkrun ff < /mnt/ramdisk/flist > /dev/null
│  425.1.0:            	( 462.648278s | 50.05% | 99.99% )   ( 420.262946s | 49.93% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  │  425.2.0:         	( 0.023253s |  0.00% |  0.00% )   ( 0.023203s |  0.00% |  0.00% )    	(1x)	│  │ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000077s |  0.00% |  0.00% )   ( 0.000091s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000122s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000096s |  0.00% |  0.00% )   ( 0.000109s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000083s |  0.00% |  0.00% )   ( 0.000094s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000071s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000062s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ [[ "$1" == [-+]* ]]
│  │  323.2.0:         	( 0.000073s |  0.00% |  0.00% )   ( 0.000086s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000065s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000064s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001295s |  0.00% |  0.00% )   ( 0.000981s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.004498s |  0.00% |  0.00% )   ( 0.004498s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.004498s |  0.00% |100.00% )   ( 0.004498s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.003173s |  0.00% |  0.00% )   ( 0.003240s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000090s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.013846s |  0.00% |  0.00% )   ( 0.000348s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  1502.2.0:        	( 462.593979s | 50.04% | 99.98% )   ( 420.225540s | 49.93% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  │  348.3.0:      	( 0.000092s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.001535s |  0.00% |  0.00% )   ( 0.001798s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.001535s |  0.00% |100.00% )   ( 0.001798s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000108s |  0.00% |  0.00% )   ( 0.000122s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000104s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000087s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000222s |  0.00% |  0.00% )   ( 0.000240s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.007728s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000080s |  0.00% |  0.00% )   ( 0.000088s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.003037s |  0.00% |  0.00% )   ( 0.003059s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000966s |  0.00% |  0.00% )   ( 0.001061s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  │  1.4.0:     	( 0.000105s |  0.00% | 10.86% )   ( 0.000123s |  0.00% | 11.59% )    	(1x)	│  │  │  │ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000160s |  0.00% | 16.56% )   ( 0.000122s |  0.00% | 11.49% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000066s |  0.00% |  6.83% )   ( 0.000079s |  0.00% |  7.44% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000066s |  0.00% |  6.83% )   ( 0.000078s |  0.00% |  7.35% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000064s |  0.00% |  6.62% )   ( 0.000076s |  0.00% |  7.16% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000074s |  0.00% |  7.66% )   ( 0.000083s |  0.00% |  7.82% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000061s |  0.00% |  6.31% )   ( 0.000073s |  0.00% |  6.88% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000112s |  0.00% | 11.59% )   ( 0.000124s |  0.00% | 11.68% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000061s |  0.00% |  6.31% )   ( 0.000072s |  0.00% |  6.78% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000062s |  0.00% |  6.41% )   ( 0.000072s |  0.00% |  6.78% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000064s |  0.00% |  6.62% )   ( 0.000075s |  0.00% |  7.06% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000071s |  0.00% |  7.34% )   ( 0.000084s |  0.00% |  7.91% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.001245s |  0.00% |  0.00% )   ( 0.001106s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002959s |  0.00% |  0.00% )   ( 0.003037s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  485.4.0:   	( 0.000523s |  0.00% | 17.67% )   ( 0.000544s |  0.00% | 17.91% )    	(1x)	│  │  │  │ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.002436s |  0.00% | 82.32% )   ( 0.002493s |  0.00% | 82.08% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000152s |  0.00% |  0.00% )   ( 0.000164s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  544.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${delimiterVal} ]]
│  │  │  545.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterVal='$'"'"'\n'"'"
│  │  │  546.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  546.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  557.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003492s |  0.00% |  0.00% )   ( 0.003596s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000105s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000105s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001691s |  0.00% |  0.00% )   ( 0.001765s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000098s |  0.00% |  0.00% )   ( 0.000106s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000552s |  0.00% |  0.00% )   ( 0.000567s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079042s |  0.00% |  0.01% )   ( 0.078879s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  644.4.0:   	( 0.000079s |  0.00% |  0.09% )   ( 0.000092s |  0.00% |  0.11% )    	(1x)	│  │  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011214s |  0.00% | 14.18% )   ( 0.011175s |  0.00% | 14.16% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012118s |  0.00% | 15.33% )   ( 0.012094s |  0.00% | 15.33% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012152s |  0.00% | 15.37% )   ( 0.012129s |  0.00% | 15.37% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012216s |  0.00% | 15.45% )   ( 0.012181s |  0.00% | 15.44% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012137s |  0.00% | 15.35% )   ( 0.012114s |  0.00% | 15.35% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000065s |  0.00% |  0.08% )   ( 0.000077s |  0.00% |  0.09% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.018837s |  0.00% | 23.83% )   ( 0.018758s |  0.00% | 23.78% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000090s |  0.00% |  0.11% )   ( 0.000102s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000068s |  0.00% |  0.08% )   ( 0.000079s |  0.00% |  0.10% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000066s |  0.00% |  0.08% )   ( 0.000078s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000085s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000431s |  0.00% |  0.00% )   ( 0.000458s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.551176s |  0.38% |  0.76% )   ( 1.706564s |  0.20% |  0.40% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  731.4.0:   	( 0.000316s |  0.00% |  0.00% )   ( 0.000351s |  0.00% |  0.02% )    	(1x)	│  │  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.014368s |  0.00% |  0.40% )   ( 0.014340s |  0.00% |  0.84% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012174s |  0.00% |  0.34% )   ( 0.012154s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012234s |  0.00% |  0.34% )   ( 0.012195s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012154s |  0.00% |  0.34% )   ( 0.012134s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012163s |  0.00% |  0.34% )   ( 0.012143s |  0.00% |  0.71% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.085264s |  0.00% |  0.00% )   ( 0.098250s |  0.01% |  0.00% )    	(673x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 2.140293s |  0.23% |  0.08% )   ( 0.112949s |  0.01% |  0.00% )    	(672x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000592s |  0.00% |  0.00% )   ( 0.000678s |  0.00% |  0.00% )    	(4x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.083202s |  0.00% |  0.00% )   ( 0.096125s |  0.01% |  0.00% )    	(668x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.082729s |  0.00% |  0.00% )   ( 0.095754s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000175s |  0.00% |  0.00% )   ( 0.000204s |  0.00% |  0.01% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.083617s |  0.00% |  0.00% )   ( 0.096515s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.086940s |  0.00% |  0.00% )   ( 0.099753s |  0.01% |  0.00% )    	(668x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.086532s |  0.00% |  0.00% )   ( 0.099368s |  0.01% |  0.00% )    	(668x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.082654s |  0.00% |  0.00% )   ( 0.095462s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.083197s |  0.00% |  0.00% )   ( 0.095840s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.082847s |  0.00% |  0.00% )   ( 0.095805s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.005929s |  0.00% |  0.16% )   ( 0.006561s |  0.00% |  0.38% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003089s |  0.00% |  0.08% )   ( 0.003585s |  0.00% |  0.21% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.003089s |  0.00% |100.00% )   ( 0.003585s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000146s |  0.00% |  0.00% )   ( 0.000170s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000107s |  0.00% |  0.00% )   ( 0.000127s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.084570s |  0.00% |  0.00% )   ( 0.096402s |  0.01% |  0.00% )    	(668x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.082087s |  0.00% |  0.00% )   ( 0.095041s |  0.01% |  0.00% )    	(668x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.080310s |  0.00% |  0.00% )   ( 0.092806s |  0.01% |  0.00% )    	(647x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.086132s |  0.00% |  0.00% )   ( 0.099091s |  0.01% |  0.00% )    	(668x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.083574s |  0.00% |  0.00% )   ( 0.096456s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.083075s |  0.00% |  0.00% )   ( 0.095989s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002724s |  0.00% |  0.00% )   ( 0.003143s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002554s |  0.00% |  0.00% )   ( 0.002965s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.059438s |  0.00% |  0.07% )   ( 0.046637s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002766s |  0.00% |  0.00% )   ( 0.003176s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002728s |  0.00% |  0.00% )   ( 0.003079s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002737s |  0.00% |  0.00% )   ( 0.003167s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:   	( 0.000120s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  829.4.0:   	( 0.000147s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.01% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000149s |  0.00% |  0.00% )   ( 0.000176s |  0.00% |  0.01% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000121s |  0.00% |  0.00% )   ( 0.000140s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000139s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.005926s |  0.00% |  0.16% )   ( 0.006009s |  0.00% |  0.35% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.1sSdiA"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000074s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000095s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.060566s |  0.00% |  0.01% )   ( 0.060755s |  0.00% |  0.01% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005687s |  0.00% |  0.00% )   ( 0.006569s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  1362.4.0:  	( 0.000297s |  0.00% |  5.22% )   ( 0.000330s |  0.00% |  5.02% )    	(1x)	│  │  │  │ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000120s |  0.00% |  2.11% )   ( 0.000137s |  0.00% |  2.08% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000076s |  0.00% |  1.33% )   ( 0.000088s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000214s |  0.00% |  3.76% )   ( 0.000226s |  0.00% |  3.44% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000071s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.14% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000064s |  0.00% |  1.12% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1456.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.17% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.17% )    	(1x)	│  │  │  │ echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"
│  │  │  │  1458.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1461.4.0:  	( 0.000069s |  0.00% |  1.21% )   ( 0.000081s |  0.00% |  1.23% )    	(1x)	│  │  │  │ echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""
│  │  │  │  1462.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1465.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {"
│  │  │  │  1503.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1508.4.0:  	( 0.000070s |  0.00% |  1.23% )   ( 0.000081s |  0.00% |  1.23% )    	(1x)	│  │  │  │ echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""
│  │  │  │  1509.4.0:  	( 0.000065s |  0.00% |  1.14% )   ( 0.000077s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '%s' "A[-1]+=\"\${REPLY}\""
│  │  │  │  1510.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1510.4.1:  	( 0.000068s |  0.00% |  1.19% )   ( 0.000077s |  0.00% |  1.17% )    	(1x)	│  │  │  │ printf '\n'
│  │  │  │  1511.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1512.4.0:  	( 0.000108s |  0.00% |  1.89% )   ( 0.000120s |  0.00% |  1.82% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1514.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000060s |  0.00% |  1.05% )   ( 0.000071s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1514.4.3:  	( 0.000073s |  0.00% |  1.28% )   ( 0.000085s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo "}"
│  │  │  │  1515.4.0:  	( 0.000067s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000100s |  0.00% |  1.75% )   ( 0.000112s |  0.00% |  1.70% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000074s |  0.00% |  1.30% )   ( 0.000085s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000073s |  0.00% |  1.28% )   ( 0.000085s |  0.00% |  1.29% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000085s |  0.00% |  1.49% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000077s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000075s |  0.00% |  1.14% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000078s |  0.00% |  1.37% )   ( 0.000086s |  0.00% |  1.30% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000063s |  0.00% |  1.10% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000090s |  0.00% |  1.58% )   ( 0.000101s |  0.00% |  1.53% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000071s |  0.00% |  1.24% )   ( 0.000083s |  0.00% |  1.26% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000074s |  0.00% |  1.12% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000070s |  0.00% |  1.23% )   ( 0.000082s |  0.00% |  1.24% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000062s |  0.00% |  1.09% )   ( 0.000073s |  0.00% |  1.11% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000091s |  0.00% |  1.60% )   ( 0.000103s |  0.00% |  1.56% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000060s |  0.00% |  1.05% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1564.4.2:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1564.4.3:  	( 0.000067s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1572.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000075s |  0.00% |  1.14% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000067s |  0.00% |  1.17% )   ( 0.000079s |  0.00% |  1.20% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000060s |  0.00% |  1.05% )   ( 0.000071s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000070s |  0.00% |  1.23% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000100s |  0.00% |  1.75% )   ( 0.000111s |  0.00% |  1.68% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000059s |  0.00% |  1.03% )   ( 0.000071s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000058s |  0.00% |  1.01% )   ( 0.000069s |  0.00% |  1.05% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000058s |  0.00% |  1.01% )   ( 0.000070s |  0.00% |  1.06% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000095s |  0.00% |  1.67% )   ( 0.000106s |  0.00% |  1.61% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000066s |  0.00% |  1.16% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000060s |  0.00% |  1.05% )   ( 0.000071s |  0.00% |  1.08% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000065s |  0.00% |  1.14% )   ( 0.000076s |  0.00% |  1.15% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000067s |  0.00% |  1.17% )   ( 0.000078s |  0.00% |  1.18% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000064s |  0.00% |  1.12% )   ( 0.000075s |  0.00% |  1.14% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000061s |  0.00% |  1.07% )   ( 0.000072s |  0.00% |  1.09% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000081s |  0.00% |  1.42% )   ( 0.000092s |  0.00% |  1.40% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000285s |  0.00% |  0.00% )   ( 0.000328s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000300s |  0.00% |  0.00% )   ( 0.000345s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012501s |  0.00% |  0.00% )   ( 0.099670s |  0.01% |  0.02% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012285s |  0.00% |  0.00% )   ( 0.012265s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012154s |  0.00% |  0.00% )   ( 0.012091s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.011935s |  0.00% |  0.00% )   ( 0.011879s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000074s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002837s |  0.00% |  0.00% )   ( 0.003264s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002751s |  0.00% |  0.00% )   ( 0.003167s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 64.064445s |  6.93% |  3.46% )   ( 61.395863s |  7.29% |  3.65% )    	(4x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  │  1.4.0:     	( 0.002410s |  0.00% |  0.00% )   ( 0.002471s |  0.00% |  0.00% )    	(4x)	│  │  │  │ local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 64.061684s |  6.93% | 99.99% )   ( 61.393001s |  7.29% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.001008s |  0.00% |  0.00% )   ( 0.001110s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.1sSdiA"
│  │  │  │  │  8.5.0:  	( 0.000802s |  0.00% |  0.00% )   ( 0.000902s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.1sSdiA"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.051521s |  0.00% |  0.08% )   ( 0.051440s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.1sSdiA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.048822s |  0.00% |  0.07% )   ( 0.048759s |  0.00% |  0.07% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1775908 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049561s |  0.00% |  0.07% )   ( 0.049490s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1775908 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049736s |  0.00% |  0.07% )   ( 0.049675s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1775908 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.049724s |  0.00% |  0.07% )   ( 0.049654s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.013418s |  0.00% |  0.00% )   ( 0.015214s |  0.00% |  0.00% )    	(90x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.011758s |  0.00% |  0.00% )   ( 0.013481s |  0.00% |  0.00% )    	(90x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000709s |  0.00% |  0.00% )   ( 0.000813s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.1sSdiA"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000566s |  0.00% |  0.00% )   ( 0.000664s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000560s |  0.00% |  0.00% )   ( 0.000658s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.014813s |  0.00% |  0.00% )   ( 0.016613s |  0.00% |  0.00% )    	(90x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.1sSdiA"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.866820s |  0.09% |  0.06% )   ( 0.019197s |  0.00% |  0.00% )    	(90x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.012575s |  0.00% |  0.00% )   ( 0.014364s |  0.00% |  0.00% )    	(90x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.011780s |  0.00% |  0.00% )   ( 0.013535s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.011208s |  0.00% |  0.00% )   ( 0.012900s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.011784s |  0.00% |  0.00% )   ( 0.013452s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.100577s |  0.01% |  0.00% )   ( 0.098753s |  0.01% |  0.00% )    	(86x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.011195s |  0.00% |  0.00% )   ( 0.012912s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.011129s |  0.00% |  0.00% )   ( 0.012773s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.016876s |  0.00% |  0.00% )   ( 0.013576s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.013673s |  0.00% |  0.00% )   ( 0.015400s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.1sSdiA"/.wait/p0
│  │  │  │  │  48.5.0: 	( 0.011054s |  0.00% |  0.00% )   ( 0.012705s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.010781s |  0.00% |  0.00% )   ( 0.012461s |  0.00% |  0.00% )    	(86x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000814s |  0.00% |  0.00% )   ( 0.000932s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000771s |  0.00% |  0.00% )   ( 0.000873s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 62.619710s |  6.77% |  4.55% )   ( 60.778234s |  7.22% |  4.61% )    	(86x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.010485s |  0.00% |  0.01% )   ( 0.012212s |  0.00% |  0.02% )    	(86x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.171791s |  0.45% |  6.66% )   ( 4.108390s |  0.48% |  6.75% )    	(86x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 7.293945s |  0.78% | 11.64% )   ( 7.134968s |  0.84% | 11.73% )    	(86x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 5.973619s |  0.64% |  9.53% )   ( 5.813380s |  0.69% |  9.56% )    	(86x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 7.262517s |  0.78% | 11.59% )   ( 7.081642s |  0.84% | 11.65% )    	(86x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 5.779649s |  0.62% |  9.22% )   ( 5.604971s |  0.66% |  9.22% )    	(86x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.756759s |  0.40% |  5.99% )   ( 3.659423s |  0.43% |  6.02% )    	(86x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.936721s |  0.20% |  3.09% )   ( 1.832882s |  0.21% |  3.01% )    	(86x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.158356s |  0.44% |  6.64% )   ( 3.911033s |  0.46% |  6.43% )    	(86x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 1.723035s |  0.18% |  2.75% )   ( 1.608857s |  0.19% |  2.64% )    	(86x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.187519s |  0.56% |  8.28% )   ( 4.996704s |  0.59% |  8.22% )    	(86x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 11.587689s |  1.25% | 18.50% )   ( 11.422711s |  1.35% | 18.79% )    	(86x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 1.902035s |  0.20% |  3.03% )   ( 1.829978s |  0.21% |  3.01% )    	(86x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 1.875590s |  0.20% |  2.99% )   ( 1.761083s |  0.20% |  2.89% )    	(86x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000512s |  0.00% |  0.00% )   ( 0.000580s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.010920s |  0.00% |  0.00% )   ( 0.012546s |  0.00% |  0.00% )    	(82x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.010328s |  0.00% |  0.00% )   ( 0.011776s |  0.00% |  0.00% )    	(78x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.012263s |  0.00% |  0.00% )   ( 0.013292s |  0.00% |  0.00% )    	(78x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000401s |  0.00% |  0.00% )   ( 0.000465s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000411s |  0.00% |  0.00% )   ( 0.000473s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.023104s |  0.00% |  0.03% )   ( 0.023329s |  0.00% |  0.03% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.1sSdiA"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000351s |  0.00% |  0.00% )   ( 0.000391s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002671s |  0.00% |  0.00% )   ( 0.003111s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 15.456298s |  1.67% |  3.34% )   ( 14.769372s |  1.75% |  3.51% )    	(1x)	│  │  │ << (FUNCTION): .local p4 p4_PID >>
│  │  │  │  1.4.0:     	( 0.000593s |  0.00% |  0.00% )   ( 0.000611s |  0.00% |  0.00% )    	(1x)	│  │  │  │ local p4 p4_PID (&)
│  │  │  │  73.4.0:    	( 15.455620s |  1.67% | 99.99% )   ( 14.768664s |  1.75% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.000318s |  0.00% |  0.00% )   ( 0.000360s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.1sSdiA"
│  │  │  │  │  8.5.0:  	( 0.000336s |  0.00% |  0.00% )   ( 0.000379s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.1sSdiA"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.013322s |  0.00% |  0.08% )   ( 0.013304s |  0.00% |  0.09% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.1sSdiA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.012457s |  0.00% |  0.08% )   ( 0.012439s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1775908 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.012458s |  0.00% |  0.08% )   ( 0.012439s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1775908 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.012445s |  0.00% |  0.08% )   ( 0.012422s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1775908 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.012475s |  0.00% |  0.08% )   ( 0.012458s |  0.00% |  0.08% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.003564s |  0.00% |  0.00% )   ( 0.004057s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.003156s |  0.00% |  0.00% )   ( 0.003629s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000164s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.1sSdiA"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000132s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000125s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.003813s |  0.00% |  0.00% )   ( 0.004298s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.1sSdiA"/.wait/p4
│  │  │  │  │  23.5.0: 	( 0.286127s |  0.03% |  0.07% )   ( 0.005365s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.003509s |  0.00% |  0.00% )   ( 0.004009s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.003522s |  0.00% |  0.00% )   ( 0.004023s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003164s |  0.00% |  0.00% )   ( 0.003640s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.003489s |  0.00% |  0.00% )   ( 0.003979s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.027714s |  0.00% |  0.00% )   ( 0.028062s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003204s |  0.00% |  0.00% )   ( 0.003689s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003007s |  0.00% |  0.00% )   ( 0.003476s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.011642s |  0.00% |  0.00% )   ( 0.004149s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.003905s |  0.00% |  0.00% )   ( 0.004390s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.1sSdiA"/.wait/p4
│  │  │  │  │  48.5.0: 	( 0.003201s |  0.00% |  0.00% )   ( 0.003712s |  0.00% |  0.00% )    	(24x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.002935s |  0.00% |  0.00% )   ( 0.003381s |  0.00% |  0.00% )    	(23x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000212s |  0.00% |  0.00% )   ( 0.000247s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000201s |  0.00% |  0.00% )   ( 0.000234s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  73.5.0: 	( 15.004076s |  1.62% |  4.22% )   ( 14.600506s |  1.73% |  4.29% )    	(23x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.002823s |  0.00% |  0.01% )   ( 0.003280s |  0.00% |  0.02% )    	(23x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 1.013735s |  0.10% |  6.75% )   ( 0.972215s |  0.11% |  6.65% )    	(23x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.687768s |  0.18% | 11.24% )   ( 1.666005s |  0.19% | 11.41% )    	(23x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.452783s |  0.15% |  9.68% )   ( 1.400194s |  0.16% |  9.59% )    	(23x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.680689s |  0.18% | 11.20% )   ( 1.649823s |  0.19% | 11.29% )    	(23x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.371960s |  0.14% |  9.14% )   ( 1.331670s |  0.15% |  9.12% )    	(23x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.905759s |  0.09% |  6.03% )   ( 0.890154s |  0.10% |  6.09% )    	(23x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.491350s |  0.05% |  3.27% )   ( 0.473174s |  0.05% |  3.24% )    	(23x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.945440s |  0.10% |  6.30% )   ( 0.930074s |  0.11% |  6.37% )    	(23x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.465145s |  0.05% |  3.10% )   ( 0.420474s |  0.04% |  2.87% )    	(23x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.303783s |  0.14% |  8.68% )   ( 1.237045s |  0.14% |  8.47% )    	(23x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.707021s |  0.29% | 18.04% )   ( 2.679177s |  0.31% | 18.34% )    	(23x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.491876s |  0.05% |  3.27% )   ( 0.479584s |  0.05% |  3.28% )    	(23x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.483944s |  0.05% |  3.22% )   ( 0.467637s |  0.05% |  3.20% )    	(23x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  70.5.1: 	( 0.000140s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.003002s |  0.00% |  0.00% )   ( 0.003461s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.002732s |  0.00% |  0.00% )   ( 0.003125s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.003155s |  0.00% |  0.00% )   ( 0.003578s |  0.00% |  0.00% )    	(21x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000122s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.003050s |  0.00% |  0.01% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000156s |  0.00% |  0.00% )   ( 0.000175s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.1sSdiA"/.quit
│  │  │  │  │  62.5.0: 	( 0.000198s |  0.00% |  0.00% )   ( 0.000218s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.1sSdiA"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.008135s |  0.00% |  0.05% )   ( 0.008199s |  0.00% |  0.05% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.1sSdiA"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000085s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1399.3.0:     	( 345.434181s | 37.37% |  3.39% )   ( 327.749245s | 38.94% |  3.54% )    	(22x)	│  │  │ << (FUNCTION): .local p5 p5_PID >>
│  │  │  │  1.4.0:     	( 0.019587s |  0.00% |  0.00% )   ( 0.019961s |  0.00% |  0.00% )    	(22x)	│  │  │  │ local p5 p5_PID (&)
│  │  │  │  73.4.0:    	( 345.411789s | 37.36% | 99.99% )   ( 327.726131s | 38.94% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.003526s |  0.00% |  0.00% )   ( 0.003944s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.1sSdiA"
│  │  │  │  │  8.5.0:  	( 0.003490s |  0.00% |  0.00% )   ( 0.003915s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.1sSdiA"/.run/p5
│  │  │  │  │  12.5.0: 	( 0.429705s |  0.04% |  0.12% )   ( 0.409582s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.1sSdiA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p5; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.409634s |  0.04% |  0.11% )   ( 0.403540s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1775908 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.404135s |  0.04% |  0.11% )   ( 0.402995s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1775908 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.410583s |  0.04% |  0.11% )   ( 0.409330s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1775908 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.417949s |  0.04% |  0.12% )   ( 0.416637s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.087244s |  0.00% |  0.00% )   ( 0.098312s |  0.01% |  0.00% )    	(553x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.082367s |  0.00% |  0.00% )   ( 0.087149s |  0.01% |  0.00% )    	(553x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002390s |  0.00% |  0.00% )   ( 0.002726s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.1sSdiA"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002038s |  0.00% |  0.00% )   ( 0.002360s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002063s |  0.00% |  0.00% )   ( 0.002400s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.094867s |  0.01% |  0.00% )   ( 0.106101s |  0.01% |  0.00% )    	(553x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.1sSdiA"/.wait/p5
│  │  │  │  │  23.5.0: 	( 6.646464s |  0.71% |  0.07% )   ( 0.127945s |  0.01% |  0.00% )    	(553x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.084313s |  0.00% |  0.00% )   ( 0.093901s |  0.01% |  0.00% )    	(553x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.090702s |  0.00% |  0.00% )   ( 0.087383s |  0.01% |  0.00% )    	(531x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.072702s |  0.00% |  0.00% )   ( 0.083256s |  0.00% |  0.00% )    	(531x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.076700s |  0.00% |  0.00% )   ( 0.087406s |  0.01% |  0.00% )    	(531x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.658229s |  0.07% |  0.00% )   ( 0.644125s |  0.07% |  0.00% )    	(531x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.072640s |  0.00% |  0.00% )   ( 0.083382s |  0.00% |  0.00% )    	(531x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.072159s |  0.00% |  0.00% )   ( 0.082773s |  0.00% |  0.00% )    	(531x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.126616s |  0.01% |  0.00% )   ( 0.088511s |  0.01% |  0.00% )    	(531x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.093533s |  0.01% |  0.00% )   ( 0.101621s |  0.01% |  0.00% )    	(531x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.1sSdiA"/.wait/p5
│  │  │  │  │  48.5.0: 	( 0.073160s |  0.00% |  0.00% )   ( 0.081706s |  0.00% |  0.00% )    	(531x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.070702s |  0.00% |  0.00% )   ( 0.081179s |  0.00% |  0.00% )    	(531x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.002757s |  0.00% |  0.00% )   ( 0.003105s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.002416s |  0.00% |  0.00% )   ( 0.002800s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.002381s |  0.00% |  0.00% )   ( 0.002763s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 334.544515s | 36.19% |  4.01% )   ( 323.335048s | 38.41% |  4.09% )    	(531x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.067023s |  0.00% |  0.02% )   ( 0.077917s |  0.00% |  0.02% )    	(531x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 22.641557s |  2.44% |  6.76% )   ( 21.981051s |  2.61% |  6.79% )    	(531x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 37.503288s |  4.05% | 11.21% )   ( 36.393971s |  4.32% | 11.25% )    	(531x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 31.858208s |  3.44% |  9.52% )   ( 30.791349s |  3.65% |  9.52% )    	(531x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 36.937272s |  3.99% | 11.04% )   ( 36.008034s |  4.27% | 11.13% )    	(531x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 30.694695s |  3.32% |  9.17% )   ( 29.784998s |  3.53% |  9.21% )    	(531x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 21.034277s |  2.27% |  6.28% )   ( 20.129877s |  2.39% |  6.22% )    	(531x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 11.722262s |  1.26% |  3.50% )   ( 11.144460s |  1.32% |  3.44% )    	(531x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 21.760724s |  2.35% |  6.50% )   ( 20.751561s |  2.46% |  6.41% )    	(531x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.419763s |  1.12% |  3.11% )   ( 9.936760s |  1.18% |  3.07% )    	(531x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 28.321777s |  3.06% |  8.46% )   ( 27.168423s |  3.22% |  8.40% )    	(531x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 58.150734s |  6.29% | 17.38% )   ( 56.920298s |  6.76% | 17.60% )    	(531x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 11.920539s |  1.28% |  3.56% )   ( 11.314512s |  1.34% |  3.49% )    	(531x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.512396s |  1.24% |  3.44% )   ( 10.931837s |  1.29% |  3.38% )    	(531x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.074063s |  0.00% |  0.00% )   ( 0.084823s |  0.01% |  0.00% )    	(531x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.067844s |  0.00% |  0.00% )   ( 0.078034s |  0.00% |  0.00% )    	(509x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.089828s |  0.00% |  0.00% )   ( 0.087285s |  0.01% |  0.00% )    	(509x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002408s |  0.00% |  0.00% )   ( 0.002760s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002432s |  0.00% |  0.00% )   ( 0.002779s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.135234s |  0.01% |  0.03% )   ( 0.134555s |  0.01% |  0.04% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.1sSdiA"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p5 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p5\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.002805s |  0.00% |  0.00% )   ( 0.003153s |  0.00% |  0.00% )    	(22x)	│  │  │  └─p_PID+=(${p5_PID})
│  │  │  1399.3.0:     	( 15.026546s |  1.62% |  3.24% )   ( 14.276561s |  1.69% |  3.39% )    	(1x)	│  │  │ << (FUNCTION): .local p19 p19_PID >>
│  │  │  │  1.4.0:     	( 0.001061s |  0.00% |  0.00% )   ( 0.001078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ local p19 p19_PID (&)
│  │  │  │  73.4.0:    	( 15.025334s |  1.62% | 99.99% )   ( 14.275312s |  1.69% | 99.99% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.000165s |  0.00% |  0.00% )   ( 0.000188s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.1sSdiA"
│  │  │  │  │  8.5.0:  	( 0.000164s |  0.00% |  0.00% )   ( 0.000186s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.1sSdiA"/.run/p19
│  │  │  │  │  12.5.0: 	( 0.020180s |  0.00% |  0.13% )   ( 0.020124s |  0.00% |  0.14% )    	(1x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.1sSdiA"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p19; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.023704s |  0.00% |  0.15% )   ( 0.023640s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1775908 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.023639s |  0.00% |  0.15% )   ( 0.023577s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1775908 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.023579s |  0.00% |  0.15% )   ( 0.023517s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1775908 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.023767s |  0.00% |  0.15% )   ( 0.023702s |  0.00% |  0.16% )    	(1x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.004550s |  0.00% |  0.00% )   ( 0.005113s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.004075s |  0.00% |  0.00% )   ( 0.004648s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000137s |  0.00% |  0.00% )   ( 0.000155s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.1sSdiA"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000118s |  0.00% |  0.00% )   ( 0.000133s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.005029s |  0.00% |  0.00% )   ( 0.005583s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.1sSdiA"/.wait/p19
│  │  │  │  │  23.5.0: 	( 0.284797s |  0.03% |  0.06% )   ( 0.006509s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.004413s |  0.00% |  0.00% )   ( 0.005003s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.004093s |  0.00% |  0.00% )   ( 0.004687s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.1sSdiA"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.003907s |  0.00% |  0.00% )   ( 0.004495s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.004337s |  0.00% |  0.00% )   ( 0.004949s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.038546s |  0.00% |  0.00% )   ( 0.033046s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 A
│  │  │  │  │  33.5.0: 	( 0.003917s |  0.00% |  0.00% )   ( 0.004490s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  33.5.1: 	( 0.003905s |  0.00% |  0.00% )   ( 0.004453s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.004278s |  0.00% |  0.00% )   ( 0.004855s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  47.5.0: 	( 0.004828s |  0.00% |  0.00% )   ( 0.005423s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.1sSdiA"/.wait/p19
│  │  │  │  │  48.5.0: 	( 0.003782s |  0.00% |  0.00% )   ( 0.004348s |  0.00% |  0.00% )    	(28x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  68.5.0: 	( 0.003625s |  0.00% |  0.00% )   ( 0.004165s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  69.5.0: 	( 0.000123s |  0.00% |  0.00% )   ( 0.000142s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  70.5.0: 	( 0.000109s |  0.00% |  0.00% )   ( 0.000128s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  70.5.1: 	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  73.5.0: 	( 14.510020s |  1.56% |  3.57% )   ( 14.034643s |  1.66% |  3.64% )    	(27x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.003571s |  0.00% |  0.02% )   ( 0.004124s |  0.00% |  0.02% )    	(27x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 0.969026s |  0.10% |  6.67% )   ( 0.943481s |  0.11% |  6.72% )    	(27x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 1.590849s |  0.17% | 10.96% )   ( 1.541868s |  0.18% | 10.98% )    	(27x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 1.396785s |  0.15% |  9.62% )   ( 1.368184s |  0.16% |  9.74% )    	(27x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 1.542348s |  0.16% | 10.62% )   ( 1.499059s |  0.17% | 10.68% )    	(27x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 1.341256s |  0.14% |  9.24% )   ( 1.285029s |  0.15% |  9.15% )    	(27x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 0.908496s |  0.09% |  6.26% )   ( 0.876642s |  0.10% |  6.24% )    	(27x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 0.568244s |  0.06% |  3.91% )   ( 0.541377s |  0.06% |  3.85% )    	(27x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 0.923790s |  0.09% |  6.36% )   ( 0.884209s |  0.10% |  6.30% )    	(27x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.506562s |  0.05% |  3.49% )   ( 0.495125s |  0.05% |  3.52% )    	(27x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 1.227409s |  0.13% |  8.45% )   ( 1.192660s |  0.14% |  8.49% )    	(27x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 2.382645s |  0.25% | 16.42% )   ( 2.301822s |  0.27% | 16.40% )    	(27x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.579953s |  0.06% |  3.99% )   ( 0.555808s |  0.06% |  3.96% )    	(27x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.569086s |  0.06% |  3.92% )   ( 0.545255s |  0.06% |  3.88% )    	(27x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.003879s |  0.00% |  0.00% )   ( 0.004443s |  0.00% |  0.00% )    	(27x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  68.5.1: 	( 0.003551s |  0.00% |  0.00% )   ( 0.004054s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  71.5.0: 	( 0.004283s |  0.00% |  0.00% )   ( 0.004851s |  0.00% |  0.00% )    	(26x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000141s |  0.00% |  0.00% )   ( 0.000166s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  58.5.0: 	( 0.000130s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  59.5.0: 	( 0.000127s |  0.00% |  0.00% )   ( 0.000146s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  61.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000151s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ : > "/dev/shm/.forkrun.1sSdiA"/.quit
│  │  │  │  │  62.5.0: 	( 0.000246s |  0.00% |  0.00% )   ( 0.000264s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.1sSdiA"/.run/p* 1>&21
│  │  │  │  │  63.5.0: 	( 0.000133s |  0.00% |  0.00% )   ( 0.000153s |  0.00% |  0.00% )    	(1x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.008690s |  0.00% |  0.05% )   ( 0.008759s |  0.00% |  0.06% )    	(1x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.1sSdiA"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.1sSdiA"/.run/p19 ]] && \rm -f "/dev/shm/.forkrun.1sSdiA"/.run/p19\; \$\\nprintf \n >&21'
│  │  │  └─ 146.4.0:   	( 0.000151s |  0.00% |  0.00% )   ( 0.000171s |  0.00% |  0.00% )    	(1x)	│  │  │  └─p_PID+=(${p19_PID})
│  │  │  1401.3.0:     	( 0.000152s |  0.00% |  0.00% )   ( 0.000172s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000175s |  0.00% |  0.00% )   ( 0.000199s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000117s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001259s |  0.00% |  0.00% )   ( 0.001280s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000128s |  0.00% |  0.00% )   ( 0.000148s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000141s |  0.00% |  0.00% )   ( 0.000160s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000119s |  0.00% |  0.00% )   ( 0.000138s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.833679s |  2.03% |  4.07% )   ( 0.001605s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000281s |  0.00% |  0.00% )   ( 0.000322s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000283s |  0.00% |  0.00% )   ( 0.000316s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000280s |  0.00% |  0.00% )   ( 0.000324s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.006507s |  0.00% |  0.00% )   ( 0.003088s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.1sSdiA" 2>/dev/null'

10.0.0:                	( 461.685872s | 49.94% )            ( 421.351167s | 50.06% )             	(1x)	<< (FUNCTION): .forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null >>
│  1.1.0:              	( 0.001320s |  0.00% |  0.00% )   ( 0.001079s |  0.00% |  0.00% )    	(1x)	│ forkrun -z ff < /mnt/ramdisk/flist0 > /dev/null
│  425.1.0:            	( 461.684552s | 49.94% | 99.99% )   ( 421.350088s | 50.06% | 99.99% )    	(1x)	│ << (SUBSHELL) >>
│  │  425.2.0:         	( 0.023889s |  0.00% |  0.00% )   ( 0.023847s |  0.00% |  0.00% )    	(1x)	│  │ trap - EXIT INT TERM HUP USR1
│  │  110.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │ shopt -s extglob
│  │  113.2.0:         	( 0.000072s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │ local +i nLines nLines0 nLinesMax nBytes nProcs nProcsMax
│  │  114.2.0:         	( 0.000128s |  0.00% |  0.00% )   ( 0.000141s |  0.00% |  0.00% )    	(1x)	│  │ local tmpDir fPath outStr delimiterVal delimiterReadStr delimiterRemoveStr exitTrapStr exitTrapStr_kill nOrder tTimeout coprocSrcCode outCur outCurHex outRead tmpDirRoot returnVal tmpVar t0 tStart0 tStart1 readBytesProg nullDelimiterProg ddQuietStr pLOAD0 trailingNullFlag lseekFlag lseekPosFlag fallocateFlag nLinesAutoFlag nLinesReadLimitFlag nSpawnFlag substituteStringFlag substituteStringIDFlag nOrderFlag readBytesFlag readBytesExactFlag nullDelimiterFlag subshellRunFlag stdinRunFlag pipeReadFlag rmTmpDirFlag exportOrderFlag noFuncFlag unescapeFlag optParseFlag continueFlag doneIndicatorFlag FORCE_allowCarriageReturnsFlag ddAvailableFlag pAddFlag fd_continue fd_nAuto fd_nAuto0 fd_nOrder fd_nOrder0 fd_read fd_read0 fd_write fd_stdout fd_stdin fd_stdin0 fd_stderr pWrite pOrder pAuto pSpawn pWrite_PID pOrder_PID pAuto_PID pSpawn_PID DEBUG_FORKRUN
│  │  115.2.0:         	( 0.000099s |  0.00% |  0.00% )   ( 0.000112s |  0.00% |  0.00% )    	(1x)	│  │ local -i PID0 nLinesCur nLinesNew nLinesRead nLinesReadLimit nRead nWait nOrder0 nBytesRead nSpawn nSpawnLast nSpawnLastCount nCPU writeFileProgType v9 kkMax kkCur kk kkProcs kkProcs0 verboseLevel pLOAD_max pLOAD_target pAd pAdd_sysLoad pAdd_lineRated tStart fd_read_pos fd_read_pos0 fd_read_pos_old fd_write_pos pAdd0 pAdd1 inLines inTime inLines0 inTime0 inLines1 nTime1 inLinesDelta inTimeDelta pAddCount pAddMin pAddSum pAddMax
│  │  116.2.0:         	( 0.000081s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │ local -a A p_PID p_PID0 runCmd outHave outPrint pLOADA pLOADA0 runLines runTime
│  │  117.2.0:         	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │ local -a -i runLinesA runTimeA runWaitA runAllA spawnTimeA pLOAD1
│  │  122.2.0:         	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │ : "${verboseLevel:=0}" "${returnVal:=0}" "${fd_stdin0:=0}" "${nLinesReadLimitFlag:=false}"
│  │  125.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ [[ $# == 0 ]]
│  │  125.2.1:         	( 0.000079s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │ optParseFlag=true
│  │  126.2.0:         	( 0.000123s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(2x)	│  │ ${optParseFlag}
│  │  126.2.1:         	( 0.000121s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(2x)	│  │ (( $# > 0  ))
│  │  126.2.2:         	( 0.000126s |  0.00% |  0.00% )   ( 0.000152s |  0.00% |  0.00% )    	(2x)	│  │ [[ "$1" == [-+]* ]]
│  │  127.2.0:         	( 0.000097s |  0.00% |  0.00% )   ( 0.000111s |  0.00% |  0.00% )    	(1x)	│  │ case "${1}" in
│  │  254.2.0:         	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │ [[ "${1:0:1}" == '-' ]]
│  │  254.2.1:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │ nullDelimiterFlag=true
│  │  318.2.0:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ shift 1
│  │  319.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ ${#} == 0 ]]
│  │  323.2.0:         	( 0.000068s |  0.00% |  0.00% )   ( 0.000092s |  0.00% |  0.00% )    	(1x)	│  │ [ -t "${fd_stdin0}" ]
│  │  332.2.0:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${tmpDirRoot} ]]
│  │  332.2.1:         	( 0.000060s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │ [[ -n ${TMPDIR} ]]
│  │  332.2.2:         	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ [[ -d '/dev/shm' ]]
│  │  332.2.3:         	( 0.000058s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │ tmpDirRoot='/dev/shm'
│  │  334.2.0:         	( 0.001010s |  0.00% |  0.00% )   ( 0.000695s |  0.00% |  0.00% )    	(1x)	│  │ tmpDir="$(mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX)"
│  │  334.2.1:         	( 0.005426s |  0.00% |  0.00% )   ( 0.005426s |  0.00% |  0.00% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  └─ 334.3.0:      	( 0.005426s |  0.00% |100.00% )   ( 0.005426s |  0.00% |100.00% )    	(1x)	│  │  └─mktemp -p "${tmpDirRoot}" -d .forkrun.XXXXXX
│  │  335.2.0:         	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │ fPath="${tmpDir}"/.stdin
│  │  337.2.0:         	( 0.001778s |  0.00% |  0.00% )   ( 0.001843s |  0.00% |  0.00% )    	(1x)	│  │ mkdir -p "${tmpDir}"/.run
│  │  338.2.0:         	( 0.000083s |  0.00% |  0.00% )   ( 0.000097s |  0.00% |  0.00% )    	(1x)	│  │ : > "${fPath}"
│  │  340.2.0:         	( 0.000061s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │ ${rmTmpDirFlag}
│  │  340.2.1:         	( 0.014059s |  0.00% |  0.00% )   ( 0.000535s |  0.00% |  0.00% )    	(1x)	│  │ trap '\rm -rf "'"${tmpDir}"'" 2>/dev/null' EXIT
│  │  348.2.0:         	( 461.628211s | 49.94% | 99.98% )   ( 421.310630s | 50.05% | 99.99% )    	(1x)	│  │ << (SUBSHELL) >>
│  │  │  348.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000084s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${DEBUG_FORKRUN} ]]
│  │  │  1502.3.0:     	( 0.000650s |  0.00% |  0.00% )   ( 0.000757s |  0.00% |  0.00% )    	(6x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 1502.4.0:  	( 0.000650s |  0.00% |100.00% )   ( 0.000757s |  0.00% |100.00% )    	(6x)	│  │  │  └─:
│  │  │  363.3.0:      	( 0.000084s |  0.00% |  0.00% )   ( 0.000098s |  0.00% |  0.00% )    	(1x)	│  │  │ LC_ALL=C
│  │  │  364.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ LANG=C
│  │  │  365.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ IFS=
│  │  │  367.3.0:      	( 0.000212s |  0.00% |  0.00% )   ( 0.011300s |  0.00% |  0.00% )    	(1x)	│  │  │ enable -f forkrun_loadables.so evfd_init evfd_wait evfd_signal evfd_close evfd_copy order_init order_get lseek cpuusage childusage
│  │  │  369.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  370.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ FORKRUN_TMPDIR="$tmpDir"
│  │  │  371.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ export FORKRUN_TMPDIR="$tmpDir"
│  │  │  373.3.0:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │ PID0="${BASHPID}"
│  │  │  375.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ shopt -s nullglob
│  │  │  378.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${noFuncFlag:=false}" "${readBytesFlag:=false}" "${readBytesExactFlag:=false}" "${nullDelimiterFlag:=false}" "${FORCE_allowCarriageReturnsFlag:=false}"
│  │  │  380.3.0:      	( 0.000094s |  0.00% |  0.00% )   ( 0.000107s |  0.00% |  0.00% )    	(1x)	│  │  │ enable lseek &> /dev/null
│  │  │  381.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekFlag:=true}"
│  │  │  386.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  387.3.0:      	( 0.002987s |  0.00% |  0.00% )   ( 0.003056s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "$(lseek $fd_read 0)" == 0 ]]
│  │  │  387.3.1:      	( 0.000105s |  0.00% |  0.00% )   ( 0.000120s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 387.4.0:   	( 0.000105s |  0.00% |100.00% )   ( 0.000120s |  0.00% |100.00% )    	(1x)	│  │  │  └─lseek $fd_read 0
│  │  │  387.3.2:      	( 0.000069s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${lseekPosFlag:=true}"
│  │  │  391.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowCarriageReturnsFlag:-false}
│  │  │  396.3.0:      	( 0.000071s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ runCmd=("${@//''/}")
│  │  │  398.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${#runCmd[@]} > 0 ))
│  │  │  399.3.1:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ noFuncFlag=false
│  │  │  400.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${noFuncFlag}
│  │  │  401.3.0:      	( 0.000087s |  0.00% |  0.00% )   ( 0.000099s |  0.00% |  0.00% )    	(1x)	│  │  │ hash "${runCmd[0]}" &> /dev/null
│  │  │  405.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  467.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nLines} ]]
│  │  │  467.3.1:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nLinesAutoFlag:=true}"
│  │  │  468.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -z ${nLines} ]]
│  │  │  468.3.1:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ nLines=1
│  │  │  472.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == '-'* ]]
│  │  │  477.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nProcs}" == *','* ]]
│  │  │  481.3.0:      	( 0.000806s |  0.00% |  0.00% )   ( 0.000926s |  0.00% |  0.00% )    	(1x)	│  │  │ << (FUNCTION): main.forkrun._forkrun_getVal nProcs "${nProcs%%,*}" >>
│  │  │  │  1.4.0:     	( 0.000056s |  0.00% |  6.94% )   ( 0.000068s |  0.00% |  7.34% )    	(1x)	│  │  │  │ _forkrun_getVal nProcs "${nProcs%%,*}"
│  │  │  │  8.4.0:     	( 0.000061s |  0.00% |  7.56% )   ( 0.000072s |  0.00% |  7.77% )    	(1x)	│  │  │  │ local +i -l nn
│  │  │  │  9.4.0:     	( 0.000060s |  0.00% |  7.44% )   ( 0.000072s |  0.00% |  7.77% )    	(1x)	│  │  │  │ local vOut
│  │  │  │  11.4.0:    	( 0.000067s |  0.00% |  8.31% )   ( 0.000075s |  0.00% |  8.09% )    	(1x)	│  │  │  │ local -n vOut="$1"
│  │  │  │  12.4.0:    	( 0.000060s |  0.00% |  7.44% )   ( 0.000072s |  0.00% |  7.77% )    	(1x)	│  │  │  │ shift 1
│  │  │  │  13.4.0:    	( 0.000064s |  0.00% |  7.94% )   ( 0.000076s |  0.00% |  8.20% )    	(1x)	│  │  │  │ local -g vOut
│  │  │  │  15.4.0:    	( 0.000064s |  0.00% |  7.94% )   ( 0.000072s |  0.00% |  7.77% )    	(1x)	│  │  │  │ (( ${#pMap[@]} == 20 ))
│  │  │  │  15.4.1:    	( 0.000108s |  0.00% | 13.39% )   ( 0.000119s |  0.00% | 12.85% )    	(1x)	│  │  │  │ local -Ag pMap=([k]=1 [m]=2 [g]=3 [t]=4 [p]=5 [e]=6 [z]=7 [y]=8 [r]=9 [q]=10 [ki]=1 [mi]=2 [gi]=3 [ti]=4 [pi]=5 [ei]=6 [zi]=7 [yi]=8 [ri]=9 [qi]=10)
│  │  │  │  17.4.0:    	( 0.000060s |  0.00% |  7.44% )   ( 0.000071s |  0.00% |  7.66% )    	(1x)	│  │  │  │ for nn in "${@%%[Bb]*}"
│  │  │  │  18.4.0:    	( 0.000072s |  0.00% |  8.93% )   ( 0.000073s |  0.00% |  7.88% )    	(1x)	│  │  │  │ [[ -n ${nn} ]]
│  │  │  │  18.4.1:    	( 0.000063s |  0.00% |  7.81% )   ( 0.000074s |  0.00% |  7.99% )    	(1x)	│  │  │  │ continue
│  │  │  └─ 28.4.0:    	( 0.000071s |  0.00% |  8.80% )   ( 0.000082s |  0.00% |  8.85% )    	(1x)	│  │  │  └─local +n vOut
│  │  │  483.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  485.3.0:      	( 0.006297s |  0.00% |  0.00% )   ( 0.006386s |  0.00% |  0.00% )    	(1x)	│  │  │ nCPU="$({ type -a nproc &> /dev/null && nproc; } || { type -a grep &> /dev/null && grep -cE '^processor.*: ' /proc/cpuinfo; } || { mapfile -t tmpA < /proc/cpuinfo && tmpA=("${tmpA[@]//processor*/''}") && tmpA=("${tmpA[@]//!('')/}") && tmpA=("${tmpA[@]//''/1}") && tmpA="${tmpA[*]}" && tmpA="${tmpA// /}" && echo ${#tmpA}; } || printf '8')"
│  │  │  485.3.1:      	( 0.002125s |  0.00% |  0.00% )   ( 0.002222s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  485.4.0:   	( 0.000219s |  0.00% | 10.30% )   ( 0.000235s |  0.00% | 10.57% )    	(1x)	│  │  │  │ type -a nproc &> /dev/null
│  │  │  └─ 485.4.1:   	( 0.001906s |  0.00% | 89.69% )   ( 0.001987s |  0.00% | 89.42% )    	(1x)	│  │  │  └─nproc
│  │  │  486.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nCPU < 1 ))
│  │  │  487.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ -n ${nProcs} ]]
│  │  │  487.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  487.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ nProcs=${nCPU}
│  │  │  489.3.0:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  493.3.1:      	( 0.000078s |  0.00% |  0.00% )   ( 0.000085s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nSpawnFlag:=false}"
│  │  │  499.3.0:      	( 0.000077s |  0.00% |  0.00% )   ( 0.000089s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nOrderFlag:=false}" "${rmTmpDirFlag:=true}" "${nLinesMax:=1024}" "${subshellRunFlag:=false}" "${pipeReadFlag:=false}" "${substituteStringFlag:=false}" "${substituteStringIDFlag:=false}" "${exportOrderFlag:=false}" "${unescapeFlag:=false}" "${stdinRunFlag:=false}"
│  │  │  501.3.0:      	( 0.000083s |  0.00% |  0.00% )   ( 0.000095s |  0.00% |  0.00% )    	(1x)	│  │  │ local -i nProcs="${nProcs}" nProcsMax="${nProcsMax}" nLines="${nLines}" nLinesMax="${nLinesMax}"
│  │  │  504.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  504.3.1:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < 2 * nLines ))
│  │  │  504.3.2:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ (( nLinesMax < nLines ))
│  │  │  506.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ doneIndicatorFlag=false
│  │  │  509.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.0:      	( 0.000150s |  0.00% |  0.00% )   ( 0.000162s |  0.00% |  0.00% )    	(1x)	│  │  │ type -a fallocate &> /dev/null
│  │  │  515.3.1:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  515.3.2:      	( 0.000067s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${fallocateFlag:=true}"
│  │  │  518.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${exportOrderFlag}
│  │  │  521.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${readBytesFlag}
│  │  │  522.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  523.3.0:      	( 0.000058s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nullDelimiterFlag}
│  │  │  524.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ delimiterReadStr="-d ''"
│  │  │  525.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ ${lseekFlag}
│  │  │  525.3.1:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:='lseek'}"
│  │  │  526.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${nullDelimiterProg:=bash}"
│  │  │  527.3.0:      	( 0.000121s |  0.00% |  0.00% )   ( 0.000129s |  0.00% |  0.00% )    	(1x)	│  │  │ type -p dd &> /dev/null
│  │  │  528.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ddAvailableFlag=true
│  │  │  529.3.0:      	( 0.004157s |  0.00% |  0.00% )   ( 0.005239s |  0.00% |  0.00% )    	(1x)	│  │  │ dd --version | grep -qF 'coreutils'
│  │  │  530.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ ddQuietStr='status=none'
│  │  │  537.3.0:      	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ [[ "${nullDelimiterProg}" == @(dd|bash|lseek) ]]
│  │  │  538.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${FORCE_allowUnsafeNullDelimiterFlag}
│  │  │  539.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ nullDelimiterProg=''
│  │  │  557.3.0:      	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ ${unescapeFlag}
│  │  │  566.3.0:      	( 0.003383s |  0.00% |  0.00% )   ( 0.003496s |  0.00% |  0.00% )    	(1x)	│  │  │ mapfile -t runCmd < <(printf '%q\n' "${runCmd[@]}") (&)
│  │  │  566.3.1:      	( 0.000106s |  0.00% |  0.00% )   ( 0.000124s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  └─ 566.4.0:   	( 0.000106s |  0.00% |100.00% )   ( 0.000124s |  0.00% |100.00% )    	(1x)	│  │  │  └─printf '%q\n' "${runCmd[@]}"
│  │  │  567.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringFlag}
│  │  │  570.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${substituteStringIDFlag}
│  │  │  576.3.0:      	( 0.000066s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │ nLinesCur=${nLines}
│  │  │  578.3.0:      	( 0.001226s |  0.00% |  0.00% )   ( 0.001301s |  0.00% |  0.00% )    	(1x)	│  │  │ mkdir -p "${tmpDir}"/.{run,wait}
│  │  │  579.3.0:      	( 0.000064s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  582.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${rmTmpDirFlag}
│  │  │  584.3.0:      	( 0.000061s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 0 ))
│  │  │  615.3.0:      	( 0.000081s |  0.00% |  0.00% )   ( 0.000093s |  0.00% |  0.00% )    	(1x)	│  │  │ tStart="${EPOCHREALTIME//./}"
│  │  │  617.3.0:      	( 0.000075s |  0.00% |  0.00% )   ( 0.000087s |  0.00% |  0.00% )    	(1x)	│  │  │ evfd_init
│  │  │  622.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr=': >"'"${tmpDir}"'"/.done;$'\n': >"'"${tmpDir}"'"/.quit;$'\n'kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  624.3.0:      	( 0.000070s |  0.00% |  0.00% )   ( 0.000082s |  0.00% |  0.00% )    	(1x)	│  │  │ ${pipeReadFlag}
│  │  │  628.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesReadLimitFlag}
│  │  │  638.3.0:      	( 0.000551s |  0.00% |  0.00% )   ( 0.000571s |  0.00% |  0.00% )    	(1x)	│  │  │ : "${writeFileProgType:=1}" (&)
│  │  │  644.3.0:      	( 0.079458s |  0.00% |  0.01% )   ( 0.079141s |  0.00% |  0.01% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  644.4.0:   	( 0.000079s |  0.00% |  0.09% )   ( 0.000091s |  0.00% |  0.11% )    	(1x)	│  │  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  │  646.4.0:   	( 0.011129s |  0.00% | 14.00% )   ( 0.011102s |  0.00% | 14.02% )    	(1x)	│  │  │  │ trap - EXIT
│  │  │  │  647.4.0:   	( 0.012172s |  0.00% | 15.31% )   ( 0.012116s |  0.00% | 15.30% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  648.4.0:   	( 0.012170s |  0.00% | 15.31% )   ( 0.012110s |  0.00% | 15.30% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  649.4.0:   	( 0.012236s |  0.00% | 15.39% )   ( 0.012156s |  0.00% | 15.35% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  650.4.0:   	( 0.012165s |  0.00% | 15.30% )   ( 0.012140s |  0.00% | 15.33% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  652.4.0:   	( 0.000065s |  0.00% |  0.08% )   ( 0.000077s |  0.00% |  0.09% )    	(1x)	│  │  │  │ case ${writeFileProgType} in
│  │  │  │  653.4.0:   	( 0.019214s |  0.00% | 24.18% )   ( 0.019091s |  0.00% | 24.12% )    	(1x)	│  │  │  │ evfd_copy ${fd_write} ${fd_stdin}
│  │  │  │  658.4.0:   	( 0.000095s |  0.00% |  0.11% )   ( 0.000102s |  0.00% |  0.12% )    	(1x)	│  │  │  │ : > "${tmpDir}"/.done
│  │  │  │  659.4.0:   	( 0.000068s |  0.00% |  0.08% )   ( 0.000080s |  0.00% |  0.10% )    	(1x)	│  │  │  │ evfd_signal
│  │  │  └─ 660.4.0:   	( 0.000065s |  0.00% |  0.08% )   ( 0.000076s |  0.00% |  0.09% )    	(1x)	│  │  │  └─(( ${verboseLevel} > 1 ))
│  │  │  668.3.0:      	( 0.000068s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr_kill+="${pWrite_PID} "
│  │  │  673.3.0:      	( 0.000065s |  0.00% |  0.00% )   ( 0.000072s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  715.3.0:      	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ outStr='>&'"${fd_stdout}"
│  │  │  719.3.0:      	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nLinesAutoFlag}
│  │  │  721.3.0:      	( 0.000428s |  0.00% |  0.00% )   ( 0.000452s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' ${nLines} > "${tmpDir}"/.nLines (&)
│  │  │  731.3.0:      	( 3.271031s |  0.35% |  0.70% )   ( 1.731039s |  0.20% |  0.41% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  731.4.0:   	( 0.000083s |  0.00% |  0.00% )   ( 0.000096s |  0.00% |  0.00% )    	(1x)	│  │  │  │ export LC_ALL=C LANG=C IFS=
│  │  │  │  733.4.0:   	( 0.012179s |  0.00% |  0.37% )   ( 0.012158s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap '[[ -f "'"${tmpDir}"'"/.run/pAuto ]] && \rm -f "'"${tmpDir}"'"/.run/pAuto' EXIT
│  │  │  │  734.4.0:   	( 0.012142s |  0.00% |  0.37% )   ( 0.012106s |  0.00% |  0.69% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT '"${PID0}"' ${BASHPID}' INT
│  │  │  │  735.4.0:   	( 0.012157s |  0.00% |  0.37% )   ( 0.012124s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM '"${PID0}"' ${BASHPID}' TERM
│  │  │  │  736.4.0:   	( 0.012179s |  0.00% |  0.37% )   ( 0.012160s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP '"${PID0}"' ${BASHPID}' HUP
│  │  │  │  737.4.0:   	( 0.012150s |  0.00% |  0.37% )   ( 0.012130s |  0.00% |  0.70% )    	(1x)	│  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  739.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  740.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  741.4.0:   	( 0.000061s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fd_read_pos_old=0
│  │  │  │  743.4.0:   	( 0.000060s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=0
│  │  │  │  745.4.0:   	( 0.086552s |  0.00% |  0.00% )   ( 0.099740s |  0.01% |  0.00% )    	(671x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  747.4.0:   	( 1.825700s |  0.19% |  0.08% )   ( 0.113671s |  0.01% |  0.00% )    	(670x)	│  │  │  │ read -u ${fd_nAuto} -t 0.1
│  │  │  │  747.4.1:   	( 0.000456s |  0.00% |  0.00% )   ( 0.000523s |  0.00% |  0.01% )    	(3x)	│  │  │  │ continue
│  │  │  │  749.4.0:   	( 0.084705s |  0.00% |  0.00% )   ( 0.097934s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${REPLY} in
│  │  │  │  763.4.0:   	( 0.087264s |  0.00% |  0.00% )   ( 0.097437s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  764.4.0:   	( 0.000062s |  0.00% |  0.00% )   ( 0.000073s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  767.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000081s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesRead=$(( nLinesRead + ${REPLY} ))
│  │  │  │  773.4.0:   	( 0.084952s |  0.00% |  0.00% )   ( 0.098012s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  774.4.0:   	( 0.087594s |  0.00% |  0.00% )   ( 0.100671s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_read 0 SEEK_CUR fd_read_pos
│  │  │  │  775.4.0:   	( 0.087715s |  0.00% |  0.00% )   ( 0.100622s |  0.01% |  0.00% )    	(667x)	│  │  │  │ lseek $fd_write 0 SEEK_CUR fd_write_pos
│  │  │  │  782.4.0:   	( 0.084065s |  0.00% |  0.00% )   ( 0.097118s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  782.4.1:   	( 0.000067s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesEst=$(( ( ( 1 + ${nLinesRead} ) * ( 1 + ${fd_write_pos} ) ) / ( 1 + ${fd_read_pos} ) ))
│  │  │  │  784.4.0:   	( 0.084678s |  0.00% |  0.00% )   ( 0.097694s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  786.4.0:   	( 0.084624s |  0.00% |  0.00% )   ( 0.097782s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  788.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  790.4.0:   	( 0.000066s |  0.00% |  0.00% )   ( 0.000078s |  0.00% |  0.00% )    	(1x)	│  │  │  │ [[ -d "${tmpDir}"/.wait ]]
│  │  │  │  791.4.0:   	( 0.007942s |  0.00% |  0.24% )   ( 0.008616s |  0.00% |  0.49% )    	(1x)	│  │  │  │ mapfile -t nProcsA < <(: | cat "${tmpDir}"/.wait 2> /dev/null) (&)
│  │  │  │  791.4.1:   	( 0.003812s |  0.00% |  0.11% )   ( 0.004374s |  0.00% |  0.25% )    	(1x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  └─ 791.5.0:  	( 0.003812s |  0.00% |100.00% )   ( 0.004374s |  0.00% |100.00% )    	(1x)	│  │  │  │  └─: | cat "${tmpDir}"/.wait 2> /dev/null
│  │  │  │  792.4.0:   	( 0.000109s |  0.00% |  0.00% )   ( 0.000123s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nProcsA=(${nProcsA//0/})
│  │  │  │  793.4.0:   	( 0.000065s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${#nProcsA[@]} > 0 ))
│  │  │  │  796.4.0:   	( 0.000068s |  0.00% |  0.00% )   ( 0.000079s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=$(( 1 + ( ( nLinesEst - nLinesRead ) / ( 1 + ${nProcs} ) ) ))
│  │  │  │  798.4.0:   	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} > ${nLinesCur} ))
│  │  │  │  800.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000077s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${nLinesNew} >= ${nLinesMax} ))
│  │  │  │  800.4.1:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesNew=${nLinesMax}
│  │  │  │  800.4.2:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  802.4.0:   	( 0.000088s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │  │ printf '%s\n' ${nLinesNew} > "${tmpDir}"/.nLines
│  │  │  │  805.4.0:   	( 0.000063s |  0.00% |  0.00% )   ( 0.000074s |  0.00% |  0.00% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  807.4.0:   	( 0.000069s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesCur=${nLinesNew}
│  │  │  │  811.4.0:   	( 0.084140s |  0.00% |  0.00% )   ( 0.097259s |  0.01% |  0.00% )    	(667x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  812.4.0:   	( 0.083156s |  0.00% |  0.00% )   ( 0.096319s |  0.01% |  0.00% )    	(667x)	│  │  │  │ case ${nWait} in
│  │  │  │  823.4.0:   	( 0.081231s |  0.00% |  0.00% )   ( 0.093756s |  0.01% |  0.00% )    	(646x)	│  │  │  │ ((nWait--))
│  │  │  │  828.4.0:   	( 0.087294s |  0.00% |  0.00% )   ( 0.100288s |  0.01% |  0.00% )    	(667x)	│  │  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  │  763.4.1:   	( 0.085280s |  0.00% |  0.00% )   ( 0.098393s |  0.01% |  0.00% )    	(665x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  782.4.1:   	( 0.085218s |  0.00% |  0.00% )   ( 0.098287s |  0.01% |  0.00% )    	(666x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  814.4.0:   	( 0.002753s |  0.00% |  0.00% )   ( 0.003181s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos=$(( 4096 * ( ${fd_read_pos} / 4096 ) ))
│  │  │  │  815.4.0:   	( 0.002631s |  0.00% |  0.00% )   ( 0.003043s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${fd_read_pos} > ${fd_read_pos_old} ))
│  │  │  │  816.4.0:   	( 0.071958s |  0.00% |  0.10% )   ( 0.047387s |  0.00% |  0.13% )    	(21x)	│  │  │  │ fallocate -p -o ${fd_read_pos_old} -l $(( ${fd_read_pos} - ${fd_read_pos_old} )) "${fPath}"
│  │  │  │  817.4.0:   	( 0.002738s |  0.00% |  0.00% )   ( 0.003162s |  0.00% |  0.00% )    	(21x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  818.4.0:   	( 0.002830s |  0.00% |  0.00% )   ( 0.003284s |  0.00% |  0.00% )    	(21x)	│  │  │  │ fd_read_pos_old=${fd_read_pos}
│  │  │  │  820.4.0:   	( 0.002941s |  0.00% |  0.00% )   ( 0.003373s |  0.00% |  0.00% )    	(21x)	│  │  │  │ nWait=$(( 16 + ( ${nProcs} / 2 ) ))
│  │  │  │  757.4.0:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  829.4.0:   	( 0.000133s |  0.00% |  0.00% )   ( 0.000149s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nLinesAutoFlag=false
│  │  │  │  830.4.0:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │  │ fallocateFlag=false
│  │  │  │  831.4.0:   	( 0.000125s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │  │ nSpawnFlag=false
│  │  │  │  745.4.1:   	( 0.000124s |  0.00% |  0.00% )   ( 0.000145s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  745.4.2:   	( 0.000142s |  0.00% |  0.00% )   ( 0.000163s |  0.00% |  0.00% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ -248.4.0:  	( 0.005846s |  0.00% |  0.17% )   ( 0.005939s |  0.00% |  0.34% )    	(1x)	│  │  │  └─'TRAP (EXIT): [[ -f "/dev/shm/.forkrun.nHE5hw"/.run/pAuto ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/pAuto'
│  │  │  839.3.0:      	( 0.000072s |  0.00% |  0.00% )   ( 0.000083s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='printf '"'"'0\n'"'"' >&'"${fd_nAuto}"'; ''$'\n''
│  │  │  840.3.0:      	( 0.000092s |  0.00% |  0.00% )   ( 0.000105s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '%s\n' "${pAuto_PID}" > "${tmpDir}"/.run/pAuto
│  │  │  876.3.0:      	( 0.000089s |  0.00% |  0.00% )   ( 0.000101s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1345.3.0:     	( 0.001909s |  0.00% |  0.00% )   ( 0.001174s |  0.00% |  0.00% )    	(1x)	│  │  │ coprocSrcCode="$(echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"$'\n'echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""$'\n'if ${readBytesFlag}; then$'\n'    case "${readBytesProg}" in $'\n'        'dd')$'\n'            printf 'dd bs=32768 count=%sB of="%s"/.stdin.tmp.{<#>} 2>"%s"/.stdin.tmp-status.{<#>} ' "${nBytes}" "${tmpDir}" "${tmpDir}"$'\n'${pipeReadFlag} && printf 'iflag=fullblock <&%s\n' "${fd_stdin}" || printf '<&%s\n' "${fd_read}"$'\n'printf '[[ "$(<"%s"/.stdin.tmp-status.{<#>})" == *$'"'"'\\n'"'"'"0 bytes"* ]] && A=() || A[0]=1\n' "${tmpDir}"$'\n'        ;;$'\n'        'head')$'\n'            printf 'head -c %s ' "${nBytes}"$'\n'${pipeReadFlag} && printf '<&%s ' "${fd_stdin}" || printf '<&%s ' "${fd_read}"$'\n'printf '>"%s"/.stdin.tmp.{<#>}\n' "${tmpDir}"$'\n'printf '[[ $(<"%s"/.stdin.tmp.{<#>}) ]] 2>/dev/null && A[0]=1 || A=()\n' "${tmpDir}"$'\n'        ;;$'\n'        'bash')$'\n'            if ${stdinRunFlag}; then$'\n'                [[ -n ${tTimeout} ]] && echo "SECONDS=0"$'\n'printf 'if read -r -d '"''"' -n %s -u %s' "${nBytes}" "${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=('')$'\n'                trailingNullFlag=true"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=1'$'\n'echo """$'\n'            else$'\n'                [[ \${REPLY} ]] && A=(\"\${REPLY}\") || A=()$'\n'                trailingNullFlag=false"""$'\n'${readBytesExactFlag} && echo 'nBytesRead=0'$'\n'echo 'fi'$'\n'if ${readBytesExactFlag}; then$'\n'                    echo """$'\n'            nBytesRead+=\${#REPLY}$'\n'            [[ \${nBytesRead} == 0 ]] || (( \${nBytesRead} >= ${nBytes} )) || {"""$'\n'[[ -n ${tTimeout} ]] && echo "while (( \${SECONDS} < ${tTimeout} )); do" || echo "while true; do"$'\n'echo "[[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"$'\n'printf "if read -r -d '' -n \$(( ${nBytes} - \${nBytesRead} )) -u ${fd_read}"$'\n'[[ -n ${tTimeout} ]] && printf ' -t %s' "${tTimeout}"$'\n'echo """; then$'\n'                    ((nBytesRead++))$'\n'                    nBytesRead+=\${#REPLY}$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\") || A+=('')$'\n'                    (( \${nBytesRead} >= ${nBytes} )) && { trailingNullFlag=true; break; }$'\n'                else$'\n'                    trailingNullFlag=false$'\n'                    [[ \${REPLY} ]] && A+=(\"\${REPLY}\")$'\n'                    { (( \${nBytesRead} >= ${nBytes} )) || ${doneIndicatorFlag}; } && { trailingNullFlag=false; break; }$'\n'                    break$'\n'                fi$'\n'            done$'\n'        }""";$'\n'                fi$'\n'echo """$'\n'        {$'\n'            if \${trailingNullFlag}; then$'\n'                printf '%s\0' \"\${A[@]}\" $'\n'            else$'\n'                printf '%s' \"\${A[0]}\" $'\n'                printf '\0%s' \"\${A[@]:1}\"$'\n'            fi $'\n'        } >\"${tmpDir}\"/.stdin.tmp.{<#>}""";$'\n'            else$'\n'                printf 'read -r -N %s -u ' "${nBytes}"$'\n'if ${readBytesExactFlag}; then$'\n'                    printf '%s ' "${fd_stdin}"$'\n'[[ -n ${tTimeout} ]] && printf '-t %s ' "${tTimeout} ";$'\n'                else$'\n'                    printf '%s ' ${fd_read};$'\n'                fi$'\n'echo '-a A';$'\n'            fi$'\n'        ;;$'\n'    esac;$'\n'else$'\n'    ${nLinesReadLimitFlag} && printf '%s' """read -r nLinesRead <\"${tmpDir}\"/.nLinesRead$'\n'    (( ( nLinesReadLimit - nLinesRead ) < nLinesCur )) && nLinesCur=\$(( nLinesReadLimit - nLinesRead ))$'\n'    (( nLinesCur == 0 )) && A=() || """$'\n'echo "{"$'\n'${nOrderFlag} && echo "order_get nOrder"$'\n'${pipeReadFlag} || echo "evfd_wait ${fd_nSpawn}"$'\n'printf '%s ' "mapfile"$'\n'${lseekFlag} && printf '%s ' '-t'$'\n'printf '%s ' '-n' "\${nLinesCur}" '-u'$'\n'${pipeReadFlag} && printf '%s ' ${fd_stdin} || printf '%s ' ${fd_read}$'\n'{ ${pipeReadFlag} || ${nullDelimiterFlag}; } && printf '%s ' '-t'$'\n'echo """${delimiterReadStr} A$'\n'    }"""$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || { echo "[[ \${#A[@]} == 0 ]] || \${doneIndicatorFlag} || {"$'\n'if ${lseekFlag}; then$'\n'        echo """$'\n'                lseek ${fd_read} -1 SEEK_CUR ''$'\n'                read -r -u ${fd_read} -N 1"""$'\n'if ${nullDelimiterFlag}; then$'\n'            echo "[[ \${#REPLY} == 0 ]] || {";$'\n'        else$'\n'            echo "[[ \"\${REPLY}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    else$'\n'        if ${nullDelimiterFlag}; then$'\n'            echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read}"""$'\n'case "${nullDelimiterProg}" in $'\n'                'dd')$'\n'                    echo """$'\n'                { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } || {"""$'\n'                ;;$'\n'                'bash')$'\n'                    echo """$'\n'                IFS=\$'\\t' read -r _ fd_read_pos0 </proc/self/fdinfo/${fd_read0}$'\n'                nBytes=\$(( fd_read_pos - fd_read_pos0 - \${#A[@]} ))"""$'\n'if ${ddAvailableFlag}; then$'\n'                        echo """$'\n'                    {$'\n'                        if (( \${nBytes}  > 65535 )); then$'\n'                            { dd if=\"${fPath}\" bs=1 count=1 ${ddQuietStr} skip=\$(( fd_read_pos - 1 )) | read -t 1 -r -d ''; } $'\n'                        else$'\n'                            read -r -u ${fd_read0} -N \${nBytes} _$'\n'                            read -r -u ${fd_read0} -d ''$'\n'                            [[ \${#REPLY} == 0 ]]$'\n'                        fi$'\n'                    } || {""";$'\n'                    else$'\n'                        echo """$'\n'                    read -r -u ${fd_read0} -N \${nBytes} _$'\n'                    read -r -u ${fd_read0} -d ''$'\n'                    [[ \${#REPLY} == 0 ]] || {""";$'\n'                    fi$'\n'                ;;$'\n'            esac;$'\n'        else$'\n'            echo "[[ \"\${A[-1]: -1}\" == ${delimiterVal} ]] || {";$'\n'        fi;$'\n'    fi$'\n'(( ${verboseLevel} > 2 )) && echo """$'\n'                echo \"Partial read at: \${A[-1]}\" >&${fd_stderr}"""$'\n'echo """$'\n'                until read -r -u ${fd_read} ${delimiterReadStr}; do $'\n'                    A[-1]+=\"\${REPLY}\"; $'\n'                done"""$'\n'printf '%s' "A[-1]+=\"\${REPLY}\""$'\n'${lseekFlag} && printf '\n' || printf '%s\n' "${delimiterVal}"$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"Partial read fixed to: \${A[-1]}\" >&${fd_stderr}"$'\n'echo "}"; };$'\n'fi$'\n'${pipeReadFlag} || { ${nullDelimiterFlag} && [[ -z ${nullDelimiterProg} ]]; } || ${readBytesFlag} || echo "}"$'\n'${nLinesReadLimitFlag} && echo """$'\n'nLinesRead+=\${#A[@]}$'\n'echo \${nLinesRead} >\"${tmpDir}\"/.nLinesRead$'\n'(( nLinesRead == nLinesReadLimit )) && {$'\n'    : >\"${tmpDir}\"/.quit$'\n'    echo '0' >\"${tmpDir}\"/.nLines$'\n'}$'\n'"""$'\n'echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""$'\n'if ${lseekPosFlag}; then$'\n'    echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos""";$'\n'else$'\n'    echo """$'\n'            IFS=\$'\\t' read -r _ fd_read_pos </proc/self/fdinfo/${fd_read};$'\n'            IFS=\$'\\t' read -r _ fd_write_pos </proc/self/fdinfo/${fd_write}; $'\n'                """;$'\n'fi$'\n'echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""$'\n'${nLinesAutoFlag} && echo "printf 'x\\n' >&\${fd_nAuto0}"$'\n'${nOrderFlag} && echo ": >\"${tmpDir}\"/.out/.quit{<#>}"$'\n'${nSpawnFlag} && echo """printf 'q\\n' >&${fd_nSpawn}$'\n'            printf 'q\\n' >&\${fd_nAuto0}"""$'\n'echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""$'\n'${nOrderFlag} && echo """else$'\n'            printf 'x%s\n' \"\${nOrder}\" >&\${fd_nOrder0}"""$'\n'echo """fi$'\n'        continue$'\n'    }"""$'\n'{ ${nLinesAutoFlag} || ${nSpawnFlag}; } && { printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""$'\n'${fallocateFlag} && printf '%s' ' || ' || echo; }$'\n'${fallocateFlag} && echo "printf '\\n' >&\${fd_nAuto0}"$'\n'${pipeReadFlag} || ${nullDelimiterFlag} || ${readBytesFlag} || ${lseekFlag} || { echo """$'\n'        { [[ \"\${A[*]##*${delimiterVal}}\" ]] || [[ -z \${A[0]} ]]; } && {"""$'\n'(( ${verboseLevel} > 2 )) && echo "echo \"FIXING SPLIT READ\" >&${fd_stderr}"$'\n'echo """$'\n'            A[-1]=\"\${A[-1]%${delimiterVal}}\"$'\n'            IFS=$'\n'            mapfile ${delimiterReadStr} A <<<\"\${A[*]}\"$'\n'        }"""; }$'\n'${subshellRunFlag} && echo '(' || echo '{'$'\n'{ ${exportOrderFlag} || { ${nOrderFlag} && ${substituteStringIDFlag}; }; } && echo 'nOrder0="${nOrder:1}"'$'\n'${exportOrderFlag} && echo "printf '\034%s:\035\n' \"\${nOrder0}\""$'\n'printf '%s ' "${runCmd[@]}"$'\n'if ${readBytesFlag} && ! { [[ ${readBytesProg} == 'bash' ]] && ! ${stdinRunFlag}; }; then$'\n'    if ${stdinRunFlag} || ${noFuncFlag}; then$'\n'        printf '<"%s"/%s' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    else$'\n'        printf '"$(<"%s"/%s)"' "${tmpDir}" '.stdin.tmp.{<#>}';$'\n'    fi;$'\n'else$'\n'    if ${stdinRunFlag}; then$'\n'        printf '<<<%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'    else$'\n'        if ${noFuncFlag}; then$'\n'            printf "<<<\"\${A[*]%s}\"" "${delimiterRemoveStr}";$'\n'        else$'\n'            if ! ${substituteStringFlag}; then$'\n'                printf '%s' "\"\${A[@]${delimiterRemoveStr}}\"";$'\n'            fi;$'\n'        fi;$'\n'    fi;$'\n'fi$'\n'(( ${verboseLevel} > 2 )) && echo """ || {$'\n'        {$'\n'            printf '\\n\\n----------------------------------------------\\n\\n'$'\n'            echo 'ERROR DURING \"${runCmd[*]}\" CALL'$'\n'            declare -p A nLinesCur nLinesAutoFlag$'\n'            echo 'fd_read:'$'\n'            cat /proc/self/fdinfo/${fd_read}$'\n'            echo 'fd_write:'$'\n'            cat /proc/self/fdinfo/${fd_write}$'\n'            echo$'\n'        } >&${fd_stderr}$'\n'    }"""$'\n'${readBytesFlag} && { [[ -n ${readBytesProg//bash/} ]] || ${stdinRunFlag}; } && printf '\n\\rm -f "'"${tmpDir}"'"/.stdin.tmp.{<#>}\n'$'\n'${subshellRunFlag} && printf '\n%s ' ')' || printf '\n%s ' '}'$'\n'echo "${outStr}"$'\n'${nOrderFlag} && echo "printf '%s\\n' \"\${nOrder}\" >&${fd_nOrder0}"$'\n'${nSpawnFlag} && echo "printf 'l%s\\nt%s\\n' \${#A[@]} \${EPOCHREALTIME//./} >&${fd_nSpawn}"$'\n'echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})""")"
│  │  │  1362.3.0:     	( 0.005077s |  0.00% |  0.00% )   ( 0.005859s |  0.00% |  0.00% )    	(1x)	│  │  │ << (SUBSHELL) >>
│  │  │  │  1362.4.0:  	( 0.000419s |  0.00% |  8.25% )   ( 0.000455s |  0.00% |  7.76% )    	(1x)	│  │  │  │ echo """$'\n'local p{<#>} p{<#>}_PID$'\n'$'\n'{ coproc p{<#>} {$'\n'export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR=\"${tmpDir}\"$'\n'$'\n'echo \"\${BASH_PID}\" >\"${tmpDir}\"/.run/p{<#>}$'\n'$'\n'trap ': >\"${tmpDir}\"/.quit; $'\n'[[ -f \"${tmpDir}\"/.run/p{<#>} ]] && \\rm -f \"${tmpDir}\"/.run/p{<#>}; $'\n'printf '\"'\"'\n'\"'\"' >&${fd_continue}' EXIT$'\n'$'\n'trap 'trap - TERM INT HUP USR1; kill -INT ${PID0} \${BASHPID}' INT$'\n'trap 'trap - TERM INT HUP USR1; kill -TERM ${PID0} \${BASHPID}' TERM$'\n'trap 'trap - TERM INT HUP USR1; kill -HUP ${PID0} \${BASHPID}' HUP$'\n'trap 'trap - TERM INT HUP USR1' USR1$'\n'$'\n'while true; do"""
│  │  │  │  1363.4.0:  	( 0.000266s |  0.00% |  5.23% )   ( 0.000309s |  0.00% |  5.27% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1363.4.1:  	( 0.000075s |  0.00% |  1.47% )   ( 0.000087s |  0.00% |  1.48% )    	(1x)	│  │  │  │ echo "{ \${nLinesAutoFlag} || \${nSpawnFlag}; } && read -r <\"${tmpDir}\"/.nLines && [[ \${REPLY} == +([0-9]) ]] && nLinesCur=\${REPLY}"
│  │  │  │  1371.4.0:  	( 0.000213s |  0.00% |  4.19% )   ( 0.000226s |  0.00% |  3.85% )    	(1x)	│  │  │  │ echo """$'\n'    echo 1 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    read -r -u ${fd_continue} _$'\n'    [[ -f \"${tmpDir}\"/.quit ]] && {$'\n'        printf '\n' >&${fd_continue}$'\n'        break$'\n'    }$'\n'    [[ -f \"${tmpDir}\"/.done ]] && doneIndicatorFlag=true"""
│  │  │  │  1372.4.0:  	( 0.000060s |  0.00% |  1.18% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1444.4.0:  	( 0.000065s |  0.00% |  1.28% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1447.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ echo "{"
│  │  │  │  1448.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1449.4.0:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1449.4.1:  	( 0.000063s |  0.00% |  1.24% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ echo "evfd_wait ${fd_nSpawn}"
│  │  │  │  1450.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s ' "mapfile"
│  │  │  │  1451.4.0:  	( 0.000059s |  0.00% |  1.16% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${lseekFlag}
│  │  │  │  1451.4.1:  	( 0.000065s |  0.00% |  1.28% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1452.4.0:  	( 0.000065s |  0.00% |  1.28% )   ( 0.000077s |  0.00% |  1.31% )    	(1x)	│  │  │  │ printf '%s ' '-n' "\${nLinesCur}" '-u'
│  │  │  │  1453.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1453.4.1:  	( 0.000063s |  0.00% |  1.24% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ printf '%s ' ${fd_read}
│  │  │  │  1454.4.0:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1454.4.1:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1454.4.2:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ printf '%s ' '-t'
│  │  │  │  1456.4.0:  	( 0.000066s |  0.00% |  1.29% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ echo """${delimiterReadStr} A$'\n'    }"""
│  │  │  │  1457.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1457.4.1:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1457.4.2:  	( 0.000091s |  0.00% |  1.79% )   ( 0.000102s |  0.00% |  1.74% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1514.4.0:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1514.4.1:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1514.4.2:  	( 0.000069s |  0.00% |  1.35% )   ( 0.000080s |  0.00% |  1.36% )    	(1x)	│  │  │  │ [[ -z ${nullDelimiterProg} ]]
│  │  │  │  1515.4.0:  	( 0.000067s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nLinesReadLimitFlag}
│  │  │  │  1528.4.0:  	( 0.000090s |  0.00% |  1.77% )   ( 0.000100s |  0.00% |  1.70% )    	(1x)	│  │  │  │ echo """$'\n'    printf '\\n' >&${fd_continue}$'\n'    echo 0 >\"${tmpDir}\"/.wait/p{<#>}$'\n'    [[ \${#A[@]} == 0 ]] && {$'\n'        \${doneIndicatorFlag} || { $'\n'          [[ -f \"${tmpDir}\"/.done ]] && {"""
│  │  │  │  1529.4.0:  	( 0.000060s |  0.00% |  1.18% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${lseekPosFlag}
│  │  │  │  1532.4.0:  	( 0.000073s |  0.00% |  1.43% )   ( 0.000084s |  0.00% |  1.43% )    	(1x)	│  │  │  │ echo """$'\n'            lseek $fd_read 0 SEEK_CUR fd_read_pos $'\n'            lseek $fd_write 0 SEEK_CUR fd_write_pos"""
│  │  │  │  1543.4.0:  	( 0.000079s |  0.00% |  1.55% )   ( 0.000086s |  0.00% |  1.46% )    	(1x)	│  │  │  │ echo """$'\n'            [[ \"\${fd_read_pos}\" == \"\${fd_write_pos}\" ]] && doneIndicatorFlag=true$'\n'          }$'\n'        }$'\n'        if \${doneIndicatorFlag} || [[ -f \"${tmpDir}\"/.quit ]]; then"""
│  │  │  │  1544.4.0:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1544.4.1:  	( 0.000068s |  0.00% |  1.33% )   ( 0.000079s |  0.00% |  1.34% )    	(1x)	│  │  │  │ echo "printf 'x\\n' >&\${fd_nAuto0}"
│  │  │  │  1545.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1546.4.0:  	( 0.000065s |  0.00% |  1.28% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  │  1551.4.0:  	( 0.000071s |  0.00% |  1.39% )   ( 0.000083s |  0.00% |  1.41% )    	(1x)	│  │  │  │ echo """$'\n'            : >\"${tmpDir}\"/.quit$'\n'            printf '%.0s\\n' \"${tmpDir}\"/.run/p* >&${fd_continue}$'\n'            break"""
│  │  │  │  1552.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000075s |  0.00% |  1.28% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1556.4.0:  	( 0.000075s |  0.00% |  1.47% )   ( 0.000086s |  0.00% |  1.46% )    	(1x)	│  │  │  │ echo """fi$'\n'        continue$'\n'    }"""
│  │  │  │  1557.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${nLinesAutoFlag}
│  │  │  │  1557.4.1:  	( 0.000087s |  0.00% |  1.71% )   ( 0.000098s |  0.00% |  1.67% )    	(1x)	│  │  │  │ printf '%s' """$'\n'    { \${nLinesAutoFlag} || \${nSpawnFlag}; } && {$'\n'        printf '%s\\n' \${#A[@]} >&\${fd_nAuto0}$'\n'        (( \${nLinesCur} < ${nLinesMax} )) || nLinesAutoFlag=false$'\n'    }"""
│  │  │  │  1562.4.0:  	( 0.000062s |  0.00% |  1.22% )   ( 0.000073s |  0.00% |  1.24% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1562.4.1:  	( 0.000084s |  0.00% |  1.65% )   ( 0.000096s |  0.00% |  1.63% )    	(1x)	│  │  │  │ printf '%s' ' || '
│  │  │  │  1563.4.0:  	( 0.000060s |  0.00% |  1.18% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${fallocateFlag}
│  │  │  │  1563.4.1:  	( 0.000077s |  0.00% |  1.51% )   ( 0.000090s |  0.00% |  1.53% )    	(1x)	│  │  │  │ echo "printf '\\n' >&\${fd_nAuto0}"
│  │  │  │  1564.4.0:  	( 0.000060s |  0.00% |  1.18% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${pipeReadFlag}
│  │  │  │  1564.4.1:  	( 0.000063s |  0.00% |  1.24% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${nullDelimiterFlag}
│  │  │  │  1572.4.0:  	( 0.000068s |  0.00% |  1.33% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1572.4.1:  	( 0.000083s |  0.00% |  1.63% )   ( 0.000094s |  0.00% |  1.60% )    	(1x)	│  │  │  │ echo '{'
│  │  │  │  1573.4.0:  	( 0.000059s |  0.00% |  1.16% )   ( 0.000071s |  0.00% |  1.21% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1573.4.1:  	( 0.000069s |  0.00% |  1.35% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1574.4.0:  	( 0.000063s |  0.00% |  1.24% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${exportOrderFlag}
│  │  │  │  1575.4.0:  	( 0.000098s |  0.00% |  1.93% )   ( 0.000110s |  0.00% |  1.87% )    	(1x)	│  │  │  │ printf '%s ' "${runCmd[@]}"
│  │  │  │  1576.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1583.4.0:  	( 0.000056s |  0.00% |  1.10% )   ( 0.000068s |  0.00% |  1.16% )    	(1x)	│  │  │  │ ${stdinRunFlag}
│  │  │  │  1586.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000072s |  0.00% |  1.22% )    	(1x)	│  │  │  │ ${noFuncFlag}
│  │  │  │  1589.4.0:  	( 0.000061s |  0.00% |  1.20% )   ( 0.000083s |  0.00% |  1.41% )    	(1x)	│  │  │  │ ${substituteStringFlag}
│  │  │  │  1590.4.0:  	( 0.000093s |  0.00% |  1.83% )   ( 0.000104s |  0.00% |  1.77% )    	(1x)	│  │  │  │ printf '%s' "\"\${A[@]${delimiterRemoveStr}}\""
│  │  │  │  1595.4.0:  	( 0.000067s |  0.00% |  1.31% )   ( 0.000078s |  0.00% |  1.33% )    	(1x)	│  │  │  │ (( ${verboseLevel} > 2 ))
│  │  │  │  1607.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000074s |  0.00% |  1.26% )    	(1x)	│  │  │  │ ${readBytesFlag}
│  │  │  │  1608.4.0:  	( 0.000058s |  0.00% |  1.14% )   ( 0.000069s |  0.00% |  1.17% )    	(1x)	│  │  │  │ ${subshellRunFlag}
│  │  │  │  1608.4.1:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │ printf '\n%s ' '}'
│  │  │  │  1609.4.0:  	( 0.000066s |  0.00% |  1.29% )   ( 0.000077s |  0.00% |  1.31% )    	(1x)	│  │  │  │ echo "${outStr}"
│  │  │  │  1610.4.0:  	( 0.000065s |  0.00% |  1.28% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nOrderFlag}
│  │  │  │  1611.4.0:  	( 0.000064s |  0.00% |  1.26% )   ( 0.000076s |  0.00% |  1.29% )    	(1x)	│  │  │  │ ${nSpawnFlag}
│  │  │  └─ 1616.4.0:  	( 0.000080s |  0.00% |  1.57% )   ( 0.000092s |  0.00% |  1.57% )    	(1x)	│  │  │  └─echo """$'\n'done$'\n'} 2>&${fd_stderr} {fd_nAuto0}>&${fd_nAuto}$'\n'} 2>/dev/null$'\n'p_PID+=(\${p{<#>}_PID})"""
│  │  │  1350.3.0:     	( 0.000247s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1355.3.0:     	( 0.000269s |  0.00% |  0.00% )   ( 0.000307s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='kill $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null;$'\n'        kill -9 '"${exitTrapStr_kill}"' 2>/dev/null; $'\n'        kill -9 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) 2>/dev/null; ''$'\n''
│  │  │  1360.3.0:     	( 0.000064s |  0.00% |  0.00% )   ( 0.000075s |  0.00% |  0.00% )    	(1x)	│  │  │ exitTrapStr+='trap - INT TERM HUP USR1; $'\n'        return ${returnVal:-0}'
│  │  │  1362.3.0:     	( 0.012459s |  0.00% |  0.00% )   ( 0.012436s |  0.00% |  0.00% )    	(1x)	│  │  │ trap "${exitTrapStr}" EXIT
│  │  │  1367.3.0:     	( 0.012315s |  0.00% |  0.00% )   ( 0.099778s |  0.01% |  0.02% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -INT $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" INT
│  │  │  1372.3.0:     	( 0.012230s |  0.00% |  0.00% )   ( 0.012213s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -TERM $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" TERM
│  │  │  1377.3.0:     	( 0.012155s |  0.00% |  0.00% )   ( 0.012129s |  0.00% |  0.00% )    	(1x)	│  │  │ trap 'trap - TERM INT HUP USR1; $'\n'        returnVal=1; $'\n'        kill -USR1 $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null); $'\n'        kill -HUP $(cat </dev/null "'"${tmpDir}"'"/.run/p* 2>/dev/null) '"${PID0}" HUP
│  │  │  1379.3.0:     	( 0.000069s |  0.00% |  0.00% )   ( 0.000076s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1380.3.0:     	( 0.000061s |  0.00% |  0.00% )   ( 0.000071s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1382.3.0:     	( 0.000059s |  0.00% |  0.00% )   ( 0.000070s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1393.3.0:     	( 0.000073s |  0.00% |  0.00% )   ( 0.000080s |  0.00% |  0.00% )    	(1x)	│  │  │ printf '\n' >&${fd_continue}
│  │  │  1396.3.0:     	( 0.000058s |  0.00% |  0.00% )   ( 0.000069s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1397.3.0:     	( 0.000057s |  0.00% |  0.00% )   ( 0.000068s |  0.00% |  0.00% )    	(1x)	│  │  │ ((kkProcs=0 ))
│  │  │  1397.3.1:     	( 0.002747s |  0.00% |  0.00% )   ( 0.003185s |  0.00% |  0.00% )    	(29x)	│  │  │ ((kkProcs<28 ))
│  │  │  1398.3.0:     	( 0.002680s |  0.00% |  0.00% )   ( 0.003094s |  0.00% |  0.00% )    	(28x)	│  │  │ [[ -f "${tmpDir}"/.quit ]]
│  │  │  1399.3.0:     	( 63.619166s |  6.88% |  3.44% )   ( 60.754104s |  7.21% |  3.60% )    	(4x)	│  │  │ << (FUNCTION): .local p0 p0_PID >>
│  │  │  │  1.4.0:     	( 0.002355s |  0.00% |  0.00% )   ( 0.002419s |  0.00% |  0.00% )    	(4x)	│  │  │  │ local p0 p0_PID (&)
│  │  │  │  73.4.0:    	( 63.616490s |  6.88% | 99.99% )   ( 60.751315s |  7.21% | 99.99% )    	(4x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.000689s |  0.00% |  0.00% )   ( 0.000777s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.nHE5hw"
│  │  │  │  │  8.5.0:  	( 0.000726s |  0.00% |  0.00% )   ( 0.000806s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.nHE5hw"/.run/p0
│  │  │  │  │  12.5.0: 	( 0.049873s |  0.00% |  0.07% )   ( 0.049761s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.nHE5hw"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p0; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.049196s |  0.00% |  0.07% )   ( 0.049023s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1784697 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.049475s |  0.00% |  0.07% )   ( 0.049368s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1784697 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.049751s |  0.00% |  0.07% )   ( 0.049658s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1784697 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.050195s |  0.00% |  0.07% )   ( 0.050076s |  0.00% |  0.08% )    	(4x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.019024s |  0.00% |  0.00% )   ( 0.018603s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.014383s |  0.00% |  0.00% )   ( 0.016533s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000870s |  0.00% |  0.00% )   ( 0.000955s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.nHE5hw"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000677s |  0.00% |  0.00% )   ( 0.000790s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000717s |  0.00% |  0.00% )   ( 0.000818s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.018186s |  0.00% |  0.00% )   ( 0.020300s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.nHE5hw"/.wait/p0
│  │  │  │  │  23.5.0: 	( 0.663149s |  0.07% |  0.03% )   ( 0.022602s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.015563s |  0.00% |  0.00% )   ( 0.017634s |  0.00% |  0.00% )    	(109x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.014388s |  0.00% |  0.00% )   ( 0.016186s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.013417s |  0.00% |  0.00% )   ( 0.015414s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.014165s |  0.00% |  0.00% )   ( 0.016133s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.120519s |  0.01% |  0.00% )   ( 0.122265s |  0.01% |  0.00% )    	(105x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.015686s |  0.00% |  0.00% )   ( 0.017010s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.017346s |  0.00% |  0.00% )   ( 0.019419s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.nHE5hw"/.wait/p0
│  │  │  │  │  36.5.0: 	( 0.013543s |  0.00% |  0.00% )   ( 0.015588s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.013368s |  0.00% |  0.00% )   ( 0.015425s |  0.00% |  0.00% )    	(105x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000775s |  0.00% |  0.00% )   ( 0.000895s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000694s |  0.00% |  0.00% )   ( 0.000810s |  0.00% |  0.00% )    	(8x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  61.5.0: 	( 62.335500s |  6.74% |  3.72% )   ( 60.090346s |  7.13% |  3.76% )    	(105x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.012926s |  0.00% |  0.02% )   ( 0.015112s |  0.00% |  0.02% )    	(105x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 4.245421s |  0.45% |  6.81% )   ( 4.105927s |  0.48% |  6.83% )    	(105x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 6.867465s |  0.74% | 11.01% )   ( 6.708090s |  0.79% | 11.16% )    	(105x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 5.913667s |  0.63% |  9.48% )   ( 5.729606s |  0.68% |  9.53% )    	(105x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 6.896892s |  0.74% | 11.06% )   ( 6.651729s |  0.79% | 11.06% )    	(105x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 5.649306s |  0.61% |  9.06% )   ( 5.495120s |  0.65% |  9.14% )    	(105x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 3.865396s |  0.41% |  6.20% )   ( 3.721207s |  0.44% |  6.19% )    	(105x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 2.302469s |  0.24% |  3.69% )   ( 2.114642s |  0.25% |  3.51% )    	(105x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 4.063284s |  0.43% |  6.51% )   ( 3.863265s |  0.45% |  6.42% )    	(105x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 2.001703s |  0.21% |  3.21% )   ( 1.886904s |  0.22% |  3.14% )    	(105x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 5.224837s |  0.56% |  8.38% )   ( 5.021606s |  0.59% |  8.35% )    	(105x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 10.753604s |  1.16% | 17.25% )   ( 10.495587s |  1.24% | 17.46% )    	(105x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 2.332091s |  0.25% |  3.74% )   ( 2.179015s |  0.25% |  3.62% )    	(105x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 2.206439s |  0.23% |  3.53% )   ( 2.102536s |  0.24% |  3.49% )    	(105x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  58.5.1: 	( 0.000410s |  0.00% |  0.00% )   ( 0.000475s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  20.5.1: 	( 0.014044s |  0.00% |  0.00% )   ( 0.016101s |  0.00% |  0.00% )    	(101x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.012734s |  0.00% |  0.00% )   ( 0.014651s |  0.00% |  0.00% )    	(97x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.021503s |  0.00% |  0.00% )   ( 0.016551s |  0.00% |  0.00% )    	(97x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.000401s |  0.00% |  0.00% )   ( 0.000461s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.000421s |  0.00% |  0.00% )   ( 0.000485s |  0.00% |  0.00% )    	(4x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.025102s |  0.00% |  0.03% )   ( 0.025396s |  0.00% |  0.04% )    	(4x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.nHE5hw"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p0 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p0\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000321s |  0.00% |  0.00% )   ( 0.000370s |  0.00% |  0.00% )    	(4x)	│  │  │  └─p_PID+=(${p0_PID})
│  │  │  1397.3.0:     	( 0.002589s |  0.00% |  0.00% )   ( 0.003019s |  0.00% |  0.00% )    	(28x)	│  │  │ ((kkProcs++ ))
│  │  │  1399.3.0:     	( 345.303991s | 37.35% |  3.40% )   ( 329.452219s | 39.14% |  3.55% )    	(22x)	│  │  │ << (FUNCTION): .local p4 p4_PID >>
│  │  │  │  1.4.0:     	( 0.018790s |  0.00% |  0.00% )   ( 0.019301s |  0.00% |  0.00% )    	(22x)	│  │  │  │ local p4 p4_PID (&)
│  │  │  │  73.4.0:    	( 345.282497s | 37.35% | 99.99% )   ( 329.429857s | 39.14% | 99.99% )    	(22x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.004098s |  0.00% |  0.00% )   ( 0.004620s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.nHE5hw"
│  │  │  │  │  8.5.0:  	( 0.003784s |  0.00% |  0.00% )   ( 0.004264s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.nHE5hw"/.run/p4
│  │  │  │  │  12.5.0: 	( 0.429091s |  0.04% |  0.12% )   ( 0.418007s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.nHE5hw"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p4; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.455406s |  0.04% |  0.13% )   ( 0.444968s |  0.05% |  0.13% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1784697 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.417956s |  0.04% |  0.12% )   ( 0.416769s |  0.04% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1784697 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.429617s |  0.04% |  0.12% )   ( 0.428292s |  0.05% |  0.13% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1784697 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.429484s |  0.04% |  0.12% )   ( 0.428238s |  0.05% |  0.12% )    	(22x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.084526s |  0.00% |  0.00% )   ( 0.095598s |  0.01% |  0.00% )    	(541x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.074525s |  0.00% |  0.00% )   ( 0.085322s |  0.01% |  0.00% )    	(541x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.002638s |  0.00% |  0.00% )   ( 0.002996s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.nHE5hw"/.nLines
│  │  │  │  │  20.5.2: 	( 0.002198s |  0.00% |  0.00% )   ( 0.002553s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.002271s |  0.00% |  0.00% )   ( 0.002617s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.092011s |  0.00% |  0.00% )   ( 0.103081s |  0.01% |  0.00% )    	(541x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.nHE5hw"/.wait/p4
│  │  │  │  │  23.5.0: 	( 4.240431s |  0.45% |  0.04% )   ( 0.118380s |  0.01% |  0.00% )    	(541x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.079506s |  0.00% |  0.00% )   ( 0.090538s |  0.01% |  0.00% )    	(541x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.080759s |  0.00% |  0.00% )   ( 0.084989s |  0.01% |  0.00% )    	(519x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.070515s |  0.00% |  0.00% )   ( 0.080753s |  0.00% |  0.00% )    	(519x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.077130s |  0.00% |  0.00% )   ( 0.084759s |  0.01% |  0.00% )    	(519x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.640077s |  0.06% |  0.00% )   ( 0.625657s |  0.07% |  0.00% )    	(519x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.124349s |  0.01% |  0.00% )   ( 0.088427s |  0.01% |  0.00% )    	(519x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.087627s |  0.00% |  0.00% )   ( 0.098370s |  0.01% |  0.00% )    	(519x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.nHE5hw"/.wait/p4
│  │  │  │  │  36.5.0: 	( 0.070494s |  0.00% |  0.00% )   ( 0.080290s |  0.00% |  0.00% )    	(519x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.068974s |  0.00% |  0.00% )   ( 0.079322s |  0.00% |  0.00% )    	(519x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.002392s |  0.00% |  0.00% )   ( 0.002763s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.002065s |  0.00% |  0.00% )   ( 0.002430s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.002190s |  0.00% |  0.00% )   ( 0.002541s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 336.940649s | 36.45% |  4.13% )   ( 325.161012s | 38.63% |  4.18% )    	(519x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.065724s |  0.00% |  0.01% )   ( 0.076283s |  0.00% |  0.02% )    	(519x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 22.842278s |  2.47% |  6.77% )   ( 22.089690s |  2.62% |  6.79% )    	(519x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 38.055853s |  4.11% | 11.29% )   ( 36.837248s |  4.37% | 11.32% )    	(519x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 32.247515s |  3.48% |  9.57% )   ( 31.048897s |  3.68% |  9.54% )    	(519x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 37.793934s |  4.08% | 11.21% )   ( 36.527740s |  4.34% | 11.23% )    	(519x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 30.783016s |  3.33% |  9.13% )   ( 29.873407s |  3.54% |  9.18% )    	(519x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 20.818468s |  2.25% |  6.17% )   ( 20.088967s |  2.38% |  6.17% )    	(519x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 11.522523s |  1.24% |  3.41% )   ( 11.022943s |  1.30% |  3.38% )    	(519x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 21.857435s |  2.36% |  6.48% )   ( 20.796287s |  2.47% |  6.39% )    	(519x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 10.439355s |  1.12% |  3.09% )   ( 9.779204s |  1.16% |  3.00% )    	(519x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 28.308400s |  3.06% |  8.40% )   ( 27.207450s |  3.23% |  8.36% )    	(519x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 59.234745s |  6.40% | 17.58% )   ( 57.930345s |  6.88% | 17.81% )    	(519x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 11.634518s |  1.25% |  3.45% )   ( 11.106081s |  1.31% |  3.41% )    	(519x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 11.336885s |  1.22% |  3.36% )   ( 10.776470s |  1.28% |  3.31% )    	(519x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.072404s |  0.00% |  0.00% )   ( 0.082718s |  0.00% |  0.00% )    	(519x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.068139s |  0.00% |  0.00% )   ( 0.076899s |  0.00% |  0.00% )    	(497x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.081493s |  0.00% |  0.00% )   ( 0.085485s |  0.01% |  0.00% )    	(497x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  25.5.0: 	( 0.002225s |  0.00% |  0.00% )   ( 0.002555s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  26.5.0: 	( 0.002316s |  0.00% |  0.00% )   ( 0.002648s |  0.00% |  0.00% )    	(22x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.141157s |  0.01% |  0.04% )   ( 0.141996s |  0.01% |  0.04% )    	(22x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.nHE5hw"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p4 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p4\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.002704s |  0.00% |  0.00% )   ( 0.003061s |  0.00% |  0.00% )    	(22x)	│  │  │  └─p_PID+=(${p4_PID})
│  │  │  1399.3.0:     	( 30.565800s |  3.30% |  3.31% )   ( 29.093302s |  3.45% |  3.45% )    	(2x)	│  │  │ << (FUNCTION): .local p23 p23_PID >>
│  │  │  │  1.4.0:     	( 0.001992s |  0.00% |  0.00% )   ( 0.002039s |  0.00% |  0.00% )    	(2x)	│  │  │  │ local p23 p23_PID (&)
│  │  │  │  73.4.0:    	( 30.563526s |  3.30% | 99.99% )   ( 29.090942s |  3.45% | 99.99% )    	(2x)	│  │  │  │ << (SUBSHELL) >>
│  │  │  │  │  73.5.0: 	( 0.000304s |  0.00% |  0.00% )   ( 0.000340s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ export LC_ALL=C LANG=C IFS= FORKRUN_TMPDIR="/dev/shm/.forkrun.nHE5hw"
│  │  │  │  │  8.5.0:  	( 0.000328s |  0.00% |  0.00% )   ( 0.000371s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ echo "${BASH_PID}" > "/dev/shm/.forkrun.nHE5hw"/.run/p23
│  │  │  │  │  12.5.0: 	( 0.051519s |  0.00% |  0.16% )   ( 0.048403s |  0.00% |  0.16% )    	(2x)	│  │  │  │  │ trap ': >"/dev/shm/.forkrun.nHE5hw"/.quit; $'\n'[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p23; $'\n'printf '"'"'\n'"'"' >&21' EXIT
│  │  │  │  │  14.5.0: 	( 0.047943s |  0.00% |  0.15% )   ( 0.047774s |  0.00% |  0.16% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -INT 1784697 ${BASHPID}' INT
│  │  │  │  │  15.5.0: 	( 0.048165s |  0.00% |  0.15% )   ( 0.048000s |  0.00% |  0.16% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -TERM 1784697 ${BASHPID}' TERM
│  │  │  │  │  16.5.0: 	( 0.054556s |  0.00% |  0.17% )   ( 0.053416s |  0.00% |  0.18% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1; kill -HUP 1784697 ${BASHPID}' HUP
│  │  │  │  │  17.5.0: 	( 0.053175s |  0.00% |  0.17% )   ( 0.052996s |  0.00% |  0.18% )    	(2x)	│  │  │  │  │ trap 'trap - TERM INT HUP USR1' USR1
│  │  │  │  │  19.5.0: 	( 0.006970s |  0.00% |  0.00% )   ( 0.007883s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ true
│  │  │  │  │  20.5.0: 	( 0.005960s |  0.00% |  0.00% )   ( 0.006820s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  20.5.1: 	( 0.000323s |  0.00% |  0.00% )   ( 0.000370s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ read -r < "/dev/shm/.forkrun.nHE5hw"/.nLines
│  │  │  │  │  20.5.2: 	( 0.000269s |  0.00% |  0.00% )   ( 0.000310s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ [[ ${REPLY} == +([0-9]) ]]
│  │  │  │  │  20.5.3: 	( 0.000258s |  0.00% |  0.00% )   ( 0.000299s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesCur=${REPLY}
│  │  │  │  │  22.5.0: 	( 0.007659s |  0.00% |  0.00% )   ( 0.008615s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ echo 1 > "/dev/shm/.forkrun.nHE5hw"/.wait/p23
│  │  │  │  │  23.5.0: 	( 0.389853s |  0.04% |  0.05% )   ( 0.010221s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ read -r -u 21 _
│  │  │  │  │  24.5.0: 	( 0.007618s |  0.00% |  0.00% )   ( 0.007511s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.quit ]]
│  │  │  │  │  28.5.0: 	( 0.006253s |  0.00% |  0.00% )   ( 0.007131s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ [[ -f "/dev/shm/.forkrun.nHE5hw"/.done ]]
│  │  │  │  │  28.5.1: 	( 0.005986s |  0.00% |  0.00% )   ( 0.006873s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ doneIndicatorFlag=true
│  │  │  │  │  30.5.0: 	( 0.006344s |  0.00% |  0.00% )   ( 0.007232s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ evfd_wait 25
│  │  │  │  │  31.5.0: 	( 0.053021s |  0.00% |  0.00% )   ( 0.052668s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ mapfile -t -n ${nLinesCur} -u 27 -t -d '' A
│  │  │  │  │  34.5.0: 	( 0.007394s |  0.00% |  0.00% )   ( 0.007542s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ printf '\n' 1>&21
│  │  │  │  │  35.5.0: 	( 0.008037s |  0.00% |  0.00% )   ( 0.008362s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ echo 0 > "/dev/shm/.forkrun.nHE5hw"/.wait/p23
│  │  │  │  │  36.5.0: 	( 0.006033s |  0.00% |  0.00% )   ( 0.006933s |  0.00% |  0.00% )    	(44x)	│  │  │  │  │ [[ ${#A[@]} == 0 ]]
│  │  │  │  │  56.5.0: 	( 0.005594s |  0.00% |  0.00% )   ( 0.006442s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │ ${nLinesAutoFlag}
│  │  │  │  │  57.5.0: 	( 0.000266s |  0.00% |  0.00% )   ( 0.000309s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%s\n' ${#A[@]} >&${fd_nAuto0}
│  │  │  │  │  58.5.0: 	( 0.000225s |  0.00% |  0.00% )   ( 0.000262s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ (( ${nLinesCur} < 1024 ))
│  │  │  │  │  58.5.1: 	( 0.000261s |  0.00% |  0.00% )   ( 0.000303s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ nLinesAutoFlag=false
│  │  │  │  │  61.5.0: 	( 29.753051s |  3.21% |  4.63% )   ( 28.654716s |  3.40% |  4.69% )    	(42x)	│  │  │  │  │ << (FUNCTION): main.forkrun.source.ff "${A[@]}" >>
│  │  │  │  │  │  1.6.0:   	( 0.005389s |  0.00% |  0.01% )   ( 0.006275s |  0.00% |  0.02% )    	(42x)	│  │  │  │  │  │ ff "${A[@]}"
│  │  │  │  │  │  8.6.0:   	( 1.938026s |  0.20% |  6.51% )   ( 1.899976s |  0.22% |  6.63% )    	(42x)	│  │  │  │  │  │ sha1sum "${@}"
│  │  │  │  │  │  9.6.0:   	( 3.377036s |  0.36% | 11.35% )   ( 3.283486s |  0.39% | 11.45% )    	(42x)	│  │  │  │  │  │ sha256sum "${@}"
│  │  │  │  │  │  10.6.0:    	( 2.815928s |  0.30% |  9.46% )   ( 2.734106s |  0.32% |  9.54% )    	(42x)	│  │  │  │  │  │ sha512sum "${@}"
│  │  │  │  │  │  11.6.0:    	( 3.390427s |  0.36% | 11.39% )   ( 3.278470s |  0.38% | 11.44% )    	(42x)	│  │  │  │  │  │ sha224sum "${@}"
│  │  │  │  │  │  12.6.0:    	( 2.698226s |  0.29% |  9.06% )   ( 2.649614s |  0.31% |  9.24% )    	(42x)	│  │  │  │  │  │ sha384sum "${@}"
│  │  │  │  │  │  13.6.0:    	( 1.859448s |  0.20% |  6.24% )   ( 1.759530s |  0.20% |  6.14% )    	(42x)	│  │  │  │  │  │ md5sum "${@}"
│  │  │  │  │  │  14.6.0:    	( 1.001338s |  0.10% |  3.36% )   ( 0.936043s |  0.11% |  3.26% )    	(42x)	│  │  │  │  │  │ sum -s "${@}"
│  │  │  │  │  │  15.6.0:    	( 1.912867s |  0.20% |  6.42% )   ( 1.825825s |  0.21% |  6.37% )    	(42x)	│  │  │  │  │  │ sum -r "${@}"
│  │  │  │  │  │  16.6.0:    	( 0.879604s |  0.09% |  2.95% )   ( 0.811033s |  0.09% |  2.83% )    	(42x)	│  │  │  │  │  │ cksum "${@}"
│  │  │  │  │  │  17.6.0:    	( 2.556802s |  0.27% |  8.59% )   ( 2.396454s |  0.28% |  8.36% )    	(42x)	│  │  │  │  │  │ b2sum "${@}"
│  │  │  │  │  │  18.6.0:    	( 5.391450s |  0.58% | 18.12% )   ( 5.257430s |  0.62% | 18.34% )    	(42x)	│  │  │  │  │  │ cksum -a sm3 "${@}"
│  │  │  │  │  │  19.6.0:    	( 0.971153s |  0.10% |  3.26% )   ( 0.926493s |  0.11% |  3.23% )    	(42x)	│  │  │  │  │  │ xxhsum "${@}"
│  │  │  │  │  └─ 20.6.0:    	( 0.955357s |  0.10% |  3.21% )   ( 0.889981s |  0.10% |  3.10% )    	(42x)	│  │  │  │  │  └─xxhsum -H3 "${@}"
│  │  │  │  │  20.5.1: 	( 0.005987s |  0.00% |  0.00% )   ( 0.006853s |  0.00% |  0.00% )    	(42x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  56.5.1: 	( 0.005520s |  0.00% |  0.00% )   ( 0.006309s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │ ${nSpawnFlag}
│  │  │  │  │  59.5.0: 	( 0.006130s |  0.00% |  0.00% )   ( 0.006911s |  0.00% |  0.00% )    	(40x)	│  │  │  │  │ printf '\n' >&${fd_nAuto0}
│  │  │  │  │  37.5.0: 	( 0.000252s |  0.00% |  0.00% )   ( 0.000290s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  46.5.0: 	( 0.000252s |  0.00% |  0.00% )   ( 0.000285s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ ${doneIndicatorFlag}
│  │  │  │  │  47.5.0: 	( 0.000262s |  0.00% |  0.00% )   ( 0.000302s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf 'x\n' >&${fd_nAuto0}
│  │  │  │  │  49.5.0: 	( 0.000299s |  0.00% |  0.00% )   ( 0.000335s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ : > "/dev/shm/.forkrun.nHE5hw"/.quit
│  │  │  │  │  50.5.0: 	( 0.000417s |  0.00% |  0.00% )   ( 0.000445s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ printf '%.0s\n' "/dev/shm/.forkrun.nHE5hw"/.run/p* 1>&21
│  │  │  │  │  51.5.0: 	( 0.000276s |  0.00% |  0.00% )   ( 0.000315s |  0.00% |  0.00% )    	(2x)	│  │  │  │  │ break
│  │  │  │  └─ 2.5.0:  	( 0.016766s |  0.00% |  0.05% )   ( 0.016795s |  0.00% |  0.05% )    	(2x)	│  │  │  │  └─'TRAP (EXIT): : >"/dev/shm/.forkrun.nHE5hw"/.quit\; \$\\n[[ -f "/dev/shm/.forkrun.nHE5hw"/.run/p23 ]] && \rm -f "/dev/shm/.forkrun.nHE5hw"/.run/p23\; \$\\nprintf \n >&21'
│  │  │  └─ 134.4.0:   	( 0.000282s |  0.00% |  0.00% )   ( 0.000321s |  0.00% |  0.00% )    	(2x)	│  │  │  └─p_PID+=(${p23_PID})
│  │  │  1401.3.0:     	( 0.000148s |  0.00% |  0.00% )   ( 0.000168s |  0.00% |  0.00% )    	(1x)	│  │  │ echo "${kkProcs}" > "${tmpDir}"/.nWorkers
│  │  │  1402.3.0:     	( 0.000142s |  0.00% |  0.00% )   ( 0.000161s |  0.00% |  0.00% )    	(1x)	│  │  │ : > "${tmpDir}"/.spawned
│  │  │  1403.3.0:     	( 0.000117s |  0.00% |  0.00% )   ( 0.000135s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1406.3.0:     	( 0.000116s |  0.00% |  0.00% )   ( 0.000136s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 3 ))
│  │  │  1411.3.0:     	( 0.001243s |  0.00% |  0.00% )   ( 0.001259s |  0.00% |  0.00% )    	(1x)	│  │  │ declare -p > "${tmpDir}"/.vars
│  │  │  1416.3.0:     	( 0.000124s |  0.00% |  0.00% )   ( 0.000144s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nOrderFlag}
│  │  │  1478.3.0:     	( 0.000127s |  0.00% |  0.00% )   ( 0.000143s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  │  1481.3.0:     	( 0.000116s |  0.00% |  0.00% )   ( 0.000134s |  0.00% |  0.00% )    	(1x)	│  │  │ ${nSpawnFlag}
│  │  │  1488.3.0:     	( 18.692553s |  2.02% |  4.04% )   ( 0.001688s |  0.00% |  0.00% )    	(1x)	│  │  │ wait "${p_PID[@]}" &> /dev/null
│  │  │  1492.3.0:     	( 0.000275s |  0.00% |  0.00% )   ( 0.000317s |  0.00% |  0.00% )    	(1x)	│  │  │ (( ${verboseLevel} > 1 ))
│  │  └─ 1497.3.0:     	( 0.000272s |  0.00% |  0.00% )   ( 0.000314s |  0.00% |  0.00% )    	(1x)	│  │  └─${nSpawnFlag}
│  │  1503.2.0:        	( 0.000412s |  0.00% |  0.00% )   ( 0.000471s |  0.00% |  0.00% )    	(1x)	│  │ wait
└─ └─ -248.2.0:        	( 0.007818s |  0.00% |  0.00% )   ( 0.004327s |  0.00% |  0.00% )    	(1x)	└─ └─'TRAP (EXIT): \rm -rf "/dev/shm/.forkrun.nHE5hw" 2>/dev/null'

TOTAL RUN TIME: 924.334976s
TOTAL CPU TIME: 841.614657s
